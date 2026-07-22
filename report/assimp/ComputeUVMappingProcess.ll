inline.NumInlined: 245
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp23ComputeUVMappingProcess19ComputePlaneMappingEP6aiMeshRK10aiVector3tIfEPS4_:bb.a
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 28
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.cs = load <2 x float>, ptr %i.ck, align 8
  store <2 x float> %i.cs, ptr %.sroa.11.0..sroa_idx.i, align 8
  store float %i.cp, ptr %i.cd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN6Assimp25FindMeshCenterTransformedEP6aiMeshR10aiVector3tIfES4_S4_RK12aiMatrix4x4tIfE(ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(64) %8)
  %i.ct = load float, ptr %7, align 8
  %i.cu = load float, ptr %6, align 8
  %i.cv = load float, ptr %i.c, align 8
  %i.cw = load float, ptr %i.b, align 8
  %i.cx = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cv, i64 1
  %i.cz = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cw, i64 1 ; 2 uses
  %i.db = fsub <2 x float> %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %.not64 = icmp eq i32 %i.dd, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load <2 x float>, ptr %8, align 8       ; 2 uses
  %i.dg = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 2 uses
  %i.dh = load <2 x float>, ptr %.sroa.11.0..sroa_idx.i, align 8 ; 2 uses
  %i.di = load <2 x float>, ptr %i.cd, align 8    ; 2 uses
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> %i.di, <2 x i32> <i32 0, i32 2>
  %i.dk = shufflevector <2 x float> %i.df, <2 x float> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> %i.dh, <2 x i32> <i32 1, i32 3>
  %i.dm = shufflevector <2 x float> %i.dg, <2 x float> %i.di, <2 x i32> <i32 1, i32 3>
  br label %bb.k

._crit_edge:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph61, %bb.k
  %indvars.iv74 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next75, %bb.k ] ; 3 uses
  %i.dn = load ptr, ptr %i.de, align 8
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv74 ; 3 uses
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv74 ; 2 uses
  %i.dv = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.dw, %i.dl
  %i.dy = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dz, <2 x float> %i.dx)
  %i.eb = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.ec, <2 x float> %i.ea)
  %i.ee = fadd <2 x float> %i.ed, %i.dm
  %i.ef = fsub <2 x float> %i.ee, %i.da
  %i.eg = fdiv <2 x float> %i.ef, %i.db
  store <2 x float> %i.eg, ptr %i.du, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store float 0.000000e+00, ptr %i.eh, align 4
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.ei = load i32, ptr %i.dc, align 4
  %i.ej = zext i32 %i.ei to i64
  %i.ek = icmp samesign ult i64 %indvars.iv.next75, %i.ej
  br i1 %i.ek, label %bb.k, label %._crit_edge, !llvm.loop !18

.loopexit:                                        ; preds = %bb.c, %bb.f, %bb.i, %bb.b, %bb.e, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str)
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp23ComputeUVMappingProcess7ExecuteEP7aiScene(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 25 uses
  %3 = alloca %"struct.Assimp::ComputeUVMappingProcess::MappingInfo", align 4 ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull @.str.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = load i32, ptr %1, align 8
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #19
  br label %bb.bs

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %2, ptr %i.h, align 8
  store ptr %2, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not129 = icmp eq i32 %i.k, 0
  br i1 %.not129, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.f

._crit_edge128:                                   ; preds = %.loopexit119, %bb.e
  %i.s = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bo unwind label %bb.bq

bb.f:                                             ; preds = %.lr.ph127, %.loopexit119
  %indvars.iv148 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next149, %.loopexit119 ] ; 4 uses
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %.not8.i.i = icmp eq ptr %i.t, %2
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #21
  %.not.i.i = icmp eq ptr %i.u, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !19

_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %bb.f
  store ptr %2, ptr %i.h, align 8
  store ptr %2, ptr %2, align 8
  store i64 0, ptr %i.i, align 8
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv148
  %i.x = load ptr, ptr %i.w, align 8              ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %.preheader118

.preheader118:                                    ; preds = %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  %.not130 = icmp eq i32 %i.aa, 0
  br i1 %.not130, label %.loopexit119, label %.lr.ph124

bb.g:                                             ; preds = %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit
  %i.ab = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull @.str.5)
          to label %.loopexit119 unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.lr.ph124:                                        ; preds = %.preheader118, %.critedge
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.critedge ], [ 0, %.preheader118 ] ; 2 uses
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv145
  %i.af = load ptr, ptr %i.ae, align 8            ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(13) @.str.6) #22
  %.not80 = icmp eq i32 %i.ah, 0
  br i1 %.not80, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph124
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1048
  %i.aj = load ptr, ptr %i.ai, align 8            ; 6 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %.not81 = icmp eq i32 %i.ak, 0
  br i1 %.not81, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 1028
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = invoke ptr @aiTextureTypeToString(i32 noundef %i.an)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 1032
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = load i32, ptr %i.aj, align 4
  %i.as = invoke noundef ptr @_ZN6Assimp19MappingTypeToStringE16aiTextureMapping(i32 noundef %i.ar)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.7, ptr noundef %i.ao, i32 noundef %i.aq, ptr noundef %i.as) #19 ; 0 uses
  %i.au = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6Assimp6Logger4infoIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 1 dereferenceable(1024) %i.a)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.r:                                             ; preds = %bb.p, %bb.l
  %i.aw = load i32, ptr %i.aj, align 4            ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 5
  br i1 %i.ax, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 %i.aw, ptr %3, align 4
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.m, align 4
  store float 0.000000e+00, ptr %i.o, align 4
  store i32 0, ptr %i.p, align 4
  %i.ay = load i32, ptr %i.z, align 8             ; 2 uses
  %.not131 = icmp eq i32 %i.ay, 0
  br i1 %.not131, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.az = load ptr, ptr %i.x, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 1028
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 1032
  %wide.trip.count = zext i32 %i.ay to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8            ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1028
  %i.bg = load i32, ptr %i.bf, align 4
  %.not82 = icmp eq i32 %i.bg, %i.bb
  br i1 %.not82, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1032
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = load i32, ptr %i.bc, align 8
  %.not83 = icmp eq i32 %i.bi, %i.bj
  br i1 %.not83, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bk, ptr noundef nonnull dereferenceable(13) @.str.8) #22
  %.not84 = icmp eq i32 %i.bl, 0
  br i1 %.not84, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 1048
  %i.bn = load ptr, ptr %i.bm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false)
  br label %.loopexit

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !20

.loopexit:                                        ; preds = %bb.x, %bb.s, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 99999999, ptr %i.b, align 4
  %i.bo = load ptr, ptr %2, align 8               ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.bo, %2
  br i1 %.not5.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit
  %i.bp = load float, ptr %i.m, align 4
  %i.bq = load float, ptr %i.n, align 4
  %i.br = load float, ptr %i.o, align 4
  br label %bb.y

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.06.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %i.ce, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp eq i32 %i.bt, %i.aw
  br i1 %i.bu, label %bb.z, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 20
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = fcmp oeq float %i.bw, %i.bp
  br i1 %i.bx, label %bb.aa, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 24
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = fcmp oeq float %i.bz, %i.bq
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i: ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 28
  %i.cc = load float, ptr %i.cb, align 4
  %i.cd = fcmp oeq float %i.cc, %i.br
  br i1 %i.cd, label %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i, %bb.aa, %bb.z, %bb.y
  %i.ce = load ptr, ptr %.sroa.03.06.i.i.i, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %2
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit, label %bb.y, !llvm.loop !21

_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i, %.loopexit
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %i.bo, %.loopexit ], [ %.sroa.03.06.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i ], [ %i.ce, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i ] ; 2 uses
  %.not117 = icmp eq ptr %2, %.sroa.03.0.lcssa.i.i.i
  br i1 %.not117, label %.preheader, label %bb.ar

.preheader:                                       ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit
  %i.cf = load i32, ptr %i.q, align 8
  %.not132 = icmp eq i32 %i.cf, 0
  br i1 %.not132, label %._crit_edge, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader
  %i.cg = load ptr, ptr %i.r, align 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 13 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 232
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = zext i32 %i.cj to i64
  %.not85.peel = icmp eq i64 %indvars.iv148, %i.ck
  br i1 %.not85.peel, label %bb.ab, label %_Z18FindEmptyUVChannelP6aiMesh.exit.peel

bb.ab:                                            ; preds = %.lr.ph122.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 112 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  %.not.i.peel = icmp eq ptr %i.cm, null
  br i1 %.not.i.peel, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 120
  %i.co = load ptr, ptr %i.cn, align 8
  %.not.1.i.peel = icmp eq ptr %i.co, null
  br i1 %.not.1.i.peel, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not.2.i.peel = icmp eq ptr %i.cq, null
  br i1 %.not.2.i.peel, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8
  %.not.3.i.peel = icmp eq ptr %i.cs, null
  br i1 %.not.3.i.peel, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not.4.i.peel = icmp eq ptr %i.cu, null
  br i1 %.not.4.i.peel, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 152
  %i.cw = load ptr, ptr %i.cv, align 8
  %.not.5.i.peel = icmp eq ptr %i.cw, null
  br i1 %.not.5.i.peel, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 160
  %i.cy = load ptr, ptr %i.cx, align 8
  %.not.6.i.peel = icmp eq ptr %i.cy, null
  br i1 %.not.6.i.peel, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 168
  %i.da = load ptr, ptr %i.cz, align 8
  %.not.7.i.peel = icmp eq ptr %i.da, null
  br i1 %.not.7.i.peel, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc.peel unwind label %.loopexit.split-lp

.noexc.peel:                                      ; preds = %bb.aj
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.db, ptr noundef nonnull @.str.14)
          to label %_Z18FindEmptyUVChannelP6aiMesh.exit.peel unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.1.i.ph.peel = phi i32 [ 6, %bb.ah ], [ 5, %bb.ag ], [ 4, %bb.af ], [ 3, %bb.ae ], [ 2, %bb.ad ], [ 1, %bb.ac ], [ 0, %bb.ab ], [ 7, %bb.ai ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %.not86.peel = icmp eq i32 %i.dd, 0
  br i1 %.not86.peel, label %_Z18FindEmptyUVChannelP6aiMesh.exit.peel, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = zext i32 %i.dd to i64
  %i.df = mul nuw nsw i64 %i.de, 12               ; 2 uses
  %i.dg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.df) #23
          to label %bb.am unwind label %.loopexit.split-lp141 ; 5 uses

bb.am:                                            ; preds = %bb.al
  %i.dh = add nsw i64 %i.df, -12                  ; 2 uses
  %i.di = urem i64 %i.dh, 12
  %i.dj = sub nuw nsw i64 %i.dh, %i.di
  %i.dk = add nuw nsw i64 %i.dj, 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dg, i8 0, i64 %i.dk, i1 false)
  %i.dl = zext nneg i32 %.1.i.ph.peel to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dl
  store ptr %i.dg, ptr %i.dm, align 8
  %i.dn = load i32, ptr %i.aj, align 4
  switch i32 %i.dn, label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel [
    i32 1, label %bb.aq
    i32 2, label %bb.ap
    i32 4, label %bb.ao
    i32 3, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.do = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc100.peel unwind label %.loopexit.split-lp141

.noexc100.peel:                                   ; preds = %bb.an
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.do, ptr noundef nonnull @.str)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel unwind label %.loopexit.split-lp141

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN6Assimp23ComputeUVMappingProcess19ComputePlaneMappingEP6aiMeshRK10aiVector3tIfEPS4_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull %i.dg)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel unwind label %.loopexit.split-lp141

bb.ap:                                            ; preds = %bb.am
  invoke void @_ZN6Assimp23ComputeUVMappingProcess22ComputeCylinderMappingEP6aiMeshRK10aiVector3tIfEPS4_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull %i.dg)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel unwind label %.loopexit.split-lp141

bb.aq:                                            ; preds = %bb.am
  invoke void @_ZN6Assimp23ComputeUVMappingProcess20ComputeSphereMappingEP6aiMeshRK10aiVector3tIfEPS4_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull %i.dg)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel unwind label %.loopexit.split-lp141

_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel: ; preds = %bb.am, %.noexc100.peel, %bb.ao, %bb.ap, %bb.aq
  store i32 %.1.i.ph.peel, ptr %i.b, align 4
  br label %_Z18FindEmptyUVChannelP6aiMesh.exit.peel

_Z18FindEmptyUVChannelP6aiMesh.exit.peel:         ; preds = %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel, %bb.ak, %.noexc.peel, %.lr.ph122.preheader
  %i.dp = load i32, ptr %i.q, align 8
  %i.dq = icmp ugt i32 %i.dp, 1
  br i1 %i.dq, label %.lr.ph122, label %._crit_edge.loopexit

bb.ar:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i, i64 32
  %i.ds = load i32, ptr %i.dr, align 4
  store i32 %i.ds, ptr %i.b, align 4
  br label %bb.bm

bb.as:                                            ; preds = %bb.bm, %._crit_edge
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

._crit_edge.loopexit:                             ; preds = %_Z18FindEmptyUVChannelP6aiMesh.exit, %_Z18FindEmptyUVChannelP6aiMesh.exit.peel
  %.pre = load i32, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.du = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 99999999, %.preheader ]
  store i32 %i.du, ptr %i.p, align 4
  %i.dv = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE9push_backERKS3_.exit unwind label %bb.as ; 2 uses

_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE9push_backERKS3_.exit: ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dw, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %i.dx = load i64, ptr %i.i, align 8
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr %i.i, align 8
  br label %bb.bm

.lr.ph122:                                        ; preds = %_Z18FindEmptyUVChannelP6aiMesh.exit.peel, %_Z18FindEmptyUVChannelP6aiMesh.exit
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %_Z18FindEmptyUVChannelP6aiMesh.exit ], [ 1, %_Z18FindEmptyUVChannelP6aiMesh.exit.peel ] ; 2 uses
  %i.dz = load ptr, ptr %i.r, align 8
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv135
  %i.eb = load ptr, ptr %i.ea, align 8            ; 13 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 232
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = zext i32 %i.ed to i64
  %.not85 = icmp eq i64 %indvars.iv148, %i.ee
  br i1 %.not85, label %bb.at, label %_Z18FindEmptyUVChannelP6aiMesh.exit

end_hunk_0
