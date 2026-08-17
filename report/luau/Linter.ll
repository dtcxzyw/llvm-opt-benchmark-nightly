inline.NumInlined: 2494
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4Luau16LintFormatString16checkStringMatchEPKcmPi:bb.a
  %memchr176 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.141, i32 %i.bc, i64 12)
  %.not37.i = icmp eq ptr %memchr176, null
  br i1 %.not37.i, label %.thread171, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %memchr175 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.140, i32 %i.ay, i64 14)
  %.not.i = icmp eq ptr %memchr175, null
  br i1 %.not.i, label %.thread171, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bf = add i64 %.02940.i, 2                    ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.ar
  br i1 %i.bg, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !38
  %i.bj = icmp eq i8 %i.bi, 45
  br i1 %i.bj, label %.thread171, label %bb.af

bb.ad:                                            ; preds = %.lr.ph.i
  %i.bk = add nuw i64 %.02940.i, 1                ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.ar
  br i1 %i.bl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bk
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !38
  %i.bo = icmp eq i8 %i.bn, 37
  br i1 %i.bo, label %.thread171, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.lr.ph.i
  %.1.i = phi i64 [ %i.au, %bb.ac ], [ %i.au, %bb.ab ], [ %.02940.i, %bb.ae ], [ %.02940.i, %bb.ad ], [ %.02940.i, %.lr.ph.i ]
  %i.bp = add i64 %.1.i, 1                        ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.ar
  br i1 %i.bq, label %.lr.ph.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, !llvm.loop !549

bb.ag:                                            ; preds = %.lr.ph219
  %i.br = add nsw i32 %.0156216, 1                ; 4 uses
  %.not.i132 = icmp eq ptr %.sroa.11.0214, %.sroa.19.0215
  br i1 %.not.i132, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.br, ptr %.sroa.11.0214, align 4, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.11.0214, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ai:                                            ; preds = %bb.ag
  %i.bt = ptrtoint ptr %.sroa.19.0215 to i64
  %i.bu = ptrtoint ptr %.sroa.0144.0217 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 7 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775804
  br i1 %i.bw, label %bb.aj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.bx = ashr exact i64 %i.bv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 2305843009213693951)
  %i.cb = select i1 %i.bz, i64 2305843009213693951, i64 %i.ca ; 3 uses
  %.not.i.i.i133 = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i133)
  %i.cc = shl nuw nsw i64 %i.cb, 2
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #28
          to label %.noexc134 unwind label %.loopexit ; 4 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  store i32 %i.br, ptr %i.ce, align 4, !tbaa !9
  %i.cf = icmp sgt i64 %i.bv, 0
  br i1 %i.cf, label %bb.ak, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ak:                                            ; preds = %.noexc134
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cd, ptr align 4 %.sroa.0144.0217, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ak, %.noexc134
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0144.0217, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0217, i64 noundef %i.bv) #29
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cb
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.am:                                            ; preds = %.lr.ph219
  %i.ci = icmp eq ptr %.sroa.0144.0217, %.sroa.11.0214
  br i1 %i.ci, label %.thread171, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cj = getelementptr inbounds i8, ptr %.sroa.11.0214, i64 -4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.af, %bb.f, %.preheader, %bb.v, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ah, %.lr.ph219, %bb.i, %bb.m, %bb.n, %bb.o, %bb.an
  %.sroa.11.1 = phi ptr [ %.sroa.11.0214, %.lr.ph219 ], [ %i.bs, %bb.ah ], [ %.sroa.11.0214, %bb.n ], [ %.sroa.11.0214, %bb.i ], [ %.sroa.11.0214, %bb.m ], [ %.sroa.11.0214, %bb.o ], [ %.sroa.11.0214, %bb.v ], [ %i.cj, %bb.an ], [ %i.cg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.11.0214, %.preheader ], [ %.sroa.11.0214, %bb.f ], [ %.sroa.11.0214, %bb.af ] ; 2 uses
  %.sroa.19.1 = phi ptr [ %.sroa.19.0215, %.lr.ph219 ], [ %.sroa.19.0215, %bb.ah ], [ %.sroa.19.0215, %bb.n ], [ %.sroa.19.0215, %bb.i ], [ %.sroa.19.0215, %bb.m ], [ %.sroa.19.0215, %bb.o ], [ %.sroa.19.0215, %bb.v ], [ %.sroa.19.0215, %bb.an ], [ %i.ch, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.19.0215, %.preheader ], [ %.sroa.19.0215, %bb.f ], [ %.sroa.19.0215, %bb.af ] ; 3 uses
  %.1157 = phi i32 [ %.0156216, %.lr.ph219 ], [ %i.br, %bb.ah ], [ %.0156216, %bb.n ], [ %.0156216, %bb.i ], [ %.0156216, %bb.m ], [ %.0156216, %bb.o ], [ %.0156216, %bb.v ], [ %.0156216, %bb.an ], [ %i.br, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.0156216, %.preheader ], [ %.0156216, %bb.f ], [ %.0156216, %bb.af ] ; 2 uses
  %.sroa.0144.1 = phi ptr [ %.sroa.0144.0217, %.lr.ph219 ], [ %.sroa.0144.0217, %bb.ah ], [ %.sroa.0144.0217, %bb.n ], [ %.sroa.0144.0217, %bb.i ], [ %.sroa.0144.0217, %bb.m ], [ %.sroa.0144.0217, %bb.o ], [ %.sroa.0144.0217, %bb.v ], [ %.sroa.0144.0217, %bb.an ], [ %i.cd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0144.0217, %.preheader ], [ %.sroa.0144.0217, %bb.f ], [ %.sroa.0144.0217, %bb.af ] ; 4 uses
  %.298 = phi i64 [ %.096218, %.lr.ph219 ], [ %.096218, %bb.ah ], [ %i.c, %bb.n ], [ %i.r, %bb.i ], [ %i.c, %bb.m ], [ %i.c, %bb.o ], [ %.294.lcssa, %bb.v ], [ %.096218, %bb.an ], [ %.096218, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.c, %.preheader ], [ %i.c, %bb.f ], [ %.294.lcssa, %bb.af ]
  %i.ck = add i64 %.298, 1                        ; 2 uses
  %.not127 = icmp ult i64 %i.ck, %2
  br i1 %.not127, label %.lr.ph219, label %.thread173, !llvm.loop !550

.thread173:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cl = icmp eq ptr %.sroa.0144.1, %.sroa.11.1
  br i1 %i.cl, label %.thread173.thread, label %.thread171

.thread173.thread:                                ; preds = %bb.a, %.thread173
  %.sroa.0144.0.lcssa264 = phi ptr [ %.sroa.0144.1, %.thread173 ], [ null, %bb.a ] ; 2 uses
  %.0156.lcssa263 = phi i32 [ %.1157, %.thread173 ], [ 0, %bb.a ]
  %.sroa.19.0.lcssa262 = phi ptr [ %.sroa.19.1, %.thread173 ], [ null, %bb.a ] ; 2 uses
  %.not128 = icmp eq ptr %3, null
  br i1 %.not128, label %.thread171, label %bb.ao

bb.ao:                                            ; preds = %.thread173.thread
  store i32 %.0156.lcssa263, ptr %3, align 4, !tbaa !9
  br label %.thread171

.thread171:                                       ; preds = %.critedge, %bb.e, %bb.b, %bb.d, %bb.i, %bb.m, %bb.l, %bb.n, %bb.o, %bb.am, %bb.w, %bb.ae, %bb.ac, %bb.z, %bb.x, %bb.aa, %.lr.ph212, %.thread173.thread, %bb.ao, %.thread173
  %.sroa.19.0201 = phi ptr [ %.sroa.19.1, %.thread173 ], [ %.sroa.19.0215, %bb.w ], [ %.sroa.19.0.lcssa262, %bb.ao ], [ %.sroa.19.0.lcssa262, %.thread173.thread ], [ %.sroa.19.0215, %.lr.ph212 ], [ %.sroa.19.0215, %bb.aa ], [ %.sroa.19.0215, %bb.x ], [ %.sroa.19.0215, %bb.z ], [ %.sroa.19.0215, %bb.ac ], [ %.sroa.19.0215, %bb.ae ], [ %.sroa.19.0215, %bb.am ], [ %.sroa.19.0215, %bb.o ], [ %.sroa.19.0215, %bb.n ], [ %.sroa.19.0215, %bb.l ], [ %.sroa.19.0215, %bb.m ], [ %.sroa.19.0215, %bb.i ], [ %.sroa.19.0215, %bb.d ], [ %.sroa.19.0215, %bb.b ], [ %.sroa.19.0215, %bb.e ], [ %.sroa.19.0215, %.critedge ]
  %.sroa.0144.0189 = phi ptr [ %.sroa.0144.1, %.thread173 ], [ %.sroa.0144.0217, %bb.w ], [ %.sroa.0144.0.lcssa264, %bb.ao ], [ %.sroa.0144.0.lcssa264, %.thread173.thread ], [ %.sroa.0144.0217, %.lr.ph212 ], [ %.sroa.0144.0217, %bb.aa ], [ %.sroa.0144.0217, %bb.x ], [ %.sroa.0144.0217, %bb.z ], [ %.sroa.0144.0217, %bb.ac ], [ %.sroa.0144.0217, %bb.ae ], [ %.sroa.0144.0217, %bb.am ], [ %.sroa.0144.0217, %bb.o ], [ %.sroa.0144.0217, %bb.n ], [ %.sroa.0144.0217, %bb.l ], [ %.sroa.0144.0217, %bb.m ], [ %.sroa.0144.0217, %bb.i ], [ %.sroa.0144.0217, %bb.d ], [ %.sroa.0144.0217, %bb.b ], [ %.sroa.0144.0217, %bb.e ], [ %.sroa.0144.0217, %.critedge ] ; 3 uses
  %.9 = phi ptr [ @.str.152, %.thread173 ], [ @.str.142, %bb.w ], [ null, %bb.ao ], [ null, %.thread173.thread ], [ @.str.145, %.lr.ph212 ], [ @.str.154, %bb.ae ], [ @.str.154, %bb.ac ], [ @.str.148, %bb.z ], [ @.str.153, %bb.x ], [ @.str.149, %bb.aa ], [ @.str.147, %bb.l ], [ @.str.148, %bb.n ], [ @.str.149, %bb.o ], [ @.str.151, %bb.am ], [ @.str.144, %bb.e ], [ @.str.142, %bb.b ], [ @.str.143, %bb.d ], [ @.str.146, %bb.i ], [ @.str.150, %.critedge ], [ @.str.147, %bb.m ]
  %.not.i.i.i135 = icmp eq ptr %.sroa.0144.0189, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIiSaIiEED2Ev.exit136, label %bb.ap

bb.ap:                                            ; preds = %.thread171
  %i.cm = ptrtoint ptr %.sroa.19.0201 to i64
  %i.cn = ptrtoint ptr %.sroa.0144.0189 to i64
  %i.co = sub i64 %i.cm, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0189, i64 noundef %i.co) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit136

_ZNSt6vectorIiSaIiEED2Ev.exit136:                 ; preds = %.thread171, %bb.ap
  ret ptr %.9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau16LintFormatString18checkStringReplaceEPKcmi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %.thread27, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp sgt i32 %3, -1
  br i1 %i.a, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread.us
  %.02031.us = phi i64 [ %i.l, %.thread.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.02031.us
  %i.c = load i8, ptr %i.b, align 1, !tbaa !38
  %i.d = icmp eq i8 %i.c, 37
  br i1 %i.d, label %bb.b, label %.thread.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.e = add nuw i64 %.02031.us, 1                ; 3 uses
  %i.f = icmp eq i64 %i.e, %2
  br i1 %i.f, label %.thread27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.h = load i8, ptr %i.g, align 1, !tbaa !38    ; 2 uses
  %.not.us = icmp eq i8 %i.h, 37
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -48
  %i.k = icmp ult i32 %i.j, 10
  %or.cond = select i1 %.not.us, i1 true, i1 %i.k
  br i1 %or.cond, label %.thread.us, label %.thread27

.thread.us:                                       ; preds = %bb.c, %.lr.ph.split.us
  %.1.us = phi i64 [ %i.e, %bb.c ], [ %.02031.us, %.lr.ph.split.us ]
  %i.l = add i64 %.1.us, 1                        ; 2 uses
  %i.m = icmp ult i64 %i.l, %2
  br i1 %i.m, label %.lr.ph.split.us, label %.thread27, !llvm.loop !551

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread
  %.02031 = phi i64 [ %i.y, %.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.02031
  %i.o = load i8, ptr %i.n, align 1, !tbaa !38
  %i.p = icmp eq i8 %i.o, 37
  br i1 %i.p, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph.split
  %i.q = add nuw i64 %.02031, 1                   ; 4 uses
  %i.r = icmp eq i64 %i.q, %2
  br i1 %i.r, label %.thread27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !38    ; 2 uses
  %.not = icmp eq i8 %i.t, 37
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = sext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %bb.g, label %.thread27

bb.g:                                             ; preds = %bb.f
  %i.x = icmp samesign ugt i32 %i.v, %3
  br i1 %i.x, label %.thread27, label %.thread

.thread:                                          ; preds = %bb.e, %.lr.ph.split, %bb.g
  %.1 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.g ], [ %.02031, %.lr.ph.split ]
  %i.y = add i64 %.1, 1                           ; 2 uses
  %i.z = icmp ult i64 %i.y, %2
  br i1 %i.z, label %.lr.ph.split, label %.thread27, !llvm.loop !551

.thread27:                                        ; preds = %bb.c, %.thread.us, %bb.b, %.thread, %bb.f, %bb.d, %bb.g, %bb.a
  %i.aa = phi ptr [ @.str.156, %bb.f ], [ null, %bb.a ], [ @.str.157, %bb.g ], [ @.str.155, %bb.d ], [ null, %.thread ], [ @.str.156, %bb.c ], [ null, %.thread.us ], [ @.str.155, %bb.b ]
  ret ptr %i.aa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau16LintTableLiteralD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau16LintTableLiteral5visitEPNS_12AstExprTableE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::DenseHashMap.404", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !552  ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !555  ; 2 uses
  %.idx = mul i64 %i.e, 24                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 2 uses
  %.not129 = icmp eq i64 %i.e, 0
  br i1 %.not129, label %._crit_edge140.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add i64 %.idx, -24                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 192
  br i1 %min.iters.check, label %.lr.ph.preheader215, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.h = udiv i64 %i.g, 24
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.j = and i64 %i.i, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %i.i, %i.l                 ; 2 uses
  %i.m = mul i64 %n.vec, 24
  %i.n = getelementptr i8, ptr %i.c, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi188 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.o = mul i64 %index, 24                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.o
  %i.p = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep189 = getelementptr i8, ptr %i.p, i64 24
  %i.q = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep190 = getelementptr i8, ptr %i.q, i64 48
  %i.r = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep191 = getelementptr i8, ptr %i.r, i64 72
  %i.s = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep192 = getelementptr i8, ptr %i.s, i64 96
  %i.t = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep193 = getelementptr i8, ptr %i.t, i64 120
  %i.u = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep194 = getelementptr i8, ptr %i.u, i64 144
  %i.v = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep195 = getelementptr i8, ptr %i.v, i64 168
  %i.w = load i32, ptr %next.gep, align 8, !tbaa !556
  %i.x = load i32, ptr %next.gep189, align 8, !tbaa !556
  %i.y = load i32, ptr %next.gep190, align 8, !tbaa !556
  %i.z = load i32, ptr %next.gep191, align 8, !tbaa !556
  %i.aa = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.x, i64 1
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 2
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 3
  %i.ae = load i32, ptr %next.gep192, align 8, !tbaa !556
  %i.af = load i32, ptr %next.gep193, align 8, !tbaa !556
  %i.ag = load i32, ptr %next.gep194, align 8, !tbaa !556
  %i.ah = load i32, ptr %next.gep195, align 8, !tbaa !556
  %i.ai = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = icmp eq <4 x i32> %i.ad, zeroinitializer
  %i.an = icmp eq <4 x i32> %i.al, zeroinitializer
  %i.ao = zext <4 x i1> %i.am to <4 x i32>
  %i.ap = zext <4 x i1> %i.an to <4 x i32>
  %i.aq = add <4 x i32> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <4 x i32> %vec.phi188, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !559

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.preheader215

.lr.ph.preheader215:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0131.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  %.049130.ph = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

._crit_edge140.thread:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader215, %.lr.ph
  %.0131 = phi i32 [ %spec.select, %.lr.ph ], [ %.0131.ph, %.lr.ph.preheader215 ]
  %.049130 = phi ptr [ %i.ax, %.lr.ph ], [ %.049130.ph, %.lr.ph.preheader215 ] ; 2 uses
  %i.au = load i32, ptr %.049130, align 8, !tbaa !556
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %spec.select = add nuw nsw i32 %.0131, %i.aw    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.049130, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.f
  br i1 %.not, label %.lr.ph139, label %.lr.ph, !llvm.loop !560

.lr.ph139:                                        ; preds = %.lr.ph
  %i.ay = uitofp nneg i32 %spec.select to double
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.d

._crit_edge140:                                   ; preds = %bb.aj
  %.not.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split, label %bb.b

bb.b:                                             ; preds = %._crit_edge140
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split

_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split: ; preds = %bb.b, %._crit_edge140
  %.pr = load ptr, ptr %2, align 8, !tbaa !561
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit

_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split, %._crit_edge140.thread
  %i.bc = phi ptr [ %.pr, %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split ], [ null, %._crit_edge140.thread ] ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i80, label %_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #25
  br label %_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 true

bb.d:                                             ; preds = %.lr.ph139, %bb.aj
  %.057137 = phi ptr [ %i.c, %.lr.ph139 ], [ %i.fs, %bb.aj ] ; 2 uses
  %.sroa.0.0136 = phi ptr [ null, %.lr.ph139 ], [ %.sroa.0.1, %bb.aj ] ; 15 uses
  %.sroa.11.0134 = phi i64 [ 0, %.lr.ph139 ], [ %.sroa.11.1, %bb.aj ] ; 14 uses
  %.sroa.17.0133 = phi i64 [ 0, %.lr.ph139 ], [ %.sroa.17.1, %bb.aj ] ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.057137, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !566 ; 10 uses
  %.not66 = icmp eq ptr %i.be, null
  br i1 %.not66, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !348 ; 2 uses
  %i.bh = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !9
  %.not117 = icmp eq i32 %i.bg, %i.bh
  br i1 %.not117, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !567
  %i.bj = load i64, ptr %i.ba, align 8, !tbaa !568
  %i.bk = load i64, ptr %i.bb, align 8, !tbaa !569
  %i.bl = mul i64 %i.bk, 3
  %i.bm = lshr i64 %i.bl, 2
  %.not.i.i81 = icmp ult i64 %i.bj, %i.bm
  br i1 %.not.i.i81, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = invoke noundef ptr @_ZNK4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E4findERS7_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  %.not2.i.i = icmp eq ptr %i.bn, null
  br i1 %.not2.i.i, label %bb.h, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i unwind label %bb.k

_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i: ; preds = %bb.h, %.noexc, %bb.f
  %i.bo = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E13insert_unsafeERS7_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.k

end_hunk_0
