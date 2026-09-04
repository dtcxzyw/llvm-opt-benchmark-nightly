Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ComputeUVMappingProcess?download=true
inline.NumInlined: 245
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp23ComputeUVMappingProcess7ExecuteEP7aiScene:bb.a
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
  %i.aj = load ptr, ptr %i.ai, align 8            ; 7 uses
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
  %i.aw = load i32, ptr %i.aj, align 4
  %i.ax = icmp eq i32 %i.aw, 5
  br i1 %i.ax, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ay = load i32, ptr %i.aj, align 4            ; 2 uses
  store i32 %i.ay, ptr %3, align 4
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.m, align 4
  store float 0.000000e+00, ptr %i.o, align 4
  store i32 0, ptr %i.p, align 4
  %i.az = load i32, ptr %i.z, align 8             ; 2 uses
  %.not131 = icmp eq i32 %i.az, 0
  br i1 %.not131, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.ba = load ptr, ptr %i.x, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 1028
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 1032
  %wide.trip.count = zext i32 %i.az to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1028
  %i.bh = load i32, ptr %i.bg, align 4
  %.not82 = icmp eq i32 %i.bh, %i.bc
  br i1 %.not82, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1032
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = load i32, ptr %i.bd, align 8
  %.not83 = icmp eq i32 %i.bj, %i.bk
  br i1 %.not83, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bl, ptr noundef nonnull dereferenceable(13) @.str.8) #22
  %.not84 = icmp eq i32 %i.bm, 0
  br i1 %.not84, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 1048
  %i.bo = load ptr, ptr %i.bn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.bo, i64 12, i1 false)
  br label %.loopexit

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !20

.loopexit:                                        ; preds = %bb.x, %bb.s, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 99999999, ptr %i.b, align 4
  %i.bp = load ptr, ptr %2, align 8               ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.bp, %2
  br i1 %.not5.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit
  %i.bq = load float, ptr %i.m, align 4
  %i.br = load float, ptr %i.n, align 4
  %i.bs = load float, ptr %i.o, align 4
  br label %bb.y

bb.y:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.06.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i ], [ %i.cf, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = icmp eq i32 %i.bu, %i.ay
  br i1 %i.bv, label %bb.z, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 20
  %i.bx = load float, ptr %i.bw, align 4
  %i.by = fcmp oeq float %i.bx, %i.bq
  br i1 %i.by, label %bb.aa, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 24
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = fcmp oeq float %i.ca, %i.br
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i: ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 28
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = fcmp oeq float %i.cd, %i.bs
  br i1 %i.ce, label %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i, %bb.aa, %bb.z, %bb.y
  %i.cf = load ptr, ptr %.sroa.03.06.i.i.i, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cf, %2
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit, label %bb.y, !llvm.loop !21

_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i, %.loopexit
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %i.bp, %.loopexit ], [ %.sroa.03.06.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.i.i.i ], [ %i.cf, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN6Assimp23ComputeUVMappingProcess11MappingInfoEEclISt14_List_iteratorIS4_EEEbT_.exit.thread.i.i.i ] ; 2 uses
  %.not117 = icmp eq ptr %2, %.sroa.03.0.lcssa.i.i.i
  br i1 %.not117, label %.preheader, label %bb.ar

.preheader:                                       ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit
  %i.cg = load i32, ptr %i.q, align 8
  %.not132 = icmp eq i32 %i.cg, 0
  br i1 %.not132, label %._crit_edge, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader
  %i.ch = load ptr, ptr %i.r, align 8
  %i.ci = load ptr, ptr %i.ch, align 8            ; 13 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 232
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = zext i32 %i.ck to i64
  %.not85.peel = icmp eq i64 %indvars.iv148, %i.cl
  br i1 %.not85.peel, label %bb.ab, label %_Z18FindEmptyUVChannelP6aiMesh.exit.peel

bb.ab:                                            ; preds = %.lr.ph122.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 112 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %.not.i.peel = icmp eq ptr %i.cn, null
  br i1 %.not.i.peel, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 120
  %i.cp = load ptr, ptr %i.co, align 8
  %.not.1.i.peel = icmp eq ptr %i.cp, null
  br i1 %.not.1.i.peel, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 128
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not.2.i.peel = icmp eq ptr %i.cr, null
  br i1 %.not.2.i.peel, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 136
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not.3.i.peel = icmp eq ptr %i.ct, null
  br i1 %.not.3.i.peel, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %i.cv = load ptr, ptr %i.cu, align 8
  %.not.4.i.peel = icmp eq ptr %i.cv, null
  br i1 %.not.4.i.peel, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 152
  %i.cx = load ptr, ptr %i.cw, align 8
  %.not.5.i.peel = icmp eq ptr %i.cx, null
  br i1 %.not.5.i.peel, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 160
  %i.cz = load ptr, ptr %i.cy, align 8
  %.not.6.i.peel = icmp eq ptr %i.cz, null
  br i1 %.not.6.i.peel, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 168
  %i.db = load ptr, ptr %i.da, align 8
  %.not.7.i.peel = icmp eq ptr %i.db, null
  br i1 %.not.7.i.peel, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc.peel unwind label %.loopexit.split-lp

.noexc.peel:                                      ; preds = %bb.aj
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.dc, ptr noundef nonnull @.str.14)
          to label %_Z18FindEmptyUVChannelP6aiMesh.exit.peel unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.1.i.ph.peel = phi i32 [ 6, %bb.ah ], [ 5, %bb.ag ], [ 4, %bb.af ], [ 3, %bb.ae ], [ 2, %bb.ad ], [ 1, %bb.ac ], [ 0, %bb.ab ], [ 7, %bb.ai ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.de = load i32, ptr %i.dd, align 4            ; 2 uses
  %.not86.peel = icmp eq i32 %i.de, 0
  br i1 %.not86.peel, label %_Z18FindEmptyUVChannelP6aiMesh.exit.peel, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = zext i32 %i.de to i64
  %i.dg = mul nuw nsw i64 %i.df, 12               ; 2 uses
  %i.dh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dg) #23
          to label %bb.am unwind label %.loopexit.split-lp141 ; 5 uses

bb.am:                                            ; preds = %bb.al
  %i.di = add nsw i64 %i.dg, -12                  ; 2 uses
  %i.dj = urem i64 %i.di, 12
  %i.dk = sub nuw nsw i64 %i.di, %i.dj
  %i.dl = add nuw nsw i64 %i.dk, 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dh, i8 0, i64 %i.dl, i1 false)
  %i.dm = zext nneg i32 %.1.i.ph.peel to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dm
  store ptr %i.dh, ptr %i.dn, align 8
  %i.do = load i32, ptr %i.aj, align 4
  switch i32 %i.do, label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel [
    i32 1, label %bb.aq
    i32 2, label %bb.ap
    i32 4, label %bb.ao
    i32 3, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.dp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc100.peel unwind label %.loopexit.split-lp141

.noexc100.peel:                                   ; preds = %bb.an
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.dp, ptr noundef nonnull @.str)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel unwind label %.loopexit.split-lp141

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN6Assimp23ComputeUVMappingProcess19ComputePlaneMappingEP6aiMeshRK10aiVector3tIfEPS4_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull %i.dh)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel unwind label %.loopexit.split-lp141

bb.ap:                                            ; preds = %bb.am
  invoke void @_ZN6Assimp23ComputeUVMappingProcess22ComputeCylinderMappingEP6aiMeshRK10aiVector3tIfEPS4_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull %i.dh)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel unwind label %.loopexit.split-lp141

bb.aq:                                            ; preds = %bb.am
  invoke void @_ZN6Assimp23ComputeUVMappingProcess20ComputeSphereMappingEP6aiMeshRK10aiVector3tIfEPS4_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull %i.dh)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel unwind label %.loopexit.split-lp141

_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel: ; preds = %bb.am, %.noexc100.peel, %bb.ao, %bb.ap, %bb.aq
  store i32 %.1.i.ph.peel, ptr %i.b, align 4
  br label %_Z18FindEmptyUVChannelP6aiMesh.exit.peel

_Z18FindEmptyUVChannelP6aiMesh.exit.peel:         ; preds = %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit.peel, %bb.ak, %.noexc.peel, %.lr.ph122.preheader
  %i.dq = load i32, ptr %i.q, align 8
  %i.dr = icmp ugt i32 %i.dq, 1
  br i1 %i.dr, label %.lr.ph122, label %._crit_edge.loopexit

bb.ar:                                            ; preds = %_ZSt4findISt14_List_iteratorIN6Assimp23ComputeUVMappingProcess11MappingInfoEES3_ET_S5_S5_RKT0_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i, i64 32
  %i.dt = load i32, ptr %i.ds, align 4
  store i32 %i.dt, ptr %i.b, align 4
  br label %bb.bm

bb.as:                                            ; preds = %bb.bm, %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

._crit_edge.loopexit:                             ; preds = %_Z18FindEmptyUVChannelP6aiMesh.exit, %_Z18FindEmptyUVChannelP6aiMesh.exit.peel
  %.pre = load i32, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.dv = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 99999999, %.preheader ]
  store i32 %i.dv, ptr %i.p, align 4
  %i.dw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE9push_backERKS3_.exit unwind label %bb.as ; 2 uses

_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE9push_backERKS3_.exit: ; preds = %._crit_edge
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dx, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %i.dy = load i64, ptr %i.i, align 8
  %i.dz = add i64 %i.dy, 1
  store i64 %i.dz, ptr %i.i, align 8
  br label %bb.bm

.lr.ph122:                                        ; preds = %_Z18FindEmptyUVChannelP6aiMesh.exit.peel, %_Z18FindEmptyUVChannelP6aiMesh.exit
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %_Z18FindEmptyUVChannelP6aiMesh.exit ], [ 1, %_Z18FindEmptyUVChannelP6aiMesh.exit.peel ] ; 2 uses
  %i.ea = load ptr, ptr %i.r, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv135
  %i.ec = load ptr, ptr %i.eb, align 8            ; 13 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 232
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = zext i32 %i.ee to i64
  %.not85 = icmp eq i64 %indvars.iv148, %i.ef
  br i1 %.not85, label %bb.at, label %_Z18FindEmptyUVChannelP6aiMesh.exit

bb.at:                                            ; preds = %.lr.ph122
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 112 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %bb.bc, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 120
  %i.ej = load ptr, ptr %i.ei, align 8
  %.not.1.i = icmp eq ptr %i.ej, null
  br i1 %.not.1.i, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 128
  %i.el = load ptr, ptr %i.ek, align 8
  %.not.2.i = icmp eq ptr %i.el, null
  br i1 %.not.2.i, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 136
  %i.en = load ptr, ptr %i.em, align 8
  %.not.3.i = icmp eq ptr %i.en, null
  br i1 %.not.3.i, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 144
  %i.ep = load ptr, ptr %i.eo, align 8
  %.not.4.i = icmp eq ptr %i.ep, null
  br i1 %.not.4.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 152
  %i.er = load ptr, ptr %i.eq, align 8
  %.not.5.i = icmp eq ptr %i.er, null
  br i1 %.not.5.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 160
  %i.et = load ptr, ptr %i.es, align 8
  %.not.6.i = icmp eq ptr %i.et, null
  br i1 %.not.6.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 168
  %i.ev = load ptr, ptr %i.eu, align 8
  %.not.7.i = icmp eq ptr %i.ev, null
  br i1 %.not.7.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ew = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc unwind label %.loopexit139

.noexc:                                           ; preds = %bb.bb
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ew, ptr noundef nonnull @.str.14)
          to label %_Z18FindEmptyUVChannelP6aiMesh.exit unwind label %.loopexit139

bb.bc:                                            ; preds = %bb.ba, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  %.1.i.ph = phi i32 [ 6, %bb.az ], [ 5, %bb.ay ], [ 4, %bb.ax ], [ 3, %bb.aw ], [ 2, %bb.av ], [ 1, %bb.au ], [ 0, %bb.at ], [ 7, %bb.ba ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ey = load i32, ptr %i.ex, align 4            ; 2 uses
  %.not86 = icmp eq i32 %i.ey, 0
  br i1 %.not86, label %_Z18FindEmptyUVChannelP6aiMesh.exit, label %bb.bd

.loopexit139:                                     ; preds = %bb.bb, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp:                               ; preds = %bb.aj, %.noexc.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %i.ez = zext i32 %i.ey to i64
  %i.fa = mul nuw nsw i64 %i.ez, 12               ; 2 uses
  %i.fb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fa) #23
          to label %bb.be unwind label %.loopexit140 ; 5 uses

bb.be:                                            ; preds = %bb.bd
  %i.fc = add nsw i64 %i.fa, -12                  ; 2 uses
  %i.fd = urem i64 %i.fc, 12
  %i.fe = sub nuw nsw i64 %i.fc, %i.fd
  %i.ff = add nuw nsw i64 %i.fe, 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fb, i8 0, i64 %i.ff, i1 false)
  %i.fg = zext nneg i32 %.1.i.ph to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fg
  store ptr %i.fb, ptr %i.fh, align 8
  %i.fi = load i32, ptr %i.aj, align 4
  switch i32 %i.fi, label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit [
    i32 1, label %bb.bf
    i32 2, label %bb.bg
    i32 4, label %bb.bh
    i32 3, label %bb.bi
  ]

.loopexit140:                                     ; preds = %bb.bd, %bb.bf, %bb.bg, %bb.bh, %bb.bj, %bb.bk, %bb.bi, %.noexc100
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp141:                            ; preds = %bb.al, %bb.an, %.noexc100.peel, %bb.ao, %bb.ap, %bb.aq
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN6Assimp23ComputeUVMappingProcess20ComputeSphereMappingEP6aiMeshRK10aiVector3tIfEPS4_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ec, ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull %i.fb)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit unwind label %.loopexit140

bb.bg:                                            ; preds = %bb.be
  invoke void @_ZN6Assimp23ComputeUVMappingProcess22ComputeCylinderMappingEP6aiMeshRK10aiVector3tIfEPS4_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ec, ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull %i.fb)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit unwind label %.loopexit140

bb.bh:                                            ; preds = %bb.be
  invoke void @_ZN6Assimp23ComputeUVMappingProcess19ComputePlaneMappingEP6aiMeshRK10aiVector3tIfEPS4_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ec, ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull %i.fb)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit unwind label %.loopexit140

bb.bi:                                            ; preds = %bb.be
  %i.fj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc100 unwind label %.loopexit140

.noexc100:                                        ; preds = %bb.bi
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fj, ptr noundef nonnull @.str)
          to label %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit unwind label %.loopexit140

_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit: ; preds = %.noexc100, %bb.be, %bb.bh, %bb.bg, %bb.bf
  %i.fk = load i32, ptr %i.b, align 4
  %.not88 = icmp eq i32 %i.fk, %.1.i.ph
  br i1 %.not88, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit
  %i.fl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bk unwind label %.loopexit140

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fl, ptr noundef nonnull @.str.9)
          to label %bb.bl unwind label %.loopexit140

bb.bl:                                            ; preds = %bb.bk, %_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE.exit
  store i32 %.1.i.ph, ptr %i.b, align 4
  br label %_Z18FindEmptyUVChannelP6aiMesh.exit

_Z18FindEmptyUVChannelP6aiMesh.exit:              ; preds = %.noexc, %.lr.ph122, %bb.bc, %bb.bl
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.fm = load i32, ptr %i.q, align 8
  %i.fn = zext i32 %i.fm to i64
  %i.fo = icmp samesign ult i64 %indvars.iv.next136, %i.fn
  br i1 %i.fo, label %.lr.ph122, label %._crit_edge.loopexit, !llvm.loop !22

bb.bm:                                            ; preds = %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE9push_backERKS3_.exit, %bb.ar
  store i32 0, ptr %i.aj, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.af, i64 1028
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.af, i64 1032
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %i.fq, i32 noundef %i.fs, i32 noundef 5)
          to label %_ZN10aiMaterial11AddPropertyIjEE8aiReturnPKT_jPKcjj.exit unwind label %bb.as ; 0 uses

_ZN10aiMaterial11AddPropertyIjEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
end_hunk_0
