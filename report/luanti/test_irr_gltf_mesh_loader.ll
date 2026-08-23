Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_gltf_mesh_loader?download=true
inline.NumInlined: 2161
inline.NumDeleted: 548
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZZL22CATCH2_INTERNAL_TEST_0vENK4$_11clEPKN5scene11SkinnedMesh6SJointE":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !785, !noalias !786
  %i.ao = icmp ne ptr %i.an, null
  %i.ap = zext i1 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %i.aq, align 8, !tbaa !52, !alias.scope !786
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !54, !alias.scope !786
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIRPKN5scene12WeightBufferERKDnEE, i64 16), ptr %7, align 8, !tbaa !36, !alias.scope !786
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.b, ptr %i.as, align 8, !tbaa !789, !alias.scope !786
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @.str.188, ptr %i.at, align 8, !tbaa !96, !alias.scope !786
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !97, !alias.scope !786
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.c, ptr %i.au, align 8, !tbaa !634, !alias.scope !786
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(10) %7)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.s

bb.n:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.ak

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.av, %bb.n ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.aj

bb.q:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %.1 = extractvalue { ptr, i32 } %i.ax, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ay = call ptr @__cxa_begin_catch(ptr %.1) #29 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r, %bb.m
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !24, !range !32, !noundef !33
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5Catch16AssertionHandlerD2Ev.exit39, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34, !nonnull !33, !align !35 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit39 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #31
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit39:           ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !237 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj), !inline_history !164 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(28) %i.bn), !inline_history !164 ; 2 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit39
  %i.bt = shl nuw nsw i64 %i.bs, 2                ; 3 uses
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #33
          to label %.noexc unwind label %bb.ab    ; 5 uses

.noexc:                                           ; preds = %bb.w
  store ptr %i.bu, ptr %0, align 8, !tbaa !697
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bs ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !700
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bu, i8 0, i64 %i.bt, i1 false), !tbaa !169
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  %i.by = ptrtoint ptr %i.bv to i64
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit39, %.noexc
  %i.bz = phi i64 [ %i.by, %.noexc ], [ 0, %_ZN5Catch16AssertionHandlerD2Ev.exit39 ]
  %i.ca = phi ptr [ %i.bu, %.noexc ], [ null, %_ZN5Catch16AssertionHandlerD2Ev.exit39 ] ; 4 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.noexc ], [ null, %_ZN5Catch16AssertionHandlerD2Ev.exit39 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.cb, align 8, !tbaa !791
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 388
  br label %bb.x

bb.x:                                             ; preds = %_ZSt4findIPKttET_S2_S2_RKT0_.exit.thread, %.loopexit
  %.0 = phi i64 [ 0, %.loopexit ], [ %i.dq, %_ZSt4findIPKttET_S2_S2_RKT0_.exit.thread ] ; 4 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !237 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %.noexc40 unwind label %bb.ac, !inline_history !164 ; 2 uses

.noexc40:                                         ; preds = %bb.x
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(28) %i.ch)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit unwind label %bb.ac, !inline_history !164

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit:   ; preds = %.noexc40
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp samesign ult i64 %.0, %i.cm
  br i1 %i.cn, label %bb.ad, label %bb.ai

bb.y:                                             ; preds = %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.ak

bb.z:                                             ; preds = %bb.s, %bb.r
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.pn33 = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.co, %bb.y ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ab:                                            ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ac:                                            ; preds = %.noexc40, %bb.x
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ah

bb.ad:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !785
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !792
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %.0 ; 7 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load i16, ptr %i.cc, align 2, !tbaa !191 ; 4 uses
  %i.cy = load i16, ptr %i.cv, align 2, !tbaa !191
  %i.cz = icmp eq i16 %i.cy, %i.cx
  br i1 %i.cz, label %_ZSt4findIPKttET_S2_S2_RKT0_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 2 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !191
  %i.dc = icmp eq i16 %i.db, %i.cx
  br i1 %i.dc, label %_ZSt4findIPKttET_S2_S2_RKT0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !191
  %i.df = icmp eq i16 %i.de, %i.cx
  br i1 %i.df, label %_ZSt4findIPKttET_S2_S2_RKT0_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 6 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !191
  %i.di = icmp eq i16 %i.dh, %i.cx
  br i1 %i.di, label %_ZSt4findIPKttET_S2_S2_RKT0_.exit, label %_ZSt4findIPKttET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKttET_S2_S2_RKT0_.exit:                ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ad
  %.028.i.i.i = phi ptr [ %i.dd, %bb.af ], [ %i.dg, %bb.ag ], [ %i.da, %bb.ae ], [ %i.cv, %bb.ad ]
  %i.dj = ptrtoint ptr %.028.i.i.i to i64
  %i.dk = ptrtoint ptr %i.cv to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 1
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !169
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.0
  store float %i.do, ptr %i.dp, align 4, !tbaa !169
  br label %_ZSt4findIPKttET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKttET_S2_S2_RKT0_.exit.thread:         ; preds = %bb.ag, %_ZSt4findIPKttET_S2_S2_RKT0_.exit
  %i.dq = add nuw nsw i64 %.0, 1
  br label %bb.x, !llvm.loop !795

bb.ah:                                            ; preds = %bb.ac
  %i.dr = ptrtoint ptr %i.ca to i64
  %i.ds = sub i64 %i.bz, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ds) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ai:                                            ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ah, %bb.ac, %bb.ab, %bb.aa
  %.pn35.pn = phi { ptr, i32 } [ %.pn33, %bb.aa ], [ %i.cq, %bb.ab ], [ %i.cr, %bb.ac ], [ %i.cr, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.p
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  resume { ptr, i32 } %.pn35.pn.pn

bb.ak:                                            ; preds = %bb.y, %bb.n
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL22CATCH2_INTERNAL_TEST_0vENK4$_12clEjff"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i32 noundef range(i32 0, 10) %0, float noundef nofpclass(nan inf nzero sub nnorm) %1, float noundef nofpclass(nan inf nzero sub nnorm) %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %5 = alloca %"class.Catch::BinaryExpr.175", align 8 ; 11 uses
  %6 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %7 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %8 = alloca %"class.Catch::BinaryExpr.175", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str, ptr %4, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 457, ptr %i.a, align 8, !tbaa !20
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.13, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.196, i64 41, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %i.c = load ptr, ptr %.0.val, align 8, !tbaa !697
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load float, ptr %i.d, align 4, !tbaa !169 ; 2 uses
  %i.f = fcmp nsz oeq float %i.e, %1
  %i.g = zext i1 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !52, !alias.scope !796
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %i.g, ptr %i.i, align 1, !tbaa !54, !alias.scope !796
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIffEE, i64 16), ptr %5, align 8, !tbaa !36, !alias.scope !796
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.e, ptr %i.j, align 4, !tbaa !799, !alias.scope !796
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.176, ptr %i.k, align 8, !tbaa !96, !alias.scope !796
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !97, !alias.scope !796
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %1, ptr %i.l, align 8, !tbaa !801, !alias.scope !796
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.o = call ptr @__cxa_begin_catch(ptr %i.n) #29 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d, %bb.b
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34, !nonnull !33, !align !35 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr @.str, ptr %7, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 458, ptr %i.z, align 8, !tbaa !20
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr nonnull @.str.13, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull @.str.197, i64 39, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.aa = load ptr, ptr %.8.val, align 8, !tbaa !697
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.b
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !169 ; 2 uses
  %i.ad = fcmp nsz oeq float %i.ac, %2
  %i.ae = zext i1 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %i.af, align 8, !tbaa !52, !alias.scope !802
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 9
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !54, !alias.scope !802
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIffEE, i64 16), ptr %8, align 8, !tbaa !36, !alias.scope !802
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %i.ac, ptr %i.ah, align 4, !tbaa !799, !alias.scope !802
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.176, ptr %i.ai, align 8, !tbaa !96, !alias.scope !802
  %.sroa.2.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i21, align 8, !tbaa !97, !alias.scope !802
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 32
  store float %2, ptr %i.aj, align 8, !tbaa !801, !alias.scope !802
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(10) %8)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.p

bb.k:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.x

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.pn = phi { ptr, i32 } [ %i.al, %bb.l ], [ %i.ak, %bb.k ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.w

bb.n:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ao = call ptr @__cxa_begin_catch(ptr %i.an) #29 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o, %bb.j
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 59
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24, !range !32, !noundef !33
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5Catch16AssertionHandlerD2Ev.exit22, label %bb.r

end_hunk_0
