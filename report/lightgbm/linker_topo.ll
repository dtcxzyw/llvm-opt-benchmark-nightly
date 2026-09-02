Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linker_topo?download=true
inline.NumInlined: 226
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8LightGBM19RecursiveHalvingMapC2EiNS_24RecursiveHalvingNodeTypeEb:bb.a
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
  %3 = trunc i32 %i.al to i1
  %i.am = sub nsw i32 0, %i.ak
  %i.an = select i1 %3, i32 %i.am, i32 %i.ak
  %.fr280 = freeze i32 %i.an
  %i.ao = add i32 %.fr280, %1                     ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv375
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !19
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.ar = srem i32 %1, %i.aq
  %i.as = sub nsw i32 %1, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv375
  store i32 %i.as, ptr %i.at, align 4, !tbaa !19
  %i.au = load i32, ptr %i.aj, align 4, !tbaa !19 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv375
  store i32 %i.au, ptr %i.av, align 4, !tbaa !19
  %i.aw = srem i32 %i.ao, %i.au
  %i.ax = sub nsw i32 %i.ao, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv375
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !19
  %i.az = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv375
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !19
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count379
  br i1 %exitcond380.not, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread, label %bb.l, !llvm.loop !34

bb.m:                                             ; preds = %._crit_edge
  %i.bb = sub i32 %2, %i.f                        ; 3 uses
  %i.bc = sext i32 %2 to i64                      ; 8 uses
  %i.bd = icmp slt i32 %2, 0
  br i1 %i.bd, label %bb.n, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
          to label %.noexc157 unwind label %bb.p

.noexc157:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i156 = icmp eq i32 %2, 0            ; 2 uses
  br i1 %.not.i.i.i.i156, label %.preheader282, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.be = shl nuw nsw i64 %i.bc, 2
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #11
          to label %.noexc158 unwind label %bb.p  ; 5 uses

.noexc158:                                        ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bc
  store i32 0, ptr %i.bf, align 4, !tbaa !45
  %i.bh = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph305.preheader, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc158
  %i.bj = getelementptr i8, ptr %i.bf, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !45
  br label %.lr.ph305.preheader

.lr.ph305.preheader:                              ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc158
  %i.bk = zext nneg i32 %2 to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bf, i8 0, i64 %i.bl, i1 false), !tbaa !45
  %i.bm = ptrtoint ptr %i.bg to i64
  br label %.preheader282

.preheader282:                                    ; preds = %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.lr.ph305.preheader
  %.sroa.0237.0397 = phi ptr [ %i.bf, %.lr.ph305.preheader ], [ null, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 10 uses
  %.sroa.17.0395 = phi i64 [ %i.bm, %.lr.ph305.preheader ], [ 0, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.bn = icmp sgt i32 %i.bb, 0
  br i1 %i.bn, label %.lr.ph307.preheader, label %._crit_edge308

.lr.ph307.preheader:                              ; preds = %.preheader282
  %wide.trip.count = zext nneg i32 %i.bb to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph307.preheader451, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph307.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl nuw nsw i64 %index, 1
  %i.bp = sub nsw i64 %i.bc, %i.bo
  %i.bq = getelementptr [4 x i8], ptr %.sroa.0237.0397, i64 %i.bp ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -16
  %i.bs = getelementptr i8, ptr %i.bq, i64 -32
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.br, align 4, !tbaa !45
  store <4 x i32> <i32 1, i32 2, i32 1, i32 2>, ptr %i.bs, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge308, label %.lr.ph307.preheader451

.lr.ph307.preheader451:                           ; preds = %.lr.ph307.preheader, %middle.block
  %indvars.iv344.ph = phi i64 [ 0, %.lr.ph307.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph307

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

._crit_edge308:                                   ; preds = %.lr.ph307, %middle.block, %.preheader282
  %i.bv = sext i32 %i.f to i64                    ; 2 uses
  %i.bw = icmp eq i32 %i.c, 31
  br i1 %i.bw, label %bb.q, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.q:                                             ; preds = %._crit_edge308
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
          to label %.noexc162 unwind label %bb.s

.noexc162:                                        ; preds = %bb.q
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge308
  %i.bx = shl nuw nsw i64 %i.bv, 2                ; 10 uses
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #11
          to label %.noexc163 unwind label %bb.s  ; 12 uses

.noexc163:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  store i32 0, ptr %i.by, align 4, !tbaa !19
  %i.bz = add nsw i64 %i.bv, -1                   ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 0                    ; 2 uses
  br i1 %i.ca, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc163
  %i.cb = getelementptr i8, ptr %i.by, i64 4
  %.idx.i.i.i.i.i.i.i160 = shl nuw nsw i64 %i.bz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 0, i64 %.idx.i.i.i.i.i.i.i160, i1 false), !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164

.lr.ph307:                                        ; preds = %.lr.ph307.preheader451, %.lr.ph307
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %.lr.ph307 ], [ %indvars.iv344.ph, %.lr.ph307.preheader451 ] ; 2 uses
  %i.cc = shl nuw nsw i64 %indvars.iv344, 1
  %i.cd = sub nsw i64 %i.bc, %i.cc
  %i.ce = getelementptr [4 x i8], ptr %.sroa.0237.0397, i64 %i.cd ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  store i32 1, ptr %i.cf, align 4, !tbaa !45
  %i.cg = getelementptr i8, ptr %i.ce, i64 -4
  store i32 2, ptr %i.cg, align 4, !tbaa !45
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next345, %wide.trip.count
  br i1 %exitcond347.not, label %._crit_edge308, label %.lr.ph307, !llvm.loop !36

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164: ; preds = %.noexc163, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #11
          to label %.noexc167 unwind label %bb.t  ; 11 uses

.noexc167:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ch, i8 0, i64 %i.bx, i1 false), !tbaa !19
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #11
          to label %.noexc174 unwind label %bb.u  ; 6 uses

.noexc174:                                        ; preds = %.noexc167
  store i32 0, ptr %i.ci, align 4, !tbaa !19
  br i1 %i.ca, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i170

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i170: ; preds = %.noexc174
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
  %.idx.i.i.i.i.i.i.i171 = shl nuw nsw i64 %i.bz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cj, i8 0, i64 %.idx.i.i.i.i.i.i.i171, i1 false), !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176: ; preds = %.noexc174, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i170
  br i1 %.not.i.i.i.i156, label %._crit_edge312, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176
  %i.ck = shl nuw nsw i64 %i.bc, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #11
          to label %.noexc182 unwind label %bb.v  ; 5 uses

.noexc182:                                        ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.bc
  store i32 0, ptr %i.cl, align 4, !tbaa !19
  %i.cn = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.lr.ph311.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i178

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i178: ; preds = %.noexc182
  %i.cp = getelementptr i8, ptr %i.cl, i64 4
  %.idx.i.i.i.i.i.i.i179 = shl nuw nsw i64 %i.cn, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 0, i64 %.idx.i.i.i.i.i.i.i179, i1 false), !tbaa !19
  br label %.lr.ph311.preheader

.lr.ph311.preheader:                              ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i178, %.noexc182
  %wide.trip.count352 = zext nneg i32 %2 to i64
  br label %.lr.ph311

._crit_edge312.loopexit:                          ; preds = %bb.x
  %i.cq = ptrtoint ptr %i.cm to i64
  br label %._crit_edge312

._crit_edge312:                                   ; preds = %._crit_edge312.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176
  %.sroa.11.0403 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176 ], [ %i.cq, %._crit_edge312.loopexit ] ; 2 uses
  %.sroa.0205.0401 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i176 ], [ %i.cl, %._crit_edge312.loopexit ] ; 7 uses
  store i32 0, ptr %i.by, align 4, !tbaa !19
  %i.cr = icmp sgt i32 %i.f, 1
  br i1 %i.cr, label %.lr.ph315.preheader, label %._crit_edge316

.lr.ph315.preheader:                              ; preds = %._crit_edge312
  %wide.trip.count357 = zext nneg i32 %i.f to i64
  %i.cs = add nsw i64 %wide.trip.count357, -1     ; 2 uses
  %xtraiter = and i64 %i.cs, 3                    ; 3 uses
  %i.ct = add nsw i32 %i.f, -2
  %i.cu = icmp ult i32 %i.ct, 3
  br i1 %i.cu, label %.lr.ph315.epil.preheader, label %.lr.ph315.preheader.new

.lr.ph315.preheader.new:                          ; preds = %.lr.ph315.preheader
  %unroll_iter = and i64 %i.cs, -4
  br label %.lr.ph315

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.q
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i164
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

bb.u:                                             ; preds = %.noexc167
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

bb.v:                                             ; preds = %bb.r
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit194

.lr.ph311:                                        ; preds = %.lr.ph311.preheader, %bb.x
  %indvars.iv348 = phi i64 [ 0, %.lr.ph311.preheader ], [ %indvars.iv.next349, %bb.x ] ; 4 uses
  %.0130309 = phi i32 [ 0, %.lr.ph311.preheader ], [ %.1, %bb.x ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0237.0397, i64 %indvars.iv348
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !45
  %switch = icmp ult i32 %i.da, 2
  br i1 %switch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph311
  %i.db = add nsw i32 %.0130309, 1
  %i.dc = sext i32 %.0130309 to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dc
  %i.de = trunc nuw nsw i64 %indvars.iv348 to i32
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph311, %bb.w
  %.1 = phi i32 [ %i.db, %bb.w ], [ %.0130309, %.lr.ph311 ] ; 2 uses
  %i.df = add nsw i32 %.1, -1                     ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv348
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !19
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !19
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !19
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next349, %wide.trip.count352
  br i1 %exitcond353.not, label %._crit_edge312.loopexit, label %.lr.ph311, !llvm.loop !37

._crit_edge316.loopexit.unr-lcssa:                ; preds = %.lr.ph315
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge316, label %.lr.ph315.epil.preheader

.lr.ph315.epil.preheader:                         ; preds = %._crit_edge316.loopexit.unr-lcssa, %.lr.ph315.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph315.preheader ], [ %i.en, %._crit_edge316.loopexit.unr-lcssa ]
  %indvars.iv354.epil.init = phi i64 [ 1, %.lr.ph315.preheader ], [ %indvars.iv.next355.3, %._crit_edge316.loopexit.unr-lcssa ]
  %lcmp.mod456 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod456)
  br label %.lr.ph315.epil

.lr.ph315.epil:                                   ; preds = %.lr.ph315.epil, %.lr.ph315.epil.preheader
  %i.dl = phi i32 [ %.epil.init, %.lr.ph315.epil.preheader ], [ %i.dp, %.lr.ph315.epil ]
  %indvars.iv354.epil = phi i64 [ %indvars.iv354.epil.init, %.lr.ph315.epil.preheader ], [ %indvars.iv.next355.epil, %.lr.ph315.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph315.epil.preheader ], [ %epil.iter.next, %.lr.ph315.epil ]
  %i.dm = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv354.epil
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !19
  %i.dp = add nsw i32 %i.do, %i.dl                ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv354.epil
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !19
  %indvars.iv.next355.epil = add nuw nsw i64 %indvars.iv354.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge316, label %.lr.ph315.epil, !llvm.loop !38

._crit_edge316:                                   ; preds = %._crit_edge316.loopexit.unr-lcssa, %.lr.ph315.epil, %._crit_edge312
  %i.dr = sext i32 %1 to i64                      ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0237.0397, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !45
  invoke void @_ZN8LightGBM19RecursiveHalvingMapC1EiNS_24RecursiveHalvingNodeTypeEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.c, i32 noundef %i.dt, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.aa

.lr.ph315:                                        ; preds = %.lr.ph315, %.lr.ph315.preheader.new
  %i.du = phi i32 [ 0, %.lr.ph315.preheader.new ], [ %i.en, %.lr.ph315 ]
  %indvars.iv354 = phi i64 [ 1, %.lr.ph315.preheader.new ], [ %indvars.iv.next355.3, %.lr.ph315 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph315.preheader.new ], [ %niter.next.3, %.lr.ph315 ]
  %i.dv = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv354
  %i.dw = getelementptr i8, ptr %i.dv, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !19
  %i.dy = add nsw i32 %i.dx, %i.du                ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv354
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !19
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.ea = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.next355
  %i.eb = getelementptr i8, ptr %i.ea, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !19
  %i.ed = add nsw i32 %i.ec, %i.dy                ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next355
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !19
  %indvars.iv.next355.1 = add nuw nsw i64 %indvars.iv354, 2 ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.next355.1
  %i.eg = getelementptr i8, ptr %i.ef, i64 -4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !19
  %i.ei = add nsw i32 %i.eh, %i.ed                ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next355.1
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !19
  %indvars.iv.next355.2 = add nuw nsw i64 %indvars.iv354, 3 ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %i.ch, i64 %indvars.iv.next355.2
  %i.el = getelementptr i8, ptr %i.ek, i64 -4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !19
  %i.en = add nsw i32 %i.em, %i.ei                ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next355.2
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !19
  %indvars.iv.next355.3 = add nuw nsw i64 %indvars.iv354, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge316.loopexit.unr-lcssa, label %.lr.ph315, !llvm.loop !39

bb.y:                                             ; preds = %._crit_edge316
  %i.ep = load i32, ptr %i.ds, align 4, !tbaa !45
  switch i32 %i.ep, label %bb.ad [
    i32 2, label %bb.z
    i32 1, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.eq = add nsw i32 %1, -1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !49
  br label %.loopexit

bb.aa:                                            ; preds = %._crit_edge316
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0205.0401, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit194, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = ptrtoint ptr %.sroa.0205.0401 to i64
  %i.eu = sub i64 %.sroa.11.0403, %i.et
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0401, i64 noundef %i.eu) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit194

bb.ac:                                            ; preds = %bb.y
  %i.ev = add nsw i32 %1, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !49
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ac
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0205.0401, i64 %i.dr
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !19 ; 4 uses
  br i1 %i.d, label %.lr.ph331, label %.loopexit.thread

.lr.ph331:                                        ; preds = %bb.ad
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !20
  %wide.trip.count373 = zext i32 %indvars.iv to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph331, %._crit_edge327
  %indvars.iv369 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next370, %._crit_edge327 ] ; 7 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0250.0.lcssa, i64 %indvars.iv369 ; 5 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !19 ; 2 uses
  %i.fl = sdiv i32 %i.ey, %i.fk
  %4 = trunc i32 %i.fl to i1
  %i.fm = select i1 %4, i32 -1, i32 1             ; 2 uses
  %i.fn = mul nsw i32 %i.fm, %i.fk
  %i.fo = add nsw i32 %i.fn, %i.ey
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !19
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv369
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !19
  %i.ft = load i32, ptr %i.fj, align 4, !tbaa !19 ; 2 uses
  %i.fu = sdiv i32 %i.ey, %i.ft                   ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = sext i32 %i.ft to i64
  %i.fx = mul nsw i64 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !19
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv369
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !19
  %i.gb = load i32, ptr %i.fj, align 4, !tbaa !19 ; 4 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph320, label %._crit_edge321

.lr.ph320:                                        ; preds = %bb.ae
  %i.gd = mul nsw i32 %i.gb, %i.fu
  %i.ge = sext i32 %i.gd to i64
  %wide.trip.count362 = zext nneg i32 %i.gb to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ch, i64 %i.ge ; 2 uses
  %min.iters.check431 = icmp ult i32 %i.gb, 8
  br i1 %min.iters.check431, label %scalar.ph430.preheader, label %vector.ph432

vector.ph432:                                     ; preds = %.lr.ph320
  %n.vec433 = and i64 %wide.trip.count362, 2147483640 ; 3 uses
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph432
  %index435 = phi i64 [ 0, %vector.ph432 ], [ %index.next440, %vector.body434 ] ; 2 uses
  %vec.phi436 = phi <4 x i32> [ zeroinitializer, %vector.ph432 ], [ %i.gh, %vector.body434 ]
  %vec.phi437 = phi <4 x i32> [ zeroinitializer, %vector.ph432 ], [ %i.gi, %vector.body434 ]
  %i.gf = getelementptr [4 x i8], ptr %invariant.gep, i64 %index435 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  %wide.load438 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !19
  %wide.load439 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !19
  %i.gh = add <4 x i32> %wide.load438, %vec.phi436 ; 2 uses
  %i.gi = add <4 x i32> %wide.load439, %vec.phi437 ; 2 uses
  %index.next440 = add nuw i64 %index435, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next440, %n.vec433
  br i1 %i.gj, label %middle.block441, label %vector.body434, !llvm.loop !40

middle.block441:                                  ; preds = %vector.body434
  %bin.rdx442 = add <4 x i32> %i.gi, %i.gh
  %i.gk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx442) ; 2 uses
  %cmp.n443 = icmp eq i64 %n.vec433, %wide.trip.count362
  br i1 %cmp.n443, label %._crit_edge321, label %scalar.ph430.preheader

scalar.ph430.preheader:                           ; preds = %.lr.ph320, %middle.block441
  %indvars.iv359.ph = phi i64 [ 0, %.lr.ph320 ], [ %n.vec433, %middle.block441 ]
  %.0125317.ph = phi i32 [ 0, %.lr.ph320 ], [ %i.gk, %middle.block441 ]
  br label %scalar.ph430

._crit_edge321:                                   ; preds = %scalar.ph430, %middle.block441, %bb.ae
  %.0125.lcssa = phi i32 [ 0, %bb.ae ], [ %i.gk, %middle.block441 ], [ %i.hh, %scalar.ph430 ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv369
  store i32 %.0125.lcssa, ptr %i.gl, align 4, !tbaa !19
  %i.gm = load i32, ptr %i.fj, align 4, !tbaa !19 ; 3 uses
  %i.gn = mul nsw i32 %i.gm, %i.fm
  %i.go = add nsw i32 %i.gn, %i.ey
  %i.gp = sdiv i32 %i.go, %i.gm                   ; 2 uses
  %i.gq = sext i32 %i.gp to i64
  %i.gr = sext i32 %i.gm to i64
  %i.gs = mul nsw i64 %i.gq, %i.gr
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !19
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv369
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !19
  %i.gw = load i32, ptr %i.fj, align 4, !tbaa !19 ; 4 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %._crit_edge321
  %i.gy = mul nsw i32 %i.gw, %i.gp
  %i.gz = sext i32 %i.gy to i64
  %wide.trip.count367 = zext nneg i32 %i.gw to i64 ; 3 uses
  %invariant.gep411 = getelementptr [4 x i8], ptr %i.ch, i64 %i.gz ; 2 uses
  %min.iters.check419 = icmp ult i32 %i.gw, 8
  br i1 %min.iters.check419, label %scalar.ph418.preheader, label %vector.ph420

vector.ph420:                                     ; preds = %.lr.ph326
  %n.vec421 = and i64 %wide.trip.count367, 2147483640 ; 3 uses
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next426, %vector.body422 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.hc, %vector.body422 ]
  %vec.phi424 = phi <4 x i32> [ zeroinitializer, %vector.ph420 ], [ %i.hd, %vector.body422 ]
  %i.ha = getelementptr [4 x i8], ptr %invariant.gep411, i64 %index423 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  %wide.load = load <4 x i32>, ptr %i.ha, align 4, !tbaa !19
  %wide.load425 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !19
  %i.hc = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.hd = add <4 x i32> %wide.load425, %vec.phi424 ; 2 uses
  %index.next426 = add nuw i64 %index423, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next426, %n.vec421
  br i1 %i.he, label %middle.block427, label %vector.body422, !llvm.loop !41

middle.block427:                                  ; preds = %vector.body422
  %bin.rdx = add <4 x i32> %i.hd, %i.hc
  %i.hf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n428 = icmp eq i64 %n.vec421, %wide.trip.count367
  br i1 %cmp.n428, label %._crit_edge327, label %scalar.ph418.preheader

scalar.ph418.preheader:                           ; preds = %.lr.ph326, %middle.block427
  %indvars.iv364.ph = phi i64 [ 0, %.lr.ph326 ], [ %n.vec421, %middle.block427 ]
  %.0123323.ph = phi i32 [ 0, %.lr.ph326 ], [ %i.hf, %middle.block427 ]
  br label %scalar.ph418

scalar.ph430:                                     ; preds = %scalar.ph430.preheader, %scalar.ph430
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %scalar.ph430 ], [ %indvars.iv359.ph, %scalar.ph430.preheader ] ; 2 uses
  %.0125317 = phi i32 [ %i.hh, %scalar.ph430 ], [ %.0125317.ph, %scalar.ph430.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv359
  %i.hg = load i32, ptr %gep, align 4, !tbaa !19
  %i.hh = add nsw i32 %i.hg, %.0125317            ; 2 uses
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %._crit_edge321, label %scalar.ph430, !llvm.loop !42

._crit_edge327:                                   ; preds = %scalar.ph418, %middle.block427, %._crit_edge321
  %.0123.lcssa = phi i32 [ 0, %._crit_edge321 ], [ %i.hf, %middle.block427 ], [ %i.hk, %scalar.ph418 ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv369
  store i32 %.0123.lcssa, ptr %i.hi, align 4, !tbaa !19
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count373
  br i1 %exitcond374.not, label %.loopexit, label %bb.ae, !llvm.loop !43

scalar.ph418:                                     ; preds = %scalar.ph418.preheader, %scalar.ph418
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %scalar.ph418 ], [ %indvars.iv364.ph, %scalar.ph418.preheader ] ; 2 uses
  %.0123323 = phi i32 [ %i.hk, %scalar.ph418 ], [ %.0123323.ph, %scalar.ph418.preheader ]
  %gep412 = getelementptr [4 x i8], ptr %invariant.gep411, i64 %indvars.iv364
  %i.hj = load i32, ptr %gep412, align 4, !tbaa !19
  %i.hk = add nsw i32 %i.hj, %.0123323            ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %wide.trip.count367
  br i1 %exitcond368.not, label %._crit_edge327, label %scalar.ph418, !llvm.loop !44

.loopexit:                                        ; preds = %._crit_edge327, %bb.z
  %.not.i.i.i184 = icmp eq ptr %.sroa.0205.0401, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorIiSaIiEED2Ev.exit191, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.ad, %.loopexit
  %i.hl = ptrtoint ptr %.sroa.0205.0401 to i64
  %i.hm = sub i64 %.sroa.11.0403, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0401, i64 noundef %i.hm) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit191

_ZNSt6vectorIiSaIiEED2Ev.exit191:                 ; preds = %.loopexit, %.loopexit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.bx) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.bx) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.bx) #12
  %.not.i.i.i192 = icmp eq ptr %.sroa.0237.0397, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %i.hn = ptrtoint ptr %.sroa.0237.0397 to i64
  %i.ho = sub i64 %.sroa.17.0395, %i.hn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0397, i64 noundef %i.ho) #12
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit194:                 ; preds = %bb.ab, %bb.aa, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.v ], [ %i.es, %bb.aa ], [ %i.es, %bb.ab ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.bx) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

_ZNSt6vectorIiSaIiEED2Ev.exit196:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit194, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit194 ], [ %i.cx, %bb.u ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.bx) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit198

_ZNSt6vectorIiSaIiEED2Ev.exit198:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit196, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit196 ], [ %i.cw, %bb.t ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.bx) #12
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit198, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit198 ], [ %i.cv, %bb.s ] ; 2 uses
  %.not.i.i.i199 = icmp eq ptr %.sroa.0237.0397, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hp = ptrtoint ptr %.sroa.0237.0397 to i64
  %i.hq = sub i64 %.sroa.17.0395, %i.hp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0397, i64 noundef %i.hq) #12
  br label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit200

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit: ; preds = %.preheader, %bb.af, %_ZNSt6vectorIiSaIiEED2Ev.exit191
  %.not.i.i.i201 = icmp eq ptr %.sroa.0250.0.lcssa, null
  br i1 %.not.i.i.i201, label %_ZNSt6vectorIiSaIiEED2Ev.exit202, label %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread

_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit.thread: ; preds = %bb.l, %_ZNSt6vectorIN8LightGBM24RecursiveHalvingNodeTypeESaIS1_EED2Ev.exit
  %i.hr = ptrtoint ptr %.sroa.30.0.lcssa to i64
  %i.hs = ptrtoint ptr %.sroa.0250.0.lcssa to i64
  %i.ht = sub i64 %i.hr, %i.hs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0250.0.lcssa, i64 noundef %i.ht) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit202
end_hunk_0
