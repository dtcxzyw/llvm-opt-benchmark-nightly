Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi:.invoke

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.0652.0.copyload = load float, ptr %i.u, align 8, !tbaa !82
  %.sroa.5653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 420
  %.sroa.5653.0.copyload = load float, ptr %.sroa.5653.0..sroa_idx, align 4, !tbaa !82
  %.sroa.6654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.6654.0.copyload = load float, ptr %.sroa.6654.0..sroa_idx, align 8, !tbaa !82
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1672
  %.sroa.0.0.copyload.i = load i16, ptr %i.w, align 8, !tbaa !162 ; 4 uses
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9ClientMap28updateTransparentMeshBuffersEv(ptr noundef nonnull align 8 dereferenceable(656) %0)
          to label %._crit_edge.i.i unwind label %bb.g

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.f:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.g:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.aa, ptr %9, align 8, !tbaa !177
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !176
  store i8 0, ptr %i.aa, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ac, ptr %8, align 8, !tbaa !177
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !176
  store i8 0, ptr %i.ac, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.ae, align 8, !tbaa !438
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i8 1, ptr %i.af, align 8, !tbaa !439
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %._crit_edge.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %8, align 8, !tbaa !64    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ac
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !65
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #34
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 49
  store i8 1, ptr %i.al, align 1, !tbaa !440
  invoke void @_ZN9TimeTaker5startEv(ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit unwind label %bb.h

_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.am = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit
  %i.ao = load i64, ptr %i.aa, align 8, !tbaa !65
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9TimeTakerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm13TimePrecision.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  %i.aq = load i8, ptr @__tls_guard, align 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, !prof !441

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE)
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.at = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.au = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.av = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE) ; 2 uses
  %i.aw = icmp eq i8 %.pr, 0
  br i1 %i.aw, label %bb.i, label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, !prof !442

bb.i:                                             ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.ax = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.ay = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit: ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, %bb.i
  %i.az = phi ptr [ %i.as, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread ], [ %i.av, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit ], [ %i.av, %bb.i ] ; 3 uses
  %i.ba = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE) ; 18 uses
  call fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.az)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 26 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !443
  %.not.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !154
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 624
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !444 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  invoke void @_ZNK6Camera20getFrustumCullPlanesEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.470") align 4 %10, ptr noundef nonnull align 8 dereferenceable(536) %i.bg)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 84
  %.sroa.01.0.copyload.i = load i48, ptr %i.bi, align 4, !noalias !786 ; 3 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.01.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.01.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16
  %i.bj = sitofp nsz i16 %.sroa.3.0.extract.trunc.i.i to float
  %i.bk = trunc i48 %.sroa.01.0.copyload.i to i16
  %i.bl = insertelement <2 x i16> poison, i16 %i.bk, i64 0
  %i.bm = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %i.bn = insertelement <2 x i16> %i.bl, i16 %i.bm, i64 1
  %i.bo = sitofp <2 x i16> %i.bn to <2 x float>
  %i.bp = fmul nnan nsz <2 x float> %i.bo, splat (float 1.000000e+01)
  %i.bq = fmul nnan nsz float %i.bj, 1.000000e+01
  store <2 x float> %i.bp, ptr %i.bh, align 4, !alias.scope !786
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  store float %i.bq, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !786
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !165 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %.not686965 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not686965, label %..preheader_crit_edge, label %.lr.ph968

..preheader_crit_edge:                            ; preds = %bb.j
  %.pre1080 = zext i16 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.pre1081 = add nsw i32 %.pre1080, -1
  %.pre1083 = shl i16 %.sroa.0.0.copyload.i, 4
  br label %.preheader

.lr.ph968:                                        ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 68
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.014.ptr.1.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.014.ptr.2.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 44
  %.014.ptr.3.i = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.ch = zext i16 %.sroa.0.0.copyload.i to i32   ; 4 uses
  %i.ci = add nsw i32 %i.ch, -1                   ; 4 uses
  %i.cj = shl i16 %.sroa.0.0.copyload.i, 4        ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.co = insertelement <2 x i16> poison, i16 %i.cj, i64 0
  %i.cp = shufflevector <2 x i16> %i.co, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %i.cr = shufflevector <2 x i32> %i.cq, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.l

.preheader.loopexit:                              ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread
  %i.cs = uitofp nsz i32 %.5178 to float
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader.loopexit
  %.pre-phi1084 = phi i16 [ %.pre1083, %..preheader_crit_edge ], [ %i.cj, %.preheader.loopexit ] ; 2 uses
  %.pre-phi1082 = phi i32 [ %.pre1081, %..preheader_crit_edge ], [ %i.ci, %.preheader.loopexit ] ; 3 uses
  %.pre-phi = phi i32 [ %.pre1080, %..preheader_crit_edge ], [ %i.ch, %.preheader.loopexit ] ; 2 uses
  %.0173.lcssa = phi float [ 0.000000e+00, %..preheader_crit_edge ], [ %i.cs, %.preheader.loopexit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 12 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.df = insertelement <2 x i16> poison, i16 %.pre-phi1084, i64 0
  %i.dg = shufflevector <2 x i16> %i.df, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.dh = insertelement <2 x i32> poison, i32 %.pre-phi, i64 0
  %i.di = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.ah

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dj = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.aa
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %.body
  %i.dl = load i64, ptr %i.aa, align 8, !tbaa !65
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  br label %bb.go

bb.k:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.l:                                             ; preds = %.lr.ph968, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread
  %.0173967 = phi i32 [ 0, %.lr.ph968 ], [ %.5178, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread ] ; 12 uses
  %.sroa.0646.0966 = phi ptr [ %i.bs, %.lr.ph968 ], [ %i.jh, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0646.0966, i64 32
  %.sroa.095.0.copyload = load i48, ptr %i.do, align 8 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0646.0966, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !206 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !445 ; 9 uses
  %.not219 = icmp eq ptr %i.dr, null
  br i1 %.not219, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.0.0.copyload.i256 = load i48, ptr %i.ds, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i256, 16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i256, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.dt = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.du = trunc i48 %.sroa.0.0.copyload.i256 to i16
  %i.dv = insertelement <2 x i16> poison, i16 %i.du, i64 0
  %i.dw = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %i.dx = insertelement <2 x i16> %i.dv, i16 %i.dw, i64 1
  %i.dy = sitofp <2 x i16> %i.dx to <2 x float>
  %i.dz = fmul nnan nsz <2 x float> %i.dy, splat (float 1.000000e+01) ; 2 uses
  %i.ea = fmul nnan nsz float %i.dt, 1.000000e+01
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 60
  %.sroa.01.0.copyload.i257 = load <2 x float>, ptr %i.eb, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %foldExtExtBinop = fadd nsz <2 x float> %.sroa.01.0.copyload.i257, %i.dz
  %i.ec = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop1451 = fadd nsz <2 x float> %.sroa.01.0.copyload.i257, %i.dz
  %i.ed = extractelement <2 x float> %foldExtExtBinop1451, i64 1 ; 2 uses
  %i.ee = fadd nsz float %.sroa.22.0.copyload.i, %i.ea ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !480 ; 5 uses
  %i.eh = load float, ptr %i.bh, align 4, !tbaa !481
  %i.ei = fsub nsz float %i.ec, %i.eh             ; 4 uses
  %i.ej = load float, ptr %i.bu, align 4, !tbaa !482
  %i.ek = fsub nsz float %i.ed, %i.ej             ; 4 uses
  %i.el = load float, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !483
  %i.em = fsub nsz float %i.ee, %i.el             ; 4 uses
  %i.en = load float, ptr %10, align 4, !tbaa !481
  %i.eo = load float, ptr %i.bv, align 4, !tbaa !482
  %i.ep = fmul nsz float %i.ek, %i.eo
  %i.eq = call nsz float @llvm.fmuladd.f32(float %i.ei, float %i.en, float %i.ep)
  %i.er = load float, ptr %i.bw, align 4, !tbaa !483
  %i.es = call nsz noundef float @llvm.fmuladd.f32(float %i.em, float %i.er, float %i.eq)
  %i.et = load float, ptr %i.bx, align 4, !tbaa !485
  %i.eu = fadd nsz float %i.et, %i.es
  %i.ev = fcmp nsz ogt float %i.eu, %i.eg
  br i1 %i.ev, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ew = load float, ptr %.014.ptr.1.i, align 4, !tbaa !481
  %i.ex = load float, ptr %i.by, align 4, !tbaa !482
  %i.ey = fmul nsz float %i.ek, %i.ex
  %i.ez = call nsz float @llvm.fmuladd.f32(float %i.ei, float %i.ew, float %i.ey)
  %i.fa = load float, ptr %i.bz, align 4, !tbaa !483
  %i.fb = call nsz noundef float @llvm.fmuladd.f32(float %i.em, float %i.fa, float %i.ez)
  %i.fc = load float, ptr %i.ca, align 4, !tbaa !485
  %i.fd = fadd nsz float %i.fc, %i.fb
  %i.fe = fcmp nsz ogt float %i.fd, %i.eg
  br i1 %i.fe, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ff = load float, ptr %.014.ptr.2.i, align 4, !tbaa !481
  %i.fg = load float, ptr %i.cb, align 4, !tbaa !482
  %i.fh = fmul nsz float %i.ek, %i.fg
  %i.fi = call nsz float @llvm.fmuladd.f32(float %i.ei, float %i.ff, float %i.fh)
  %i.fj = load float, ptr %i.cc, align 4, !tbaa !483
  %i.fk = call nsz noundef float @llvm.fmuladd.f32(float %i.em, float %i.fj, float %i.fi)
  %i.fl = load float, ptr %i.cd, align 4, !tbaa !485
  %i.fm = fadd nsz float %i.fl, %i.fk
  %i.fn = fcmp nsz ogt float %i.fm, %i.eg
  br i1 %i.fn, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit: ; preds = %bb.o
  %i.fo = load float, ptr %.014.ptr.3.i, align 4, !tbaa !481
  %i.fp = load float, ptr %i.ce, align 4, !tbaa !482
  %i.fq = fmul nsz float %i.ek, %i.fp
  %i.fr = call nsz float @llvm.fmuladd.f32(float %i.ei, float %i.fo, float %i.fq)
  %i.fs = load float, ptr %i.cf, align 4, !tbaa !483
  %i.ft = call nsz noundef float @llvm.fmuladd.f32(float %i.em, float %i.fs, float %i.fr)
  %i.fu = load float, ptr %i.cg, align 4, !tbaa !485
  %i.fv = fadd nsz float %i.fu, %i.ft
  %i.fw = fcmp nsz ogt float %i.fv, %i.eg
  br i1 %i.fw, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %bb.q

bb.p:                                             ; preds = %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.q:                                             ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit
  br i1 %i.i, label %bb.r, label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit

bb.r:                                             ; preds = %bb.q
  %i.fy = fsub nsz float %.sroa.0652.0.copyload, %i.ec ; 2 uses
  %i.fz = fsub nsz float %.sroa.5653.0.copyload, %i.ed ; 2 uses
  %i.ga = fsub nsz float %.sroa.6654.0.copyload, %i.ee ; 2 uses
  %i.gb = fmul nsz float %i.fz, %i.fz
  %i.gc = call nsz float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.gb)
  %i.gd = call nsz noundef float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.gc)
  %i.ge = fadd nsz float %i.eg, 5.000000e+02      ; 2 uses
  %square = fmul nsz float %i.ge, %i.ge
  %i.gf = fcmp nsz oge float %i.gd, %square       ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dr, i64 76 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !787 ; 3 uses
  %i.gi = icmp ne i32 %i.gh, 0
  %or.cond = and i1 %i.gf, %i.gi
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gj = load ptr, ptr %i.cn, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i8, ptr %i.gk, align 4, !tbaa !489, !range !174, !noundef !175
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = select i1 %i.gm, i32 200, i32 50
  %i.go = icmp ult i32 %.0173967, %i.gn
  br i1 %i.go, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gp = invoke noundef zeroext i1 @_ZN12MapBlockMesh7animateEbfij(ptr noundef nonnull align 8 dereferenceable(249) %i.dr, i1 noundef zeroext %i.gf, float noundef %i.p, i32 noundef %i.q, i32 noundef %i.t)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gq = zext i1 %i.gp to i32
  %spec.select = add i32 %.0173967, %i.gq
  br label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body287

bb.w:                                             ; preds = %bb.s
  %i.gs = icmp sgt i32 %i.gh, 0
  br i1 %i.gs, label %bb.x, label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.gt = add nsw i32 %i.gh, -1
  store i32 %i.gt, ptr %i.gg, align 4, !tbaa !787
  br label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread

_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit: ; preds = %bb.q
  br i1 %i.f, label %bb.y, label %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit.thread

bb.y:                                             ; preds = %_ZN12MapBlockMesh27decreaseAnimationForceTimerEv.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dr, i64 224
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !490 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dr, i64 232
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !490 ; 2 uses
  %.not690963 = icmp eq ptr %i.gv, %i.gx
  br i1 %.not690963, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %.sroa.2.0.extract.shift.i.i260 = lshr i48 %.sroa.095.0.copyload, 16
  %.sroa.3.0.extract.shift.i.i262 = lshr i48 %.sroa.095.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i263 = trunc nuw i48 %.sroa.3.0.extract.shift.i.i262 to i16 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i261 = trunc i48 %.sroa.2.0.extract.shift.i.i260 to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.095.0.copyload to i16 ; 2 uses
  %i.gy = sext i16 %.sroa.2.0.extract.trunc.i.i261 to i32
  %i.gz = sext i16 %.sroa.0.0.extract.trunc.i.i to i32
  %.lobit.i.i1.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i261, 15
  %.lobit.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i, 15
  %i.ha = zext nneg i16 %.lobit.i.i1.i.i to i32
  %i.hb = zext nneg i16 %.lobit.i.i.i.i to i32
  %i.hc = mul nuw nsw i32 %i.ci, %i.ha
  %i.hd = mul nuw nsw i32 %i.ci, %i.hb
  %i.he = sub nsw i32 %i.gy, %i.hc
  %i.hf = sub nsw i32 %i.gz, %i.hd
  %i.hg = insertelement <2 x i32> poison, i32 %i.hf, i64 0
  %i.hh = insertelement <2 x i32> %i.hg, i32 %i.he, i64 1
  %i.hi = sdiv <2 x i32> %i.hh, %i.cr
  %i.hj = trunc <2 x i32> %i.hi to <2 x i16>
end_hunk_0
begin_hunk_1_@_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi:.invoke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ni, ptr noundef nonnull align 8 dereferenceable(24) %i.nh, i64 12, i1 false), !tbaa.struct !501
  %i.nj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !56
  %i.nl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -8
  store ptr %i.nk, ptr %i.nl, align 8, !tbaa !500
  %i.nm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.nn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nn, ptr noundef nonnull align 8 dereferenceable(24) %i.nm, i64 12, i1 false), !tbaa.struct !501
  %i.no = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -32
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !56
  %i.nq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -32
  store ptr %i.np, ptr %i.nq, align 8, !tbaa !500
  %i.nr = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i, -2
  %i.ns = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.ns, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0194.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  store ptr %.val.i.i.i.i.i.i, ptr %i.mv, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.nt = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 16
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %i.nt, align 8, !tbaa !500 ; 2 uses
  %i.nu = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i
  br i1 %i.nu, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i
  %i.nv = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.ar ]
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.ar ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  store ptr %i.nv, ptr %i.nw, align 8, !tbaa !500
  %i.nx = getelementptr i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.nx, align 8, !tbaa !500 ; 2 uses
  %i.ny = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.ny, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i", !llvm.loop !730

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ar
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.ar ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.nz, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  br label %bb.as

bb.as:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i
  %.sroa.08.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i277 = icmp eq i64 %.sroa.08.020.i.add.i.i.i.i, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i277, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i", label %bb.aq, !llvm.loop !731

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i": ; preds = %bb.as
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0194.1.i, i64 384 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.oa, %.sroa.13.1.i
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.oi, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i" ], [ %i.oa, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %i.ob = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8
  %.val2.i7.i.i14.i.i.i.i = load ptr, ptr %i.ob, align 8, !tbaa !500 ; 2 uses
  %i.oc = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i7.i.i14.i.i.i.i
  br i1 %i.oc, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i"

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %i.od = phi ptr [ %.val2.i.i.i21.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i7.i.i14.i.i.i.i, %.lr.ph.i13.i.i.i.i ]
  %.sroa.04.08.i.i19.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 16
  store ptr %i.od, ptr %i.oe, align 8, !tbaa !500
  %i.of = getelementptr i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i.i = load ptr, ptr %i.of, align 8, !tbaa !500 ; 2 uses
  %i.og = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i
  br i1 %i.og, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i", !llvm.loop !730

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i15.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %i.oh, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.oi, %.sroa.13.1.i
  br i1 %.not.i17.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !732

.preheader.i24.i.i.i.i:                           ; preds = %bb.ap
  %.sroa.08.017.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0194.1.i, i64 24 ; 2 uses
  %.not18.i26.i.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i.i, %.sroa.13.1.i
  br i1 %.not18.i26.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i24.i.i.i.i
  %i.oj = getelementptr i8, ptr %.sroa.0194.1.i, i64 16 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %.lr.ph.i27.i.i.i.i
  %.sroa.08.020.i28.i.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.0.i35.i.i.i.i, %bb.aw ] ; 8 uses
  %.pn19.i29.i.i.i.i = phi ptr [ %.sroa.0194.1.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.aw ] ; 3 uses
  %i.ok = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 40
  %.val.i.i30.i.i.i.i = load ptr, ptr %i.ok, align 8, !tbaa !500 ; 5 uses
  %.val1.i.i31.i.i.i.i = load ptr, ptr %i.oj, align 8, !tbaa !500
  %i.ol = icmp ult ptr %.val.i.i30.i.i.i.i, %.val1.i.i31.i.i.i.i
  br i1 %i.ol, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.om = ptrtoint ptr %.sroa.08.020.i28.i.i.i.i to i64
  %i.on = sub i64 %i.om, %i.mo                    ; 2 uses
  %i.oo = icmp sgt i64 %i.on, 0
  br i1 %i.oo, label %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i:           ; preds = %bb.au
  %i.op = getelementptr inbounds nuw i8, ptr %.pn19.i29.i.i.i.i, i64 48
  %i.oq = udiv exact i64 %i.on, 24
  br label %.lr.ph.i.i.i.i.i.i43.i.i.i.i

.lr.ph.i.i.i.i.i.i43.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i
  %.010.i.i.i.i.i.i44.i.i.i.i = phi i64 [ %i.ow, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.oq, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i45.i.i.i.i = phi ptr [ %i.os, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.op, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i46.i.i.i.i = phi ptr [ %i.or, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %i.or = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -24 ; 2 uses
  %i.os = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.os, ptr noundef nonnull align 8 dereferenceable(24) %i.or, i64 12, i1 false), !tbaa.struct !501
  %i.ot = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -8
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !56
  %i.ov = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -8
  store ptr %i.ou, ptr %i.ov, align 8, !tbaa !500
  %i.ow = add nsw i64 %.010.i.i.i.i.i.i44.i.i.i.i, -1
  %i.ox = icmp samesign ugt i64 %.010.i.i.i.i.i.i44.i.i.i.i, 1
  br i1 %i.ox, label %.lr.ph.i.i.i.i.i.i43.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0194.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i23.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  store ptr %.val.i.i30.i.i.i.i, ptr %i.oj, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.oy = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 16
  %.val2.i7.i.i32.i.i.i.i = load ptr, ptr %i.oy, align 8, !tbaa !500 ; 2 uses
  %i.oz = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i7.i.i32.i.i.i.i
  br i1 %i.oz, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i"

.lr.ph.i.i37.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i.i37.i.i.i.i
  %i.pa = phi ptr [ %.val2.i.i.i40.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.val2.i7.i.i32.i.i.i.i, %bb.av ]
  %.sroa.04.08.i.i38.i.i.i.i = phi ptr [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.av ] ; 4 uses
  %.sroa.0.0.i.i39.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i38.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i39.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 16
  store ptr %i.pa, ptr %i.pb, align 8, !tbaa !500
  %i.pc = getelementptr i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -32
  %.val2.i.i.i40.i.i.i.i = load ptr, ptr %i.pc, align 8, !tbaa !500 ; 2 uses
  %i.pd = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i.i.i40.i.i.i.i
  br i1 %i.pd, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i", !llvm.loop !730

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i": ; preds = %.lr.ph.i.i37.i.i.i.i, %bb.av
  %.sroa.04.0.lcssa.i.i34.i.i.i.i = phi ptr [ %.sroa.08.020.i28.i.i.i.i, %bb.av ], [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i34.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i22.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i34.i.i.i.i, i64 16
  store ptr %.val.i.i30.i.i.i.i, ptr %i.pe, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  br label %bb.aw

bb.aw:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_.exit.i33.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i
  %.sroa.08.0.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i.i.i.i, i64 24 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq ptr %.sroa.08.0.i35.i.i.i.i, %.sroa.13.1.i
  br i1 %.not.i36.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISM_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISS_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS13_ESt8equal_toIS13_ESaIS2_IKS13_S14_EEEEUlRKSW_RKT0_E_EvSW_SW_S1G_.exit.i", label %bb.at, !llvm.loop !731

bb.ax:                                            ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i, %.lr.ph284.i
  %.sroa.0192.0282.i = phi ptr [ %.pre.i, %.lr.ph284.i ], [ %i.pf, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 2 uses
  %.sroa.21207.0281.i = phi ptr [ null, %.lr.ph284.i ], [ %.sroa.21207.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 10 uses
  %.sroa.13.0280.i = phi ptr [ null, %.lr.ph284.i ], [ %.sroa.13.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 7 uses
  %.sroa.0194.0279.i = phi ptr [ null, %.lr.ph284.i ], [ %.sroa.0194.1.i, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i ] ; 11 uses
  %i.pf = getelementptr inbounds i8, ptr %.sroa.0192.0282.i, i64 -16 ; 3 uses
  %.sroa.024.0.copyload.i = load i48, ptr %i.pf, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.pg = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32
  %.lobit.i.i2.i.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i.i, 15
  %i.ph = zext nneg i16 %.lobit.i.i2.i.i.i to i32
  %i.pi = mul nuw nsw i32 %.pre-phi1082, %i.ph
  %i.pj = sub nsw i32 %i.pg, %i.pi
  %i.pk = sdiv i32 %i.pj, %.pre-phi
  %i.pl = trunc i32 %i.pk to i16
  %i.pm = mul i16 %.pre-phi1084, %i.pl
  %i.pn = load i16, ptr %i.cx, align 8, !tbaa !159
  %i.po = sub i16 %i.pm, %i.pn
  %i.pp = sitofp nsz i16 %i.po to float
  %.sroa.2.0.extract.trunc.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.pq = trunc i48 %.sroa.024.0.copyload.i to i16 ; 2 uses
  %24 = sext i16 %.sroa.2.0.extract.trunc.i.i.i to i32
  %25 = sext i16 %i.pq to i32
  %.lobit.i.i1.i.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i.i, 15
  %.lobit.i.i.i.i.i = lshr i16 %i.pq, 15
  %26 = zext nneg i16 %.lobit.i.i1.i.i.i to i32
  %27 = zext nneg i16 %.lobit.i.i.i.i.i to i32
  %28 = mul nuw nsw i32 %.pre-phi1082, %26
  %29 = mul nuw nsw i32 %.pre-phi1082, %27
  %30 = sub nsw i32 %24, %28
  %31 = sub nsw i32 %25, %29
  %32 = insertelement <2 x i32> poison, i32 %31, i64 0
  %33 = insertelement <2 x i32> %32, i32 %30, i64 1
  %i.pr = sdiv <2 x i32> %33, %i.di
  %i.ps = trunc <2 x i32> %i.pr to <2 x i16>
  %i.pt = mul <2 x i16> %i.dg, %i.ps
  %i.pu = load <2 x i16>, ptr %i.cw, align 4, !tbaa !162
  %i.pv = sub <2 x i16> %i.pt, %i.pu
  %i.pw = sitofp <2 x i16> %i.pv to <2 x float>
  %i.px = fmul nnan nsz <2 x float> %i.pw, splat (float 1.000000e+01) ; 4 uses
  %i.py = fmul nnan nsz float %i.pp, 1.000000e+01 ; 4 uses
  %i.pz = getelementptr inbounds i8, ptr %.sroa.0192.0282.i, i64 -8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !498 ; 6 uses
  br i1 %i.kz, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !58
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = invoke noundef ptr %i.qd(ptr noundef nonnull align 8 dereferenceable(8) %i.qa)
          to label %.noexc96.i unwind label %.loopexit244.i.loopexit, !inline_history !8 ; 2 uses

.noexc96.i:                                       ; preds = %bb.ay
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !58
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8
  %i.qi = invoke noundef i32 %i.qh(ptr noundef nonnull align 8 dereferenceable(28) %i.qe)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i unwind label %.loopexit244.i.loopexit, !inline_history !8

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i: ; preds = %.noexc96.i
  %.not80.i = icmp ult i32 %i.qi, %i.kg
  br i1 %.not80.i, label %bb.be, label %bb.az

bb.az:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i, %bb.ax
  %i.qj = load ptr, ptr %i.bc, align 8, !tbaa !443 ; 8 uses
  %i.qk = load ptr, ptr %i.cy, align 8, !tbaa !49
  %.not.i595 = icmp eq ptr %i.qj, %i.qk
  br i1 %.not.i595, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store <2 x float> %i.px, ptr %i.qj, align 8
  %.sroa.23.0..sroa_idx.i.i599 = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store float %i.py, ptr %.sroa.23.0..sroa_idx.i.i599, align 8, !tbaa !82
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 12 ; 2 uses
  %i.qm = load i8, ptr %i.ql, align 4
  %i.qn = and i8 %i.qm, -4
  %i.qo = or disjoint i8 %i.qn, 1
  store i8 %i.qo, ptr %i.ql, align 4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store ptr %i.qa, ptr %i.qp, align 8, !tbaa !65
  %i.qq = load ptr, ptr %i.bc, align 8, !tbaa !443
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  store ptr %i.qr, ptr %i.bc, align 8, !tbaa !443
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

bb.bb:                                            ; preds = %bb.az
  %.val.i.i600 = load ptr, ptr %i.ba, align 8, !tbaa !48 ; 5 uses
  %i.qs = ptrtoint ptr %i.qj to i64
  %i.qt = ptrtoint ptr %.val.i.i600 to i64        ; 2 uses
  %i.qu = sub i64 %i.qs, %i.qt                    ; 3 uses
  %i.qv = icmp eq i64 %i.qu, 9223372036854775800
  br i1 %i.qv, label %bb.bc, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i601

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc615 unwind label %.loopexit244.i.loopexit.split-lp

.noexc615:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i601: ; preds = %bb.bb
  %i.qw = sdiv exact i64 %i.qu, 24                ; 3 uses
  %i.qx = icmp eq ptr %i.qj, %.val.i.i600         ; 2 uses
  %.sroa.speculated.i.i.i602 = select i1 %i.qx, i64 1, i64 %i.qw
  %i.qy = add nsw i64 %.sroa.speculated.i.i.i602, %i.qw ; 2 uses
  %i.qz = icmp ult i64 %i.qy, %i.qw
  %i.ra = call i64 @llvm.umin.i64(i64 %i.qy, i64 384307168202282325)
  %i.rb = select i1 %i.qz, i64 384307168202282325, i64 %i.ra ; 3 uses
  %.not.i.i.i603 = icmp ne i64 %i.rb, 0
  call void @llvm.assume(i1 %.not.i.i.i603)
  %i.rc = mul nuw nsw i64 %i.rb, 24
  %i.rd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rc) #38
          to label %.noexc616 unwind label %.loopexit244.i.loopexit ; 5 uses

.noexc616:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i601
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.qu ; 4 uses
  store <2 x float> %i.px, ptr %i.re, align 8
  %.sroa.23.0..sroa_idx.i.i.i607 = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store float %i.py, ptr %.sroa.23.0..sroa_idx.i.i.i607, align 8, !tbaa !82
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 12
  store i8 1, ptr %i.rf, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  store ptr %i.qa, ptr %i.rg, align 8, !tbaa !65
  br i1 %i.qx, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i612, label %.lr.ph.i.i.i.i.i608

.lr.ph.i.i.i.i.i608:                              ; preds = %.noexc616, %.lr.ph.i.i.i.i.i608
  %.03.i.i.i.i.i609 = phi ptr [ %i.ri, %.lr.ph.i.i.i.i.i608 ], [ %i.rd, %.noexc616 ] ; 2 uses
  %.092.i.i.i.i.i610 = phi ptr [ %i.rh, %.lr.ph.i.i.i.i.i608 ], [ %.val.i.i600, %.noexc616 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i609, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i610, i64 24, i1 false), !tbaa.struct !491, !alias.scope !793
  %i.rh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i610, i64 24 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i609, i64 24 ; 2 uses
  %.not.i.i.i.i.i611 = icmp eq ptr %i.rh, %i.qj
  br i1 %.not.i.i.i.i.i611, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i612, label %.lr.ph.i.i.i.i.i608, !llvm.loop !6

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i612: ; preds = %.lr.ph.i.i.i.i.i608, %.noexc616
  %.0.lcssa.i.i.i.i.i613 = phi ptr [ %i.rd, %.noexc616 ], [ %i.ri, %.lr.ph.i.i.i.i.i608 ]
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i613, i64 24
  %.not.i38.i.i614 = icmp eq ptr %.val.i.i600, null
  br i1 %.not.i38.i.i614, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i612
  %i.rk = load ptr, ptr %i.cy, align 8, !tbaa !49
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = sub i64 %i.rl, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i600, i64 noundef %i.rm) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i612
  store ptr %i.rd, ptr %i.ba, align 8, !tbaa !48
  store ptr %i.rj, ptr %i.bc, align 8, !tbaa !443
  %i.rn = getelementptr inbounds nuw [24 x i8], ptr %i.rd, i64 %i.rb
  store ptr %i.rn, ptr %i.cy, align 8, !tbaa !49
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

.loopexit244.i.loopexit:                          ; preds = %bb.ay, %.noexc96.i, %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i601
  %lpad.loopexit706 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit244.i

.loopexit244.i.loopexit.split-lp:                 ; preds = %bb.bc
  %lpad.loopexit.split-lp707 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit244.i

.loopexit.split-lp245.i:                          ; preds = %bb.bh
  %lpad.loopexit.split-lp247.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit244.i

bb.be:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i
  %.not.i98.i = icmp eq ptr %.sroa.13.0280.i, %.sroa.21207.0281.i
  br i1 %.not.i98.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store <2 x float> %i.px, ptr %.sroa.13.0280.i, align 8
  %.sroa.8.0..sroa.13.0280.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.0280.i, i64 8
  store float %i.py, ptr %.sroa.8.0..sroa.13.0280.i.sroa_idx, align 8, !tbaa !82
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.13.0280.i, i64 16
  store ptr %i.qa, ptr %i.ro, align 8, !tbaa !500
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.13.0280.i, i64 24
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12emplace_backIJRS3_RS6_EEERS7_DpOT_.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.rq = ptrtoint ptr %.sroa.21207.0281.i to i64
  %i.rr = ptrtoint ptr %.sroa.0194.0279.i to i64
  %i.rs = sub i64 %i.rq, %i.rr                    ; 4 uses
  %i.rt = icmp eq i64 %i.rs, 9223372036854775800
  br i1 %i.rt, label %bb.bh, label %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc100.i unwind label %.loopexit.split-lp245.i

.noexc100.i:                                      ; preds = %bb.bh
  unreachable

_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bg
  %i.ru = sdiv exact i64 %i.rs, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ru, i64 1)
  %i.rv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ru ; 2 uses
  %i.rw = icmp ult i64 %i.rv, %i.ru
  %i.rx = call i64 @llvm.umin.i64(i64 %i.rv, i64 384307168202282325)
  %i.ry = select i1 %i.rw, i64 384307168202282325, i64 %i.rx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ry, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.rz = mul nuw nsw i64 %i.ry, 24
  %i.sa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rz) #38
          to label %.noexc101.i unwind label %.loopexit244.i.loopexit ; 5 uses

.noexc101.i:                                      ; preds = %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.rs ; 3 uses
  store <2 x float> %i.px, ptr %i.sb, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store float %i.py, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !82
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store ptr %i.qa, ptr %i.sc, align 8, !tbaa !500
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0194.0279.i, %.sroa.21207.0281.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i99.i

.lr.ph.i.i.i.i.i99.i:                             ; preds = %.noexc101.i, %.lr.ph.i.i.i.i.i99.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.se, %.lr.ph.i.i.i.i.i99.i ], [ %i.sa, %.noexc101.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.sd, %.lr.ph.i.i.i.i.i99.i ], [ %.sroa.0194.0279.i, %.noexc101.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !794
  %i.sd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.sd, %.sroa.21207.0281.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i99.i, !llvm.loop !9

_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i99.i, %.noexc101.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.sa, %.noexc101.i ], [ %i.se, %.lr.ph.i.i.i.i.i99.i ]
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i34.i.i.i = icmp eq ptr %.sroa.0194.0279.i, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.bi
end_hunk_1
begin_hunk_2_@_ZN9ClientMap9renderMapEPN5video12IVideoDriverEi:.invoke
  store ptr %i.aix, ptr %i.aii, align 8, !tbaa !544
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aix, i64 %i.aiv
  store ptr %i.ajh, ptr %i.ais, align 8, !tbaa !545
  %i.aji = getelementptr inbounds nuw [2 x i8], ptr %i.aix, i64 %i.aij
  store ptr %i.aji, ptr %i.aik, align 8, !tbaa !543
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIPN5scene11IMeshBufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body552

.loopexit.split-lp.i:                             ; preds = %bb.dg
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body552

_ZNSt6vectorItSaItEE7reserveEm.exit.i:            ; preds = %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit.i, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit121.i
  %.1 = phi ptr [ %i.aew, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %i.aew, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit.i ], [ %.0, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit121.i ] ; 3 uses
  %.3230.i = phi i32 [ %.4231.i, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %.4231.i, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit.i ], [ %.2229299.i, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit121.i ]
  %.3.i = phi i32 [ %.4.i, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %.4.i, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit.i ], [ %.2300.i, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit121.i ]
  %i.ajj = phi ptr [ %i.aew, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i ], [ %i.aew, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit.i ], [ %i.abk, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit121.i ] ; 11 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 136 ; 4 uses
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !532 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 32
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajl, i64 40
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !541 ; 2 uses
  %i.ajp = load ptr, ptr %i.ajm, align 8, !tbaa !540 ; 2 uses
  %i.ajq = ptrtoint ptr %i.ajo to i64
  %i.ajr = ptrtoint ptr %i.ajp to i64
  %i.ajs = sub i64 %i.ajq, %i.ajr                 ; 2 uses
  %i.ajt = sdiv exact i64 %i.ajs, 40              ; 6 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajj, i64 144 ; 4 uses
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !533 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 32
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 40
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !545
  %i.ajz = load ptr, ptr %i.ajw, align 8, !tbaa !544
  %i.aka = ptrtoint ptr %i.ajy to i64
  %i.akb = ptrtoint ptr %i.ajz to i64
  %i.akc = sub i64 %i.aka, %i.akb                 ; 3 uses
  %i.akd = ashr exact i64 %i.akc, 1               ; 5 uses
  %i.ake = load ptr, ptr %i.abm, align 8, !tbaa !58
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  %i.akg = load ptr, ptr %i.akf, align 8
  %i.akh = invoke noundef ptr %i.akg(ptr noundef nonnull align 8 dereferenceable(8) %i.abm)
          to label %.noexc495 unwind label %.loopexit, !inline_history !13 ; 2 uses

.noexc495:                                        ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit.i
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !58
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 24
  %i.akk = load ptr, ptr %i.akj, align 8
  %i.akl = invoke noundef ptr %i.akk(ptr noundef nonnull align 8 dereferenceable(28) %i.akh)
          to label %.noexc496 unwind label %.loopexit, !inline_history !13 ; 2 uses

.noexc496:                                        ; preds = %.noexc495
  %i.akm = load ptr, ptr %i.ajk, align 8, !tbaa !532 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 32 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akm, i64 40
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !546
  %i.akq = load ptr, ptr %i.abm, align 8, !tbaa !58
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 16
  %i.aks = load ptr, ptr %i.akr, align 8
  %i.akt = invoke noundef ptr %i.aks(ptr noundef nonnull align 8 dereferenceable(8) %i.abm)
          to label %.noexc497 unwind label %.loopexit, !inline_history !13 ; 2 uses

.noexc497:                                        ; preds = %.noexc496
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !58
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 16
  %i.akw = load ptr, ptr %i.akv, align 8
  %i.akx = invoke noundef i32 %i.akw(ptr noundef nonnull align 8 dereferenceable(28) %i.akt)
          to label %.noexc498 unwind label %.loopexit, !inline_history !13

.noexc498:                                        ; preds = %.noexc497
  %i.aky = zext i32 %i.akx to i64
  %i.akz = getelementptr inbounds nuw [40 x i8], ptr %i.akl, i64 %i.aky
  %i.ala = load ptr, ptr %i.akn, align 8, !tbaa !546 ; 2 uses
  %i.alb = ptrtoint ptr %i.akp to i64
  %i.alc = ptrtoint ptr %i.ala to i64
  %i.ald = sub i64 %i.alb, %i.alc
  %i.ale = getelementptr inbounds i8, ptr %i.ala, i64 %i.ald
  invoke void @_ZNSt6vectorIN5video9S3DVertexESaIS1_EE15_M_range_insertIPKS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.akn, ptr %i.ale, ptr noundef %i.akl, ptr noundef %i.akz)
          to label %.noexc499 unwind label %.loopexit

.noexc499:                                        ; preds = %.noexc498
  %i.alf = load ptr, ptr %i.ajk, align 8, !tbaa !532 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 32
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 40
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !541
  %i.alj = load ptr, ptr %i.alg, align 8, !tbaa !540 ; 4 uses
  %i.alk = ptrtoint ptr %i.ali to i64
  %i.all = ptrtoint ptr %i.alj to i64
  %i.alm = sub i64 %i.alk, %i.all
  %i.aln = sdiv exact i64 %i.alm, 40              ; 4 uses
  %i.alo = icmp ult i64 %i.ajt, %i.aln
  br i1 %i.alo, label %.lr.ph.i494, label %._crit_edge.i490

.lr.ph.i494:                                      ; preds = %.noexc499
  %i.alp = sub nuw nsw i64 %i.aln, %i.ajt
  %.neg = add nsw i64 %i.ajt, 1
  %xtraiter1534 = and i64 %i.alp, 1
  %lcmp.mod1535.not = icmp eq i64 %xtraiter1534, 0
  br i1 %lcmp.mod1535.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i494
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.ajs ; 3 uses
  %i.alr = load <2 x float>, ptr %i.alq, align 4, !tbaa !82
  %i.als = fadd nsz <2 x float> %.sroa.05.0.copyload.i, %i.alr
  store <2 x float> %i.als, ptr %i.alq, align 4, !tbaa !82
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alq, i64 8 ; 2 uses
  %i.alu = load float, ptr %i.alt, align 4, !tbaa !483
  %i.alv = fadd nsz float %.sroa.5.0.copyload.i, %i.alu
  store float %i.alv, ptr %i.alt, align 4, !tbaa !483
  %i.alw = add nuw nsw i64 %i.ajt, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i494
  %.02935.i.unr = phi i64 [ %i.ajt, %.lr.ph.i494 ], [ %i.alw, %.prol.loopexit.unr-lcssa ]
  %i.alx = icmp eq i64 %i.aln, %.neg
  br i1 %i.alx, label %._crit_edge.i490, label %.lr.ph.i494.new

._crit_edge.i490:                                 ; preds = %.prol.loopexit, %.lr.ph.i494.new, %.noexc499
  %i.aly = load ptr, ptr %i.abm, align 8, !tbaa !58
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 32
  %i.ama = load ptr, ptr %i.alz, align 8
  %i.amb = invoke noundef ptr %i.ama(ptr noundef nonnull align 8 dereferenceable(8) %i.abm)
          to label %.noexc500 unwind label %.loopexit, !inline_history !13 ; 2 uses

.noexc500:                                        ; preds = %._crit_edge.i490
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !58
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 24
  %i.ame = load ptr, ptr %i.amd, align 8
  %i.amf = invoke noundef ptr %i.ame(ptr noundef nonnull align 8 dereferenceable(28) %i.amb)
          to label %.noexc501 unwind label %.loopexit, !inline_history !13 ; 2 uses

.noexc501:                                        ; preds = %.noexc500
  %i.amg = load ptr, ptr %i.aju, align 8, !tbaa !533 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 32 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amg, i64 40
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !547
  %i.amk = load ptr, ptr %i.abm, align 8, !tbaa !58
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 32
  %i.amm = load ptr, ptr %i.aml, align 8
  %i.amn = invoke noundef ptr %i.amm(ptr noundef nonnull align 8 dereferenceable(8) %i.abm)
          to label %.noexc502 unwind label %.loopexit, !inline_history !13 ; 2 uses

.noexc502:                                        ; preds = %.noexc501
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !58
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  %i.amq = load ptr, ptr %i.amp, align 8
  %i.amr = invoke noundef i32 %i.amq(ptr noundef nonnull align 8 dereferenceable(28) %i.amn)
          to label %.noexc503 unwind label %.loopexit, !inline_history !13

.noexc503:                                        ; preds = %.noexc502
  %i.ams = zext i32 %i.amr to i64
  %i.amt = getelementptr inbounds nuw [2 x i8], ptr %i.amf, i64 %i.ams
  %i.amu = load ptr, ptr %i.amh, align 8, !tbaa !547 ; 2 uses
  %i.amv = ptrtoint ptr %i.amj to i64
  %i.amw = ptrtoint ptr %i.amu to i64
  %i.amx = sub i64 %i.amv, %i.amw
  %i.amy = getelementptr inbounds i8, ptr %i.amu, i64 %i.amx
  invoke void @_ZNSt6vectorItSaItEE15_M_range_insertIPKtEEvN9__gnu_cxx17__normal_iteratorIPtS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.amh, ptr %i.amy, ptr noundef %i.amf, ptr noundef %i.amt)
          to label %.noexc504 unwind label %.loopexit

.noexc504:                                        ; preds = %.noexc503
  %.not.i491 = icmp eq ptr %i.ajo, %i.ajp
  br i1 %.not.i491, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit, label %.preheader.i492

.preheader.i492:                                  ; preds = %.noexc504
  %i.amz = load ptr, ptr %i.aju, align 8, !tbaa !533 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 32
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amz, i64 40
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !545
  %i.and = load ptr, ptr %i.ana, align 8, !tbaa !544 ; 4 uses
  %i.ane = ptrtoint ptr %i.anc to i64
  %i.anf = ptrtoint ptr %i.and to i64
  %i.ang = sub i64 %i.ane, %i.anf
  %i.anh = ashr exact i64 %i.ang, 1               ; 3 uses
  %i.ani = icmp ult i64 %i.akd, %i.anh
  br i1 %i.ani, label %iter.check, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit

iter.check:                                       ; preds = %.preheader.i492
  %i.anj = trunc i64 %i.ajt to i16                ; 3 uses
  %i.ank = sub nuw nsw i64 %i.anh, %i.akd         ; 7 uses
  %min.iters.check = icmp ult i64 %i.ank, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1417 = icmp ult i64 %i.ank, 16
  br i1 %min.iters.check1417, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.anl = and i64 %i.ank, 12
  %n.vec = and i64 %i.ank, -16                    ; 4 uses
  %i.anm = add i64 %i.akd, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.anj, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.akc
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ano = getelementptr inbounds nuw [2 x i8], ptr %i.ann, i64 %index ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ano, align 2, !tbaa !162
  %wide.load1418 = load <8 x i16>, ptr %i.anp, align 2, !tbaa !162
  %i.anq = add <8 x i16> %wide.load, %broadcast.splat
  %i.anr = add <8 x i16> %wide.load1418, %broadcast.splat
  store <8 x i16> %i.anq, ptr %i.ano, align 2, !tbaa !162
  store <8 x i16> %i.anr, ptr %i.anp, align 2, !tbaa !162
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ans = icmp eq i64 %index.next, %n.vec
  br i1 %i.ans, label %middle.block, label %vector.body, !llvm.loop !753

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ank, %n.vec
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.anl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !550

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1419 = and i64 %i.ank, -4                 ; 3 uses
  %i.ant = add i64 %i.akd, %n.vec1419
  %broadcast.splatinsert1420 = insertelement <4 x i16> poison, i16 %i.anj, i64 0
  %broadcast.splat1421 = shufflevector <4 x i16> %broadcast.splatinsert1420, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.anu = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.akc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1422 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1424, %vec.epilog.vector.body ] ; 2 uses
  %i.anv = getelementptr inbounds nuw [2 x i8], ptr %i.anu, i64 %index1422 ; 2 uses
  %wide.load1423 = load <4 x i16>, ptr %i.anv, align 2, !tbaa !162
  %i.anw = add <4 x i16> %wide.load1423, %broadcast.splat1421
  store <4 x i16> %i.anw, ptr %i.anv, align 2, !tbaa !162
  %index.next1424 = add nuw i64 %index1422, 4     ; 2 uses
  %i.anx = icmp eq i64 %index.next1424, %n.vec1419
  br i1 %i.anx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !754

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1425 = icmp eq i64 %i.ank, %n.vec1419
  br i1 %cmp.n1425, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.036.i.ph = phi i64 [ %i.akd, %iter.check ], [ %i.anm, %vec.epilog.iter.check ], [ %i.ant, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph.i494.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i494.new
  %.02935.i = phi i64 [ %i.aol, %.lr.ph.i494.new ], [ %.02935.i.unr, %.prol.loopexit ] ; 3 uses
  %i.any = getelementptr inbounds nuw [40 x i8], ptr %i.alj, i64 %.02935.i ; 3 uses
  %i.anz = load <2 x float>, ptr %i.any, align 4, !tbaa !82
  %i.aoa = fadd nsz <2 x float> %.sroa.05.0.copyload.i, %i.anz
  store <2 x float> %i.aoa, ptr %i.any, align 4, !tbaa !82
  %i.aob = getelementptr inbounds nuw i8, ptr %i.any, i64 8 ; 2 uses
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !483
  %i.aod = fadd nsz float %.sroa.5.0.copyload.i, %i.aoc
  store float %i.aod, ptr %i.aob, align 4, !tbaa !483
  %i.aoe = getelementptr inbounds nuw [40 x i8], ptr %i.alj, i64 %.02935.i ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 40 ; 2 uses
  %i.aog = load <2 x float>, ptr %i.aof, align 4, !tbaa !82
  %i.aoh = fadd nsz <2 x float> %.sroa.05.0.copyload.i, %i.aog
  store <2 x float> %i.aoh, ptr %i.aof, align 4, !tbaa !82
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoe, i64 48 ; 2 uses
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !483
  %i.aok = fadd nsz float %.sroa.5.0.copyload.i, %i.aoj
  store float %i.aok, ptr %i.aoi, align 4, !tbaa !483
  %i.aol = add nuw i64 %.02935.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aol, %i.aln
  br i1 %exitcond.not.i.1, label %._crit_edge.i490, label %.lr.ph.i494.new, !llvm.loop !14

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.036.i = phi i64 [ %i.aop, %vec.epilog.scalar.ph ], [ %.036.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.aom = getelementptr inbounds nuw [2 x i8], ptr %i.and, i64 %.036.i ; 2 uses
  %i.aon = load i16, ptr %i.aom, align 2, !tbaa !162
  %i.aoo = add i16 %i.aon, %i.anj
  store i16 %i.aoo, ptr %i.aom, align 2, !tbaa !162
  %i.aop = add nuw i64 %.036.i, 1                 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %i.aop, %i.anh
  br i1 %exitcond38.not.i, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !755

_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i492, %.noexc504
  %i.aoq = getelementptr inbounds nuw i8, ptr %.sroa.0154.0301.i, i64 24 ; 2 uses
  %.not236.i = icmp eq ptr %i.aoq, %.sroa.13.0.lcssa390.i
  br i1 %.not236.i, label %._crit_edge303.i, label %bb.cv

.loopexit717:                                     ; preds = %.noexc107.i, %.noexc108.i, %.noexc109.i, %.noexc110.i, %.noexc111.i, %.noexc112.i, %.noexc113.i, %.noexc114.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i529
  %lpad.loopexit719 = landingpad { ptr, i32 }
          cleanup
  br label %.body552

.loopexit.split-lp718:                            ; preds = %bb.cs
  %lpad.loopexit.split-lp720 = landingpad { ptr, i32 }
          cleanup
  br label %.body552

._crit_edge303.thread.i:                          ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit.i, %.noexc114.i, %.loopexit698, %._crit_edge297.i
  %.val87.i = load ptr, ptr %i.ba, align 8, !tbaa !48 ; 2 uses
  %.val88.i = load ptr, ptr %i.bc, align 8, !tbaa !443
  %i.aor = ptrtoint ptr %.val88.i to i64
  %i.aos = ptrtoint ptr %.val87.i to i64
  %i.aot = sub i64 %i.aor, %i.aos
  %i.aou = icmp ugt i64 %i.aot, %i.kn
  br i1 %i.aou, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %._crit_edge303.thread.i
  %i.aov = getelementptr inbounds nuw i8, ptr %.val87.i, i64 %i.kn
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 12 ; 2 uses
  %i.aox = load i8, ptr %i.aow, align 4
  %i.aoy = and i8 %i.aox, -2
  store i8 %i.aoy, ptr %i.aow, align 4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %._crit_edge303.thread.i
  %i.aoz = load ptr, ptr %6, align 8, !tbaa !64   ; 2 uses
  %i.apa = icmp eq ptr %i.aoz, %i.cz
  br i1 %i.apa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i: ; preds = %bb.dp
  %i.apb = load i64, ptr %i.cz, align 8, !tbaa !65
  %i.apc = add i64 %i.apb, 1
  call void @_ZdlPvm(ptr noundef %i.aoz, i64 noundef %i.apc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  %.not.i.i.i147.i = icmp eq ptr %.sroa.0194.0.lcssa385.i, null
  br i1 %.not.i.i.i147.i, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i
  %i.apd = ptrtoint ptr %.sroa.21207.0.lcssa391.i to i64
  %i.ape = sub i64 %i.apd, %.pre-phi319.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0194.0.lcssa385.i, i64 noundef %i.ape) #34
  br label %bb.ds

.body552:                                         ; preds = %.loopexit717, %.loopexit.split-lp718, %.loopexit, %.loopexit.split-lp, %.loopexit693, %.loopexit.split-lp694, %.body505, %.loopexit.i, %.loopexit.split-lp.i, %bb.cp, %bb.cm, %bb.cu, %bb.cb, %bb.bu, %.loopexit.split-lp239.i, %.loopexit238.i, %bb.br
  %.pn78.i = phi { ptr, i32 } [ %i.wi, %bb.cb ], [ %i.ud, %bb.br ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.uw, %bb.bu ], [ %lpad.loopexit.split-lp241.i, %.loopexit.split-lp239.i ], [ %i.yk, %bb.cm ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit240.i, %.loopexit238.i ], [ %i.yt, %bb.cp ], [ %i.abj, %bb.cu ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp696, %.loopexit.split-lp694 ], [ %i.afx, %.body505 ], [ %lpad.loopexit695, %.loopexit693 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit719, %.loopexit717 ], [ %lpad.loopexit.split-lp720, %.loopexit.split-lp718 ]
  %i.apf = load ptr, ptr %6, align 8, !tbaa !64   ; 2 uses
  %i.apg = icmp eq ptr %i.apf, %i.cz
  br i1 %i.apg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i: ; preds = %.body552
  %i.aph = load i64, ptr %i.cz, align 8, !tbaa !65
  %i.api = add i64 %i.aph, 1
  call void @_ZdlPvm(ptr noundef %i.apf, i64 noundef %i.api) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i: ; preds = %.body552, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  br label %.loopexit244.i

.loopexit244.i:                                   ; preds = %.loopexit244.i.loopexit, %.loopexit244.i.loopexit.split-lp, %.loopexit.split-lp245.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i
  %.sroa.0194.0267.i = phi ptr [ %.sroa.0194.0.lcssa385.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i ], [ %.sroa.0194.0279.i, %.loopexit.split-lp245.i ], [ %.sroa.0194.0279.i, %.loopexit244.i.loopexit ], [ %.sroa.0194.0279.i, %.loopexit244.i.loopexit.split-lp ] ; 3 uses
  %.sroa.21207.0259.i = phi ptr [ %.sroa.21207.0.lcssa391.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i ], [ %.sroa.21207.0281.i, %.loopexit.split-lp245.i ], [ %.sroa.21207.0281.i, %.loopexit244.i.loopexit ], [ %.sroa.21207.0281.i, %.loopexit244.i.loopexit.split-lp ]
  %.pn81.pn.pn.i = phi { ptr, i32 } [ %.pn78.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150.i ], [ %lpad.loopexit.split-lp247.i, %.loopexit.split-lp245.i ], [ %lpad.loopexit706, %.loopexit244.i.loopexit ], [ %lpad.loopexit.split-lp707, %.loopexit244.i.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i151.i = icmp eq ptr %.sroa.0194.0267.i, null
  br i1 %.not.i.i.i151.i, label %.body287, label %bb.dr

bb.dr:                                            ; preds = %.loopexit244.i
  %i.apj = ptrtoint ptr %.sroa.21207.0259.i to i64
  %i.apk = ptrtoint ptr %.sroa.0194.0267.i to i64
  %i.apl = sub i64 %i.apj, %i.apk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0194.0267.i, i64 noundef %i.apl) #34
  br label %.body287

bb.ds:                                            ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i
  %i.apm = icmp ult i32 %.065.lcssa371379.i, 2
  %i.apn = select i1 %i.apm, i32 0, i32 %.065.lcssa371379.i
  %i.apo = add i32 %i.apn, %.1172971              ; 2 uses
  %.sroa.0632.0 = load ptr, ptr %.sroa.0632.0972, align 8, !tbaa !243 ; 2 uses
  %.not687 = icmp eq ptr %.sroa.0632.0, null
  br i1 %.not687, label %._crit_edge, label %.lr.ph973

.loopexit709:                                     ; preds = %.lr.ph.i, %.noexc281, %bb.an, %.noexc283, %.noexc284, %.noexc285
  %lpad.loopexit711 = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.loopexit.split-lp710.loopexit:                   ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit.i
  %lpad.loopexit714 = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.loopexit.split-lp710.loopexit.split-lp:          ; preds = %bb.ak
  %lpad.loopexit.split-lp715 = landingpad { ptr, i32 }
          cleanup
  br label %.body287

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.app = invoke noundef i64 @_ZN9TimeTaker4stopEb(ptr noundef nonnull align 8 dereferenceable(50) %8, i1 noundef zeroext true)
          to label %bb.dt unwind label %bb.dy

bb.dt:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.apq = uitofp nsz i64 %i.app to float
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %11, float noundef %i.apq)
          to label %bb.du unwind label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %i.apr = load ptr, ptr %11, align 8, !tbaa !64  ; 2 uses
  %i.aps = icmp eq ptr %i.apr, %i.jl
end_hunk_2
begin_hunk_3_@_ZN9ClientMap14updateDrawListEv:.noexc.i
  %i.ack = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !564
  %i.acm = call nsz float @llvm.fmuladd.f32(float %i.acl, float 1.000000e+01, float %.0283)
  %i.acn = fcmp nsz ogt float %i.acj, %i.acm
  br i1 %i.acn, label %bb.ec, label %bb.cu, !llvm.loop !847

bb.cu:                                            ; preds = %bb.ct
  %i.aco = fadd nsz float %.0283, 3.000000e+02    ; 4 uses
  %i.acp = load float, ptr %i.fo, align 4, !tbaa !481
  %i.acq = fsub nsz float %.sroa.0769.0.vec.extract, %i.acp ; 4 uses
  %i.acr = load float, ptr %i.xc, align 4, !tbaa !482
  %i.acs = fsub nsz float %.sroa.0769.4.vec.extract, %i.acr ; 4 uses
  %i.act = load float, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !483
  %i.acu = fsub nsz float %.sroa.10773.0, %i.act  ; 4 uses
  %i.acv = load float, ptr %8, align 4, !tbaa !481
  %i.acw = load float, ptr %i.xd, align 4, !tbaa !482
  %i.acx = fmul nsz float %i.acs, %i.acw
  %i.acy = call nsz float @llvm.fmuladd.f32(float %i.acq, float %i.acv, float %i.acx)
  %i.acz = load float, ptr %i.xe, align 4, !tbaa !483
  %i.ada = call nsz noundef float @llvm.fmuladd.f32(float %i.acu, float %i.acz, float %i.acy)
  %i.adb = load float, ptr %i.xf, align 4, !tbaa !485
  %i.adc = fadd nsz float %i.adb, %i.ada
  %i.add = fcmp nsz ogt float %i.adc, %i.aco
  br i1 %i.add, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ade = load float, ptr %.014.ptr.1.i606, align 4, !tbaa !481
  %i.adf = load float, ptr %i.xg, align 4, !tbaa !482
  %i.adg = fmul nsz float %i.acs, %i.adf
  %i.adh = call nsz float @llvm.fmuladd.f32(float %i.acq, float %i.ade, float %i.adg)
  %i.adi = load float, ptr %i.xh, align 4, !tbaa !483
  %i.adj = call nsz noundef float @llvm.fmuladd.f32(float %i.acu, float %i.adi, float %i.adh)
  %i.adk = load float, ptr %i.xi, align 4, !tbaa !485
  %i.adl = fadd nsz float %i.adk, %i.adj
  %i.adm = fcmp nsz ogt float %i.adl, %i.aco
  br i1 %i.adm, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.adn = load float, ptr %.014.ptr.2.i607, align 4, !tbaa !481
  %i.ado = load float, ptr %i.xj, align 4, !tbaa !482
  %i.adp = fmul nsz float %i.acs, %i.ado
  %i.adq = call nsz float @llvm.fmuladd.f32(float %i.acq, float %i.adn, float %i.adp)
  %i.adr = load float, ptr %i.xk, align 4, !tbaa !483
  %i.ads = call nsz noundef float @llvm.fmuladd.f32(float %i.acu, float %i.adr, float %i.adq)
  %i.adt = load float, ptr %i.xl, align 4, !tbaa !485
  %i.adu = fadd nsz float %i.adt, %i.ads
  %i.adv = fcmp nsz ogt float %i.adu, %i.aco
  br i1 %i.adv, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610: ; preds = %bb.cw
  %i.adw = load float, ptr %.014.ptr.3.i608, align 4, !tbaa !481
  %i.adx = load float, ptr %i.xm, align 4, !tbaa !482
  %i.ady = fmul nsz float %i.acs, %i.adx
  %i.adz = call nsz float @llvm.fmuladd.f32(float %i.acq, float %i.adw, float %i.ady)
  %i.aea = load float, ptr %i.xn, align 4, !tbaa !483
  %i.aeb = call nsz noundef float @llvm.fmuladd.f32(float %i.acu, float %i.aea, float %i.adz)
  %i.aec = load float, ptr %i.xo, align 4, !tbaa !485
  %i.aed = fadd nsz float %i.aec, %i.aeb
  %i.aee = fcmp nsz ogt float %i.aed, %i.aco
  br i1 %i.aee, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, label %bb.cx

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread: ; preds = %bb.cv, %bb.cu, %bb.cw, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610
  %i.aef = add i32 %.5265977, 1
  br label %bb.ec, !llvm.loop !847

bb.cx:                                            ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610
  %i.aeg = load i16, ptr %13, align 8, !tbaa !157
  %i.aeh = sub i16 %i.abc, %i.aeg                 ; 4 uses
  %i.aei = load i16, ptr %i.xp, align 2, !tbaa !158
  %i.aej = extractelement <2 x i16> %i.abe, i64 0
  %i.aek = sub i16 %i.aej, %i.aei                 ; 4 uses
  %i.ael = load i16, ptr %i.xq, align 4, !tbaa !159
  %i.aem = extractelement <2 x i16> %i.abe, i64 1
  %i.aen = sub i16 %i.aem, %i.ael                 ; 4 uses
  %i.aeo = load i8, ptr %i.aar, align 1, !tbaa !65 ; 2 uses
  br i1 %.1271, label %bb.cy, label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  %i.aep = and i8 %i.aeo, 7
  %i.aeq = load i8, ptr %i.xr, align 1, !tbaa !185, !range !174, !noundef !175
  %i.aer = trunc nuw i8 %i.aeq to i1
  %or.cond9 = and i1 %i.aaz, %i.aer
  %i.aes = icmp ne i8 %i.aep, 7
  %or.cond12 = select i1 %or.cond9, i1 %i.aes, i1 false
  br i1 %or.cond12, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.aet = load i16, ptr %6, align 2, !tbaa !604
  %i.aeu = invoke noundef zeroext i1 @_ZN9ClientMap14isMeshOccludedEP8MapBlocktN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull %i.aay, i16 noundef zeroext %i.aet, i48 %.sroa.0845.0.insert.insert860)
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  br i1 %i.aeu, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.aev = add i32 %.5254978, 1
  br label %bb.ec, !llvm.loop !847

bb.dc:                                            ; preds = %bb.de, %bb.cz
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dd:                                            ; preds = %bb.da, %bb.cy, %bb.cx
  br i1 %.not302, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.aay, ptr %i.g, align 8, !tbaa !241
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aay, i64 22 ; 2 uses
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !239
  %i.aez = add i16 %i.aey, 1
  store i16 %i.aez, ptr %i.aex, align 2, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aay, i64 10
  %.sroa.0.0.copyload.i.i618 = load i48, ptr %i.afa, align 2
  store i48 %.sroa.0.0.copyload.i.i618, ptr %2, align 8
  %i.afb = invoke { ptr, i8 } @_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE7emplaceIJS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit620" unwind label %bb.dc ; 0 uses

"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit620": ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.df

bb.df:                                            ; preds = %"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit620", %bb.dd
  %i.afc = icmp eq i16 %i.aeh, 0
  %i.afd = select i1 %i.afc, i8 3, i8 0
  %i.afe = icmp eq i16 %i.aek, 0
  %i.aff = select i1 %i.afe, i8 12, i8 0
  %i.afg = or disjoint i8 %i.aff, %i.afd
  %i.afh = icmp eq i16 %i.aen, 0
  %i.afi = select i1 %i.afh, i8 48, i8 0
  %i.afj = or disjoint i8 %i.afg, %i.afi          ; 2 uses
  %i.afk = icmp sgt i16 %i.aeh, 0
  %i.afl = select i1 %i.afk, i8 1, i8 2
  %i.afm = icmp sgt i16 %i.aek, 0
  %i.afn = select i1 %i.afm, i8 4, i8 8
  %i.afo = or disjoint i8 %i.afn, %i.afl
  %i.afp = icmp sgt i16 %i.aen, 0
  %i.afq = select i1 %i.afp, i8 16, i8 32
  %i.afr = or disjoint i8 %i.afo, %i.afq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #2
  %or.cond14 = and i1 %.1271, %i.aaz
  br i1 %or.cond14, label %bb.dg, label %._crit_edge1018

bb.dg:                                            ; preds = %bb.df
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %i.aft = load i8, ptr %i.afs, align 8, !tbaa !855
  %i.afu = xor i8 %i.aft, -1
  br label %._crit_edge1018

._crit_edge1018:                                  ; preds = %bb.df, %bb.dg
  %i.afv = phi i8 [ %i.afu, %bb.dg ], [ 63, %bb.df ] ; 2 uses
  store i8 %i.afv, ptr %i.m, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #2
  %i.afw = icmp eq i8 %i.afj, 63                  ; 2 uses
  %i.afx = select i1 %i.afw, i8 63, i8 %i.afv
  %i.afy = xor i8 %i.afj, -1
  %i.afz = select i1 %i.afw, i8 63, i8 %i.afy
  %i.aga = and i8 %i.afz, %i.afr
  %i.agb = and i8 %i.aga, %i.afx                  ; 2 uses
  %i.agc = lshr i8 %i.agb, 1
  %i.agd = or i8 %i.agc, %i.agb                   ; 3 uses
  %i.age = and i8 %i.agd, 1
  %i.agf = lshr i8 %i.agd, 1
  %i.agg = and i8 %i.agf, 2
  %i.agh = or disjoint i8 %i.agg, %i.age
  %i.agi = lshr i8 %i.agd, 2
  %i.agj = and i8 %i.agi, 4
  %i.agk = or disjoint i8 %i.agh, %i.agj
  %i.agl = and i8 %i.agk, %i.aeo
  store i8 %i.agl, ptr %i.n, align 1, !tbaa !65
  %i.agm = sub i16 %i.abd, %i.bj
  %i.agn = sub <2 x i16> %i.abf, %i.bq
  %i.ago = shl i16 %i.agm, 1
  %i.agp = load i16, ptr %6, align 2, !tbaa !604
  %i.agq = shl i16 %i.agp, 4
  %i.agr = add i16 %i.agq, -1                     ; 2 uses
  %i.ags = add i16 %i.agr, %i.ago
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #2
  %i.agt = call i16 @llvm.abs.i16(i16 %i.ags, i1 false) ; 4 uses
  %i.agu = shl <2 x i16> %i.agn, splat (i16 1)
  %i.agv = insertelement <2 x i16> poison, i16 %i.agr, i64 0
  %i.agw = shufflevector <2 x i16> %i.agv, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.agx = add <2 x i16> %i.agw, %i.agu
  %i.agy = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %i.agx, i1 false) ; 2 uses
  %i.agz = extractelement <2 x i16> %i.agy, i64 0 ; 4 uses
  %i.aha = icmp samesign ugt i16 %i.agt, %i.agz
  %i.ahb = extractelement <2 x i16> %i.agy, i64 1 ; 4 uses
  %i.ahc = icmp samesign ugt i16 %i.agt, %i.ahb
  %narrow = select i1 %i.aha, i1 %i.ahc, i1 false
  %i.ahd = zext i1 %narrow to i8
  %i.ahe = icmp samesign ugt i16 %i.agz, %i.ahb
  %i.ahf = icmp samesign ugt i16 %i.agz, %i.agt
  %i.ahg = select i1 %i.ahe, i1 %i.ahf, i1 false
  %i.ahh = select i1 %i.ahg, i8 2, i8 0
  %i.ahi = icmp samesign ugt i16 %i.ahb, %i.agt
  %i.ahj = icmp samesign ugt i16 %i.ahb, %i.agz
  %i.ahk = select i1 %i.ahi, i1 %i.ahj, i1 false
  %i.ahl = select i1 %i.ahk, i8 4, i8 %i.ahh
  %i.ahm = or disjoint i8 %i.ahl, %i.ahd
  store i8 %i.ahm, ptr %i.o, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #2
  store i16 0, ptr %i.p, align 2, !tbaa !162
  br label %bb.di

bb.dh:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #2
  br label %bb.ec

bb.di:                                            ; preds = %._crit_edge1018, %bb.eb
  %storemerge975 = phi i16 [ 0, %._crit_edge1018 ], [ %i.air, %bb.eb ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #2
  %i.ahn = sext i16 %storemerge975 to i32
  %i.aho = shl nsw i32 %i.ahn, 1
  %i.ahp = shl nuw nsw i32 1, %i.aho
  %i.ahq = trunc i32 %i.ahp to i8                 ; 3 uses
  store i8 %i.ahq, ptr %i.q, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #2
  %i.ahr = zext nneg i16 %storemerge975 to i32
  %i.ahs = shl nuw i32 1, %i.ahr
  %i.aht = trunc i32 %i.ahs to i8                 ; 2 uses
  store i8 %i.aht, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #2
  %i.ahu = xor i8 %i.aht, 7
  store i8 %i.ahu, ptr %i.s, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #2
  store ptr %i.n, ptr %16, align 8, !tbaa !192
  store ptr %i.s, ptr %i.xs, align 8, !tbaa !192
  store ptr %i.r, ptr %i.xt, align 8, !tbaa !192
  store ptr %i.o, ptr %i.xu, align 8, !tbaa !192
  store ptr %i.q, ptr %i.xv, align 8, !tbaa !192
  store ptr %i.m, ptr %i.xw, align 8, !tbaa !192
  store ptr %15, ptr %i.xx, align 8, !tbaa !627
  store ptr %i.p, ptr %i.xy, align 8, !tbaa !547
  store ptr %6, ptr %i.xz, align 8, !tbaa !856
  store ptr %14, ptr %i.ya, align 8, !tbaa !857
  store ptr %12, ptr %i.yb, align 8, !tbaa !858
  store ptr %i.l, ptr %i.yc, align 8, !tbaa !634
  switch i16 %storemerge975, label %bb.dl [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit
    i16 1, label %bb.dj
    i16 2, label %bb.dk
  ]

bb.dj:                                            ; preds = %bb.di
  br label %_ZN4core8vector3dIsEixEj.exit

bb.dk:                                            ; preds = %bb.di
  br label %_ZN4core8vector3dIsEixEj.exit

bb.dl:                                            ; preds = %bb.di
  unreachable

_ZN4core8vector3dIsEixEj.exit:                    ; preds = %bb.di, %bb.dj, %bb.dk
  %.0.i642.sroa.speculated = phi i16 [ %i.aen, %bb.dk ], [ %i.aek, %bb.dj ], [ %i.aeh, %bb.di ]
  %i.ahv = icmp slt i16 %.0.i642.sroa.speculated, 1
  br i1 %i.ahv, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit
  switch i16 %storemerge975, label %bb.dn [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit644.thread
    i16 1, label %bb.do
    i16 2, label %bb.dp
  ]

_ZN4core8vector3dIsEixEj.exit644.thread:          ; preds = %bb.dm
  %i.ahw = load i16, ptr %15, align 8, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit646

bb.dn:                                            ; preds = %bb.dm
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.ahx = load i16, ptr %i.ww, align 2, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit646

bb.dp:                                            ; preds = %bb.dm
  %i.ahy = load i16, ptr %i.wx, align 4, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit646

_ZN4core8vector3dIsEixEj.exit646:                 ; preds = %_ZN4core8vector3dIsEixEj.exit644.thread, %bb.do, %bb.dp
  %i.ahz = phi i16 [ %i.ahy, %bb.dp ], [ %i.ahx, %bb.do ], [ %i.ahw, %_ZN4core8vector3dIsEixEj.exit644.thread ]
  %.0.i645.sroa.speculated = phi i16 [ %i.yg, %bb.dp ], [ %i.yf, %bb.do ], [ %i.cf, %_ZN4core8vector3dIsEixEj.exit644.thread ]
  %i.aia = icmp sgt i16 %i.ahz, %.0.i645.sroa.speculated
  br i1 %i.aia, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit646
  %i.aib = load i16, ptr %6, align 2, !tbaa !604
  %i.aic = trunc i16 %i.aib to i8
  %i.aid = sub i8 0, %i.aic
  invoke fastcc void @"_ZZN9ClientMap14updateDrawListEvENK3$_1clEa"(ptr noundef nonnull align 8 dereferenceable(96) %16, i8 noundef signext %i.aid)
          to label %._crit_edge unwind label %bb.dr

._crit_edge:                                      ; preds = %bb.dq
  %.pre = load i8, ptr %i.q, align 1, !tbaa !65
  %.pre1015 = load i16, ptr %i.p, align 2, !tbaa !162
  br label %bb.ds

bb.dr:                                            ; preds = %bb.ea, %bb.dq
  %i.aie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #2
  br label %bb.ed

bb.ds:                                            ; preds = %._crit_edge, %_ZN4core8vector3dIsEixEj.exit646, %_ZN4core8vector3dIsEixEj.exit
  %i.aif = phi i16 [ %.pre1015, %._crit_edge ], [ %storemerge975, %_ZN4core8vector3dIsEixEj.exit646 ], [ %storemerge975, %_ZN4core8vector3dIsEixEj.exit ] ; 4 uses
  %i.aig = phi i8 [ %.pre, %._crit_edge ], [ %i.ahq, %_ZN4core8vector3dIsEixEj.exit646 ], [ %i.ahq, %_ZN4core8vector3dIsEixEj.exit ]
  %i.aih = shl i8 %i.aig, 1
  store i8 %i.aih, ptr %i.q, align 1, !tbaa !65
  switch i16 %i.aif, label %bb.dv [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit648
    i16 1, label %bb.dt
    i16 2, label %bb.du
  ]

bb.dt:                                            ; preds = %bb.ds
  br label %_ZN4core8vector3dIsEixEj.exit648

bb.du:                                            ; preds = %bb.ds
  br label %_ZN4core8vector3dIsEixEj.exit648

bb.dv:                                            ; preds = %bb.ds
  unreachable

_ZN4core8vector3dIsEixEj.exit648:                 ; preds = %bb.ds, %bb.dt, %bb.du
  %.0.i647.sroa.speculated = phi i16 [ %i.aen, %bb.du ], [ %i.aek, %bb.dt ], [ %i.aeh, %bb.ds ]
  %i.aii = icmp sgt i16 %.0.i647.sroa.speculated, -1
  br i1 %i.aii, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit648
  switch i16 %i.aif, label %bb.dx [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit650.thread
    i16 1, label %bb.dy
    i16 2, label %bb.dz
  ]

_ZN4core8vector3dIsEixEj.exit650.thread:          ; preds = %bb.dw
  %i.aij = load i16, ptr %15, align 8, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit652

bb.dx:                                            ; preds = %bb.dw
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.aik = load i16, ptr %i.ww, align 2, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit652

bb.dz:                                            ; preds = %bb.dw
  %i.ail = load i16, ptr %i.wx, align 4, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit652

_ZN4core8vector3dIsEixEj.exit652:                 ; preds = %_ZN4core8vector3dIsEixEj.exit650.thread, %bb.dy, %bb.dz
  %i.aim = phi i16 [ %i.ail, %bb.dz ], [ %i.aik, %bb.dy ], [ %i.aij, %_ZN4core8vector3dIsEixEj.exit650.thread ]
  %.0.i651.sroa.speculated = phi i16 [ %i.th, %bb.dz ], [ %i.tg, %bb.dy ], [ %i.co, %_ZN4core8vector3dIsEixEj.exit650.thread ]
  %i.ain = icmp slt i16 %i.aim, %.0.i651.sroa.speculated
  br i1 %i.ain, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit652
  %i.aio = load i16, ptr %6, align 2, !tbaa !604
  %i.aip = trunc i16 %i.aio to i8
  invoke fastcc void @"_ZZN9ClientMap14updateDrawListEvENK3$_1clEa"(ptr noundef nonnull align 8 dereferenceable(96) %16, i8 noundef signext %i.aip)
          to label %._crit_edge1016 unwind label %bb.dr

._crit_edge1016:                                  ; preds = %bb.ea
  %.pre1017 = load i16, ptr %i.p, align 2, !tbaa !162
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge1016, %_ZN4core8vector3dIsEixEj.exit652, %_ZN4core8vector3dIsEixEj.exit648
  %i.aiq = phi i16 [ %.pre1017, %._crit_edge1016 ], [ %i.aif, %_ZN4core8vector3dIsEixEj.exit652 ], [ %i.aif, %_ZN4core8vector3dIsEixEj.exit648 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #2
  %i.air = add i16 %i.aiq, 1                      ; 3 uses
  store i16 %i.air, ptr %i.p, align 2, !tbaa !162
  %i.ais = icmp slt i16 %i.air, 3
  br i1 %i.ais, label %bb.di, label %bb.dh, !llvm.loop !848

bb.ec:                                            ; preds = %bb.ct, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, %bb.dh, %bb.db, %bb.ci
  %.1282 = phi i32 [ %.0281976, %bb.ci ], [ %i.aax, %bb.db ], [ %i.aax, %bb.dh ], [ %i.aax, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread ], [ %i.aax, %bb.ct ] ; 2 uses
  %.8268 = phi i32 [ %.5265977, %bb.ci ], [ %.5265977, %bb.db ], [ %.5265977, %bb.dh ], [ %i.aef, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread ], [ %.5265977, %bb.ct ] ; 2 uses
  %.9258 = phi i32 [ %.5254978, %bb.ci ], [ %i.aev, %bb.db ], [ %.5254978, %bb.dh ], [ %.5254978, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread ], [ %.5254978, %bb.ct ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #2
  %i.ait = load ptr, ptr %i.uy, align 8, !tbaa !624
  %i.aiu = load ptr, ptr %i.wp, align 8, !tbaa !624 ; 2 uses
  %i.aiv = icmp eq ptr %i.ait, %i.aiu
  br i1 %i.aiv, label %.noexc.i654.loopexit, label %bb.cd

bb.ed:                                            ; preds = %bb.dc, %bb.dr, %bb.cl, %bb.cr
  %.pn307.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aew, %bb.dc ], [ %i.aav, %bb.cl ], [ %i.abq, %bb.cr ], [ %i.aie, %bb.dr ]
end_hunk_3
begin_hunk_4_@_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii:.invoke

bb.g:                                             ; preds = %bb.f
  %.sroa.042.0.copyload.us = load i48, ptr %i.bk, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps12addFromBlockEN4core8vector3dIsEEP12MapBlockMeshPN5video12IVideoDriverE(ptr noundef nonnull align 8 dereferenceable(112) %i.z, i48 %.sroa.042.0.copyload.us, ptr noundef nonnull %i.bp, ptr noundef %1)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph579.split.us
  %i.bq = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0359.0577.us) #37 ; 2 uses
  %.not378.us = icmp eq ptr %i.bq, %i.at
  br i1 %.not378.us, label %._crit_edge, label %.lr.ph579.split.us

.split.us:                                        ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph579.split:                                  ; preds = %.lr.ph579.split.preheader, %.loopexit408
  %i.bs = phi ptr [ %i.em, %.loopexit408 ], [ %i.ae, %.lr.ph579.split.preheader ] ; 4 uses
  %.0108578 = phi i64 [ %i.bu, %.loopexit408 ], [ 0, %.lr.ph579.split.preheader ]
  %.sroa.0359.0577 = phi ptr [ %i.en, %.loopexit408 ], [ %i.av, %.lr.ph579.split.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0359.0577, i64 32
  %i.bu = add i64 %.0108578, 1                    ; 3 uses
  %.not114 = icmp ugt i64 %i.bu, %i.am
  br i1 %.not114, label %bb.i, label %.loopexit408

bb.i:                                             ; preds = %.lr.ph579.split
  %i.bv = icmp ugt i64 %i.bu, %i.ag
  br i1 %i.bv, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.042.0.copyload = load i48, ptr %i.bt, align 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0359.0577, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !206
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !445 ; 3 uses
  %.not115 = icmp eq ptr %i.by, null
  br i1 %.not115, label %.loopexit408, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 224
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !490 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 232
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !490 ; 2 uses
  %.not379574 = icmp eq ptr %i.ca, %i.cc
  br i1 %.not379574, label %.loopexit408, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.042.0.copyload, 16
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.042.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.042.0.copyload to i16 ; 2 uses
  %i.cd = sext i16 %.sroa.2.0.extract.trunc.i.i to i32
  %i.ce = sext i16 %.sroa.0.0.extract.trunc.i.i to i32
  %.lobit.i.i1.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i, 15
  %.lobit.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i, 15
  %i.cf = zext nneg i16 %.lobit.i.i1.i.i to i32
  %i.cg = zext nneg i16 %.lobit.i.i.i.i to i32
  %i.ch = mul nuw nsw i32 %i.ay, %i.cf
  %i.ci = mul nuw nsw i32 %i.ay, %i.cg
  %i.cj = sub nsw i32 %i.cd, %i.ch
  %i.ck = sub nsw i32 %i.ce, %i.ci
  %i.cl = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %i.cm = insertelement <2 x i32> %i.cl, i32 %i.cj, i64 1
  %i.cn = sdiv <2 x i32> %i.cm, %i.bg
  %i.co = trunc <2 x i32> %i.cn to <2 x i16>
  %i.cp = sext i16 %.sroa.3.0.extract.trunc.i.i to i32
  %.lobit.i.i2.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i, 15
  %i.cq = zext nneg i16 %.lobit.i.i2.i.i to i32
  %i.cr = mul nuw nsw i32 %i.ay, %i.cq
  %i.cs = sub nsw i32 %i.cp, %i.cr
  %i.ct = sdiv i32 %i.cs, %i.ax
  %i.cu = trunc i32 %i.ct to i16
  %i.cv = mul <2 x i16> %i.be, %i.co
  %i.cw = mul i16 %i.az, %i.cu
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit
  %i.cx = phi ptr [ %i.bs, %.lr.ph ], [ %i.ek, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 8 uses
  %.sroa.0355.0575 = phi ptr [ %i.ca, %.lr.ph ], [ %i.el, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ] ; 3 uses
  %i.cy = load i16, ptr %i.bb, align 8, !tbaa !159
  %i.cz = sub i16 %i.cw, %i.cy
  %i.da = sitofp nsz i16 %i.cz to float
  %i.db = load <2 x i16>, ptr %i.ba, align 4, !tbaa !162
  %i.dc = sub <2 x i16> %i.cv, %i.db
  %i.dd = sitofp <2 x i16> %i.dc to <2 x float>
  %i.de = fmul nnan nsz <2 x float> %i.dd, splat (float 1.000000e+01) ; 2 uses
  %i.df = fmul nnan nsz float %i.da, 1.000000e+01 ; 2 uses
  %i.dg = load ptr, ptr %i.bc, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.cx, %i.dg
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store <2 x float> %i.de, ptr %i.cx, align 8
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store float %i.df, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !82
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 12 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 4
  %i.dj = and i8 %i.di, -4
  %i.dk = or disjoint i8 %i.dj, 2
  store i8 %i.dk, ptr %i.dh, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %.sroa.0355.0575, ptr %i.dl, align 8, !tbaa !65
  %i.dm = load ptr, ptr %i.ac, align 8, !tbaa !443
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24 ; 2 uses
  store ptr %i.dn, ptr %i.ac, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit

bb.n:                                             ; preds = %bb.l
  %.val.i.i = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 5 uses
  %i.do = ptrtoint ptr %i.cx to i64
  %i.dp = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.o, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.noexc unwind label %.loopexit.split-lp410

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.ds = sdiv exact i64 %i.dq, 24                ; 3 uses
  %i.dt = icmp eq ptr %i.cx, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.dt, i64 1, i64 %i.ds
  %i.du = add nsw i64 %.sroa.speculated.i.i.i, %i.ds ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.ds
  %i.dw = call i64 @llvm.umin.i64(i64 %i.du, i64 384307168202282325)
  %i.dx = select i1 %i.dv, i64 384307168202282325, i64 %i.dw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dy = mul nuw nsw i64 %i.dx, 24
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #38
          to label %.noexc160 unwind label %.loopexit409 ; 5 uses

.noexc160:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dq ; 4 uses
  store <2 x float> %i.de, ptr %i.ea, align 8
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store float %i.df, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !82
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i8 2, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %.sroa.0355.0575, ptr %i.ec, align 8, !tbaa !65
  br i1 %i.dt, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc160, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.dz, %.noexc160 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %.noexc160 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !491, !alias.scope !947
  %i.ed = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ed, %i.cx
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc160
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %.noexc160 ], [ %i.ee, %.lr.ph.i.i.i.i.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i38.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i38.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  %i.eg = load ptr, ptr %i.bc, align 8, !tbaa !49
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.ei) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  store ptr %i.dz, ptr %i.aa, align 8, !tbaa !48
  store ptr %i.ef, ptr %i.ac, align 8, !tbaa !443
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.ej, ptr %i.bc, align 8, !tbaa !49
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.m
  %i.ek = phi ptr [ %i.ef, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dn, %bb.m ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0355.0575, i64 16 ; 2 uses
  %.not379 = icmp eq ptr %i.el, %i.cc
  br i1 %.not379, label %.loopexit408, label %bb.l

.loopexit409:                                     ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit411 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp410:                            ; preds = %bb.o
  %lpad.loopexit.split-lp412 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit408:                                     ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit, %bb.k, %.lr.ph579.split, %bb.j
  %i.em = phi ptr [ %i.bs, %bb.j ], [ %i.bs, %bb.k ], [ %i.bs, %.lr.ph579.split ], [ %i.ek, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ]
  %i.en = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0359.0577) #37 ; 2 uses
  %.not378 = icmp eq ptr %i.en, %i.aw
  br i1 %.not378, label %._crit_edge, label %.lr.ph579.split

._crit_edge:                                      ; preds = %.loopexit408, %bb.i, %bb.h, %bb.e, %.._crit_edge_crit_edge
  %.pre-phi702 = phi i16 [ %.pre701, %.._crit_edge_crit_edge ], [ %i.bj, %bb.h ], [ %i.bj, %bb.e ], [ %i.az, %bb.i ], [ %i.az, %.loopexit408 ] ; 2 uses
  %.pre-phi700 = phi i32 [ %.pre699, %.._crit_edge_crit_edge ], [ %i.bi, %bb.h ], [ %i.bi, %bb.e ], [ %i.ay, %bb.i ], [ %i.ay, %.loopexit408 ] ; 3 uses
  %.pre-phi = phi i32 [ %.pre698, %.._crit_edge_crit_edge ], [ %i.bh, %bb.h ], [ %i.bh, %bb.e ], [ %i.ax, %bb.i ], [ %i.ax, %.loopexit408 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.et = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.fe = insertelement <2 x i16> poison, i16 %.pre-phi702, i64 0
  %i.ff = shufflevector <2 x i16> %i.fe, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.fg = insertelement <2 x i32> poison, i32 %.pre-phi, i64 0
  %i.fh = shufflevector <2 x i32> %i.fg, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.q

._crit_edge.i.i:                                  ; preds = %._crit_edge587
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #2
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.fi, ptr %12, align 8, !tbaa !177
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !176
  store i8 0, ptr %i.fi, align 8, !tbaa !65
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.fk, ptr %11, align 8, !tbaa !177
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.fl, align 8, !tbaa !176
  store i8 0, ptr %i.fk, align 8, !tbaa !65
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr null, ptr %i.fm, align 8, !tbaa !438
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i8 1, ptr %i.fn, align 8, !tbaa !439
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.cz

bb.q:                                             ; preds = %._crit_edge, %._crit_edge587
  %.0107.idx588 = phi i64 [ 0, %._crit_edge ], [ %.0107.add, %._crit_edge587 ] ; 2 uses
  %.0107.ptr = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0107.idx588
  %i.fo = getelementptr inbounds nuw i8, ptr %.0107.ptr, i64 16
  %.sroa.0350.0582 = load ptr, ptr %i.fo, align 8, !tbaa !243 ; 2 uses
  %.not380583 = icmp eq ptr %.sroa.0350.0582, null
  br i1 %.not380583, label %._crit_edge587, label %.lr.ph586

._crit_edge587:                                   ; preds = %bb.cy, %bb.q
  %.0107.add = add nuw nsw i64 %.0107.idx588, 56  ; 2 uses
  %.not118 = icmp eq i64 %.0107.add, 112
  br i1 %.not118, label %._crit_edge.i.i, label %bb.q

.lr.ph586:                                        ; preds = %bb.q, %bb.cy
  %.sroa.0350.0584 = phi ptr [ %.sroa.0350.0, %bb.cy ], [ %.sroa.0350.0582, %bb.q ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0350.0584, i64 136 ; 3 uses
  %i.fq = load ptr, ptr @g_settings, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  store ptr %i.ep, ptr %7, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  store i64 24, ptr %i.d, align 8, !tbaa !178
  %i.fr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i162 unwind label %bb.u ; 2 uses

.noexc.i162:                                      ; preds = %.lr.ph586
  store ptr %i.fr, ptr %7, align 8, !tbaa !64
  %i.fs = load i64, ptr %i.d, align 8, !tbaa !178 ; 3 uses
  store i64 %i.fs, ptr %i.ep, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fr, ptr noundef nonnull align 1 dereferenceable(24) @.str.55, i64 24, i1 false)
  store i64 %i.fs, ptr %i.eq, align 8, !tbaa !176
  %i.ft = load ptr, ptr %7, align 8, !tbaa !64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fs
  store i8 0, ptr %i.fu, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  %i.fv = invoke noundef i32 @_ZNK8Settings6getU32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %.noexc.i162
  %i.fw = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ep
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.fy = load i64, ptr %i.ep, align 8, !tbaa !65
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  %.val87.i = load ptr, ptr %i.aa, align 8, !tbaa !48
  %.val88.i = load ptr, ptr %i.ac, align 8, !tbaa !443
  %i.ga = ptrtoint ptr %.val88.i to i64
  %i.gb = ptrtoint ptr %.val87.i to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  %i.gd = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !494 ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i163, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !78 ; 3 uses
  %.not2.i.i = icmp eq ptr %i.gf, null
  br i1 %.not2.i.i, label %bb.t, label %_ZN15RenderingEngine16get_video_driverEv.exit.i

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv) #36
          to label %.noexc170 unwind label %.loopexit.split-lp401.loopexit.split-lp

.noexc170:                                        ; preds = %bb.t
  unreachable

_ZN15RenderingEngine16get_video_driverEv.exit.i:  ; preds = %bb.s
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !58
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = invoke noundef ptr %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %.noexc171 unwind label %.loopexit.split-lp401.loopexit, !inline_history !905

.noexc171:                                        ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit.i
  store ptr %i.gj, ptr %i.e, align 8, !tbaa !645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #2
  store i32 0, ptr %i.f, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #2
  store i32 0, ptr %i.g, align 4, !tbaa !247
  %i.gk = load ptr, ptr %i.fp, align 8, !tbaa !496 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0350.0584, i64 144 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !496 ; 2 uses
  %.not225271.i = icmp eq ptr %i.gk, %i.gm
  br i1 %.not225271.i, label %"._crit_edge281._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i", label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.x
  %.pre.i = load ptr, ptr %i.gl, align 8, !tbaa !496, !noalias !948 ; 2 uses
  %.pre312.i = load ptr, ptr %i.fp, align 8, !tbaa !496, !noalias !949
  %i.gn = icmp eq ptr %.pre.i, %.pre312.i
  br i1 %i.gn, label %"._crit_edge281._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i", label %.lr.ph280.i

.lr.ph280.i:                                      ; preds = %._crit_edge.i
  %i.go = icmp ult i32 %.166.i, 2
  br label %bb.ag

bb.u:                                             ; preds = %.lr.ph586
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i

bb.v:                                             ; preds = %.noexc.i162
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.ep
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i: ; preds = %bb.v
  %i.gt = load i64, ptr %i.ep, align 8, !tbaa !65
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.gp, %bb.u ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i ], [ %i.gq, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  br label %.body

.lr.ph.i:                                         ; preds = %.noexc171, %bb.x
  %.065273.i = phi i32 [ %.166.i, %bb.x ], [ 0, %.noexc171 ] ; 2 uses
  %.sroa.0220.0272.i = phi ptr [ %i.id, %bb.x ], [ %i.gk, %.noexc171 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0220.0272.i, i64 8 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !498 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !58
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = invoke noundef ptr %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %.noexc172 unwind label %.loopexit400, !inline_history !905 ; 2 uses

.noexc172:                                        ; preds = %.lr.ph.i
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !58
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = invoke noundef i32 %i.hd(ptr noundef nonnull align 8 dereferenceable(28) %i.ha)
          to label %.noexc173 unwind label %.loopexit400, !inline_history !905

.noexc173:                                        ; preds = %.noexc172
  %i.hf = icmp ult i32 %i.he, %i.fv
  br i1 %i.hf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc173
  %i.hg = add i32 %.065273.i, 1
  %i.hh = load ptr, ptr %i.gv, align 8, !tbaa !498 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !58
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = invoke noundef ptr %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hh)
          to label %.noexc174 unwind label %.loopexit400, !inline_history !905 ; 2 uses

.noexc174:                                        ; preds = %bb.w
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !58
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = invoke noundef i32 %i.ho(ptr noundef nonnull align 8 dereferenceable(28) %i.hl)
          to label %.noexc175 unwind label %.loopexit400, !inline_history !905

.noexc175:                                        ; preds = %.noexc174
  %i.hq = load i32, ptr %i.f, align 4, !tbaa !247
  %i.hr = add i32 %i.hq, %i.hp
  store i32 %i.hr, ptr %i.f, align 4, !tbaa !247
  %i.hs = load ptr, ptr %i.gv, align 8, !tbaa !498 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !58
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = invoke noundef ptr %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hs)
          to label %.noexc176 unwind label %.loopexit400, !inline_history !905 ; 2 uses

.noexc176:                                        ; preds = %.noexc175
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !58
end_hunk_4
begin_hunk_5_@_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii:.invoke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, ptr noundef nonnull align 8 dereferenceable(24) %i.iy, i64 12, i1 false), !tbaa.struct !501
  %i.ja = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !56
  %i.jc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -8
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !500
  %i.jd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.jd, i64 12, i1 false), !tbaa.struct !501
  %i.jf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !56
  %i.jh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -32
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !500
  %i.ji = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i, -2
  %i.jj = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0203.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  store ptr %.val.i.i.i.i.i.i, ptr %i.im, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.jk = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 16
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %i.jk, align 8, !tbaa !500 ; 2 uses
  %i.jl = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i
  %i.jm = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.aa ]
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.aa ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !500
  %i.jo = getelementptr i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.jo, align 8, !tbaa !500 ; 2 uses
  %i.jp = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.jp, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", !llvm.loop !910

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.aa
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.jq, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i
  %.sroa.08.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq i64 %.sroa.08.020.i.add.i.i.i.i, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i169, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", label %bb.z, !llvm.loop !911

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i": ; preds = %bb.ab
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0203.1.i, i64 384 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.jr, %.sroa.13.1.i
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.jz, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ %i.jr, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %i.js = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8
  %.val2.i7.i.i14.i.i.i.i = load ptr, ptr %i.js, align 8, !tbaa !500 ; 2 uses
  %i.jt = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i7.i.i14.i.i.i.i
  br i1 %i.jt, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %i.ju = phi ptr [ %.val2.i.i.i21.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i7.i.i14.i.i.i.i, %.lr.ph.i13.i.i.i.i ]
  %.sroa.04.08.i.i19.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 16
  store ptr %i.ju, ptr %i.jv, align 8, !tbaa !500
  %i.jw = getelementptr i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i.i = load ptr, ptr %i.jw, align 8, !tbaa !500 ; 2 uses
  %i.jx = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i
  br i1 %i.jx, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i", !llvm.loop !910

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %i.jy, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.jz, %.sroa.13.1.i
  br i1 %.not.i17.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !912

.preheader.i24.i.i.i.i:                           ; preds = %bb.y
  %.sroa.08.017.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0203.1.i, i64 24 ; 2 uses
  %.not18.i26.i.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i.i, %.sroa.13.1.i
  br i1 %.not18.i26.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i24.i.i.i.i
  %i.ka = getelementptr i8, ptr %.sroa.0203.1.i, i64 16 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.lr.ph.i27.i.i.i.i
  %.sroa.08.020.i28.i.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.0.i35.i.i.i.i, %bb.af ] ; 8 uses
  %.pn19.i29.i.i.i.i = phi ptr [ %.sroa.0203.1.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.af ] ; 3 uses
  %i.kb = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 40
  %.val.i.i30.i.i.i.i = load ptr, ptr %i.kb, align 8, !tbaa !500 ; 5 uses
  %.val1.i.i31.i.i.i.i = load ptr, ptr %i.ka, align 8, !tbaa !500
  %i.kc = icmp ult ptr %.val.i.i30.i.i.i.i, %.val1.i.i31.i.i.i.i
  br i1 %i.kc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.kd = ptrtoint ptr %.sroa.08.020.i28.i.i.i.i to i64
  %i.ke = sub i64 %i.kd, %i.if                    ; 2 uses
  %i.kf = icmp sgt i64 %i.ke, 0
  br i1 %i.kf, label %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i:           ; preds = %bb.ad
  %i.kg = getelementptr inbounds nuw i8, ptr %.pn19.i29.i.i.i.i, i64 48
  %i.kh = udiv exact i64 %i.ke, 24
  br label %.lr.ph.i.i.i.i.i.i43.i.i.i.i

.lr.ph.i.i.i.i.i.i43.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i
  %.010.i.i.i.i.i.i44.i.i.i.i = phi i64 [ %i.kn, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.kh, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i45.i.i.i.i = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %i.kg, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i46.i.i.i.i = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i43.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i42.i.i.i.i ] ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -24 ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef nonnull align 8 dereferenceable(24) %i.ki, i64 12, i1 false), !tbaa.struct !501
  %i.kk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.i, i64 -8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !56
  %i.km = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.i, i64 -8
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !500
  %i.kn = add nsw i64 %.010.i.i.i.i.i.i44.i.i.i.i, -1
  %i.ko = icmp samesign ugt i64 %.010.i.i.i.i.i.i44.i.i.i.i, 1
  br i1 %i.ko, label %.lr.ph.i.i.i.i.i.i43.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.i, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0203.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i23.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  store ptr %.val.i.i30.i.i.i.i, ptr %i.ka, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i28.i.i.i.i, i64 16, i1 false)
  %i.kp = getelementptr i8, ptr %.pn19.i29.i.i.i.i, i64 16
  %.val2.i7.i.i32.i.i.i.i = load ptr, ptr %i.kp, align 8, !tbaa !500 ; 2 uses
  %i.kq = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i7.i.i32.i.i.i.i
  br i1 %i.kq, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i"

.lr.ph.i.i37.i.i.i.i:                             ; preds = %bb.ae, %.lr.ph.i.i37.i.i.i.i
  %i.kr = phi ptr [ %.val2.i.i.i40.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.val2.i7.i.i32.i.i.i.i, %bb.ae ]
  %.sroa.04.08.i.i38.i.i.i.i = phi ptr [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ], [ %.sroa.08.020.i28.i.i.i.i, %bb.ae ] ; 4 uses
  %.sroa.0.0.i.i39.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i38.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i39.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 16
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !500
  %i.kt = getelementptr i8, ptr %.sroa.04.08.i.i38.i.i.i.i, i64 -32
  %.val2.i.i.i40.i.i.i.i = load ptr, ptr %i.kt, align 8, !tbaa !500 ; 2 uses
  %i.ku = icmp ult ptr %.val.i.i30.i.i.i.i, %.val2.i.i.i40.i.i.i.i
  br i1 %i.ku, label %.lr.ph.i.i37.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i", !llvm.loop !910

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i": ; preds = %.lr.ph.i.i37.i.i.i.i, %bb.ae
  %.sroa.04.0.lcssa.i.i34.i.i.i.i = phi ptr [ %.sroa.08.020.i28.i.i.i.i, %bb.ae ], [ %.sroa.0.0.i.i39.i.i.i.i, %.lr.ph.i.i37.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i34.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i22.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i34.i.i.i.i, i64 16
  store ptr %.val.i.i30.i.i.i.i, ptr %i.kv, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i22.i.i.i.i)
  br label %bb.af

bb.af:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i33.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i41.i.i.i.i
  %.sroa.08.0.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i28.i.i.i.i, i64 24 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq ptr %.sroa.08.0.i35.i.i.i.i, %.sroa.13.1.i
  br i1 %.not.i36.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %bb.ac, !llvm.loop !911

bb.ag:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i, %.lr.ph280.i
  %.sroa.0201.0278.i = phi ptr [ %.pre.i, %.lr.ph280.i ], [ %i.kw, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 2 uses
  %.sroa.21.0277.i = phi ptr [ null, %.lr.ph280.i ], [ %.sroa.21.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 9 uses
  %.sroa.13.0276.i = phi ptr [ null, %.lr.ph280.i ], [ %.sroa.13.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 7 uses
  %.sroa.0203.0275.i = phi ptr [ null, %.lr.ph280.i ], [ %.sroa.0203.1.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i ] ; 10 uses
  %i.kw = getelementptr inbounds i8, ptr %.sroa.0201.0278.i, i64 -16 ; 3 uses
  %.sroa.024.0.copyload.i = load i48, ptr %i.kw, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.024.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.kx = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32
  %.lobit.i.i2.i.i.i = lshr i16 %.sroa.3.0.extract.trunc.i.i.i, 15
  %i.ky = zext nneg i16 %.lobit.i.i2.i.i.i to i32
  %i.kz = mul nuw nsw i32 %.pre-phi700, %i.ky
  %i.la = sub nsw i32 %i.kx, %i.kz
  %i.lb = sdiv i32 %i.la, %.pre-phi
  %i.lc = trunc i32 %i.lb to i16
  %i.ld = mul i16 %.pre-phi702, %i.lc
  %i.le = load i16, ptr %i.es, align 8, !tbaa !159
  %i.lf = sub i16 %i.ld, %i.le
  %i.lg = sitofp nsz i16 %i.lf to float
  %.sroa.2.0.extract.trunc.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.lh = trunc i48 %.sroa.024.0.copyload.i to i16 ; 2 uses
  %23 = sext i16 %.sroa.2.0.extract.trunc.i.i.i to i32
  %24 = sext i16 %i.lh to i32
  %.lobit.i.i1.i.i.i = lshr i16 %.sroa.2.0.extract.trunc.i.i.i, 15
  %.lobit.i.i.i.i.i = lshr i16 %i.lh, 15
  %25 = zext nneg i16 %.lobit.i.i1.i.i.i to i32
  %26 = zext nneg i16 %.lobit.i.i.i.i.i to i32
  %27 = mul nuw nsw i32 %.pre-phi700, %25
  %28 = mul nuw nsw i32 %.pre-phi700, %26
  %29 = sub nsw i32 %23, %27
  %30 = sub nsw i32 %24, %28
  %31 = insertelement <2 x i32> poison, i32 %30, i64 0
  %32 = insertelement <2 x i32> %31, i32 %29, i64 1
  %i.li = sdiv <2 x i32> %32, %i.fh
  %i.lj = trunc <2 x i32> %i.li to <2 x i16>
  %i.lk = mul <2 x i16> %i.ff, %i.lj
  %i.ll = load <2 x i16>, ptr %i.er, align 4, !tbaa !162
  %i.lm = sub <2 x i16> %i.lk, %i.ll
  %i.ln = sitofp <2 x i16> %i.lm to <2 x float>
  %i.lo = fmul nnan nsz <2 x float> %i.ln, splat (float 1.000000e+01) ; 4 uses
  %i.lp = fmul nnan nsz float %i.lg, 1.000000e+01 ; 4 uses
  %i.lq = getelementptr inbounds i8, ptr %.sroa.0201.0278.i, i64 -8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !498 ; 6 uses
  br i1 %i.go, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !58
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = invoke noundef ptr %i.lu(ptr noundef nonnull align 8 dereferenceable(8) %i.lr)
          to label %.noexc96.i unwind label %.loopexit242.i, !inline_history !8 ; 2 uses

.noexc96.i:                                       ; preds = %bb.ah
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !58
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = invoke noundef i32 %i.ly(ptr noundef nonnull align 8 dereferenceable(28) %i.lv)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i unwind label %.loopexit242.i, !inline_history !8

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i: ; preds = %.noexc96.i
  %.not80.i = icmp ult i32 %i.lz, %i.fv
  br i1 %.not80.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i, %bb.ag
  %i.ma = load ptr, ptr %i.ac, align 8, !tbaa !443 ; 8 uses
  %i.mb = load ptr, ptr %i.et, align 8, !tbaa !49
  %.not.i98.i = icmp eq ptr %i.ma, %i.mb
  br i1 %.not.i98.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store <2 x float> %i.lo, ptr %i.ma, align 8
  %.sroa.23.0..sroa_idx.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store float %i.lp, ptr %.sroa.23.0..sroa_idx.i.i.i164, align 8, !tbaa !82
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 12 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 4
  %i.me = and i8 %i.md, -4
  %i.mf = or disjoint i8 %i.me, 1
  store i8 %i.mf, ptr %i.mc, align 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store ptr %i.lr, ptr %i.mg, align 8, !tbaa !65
  %i.mh = load ptr, ptr %i.ac, align 8, !tbaa !443
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  store ptr %i.mi, ptr %i.ac, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

bb.ak:                                            ; preds = %bb.ai
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 5 uses
  %i.mj = ptrtoint ptr %i.ma to i64
  %i.mk = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ml = sub i64 %i.mj, %i.mk                    ; 3 uses
  %i.mm = icmp eq i64 %i.ml, 9223372036854775800
  br i1 %i.mm, label %.invoke1015, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ak
  %i.mn = sdiv exact i64 %i.ml, 24                ; 3 uses
  %i.mo = icmp eq ptr %i.ma, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.mo, i64 1, i64 %i.mn
  %i.mp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mn ; 2 uses
  %i.mq = icmp ult i64 %i.mp, %i.mn
  %i.mr = call i64 @llvm.umin.i64(i64 %i.mp, i64 384307168202282325)
  %i.ms = select i1 %i.mq, i64 384307168202282325, i64 %i.mr ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ms, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.mt = mul nuw nsw i64 %i.ms, 24
  %i.mu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mt) #38
          to label %.noexc101.i unwind label %.loopexit242.i ; 5 uses

.noexc101.i:                                      ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.ml ; 4 uses
  store <2 x float> %i.lo, ptr %i.mv, align 8
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store float %i.lp, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !tbaa !82
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  store i8 1, ptr %i.mw, align 4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store ptr %i.lr, ptr %i.mx, align 8, !tbaa !65
  br i1 %i.mo, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i99.i

.lr.ph.i.i.i.i.i99.i:                             ; preds = %.noexc101.i, %.lr.ph.i.i.i.i.i99.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.mz, %.lr.ph.i.i.i.i.i99.i ], [ %i.mu, %.noexc101.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.my, %.lr.ph.i.i.i.i.i99.i ], [ %.val.i.i.i, %.noexc101.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !491, !alias.scope !950
  %i.my = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.my, %i.ma
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i, label %.lr.ph.i.i.i.i.i99.i, !llvm.loop !6

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i: ; preds = %.lr.ph.i.i.i.i.i99.i, %.noexc101.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.mu, %.noexc101.i ], [ %i.mz, %.lr.ph.i.i.i.i.i99.i ]
  %i.na = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i38.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i38.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i
  %i.nb = load ptr, ptr %i.et, align 8, !tbaa !49
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = sub i64 %i.nc, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.nd) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i.i
  store ptr %i.mu, ptr %i.aa, align 8, !tbaa !48
  store ptr %i.na, ptr %i.ac, align 8, !tbaa !443
  %i.ne = getelementptr inbounds nuw [24 x i8], ptr %i.mu, i64 %i.ms
  store ptr %i.ne, ptr %i.et, align 8, !tbaa !49
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

.loopexit242.i:                                   ; preds = %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.noexc96.i, %bb.ah
  %lpad.loopexit244.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.loopexit.split-lp243.i:                          ; preds = %.invoke1015
  %lpad.loopexit.split-lp245.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.am:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit.i
  %.not.i102.i = icmp eq ptr %.sroa.13.0276.i, %.sroa.21.0277.i
  br i1 %.not.i102.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store <2 x float> %i.lo, ptr %.sroa.13.0276.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.13.0276.i, i64 8
  store float %i.lp, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !82
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.13.0276.i, i64 16
  store ptr %i.lr, ptr %i.nf, align 8, !tbaa !500
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.13.0276.i, i64 24
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.nh = ptrtoint ptr %.sroa.21.0277.i to i64
  %i.ni = ptrtoint ptr %.sroa.0203.0275.i to i64
  %i.nj = sub i64 %i.nh, %i.ni                    ; 4 uses
  %i.nk = icmp eq i64 %i.nj, 9223372036854775800
  br i1 %i.nk, label %.invoke1015, label %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke1015:                                      ; preds = %bb.ak, %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
          to label %.cont unwind label %.loopexit.split-lp243.i

.cont:                                            ; preds = %.invoke1015
  unreachable

_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ao
  %i.nl = sdiv exact i64 %i.nj, 24                ; 3 uses
  %.sroa.speculated.i.i.i103.i = call i64 @llvm.umax.i64(i64 %i.nl, i64 1)
  %i.nm = add nsw i64 %.sroa.speculated.i.i.i103.i, %i.nl ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = call i64 @llvm.umin.i64(i64 %i.nm, i64 384307168202282325)
  %i.np = select i1 %i.nn, i64 384307168202282325, i64 %i.no ; 3 uses
  %.not.i.i.i104.i = icmp ne i64 %i.np, 0
  call void @llvm.assume(i1 %.not.i.i.i104.i)
  %i.nq = mul nuw nsw i64 %i.np, 24
  %i.nr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #38
          to label %.noexc109.i unwind label %.loopexit242.i ; 5 uses

.noexc109.i:                                      ; preds = %_ZNKSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nj ; 3 uses
  store <2 x float> %i.lo, ptr %i.ns, align 8
  %.sroa.8.0..sroa_idx198.i = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store float %i.lp, ptr %.sroa.8.0..sroa_idx198.i, align 8, !tbaa !82
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  store ptr %i.lr, ptr %i.nt, align 8, !tbaa !500
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0203.0275.i, %.sroa.21.0277.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i105.i

.lr.ph.i.i.i.i.i105.i:                            ; preds = %.noexc109.i, %.lr.ph.i.i.i.i.i105.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.nv, %.lr.ph.i.i.i.i.i105.i ], [ %i.nr, %.noexc109.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.nu, %.lr.ph.i.i.i.i.i105.i ], [ %.sroa.0203.0275.i, %.noexc109.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !951
  %i.nu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i106.i = icmp eq ptr %i.nu, %.sroa.21.0277.i
  br i1 %.not.i.i.i.i.i106.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i105.i, !llvm.loop !9

_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i105.i, %.noexc109.i
  %.0.lcssa.i.i.i.i.i107.i = phi ptr [ %i.nr, %.noexc109.i ], [ %i.nv, %.lr.ph.i.i.i.i.i105.i ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i107.i, i64 24
  %.not.i34.i.i.i = icmp eq ptr %.sroa.0203.0275.i, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0203.0275.i, i64 noundef %i.nj) #34
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit33.i.i.i
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %i.np
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, %bb.an, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.aj
  %.sroa.0203.1.i = phi ptr [ %.sroa.0203.0275.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0203.0275.i, %bb.aj ], [ %i.nr, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.0203.0275.i, %bb.an ] ; 18 uses
  %.sroa.13.1.i = phi ptr [ %.sroa.13.0276.i, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.0276.i, %bb.aj ], [ %i.nw, %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EE17_M_realloc_insertIJRS3_RS6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %i.ng, %bb.an ] ; 12 uses
end_hunk_5
begin_hunk_6_@_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii:.invoke
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i: ; preds = %bb.co, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i.i
  store ptr %i.zt, ptr %i.zd, align 8, !tbaa !544
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zr
  store ptr %i.aad, ptr %i.zo, align 8, !tbaa !545
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.zt, i64 %i.zf
  store ptr %i.aae, ptr %i.zg, align 8, !tbaa !543
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIPN5scene11IMeshBufferESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp.i:                             ; preds = %bb.ch
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZNSt6vectorItSaItEE7reserveEm.exit.i:            ; preds = %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i.i, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit.i, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit141.i
  %i.aaf = load ptr, ptr %i.h, align 8, !tbaa !646 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 136 ; 3 uses
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !532 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 32
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aah, i64 40
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !541 ; 2 uses
  %i.aal = load ptr, ptr %i.aai, align 8, !tbaa !540 ; 2 uses
  %i.aam = ptrtoint ptr %i.aak to i64
  %i.aan = ptrtoint ptr %i.aal to i64
  %i.aao = sub i64 %i.aam, %i.aan                 ; 2 uses
  %i.aap = sdiv exact i64 %i.aao, 40              ; 6 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaf, i64 144 ; 3 uses
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !533 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 32
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 40
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !545
  %i.aav = load ptr, ptr %i.aas, align 8, !tbaa !544
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = sub i64 %i.aaw, %i.aax                 ; 3 uses
  %i.aaz = ashr exact i64 %i.aay, 1               ; 5 uses
  %i.aba = load ptr, ptr %i.up, align 8, !tbaa !58
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abc = load ptr, ptr %i.abb, align 8
  %i.abd = invoke noundef ptr %i.abc(ptr noundef nonnull align 8 dereferenceable(8) %i.up)
          to label %.noexc153.i unwind label %bb.ca, !inline_history !13 ; 2 uses

.noexc153.i:                                      ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit.i
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !58
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 24
  %i.abg = load ptr, ptr %i.abf, align 8
  %i.abh = invoke noundef ptr %i.abg(ptr noundef nonnull align 8 dereferenceable(28) %i.abd)
          to label %.noexc154.i unwind label %bb.ca, !inline_history !13 ; 2 uses

.noexc154.i:                                      ; preds = %.noexc153.i
  %i.abi = load ptr, ptr %i.aag, align 8, !tbaa !532 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 32 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !546
  %i.abm = load ptr, ptr %i.up, align 8, !tbaa !58
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abo = load ptr, ptr %i.abn, align 8
  %i.abp = invoke noundef ptr %i.abo(ptr noundef nonnull align 8 dereferenceable(8) %i.up)
          to label %.noexc155.i unwind label %bb.ca, !inline_history !13 ; 2 uses

.noexc155.i:                                      ; preds = %.noexc154.i
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !58
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8
  %i.abt = invoke noundef i32 %i.abs(ptr noundef nonnull align 8 dereferenceable(28) %i.abp)
          to label %.noexc156.i unwind label %bb.ca, !inline_history !13

.noexc156.i:                                      ; preds = %.noexc155.i
  %i.abu = zext i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw [40 x i8], ptr %i.abh, i64 %i.abu
  %i.abw = load ptr, ptr %i.abj, align 8, !tbaa !546 ; 2 uses
  %i.abx = ptrtoint ptr %i.abl to i64
  %i.aby = ptrtoint ptr %i.abw to i64
  %i.abz = sub i64 %i.abx, %i.aby
  %i.aca = getelementptr inbounds i8, ptr %i.abw, i64 %i.abz
  invoke void @_ZNSt6vectorIN5video9S3DVertexESaIS1_EE15_M_range_insertIPKS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.abj, ptr %i.aca, ptr noundef %i.abh, ptr noundef %i.abv)
          to label %.noexc157.i unwind label %bb.ca

.noexc157.i:                                      ; preds = %.noexc156.i
  %i.acb = load ptr, ptr %i.aag, align 8, !tbaa !532 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 32
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acb, i64 40
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !541
  %i.acf = load ptr, ptr %i.acc, align 8, !tbaa !540 ; 4 uses
  %i.acg = ptrtoint ptr %i.ace to i64
  %i.ach = ptrtoint ptr %i.acf to i64
  %i.aci = sub i64 %i.acg, %i.ach
  %i.acj = sdiv exact i64 %i.aci, 40              ; 4 uses
  %i.ack = icmp ult i64 %i.aap, %i.acj
  br i1 %i.ack, label %.lr.ph.i.i, label %._crit_edge.i.i167

.lr.ph.i.i:                                       ; preds = %.noexc157.i
  %i.acl = sub nuw nsw i64 %i.acj, %i.aap
  %.neg = add nsw i64 %i.aap, 1
  %xtraiter1104 = and i64 %i.acl, 1
  %lcmp.mod1105.not = icmp eq i64 %xtraiter1104, 0
  br i1 %lcmp.mod1105.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aao ; 3 uses
  %i.acn = load <2 x float>, ptr %i.acm, align 4, !tbaa !82
  %i.aco = fadd nsz <2 x float> %.sroa.05.0.copyload.i, %i.acn
  store <2 x float> %i.aco, ptr %i.acm, align 4, !tbaa !82
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 8 ; 2 uses
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !483
  %i.acr = fadd nsz float %.sroa.5.0.copyload.i, %i.acq
  store float %i.acr, ptr %i.acp, align 4, !tbaa !483
  %i.acs = add nuw nsw i64 %i.aap, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %.02935.i.i.unr = phi i64 [ %i.aap, %.lr.ph.i.i ], [ %i.acs, %.prol.loopexit.unr-lcssa ]
  %i.act = icmp eq i64 %i.acj, %.neg
  br i1 %i.act, label %._crit_edge.i.i167, label %.lr.ph.i.i.new

._crit_edge.i.i167:                               ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %.noexc157.i
  %i.acu = load ptr, ptr %i.up, align 8, !tbaa !58
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  %i.acw = load ptr, ptr %i.acv, align 8
  %i.acx = invoke noundef ptr %i.acw(ptr noundef nonnull align 8 dereferenceable(8) %i.up)
          to label %.noexc158.i unwind label %bb.ca, !inline_history !13 ; 2 uses

.noexc158.i:                                      ; preds = %._crit_edge.i.i167
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !58
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 24
  %i.ada = load ptr, ptr %i.acz, align 8
  %i.adb = invoke noundef ptr %i.ada(ptr noundef nonnull align 8 dereferenceable(28) %i.acx)
          to label %.noexc159.i unwind label %bb.ca, !inline_history !13 ; 2 uses

.noexc159.i:                                      ; preds = %.noexc158.i
  %i.adc = load ptr, ptr %i.aaq, align 8, !tbaa !533 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 32 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 40
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !547
  %i.adg = load ptr, ptr %i.up, align 8, !tbaa !58
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  %i.adi = load ptr, ptr %i.adh, align 8
  %i.adj = invoke noundef ptr %i.adi(ptr noundef nonnull align 8 dereferenceable(8) %i.up)
          to label %.noexc160.i unwind label %bb.ca, !inline_history !13 ; 2 uses

.noexc160.i:                                      ; preds = %.noexc159.i
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !58
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8
  %i.adn = invoke noundef i32 %i.adm(ptr noundef nonnull align 8 dereferenceable(28) %i.adj)
          to label %.noexc161.i unwind label %bb.ca, !inline_history !13

.noexc161.i:                                      ; preds = %.noexc160.i
  %i.ado = zext i32 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [2 x i8], ptr %i.adb, i64 %i.ado
  %i.adq = load ptr, ptr %i.add, align 8, !tbaa !547 ; 2 uses
  %i.adr = ptrtoint ptr %i.adf to i64
  %i.ads = ptrtoint ptr %i.adq to i64
  %i.adt = sub i64 %i.adr, %i.ads
  %i.adu = getelementptr inbounds i8, ptr %i.adq, i64 %i.adt
  invoke void @_ZNSt6vectorItSaItEE15_M_range_insertIPKtEEvN9__gnu_cxx17__normal_iteratorIPtS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.add, ptr %i.adu, ptr noundef %i.adb, ptr noundef %i.adp)
          to label %.noexc162.i unwind label %bb.ca

.noexc162.i:                                      ; preds = %.noexc161.i
  %.not.i152.i = icmp eq ptr %i.aak, %i.aal
  br i1 %.not.i152.i, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.noexc162.i
  %i.adv = load ptr, ptr %i.aaq, align 8, !tbaa !533 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 32
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 40
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !545
  %i.adz = load ptr, ptr %i.adw, align 8, !tbaa !544 ; 4 uses
  %i.aea = ptrtoint ptr %i.ady to i64
  %i.aeb = ptrtoint ptr %i.adz to i64
  %i.aec = sub i64 %i.aea, %i.aeb
  %i.aed = ashr exact i64 %i.aec, 1               ; 3 uses
  %i.aee = icmp ult i64 %i.aaz, %i.aed
  br i1 %i.aee, label %iter.check, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.aef = trunc i64 %i.aap to i16                ; 3 uses
  %i.aeg = sub nuw nsw i64 %i.aed, %i.aaz         ; 7 uses
  %min.iters.check = icmp ult i64 %i.aeg, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1005 = icmp ult i64 %i.aeg, 16
  br i1 %min.iters.check1005, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aeh = and i64 %i.aeg, 12
  %n.vec = and i64 %i.aeg, -16                    ; 4 uses
  %i.aei = add i64 %i.aaz, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.aef, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adz, i64 %i.aay
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aek = getelementptr inbounds nuw [2 x i8], ptr %i.aej, i64 %index ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.aek, align 2, !tbaa !162
  %wide.load1006 = load <8 x i16>, ptr %i.ael, align 2, !tbaa !162
  %i.aem = add <8 x i16> %wide.load, %broadcast.splat
  %i.aen = add <8 x i16> %wide.load1006, %broadcast.splat
  store <8 x i16> %i.aem, ptr %i.aek, align 2, !tbaa !162
  store <8 x i16> %i.aen, ptr %i.ael, align 2, !tbaa !162
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aeo = icmp eq i64 %index.next, %n.vec
  br i1 %i.aeo, label %middle.block, label %vector.body, !llvm.loop !926

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aeg, %n.vec
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aeh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !550

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1007 = and i64 %i.aeg, -4                 ; 3 uses
  %i.aep = add i64 %i.aaz, %n.vec1007
  %broadcast.splatinsert1008 = insertelement <4 x i16> poison, i16 %i.aef, i64 0
  %broadcast.splat1009 = shufflevector <4 x i16> %broadcast.splatinsert1008, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.adz, i64 %i.aay
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1010 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1012, %vec.epilog.vector.body ] ; 2 uses
  %i.aer = getelementptr inbounds nuw [2 x i8], ptr %i.aeq, i64 %index1010 ; 2 uses
  %wide.load1011 = load <4 x i16>, ptr %i.aer, align 2, !tbaa !162
  %i.aes = add <4 x i16> %wide.load1011, %broadcast.splat1009
  store <4 x i16> %i.aes, ptr %i.aer, align 2, !tbaa !162
  %index.next1012 = add nuw i64 %index1010, 4     ; 2 uses
  %i.aet = icmp eq i64 %index.next1012, %n.vec1007
  br i1 %i.aet, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !927

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1013 = icmp eq i64 %i.aeg, %n.vec1007
  br i1 %cmp.n1013, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.036.i.i.ph = phi i64 [ %i.aaz, %iter.check ], [ %i.aei, %vec.epilog.iter.check ], [ %i.aep, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %.02935.i.i = phi i64 [ %i.afh, %.lr.ph.i.i.new ], [ %.02935.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.aeu = getelementptr inbounds nuw [40 x i8], ptr %i.acf, i64 %.02935.i.i ; 3 uses
  %i.aev = load <2 x float>, ptr %i.aeu, align 4, !tbaa !82
  %i.aew = fadd nsz <2 x float> %.sroa.05.0.copyload.i, %i.aev
  store <2 x float> %i.aew, ptr %i.aeu, align 4, !tbaa !82
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8 ; 2 uses
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !483
  %i.aez = fadd nsz float %.sroa.5.0.copyload.i, %i.aey
  store float %i.aez, ptr %i.aex, align 4, !tbaa !483
  %i.afa = getelementptr inbounds nuw [40 x i8], ptr %i.acf, i64 %.02935.i.i ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 40 ; 2 uses
  %i.afc = load <2 x float>, ptr %i.afb, align 4, !tbaa !82
  %i.afd = fadd nsz <2 x float> %.sroa.05.0.copyload.i, %i.afc
  store <2 x float> %i.afd, ptr %i.afb, align 4, !tbaa !82
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afa, i64 48 ; 2 uses
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !483
  %i.afg = fadd nsz float %.sroa.5.0.copyload.i, %i.aff
  store float %i.afg, ptr %i.afe, align 4, !tbaa !483
  %i.afh = add nuw i64 %.02935.i.i, 2             ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.afh, %i.acj
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i167, label %.lr.ph.i.i.new, !llvm.loop !14

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.036.i.i = phi i64 [ %i.afl, %vec.epilog.scalar.ph ], [ %.036.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.afi = getelementptr inbounds nuw [2 x i8], ptr %i.adz, i64 %.036.i.i ; 2 uses
  %i.afj = load i16, ptr %i.afi, align 2, !tbaa !162
  %i.afk = add i16 %i.afj, %i.aef
  store i16 %i.afk, ptr %i.afi, align 2, !tbaa !162
  %i.afl = add nuw i64 %.036.i.i, 1               ; 2 uses
  %exitcond38.not.i.i = icmp eq i64 %i.afl, %i.aed
  br i1 %exitcond38.not.i.i, label %_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit.i, label %vec.epilog.scalar.ph, !llvm.loop !928

_ZN12_GLOBAL__N_118appendToMeshBufferEPN5scene11CMeshBufferIN5video9S3DVertexEEEPKNS0_11IMeshBufferEN4core8vector3dIfEE.exit.i: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.i.i, %.noexc162.i
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.0173.0295.i, i64 24 ; 2 uses
  %.not229.i = icmp eq ptr %i.afm, %.sroa.13.0.lcssa385.i
  br i1 %.not229.i, label %._crit_edge297.i, label %bb.by

bb.cp:                                            ; preds = %._crit_edge297.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #2
  br label %bb.cs

bb.cq:                                            ; preds = %._crit_edge297.i
  %i.afn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.loopexit.split-lp.i, %.loopexit.i, %.body293, %bb.ca
  %.pn70.pn.i = phi { ptr, i32 } [ %i.afn, %bb.cq ], [ %i.vj, %bb.ca ], [ %i.wk, %.body293 ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #2
  br label %.body299

bb.cs:                                            ; preds = %bb.cp, %.loopexit392, %._crit_edge293.i
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %.val86.i = load ptr, ptr %i.ac, align 8, !tbaa !443
  %i.afo = ptrtoint ptr %.val86.i to i64
  %i.afp = ptrtoint ptr %.val.i to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = icmp ugt i64 %i.afq, %i.gc
  br i1 %i.afr, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.afs = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.gc
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 12 ; 2 uses
  %i.afu = load i8, ptr %i.aft, align 4
  %i.afv = and i8 %i.afu, -2
  store i8 %i.afv, ptr %i.aft, align 4
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.afw = load ptr, ptr %8, align 8, !tbaa !64   ; 2 uses
  %i.afx = icmp eq ptr %i.afw, %i.eu
  br i1 %i.afx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163.i: ; preds = %bb.cu
  %i.afy = load i64, ptr %i.eu, align 8, !tbaa !65
  %i.afz = add i64 %i.afy, 1
  call void @_ZdlPvm(ptr noundef %i.afw, i64 noundef %i.afz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  %.not.i.i.i166.i = icmp eq ptr %.sroa.0203.0.lcssa380.i, null
  br i1 %.not.i.i.i166.i, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i
  %i.aga = ptrtoint ptr %.sroa.21.0.lcssa386.i to i64
  %i.agb = sub i64 %i.aga, %.pre-phi316.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0203.0.lcssa380.i, i64 noundef %i.agb) #34
  br label %bb.cy

.body299:                                         ; preds = %bb.bw, %bb.bt, %bb.bx, %bb.cr, %.loopexit.split-lp232.i, %.loopexit231.i, %bb.bi, %bb.bb, %.loopexit.split-lp237.i, %.loopexit236.i, %bb.ay
  %.pn78.i = phi { ptr, i32 } [ %i.rz, %bb.bi ], [ %i.pu, %bb.ay ], [ %i.ub, %bb.bt ], [ %i.qn, %bb.bb ], [ %lpad.loopexit.split-lp234.i, %.loopexit.split-lp232.i ], [ %.pn70.pn.i, %bb.cr ], [ %lpad.loopexit.split-lp239.i, %.loopexit.split-lp237.i ], [ %lpad.loopexit238.i, %.loopexit236.i ], [ %lpad.loopexit233.i, %.loopexit231.i ], [ %i.uk, %bb.bw ], [ %i.un, %bb.bx ]
  %i.agc = load ptr, ptr %8, align 8, !tbaa !64   ; 2 uses
  %i.agd = icmp eq ptr %i.agc, %i.eu
  br i1 %i.agd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167.i: ; preds = %.body299
  %i.age = load i64, ptr %i.eu, align 8, !tbaa !65
  %i.agf = add i64 %i.age, 1
  call void @_ZdlPvm(ptr noundef %i.agc, i64 noundef %i.agf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i: ; preds = %.body299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #2
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i, %.loopexit.split-lp243.i, %.loopexit242.i
  %.sroa.0203.0266.i = phi ptr [ %.sroa.0203.0.lcssa380.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i ], [ %.sroa.0203.0275.i, %.loopexit242.i ], [ %.sroa.0203.0275.i, %.loopexit.split-lp243.i ] ; 3 uses
  %.sroa.21.0255.i = phi ptr [ %.sroa.21.0.lcssa386.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i ], [ %.sroa.21.0277.i, %.loopexit242.i ], [ %.sroa.21.0277.i, %.loopexit.split-lp243.i ]
  %.pn81.pn.pn.i = phi { ptr, i32 } [ %.pn78.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i ], [ %lpad.loopexit244.i, %.loopexit242.i ], [ %lpad.loopexit.split-lp245.i, %.loopexit.split-lp243.i ]
  %.not.i.i.i170.i = icmp eq ptr %.sroa.0203.0266.i, null
  br i1 %.not.i.i.i170.i, label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EED2Ev.exit171.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.agg = ptrtoint ptr %.sroa.21.0255.i to i64
  %i.agh = ptrtoint ptr %.sroa.0203.0266.i to i64
  %i.agi = sub i64 %i.agg, %i.agh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0203.0266.i, i64 noundef %i.agi) #34
  br label %_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EED2Ev.exit171.i

_ZNSt6vectorISt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESaIS7_EED2Ev.exit171.i: ; preds = %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  br label %.body

bb.cy:                                            ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  %.sroa.0350.0 = load ptr, ptr %.sroa.0350.0584, align 8, !tbaa !243 ; 2 uses
  %.not380 = icmp eq ptr %.sroa.0350.0, null
  br i1 %.not380, label %._crit_edge587, label %.lr.ph586

.loopexit400:                                     ; preds = %.lr.ph.i, %.noexc172, %bb.w, %.noexc174, %.noexc175, %.noexc176
  %lpad.loopexit402 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp401.loopexit:                   ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit.i
  %lpad.loopexit405 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp401.loopexit.split-lp:          ; preds = %bb.t
  %lpad.loopexit.split-lp406 = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_6
