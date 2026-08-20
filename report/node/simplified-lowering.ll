inline.NumInlined: 8420
inline.NumDeleted: 1145
begin_hunk_0_@_ZN2v88internal8compiler22RepresentationSelector13RunLowerPhaseEPNS1_18SimplifiedLoweringE:bb.a
  %.sroa.838.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i32, ptr %i.m, align 4
  %i.ac = and i32 %i.ab, 16777215
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.af = load <2 x i64>, ptr %.sroa.8.8..sroa_idx, align 8
  store i32 1, ptr %.sroa.8.8..sroa_idx, align 8
  store i64 %i.ad, ptr %.sroa.838.8..sroa_idx, align 8
  %i.ag = load <2 x ptr>, ptr %i.y, align 8
  store ptr %i.aa, ptr %i.y, align 8
  store ptr @.str.43, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.0.0.copyload.i = load i24, ptr %i.ae, align 2
  tail call void @_ZN2v88internal8compiler22RepresentationSelector9VisitNodeILNS1_5PhaseE2EEEvPNS1_4NodeENS1_10TruncationEPNS1_18SimplifiedLoweringE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull %i.l, i24 %.sroa.0.0.copyload.i, ptr noundef %1)
  store <2 x ptr> %i.ag, ptr %i.y, align 8
  store <2 x i64> %i.af, ptr %.sroa.8.8..sroa_idx, align 8
  br label %_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit

_ZN2v88internal8compiler15NodeOriginTable5ScopeD2Ev.exit: ; preds = %_ZN2v88internal8compiler15NodeOriginTable5ScopeC2EPS2_PKcPNS1_4NodeE.exit.thread, %bb.d
  store i64 %i.v, ptr %i.u, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.02949, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !42

.loopexit:                                        ; preds = %bb.f
  %i.aj = icmp eq ptr %i.an, %i.at
  br i1 %i.aj, label %._crit_edge58, label %.lr.ph57, !llvm.loop !43

._crit_edge58:                                    ; preds = %.lr.ph57, %.loopexit, %._crit_edge
  ret void

.lr.ph57:                                         ; preds = %._crit_edge, %.loopexit
  %.02855 = phi ptr [ %i.an, %.loopexit ], [ %i.i, %._crit_edge ] ; 3 uses
  %i.ak = load ptr, ptr %.02855, align 8          ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02855, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  tail call void @_ZN2v88internal8compiler4Node11ReplaceUsesEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef %i.am) #16
  tail call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ak) #16
  %i.an = getelementptr inbounds nuw i8, ptr %.02855, i64 16 ; 4 uses
  %i.ao = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not3150 = icmp eq ptr %i.an, %i.ao
  br i1 %.not3150, label %._crit_edge58, label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph57, %bb.f
  %i.ap = phi ptr [ %i.at, %bb.f ], [ %i.ao, %.lr.ph57 ]
  %.051 = phi ptr [ %i.au, %bb.f ], [ %i.an, %.lr.ph57 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.051, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, %i.ak
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph53
  store ptr %i.am, ptr %i.aq, align 8
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph53, %bb.e
  %i.at = phi ptr [ %i.ap, %.lr.ph53 ], [ %.pre, %bb.e ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.051, i64 16 ; 2 uses
  %.not31 = icmp eq ptr %i.au, %i.at
  br i1 %.not31, label %.loopexit, label %.lr.ph53, !llvm.loop !44
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler22RepresentationSelector14RunVerifyPhaseEPNS0_24OptimizedCompilationInfoE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1165", align 8  ; 4 uses
  %3 = alloca %"class.std::optional.102", align 8 ; 5 uses
  %4 = alloca %"struct.v8::internal::compiler::TurboJsonFile", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::JSONGraphWriter", align 8 ; 4 uses
  %6 = alloca %"struct.v8::internal::compiler::TurboJsonFile", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::(anonymous namespace)::JSONGraphWriterWithVerifierTypes", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.088.0101 = load ptr, ptr %i.c, align 8   ; 2 uses
  %i.d = icmp eq ptr %.sroa.088.0101, null
  br i1 %i.d, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

.loopexit:                                        ; preds = %.split98, %.split98.us.us, %_ZN2v88internal8compiler22RepresentationSelector29InsertTypeOverrideForVerifierERKNS1_4TypeEPNS1_4NodeE.exit
  %.sroa.088.0 = load ptr, ptr %.sroa.088.0102, align 8 ; 2 uses
  %i.f = icmp eq ptr %.sroa.088.0, null
  br i1 %i.f, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @_ZN2v88internal8compiler22RepresentationSelector17GenerateTraversalEv(ptr noundef nonnull align 8 dereferenceable(464) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not104 = icmp eq ptr %i.h, %i.j
  br i1 %.not104, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph103, %.loopexit
  %.sroa.088.0102 = phi ptr [ %.sroa.088.0101, %.lr.ph103 ], [ %.sroa.088.0, %.loopexit ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.088.0102, i64 8 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN2v88internal8compiler22RepresentationSelector29InsertTypeOverrideForVerifierERKNS1_4TypeEPNS1_4NodeE.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i64 4294967297, ptr %3, align 8
  store i8 1, ptr %i.e, align 8
  %i.s = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder14SLVerifierHintEPKNS1_8OperatorERKSt8optionalINS1_4TypeEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.m, ptr %2, align 8
  %i.t = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull %2, i1 noundef zeroext false) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.u = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler26SimplifiedLoweringVerifier10RecordHintEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(144) %i.u, ptr noundef %i.t)
  br label %_ZN2v88internal8compiler22RepresentationSelector29InsertTypeOverrideForVerifierERKNS1_4TypeEPNS1_4NodeE.exit

_ZN2v88internal8compiler22RepresentationSelector29InsertTypeOverrideForVerifierERKNS1_4TypeEPNS1_4NodeE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.0.i.fr = freeze ptr %.0.i                     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.088.0102, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.088.0102, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not6299 = icmp eq ptr %i.w, %i.y
  br i1 %.not6299, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler22RepresentationSelector29InsertTypeOverrideForVerifierERKNS1_4TypeEPNS1_4NodeE.exit
  %.not15.i = icmp eq ptr %.0.i.fr, null
  br i1 %.not15.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %.lr.ph, %.split98.us.us
  %.057100.us = phi ptr [ %i.bf, %.split98.us.us ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.z = load ptr, ptr %.057100.us, align 8       ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = add i64 %i.aa, 32
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit.us.us, %.split.us.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit.us.us ], [ 0, %.split.us.us ] ; 6 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i32 %i.ae, 251658240
  %.not.i63.us.us = icmp eq i32 %i.af, 251658240
  br i1 %.not.i63.us.us, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.us.us, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread.us.us

_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread.us.us: ; preds = %bb.d
  %i.ag = lshr i32 %i.ae, 24
  %i.ah = and i32 %i.ag, 15
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv119, %i.ai
  br i1 %i.aj, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us.us, label %.split98.us.us

_ZNK2v88internal8compiler4Node7InputAtEi.exit.us.us: ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread.us.us
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv119 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = load ptr, ptr %i.l, align 8
  %i.an = icmp ne ptr %i.al, %i.am
  %.not18.i.us.us = icmp eq ptr %i.al, null
  %or.cond = or i1 %i.an, %.not18.i.us.us
  br i1 %or.cond, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit.us.us, label %bb.e

_ZNK2v88internal8compiler4Node10InputCountEv.exit.us.us: ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv119, %i.ar
  br i1 %i.as, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.us.us, label %.split98.us.us

_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.us.us: ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.us.us
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = add i64 %i.at, 16
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv119 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = load ptr, ptr %i.l, align 8
  %i.az = icmp ne ptr %i.ax, %i.ay
  %.not.i65.us.us = icmp eq ptr %i.ax, null
  %or.cond145.a = or i1 %i.az, %.not.i65.us.us
  br i1 %or.cond145.a, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit.us.us, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.us.us, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us.us
  %i.ba = phi ptr [ %i.ak, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us.us ], [ %i.aw, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.us.us ]
  %i.bb = phi ptr [ %i.al, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us.us ], [ %i.ax, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.us.us ]
  %i.bc = phi ptr [ %i.z, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us.us ], [ %i.ao, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.us.us ]
  %i.bd = xor i64 %indvars.iv119, -1
  %i.be = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %i.bd
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull %i.be) #16
  store ptr null, ptr %i.ba, align 8
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit.us.us

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit.us.us: ; preds = %bb.e, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread.us.us, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.us.us
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %bb.d, !llvm.loop !45

.split98.us.us:                                   ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.us.us, %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread.us.us
  %i.bf = getelementptr inbounds nuw i8, ptr %.057100.us, i64 8 ; 2 uses
  %.not62.us = icmp eq ptr %i.bf, %i.y
  br i1 %.not62.us, label %.loopexit, label %.split.us.us

.split:                                           ; preds = %.lr.ph, %.split98
  %.057100 = phi ptr [ %i.bw, %.split98 ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.bg = load ptr, ptr %.057100, align 8         ; 3 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = add i64 %i.bh, 32
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, %.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit ], [ 0, %.split ] ; 6 uses
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = and i32 %i.bl, 251658240
  %.not.i63 = icmp eq i32 %i.bm, 251658240
  br i1 %.not.i63, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.f
  %i.bn = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv, %i.bq
  br i1 %i.br, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread, label %.split98

_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread: ; preds = %bb.f
  %i.bs = lshr i32 %i.bl, 24
  %i.bt = and i32 %i.bs, 15
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv, %i.bu
  br i1 %i.bv, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit, label %.split98

.split98:                                         ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread, %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.057100, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %i.bw, %i.y
  br i1 %.not62, label %.loopexit, label %.split

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit.thread
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 3 uses
  %i.bz = load ptr, ptr %i.l, align 8
  %i.ca = icmp ne ptr %i.by, %i.bz
  %.not18.i = icmp eq ptr %i.by, %.0.i.fr
  %or.cond147 = or i1 %i.ca, %.not18.i
  br i1 %or.cond147, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread: ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %i.cb = ptrtoint ptr %i.bn to i64
  %i.cc = add i64 %i.cb, 16
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %i.cg = load ptr, ptr %i.l, align 8
  %i.ch = icmp ne ptr %i.cf, %i.cg
  %.not.i65 = icmp eq ptr %i.cf, %.0.i.fr
  %or.cond146 = or i1 %i.ch, %.not.i65
  br i1 %or.cond146, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread
  %i.ci = phi ptr [ %i.bx, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ %i.ce, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread ]
  %i.cj = phi ptr [ %i.by, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ %i.cf, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread ] ; 2 uses
  %i.ck = phi ptr [ %i.bg, %_ZNK2v88internal8compiler4Node7InputAtEi.exit ], [ %i.bn, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread ]
  %i.cl = xor i64 %indvars.iv, -1
  %i.cm = getelementptr inbounds [24 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %.not14.i = icmp eq ptr %i.cj, null
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull %i.cm) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %.0.i.fr, ptr %i.ci, align 8
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.fr, ptr noundef nonnull %i.cm) #16
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %bb.h, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.thread, %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.f, !llvm.loop !45

._crit_edge108:                                   ; preds = %bb.k, %._crit_edge
  %.not59 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not59, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit, label %bb.l

bb.i:                                             ; preds = %.lr.ph107, %bb.k
  %.055105 = phi ptr [ %i.h, %.lr.ph107 ], [ %i.cx, %bb.k ] ; 2 uses
  %i.cn = load ptr, ptr %.055105, align 8         ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 16777215
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = load ptr, ptr %i.k, align 8
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.0.0.copyload.i = load i64, ptr %i.cu, align 8 ; 2 uses
  %i.cv = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.cv, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.cw, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.055105, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.j
  br i1 %.not, label %._crit_edge108, label %bb.i

bb.l:                                             ; preds = %._crit_edge108
  %i.cy = load i32, ptr %1, align 8
  %i.cz = and i32 %i.cy, 2048
  %.not93 = icmp eq i32 %i.cz, 0
  br i1 %.not93, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not94 = icmp eq ptr %i.db, null
  br i1 %.not94, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  %.not.i67 = icmp eq ptr %i.dd, null
  br i1 %.not.i67, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = call noundef zeroext i1 @_ZNK2v88internal9LocalHeap8IsParkedEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.de) #16
  br i1 %i.df, label %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit

_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i: ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 17
  %i.dh = cmpxchg weak ptr %i.dg, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.di = extractvalue { i8, i1 } %i.dh, 1
  br i1 %i.di, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i
  call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.de) #16
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit

_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit: ; preds = %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i, %bb.p, %bb.m, %bb.n, %bb.o
  %.sroa.582.0 = phi i1 [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.o ], [ true, %bb.p ], [ true, %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i ]
  %.sroa.080.0 = phi ptr [ undef, %bb.n ], [ undef, %bb.m ], [ undef, %bb.o ], [ %i.de, %bb.p ], [ %i.de, %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN2v88internal8compiler13TurboJsonFileC1EPNS0_24OptimizedCompilationInfoESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull %1, i32 noundef 1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.dj = load ptr, ptr %0, align 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.do = load ptr, ptr %i.dn, align 8
  call void @_ZN2v88internal8compiler15JSONGraphWriterC1ERSoPKNS1_7TFGraphEPKNS1_19SourcePositionTableEPKNS1_15NodeOriginTableE(ptr noundef nonnull align 8 dereferenceable(50) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.dk, ptr noundef %i.dm, ptr noundef %i.do) #16
  call void @_ZN2v88internal8compiler15JSONGraphWriter10PrintPhaseEPKc(ptr noundef nonnull align 8 dereferenceable(50) %5, ptr noundef nonnull @.str.49) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN2v88internal8compiler13TurboJsonFileD1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.sroa.582.0, label %bb.q, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

bb.q:                                             ; preds = %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.080.0, i64 9
  %i.dq = cmpxchg weak ptr %i.dp, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.dr = extractvalue { i8, i1 } %i.dq, 1
  br i1 %i.dr, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %.sroa.080.0) #16
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit

_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit: ; preds = %bb.r, %bb.q, %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit, %bb.l, %._crit_edge108
  %i.ds = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dt = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not60109 = icmp eq ptr %i.ds, %i.dt
  br i1 %.not60109, label %._crit_edge112, label %.lr.ph111

.lr.ph111:                                        ; preds = %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.s

._crit_edge112:                                   ; preds = %bb.s, %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit
  br i1 %.not59, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit72, label %bb.t

bb.s:                                             ; preds = %.lr.ph111, %bb.s
  %.054110 = phi ptr [ %i.ds, %.lr.ph111 ], [ %i.dx, %bb.s ] ; 2 uses
  %i.dv = load ptr, ptr %.054110, align 8
  %i.dw = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler26SimplifiedLoweringVerifier9VisitNodeEPNS1_4NodeERNS1_14OperationTyperE(ptr noundef nonnull align 8 dereferenceable(144) %i.dw, ptr noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(104) %i.du) #16
  %i.dx = getelementptr inbounds nuw i8, ptr %.054110, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.dx, %i.dt
  br i1 %.not60, label %._crit_edge112, label %bb.s

bb.t:                                             ; preds = %._crit_edge112
  %i.dy = load i32, ptr %1, align 8
  %i.dz = and i32 %i.dy, 2048
  %.not95 = icmp eq i32 %i.dz, 0
  br i1 %.not95, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit72, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %.not96 = icmp eq ptr %i.eb, null
  br i1 %.not96, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit71, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8            ; 3 uses
  %.not.i68 = icmp eq ptr %i.ed, null
  br i1 %.not.i68, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit71, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 4 uses
  %i.ef = call noundef zeroext i1 @_ZNK2v88internal9LocalHeap8IsParkedEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.ee) #16
  br i1 %i.ef, label %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i69, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit71

_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i69: ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 17
  %i.eh = cmpxchg weak ptr %i.eg, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.ei = extractvalue { i8, i1 } %i.eh, 1
  br i1 %i.ei, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit71, label %bb.x

bb.x:                                             ; preds = %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i69
  call void @_ZN2v88internal9LocalHeap14UnparkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.ee) #16
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit71

_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit71: ; preds = %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i69, %bb.x, %bb.u, %bb.v, %bb.w
  %.sroa.5.0 = phi i1 [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.w ], [ true, %bb.x ], [ true, %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i69 ]
  %.sroa.076.0 = phi ptr [ undef, %bb.v ], [ undef, %bb.u ], [ undef, %bb.w ], [ %i.ee, %bb.x ], [ %i.ee, %_ZNSt19_Optional_base_implIN2v88internal13UnparkedScopeESt14_Optional_baseIS2_Lb0ELb0EEE8_M_resetEv.exit.i.i69 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN2v88internal8compiler13TurboJsonFileC1EPNS0_24OptimizedCompilationInfoESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull %1, i32 noundef 1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ej = load ptr, ptr %0, align 8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal8compiler15JSONGraphWriterC2ERSoPKNS1_7TFGraphEPKNS1_19SourcePositionTableEPKNS1_15NodeOriginTableE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ek, ptr noundef %i.em, ptr noundef %i.eo) #16
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN2v88internal8compiler12_GLOBAL__N_132JSONGraphWriterWithVerifierTypesE, i64 16), ptr %7, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.ep, ptr %i.eq, align 8
  call void @_ZN2v88internal8compiler15JSONGraphWriter10PrintPhaseEPKc(ptr noundef nonnull align 8 dereferenceable(50) %7, ptr noundef nonnull @.str.50) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN2v88internal8compiler13TurboJsonFileD1Ev(ptr noundef nonnull align 8 dereferenceable(248) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br i1 %.sroa.5.0, label %bb.y, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit72

bb.y:                                             ; preds = %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit71
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.076.0, i64 9
  %i.es = cmpxchg weak ptr %i.er, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.et = extractvalue { i8, i1 } %i.es, 1
  br i1 %i.et, label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit72, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN2v88internal9LocalHeap12ParkSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %.sroa.076.0) #16
  br label %_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit72

_ZN2v88internal8compiler21UnparkedScopeIfNeededD2Ev.exit72: ; preds = %bb.z, %bb.y, %_ZN2v88internal8compiler21UnparkedScopeIfNeededC2EPNS1_12JSHeapBrokerEb.exit71, %bb.t, %._crit_edge112
  %i.eu = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
end_hunk_0
