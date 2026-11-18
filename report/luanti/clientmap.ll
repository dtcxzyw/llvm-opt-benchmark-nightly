Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_:bb.a
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !82
  %i.cn = fadd nsz float %i.az, %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cn, ptr %i.co, align 4, !tbaa !82
  %i.cp = fsub nsz float %i.ch, %i.bc
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %i.cq, align 4, !tbaa !82
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !82
  %i.cs = fsub nsz float %i.cg, %i.ba
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cs, ptr %i.ct, align 4, !tbaa !82
  %i.cu = fadd nsz float %i.bc, %i.ch
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cu, ptr %i.cv, align 4, !tbaa !82
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 4, !tbaa !82
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap12renderPostFxE10CameraMode(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1) local_unnamed_addr #18 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.a, align 8, !tbaa !82 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !82
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload, i64 0 ; 2 uses
  %i.b = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.c = select nsz i1 %i.b, float 5.000000e+00, float -5.000000e+00
  %i.d = fadd nsz float %.sroa.09.0.vec.extract.i, %i.c
  %i.e = fdiv nsz float %i.d, 1.000000e+01
  %i.f = fptosi float %i.e to i16
  %i.g = insertelement <2 x float> %.sroa.07.0.copyload, float %.sroa.28.0.copyload, i64 0 ; 2 uses
  %i.h = fcmp nsz ogt <2 x float> %i.g, zeroinitializer
  %i.i = select <2 x i1> %i.h, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.j = fadd nsz <2 x float> %i.g, %i.i
  %i.k = fdiv nsz <2 x float> %i.j, splat (float 1.000000e+01)
  %i.l = fptosi <2 x float> %i.k to <2 x i16>
  %i.m = zext <2 x i16> %i.l to <2 x i48>
  %i.n = shl nuw <2 x i48> %i.m, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.n)
  %.sroa.0.0.insert.ext.i = zext i16 %i.f to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.o = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !566  ; 2 uses
  %i.r = and i32 %i.o, 65535
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !569
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !570  ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 2080
  %i.ab = icmp ugt i64 %i.aa, %i.s
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw [2080 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !176
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.c ], [ %i.ac, %bb.b ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1392
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !247 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1396
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !898, !range !174, !noundef !175
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.an = lshr i32 %i.aj, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !160 ; 3 uses
  %i.aq = lshr i32 %i.aj, 8
  %i.ar = and i32 %i.aj, 255
  %i.as = and i32 %i.ap, 255
  %i.at = mul nuw nsw i32 %i.as, %i.ar
  %i.au = uitofp nsz nneg i32 %i.at to float
  %i.av = fdiv nsz float %i.au, 2.550000e+02
  %i.aw = fadd nsz float %i.av, 5.000000e-01
  %i.ax = tail call nsz noundef float @llvm.floor.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = and i32 %i.an, 255
  %i.ba = lshr i32 %i.ap, 16
  %i.bb = and i32 %i.ba, 255
  %i.bc = mul nuw nsw i32 %i.bb, %i.az
  %i.bd = uitofp nsz nneg i32 %i.bc to float
  %i.be = and i32 %i.aq, 255
  %i.bf = lshr i32 %i.ap, 8
  %i.bg = and i32 %i.bf, 255
  %i.bh = mul nuw nsw i32 %i.bg, %i.be
  %i.bi = uitofp nsz nneg i32 %i.bh to float
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bd, i64 1
  %i.bl = fdiv nsz <2 x float> %i.bk, splat (float 2.550000e+02)
  %i.bm = fadd nsz <2 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.bm)
  %i.bo = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.aj, i64 1
  %i.bq = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.br = fptosi <4 x float> %i.bq to <4 x i32>
  %i.bs = shufflevector <4 x i32> %i.bp, <4 x i32> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bt = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bs, <4 x i32> <i32 255, i32 2147483647, i32 255, i32 255>)
  %i.bu = shl nuw nsw <4 x i32> %i.bt, <i32 0, i32 0, i32 8, i32 16>
  %i.bv = and <4 x i32> %i.bu, <i32 255, i32 -16777216, i32 65280, i32 16711680>
  %i.bw = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bv)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %.sroa.014.0 = phi i32 [ %i.bw, %bb.d ], [ %i.aj, %_ZNK14NodeDefManager3getERK7MapNode.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 1400
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !594
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1248
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !598
  %i.cb = icmp eq i8 %i.ca, 2
  %i.cc = icmp eq i32 %1, 1
  %or.cond = and i1 %i.cc, %i.cb
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !565, !range !174, !noundef !175
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not = icmp ult i32 %.sroa.014.0, 16777216
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.sroa.014.126 = phi i32 [ %.sroa.014.0, %bb.g ], [ -16777216, %bb.f ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !58
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 488
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = load <2 x i32>, ptr %i.cr, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  store i32 0, ptr %2, align 4, !tbaa !900
  store i32 0, ptr %i.cs, align 4, !tbaa !901
  store <2 x i32> %i.cu, ptr %i.ct, align 4, !tbaa !247
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 424
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 %.sroa.014.126, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap9PrintInfoERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 11) ; 0 uses
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef %1, ptr noundef align 8 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.invoke:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %.sroa.03.i.i22.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i23.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i12.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.h = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %class.anon.817, align 8            ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %class.TimeTaker, align 8          ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.core::CMatrix4", align 4   ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.video::SMaterial", align 8 ; 12 uses
  %16 = alloca %"class.video::SMaterial", align 8 ; 21 uses
  %17 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %18 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.not = icmp eq i32 %3, 8                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.i, ptr %10, align 8, !tbaa !177
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !176
  store i8 0, ptr %i.i, align 8, !tbaa !65
  %.str.36..str.35 = select i1 %.not, ptr @.str.36, ptr @.str.35
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %.str.36..str.35, i64 noundef 25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1672
  %.sroa.0.0.copyload.i = load i16, ptr %i.n, align 8, !tbaa !162 ; 6 uses
  %i.o = load i8, ptr @__tls_guard, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, !prof !441

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.q = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE)
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.r = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.s = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.t = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE) ; 2 uses
  %i.u = icmp eq i8 %.pr, 0
  br i1 %i.u, label %bb.a, label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, !prof !442

bb.a:                                             ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.v = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.w = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit: ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, %bb.a
  %i.x = phi ptr [ %i.q, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread ], [ %i.t, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit ], [ %i.t, %bb.a ] ; 3 uses
  %i.y = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE) ; 14 uses
  call fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.x)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 17 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !443 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ac = phi ptr [ %i.ab, %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit ], [ %i.z, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !167 ; 2 uses
  %i.af = sext i32 %5 to i64
  %i.ag = udiv i64 %i.ae, %i.af
  %i.ah = add i64 %i.ag, 1                        ; 2 uses
  %i.ai = sext i32 %4 to i64
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = select i1 %.not, i64 %i.aj, i64 0       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.al = add nsw i32 %5, -1
  %.not113 = icmp eq i32 %4, %i.al
  br i1 %.not113, label %.thread850, label %bb.fe

bb.c:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.am = add nsw i32 %4, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.ah, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !165 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not376582 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not376582, label %.._crit_edge_crit_edge, label %.lr.ph585.split.us.preheader

.thread850:                                       ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !165 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not376582851 = icmp eq ptr %i.at, %i.au
  br i1 %.not376582851, label %.._crit_edge_crit_edge, label %.lr.ph585.split.preheader

.._crit_edge_crit_edge:                           ; preds = %.thread850, %bb.c
  %.pre715 = zext i16 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.pre716 = add nsw i32 %.pre715, -1
  %.pre718 = shl i16 %.sroa.0.0.copyload.i, 4
  br label %._crit_edge

.lr.ph585.split.preheader:                        ; preds = %.thread850
  %i.av = zext i16 %.sroa.0.0.copyload.i to i32   ; 5 uses
  %i.aw = add nsw i32 %i.av, -1                   ; 5 uses
  %i.ax = shl i16 %.sroa.0.0.copyload.i, 4        ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.bb = insertelement <2 x i16> poison, i16 %i.ax, i64 0
  %i.bc = shufflevector <2 x i16> %i.bb, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x i32> poison, i32 %i.av, i64 0
  %i.be = shufflevector <2 x i32> %i.bd, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph585.split

.lr.ph585.split.us.preheader:                     ; preds = %bb.c
  %i.bf = zext i16 %.sroa.0.0.copyload.i to i32   ; 3 uses
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  %i.bh = shl i16 %.sroa.0.0.copyload.i, 4        ; 2 uses
  br label %.lr.ph585.split.us

.lr.ph585.split.us:                               ; preds = %.lr.ph585.split.us.preheader, %bb.g
  %.0108584.us = phi i64 [ %i.bj, %bb.g ], [ 0, %.lr.ph585.split.us.preheader ]
  %.sroa.0357.0583.us = phi ptr [ %i.bo, %bb.g ], [ %i.aq, %.lr.ph585.split.us.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0357.0583.us, i64 32
  %i.bj = add i64 %.0108584.us, 1                 ; 3 uses
  %.not114.us = icmp ugt i64 %i.bj, %i.ak
  br i1 %.not114.us, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph585.split.us
  %i.bk = icmp ugt i64 %i.bj, %i.ao
  br i1 %i.bk, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0357.0583.us, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !206
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !445 ; 2 uses
  %.not115.us = icmp eq ptr %i.bn, null
  br i1 %.not115.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.042.0.copyload.us = load i48, ptr %i.bi, align 8, !tbaa !162
  invoke fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps12addFromBlockEN4core8vector3dIsEEP12MapBlockMeshPN5video12IVideoDriverE(ptr noundef nonnull align 8 dereferenceable(112) %i.x, i48 %.sroa.042.0.copyload.us, ptr noundef nonnull %i.bn, ptr noundef %1)
          to label %bb.g unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph585.split.us
  %i.bo = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0357.0583.us) #37 ; 2 uses
  %.not376.us = icmp eq ptr %i.bo, %i.ar
  br i1 %.not376.us, label %._crit_edge, label %.lr.ph585.split.us

.lr.ph585.split:                                  ; preds = %.lr.ph585.split.preheader, %.loopexit425
  %.val.i.i707 = phi ptr [ %.val.i.i708, %.loopexit425 ], [ %i.z, %.lr.ph585.split.preheader ] ; 4 uses
  %i.bp = phi ptr [ %i.ek, %.loopexit425 ], [ %i.ac, %.lr.ph585.split.preheader ] ; 4 uses
  %.0108584 = phi i64 [ %i.br, %.loopexit425 ], [ 0, %.lr.ph585.split.preheader ]
  %.sroa.0357.0583 = phi ptr [ %i.el, %.loopexit425 ], [ %i.at, %.lr.ph585.split.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0357.0583, i64 32
  %i.br = add i64 %.0108584, 1                    ; 3 uses
  %.not114 = icmp ugt i64 %i.br, %i.ak
  br i1 %.not114, label %bb.h, label %.loopexit425

bb.h:                                             ; preds = %.lr.ph585.split
  %i.bs = icmp ugt i64 %i.br, %i.ae
  br i1 %i.bs, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.042.0.copyload = load i48, ptr %i.bq, align 8, !tbaa !162 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0357.0583, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !206
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !445 ; 3 uses
  %.not115 = icmp eq ptr %i.bv, null
  br i1 %.not115, label %.loopexit425, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !490 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !490 ; 2 uses
  %.not377580 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not377580, label %.loopexit425, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.042.0.copyload, 16
  %.sroa.3.0.extract.shift.i.i = lshr i48 %.sroa.042.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.042.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16 ; 2 uses
  %i.ca = sext i16 %.sroa.0.0.extract.trunc.i.i to i32
  %.lobit.i.i.i.i = lshr i16 %.sroa.0.0.extract.trunc.i.i, 15
  %i.cb = zext nneg i16 %.lobit.i.i.i.i to i32
end_hunk_0
begin_hunk_1_@_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii:.invoke
  %i.ef = sub i64 %i.ee, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.ef) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  store ptr %i.dw, ptr %i.y, align 8, !tbaa !48
  store ptr %i.ec, ptr %i.aa, align 8, !tbaa !443
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.du ; 2 uses
  store ptr %i.eg, ptr %i.ba, align 8, !tbaa !49
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.l
  %.val.i.i709 = phi ptr [ %i.dw, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.val.i.i, %bb.l ] ; 2 uses
  %i.eh = phi ptr [ %i.eg, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre, %bb.l ]
  %i.ei = phi ptr [ %i.ec, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEEPK17PartialMeshBufferEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dk, %bb.l ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0353.0581, i64 16 ; 2 uses
  %.not377 = icmp eq ptr %i.ej, %i.bz
  br i1 %.not377, label %.loopexit425, label %bb.k

.loopexit425:                                     ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit, %bb.j, %.lr.ph585.split, %bb.i
  %.val.i.i708 = phi ptr [ %.val.i.i707, %bb.i ], [ %.val.i.i707, %bb.j ], [ %.val.i.i707, %.lr.ph585.split ], [ %.val.i.i709, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ]
  %i.ek = phi ptr [ %i.bp, %bb.i ], [ %i.bp, %bb.j ], [ %i.bp, %.lr.ph585.split ], [ %i.ei, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEEPK17PartialMeshBufferEEERS1_DpOT_.exit ]
  %i.el = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0357.0583) #37 ; 2 uses
  %.not376 = icmp eq ptr %i.el, %i.au
  br i1 %.not376, label %._crit_edge, label %.lr.ph585.split

._crit_edge:                                      ; preds = %.loopexit425, %bb.h, %bb.g, %bb.d, %.._crit_edge_crit_edge
  %.pre-phi719 = phi i16 [ %.pre718, %.._crit_edge_crit_edge ], [ %i.bh, %bb.g ], [ %i.bh, %bb.d ], [ %i.ax, %bb.h ], [ %i.ax, %.loopexit425 ] ; 2 uses
  %.pre-phi717 = phi i32 [ %.pre716, %.._crit_edge_crit_edge ], [ %i.bg, %bb.g ], [ %i.bg, %bb.d ], [ %i.aw, %bb.h ], [ %i.aw, %.loopexit425 ] ; 3 uses
  %.pre-phi = phi i32 [ %.pre715, %.._crit_edge_crit_edge ], [ %i.bf, %bb.g ], [ %i.bf, %bb.d ], [ %i.av, %bb.h ], [ %i.av, %.loopexit425 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.fc = insertelement <2 x i16> poison, i16 %.pre-phi719, i64 0
  %i.fd = shufflevector <2 x i16> %i.fc, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.fe = insertelement <2 x i32> poison, i32 %.pre-phi, i64 0
  %i.ff = shufflevector <2 x i32> %i.fe, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.p

._crit_edge.i.i:                                  ; preds = %._crit_edge593
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #2
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.fg, ptr %12, align 8, !tbaa !177
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.fh, align 8, !tbaa !176
  store i8 0, ptr %i.fg, align 8, !tbaa !65
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.fi, ptr %11, align 8, !tbaa !177
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.fj, align 8, !tbaa !176
  store i8 0, ptr %i.fi, align 8, !tbaa !65
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr null, ptr %i.fk, align 8, !tbaa !438
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i8 1, ptr %i.fl, align 8, !tbaa !439
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(50) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.co

bb.p:                                             ; preds = %._crit_edge, %._crit_edge593
  %.0107.idx594 = phi i64 [ 0, %._crit_edge ], [ %.0107.add, %._crit_edge593 ] ; 2 uses
  %.0107.ptr = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0107.idx594
  %i.fm = getelementptr inbounds nuw i8, ptr %.0107.ptr, i64 16
  %.sroa.0348.0588 = load ptr, ptr %i.fm, align 8, !tbaa !243 ; 2 uses
  %.not378589 = icmp eq ptr %.sroa.0348.0588, null
  br i1 %.not378589, label %._crit_edge593, label %.lr.ph592

._crit_edge593:                                   ; preds = %bb.cn, %bb.p
  %.0107.add = add nuw nsw i64 %.0107.idx594, 56  ; 2 uses
  %.not118 = icmp eq i64 %.0107.add, 112
  br i1 %.not118, label %._crit_edge.i.i, label %bb.p

.lr.ph592:                                        ; preds = %bb.p, %bb.cn
  %.sroa.0348.0590 = phi ptr [ %.sroa.0348.0, %bb.cn ], [ %.sroa.0348.0588, %bb.p ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0348.0590, i64 136 ; 3 uses
  %i.fo = load ptr, ptr @g_settings, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  store ptr %i.en, ptr %7, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  store i64 24, ptr %i.d, align 8, !tbaa !178
  %i.fp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i162 unwind label %bb.t ; 2 uses

.noexc.i162:                                      ; preds = %.lr.ph592
  store ptr %i.fp, ptr %7, align 8, !tbaa !64
  %i.fq = load i64, ptr %i.d, align 8, !tbaa !178 ; 3 uses
  store i64 %i.fq, ptr %i.en, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fp, ptr noundef nonnull align 1 dereferenceable(24) @.str.55, i64 24, i1 false)
  store i64 %i.fq, ptr %i.eo, align 8, !tbaa !176
  %i.fr = load ptr, ptr %7, align 8, !tbaa !64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fq
  store i8 0, ptr %i.fs, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  %i.ft = invoke noundef i32 @_ZNK8Settings6getU32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %.noexc.i162
  %i.fu = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.en
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.fw = load i64, ptr %i.en, align 8, !tbaa !65
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  %.val87.i = load ptr, ptr %i.y, align 8, !tbaa !48
  %.val88.i = load ptr, ptr %i.aa, align 8, !tbaa !443
  %i.fy = ptrtoint ptr %.val88.i to i64
  %i.fz = ptrtoint ptr %.val87.i to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  %i.gb = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !494 ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i163, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !78 ; 3 uses
  %.not2.i.i = icmp eq ptr %i.gd, null
  br i1 %.not2.i.i, label %bb.s, label %_ZN15RenderingEngine16get_video_driverEv.exit.i

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv) #36
          to label %.noexc170 unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc170:                                        ; preds = %bb.s
  unreachable

_ZN15RenderingEngine16get_video_driverEv.exit.i:  ; preds = %bb.r
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !58
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = invoke noundef ptr %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.gd)
          to label %.noexc171 unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !905

.noexc171:                                        ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit.i
  store ptr %i.gh, ptr %i.e, align 8, !tbaa !645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #2
  store i32 0, ptr %i.f, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #2
  store i32 0, ptr %i.g, align 4, !tbaa !247
  %i.gi = load ptr, ptr %i.fn, align 8, !tbaa !496 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0348.0590, i64 144 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !496 ; 2 uses
  %.not225274.i = icmp eq ptr %i.gi, %i.gk
  br i1 %.not225274.i, label %"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i", label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.w
  %.pre.i = load ptr, ptr %i.gj, align 8, !tbaa !496, !noalias !948 ; 2 uses
  %.pre320.i = load ptr, ptr %i.fn, align 8, !tbaa !496, !noalias !949
  %i.gl = icmp eq ptr %.pre.i, %.pre320.i
  br i1 %i.gl, label %"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i", label %.lr.ph283.i

.lr.ph283.i:                                      ; preds = %._crit_edge.i
  %i.gm = icmp ult i32 %.166.i, 2
  br label %bb.af

bb.t:                                             ; preds = %.lr.ph592
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i

bb.u:                                             ; preds = %.noexc.i162
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.en
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i: ; preds = %bb.u
  %i.gr = load i64, ptr %i.en, align 8, !tbaa !65
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.gn, %bb.t ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i ], [ %i.go, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2
  br label %.body

.lr.ph.i:                                         ; preds = %.noexc171, %bb.w
  %.065276.i = phi i32 [ %.166.i, %bb.w ], [ 0, %.noexc171 ] ; 2 uses
  %.sroa.0220.0275.i = phi ptr [ %i.hz, %bb.w ], [ %i.gi, %.noexc171 ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0220.0275.i, i64 8 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !498 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !58
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = invoke noundef ptr %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gu)
          to label %.noexc172 unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !905 ; 2 uses

.noexc172:                                        ; preds = %.lr.ph.i
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !58
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = invoke noundef i32 %i.hb(ptr noundef nonnull align 8 dereferenceable(28) %i.gy)
          to label %.noexc173 unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !905

.noexc173:                                        ; preds = %.noexc172
  %i.hd = icmp ult i32 %i.hc, %i.ft
  br i1 %i.hd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc173
  %i.he = add i32 %.065276.i, 1
  %i.hf = load ptr, ptr %i.gt, align 8, !tbaa !498 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !58
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = invoke noundef ptr %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.hf)
          to label %.noexc174 unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !905 ; 2 uses

.noexc174:                                        ; preds = %bb.v
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !58
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = invoke noundef i32 %i.hm(ptr noundef nonnull align 8 dereferenceable(28) %i.hj)
          to label %.noexc175 unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !905

.noexc175:                                        ; preds = %.noexc174
  %23 = load i32, ptr %i.f, align 4, !tbaa !247
  %i.ho = add i32 %23, %i.hn
  store i32 %i.ho, ptr %i.f, align 4, !tbaa !247
  %i.hp = load ptr, ptr %i.gt, align 8, !tbaa !498 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !58
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = invoke noundef ptr %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
          to label %.noexc176 unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !905 ; 2 uses

.noexc176:                                        ; preds = %.noexc175
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !58
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(28) %i.ht)
          to label %.noexc177 unwind label %.loopexit.split-lp412.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !905

.noexc177:                                        ; preds = %.noexc176
  %24 = load i32, ptr %i.g, align 4, !tbaa !247
  %i.hy = add i32 %24, %i.hx
  store i32 %i.hy, ptr %i.g, align 4, !tbaa !247
  br label %bb.w

bb.w:                                             ; preds = %.noexc177, %.noexc173
  %.166.i = phi i32 [ %i.he, %.noexc177 ], [ %.065276.i, %.noexc173 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0220.0275.i, i64 16 ; 2 uses
  %.not225.i = icmp eq ptr %i.hz, %i.gk
  br i1 %.not225.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge284.i:                                 ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJRN4core8vector3dIfEERPN5scene11IMeshBufferEEEERS1_DpOT_.exit.i
  %.not.i.i.i165 = icmp eq ptr %.sroa.0203.1.i, %.sroa.13.1.i
  br i1 %.not.i.i.i165, label %"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i", label %bb.x

"._crit_edge284._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit_crit_edge.i": ; preds = %._crit_edge284.i, %._crit_edge.i, %.noexc171
  %.sroa.21.0.lcssa398.i.a = phi ptr [ %.sroa.21.1.i, %._crit_edge284.i ], [ null, %._crit_edge.i ], [ null, %.noexc171 ]
  %.sroa.13.0.lcssa395.i = phi ptr [ %.sroa.0203.1.i, %._crit_edge284.i ], [ null, %._crit_edge.i ], [ null, %.noexc171 ] ; 3 uses
  %.pre322.i.a = ptrtoint ptr %.sroa.13.0.lcssa395.i to i64
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i"

bb.x:                                             ; preds = %._crit_edge284.i
  %i.ia = ptrtoint ptr %.sroa.13.1.i to i64
  %i.ib = ptrtoint ptr %.sroa.0203.1.i to i64     ; 6 uses
  %i.ic = sub i64 %i.ia, %i.ib                    ; 2 uses
  %i.id = sdiv exact i64 %i.ic, 24                ; 5 uses
  %i.ie = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.id, i1 true)
  %i.if = shl nuw nsw i64 %i.ie, 1
  %i.ig = xor i64 %i.if, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_T1_"(ptr %.sroa.0203.1.i, ptr %.sroa.13.1.i, i64 noundef %i.ig)
  %i.ih = icmp sgt i64 %i.ic, 384
  br i1 %i.ih, label %.lr.ph.i.i.i.i.i168, label %.preheader.i24.i.i.i.i

.lr.ph.i.i.i.i.i168:                              ; preds = %bb.x
  %i.ii = getelementptr i8, ptr %.sroa.0203.1.i, i64 16 ; 3 uses
  %.val1.i.pre22.i.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !500
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i.i.i.i.i168
  %indvar = phi i64 [ %indvar.next, %bb.aa ], [ 0, %.lr.ph.i.i.i.i.i168 ] ; 2 uses
  %.val1.i.i.i.i.i.i = phi ptr [ %.val1.i24.i.i.i.i.i, %bb.aa ], [ %.val1.i.pre22.i.i.i.i.i, %.lr.ph.i.i.i.i.i168 ]
  %.sroa.08.020.i.idx.i.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i.i, %bb.aa ], [ 24, %.lr.ph.i.i.i.i.i168 ] ; 3 uses
  %.pn19.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.aa ], [ %.sroa.0203.1.i, %.lr.ph.i.i.i.i.i168 ] ; 5 uses
  %.sroa.08.020.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0203.1.i, i64 %.sroa.08.020.i.idx.i.i.i.i ; 8 uses
  %i.ij = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ij, align 8, !tbaa !500 ; 6 uses
  %i.ik = icmp ult ptr %.val.i.i.i.i.i.i, %.val1.i.i.i.i.i.i
  br i1 %i.ik, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %bb.z

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 48
  %i.im = udiv i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 3 uses
  %xtraiter = and i64 %i.im, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %i.in = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -24 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %i.in, i64 12, i1 false), !tbaa.struct !501
  %i.ip = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i.i, i64 -8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !56
  %i.ir = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i, i64 40
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !500
  %i.is = add nsw i64 %i.im, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.im, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.is, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.il, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.io, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.in, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.it = icmp eq i64 %indvar, 0
  br i1 %i.it, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.iu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -24
  %i.iv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.iu, i64 12, i1 false), !tbaa.struct !501
  %i.iw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !56
  %i.iy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -8
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !500
  %i.iz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %i.iz, i64 12, i1 false), !tbaa.struct !501
  %i.jb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.i, i64 -32
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !56
  %i.jd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.i, i64 -32
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !500
  %i.je = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i, -2
  %i.jf = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.jf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0203.1.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  store ptr %.val.i.i.i.i.i.i, ptr %i.ii, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i.ptr.i.i.i.i, i64 16, i1 false)
  %i.jg = getelementptr i8, ptr %.pn19.i.i.i.i.i, i64 16
  %.val2.i7.i.i.i.i.i.i = load ptr, ptr %i.jg, align 8, !tbaa !500 ; 2 uses
  %i.jh = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i
  br i1 %i.jh, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i
  %i.ji = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i, %bb.z ]
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.z ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !500
  %i.jk = getelementptr i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 -32
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.jk, align 8, !tbaa !500 ; 2 uses
  %i.jl = icmp ult ptr %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", !llvm.loop !910

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.z
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i.i, %bb.z ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.jm, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  %.val1.i.pre.i.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !500
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i
  %.val1.i24.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i.i.i.i ], [ %.val1.i.pre.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i.i.i.i.i" ]
  %.sroa.08.020.i.add.i.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i169 = icmp eq i64 %.sroa.08.020.i.add.i.i.i.i, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i.i169, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", label %bb.y, !llvm.loop !911

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i": ; preds = %bb.aa
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0203.1.i, i64 384 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.jn, %.sroa.13.1.i
  br i1 %.not6.i.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i

.lr.ph.i13.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.jv, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i" ], [ %i.jn, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_.exit.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i.i.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8 ; 3 uses
  %i.jo = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8
  %.val2.i7.i.i14.i.i.i.i = load ptr, ptr %i.jo, align 8, !tbaa !500 ; 2 uses
  %i.jp = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i7.i.i14.i.i.i.i
  br i1 %i.jp, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i"

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i13.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %i.jq = phi ptr [ %.val2.i.i.i21.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i7.i.i14.i.i.i.i, %.lr.ph.i13.i.i.i.i ]
  %.sroa.04.08.i.i19.i.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i20.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i20.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 16
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !500
  %i.js = getelementptr i8, ptr %.sroa.04.08.i.i19.i.i.i.i, i64 -32
  %.val2.i.i.i21.i.i.i.i = load ptr, ptr %i.js, align 8, !tbaa !500 ; 2 uses
  %i.jt = icmp ult ptr %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i21.i.i.i.i
  br i1 %i.jt, label %.lr.ph.i.i18.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i", !llvm.loop !910

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_.exit.i15.i.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i13.i.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i.i ], [ %.sroa.0.0.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.04.0.lcssa.i.i16.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i12.i.i.i.i, i64 12, i1 false), !tbaa.struct !501
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i16.i.i.i.i, i64 16
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %i.ju, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12.i.i.i.i)
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.jv, %.sroa.13.1.i
  br i1 %.not.i17.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i13.i.i.i.i, !llvm.loop !912

.preheader.i24.i.i.i.i:                           ; preds = %bb.x
  %.sroa.08.017.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0203.1.i, i64 24 ; 2 uses
  %.not18.i26.i.i.i.i = icmp eq ptr %.sroa.08.017.i25.i.i.i.i, %.sroa.13.1.i
  br i1 %.not18.i26.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEEZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSH_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISR_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISX_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS18_ESt8equal_toIS18_ESaIS2_IKS18_S19_EEEEUlRKS11_RKT0_E_EvS11_S11_S1L_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i24.i.i.i.i
  %i.jw = getelementptr i8, ptr %.sroa.0203.1.i, i64 16 ; 3 uses
  %.val1.i.pre22.i28.i.i.i.i = load ptr, ptr %i.jw, align 8, !tbaa !500
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.i27.i.i.i.i
  %.val1.i.i29.i.i.i.i = phi ptr [ %.val1.i.pre22.i28.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.val1.i24.i37.i.i.i.i, %bb.ae ]
  %.sroa.08.020.i30.i.i.i.i = phi ptr [ %.sroa.08.017.i25.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.0.i38.i.i.i.i, %bb.ae ] ; 8 uses
  %.pn19.i31.i.i.i.i = phi ptr [ %.sroa.0203.1.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.08.020.i30.i.i.i.i, %bb.ae ] ; 3 uses
  %i.jx = getelementptr i8, ptr %.pn19.i31.i.i.i.i, i64 40
  %.val.i.i32.i.i.i.i = load ptr, ptr %i.jx, align 8, !tbaa !500 ; 6 uses
  %i.jy = icmp ult ptr %.val.i.i32.i.i.i.i, %.val1.i.i29.i.i.i.i
  br i1 %i.jy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.020.i30.i.i.i.i, i64 16, i1 false)
  %i.jz = ptrtoint ptr %.sroa.08.020.i30.i.i.i.i to i64
  %i.ka = sub i64 %i.jz, %i.ib                    ; 2 uses
  %i.kb = icmp sgt i64 %i.ka, 0
  br i1 %i.kb, label %.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i44.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i45.i.i.i.i:           ; preds = %bb.ac
end_hunk_1
