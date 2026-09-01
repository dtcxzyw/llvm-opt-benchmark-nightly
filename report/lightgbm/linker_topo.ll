Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linker_topo?download=true
inline.NumInlined: 226
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8LightGBM19RecursiveHalvingMapC2EiNS_24RecursiveHalvingNodeTypeEb:bb.a
  br i1 %.not.i.i41, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40
  store i32 -1, ptr %i.dd, align 4, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store ptr %i.df, ptr %i.r, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit40
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !20  ; 4 uses
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 5 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775804
  br i1 %i.dk, label %bb.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc48 unwind label %.loopexit.split-lp85

.noexc48:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42: ; preds = %bb.x
  %i.dl = ashr exact i64 %i.dj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i43 = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i43, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = tail call i64 @llvm.umin.i64(i64 %i.dm, i64 2305843009213693951)
  %i.dp = select i1 %i.dn, i64 2305843009213693951, i64 %i.do ; 3 uses
  %.not.i.i.i.i44 = icmp ne i64 %i.dp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i44)
  %i.dq = shl nuw nsw i64 %i.dp, 2
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #11
          to label %.noexc49 unwind label %.loopexit84 ; 4 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store i32 -1, ptr %i.ds, align 4, !tbaa !19
  %i.dt = icmp sgt i64 %i.dj, 0
  br i1 %i.dt, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45

bb.z:                                             ; preds = %.noexc49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr align 4 %i.dg, i64 %i.dj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45: ; preds = %bb.z, %.noexc49
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %.not.i17.i.i.i46 = icmp eq ptr %i.dg, null
  br i1 %.not.i17.i.i.i46, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dx) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i45
  store ptr %i.dr, ptr %i.f, align 8, !tbaa !20
  store ptr %i.du, ptr %i.r, align 8, !tbaa !17
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.dy, ptr %i.s, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50

_ZNSt6vectorIiSaIiEE9push_backEOi.exit50:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i47, %bb.w
  %i.dz = add nuw nsw i32 %.0898, 1               ; 2 uses
  %i.ea = load i32, ptr %0, align 8, !tbaa !25
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.b, label %.loopexit, !llvm.loop !31

.loopexit68:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit69:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i12
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp70:                             ; preds = %bb.j
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit74:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i22
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp75:                             ; preds = %bb.o
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit79:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i32
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp80:                             ; preds = %bb.t
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit84:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i42
  %lpad.loopexit86 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp85:                             ; preds = %bb.y
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit84, %.loopexit.split-lp85, %.loopexit79, %.loopexit.split-lp80, %.loopexit74, %.loopexit.split-lp75, %.loopexit69, %.loopexit.split-lp70, %.loopexit68, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp70 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit68 ], [ %lpad.loopexit71, %.loopexit69 ], [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit81, %.loopexit79 ], [ %lpad.loopexit86, %.loopexit84 ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp85 ]
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ab, %bb.ac
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

_ZNSt6vectorIiSaIiEED2Ev.exit52:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ad
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIiSaIiEED2Ev.exit54, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  tail call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit54

_ZNSt6vectorIiSaIiEED2Ev.exit54:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52, %bb.ae
  %i.er = load ptr, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIiSaIiEED2Ev.exit56, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54
  %i.es = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ev) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit56

_ZNSt6vectorIiSaIiEED2Ev.exit56:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54, %bb.af
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIiSaIiEED2Ev.exit58, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit58

_ZNSt6vectorIiSaIiEED2Ev.exit58:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56, %bb.ag
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit50, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19RecursiveHalvingMap9ConstructEii(ptr dead_on_unwind noalias writable sret(%"class.LightGBM::RecursiveHalvingMap") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.b ], [ -1, %bb.a ] ; 4 uses
  %.0131 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]  ; 5 uses
  %i.a = shl nuw i32 1, %.0131
  %.not = icmp sgt i32 %i.a, %2
  %i.b = add nuw nsw i32 %.0131, 1
  %indvars.iv.next = add nsw i32 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !32

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.0131, -1                   ; 4 uses
  %i.d = icmp samesign ugt i32 %.0131, 1          ; 3 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = add nsw i32 %.0131, -2
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.c
  %.sroa.30.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.0250.0.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 9 uses
  %i.f = shl nuw i32 1, %i.c                      ; 6 uses
  %i.g = icmp eq i32 %i.f, %2
  br i1 %i.g, label %bb.j, label %bb.m

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.0132302 = phi i32 [ 0, %.lr.ph ], [ %i.x, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.0250.0301 = phi ptr [ null, %.lr.ph ], [ %.sroa.0250.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %.sroa.27.0300 = phi ptr [ null, %.lr.ph ], [ %.sroa.27.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 6 uses
  %.sroa.30.0299 = phi ptr [ null, %.lr.ph ], [ %.sroa.30.1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.h = sub nsw i32 %i.e, %.0132302
  %i.i = shl nuw i32 1, %i.h                      ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.27.0300, %.sroa.30.0299
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %.sroa.27.0300, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %.sroa.27.0300 to i64
  %i.k = ptrtoint ptr %.sroa.0250.0301 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.n = ashr exact i64 %i.l, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951)
  %i.r = select i1 %i.p, i64 2305843009213693951, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #11
          to label %.noexc155 unwind label %.loopexit283 ; 4 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store i32 %i.i, ptr %i.u, align 4, !tbaa !19
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc155
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %.sroa.0250.0301, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %.noexc155
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0250.0301, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0301, i64 noundef %i.l) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.e
  %.sroa.30.1 = phi ptr [ %i.w, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.30.0299, %bb.e ] ; 2 uses
  %.pn281 = phi ptr [ %i.u, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.27.0300, %bb.e ]
  %.sroa.0250.1 = phi ptr [ %i.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0250.0301, %bb.e ] ; 2 uses
  %.sroa.27.1 = getelementptr inbounds nuw i8, ptr %.pn281, i64 4
  %i.x = add nuw nsw i32 %.0132302, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !33

.loopexit283:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

bb.j:                                             ; preds = %._crit_edge
  invoke void @_ZN8LightGBM19RecursiveHalvingMapC1EiNS_24RecursiveHalvingNodeTypeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.c, i32 noundef 0, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %bb.j
  br i1 %i.d, label %.lr.ph333, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit

.lr.ph333:                                        ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %wide.trip.count379 = zext i32 %indvars.iv to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

bb.l:                                             ; preds = %.lr.ph333, %bb.l
  %indvars.iv375 = phi i64 [ 0, %.lr.ph333 ], [ %indvars.iv.next376, %bb.l ] ; 7 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0250.0.lcssa, i64 %indvars.iv375 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19 ; 3 uses
  %i.al = sdiv i32 %1, %i.ak
  %i.am = and i32 %i.al, 1
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = sub nsw i32 0, %i.ak
  %i.ap = select i1 %i.an, i32 %i.ak, i32 %i.ao
  %.fr280 = freeze i32 %i.ap
  %i.aq = add i32 %.fr280, %1                     ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv375
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !19
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.at = srem i32 %1, %i.as
  %i.au = sub nsw i32 %1, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv375
  store i32 %i.au, ptr %i.av, align 4, !tbaa !19
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !19 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv375
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !19
  %i.ay = srem i32 %i.aq, %i.aw
  %i.az = sub nsw i32 %i.aq, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv375
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !19
  %i.bb = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv375
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !19
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count379
  br i1 %exitcond380.not, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread, label %bb.l, !llvm.loop !34

bb.m:                                             ; preds = %._crit_edge
  %3 = sub i32 %2, %i.f                           ; 3 uses
  %i.bd = sext i32 %2 to i64                      ; 8 uses
  %i.be = icmp slt i32 %2, 0
  br i1 %i.be, label %bb.n, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
          to label %.noexc157 unwind label %bb.p

.noexc157:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i156 = icmp eq i32 %2, 0            ; 2 uses
  br i1 %.not.i.i.i.i156, label %.preheader282, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.bf = shl nuw nsw i64 %i.bd, 2
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #11
          to label %.noexc158 unwind label %bb.p  ; 5 uses

.noexc158:                                        ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bd
  store i32 0, ptr %i.bg, align 4, !tbaa !35
  %i.bi = add nsw i64 %i.bd, -1                   ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph305.preheader, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc158
  %i.bk = getelementptr i8, ptr %i.bg, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bi, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !35
  br label %.lr.ph305.preheader

.lr.ph305.preheader:                              ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc158
  %i.bl = zext nneg i32 %2 to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bm, i1 false), !tbaa !35
  %i.bn = ptrtoint ptr %i.bh to i64
  br label %.preheader282

.preheader282:                                    ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.lr.ph305.preheader
  %.sroa.0237.0397 = phi ptr [ %i.bg, %.lr.ph305.preheader ], [ null, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 10 uses
  %.sroa.17.0395 = phi i64 [ %i.bn, %.lr.ph305.preheader ], [ 0, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.bo = icmp sgt i32 %3, 0
  br i1 %i.bo, label %.lr.ph307.preheader, label %._crit_edge308

.lr.ph307.preheader:                              ; preds = %.preheader282
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph307.preheader451, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph307.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl nuw nsw i64 %index, 1
  %i.bq = sub nsw i64 %i.bd, %i.bp
  %i.br = getelementptr [4 x i8], ptr %.sroa.0237.0397, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -16
  %i.bt = getelementptr i8, ptr %i.br, i64 -32
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.bs, align 4, !tbaa !35
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.bt, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block.a, label %vector.body, !llvm.loop !36

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n.a, label %._crit_edge308, label %.lr.ph307.preheader451

.lr.ph307.preheader451:                           ; preds = %.lr.ph307.preheader, %middle.block.a
  %indvars.iv344.ph.a = phi i64 [ 0, %.lr.ph307.preheader ], [ %n.vec, %middle.block.a ]
  br label %.lr.ph307

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

._crit_edge308:                                   ; preds = %.lr.ph307, %middle.block.a, %.preheader282
  %i.bw = sext i32 %i.f to i64                    ; 2 uses
  %i.bx = icmp eq i32 %i.c, 31
  br i1 %i.bx, label %bb.q, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %._crit_edge308
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
          to label %.noexc162 unwind label %bb.s

.noexc162:                                        ; preds = %bb.q
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge308
  %i.by = shl nuw nsw i64 %i.bw, 2                ; 10 uses
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #11
          to label %.noexc163 unwind label %bb.s  ; 12 uses

.noexc163:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  store i32 0, ptr %i.bz, align 4, !tbaa !19
  %i.ca = add nsw i64 %i.bw, -1                   ; 3 uses
  %i.cb = icmp eq i64 %i.ca, 0                    ; 2 uses
  br i1 %i.cb, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc163
  %i.cc = getelementptr i8, ptr %i.bz, i64 4
  %.idx.i.i.i.i.i.i.i160 = shl nuw nsw i64 %i.ca, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cc, i8 0, i64 %.idx.i.i.i.i.i.i.i160, i1 false), !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164

.lr.ph307:                                        ; preds = %.lr.ph307.preheader451, %.lr.ph307
  %indvars.iv344 = phi i64 [ %indvars.iv.next345.a, %.lr.ph307 ], [ %indvars.iv344.ph.a, %.lr.ph307.preheader451 ] ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv344, 1
  %i.ce = sub nsw i64 %i.bd, %i.cd
  %i.cf = getelementptr [4 x i8], ptr %.sroa.0237.0397, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  store i32 1, ptr %i.cg, align 4, !tbaa !35
  %i.ch = getelementptr i8, ptr %i.cf, i64 -4
  store i32 2, ptr %i.ch, align 4, !tbaa !35
  %indvars.iv.next345.a = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next345.a, %wide.trip.count
  br i1 %exitcond347.not, label %._crit_edge308, label %.lr.ph307, !llvm.loop !39

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164: ; preds = %.noexc163, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #11
          to label %.noexc167 unwind label %bb.t  ; 11 uses

.noexc167:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ci, i8 0, i64 %i.by, i1 false), !tbaa !19
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #11
          to label %.noexc174 unwind label %bb.u  ; 6 uses

.noexc174:                                        ; preds = %.noexc167
  store i32 0, ptr %i.cj, align 4, !tbaa !19
  br i1 %i.cb, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i170

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i170: ; preds = %.noexc174
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %.idx.i.i.i.i.i.i.i171 = shl nuw nsw i64 %i.ca, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ck, i8 0, i64 %.idx.i.i.i.i.i.i.i171, i1 false), !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176: ; preds = %.noexc174, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i170
  br i1 %.not.i.i.i.i156, label %._crit_edge312, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176
  %i.cl = shl nuw nsw i64 %i.bd, 2
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #11
          to label %.noexc182 unwind label %bb.v  ; 5 uses

.noexc182:                                        ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.bd
  store i32 0, ptr %i.cm, align 4, !tbaa !19
  %i.co = add nsw i64 %i.bd, -1                   ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph311.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i178

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i178: ; preds = %.noexc182
  %i.cq = getelementptr i8, ptr %i.cm, i64 4
  %.idx.i.i.i.i.i.i.i179 = shl nuw nsw i64 %i.co, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cq, i8 0, i64 %.idx.i.i.i.i.i.i.i179, i1 false), !tbaa !19
  br label %.lr.ph311.preheader

.lr.ph311.preheader:                              ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i178, %.noexc182
  %wide.trip.count352 = zext nneg i32 %2 to i64
  br label %.lr.ph311

._crit_edge312.loopexit:                          ; preds = %bb.x
  %i.cr = ptrtoint ptr %i.cn to i64
  br label %._crit_edge312

._crit_edge312:                                   ; preds = %._crit_edge312.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176
  %.sroa.11.0403 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176 ], [ %i.cr, %._crit_edge312.loopexit ] ; 2 uses
  %.sroa.0205.0401 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176 ], [ %i.cm, %._crit_edge312.loopexit ] ; 7 uses
  store i32 0, ptr %i.bz, align 4, !tbaa !19
  %i.cs = icmp sgt i32 %i.f, 1
  br i1 %i.cs, label %.lr.ph315.preheader, label %._crit_edge316

.lr.ph315.preheader:                              ; preds = %._crit_edge312
  %wide.trip.count357 = zext nneg i32 %i.f to i64
  %i.ct = add nsw i64 %wide.trip.count357, -1     ; 2 uses
  %xtraiter.a = and i64 %i.ct, 3                  ; 3 uses
  %i.cu = add nsw i32 %i.f, -2
  %i.cv = icmp ult i32 %i.cu, 3
  br i1 %i.cv, label %.lr.ph315.epil.preheader, label %.lr.ph315.preheader.new

.lr.ph315.preheader.new:                          ; preds = %.lr.ph315.preheader
  %unroll_iter = and i64 %i.ct, -4
  br label %.lr.ph315

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.q
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

bb.u:                                             ; preds = %.noexc167
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

bb.v:                                             ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit194

.lr.ph311:                                        ; preds = %.lr.ph311.preheader, %bb.x
  %indvars.iv348 = phi i64 [ 0, %.lr.ph311.preheader ], [ %indvars.iv.next349, %bb.x ] ; 4 uses
  %.0130309 = phi i32 [ 0, %.lr.ph311.preheader ], [ %.1, %bb.x ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0237.0397, i64 %indvars.iv348
  %i.db = load i32, ptr %i.da, align 4, !tbaa !35
  %switch = icmp ult i32 %i.db, 2
  br i1 %switch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph311
  %i.dc = add nsw i32 %.0130309, 1
  %i.dd = sext i32 %.0130309 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dd
  %i.df = trunc nuw nsw i64 %indvars.iv348 to i32
  store i32 %i.df, ptr %i.de, align 4, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph311, %bb.w
  %.1 = phi i32 [ %i.dc, %bb.w ], [ %.0130309, %.lr.ph311 ] ; 2 uses
  %i.dg = add nsw i32 %.1, -1                     ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv348
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !19
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !19
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !19
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next349, %wide.trip.count352
  br i1 %exitcond353.not, label %._crit_edge312.loopexit, label %.lr.ph311, !llvm.loop !40

._crit_edge316.loopexit.unr-lcssa:                ; preds = %.lr.ph315
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %._crit_edge316, label %.lr.ph315.epil.preheader

.lr.ph315.epil.preheader:                         ; preds = %._crit_edge316.loopexit.unr-lcssa, %.lr.ph315.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph315.preheader ], [ %i.eo, %._crit_edge316.loopexit.unr-lcssa ]
  %indvars.iv354.epil.init = phi i64 [ 1, %.lr.ph315.preheader ], [ %indvars.iv.next355.3, %._crit_edge316.loopexit.unr-lcssa ]
  %lcmp.mod456 = icmp ne i64 %xtraiter.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod456)
  br label %.lr.ph315.epil

.lr.ph315.epil:                                   ; preds = %.lr.ph315.epil, %.lr.ph315.epil.preheader
  %i.dm = phi i32 [ %.epil.init, %.lr.ph315.epil.preheader ], [ %i.dq, %.lr.ph315.epil ]
  %indvars.iv354.epil = phi i64 [ %indvars.iv354.epil.init, %.lr.ph315.epil.preheader ], [ %indvars.iv.next355.epil, %.lr.ph315.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph315.epil.preheader ], [ %epil.iter.next, %.lr.ph315.epil ]
  %i.dn = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv354.epil
  %i.do = getelementptr i8, ptr %i.dn, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !19
  %i.dq = add nsw i32 %i.dp, %i.dm                ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv354.epil
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !19
  %indvars.iv.next355.epil = add nuw nsw i64 %indvars.iv354.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter.a
  br i1 %epil.iter.cmp.not, label %._crit_edge316, label %.lr.ph315.epil, !llvm.loop !41

._crit_edge316:                                   ; preds = %._crit_edge316.loopexit.unr-lcssa, %.lr.ph315.epil, %._crit_edge312
  %i.ds = sext i32 %1 to i64                      ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0237.0397, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !35
  invoke void @_ZN8LightGBM19RecursiveHalvingMapC1EiNS_24RecursiveHalvingNodeTypeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.c, i32 noundef %i.du, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.aa

.lr.ph315:                                        ; preds = %.lr.ph315, %.lr.ph315.preheader.new
  %i.dv = phi i32 [ 0, %.lr.ph315.preheader.new ], [ %i.eo, %.lr.ph315 ]
  %indvars.iv354 = phi i64 [ 1, %.lr.ph315.preheader.new ], [ %indvars.iv.next355.3, %.lr.ph315 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph315.preheader.new ], [ %niter.next.3, %.lr.ph315 ]
  %i.dw = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv354
  %i.dx = getelementptr i8, ptr %i.dw, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !19
  %i.dz = add nsw i32 %i.dy, %i.dv                ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv354
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !19
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.eb = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv.next355
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !19
  %i.ee = add nsw i32 %i.ed, %i.dz                ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next355
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !19
  %indvars.iv.next355.1 = add nuw nsw i64 %indvars.iv354, 2 ; 2 uses
  %i.eg = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv.next355.1
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !19
  %i.ej = add nsw i32 %i.ei, %i.ee                ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next355.1
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !19
  %indvars.iv.next355.2 = add nuw nsw i64 %indvars.iv354, 3 ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv.next355.2
  %i.em = getelementptr i8, ptr %i.el, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !19
  %i.eo = add nsw i32 %i.en, %i.ej                ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next355.2
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !19
  %indvars.iv.next355.3 = add nuw nsw i64 %indvars.iv354, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge316.loopexit.unr-lcssa, label %.lr.ph315, !llvm.loop !43

bb.y:                                             ; preds = %._crit_edge316
  %i.eq = load i32, ptr %i.dt, align 4, !tbaa !35
  switch i32 %i.eq, label %bb.ad [
    i32 2, label %bb.z
    i32 1, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.er = add nsw i32 %1, -1
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.er, ptr %i.es, align 4, !tbaa !44
  br label %.loopexit

bb.aa:                                            ; preds = %._crit_edge316
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0205.0401, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit194, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = ptrtoint ptr %.sroa.0205.0401 to i64
  %i.ev = sub i64 %.sroa.11.0403, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0401, i64 noundef %i.ev) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit194

bb.ac:                                            ; preds = %bb.y
  %i.ew = add nsw i32 %1, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !44
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ac
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0205.0401, i64 %i.ds
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !19 ; 4 uses
  br i1 %i.d, label %.lr.ph331, label %.loopexit.thread

.lr.ph331:                                        ; preds = %bb.ad
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !20
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !20
  %wide.trip.count373 = zext i32 %indvars.iv to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph331, %._crit_edge327
  %indvars.iv369 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next370, %._crit_edge327 ] ; 7 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0250.0.lcssa, i64 %indvars.iv369 ; 5 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !19 ; 2 uses
  %i.fm = sdiv i32 %i.ez, %i.fl
  %i.fn = and i32 %i.fm, 1
  %i.fo = icmp eq i32 %i.fn, 0
  %i.fp = select i1 %i.fo, i32 1, i32 -1          ; 2 uses
  %i.fq = mul nsw i32 %i.fp, %i.fl
  %i.fr = add nsw i32 %i.fq, %i.ez
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !19
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv369
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !19
  %i.fw = load i32, ptr %i.fk, align 4, !tbaa !19 ; 2 uses
  %i.fx = sdiv i32 %i.ez, %i.fw                   ; 2 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = sext i32 %i.fw to i64
  %i.ga = mul nsw i64 %i.fy, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !19
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv369
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !19
  %i.ge = load i32, ptr %i.fk, align 4, !tbaa !19 ; 4 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph320, label %._crit_edge321

.lr.ph320:                                        ; preds = %bb.ae
  %i.gg = mul nsw i32 %i.ge, %i.fx
  %i.gh = sext i32 %i.gg to i64
  %wide.trip.count362 = zext nneg i32 %i.ge to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ci, i64 %i.gh ; 2 uses
  %min.iters.check431 = icmp ult i32 %i.ge, 8
  br i1 %min.iters.check431, label %scalar.ph430.preheader, label %vector.ph432

vector.ph432:                                     ; preds = %.lr.ph320
  %n.vec433 = and i64 %wide.trip.count362, 2147483640 ; 3 uses
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph432
  %index435 = phi i64 [ 0, %vector.ph432 ], [ %index.next440, %vector.body434 ] ; 2 uses
  %vec.phi436 = phi <4 x i32> [ zeroinitializer, %vector.ph432 ], [ %i.gk, %vector.body434 ]
  %vec.phi437 = phi <4 x i32> [ zeroinitializer, %vector.ph432 ], [ %i.gl, %vector.body434 ]
  %i.gi = getelementptr [4 x i8], ptr %invariant.gep, i64 %index435 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %wide.load438 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !19
  %wide.load439 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !19
  %i.gk = add <4 x i32> %wide.load438, %vec.phi436 ; 2 uses
  %i.gl = add <4 x i32> %wide.load439, %vec.phi437 ; 2 uses
  %index.next440 = add nuw i64 %index435, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next440, %n.vec433
  br i1 %i.gm, label %middle.block441, label %vector.body434, !llvm.loop !45

middle.block441:                                  ; preds = %vector.body434
  %bin.rdx442 = add <4 x i32> %i.gl, %i.gk
  %i.gn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx442) ; 2 uses
  %cmp.n443 = icmp eq i64 %n.vec433, %wide.trip.count362
  br i1 %cmp.n443, label %._crit_edge321, label %scalar.ph430.preheader

scalar.ph430.preheader:                           ; preds = %.lr.ph320, %middle.block441
  %indvars.iv359.ph = phi i64 [ 0, %.lr.ph320 ], [ %n.vec433, %middle.block441 ]
  %.0125317.ph = phi i32 [ 0, %.lr.ph320 ], [ %i.gn, %middle.block441 ]
  br label %scalar.ph430

._crit_edge321:                                   ; preds = %scalar.ph430, %middle.block441, %bb.ae
  %.0125.lcssa = phi i32 [ 0, %bb.ae ], [ %i.gn, %middle.block441 ], [ %i.hk, %scalar.ph430 ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv369
  store i32 %.0125.lcssa, ptr %i.go, align 4, !tbaa !19
  %i.gp = load i32, ptr %i.fk, align 4, !tbaa !19 ; 3 uses
  %i.gq = mul nsw i32 %i.gp, %i.fp
  %i.gr = add nsw i32 %i.gq, %i.ez
  %i.gs = sdiv i32 %i.gr, %i.gp                   ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = sext i32 %i.gp to i64
  %i.gv = mul nsw i64 %i.gt, %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !19
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv369
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !19
  %i.gz = load i32, ptr %i.fk, align 4, !tbaa !19 ; 4 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %._crit_edge321
  %i.hb = mul nsw i32 %i.gz, %i.gs
  %i.hc = sext i32 %i.hb to i64
  %wide.trip.count367 = zext nneg i32 %i.gz to i64 ; 3 uses
  %invariant.gep411 = getelementptr [4 x i8], ptr %i.ci, i64 %i.hc ; 2 uses
  %min.iters.check419 = icmp ult i32 %i.gz, 8
  br i1 %min.iters.check419, label %scalar.ph418.preheader, label %vector.ph420

vector.ph420:                                     ; preds = %.lr.ph326
  %n.vec421 = and i64 %wide.trip.count367, 2147483640 ; 3 uses
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next426, %vector.body422 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.hf, %vector.body422 ]
  %vec.phi424 = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.hg, %vector.body422 ]
  %i.hd = getelementptr [4 x i8], ptr %invariant.gep411, i64 %index423 ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 16
  %wide.load = load <4 x i32>, ptr %i.hd, align 4, !tbaa !19
  %wide.load425 = load <4 x i32>, ptr %i.he, align 4, !tbaa !19
  %i.hf = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.hg = add <4 x i32> %wide.load425, %vec.phi424 ; 2 uses
  %index.next426 = add nuw i64 %index423, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next426, %n.vec421
  br i1 %i.hh, label %middle.block427, label %vector.body422, !llvm.loop !46

middle.block427:                                  ; preds = %vector.body422
  %bin.rdx = add <4 x i32> %i.hg, %i.hf
  %i.hi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n428 = icmp eq i64 %n.vec421, %wide.trip.count367
  br i1 %cmp.n428, label %._crit_edge327, label %scalar.ph418.preheader

scalar.ph418.preheader:                           ; preds = %.lr.ph326, %middle.block427
  %indvars.iv364.ph = phi i64 [ 0, %.lr.ph326 ], [ %n.vec421, %middle.block427 ]
  %.0123323.ph = phi i32 [ 0, %.lr.ph326 ], [ %i.hi, %middle.block427 ]
  br label %scalar.ph418

scalar.ph430:                                     ; preds = %scalar.ph430.preheader, %scalar.ph430
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %scalar.ph430 ], [ %indvars.iv359.ph, %scalar.ph430.preheader ] ; 2 uses
  %.0125317 = phi i32 [ %i.hk, %scalar.ph430 ], [ %.0125317.ph, %scalar.ph430.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv359
  %i.hj = load i32, ptr %gep, align 4, !tbaa !19
  %i.hk = add nsw i32 %i.hj, %.0125317            ; 2 uses
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %._crit_edge321, label %scalar.ph430, !llvm.loop !47

._crit_edge327:                                   ; preds = %scalar.ph418, %middle.block427, %._crit_edge321
  %.0123.lcssa = phi i32 [ 0, %._crit_edge321 ], [ %i.hi, %middle.block427 ], [ %i.hn, %scalar.ph418 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv369
  store i32 %.0123.lcssa, ptr %i.hl, align 4, !tbaa !19
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count373
  br i1 %exitcond374.not, label %.loopexit, label %bb.ae, !llvm.loop !48

scalar.ph418:                                     ; preds = %scalar.ph418.preheader, %scalar.ph418
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %scalar.ph418 ], [ %indvars.iv364.ph, %scalar.ph418.preheader ] ; 2 uses
  %.0123323 = phi i32 [ %i.hn, %scalar.ph418 ], [ %.0123323.ph, %scalar.ph418.preheader ]
  %gep412 = getelementptr [4 x i8], ptr %invariant.gep411, i64 %indvars.iv364
  %i.hm = load i32, ptr %gep412, align 4, !tbaa !19
  %i.hn = add nsw i32 %i.hm, %.0123323            ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %._crit_edge327, label %scalar.ph418, !llvm.loop !49

.loopexit:                                        ; preds = %._crit_edge327, %bb.z
  %.not.i.i.i184 = icmp eq ptr %.sroa.0205.0401, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorIiSaIiEED2Ev.exit191, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.ad, %.loopexit
  %i.ho = ptrtoint ptr %.sroa.0205.0401 to i64
  %i.hp = sub i64 %.sroa.11.0403, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0401, i64 noundef %i.hp) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit191

_ZNSt6vectorIiSaIiEED2Ev.exit191:                 ; preds = %.loopexit, %.loopexit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.by) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.by) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.by) #12
  %.not.i.i.i192 = icmp eq ptr %.sroa.0237.0397, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %i.hq = ptrtoint ptr %.sroa.0237.0397 to i64
  %i.hr = sub i64 %.sroa.17.0395, %i.hq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0397, i64 noundef %i.hr) #12
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit194:                 ; preds = %bb.ab, %bb.aa, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.v ], [ %i.et, %bb.aa ], [ %i.et, %bb.ab ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.by) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

_ZNSt6vectorIiSaIiEED2Ev.exit196:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit194, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit194 ], [ %i.cy, %bb.u ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.by) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

_ZNSt6vectorIiSaIiEED2Ev.exit198:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit196, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit196 ], [ %i.cx, %bb.t ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.by) #12
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit198, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit198 ], [ %i.cw, %bb.s ] ; 2 uses
  %.not.i.i.i199 = icmp eq ptr %.sroa.0237.0397, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hs = ptrtoint ptr %.sroa.0237.0397 to i64
  %i.ht = sub i64 %.sroa.17.0395, %i.hs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0397, i64 noundef %i.ht) #12
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit: ; preds = %.preheader, %bb.af, %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %.not.i.i.i201 = icmp eq ptr %.sroa.0250.0.lcssa, null
  br i1 %.not.i.i.i201, label %_ZNSt6vectorIiSaIiEED2Ev.exit202, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread: ; preds = %bb.l, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit
  %i.hu = ptrtoint ptr %.sroa.30.0.lcssa to i64
  %i.hv = ptrtoint ptr %.sroa.0250.0.lcssa to i64
  %i.hw = sub i64 %i.hu, %i.hv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0.lcssa, i64 noundef %i.hw) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit202

_ZNSt6vectorIiSaIiEED2Ev.exit202:                 ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread
  ret void

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200: ; preds = %.loopexit283, %.loopexit.split-lp, %bb.p, %bb.ag, %bb.ah, %bb.k
  %.sroa.30.0294 = phi ptr [ %.sroa.30.0.lcssa, %bb.ah ], [ %.sroa.30.0.lcssa, %bb.k ], [ %.sroa.30.0.lcssa, %bb.p ], [ %.sroa.30.0.lcssa, %bb.ag ], [ %.sroa.27.0300, %.loopexit283 ], [ %.sroa.27.0300, %.loopexit.split-lp ]
  %.sroa.0250.0287 = phi ptr [ %.sroa.0250.0.lcssa, %bb.ah ], [ %.sroa.0250.0.lcssa, %bb.k ], [ %.sroa.0250.0.lcssa, %bb.p ], [ %.sroa.0250.0.lcssa, %bb.ag ], [ %.sroa.0250.0301, %.loopexit283 ], [ %.sroa.0250.0301, %.loopexit.split-lp ] ; 3 uses
  %.pn153 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ah ], [ %i.ai, %bb.k ], [ %i.bv, %bb.p ], [ %.pn.pn.pn.pn, %bb.ag ], [ %lpad.loopexit, %.loopexit283 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i203 = icmp eq ptr %.sroa.0250.0287, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIiSaIiEED2Ev.exit204, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200
  %i.hx = ptrtoint ptr %.sroa.30.0294 to i64
  %i.hy = ptrtoint ptr %.sroa.0250.0287 to i64
  %i.hz = sub i64 %i.hx, %i.hy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0287, i64 noundef %i.hz) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit204

_ZNSt6vectorIiSaIiEED2Ev.exit204:                 ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200, %bb.ai
  resume { ptr, i32 } %.pn153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #6 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"_ZTSN8LightGBM8BruckMapE", !6, i64 0, !11, i64 8, !11, i64 32}
!11 = !{!"_ZTSSt6vectorIiSaIiEE", !12, i64 0}
!12 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !13, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !14, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 int", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!14, !15, i64 8}
!18 = !{!14, !15, i64 16}
!19 = !{!6, !6, i64 0}
!20 = !{!14, !15, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = !{!26, !6, i64 0}
!26 = !{!"_ZTSN8LightGBM19RecursiveHalvingMapE", !6, i64 0, !27, i64 4, !28, i64 8, !6, i64 12, !11, i64 16, !11, i64 40, !11, i64 64, !11, i64 88, !11, i64 112}
!27 = !{!"_ZTSN8LightGBM24RecursiveHalvingNodeTypeE", !7, i64 0}
!28 = !{!"bool", !7, i64 0}
!29 = !{!26, !27, i64 4}
!30 = !{!26, !28, i64 8}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = !{!27, !27, i64 0}
!36 = distinct !{!36, !22, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !22, !38, !37}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !22}
!44 = !{!26, !6, i64 12}
!45 = distinct !{!45, !22, !37, !38}
!46 = distinct !{!46, !22, !37, !38}
!47 = distinct !{!47, !22, !38, !37}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22, !38, !37}
end_hunk_0
