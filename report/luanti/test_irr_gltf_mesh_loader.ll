Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_gltf_mesh_loader?download=true
inline.NumInlined: 2161
inline.NumDeleted: 548
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZZL22CATCH2_INTERNAL_TEST_0vENK3$_0clIN5scene15SSkinMeshBufferEEEDaPT_":bb.a
  %i.ip = call ptr @__cxa_begin_catch(ptr %.13) #29 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %bb.cy unwind label %bb.di

bb.cy:                                            ; preds = %bb.cx
  invoke void @__cxa_end_catch()
          to label %bb.cz unwind label %bb.dj

bb.cz:                                            ; preds = %bb.cy, %bb.ct
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %bb.da unwind label %bb.dj

bb.da:                                            ; preds = %bb.cz
  %i.iq = getelementptr inbounds nuw i8, ptr %28, i64 59
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !35, !range !36, !noundef !37
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.it = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !38, !nonnull !37, !align !39 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !41
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 160
  %i.ix = load ptr, ptr %i.iw, align 8
  invoke void %i.ix(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #31
  unreachable

bb.dd:                                            ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  store ptr @.str, ptr %33, align 8, !tbaa !23
  %i.ja = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 106, ptr %i.ja, align 8, !tbaa !24
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %32, ptr nonnull @.str.13, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr nonnull @.str.186, i64 41, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ak, i64 840 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  store <2 x float> splat (float 1.000000e+00), ptr %35, align 8, !tbaa !86
  %i.jc = getelementptr inbounds nuw i8, ptr %35, i64 8
  store float 1.000000e+00, ptr %i.jc, align 8, !tbaa !88
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.jd = load float, ptr %i.jb, align 4, !tbaa !89, !noalias !812
  %i.je = fcmp nsz oeq float %i.jd, 1.000000e+00
  br i1 %i.je, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ak, i64 844
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !90, !noalias !812
  %i.jh = fcmp nsz oeq float %i.jg, 1.000000e+00
  br i1 %i.jh, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ak, i64 848
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !88, !noalias !812
  %i.jk = fcmp nsz oeq float %i.jj, 1.000000e+00
  %i.jl = zext i1 %i.jk to i8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %i.jm = phi i8 [ 0, %bb.de ], [ 0, %bb.dd ], [ %i.jl, %bb.df ]
  %i.jn = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i8 1, ptr %i.jn, align 8, !tbaa !53, !alias.scope !812
  %i.jo = getelementptr inbounds nuw i8, ptr %34, i64 9
  store i8 %i.jm, ptr %i.jo, align 1, !tbaa !54, !alias.scope !812
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN4core8vector3dIfEES5_EE, i64 16), ptr %34, align 8, !tbaa !41, !alias.scope !812
  %i.jp = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %i.jb, ptr %i.jp, align 8, !tbaa !92, !alias.scope !812
  %i.jq = getelementptr inbounds nuw i8, ptr %34, i64 24
  store ptr @.str.176, ptr %i.jq, align 8, !tbaa !59, !alias.scope !812
  %.sroa.2.0..sroa_idx.i.i113 = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i113, align 8, !tbaa !60, !alias.scope !812
  %i.jr = getelementptr inbounds nuw i8, ptr %34, i64 40
  store ptr %35, ptr %i.jr, align 8, !tbaa !92, !alias.scope !812
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %32, ptr noundef nonnull align 8 dereferenceable(10) %34)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  br label %bb.dn

bb.di:                                            ; preds = %bb.cx
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dk unwind label %bb.dv

bb.dj:                                            ; preds = %bb.cz, %bb.cy
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj
  %.pn85 = phi { ptr, i32 } [ %i.jt, %bb.dj ], [ %i.js, %bb.di ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  br label %bb.du

bb.dl:                                            ; preds = %bb.dg
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  %.15 = extractvalue { ptr, i32 } %i.ju, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  %i.jv = call ptr @__cxa_begin_catch(ptr %.15) #29 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %bb.dm unwind label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  invoke void @__cxa_end_catch()
          to label %bb.dn unwind label %bb.ds

bb.dn:                                            ; preds = %bb.dm, %bb.dh
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %bb.do unwind label %bb.ds

bb.do:                                            ; preds = %bb.dn
  %i.jw = getelementptr inbounds nuw i8, ptr %32, i64 59
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !35, !range !36, !noundef !37
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %_ZN5Catch16AssertionHandlerD2Ev.exit115, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.jz = getelementptr inbounds nuw i8, ptr %32, i64 64
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !38, !nonnull !37, !align !39 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !41
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 160
  %i.kd = load ptr, ptr %i.kc, align 8
  invoke void %i.kd(ptr noundef nonnull align 8 dereferenceable(8) %i.ka, ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit115 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0
  call void @__clang_call_terminate(ptr %i.kf) #31
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit115:          ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  ret void

bb.dr:                                            ; preds = %bb.dl
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.dv

bb.ds:                                            ; preds = %bb.dn, %bb.dm
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %.pn88 = phi { ptr, i32 } [ %i.kh, %bb.ds ], [ %i.kg, %bb.dr ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  br label %bb.du

bb.du:                                            ; preds = %bb.ae, %bb.as, %bb.bg, %bb.bu, %bb.ci, %bb.cw, %bb.dk, %bb.dt, %bb.q
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %.pn88, %bb.dt ], [ %.pn85, %bb.dk ], [ %.pn82, %bb.cw ], [ %.pn79, %bb.ci ], [ %.pn76, %bb.bu ], [ %.pn73, %bb.bg ], [ %.pn70, %bb.as ], [ %.pn67, %bb.ae ]
  resume { ptr, i32 } %.pn88.pn.pn

bb.dv:                                            ; preds = %bb.dr, %bb.di, %bb.cu, %bb.cg, %bb.bs, %bb.be, %bb.aq, %bb.ac, %bb.o
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL22CATCH2_INTERNAL_TEST_0vENK3$_9clEmN4core8vector3dIfEE"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef range(i64 0, 22) %0, <2 x float> %1, float nofpclass(nan inf zero sub) %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %5 = alloca %"class.Catch::BinaryExpr.25", align 8 ; 11 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %7 = alloca %"class.core::vector3d", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str, ptr %4, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 193, ptr %i.a, align 8, !tbaa !24
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.13, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.187, i64 92, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.b = load ptr, ptr %.0.val, align 8, !tbaa !96 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %.8.val, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %0 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %8 = load <3 x float>, ptr %i.e, align 4, !tbaa !86 ; 5 uses
  %i.i = load float, ptr %i.e, align 4, !tbaa !89
  %i.j = load <2 x float>, ptr %i.c, align 4, !tbaa !86
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !86
  %9 = shufflevector <3 x float> %8, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fmul nsz <2 x float> %9, %i.k
  %i.m = shufflevector <3 x float> %8, <3 x float> poison, <2 x i32> zeroinitializer
  %i.n = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.j, <2 x float> %i.l)
  %i.o = load <2 x float>, ptr %i.g, align 4, !tbaa !86
  %10 = shufflevector <3 x float> %8, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.p = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.o, <2 x float> %i.n)
  %i.q = load <2 x float>, ptr %i.h, align 4, !tbaa !86
  %i.r = fadd nsz <2 x float> %i.p, %i.q          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load float, ptr %i.s, align 4, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.v = load float, ptr %i.u, align 4, !tbaa !86
  %11 = extractelement <3 x float> %8, i64 1
  %i.w = fmul nsz float %11, %i.v
  %i.x = call nsz float @llvm.fmuladd.f32(float %i.i, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.z = load float, ptr %i.y, align 4, !tbaa !86
  %12 = extractelement <3 x float> %8, i64 2
  %i.aa = call nsz float @llvm.fmuladd.f32(float %12, float %i.z, float %i.x)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !86
  %i.ad = fadd nsz float %i.ac, %i.aa             ; 2 uses
  store <2 x float> %i.r, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ad, ptr %.sroa.28.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.ae = fmul nnan nsz float %2, 3.000000e+00
  %i.af = fmul nsz <2 x float> %1, <float 1.000000e+00, float 2.000000e+00>
  %i.ag = fadd nsz <2 x float> %i.af, <float 4.000000e+00, float 5.000000e+00> ; 3 uses
  %i.ah = fadd nsz float %i.ae, -6.000000e+00     ; 2 uses
  store <2 x float> %i.ag, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.ah, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ai = extractelement <2 x float> %i.r, i64 0
  %i.aj = extractelement <2 x float> %i.ag, i64 0
  %i.ak = fcmp nsz oeq float %i.ai, %i.aj
  %i.al = fcmp oeq <2 x float> %i.r, %i.ag
  %i.am = extractelement <2 x i1> %i.al, i64 1
  %or.cond = select i1 %i.ak, i1 %i.am, i1 false
  %i.an = fcmp nsz oeq float %i.ad, %i.ah
  %narrow = select i1 %or.cond, i1 %i.an, i1 false
  %i.ao = zext i1 %narrow to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 1, ptr %i.ap, align 8, !tbaa !53, !alias.scope !815
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !54, !alias.scope !815
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN4core8vector3dIfEES5_EE, i64 16), ptr %5, align 8, !tbaa !41, !alias.scope !815
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.ar, align 8, !tbaa !92, !alias.scope !815
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @.str.176, ptr %i.as, align 8, !tbaa !59, !alias.scope !815
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !60, !alias.scope !815
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %7, ptr %i.at, align 8, !tbaa !92, !alias.scope !815
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %.1 = extractvalue { ptr, i32 } %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.av = call ptr @__cxa_begin_catch(ptr %.1) #29 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.b
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !35, !range !36, !noundef !37
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !38, !nonnull !37, !align !39 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #31
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.i:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn19 = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %i.bg, %bb.i ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn19

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #31
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL22CATCH2_INTERNAL_TEST_0vENK4$_11clEPKN5scene11SkinnedMesh6SJointE"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr %.0.val.0.val, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::UnaryExpr.154", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %6 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %7 = alloca %"class.Catch::BinaryExpr.133", align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.d = load ptr, ptr %.0.val.0.val, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %.0.val.0.val, i32 noundef 0) ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene15SSkinMeshBufferE, i64 24)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.g, %bb.b ], [ null, %bb.c ]
  store ptr %i.k, ptr %i.a, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str, ptr %4, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 437, ptr %i.l, align 8, !tbaa !24
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.5, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.193, i64 3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !96, !noalias !821
  %i.n = icmp ne ptr %i.m, null
  %i.o = zext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.p, align 8, !tbaa !53, !alias.scope !821
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.o, ptr %i.q, align 1, !tbaa !54, !alias.scope !821
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIRPKN5scene15SSkinMeshBufferEEE, i64 16), ptr %2, align 8, !tbaa !41, !alias.scope !821
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.r, align 8, !tbaa !98, !alias.scope !821
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %i.t) #29 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g, %bb.e
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35, !range !36, !noundef !37
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38, !nonnull !37, !align !39 ; 2 uses
end_hunk_0
