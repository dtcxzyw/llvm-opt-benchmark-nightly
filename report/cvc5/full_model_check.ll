inline.NumInlined: 5306
inline.NumDeleted: 1576
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers7fmcheck9EntryTrie10getEntriesEPNS3_18FirstOrderModelFmcENS0_12NodeTemplateILb1EEERSt6vectorIiSaIiEESC_ib:bb.a
; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers7fmcheck3Def8addEntryEPNS3_18FirstOrderModelFmcENS0_12NodeTemplateILb1EEES8_(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef %1, ptr noundef align 8 %2, ptr noundef align 8 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %5 = alloca %"class.std::vector.60", align 8    ; 11 uses
  %6 = alloca %"class.std::vector.60", align 8    ; 11 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !8      ; 8 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers7fmcheck9EntryTrie17hasGeneralizationEPNS3_18FirstOrderModelFmcENS0_12NodeTemplateILb1EEEi(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull align 8 %4, i32 noundef 0)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.o = load i64, ptr %i.a, align 8              ; 3 uses
  %i.p = and i64 %i.o, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.p, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %i.o, 1152920405095219200
  %i.r = and i64 %i.q, 1152920405095219200        ; 2 uses
  %i.s = and i64 %i.o, -1152920405095219201
  %i.t = or disjoint i64 %i.r, %i.s
  store i64 %i.t, ptr %i.a, align 8
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  br i1 %i.n, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit53, label %bb.j

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  br label %bb.bo

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !69
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !99, !range !108, !noundef !109
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.an, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %2, align 8, !tbaa !8     ; 8 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !8
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = lshr i64 %i.al, 40
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = and i32 %i.an, 1048575                  ; 3 uses
  %i.ap = icmp samesign ult i32 %i.ao, 1048574
  br i1 %i.ap, label %bb.l, label %bb.m, !prof !28

bb.l:                                             ; preds = %bb.k
  %i.aq = add nuw nsw i32 %i.ao, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 40
  %i.at = and i64 %i.al, -1152920405095219201
  %i.au = or i64 %i.as, %i.at
  store i64 %i.au, ptr %i.ak, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit31

bb.m:                                             ; preds = %bb.k
  %i.av = icmp eq i32 %i.ao, 1048574
  br i1 %i.av, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit31, !prof !29

bb.n:                                             ; preds = %bb.m
  %i.aw = or i64 %i.al, 1152920405095219200
  store i64 %i.aw, ptr %i.ak, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit31 unwind label %bb.s

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit31: ; preds = %bb.m, %bb.l, %bb.n
  invoke void @_ZN4cvc58internal6theory11quantifiers7fmcheck9EntryTrie10getEntriesEPNS3_18FirstOrderModelFmcENS0_12NodeTemplateILb1EEERSt6vectorIiSaIiEESC_ib(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit31
  %i.ax = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.ay = and i64 %i.ax, 1152920405095219200
  %.not.i.i32 = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i32, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit33, label %bb.p, !prof !29

bb.p:                                             ; preds = %bb.o
  %i.az = add i64 %i.ax, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %i.ax, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.ak, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit33, !prof !29

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit33 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit33: ; preds = %bb.o, %bb.p, %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !77 ; 2 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !82    ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %.not59 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not59, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit33
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !82
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.u

.preheader:                                       ; preds = %bb.x, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit33
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !77 ; 2 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !82    ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %.not60 = icmp eq ptr %i.br, %i.bs
  br i1 %.not60, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !82
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.ad

bb.s:                                             ; preds = %bb.n
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit31
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  br label %bb.ak

bb.u:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %11, %bb.x ]
  %.01756 = phi i32 [ 0, %.lr.ph ], [ %10, %bb.x ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !81
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !81
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.bp, align 8, !tbaa !69
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ce
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = load ptr, ptr %3, align 8, !tbaa !8
  %.not = icmp eq ptr %i.ck, %i.cl
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 2, ptr %i.cf, align 4, !tbaa !81
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v
  %10 = add i32 %.01756, 1                        ; 2 uses
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.cm = icmp ugt i64 %i.bm, %11
  br i1 %i.cm, label %bb.u, label %.preheader, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.ag, %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !77 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !80
  %.not.i.i34 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not.i.i34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.cp, align 4, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.z:                                             ; preds = %._crit_edge
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !82 ; 4 uses
  %i.cu = ptrtoint ptr %i.cp to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 6 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775804
  br i1 %i.cx, label %bb.aa, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #28
          to label %.noexc35 unwind label %bb.aj

.noexc35:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.cy = ashr exact i64 %i.cw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 2305843009213693951)
  %i.dc = select i1 %i.da, i64 2305843009213693951, i64 %i.db ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #27
          to label %.noexc36 unwind label %bb.aj  ; 4 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  store i32 0, ptr %i.df, align 4, !tbaa !81
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.ab, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ab:                                            ; preds = %.noexc36
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.de, ptr align 4 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ab, %.noexc36
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #29
  %.pre.pre = load ptr, ptr %6, align 8, !tbaa !82
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.ac ], [ %i.bs, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.de, ptr %i.cn, align 8, !tbaa !82
  store ptr %i.dh, ptr %i.co, align 8, !tbaa !77
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.di, ptr %i.cq, align 8, !tbaa !80
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ad:                                            ; preds = %.lr.ph58, %bb.ag
  %indvars.iv62 = phi i64 [ 0, %.lr.ph58 ], [ %13, %bb.ag ]
  %.057 = phi i32 [ 0, %.lr.ph58 ], [ %12, %bb.ag ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv62
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !81
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !81
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dp = load ptr, ptr %i.bz, align 8, !tbaa !69
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dl
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.ds = load ptr, ptr %3, align 8, !tbaa !8
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %i.dm, align 4, !tbaa !81
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af, %bb.ae
  %12 = add i32 %.057, 1                          ; 2 uses
  %13 = zext i32 %12 to i64                       ; 2 uses
  %i.du = icmp ugt i64 %i.bw, %13
  br i1 %i.du, label %bb.ad, label %._crit_edge, !llvm.loop !111

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.y
  %i.dv = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.bs, %bb.y ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !80
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.eb = load ptr, ptr %5, align 8, !tbaa !82    ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIiSaIiEED2Ev.exit38, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !80
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit38

_ZNSt6vectorIiSaIiEED2Ev.exit38:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.an

bb.aj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.aa
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.aj ], [ %i.cb, %bb.t ], [ %i.ca, %bb.s ]
  %i.ei = load ptr, ptr %6, align 8, !tbaa !82    ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIiSaIiEED2Ev.exit40, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !80
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit40

_ZNSt6vectorIiSaIiEED2Ev.exit40:                  ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.eo = load ptr, ptr %5, align 8, !tbaa !82    ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIiSaIiEED2Ev.exit42, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit40
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !80
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit42

_ZNSt6vectorIiSaIiEED2Ev.exit42:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit40, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bo

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit38, %bb.j
  %i.eu = load ptr, ptr %2, align 8, !tbaa !8     ; 8 uses
  store ptr %i.eu, ptr %8, align 8, !tbaa !8
  %i.ev = load i64, ptr %i.eu, align 8            ; 3 uses
  %i.ew = lshr i64 %i.ev, 40
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = and i32 %i.ex, 1048575                  ; 3 uses
  %i.ez = icmp samesign ult i32 %i.ey, 1048574
  br i1 %i.ez, label %bb.ao, label %bb.ap, !prof !28

bb.ao:                                            ; preds = %bb.an
  %i.fa = add nuw nsw i32 %i.ey, 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 40
  %i.fd = and i64 %i.ev, -1152920405095219201
  %i.fe = or i64 %i.fc, %i.fd
  store i64 %i.fe, ptr %i.eu, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit43

bb.ap:                                            ; preds = %bb.an
  %i.ff = icmp eq i32 %i.ey, 1048574
  br i1 %i.ff, label %bb.aq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit43, !prof !29

bb.aq:                                            ; preds = %bb.ap
  %i.fg = or i64 %i.ev, 1152920405095219200
  store i64 %i.fg, ptr %i.eu, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eu)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit43

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit43: ; preds = %bb.ao, %bb.ap, %bb.aq
  %i.fh = load ptr, ptr %3, align 8, !tbaa !8     ; 8 uses
  store ptr %i.fh, ptr %9, align 8, !tbaa !8
  %i.fi = load i64, ptr %i.fh, align 8            ; 3 uses
  %i.fj = lshr i64 %i.fi, 40
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = and i32 %i.fk, 1048575                  ; 3 uses
  %i.fm = icmp samesign ult i32 %i.fl, 1048574
  br i1 %i.fm, label %bb.ar, label %bb.as, !prof !28

bb.ar:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit43
  %i.fn = add nuw nsw i32 %i.fl, 1
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 40
  %i.fq = and i64 %i.fi, -1152920405095219201
  %i.fr = or i64 %i.fp, %i.fq
  store i64 %i.fr, ptr %i.fh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit45

bb.as:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit43
  %i.fs = icmp eq i32 %i.fl, 1048574
  br i1 %i.fs, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit45, !prof !29

bb.at:                                            ; preds = %bb.as
  %i.ft = or i64 %i.fi, 1152920405095219200
  store i64 %i.ft, ptr %i.fh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit45 unwind label %bb.bl

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit45: ; preds = %bb.as, %bb.ar, %bb.at
  invoke void @_ZN4cvc58internal6theory11quantifiers7fmcheck9EntryTrie8addEntryEPNS3_18FirstOrderModelFmcENS0_12NodeTemplateILb1EEES8_ii(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 %9, i32 noundef %i.ag, i32 noundef 0)
          to label %bb.au unwind label %bb.bm

bb.au:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit45
  %i.fu = load i64, ptr %i.fh, align 8            ; 3 uses
  %i.fv = and i64 %i.fu, 1152920405095219200
  %.not.i.i46 = icmp eq i64 %i.fv, 1152920405095219200
  br i1 %.not.i.i46, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit47, label %bb.av, !prof !29

bb.av:                                            ; preds = %bb.au
  %i.fw = add i64 %i.fu, 1152920405095219200
  %i.fx = and i64 %i.fw, 1152920405095219200      ; 2 uses
  %i.fy = and i64 %i.fu, -1152920405095219201
  %i.fz = or disjoint i64 %i.fx, %i.fy
  store i64 %i.fz, ptr %i.fh, align 8
  %i.ga = icmp eq i64 %i.fx, 0
  br i1 %i.ga, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit47, !prof !29

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit47 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit47: ; preds = %bb.au, %bb.av, %bb.aw
  %i.gd = load i64, ptr %i.eu, align 8            ; 3 uses
  %i.ge = and i64 %i.gd, 1152920405095219200
  %.not.i.i48 = icmp eq i64 %i.ge, 1152920405095219200
  br i1 %.not.i.i48, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49, label %bb.ay, !prof !29

bb.ay:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit47
  %i.gf = add i64 %i.gd, 1152920405095219200
  %i.gg = and i64 %i.gf, 1152920405095219200      ; 2 uses
  %i.gh = and i64 %i.gd, -1152920405095219201
  %i.gi = or disjoint i64 %i.gg, %i.gh
  store i64 %i.gi, ptr %i.eu, align 8
  %i.gj = icmp eq i64 %i.gg, 0
  br i1 %i.gj, label %bb.az, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49, !prof !29

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit47, %bb.ay, %bb.az
  %i.gm = load ptr, ptr %i.z, align 8, !tbaa !67  ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !112
  %.not.i50 = icmp eq ptr %i.gm, %i.go
  br i1 %.not.i50, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49
  %i.gp = load ptr, ptr %2, align 8, !tbaa !8     ; 5 uses
  store ptr %i.gp, ptr %i.gm, align 8, !tbaa !8
  %i.gq = load i64, ptr %i.gp, align 8            ; 3 uses
  %i.gr = lshr i64 %i.gq, 40
end_hunk_0
