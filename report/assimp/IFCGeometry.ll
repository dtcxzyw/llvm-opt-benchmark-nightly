Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCGeometry?download=true
inline.NumInlined: 2077
inline.NumDeleted: 820
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  store ptr %i.au, ptr %1, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store ptr %i.bd, ptr %i.ap, align 8
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.af
  store ptr %i.be, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bg = add i32 %i.m, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul i64 %i.ac, %i.bh                    ; 4 uses
  %i.bj = icmp ugt i64 %i.bi, 2305843009213693951
  br i1 %i.bj, label %.invoke, label %bb.h

.invoke:                                          ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.bf, align 8
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  %i.br = icmp ult i64 %i.bq, %i.bi
  br i1 %i.br, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bo
  %i.bw = shl nuw nsw i64 %i.bi, 2
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28
          to label %.noexc165 unwind label %bb.p  ; 4 uses

.noexc165:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.by = load ptr, ptr %i.bf, align 8            ; 4 uses
  %i.bz = load ptr, ptr %i.bs, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.i:                                             ; preds = %.noexc165
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.by, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.i, %.noexc165
  %.not.i8.i163 = icmp eq ptr %i.by, null
  br i1 %.not.i8.i163, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ce = load ptr, ptr %i.bk, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cg) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.bx, ptr %i.bf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store ptr %i.ch, ptr %i.bs, align 8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bi
  store ptr %i.ci, ptr %i.bk, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.h
  %i.cj = icmp ugt i64 %i.ae, 384307168202282325
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.noexc175 unwind label %bb.q

.noexc175:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.not389 = icmp eq i64 %i.ae, 0
  br i1 %.not389, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166: ; preds = %bb.l
  %i.ck = mul i64 %i.ab, %i.ad
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #28
          to label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174 unwind label %bb.q ; 2 uses

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ae
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174, %bb.l
  %.sroa.24.6 = phi ptr [ %i.cm, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174 ], [ null, %bb.l ] ; 8 uses
  %.sroa.17.2 = phi ptr [ %i.cl, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174 ], [ null, %bb.l ] ; 9 uses
  %i.cn = load ptr, ptr %3, align 8               ; 3 uses
  %i.co = load ptr, ptr %i.w, align 8
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177
  %i.cq = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc178 unwind label %bb.q

.noexc178:                                        ; preds = %bb.m
  br i1 %i.cq, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %.noexc178
  %i.cr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc179 unwind label %bb.q

.noexc179:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.cs = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc180 unwind label %bb.q

.noexc180:                                        ; preds = %.noexc179
  store ptr %i.cs, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA55_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(55) @.str.5)
          to label %.noexc181 unwind label %bb.q

.noexc181:                                        ; preds = %.noexc180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit

bb.o:                                             ; preds = %bb.d
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255

bb.p:                                             ; preds = %.invoke, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255

bb.q:                                             ; preds = %.noexc180, %.noexc179, %bb.n, %bb.m, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166, %bb.k
  %.sroa.24.0 = phi ptr [ null, %bb.k ], [ %.sroa.24.6, %.noexc180 ], [ %.sroa.24.6, %.noexc179 ], [ %.sroa.24.6, %bb.n ], [ %.sroa.24.6, %bb.m ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166 ]
  %.sroa.0353.0 = phi ptr [ null, %bb.k ], [ %.sroa.17.2, %.noexc180 ], [ %.sroa.17.2, %.noexc179 ], [ %.sroa.17.2, %bb.n ], [ %.sroa.17.2, %bb.m ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166 ]
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177
  %.not513 = icmp eq ptr %i.x, %i.y
  br i1 %.not513, label %.lr.ph500, label %.lr.ph487

.lr.ph487:                                        ; preds = %bb.r
  %.sroa.14351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.sroa.14351.0.copyload = load double, ptr %.sroa.14351.0..sroa_idx, align 8 ; 2 uses
  %i.cw = load <2 x double>, ptr %i.cn, align 8   ; 2 uses
  %i.cx = add nsw i64 %i.ac, -1                   ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not514 = icmp eq i32 %i.m, 0
  br label %bb.an

.preheader395:                                    ; preds = %._crit_edge
  %.not516 = icmp eq i64 %i.cx, 0
  br i1 %.not516, label %._crit_edge501, label %.lr.ph500

.lr.ph500:                                        ; preds = %bb.r, %.preheader395
  %.sroa.0353.1.lcssa601 = phi ptr [ %.sroa.0353.2.lcssa, %.preheader395 ], [ %.sroa.17.2, %bb.r ] ; 9 uses
  %.sroa.24.1.lcssa599 = phi ptr [ %.sroa.24.2.lcssa, %.preheader395 ], [ %.sroa.24.6, %bb.r ] ; 6 uses
  %.pre-phi554598 = phi i64 [ %i.cx, %.preheader395 ], [ -1, %bb.r ]
  %.not517 = icmp eq i32 %i.m, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  br i1 %.not517, label %._crit_edge501, label %.lr.ph494.us

bb.s:                                             ; preds = %.lr.ph494.us, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph494.us ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %.0113491.us = phi float [ 1.000000e+10, %.lr.ph494.us ], [ %.1.us, %bb.s ] ; 2 uses
  %.0114490.us = phi i32 [ 0, %.lr.ph494.us ], [ %.1115.us, %bb.s ]
  %i.db = getelementptr [24 x i8], ptr %i.kz, i64 %indvars.iv ; 2 uses
  %i.dc = load <2 x double>, ptr %i.db, align 8
  %i.dd = fptrunc <2 x double> %i.dc to <2 x float> ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.df = load double, ptr %i.de, align 8
  %i.dg = fptrunc double %i.df to float
  %foldExtExtBinop = fsub <2 x float> %i.dd, %i.kt
  %i.dh = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop629 = fsub <2 x float> %i.dd, %i.kt ; 2 uses
  %i.di = fsub float %i.dg, %i.kw                 ; 2 uses
  %foldExtExtBinop631 = fmul <2 x float> %foldExtExtBinop629, %foldExtExtBinop629
  %i.dj = extractelement <2 x float> %foldExtExtBinop631, i64 1
  %i.dk = call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.dj)
  %i.dl = call noundef float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dk) ; 2 uses
  %i.dm = fcmp olt float %i.dl, %.0113491.us      ; 2 uses
  %i.dn = trunc nuw i64 %indvars.iv to i32
  %.1115.us = select i1 %i.dm, i32 %i.dn, i32 %.0114490.us ; 3 uses
  %.1.us = select i1 %i.dm, float %i.dl, float %.0113491.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond541.not, label %.preheader.us, label %bb.s, !llvm.loop !84

bb.t:                                             ; preds = %.preheader.us, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %indvars.iv542 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next543, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us ] ; 3 uses
  %i.do = getelementptr [24 x i8], ptr %i.kr, i64 %indvars.iv542 ; 2 uses
  %i.dp = load ptr, ptr %i.cz, align 8            ; 5 uses
  %i.dq = load ptr, ptr %i.ah, align 8
  %.not.i.us = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.dr = load ptr, ptr %i.cz, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  store ptr %i.ds, ptr %i.cz, align 8
  %.pre = load ptr, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

bb.v:                                             ; preds = %bb.t
  %i.dt = load ptr, ptr %1, align 8               ; 5 uses
  %i.du = ptrtoint ptr %i.dp to i64
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775800
  br i1 %i.dx, label %.split503.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.v
  %i.dy = sdiv exact i64 %i.dw, 24                ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.us, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 384307168202282325)
  %i.ec = select i1 %i.ea, i64 384307168202282325, i64 %i.eb ; 3 uses
  %.not.i.i.i.us = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i.us)
  %i.ed = mul nuw nsw i64 %i.ec, 24
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #28
          to label %.noexc198.us unwind label %.loopexit.split.us ; 5 uses

.noexc198.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %.not10.i.i.i.i.i.us = icmp eq ptr %i.dt, %i.dp
  br i1 %.not10.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %.noexc198.us, %.lr.ph.i.i.i.i.i.us
  %.012.i.i.i.i.i.us = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.us ], [ %i.ee, %.noexc198.us ] ; 2 uses
  %.0911.i.i.i.i.i.us = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.us ], [ %i.dt, %.noexc198.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.us, i64 24, i1 false), !alias.scope !111
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us, i64 24 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %i.eg, %i.dp
  br i1 %.not.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.us, %.noexc198.us
  %.0.lcssa.i.i.i.i.i.us = phi ptr [ %i.ee, %.noexc198.us ], [ %i.eh, %.lr.ph.i.i.i.i.i.us ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i23.i.i.us = icmp eq ptr %i.dt, null
  br i1 %.not.i23.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us
  %i.ej = load ptr, ptr %i.ah, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.el) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us: ; preds = %bb.w, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us
  store ptr %i.ee, ptr %1, align 8
  store ptr %i.ei, ptr %i.cz, align 8
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ec ; 2 uses
  store ptr %i.em, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, %bb.u
  %i.en = phi ptr [ %i.em, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %.pre, %bb.u ] ; 4 uses
  %i.eo = phi ptr [ %i.ei, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %i.ds, %bb.u ] ; 2 uses
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 5 uses
  %i.ep = icmp eq i64 %indvars.iv.next543, %i.ad
  %i.eq = trunc nuw i64 %indvars.iv.next543 to i32
  %i.er = select i1 %i.ep, i64 0, i64 %indvars.iv.next543
  %i.es = getelementptr [24 x i8], ptr %i.kr, i64 %i.er ; 2 uses
  %.not.i199.us = icmp eq ptr %i.eo, %i.en
  br i1 %.not.i199.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false)
  %i.et = load ptr, ptr %i.cz, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 2 uses
  store ptr %i.eu, ptr %i.cz, align 8
  %.pre548 = load ptr, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us

bb.y:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us
  %i.ev = load ptr, ptr %1, align 8               ; 5 uses
  %i.ew = ptrtoint ptr %i.en to i64
  %i.ex = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 3 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %.split503.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us: ; preds = %bb.y
  %i.fa = sdiv exact i64 %i.ey, 24                ; 3 uses
  %.sroa.speculated.i.i.i201.us = call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  %i.fb = add nsw i64 %.sroa.speculated.i.i.i201.us, %i.fa ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fb, i64 384307168202282325)
  %i.fe = select i1 %i.fc, i64 384307168202282325, i64 %i.fd ; 3 uses
  %.not.i.i.i202.us = icmp ne i64 %i.fe, 0
  call void @llvm.assume(i1 %.not.i.i.i202.us)
  %i.ff = mul nuw nsw i64 %i.fe, 24
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #28
          to label %.noexc213.us unwind label %.loopexit.split.us ; 5 uses

.noexc213.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false)
  %.not10.i.i.i.i.i203.us = icmp eq ptr %i.ev, %i.en
  br i1 %.not10.i.i.i.i.i203.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us, label %.lr.ph.i.i.i.i.i204.us

.lr.ph.i.i.i.i.i204.us:                           ; preds = %.noexc213.us, %.lr.ph.i.i.i.i.i204.us
  %.012.i.i.i.i.i205.us = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i204.us ], [ %i.fg, %.noexc213.us ] ; 2 uses
  %.0911.i.i.i.i.i206.us = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i204.us ], [ %i.ev, %.noexc213.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i205.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i206.us, i64 24, i1 false), !alias.scope !112
  %i.fi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i206.us, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i205.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i207.us = icmp eq ptr %i.fi, %i.en
  br i1 %.not.i.i.i.i.i207.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us, label %.lr.ph.i.i.i.i.i204.us, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us: ; preds = %.lr.ph.i.i.i.i.i204.us, %.noexc213.us
  %.0.lcssa.i.i.i.i.i209.us = phi ptr [ %i.fg, %.noexc213.us ], [ %i.fj, %.lr.ph.i.i.i.i.i204.us ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i209.us, i64 24 ; 2 uses
  %.not.i23.i.i210.us = icmp eq ptr %i.ev, null
  br i1 %.not.i23.i.i210.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us
  %i.fl = load ptr, ptr %i.ah, align 8
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fn) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us: ; preds = %bb.z, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us
  store ptr %i.fg, ptr %1, align 8
  store ptr %i.fk, ptr %i.cz, align 8
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %i.fe ; 2 uses
  store ptr %i.fo, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us, %bb.x
  %i.fp = phi ptr [ %i.fo, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us ], [ %.pre548, %bb.x ] ; 4 uses
  %i.fq = phi ptr [ %i.fk, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us ], [ %i.eu, %bb.x ] ; 2 uses
  %i.fr = add i32 %.1115.us, %i.eq
  %i.fs = urem i32 %i.fr, %i.m
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr [24 x i8], ptr %4, i64 %i.ft ; 2 uses
  %.not.i215.us = icmp eq ptr %i.fq, %i.fp
  br i1 %.not.i215.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 24, i1 false)
  %i.fv = load ptr, ptr %i.cz, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 2 uses
  store ptr %i.fw, ptr %i.cz, align 8
  %.pre549 = load ptr, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit230.us

bb.ab:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us
  %i.fx = load ptr, ptr %1, align 8               ; 5 uses
  %i.fy = ptrtoint ptr %i.fp to i64
  %i.fz = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.ga = sub i64 %i.fy, %i.fz                    ; 3 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %.split503.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us: ; preds = %bb.ab
  %i.gc = sdiv exact i64 %i.ga, 24                ; 3 uses
  %.sroa.speculated.i.i.i217.us = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i.i217.us, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gd, i64 384307168202282325)
  %i.gg = select i1 %i.ge, i64 384307168202282325, i64 %i.gf ; 3 uses
  %.not.i.i.i218.us = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i.i218.us)
  %i.gh = mul nuw nsw i64 %i.gg, 24
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #28
          to label %.noexc229.us unwind label %.loopexit.split.us ; 5 uses

.noexc229.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 24, i1 false)
  %.not10.i.i.i.i.i219.us = icmp eq ptr %i.fx, %i.fp
  br i1 %.not10.i.i.i.i.i219.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i224.us, label %.lr.ph.i.i.i.i.i220.us

.lr.ph.i.i.i.i.i220.us:                           ; preds = %.noexc229.us, %.lr.ph.i.i.i.i.i220.us
  %.012.i.i.i.i.i221.us = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i220.us ], [ %i.gi, %.noexc229.us ] ; 2 uses
  %.0911.i.i.i.i.i222.us = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i220.us ], [ %i.fx, %.noexc229.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i221.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i222.us, i64 24, i1 false), !alias.scope !113
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i222.us, i64 24 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i221.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i223.us = icmp eq ptr %i.gk, %i.fp
  br i1 %.not.i.i.i.i.i223.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i224.us, label %.lr.ph.i.i.i.i.i220.us, !llvm.loop !0
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  %i.gu = add i32 %.1115.us, %i.gt
  %i.gv = urem i32 %i.gu, %i.m
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr [24 x i8], ptr %4, i64 %i.gw ; 2 uses
  %.not.i231.us = icmp eq ptr %i.gs, %i.gr
  br i1 %.not.i231.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit230.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i64 24, i1 false)
  %i.gy = load ptr, ptr %i.cz, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 2 uses
  store ptr %i.gz, ptr %i.cz, align 8
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit230.us
  %i.ha = load ptr, ptr %1, align 8               ; 5 uses
  %i.hb = ptrtoint ptr %i.gr to i64
  %i.hc = ptrtoint ptr %i.ha to i64               ; 2 uses
  %i.hd = sub i64 %i.hb, %i.hc                    ; 3 uses
  %i.he = icmp eq i64 %i.hd, 9223372036854775800
  br i1 %i.he, label %.split503.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us: ; preds = %bb.ae
  %i.hf = sdiv exact i64 %i.hd, 24                ; 3 uses
  %.sroa.speculated.i.i.i233.us = call i64 @llvm.umax.i64(i64 %i.hf, i64 1)
  %i.hg = add nsw i64 %.sroa.speculated.i.i.i233.us, %i.hf ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.hf
  %i.hi = call i64 @llvm.umin.i64(i64 %i.hg, i64 384307168202282325)
  %i.hj = select i1 %i.hh, i64 384307168202282325, i64 %i.hi ; 3 uses
  %.not.i.i.i234.us = icmp ne i64 %i.hj, 0
  call void @llvm.assume(i1 %.not.i.i.i234.us)
  %i.hk = mul nuw nsw i64 %i.hj, 24
  %i.hl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #28
          to label %.noexc245.us unwind label %.loopexit.split.us ; 5 uses

.noexc245.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i64 24, i1 false)
  %.not10.i.i.i.i.i235.us = icmp eq ptr %i.ha, %i.gr
  br i1 %.not10.i.i.i.i.i235.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us, label %.lr.ph.i.i.i.i.i236.us

.lr.ph.i.i.i.i.i236.us:                           ; preds = %.noexc245.us, %.lr.ph.i.i.i.i.i236.us
  %.012.i.i.i.i.i237.us = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i236.us ], [ %i.hl, %.noexc245.us ] ; 2 uses
  %.0911.i.i.i.i.i238.us = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i236.us ], [ %i.ha, %.noexc245.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i237.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i238.us, i64 24, i1 false), !alias.scope !114
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i238.us, i64 24 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i237.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i239.us = icmp eq ptr %i.hn, %i.gr
  br i1 %.not.i.i.i.i.i239.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us, label %.lr.ph.i.i.i.i.i236.us, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us: ; preds = %.lr.ph.i.i.i.i.i236.us, %.noexc245.us
  %.0.lcssa.i.i.i.i.i241.us = phi ptr [ %i.hl, %.noexc245.us ], [ %i.ho, %.lr.ph.i.i.i.i.i236.us ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i241.us, i64 24 ; 2 uses
  %.not.i23.i.i242.us = icmp eq ptr %i.ha, null
  br i1 %.not.i23.i.i242.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us
  %i.hq = load ptr, ptr %i.ah, align 8
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = sub i64 %i.hr, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hs) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us: ; preds = %bb.af, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us
  store ptr %i.hl, ptr %1, align 8
  store ptr %i.hp, ptr %i.cz, align 8
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %i.hj
  store ptr %i.ht, ptr %i.ah, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us, %bb.ad
  %i.hu = phi ptr [ %i.hp, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us ], [ %i.gz, %bb.ad ] ; 7 uses
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -24 ; 3 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 -72 ; 3 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hu, i64 -96 ; 3 uses
  %i.hy = load double, ptr %i.hx, align 8, !noalias !115 ; 2 uses
  %i.hz = load double, ptr %i.hw, align 8, !noalias !115
  %i.ia = getelementptr inbounds i8, ptr %i.hu, i64 -88
  %i.ib = getelementptr inbounds i8, ptr %i.hu, i64 -64
  %i.ic = load double, ptr %i.hv, align 8, !noalias !116
  %i.id = getelementptr inbounds i8, ptr %i.hu, i64 -16
  %i.ie = load <2 x double>, ptr %i.ia, align 8, !noalias !115 ; 5 uses
  %i.if = load <2 x double>, ptr %i.ib, align 8, !noalias !115 ; 2 uses
  %i.ig = fsub <2 x double> %i.ie, %i.if          ; 2 uses
  %i.ih = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ii = insertelement <2 x double> %i.ih, double %i.hy, i64 1 ; 2 uses
  %i.ij = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ik = insertelement <2 x double> %i.ij, double %i.hz, i64 1
  %i.il = fsub <2 x double> %i.ii, %i.ik          ; 2 uses
  %i.im = load <2 x double>, ptr %i.id, align 8, !noalias !116 ; 2 uses
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.io = insertelement <2 x double> %i.in, double %i.ic, i64 1
  %i.ip = fsub <2 x double> %i.ii, %i.io          ; 2 uses
  %i.iq = fsub <2 x double> %i.ie, %i.im          ; 2 uses
  %i.ir = fneg <2 x double> %i.iq
  %i.is = fmul <2 x double> %i.il, %i.ir
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.ip, <2 x double> %i.is) ; 2 uses
  %i.iu = load ptr, ptr %3, align 8
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.iu, i64 %.0131499.us ; 3 uses
  %i.iw = load double, ptr %i.iv, align 8, !noalias !117
  %i.ix = fsub double %i.hy, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iz = load double, ptr %i.iy, align 8, !noalias !117
  %i.ja = extractelement <2 x double> %i.ie, i64 0
  %i.jb = fsub double %i.ja, %i.iz
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.jd = load double, ptr %i.jc, align 8, !noalias !117
  %i.je = extractelement <2 x double> %i.ie, i64 1
  %i.jf = fsub double %i.je, %i.jd
  %i.jg = shufflevector <2 x double> %i.ig, <2 x double> %i.it, <2 x i32> <i32 0, i32 3>
  %i.jh = fneg <2 x double> %i.ip
  %i.ji = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jj = insertelement <2 x double> %i.ji, double %i.jb, i64 1
  %i.jk = fmul <2 x double> %i.jg, %i.jj
  %i.jl = shufflevector <2 x double> %i.il, <2 x double> %i.it, <2 x i32> <i32 1, i32 2>
  %i.jm = insertelement <2 x double> %i.iq, double %i.ix, i64 1
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jm, <2 x double> %i.jk) ; 2 uses
  %i.jo = extractelement <2 x double> %i.jn, i64 0
  %i.jp = extractelement <2 x double> %i.jn, i64 1
  %i.jq = call noundef double @llvm.fmuladd.f64(double %i.jo, double %i.jf, double %i.jp)
  %i.jr = fcmp olt double %i.jq, 0.000000e+00
  br i1 %i.jr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.js = getelementptr inbounds i8, ptr %i.hu, i64 -48 ; 2 uses
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.hx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i64 24, i1 false)
  store <3 x double> %.sroa.0.0.copyload, ptr %i.hv, align 8
  %.sroa.0646.0.copyload = load <3 x double>, ptr %i.hw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %i.js, i64 24, i1 false)
  store <3 x double> %.sroa.0646.0.copyload, ptr %i.js, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jt = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.ju = load ptr, ptr %i.bk, align 8
  %.not.i.i247.us = icmp eq ptr %i.jt, %i.ju
  br i1 %.not.i.i247.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 4, ptr %i.jt, align 4
  %i.jv = load ptr, ptr %i.da, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store ptr %i.jw, ptr %i.da, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

bb.ak:                                            ; preds = %bb.ai
  %i.jx = load ptr, ptr %i.bf, align 8            ; 4 uses
  %i.jy = ptrtoint ptr %i.jt to i64
  %i.jz = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 5 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775804
  br i1 %i.kb, label %.split511.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.ak
  %i.kc = ashr exact i64 %i.ka, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i248.us = call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i.i248.us, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 2305843009213693951)
  %i.kg = select i1 %i.ke, i64 2305843009213693951, i64 %i.kf ; 3 uses
  %.not.i.i.i.i249.us = icmp ne i64 %i.kg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i249.us)
  %i.kh = shl nuw nsw i64 %i.kg, 2
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #28
          to label %.noexc251.us unwind label %.loopexit390.split.us ; 4 uses

.noexc251.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 %i.ka ; 2 uses
  store i32 4, ptr %i.kj, align 4
  %i.kk = icmp sgt i64 %i.ka, 0
  br i1 %i.kk, label %bb.al, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.al:                                            ; preds = %.noexc251.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ki, ptr align 4 %i.jx, i64 %i.ka, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.al, %.noexc251.us
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %.not.i17.i.i.i.us = icmp eq ptr %i.jx, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  %i.km = load ptr, ptr %i.bk, align 8
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = sub i64 %i.kn, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.ko) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.am, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.ki, ptr %i.bf, align 8
  store ptr %i.kl, ptr %i.da, align 8
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kg
  store ptr %i.kp, ptr %i.bk, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.aj
  %exitcond546.not = icmp eq i64 %indvars.iv.next543, %i.ad
  br i1 %exitcond546.not, label %._crit_edge498.us, label %bb.t, !llvm.loop !103

.preheader.us:                                    ; preds = %bb.s
  %4 = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa601, i64 %i.ky ; 2 uses
  br label %bb.t

.lr.ph494.us:                                     ; preds = %.lr.ph500, %._crit_edge498.us
  %.0131499.us = phi i64 [ %i.kx, %._crit_edge498.us ], [ 0, %.lr.ph500 ] ; 3 uses
  %i.kq = mul i64 %.0131499.us, %i.ad
  %i.kr = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa601, i64 %i.kq ; 4 uses
  %i.ks = load <2 x double>, ptr %i.kr, align 8
  %i.kt = fptrunc <2 x double> %i.ks to <2 x float> ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kv = load double, ptr %i.ku, align 8
  %i.kw = fptrunc double %i.kv to float
  %i.kx = add nuw i64 %.0131499.us, 1             ; 3 uses
  %i.ky = mul i64 %i.kx, %i.ad                    ; 2 uses
  %i.kz = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa601, i64 %i.ky
  br label %bb.s

._crit_edge498.us:                                ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %exitcond547.not = icmp eq i64 %i.kx, %.pre-phi554598
  br i1 %exitcond547.not, label %._crit_edge501, label %.lr.ph494.us, !llvm.loop !104

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit390.split.us:                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit392.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.an:                                            ; preds = %.lr.ph487, %._crit_edge
  %.0135485 = phi i64 [ 0, %.lr.ph487 ], [ %i.ou, %._crit_edge ] ; 3 uses
  %.0136484 = phi i32 [ 0, %.lr.ph487 ], [ %.1137, %._crit_edge ] ; 3 uses
  %.sroa.0353.1483 = phi ptr [ %.sroa.17.2, %.lr.ph487 ], [ %.sroa.0353.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.17.0482 = phi ptr [ %.sroa.17.2, %.lr.ph487 ], [ %.sroa.17.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.24.1481 = phi ptr [ %.sroa.24.6, %.lr.ph487 ], [ %.sroa.24.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.14351.0480 = phi double [ %.sroa.14351.0.copyload, %.lr.ph487 ], [ %.sroa.8333.1, %._crit_edge ] ; 3 uses
  %.sroa.9343.0477 = phi double [ %.sroa.14351.0.copyload, %.lr.ph487 ], [ %.sroa.14351.0480, %._crit_edge ] ; 2 uses
  %.sroa.12.0473 = phi double [ 1.000000e+00, %.lr.ph487 ], [ %i.nm, %._crit_edge ] ; 4 uses
  %.sroa.8.0470 = phi double [ 1.000000e+00, %.lr.ph487 ], [ %i.ow, %._crit_edge ] ; 4 uses
  %.sroa.0324.0466 = phi double [ 1.000000e+00, %.lr.ph487 ], [ %i.ov, %._crit_edge ] ; 4 uses
  %.sroa.8333.0465 = phi double [ 0.000000e+00, %.lr.ph487 ], [ %.sroa.8333.1, %._crit_edge ]
  %i.la = phi <2 x double> [ %i.cw, %.lr.ph487 ], [ %i.lh, %._crit_edge ] ; 3 uses
  %i.lb = phi <2 x double> [ zeroinitializer, %.lr.ph487 ], [ %i.lh, %._crit_edge ]
  %i.lc = phi <2 x double> [ %i.cw, %.lr.ph487 ], [ %i.la, %._crit_edge ] ; 2 uses
  %.not152 = icmp eq i64 %.0135485, %i.cx
  br i1 %.not152, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ld = load ptr, ptr %3, align 8
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %.0135485 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load <2 x double>, ptr %i.lf, align 8
  %.sroa.8333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %.sroa.8333.0.copyload = load double, ptr %.sroa.8333.0..sroa_idx, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sroa.8333.1 = phi double [ %.sroa.8333.0465, %bb.an ], [ %.sroa.8333.0.copyload, %bb.ao ] ; 3 uses
  %i.lh = phi <2 x double> [ %i.lb, %bb.an ], [ %i.lg, %bb.ao ] ; 3 uses
  %i.li = fsub <2 x double> %i.la, %i.lc
  %i.lj = fsub double %.sroa.14351.0480, %.sroa.9343.0477
  %i.lk = fsub <2 x double> %i.lh, %i.lc
  %i.ll = fsub double %.sroa.8333.1, %.sroa.9343.0477
  %i.lm = fadd <2 x double> %i.li, %i.lk          ; 5 uses
  %i.ln = fadd double %i.lj, %i.ll                ; 4 uses
  %foldExtExtBinop633 = fmul <2 x double> %i.lm, %i.lm
  %i.lo = extractelement <2 x double> %foldExtExtBinop633, i64 1
  %i.lp = extractelement <2 x double> %i.lm, i64 0 ; 2 uses
  %i.lq = call double @llvm.fmuladd.f64(double %i.lp, double %i.lp, double %i.lo)
  %i.lr = call noundef double @llvm.fmuladd.f64(double %i.ln, double %i.ln, double %i.lq) ; 2 uses
  %i.ls = fcmp oeq double %i.lr, 0.000000e+00
  br i1 %i.ls, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.ap
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.lr)
  %i.lt = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.lu = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lw = fmul <2 x double> %i.lm, %i.lv
  %i.lx = fmul double %i.ln, %i.lt
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %bb.ap
  %.sroa.19.0 = phi double [ %i.ln, %bb.ap ], [ %i.lx, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.ly = phi <2 x double> [ %i.lm, %bb.ap ], [ %i.lw, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %.sroa.19.0.fr = freeze double %.sroa.19.0      ; 8 uses
  %i.lz = freeze <2 x double> %i.ly               ; 12 uses
  %i.ma = icmp eq i32 %.0136484, 1
  %i.mb = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.lz)
  %i.mc = fcmp ogt <2 x double> %i.mb, splat (double f0x3EB0C6F7A0000000) ; 3 uses
  %i.md = icmp ne i32 %.0136484, 2                ; 3 uses
  %i.me = call double @llvm.fabs.f64(double %.sroa.19.0.fr)
  %i.mf = fcmp ule double %i.me, f0x3EB0C6F7A0000000 ; 3 uses
  %i.mg = extractelement <2 x i1> %i.mc, i64 0
  br i1 %i.mg, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.us:     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %brmerge613 = or i1 %i.md, %i.mf
  %i.mh = extractelement <2 x i1> %i.mc, i64 1
  %or.cond = and i1 %i.mh, %brmerge613
  br i1 %or.cond, label %.split.us.split, label %.split421.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split:        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.mi = icmp eq i32 %.0136484, 0
  br i1 %i.mi, label %.split422, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split:  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.mj = extractelement <2 x i1> %i.mc, i64 1
  br i1 %i.mj, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  %brmerge616 = or i1 %i.md, %i.mf
  br i1 %brmerge616, label %.split422, label %.split421.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  br i1 %i.ma, label %.split.us.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %brmerge619 = or i1 %i.md, %i.mf
  br i1 %brmerge619, label %.split422, label %.split421.us

.split422:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.mk = fmul double %.sroa.12.0473, %.sroa.19.0.fr
  %i.ml = extractelement <2 x double> %i.lz, i64 1
  %i.mm = call double @llvm.fmuladd.f64(double %i.ml, double %.sroa.8.0470, double %i.mk)
  %i.mn = fneg double %i.mm
  %i.mo = extractelement <2 x double> %i.lz, i64 0
  %i.mp = fdiv double %i.mn, %i.mo
  br label %.loopexit401

.split.us.split:                                  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %i.mq = fmul double %.sroa.12.0473, %.sroa.19.0.fr
  %i.mr = extractelement <2 x double> %i.lz, i64 0
  %i.ms = call double @llvm.fmuladd.f64(double %i.mr, double %.sroa.0324.0466, double %i.mq)
  %i.mt = fneg double %i.ms
  %i.mu = extractelement <2 x double> %i.lz, i64 1
  %i.mv = fdiv double %i.mt, %i.mu
  br label %.loopexit401

.split421.us:                                     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us
  %i.mw = extractelement <2 x double> %i.lz, i64 0
  %i.mx = fmul double %.sroa.0324.0466, %i.mw
  %i.my = extractelement <2 x double> %i.lz, i64 1
  %i.mz = call double @llvm.fmuladd.f64(double %i.my, double %.sroa.8.0470, double %i.mx)
  %i.na = fneg double %i.mz
  %i.nb = fdiv double %i.na, %.sroa.19.0.fr
  br label %.loopexit401

.loopexit401:                                     ; preds = %.split421.us, %.split.us.split, %.split422
  %.sroa.0290.0 = phi double [ %i.mp, %.split422 ], [ %.sroa.0324.0466, %.split.us.split ], [ %.sroa.0324.0466, %.split421.us ] ; 3 uses
  %.sroa.14.0 = phi double [ %.sroa.8.0470, %.split422 ], [ %i.mv, %.split.us.split ], [ %.sroa.8.0470, %.split421.us ] ; 3 uses
  %.sroa.23297.0 = phi double [ %.sroa.12.0473, %.split422 ], [ %.sroa.12.0473, %.split.us.split ], [ %i.nb, %.split421.us ] ; 3 uses
  %.1137 = phi i32 [ 0, %.split422 ], [ 1, %.split.us.split ], [ 2, %.split421.us ]
  %i.nc = load double, ptr %i.cy, align 8
  %i.nd = fmul double %.sroa.14.0, %.sroa.14.0
  %i.ne = call double @llvm.fmuladd.f64(double %.sroa.0290.0, double %.sroa.0290.0, double %i.nd)
  %i.nf = call noundef double @llvm.fmuladd.f64(double %.sroa.23297.0, double %.sroa.23297.0, double %i.ne)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.nf)
  %i.ng = fdiv double %i.nc, %sqrt.i              ; 2 uses
  %i.nh = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = insertelement <2 x double> poison, double %.sroa.0290.0, i64 0
  %i.nk = insertelement <2 x double> %i.nj, double %.sroa.14.0, i64 1
  %i.nl = fmul <2 x double> %i.nk, %i.ni          ; 3 uses
  %i.nm = fmul double %.sroa.23297.0, %i.ng       ; 2 uses
  %i.nn = call double @cos(double noundef %i.o) #30 ; 4 uses
  %i.no = call double @sin(double noundef %i.o) #30 ; 3 uses
  %i.np = fsub double 1.000000e+00, %i.nn         ; 2 uses
  %i.nq = fmul double %.sroa.19.0.fr, %i.no       ; 2 uses
  %i.nr = fneg double %i.nq
  %i.ns = extractelement <2 x double> %i.lz, i64 1
  %i.nt = fmul double %i.ns, %i.no                ; 2 uses
  %i.nu = insertelement <2 x double> poison, double %i.np, i64 0
  %i.nv = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nw = fmul <2 x double> %i.lz, %i.nv          ; 4 uses
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = insertelement <2 x double> poison, double %i.nn, i64 0
  %i.nz = insertelement <2 x double> %i.ny, double %i.nq, i64 1
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> %i.lz, <2 x double> %i.nz)
  %i.ob = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oc = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.od = insertelement <2 x double> %i.oc, double %i.nn, i64 1
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.ob, <2 x double> %i.od)
  %i.of = extractelement <2 x double> %i.lz, i64 0
  %i.og = fmul double %i.of, %i.no                ; 2 uses
  %i.oh = fneg double %i.og
  %i.oi = insertelement <2 x double> poison, double %.sroa.19.0.fr, i64 0
  %i.oj = shufflevector <2 x double> %i.oi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ok = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.ol = insertelement <2 x double> %i.ok, double %i.oh, i64 1
  %i.om = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.oj, <2 x double> %i.ol)
  %i.on = fneg double %i.nt
  %i.oo = insertelement <2 x double> poison, double %i.on, i64 0
  %i.op = insertelement <2 x double> %i.oo, double %i.og, i64 1
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.oj, <2 x double> %i.op) ; 2 uses
  %i.or = fmul double %.sroa.19.0.fr, %i.np
  %i.os = call double @llvm.fmuladd.f64(double %i.or, double %.sroa.19.0.fr, double %i.nn)
  br i1 %.not514, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit401
  %i.ot = extractelement <2 x double> %i.oq, i64 0
end_hunk_1
