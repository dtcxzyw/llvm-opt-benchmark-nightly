Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/vecmath_test?download=true
inline.NumInlined: 2858
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN28Vector_CoordinateSystem_Test8TestBodyEv:bb.a
  %foldExtExtBinop241 = fmul <2 x float> %.sroa.05.0.copyload, %.sroa.05.0.copyload
  %i.ij = extractelement <2 x float> %foldExtExtBinop241, i64 0
  %.sroa.01.4.vec.extract.i.i56.i139 = extractelement <2 x float> %.sroa.05.0.copyload, i64 1 ; 4 uses
  %i.ik = fmul float %.sroa.01.4.vec.extract.i.i56.i139, %.sroa.01.4.vec.extract.i.i56.i139
  %i.il = fadd float %i.ij, %i.ik
  %i.im = fadd float %i.ht, %i.il
  %sqrt.i57.i140 = call noundef float @llvm.sqrt.f32(float %i.im)
  %i.in = fadd float %sqrt.i57.i140, -1.000000e+00 ; 2 uses
  %i.io = fmul float %i.in, %i.in
  %i.ip = fadd float %i.ii, %i.io
  %i.iq = fmul float %i.he, %.sroa.01.0.vec.extract.i.i52.i135
  %i.ir = fmul float %i.hg, %.sroa.01.4.vec.extract.i.i53.i136
  %i.is = fadd float %i.iq, %i.ir
  %i.it = fmul float %i.gx, %i.hs
  %i.iu = fadd float %i.it, %i.is                 ; 2 uses
  %i.iv = fmul float %i.iu, %i.iu
  %i.iw = fadd float %i.iv, %i.ip
  %foldExtExtBinop243 = fmul <2 x float> %.sroa.07.0.copyload, %.sroa.05.0.copyload
  %i.ix = extractelement <2 x float> %foldExtExtBinop243, i64 0
  %i.iy = fmul float %.sroa.01.4.vec.extract.i.i53.i136, %.sroa.01.4.vec.extract.i.i56.i139
  %i.iz = fadd float %i.ix, %i.iy
  %i.ja = fmul float %i.hg, %i.hs
  %i.jb = fsub float %i.iz, %i.ja                 ; 2 uses
  %i.jc = fmul float %i.jb, %i.jb
  %i.jd = fadd float %i.jc, %i.iw
  %i.je = fmul float %i.he, %.sroa.01.0.vec.extract.i.i55.i138
  %i.jf = fmul float %i.hg, %.sroa.01.4.vec.extract.i.i56.i139
  %i.jg = fadd float %i.je, %i.jf
  %i.jh = fmul float %i.gx, %i.hg
  %i.ji = fsub float %i.jg, %i.jh                 ; 2 uses
  %i.jj = fmul float %i.ji, %i.ji
  %i.jk = fadd float %i.jj, %i.jd
  %i.jl = fdiv float %i.jk, 6.000000e+00
  store float %i.jl, ptr %i.e, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store double 1.000000e-10, ptr %i.f, align 8, !tbaa !49
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.jm = load i8, ptr %17, align 8, !tbaa !21, !range !22, !noundef !23
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.df, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cs unwind label %bb.da

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.jo = load ptr, ptr %i.ga, align 8, !tbaa !24 ; 2 uses
  %.not.i.i141 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i141, label %_ZNK7testing15AssertionResult15failure_messageEv.exit142, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit142

_ZNK7testing15AssertionResult15failure_messageEv.exit142: ; preds = %bb.ct, %bb.cs
  %i.jq = phi ptr [ %i.jp, %bb.ct ], [ @.str.218, %bb.cs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 214, ptr noundef %i.jq)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit142
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cv unwind label %bb.dc

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.jr = load ptr, ptr %18, align 8, !tbaa !32
  %.not.i.i.i143 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i143, label %_ZN7testing7MessageD2Ev.exit145, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.js = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i144 unwind label %bb.cz

.noexc.i.i144:                                    ; preds = %bb.cw
  br i1 %i.js, label %bb.cx, label %_ZN7testing7MessageD2Ev.exit145

bb.cx:                                            ; preds = %.noexc.i.i144
  %i.jt = load ptr, ptr %18, align 8, !tbaa !32   ; 3 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %_ZN7testing7MessageD2Ev.exit145, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jv = load ptr, ptr %i.jt, align 8, !tbaa !34
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(128) %i.jt) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit145

bb.cz:                                            ; preds = %bb.cw
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #26
  unreachable

_ZN7testing7MessageD2Ev.exit145:                  ; preds = %bb.cv, %.noexc.i.i144, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.df

bb.da:                                            ; preds = %bb.cr
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit142
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cu
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #25
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn = phi { ptr, i32 } [ %i.kc, %bb.dc ], [ %i.kb, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #25
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.dd ], [ %i.ka, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.dk

bb.df:                                            ; preds = %bb.cq, %_ZN7testing7MessageD2Ev.exit145
  %i.kd = load ptr, ptr %i.ga, align 8, !tbaa !24
  %.not.i.i.i146 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i146, label %_ZN7testing15AssertionResultD2Ev.exit151, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ke = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i147 unwind label %bb.dj

.noexc.i.i147:                                    ; preds = %bb.dg
  br i1 %i.ke, label %bb.dh, label %_ZN7testing15AssertionResultD2Ev.exit151

bb.dh:                                            ; preds = %.noexc.i.i147
  %i.kf = load ptr, ptr %i.ga, align 8, !tbaa !24 ; 4 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %_ZN7testing15AssertionResultD2Ev.exit151, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !29 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i148: ; preds = %bb.di
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !35
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i149: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i148
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit151

bb.dj:                                            ; preds = %bb.dg
  %i.km = landingpad { ptr, i32 }
          catch ptr null
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  call void @__clang_call_terminate(ptr %i.kn) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit151:         ; preds = %bb.df, %.noexc.i.i147, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.ko = add nuw nsw i32 %.075185, 1             ; 2 uses
  %exitcond186.not = icmp eq i32 %i.ko, 1000
  br i1 %exitcond186.not, label %bb.cp, label %bb.cq, !llvm.loop !102

bb.dk:                                            ; preds = %bb.de, %bb.bx, %bb.bj
  %.pn85.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn, %bb.bj ], [ %.pn79.pn, %bb.bx ], [ %.pn.pn, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26Bounds2_IteratorBasic_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %1 = alloca [4 x %"class.pbrt::Point2.23"], align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %2 = alloca %"class.pbrt::Point2.23", align 8   ; 5 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %7 = alloca %"class.testing::Message", align 8  ; 10 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store <4 x i64> <i64 4294967296, i64 4294967297, i64 8589934592, i64 8589934593>, ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.a

_ZNK4pbrt16Bounds2iIteratorneERKS0_.exit:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.a:                                             ; preds = %.lr.ph, %_ZN7testing15AssertionResultD2Ev.exit33
  %.sroa.037.0.extract.trunc55 = phi i32 [ 0, %.lr.ph ], [ %.sroa.037.0.extract.trunc, %_ZN7testing15AssertionResultD2Ev.exit33 ]
  %.sroa.037.054 = phi i64 [ 4294967296, %.lr.ph ], [ %.sroa.037.1, %_ZN7testing15AssertionResultD2Ev.exit33 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 %.sroa.037.054, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 4, ptr %i.b, align 8, !tbaa !50
  call void @_ZN7testing8internal11CmpHelperLTIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.e = load i8, ptr %3, align 8, !tbaa !21, !range !22, !noundef !23
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.g, null
  br i1 %.not.i.i20, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.h, %bb.d ], [ @.str.218, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 223, ptr noundef %i.i)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.j = load ptr, ptr %4, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.j

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.k, label %bb.h, label %_ZN7testing7MessageD2Ev.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.l = load ptr, ptr %4, align 8, !tbaa !32     ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(128) %i.l) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.f, %.noexc.i.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.p

bb.k:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.u, %bb.m ], [ %i.t, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ap

bb.p:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !24
  %.not.i.i.i21 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i21, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i22 unwind label %bb.t

.noexc.i.i22:                                     ; preds = %bb.q
  br i1 %i.w, label %bb.r, label %_ZN7testing15AssertionResultD2Ev.exit

bb.r:                                             ; preds = %.noexc.i.i22
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !24   ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !35
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %.noexc.i.i22, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !36
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ah
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt6Point2IiEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, ptr noundef nonnull align 4 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(8) %2)
  %i.aj = load i8, ptr %6, align 8, !tbaa !21, !range !22, !noundef !23
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.al = load ptr, ptr %7, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.104, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit unwind label %bb.ae ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit:       ; preds = %bb.v
  %i.ao = load ptr, ptr %7, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !36
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i32 noundef %i.aq)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit unwind label %bb.ae ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !24  ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.as, null
  br i1 %.not.i.i23, label %_ZNK7testing15AssertionResult15failure_messageEv.exit24, label %bb.w

bb.w:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit24

_ZNK7testing15AssertionResult15failure_messageEv.exit24: ; preds = %bb.w, %_ZN7testing7MessagelsIiEERS0_RKT_.exit
  %i.au = phi ptr [ %i.at, %bb.w ], [ @.str.218, %_ZN7testing7MessagelsIiEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 224, ptr noundef %i.au)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit24
end_hunk_0
begin_hunk_1_@_ZN18Bounds3_Union_Test8TestBodyEv:bb.a
  %i.bx = fcmp ogt <2 x float> %.sroa.020.0.copyload.i71, <float -1.500000e+01, float 1.000000e+01>
  %i.by = select <2 x i1> %i.bx, <2 x float> <float -1.500000e+01, float 1.000000e+01>, <2 x float> %.sroa.020.0.copyload.i71
  %i.bz = fcmp ogt float %.sroa.221.0.copyload.i73, 3.000000e+01
  %.sroa.speculated.i.i81 = select i1 %i.bz, float 3.000000e+01, float %.sroa.221.0.copyload.i73
  store <2 x float> %i.by, ptr %11, align 8, !alias.scope !113
  store float %.sroa.speculated.i.i81, ptr %i.bu, align 8, !alias.scope !113
  %.sroa.07.0.copyload.i84 = load <2 x float>, ptr %i.a, align 4, !tbaa !15, !noalias !113 ; 2 uses
  %.sroa.28.0.copyload.i86 = load float, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !15, !noalias !113 ; 2 uses
  %i.ca = fcmp olt <2 x float> %.sroa.07.0.copyload.i84, <float -1.500000e+01, float 1.000000e+01>
  %i.cb = select <2 x i1> %i.ca, <2 x float> <float -1.500000e+01, float 1.000000e+01>, <2 x float> %.sroa.07.0.copyload.i84
  %i.cc = fcmp olt float %.sroa.28.0.copyload.i86, 3.000000e+01
  %.sroa.speculated.i31.i94 = select i1 %i.cc, float 3.000000e+01, float %.sroa.28.0.copyload.i86
  store <2 x float> %i.cb, ptr %i.bv, align 4, !alias.scope !113
  store float %.sroa.speculated.i31.i94, ptr %i.bw, align 4, !alias.scope !113
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store <2 x float> <float -1.500000e+01, float -1.000000e+01>, ptr %13, align 8
  %.sroa.212.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 12
  store <2 x float> <float 0.000000e+00, float 2.000000e+01>, ptr %i.cd, align 4
  call void @llvm.masked.store.v4f32.p0(<4 x float> <float 5.000000e+00, float poison, float poison, float 3.000000e+01>, ptr align 8 %.sroa.212.0..sroa_idx.i104, <4 x i1> <i1 true, i1 false, i1 false, i1 true>)
  call void @_ZN7testing8internal11CmpHelperEQIN4pbrt7Bounds3IfEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.146, ptr noundef nonnull align 4 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(24) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.ce = load i8, ptr %12, align 8, !tbaa !21, !range !22, !noundef !23
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.bb, label %bb.an

bb.an:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !24 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i109, label %_ZNK7testing15AssertionResult15failure_messageEv.exit110, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit110

_ZNK7testing15AssertionResult15failure_messageEv.exit110: ; preds = %bb.ap, %bb.ao
  %i.cj = phi ptr [ %i.ci, %bb.ap ], [ @.str.218, %bb.ao ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 314, ptr noundef %i.cj)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit110
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.ck = load ptr, ptr %14, align 8, !tbaa !32
  %.not.i.i.i111 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i111, label %_ZN7testing7MessageD2Ev.exit113, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cl = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i112 unwind label %bb.av

.noexc.i.i112:                                    ; preds = %bb.as
  br i1 %i.cl, label %bb.at, label %_ZN7testing7MessageD2Ev.exit113

bb.at:                                            ; preds = %.noexc.i.i112
  %i.cm = load ptr, ptr %14, align 8, !tbaa !32   ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN7testing7MessageD2Ev.exit113, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit113

bb.av:                                            ; preds = %bb.as
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #26
  unreachable

_ZN7testing7MessageD2Ev.exit113:                  ; preds = %bb.ar, %.noexc.i.i112, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.bb

bb.aw:                                            ; preds = %bb.an
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit110
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.aq
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn21 = phi { ptr, i32 } [ %i.cv, %bb.ay ], [ %i.cu, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.az ], [ %i.ct, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.bg

bb.bb:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70, %_ZN7testing7MessageD2Ev.exit113
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !24
  %.not.i.i.i114 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i114, label %_ZN7testing15AssertionResultD2Ev.exit119, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cy = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i115 unwind label %bb.bf

.noexc.i.i115:                                    ; preds = %bb.bc
  br i1 %i.cy, label %bb.bd, label %_ZN7testing15AssertionResultD2Ev.exit119

bb.bd:                                            ; preds = %.noexc.i.i115
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !24 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN7testing15AssertionResultD2Ev.exit119, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !29 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i116: ; preds = %bb.be
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !35
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i117: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i116
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit119

bb.bf:                                            ; preds = %bb.bc
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit119:         ; preds = %bb.bb, %.noexc.i.i115, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.bg:                                            ; preds = %bb.ba, %bb.ah, %bb.o
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.ba ], [ %.pn18.pn, %bb.ah ], [ %.pn.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22EqualArea_Randoms_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 9 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 9 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit76
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit76
  %.sroa.079.094 = phi i64 [ 429496729600, %bb.a ], [ %.sroa.079.0.insert.ext, %_ZN7testing15AssertionResultD2Ev.exit76 ]
  %.sroa.8.093 = phi i64 [ 6364136223846793006, %bb.a ], [ %i.k, %_ZN7testing15AssertionResultD2Ev.exit76 ] ; 2 uses
  %i.h = mul i64 %.sroa.8.093, 6364136223846793005
  %i.i = add i64 %i.h, 1                          ; 2 uses
  %i.j = mul i64 %i.i, 6364136223846793005
  %i.k = add i64 %i.j, 1
  %i.l = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %i.m = insertelement <2 x i64> %i.l, i64 %.sroa.8.093, i64 1 ; 3 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 45)
  %i.o = lshr <2 x i64> %i.m, splat (i64 27)
  %i.p = xor <2 x i64> %i.n, %i.o
  %i.q = trunc <2 x i64> %i.p to <2 x i32>        ; 2 uses
  %i.r = lshr <2 x i64> %i.m, splat (i64 59)
  %i.s = trunc nuw nsw <2 x i64> %i.r to <2 x i32>
  %i.t = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.q, <2 x i32> %i.q, <2 x i32> %i.s)
  %i.u = uitofp <2 x i32> %i.t to <2 x float>
  %i.v = fmul nnan <2 x float> %i.u, splat (float f0x2F800000) ; 3 uses
  %i.w = fcmp olt <2 x float> %i.v, splat (float f0x3F7FFFFF) ; 2 uses
  %i.x = extractelement <2 x i1> %i.w, i64 1
  %i.y = extractelement <2 x float> %i.v, i64 1
  %i.z = extractelement <2 x i1> %i.w, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0
  %i.ab = fmul nnan float %i.y, 2.000000e+00
  %i.ac = fsub float 1.000000e+00, %i.ab
  %i.ad = select i1 %i.x, float %i.ac, float f0xBF7FFFFE ; 5 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = fsub float 1.000000e+00, %i.ae          ; 2 uses
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  %.sroa.speculated.i.i56 = select i1 %i.ag, float %i.af, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i56) ; 2 uses
  %i.ah = fmul nnan float %i.aa, f0x40C90FDB
  %i.ai = select i1 %i.z, float %i.ah, float f0x40C90FDA ; 2 uses
  %i.aj = call noundef float @cosf(float noundef %i.ai) #25
  %i.ak = fmul float %sqrt.i.i, %i.aj             ; 3 uses
  %i.al = call noundef float @sinf(float noundef %i.ai) #25
  %i.am = fmul float %sqrt.i.i, %i.al             ; 3 uses
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.ak, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.am, i64 1
  %i.an = call <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %.sroa.06.4.vec.insert.i, float %i.ad)
  %i.ao = call { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float> %i.an) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ao, 0 ; 4 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ao, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract, i64 0
  %foldExtExtBinop = fmul <2 x float> %.fca.0.extract, %.fca.0.extract
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract, i64 1 ; 3 uses
  %i.aq = fmul float %.sroa.01.4.vec.extract.i.i, %.sroa.01.4.vec.extract.i.i
  %i.ar = fadd float %i.ap, %i.aq
  %i.as = fmul float %.fca.1.extract, %.fca.1.extract
  %i.at = fadd float %i.as, %i.ar
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.at)
  %i.au = fpext float %sqrt.i to double           ; 3 uses
  %i.av = fcmp ogt double %i.au, 9.999000e-01
  br i1 %i.av, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i8 0, ptr %2, align 8, !tbaa !21
  store ptr null, ptr %i.c, align 8, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = fcmp olt double %i.au, 1.000100e+00     ; 2 uses
  %i.ax = zext i1 %i.aw to i8
  store i8 %i.ax, ptr %2, align 8, !tbaa !21
  store ptr null, ptr %i.c, align 8, !tbaa !24
  br i1 %i.aw, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr %3, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.az, double noundef %i.au)
          to label %_ZN7testing7MessagelsIfEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN7testing7MessagelsIfEERS0_RKT_.exit:           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.bb = load ptr, ptr %5, align 8, !tbaa !29
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 322, ptr noundef %i.bb)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  %i.bc = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.d
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.be = load i64, ptr %i.d, align 8, !tbaa !35
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bg = load ptr, ptr %3, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.m

.noexc.i.i:                                       ; preds = %bb.j
  br i1 %i.bh, label %bb.k, label %bb.v

bb.k:                                             ; preds = %.noexc.i.i
  %i.bi = load ptr, ptr %3, align 8, !tbaa !32    ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(128) %i.bi) #25, !inline_history !0
  br label %bb.v

bb.m:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #26
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %bb.f
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %_ZN7testing7MessagelsIfEERS0_RKT_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.q:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.h
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.r ], [ %i.bs, %bb.q ] ; 2 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.d
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.s
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !35
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.br, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.bq, %bb.o ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.t ], [ %i.bp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.av

bb.v:                                             ; preds = %bb.l, %bb.k, %.noexc.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !24
  %.not.i.i.i66 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i66, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.w

end_hunk_1
begin_hunk_2_@_ZN22EqualArea_Randoms_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ci = fmul float %i.ak, %.sroa.01.0.vec.extract.i.i
  %i.cj = fmul float %i.am, %.sroa.01.4.vec.extract.i.i
  %i.ck = fadd float %i.ci, %i.cj
  %i.cl = fmul float %i.ad, %.fca.1.extract
  %i.cm = fadd float %i.cl, %i.ck
  store float %i.cm, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store double 9.999000e-01, ptr %i.b, align 8, !tbaa !49
  call void @_ZN7testing8internal11CmpHelperGTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cn = load i8, ptr %6, align 8, !tbaa !21, !range !22, !noundef !23
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.aq, label %bb.aa

bb.aa:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %7, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, float noundef %i.ak, float noundef %i.am, float noundef %i.ad)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %1, align 8, !tbaa !29
  %i.cs = load i64, ptr %i.e, align 8, !tbaa !47
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef %i.cr, i64 noundef %i.cs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.ac ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.cu = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.f
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.cw = load i64, ptr %i.f, align 8, !tbaa !35
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ac:                                            ; preds = %.noexc
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.f
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.ac
  %i.db = load i64, ptr %i.f, align 8, !tbaa !35
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.df = phi ptr [ %i.de, %bb.ad ], [ @.str.218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 323, ptr noundef %i.df)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.dg = load ptr, ptr %7, align 8, !tbaa !32
  %.not.i.i.i68 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i68, label %_ZN7testing7MessageD2Ev.exit70, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i69 unwind label %bb.aj

.noexc.i.i69:                                     ; preds = %bb.ag
  br i1 %i.dh, label %bb.ah, label %_ZN7testing7MessageD2Ev.exit70

bb.ah:                                            ; preds = %.noexc.i.i69
  %i.di = load ptr, ptr %7, align 8, !tbaa !32    ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZN7testing7MessageD2Ev.exit70, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit70

bb.aj:                                            ; preds = %bb.ag
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #26
  unreachable

_ZN7testing7MessageD2Ev.exit70:                   ; preds = %bb.af, %.noexc.i.i69, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aq

bb.ak:                                            ; preds = %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.al:                                            ; preds = %bb.ab
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ae
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn51 = phi { ptr, i32 } [ %i.ds, %bb.an ], [ %i.dr, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

.body:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.ao
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.ao ], [ %i.dq, %bb.al ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %bb.ak
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %.body ], [ %i.dp, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.av

bb.aq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit70
  %i.dt = load ptr, ptr %i.g, align 8, !tbaa !24
  %.not.i.i.i71 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i71, label %_ZN7testing15AssertionResultD2Ev.exit76, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.du = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i72 unwind label %bb.au

.noexc.i.i72:                                     ; preds = %bb.ar
  br i1 %i.du, label %bb.as, label %_ZN7testing15AssertionResultD2Ev.exit76

bb.as:                                            ; preds = %.noexc.i.i72
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !24  ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN7testing15AssertionResultD2Ev.exit76, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73: ; preds = %bb.at
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !35
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i74: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit76

bb.au:                                            ; preds = %bb.ar
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit76:          ; preds = %bb.aq, %.noexc.i.i72, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %9 = add nuw nsw i64 %.sroa.079.094, 1
  %.sroa.079.0.insert.ext = and i64 %9, 4294967295 ; 2 uses
  %.not = icmp eq i64 %.sroa.079.0.insert.ext, 100
  br i1 %.not, label %bb.b, label %bb.c

bb.av:                                            ; preds = %bb.ap, %bb.u
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn, %bb.ap ], [ %.pn.pn.pn.pn, %bb.u ]
  resume { ptr, i32 } %.pn51.pn.pn.pn
}

declare <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float>, float) local_unnamed_addr #1

declare { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11CmpHelperGTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  store ptr %2, ptr %i.b, align 8, !tbaa !40
  %i.c = load float, ptr %3, align 4, !tbaa !15
  %i.d = fpext float %i.c to double
  %i.e = load double, ptr %4, align 8, !tbaa !49
  %i.f = fcmp olt double %i.e, %i.d
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(12) @.str.223)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA6_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(6) @.str.237)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @.str.225)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.r

_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.h
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA5_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(5) @.str.188)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.t

_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.j
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.o = load ptr, ptr %7, align 8, !tbaa !29     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !35
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.t = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !35
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.aa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.aa, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !24  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.u
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !35
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.t
  %.pn = phi { ptr, i32 } [ %i.an, %bb.t ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.ao, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.am, %bb.s ] ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !35
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #27
end_hunk_2
