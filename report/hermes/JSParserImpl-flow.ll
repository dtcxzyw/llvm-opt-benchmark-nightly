Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSParserImpl-flow?download=true
inline.NumInlined: 4027
inline.NumDeleted: 716
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl29parseReturnTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE:bb.a
  %.neg206 = add i64 %i.gc, 7
  %i.gg = sub i64 %.neg206, %i.gf                 ; 3 uses
  store i64 %i.gg, ptr %i.gb, align 8, !tbaa !187
  %i.gh = add i64 %i.gg, 72                       ; 2 uses
  %i.gi = icmp ugt i64 %i.gh, 262144
  br i1 %i.gi, label %.critedge.i.i.i173, label %bb.s, !prof !149

.critedge.i.i.i173:                               ; preds = %.thread117
  %i.gj = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.fs, i64 noundef 72, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174

bb.s:                                             ; preds = %.thread117
  %i.gk = add i64 %i.gg, %i.ga
  %i.gl = inttoptr i64 %i.gk to ptr
  store i64 %i.gh, ptr %i.gb, align 8, !tbaa !187
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174: ; preds = %.critedge.i.i.i173, %bb.s
  %.0.i.i.i172 = phi ptr [ %i.gj, %.critedge.i.i.i173 ], [ %i.gl, %bb.s ]
  %i.gm = inttoptr i64 %i.fj to ptr
  %i.gn = inttoptr i64 %i.fo to ptr
  br label %.critedge50.sink.split

.critedge50.sink.split:                           ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit58, %.thread115, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174
  %.sink146 = phi ptr [ %.0.i.i.i172, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174 ], [ %i.et, %.thread115 ], [ %.0.i.i.i56, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit58 ] ; 10 uses
  %.sink139 = phi ptr [ %i.gm, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174 ], [ %i.dn, %.thread115 ], [ %.0.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit58 ]
  %.sink136 = phi ptr [ %i.gn, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174 ], [ %i.eu, %.thread115 ], [ %.140, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit58 ]
  %.sink = phi ptr [ null, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174 ], [ %i.ev, %.thread115 ], [ %i.cn, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit58 ]
  %.sroa.0.0.copyload.i.i72.sink = phi ptr [ %.sroa.0.0.copyload.i.i72, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit174 ], [ %.sroa.0.0.copyload.i.i71, %.thread115 ], [ %.sroa.0.0.copyload.i.i55, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit58 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sink146, i8 0, i64 16, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %.sink146, i64 16
  store i32 172, ptr %i.go, align 8, !tbaa !161
  %i.gp = getelementptr inbounds nuw i8, ptr %.sink146, i64 20
  store i32 0, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %.sink146, i64 48
  store ptr %.sink139, ptr %i.gq, align 8, !tbaa !383
  %i.gr = getelementptr inbounds nuw i8, ptr %.sink146, i64 56
  store ptr %.sink136, ptr %i.gr, align 8, !tbaa !384
  %i.gs = getelementptr inbounds nuw i8, ptr %.sink146, i64 64
  store ptr %.sink, ptr %i.gs, align 8, !tbaa !385
  %i.gt = getelementptr inbounds nuw i8, ptr %.sink146, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.gt, align 8, !tbaa !60
  %i.gu = getelementptr inbounds nuw i8, ptr %.sink146, i64 32
  store ptr %.sroa.0.0.copyload.i.i72.sink, ptr %i.gu, align 8, !tbaa !60
  %i.gv = getelementptr inbounds nuw i8, ptr %.sink146, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.gv, align 8, !tbaa !60
  br label %.critedge50

.critedge50:                                      ; preds = %.critedge50.sink.split, %bb.p, %bb.k, %bb.c
  %.5 = phi ptr [ %i.v, %bb.c ], [ %i.db, %bb.k ], [ %i.fh, %bb.p ], [ %.sink146, %.critedge50.sink.split ] ; 2 uses
  %i.gw = trunc nuw i8 %2 to i1
  br i1 %i.gw, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.critedge50
  %i.gx = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i73 = load ptr, ptr %i.gy, align 8, !tbaa !60
  %i.gz = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !62, !align !63 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !177 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !183
  %i.hd = zext i32 %i.hc to i64
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !184
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !186
  %i.hh = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 3 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !187
  %i.hk = add i64 %i.hj, 7                        ; 2 uses
  %i.hl = add i64 %i.hk, %i.hh
  %i.hm = and i64 %i.hl, 7
  %i.hn = sub i64 %i.hk, %i.hm                    ; 3 uses
  store i64 %i.hn, ptr %i.hi, align 8, !tbaa !187
  %i.ho = add i64 %i.hn, 56                       ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, 262144
  br i1 %i.hp, label %.critedge.i.i.i75, label %bb.u, !prof !149

.critedge.i.i.i75:                                ; preds = %bb.t
  %i.hq = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.gz, i64 noundef 56, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit76

bb.u:                                             ; preds = %bb.t
  %i.hr = add i64 %i.hn, %i.hh
  %i.hs = inttoptr i64 %i.hr to ptr
  store i64 %i.ho, ptr %i.hi, align 8, !tbaa !187
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit76

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit76:  ; preds = %.critedge.i.i.i75, %bb.u
  %.0.i.i.i74 = phi ptr [ %i.hq, %.critedge.i.i.i75 ], [ %i.hs, %bb.u ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i74, i8 0, i64 16, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i.i.i74, i64 16
  store i32 193, ptr %i.ht, align 8, !tbaa !161
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i.i74, i64 20
  store i32 0, ptr %i.hu, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i.i.i74, i64 48
  store ptr %.5, ptr %i.hv, align 8, !tbaa !207
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i.i.i74, i64 24
  store ptr %i.gx, ptr %i.hw, align 8, !tbaa !60
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i.i74, i64 32
  store ptr %.sroa.0.0.copyload.i.i73, ptr %i.hx, align 8, !tbaa !60
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i.i.i74, i64 40
  store ptr %i.gx, ptr %i.hy, align 8, !tbaa !60
  %i.hz = ptrtoint ptr %.0.i.i.i74 to i64
  br label %.critedge52

bb.v:                                             ; preds = %.critedge50
  %i.ia = ptrtoint ptr %.5 to i64
  br label %.critedge52

.critedge52:                                      ; preds = %bb.r, %bb.j, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit166, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit161, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit151, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit, %bb.d, %bb.q, %.critedge46, %.critedge48, %bb.v, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit76
  %.sroa.0112.0 = phi i64 [ %i.hz, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit76 ], [ %i.ia, %bb.v ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit166 ], [ undef, %.critedge46 ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit161 ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ undef, %.critedge48 ], [ undef, %bb.j ], [ undef, %bb.q ], [ undef, %bb.d ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit151 ], [ undef, %bb.r ]
  %.sroa.3.7 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit76 ], [ 1, %bb.v ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit166 ], [ 0, %.critedge46 ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit161 ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ 0, %.critedge48 ], [ 0, %bb.j ], [ 0, %bb.q ], [ 0, %bb.d ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit151 ], [ 0, %bb.r ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0112.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.7, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6ESTree19HookDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_b(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 8, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.b, i8 0, i64 45, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.e, align 8, !tbaa !155
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !155  ; 4 uses
  %i.h = icmp eq ptr %i.d, %2
  %i.i = icmp eq ptr %i.g, %2
  %or.cond.i.i.i.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !154    ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !155
  store ptr %i.k, ptr %2, align 8, !tbaa !154
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !154  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.d, ptr %i.n, align 8, !tbaa !155
  store ptr %i.m, ptr %i.g, align 8, !tbaa !154
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !155
  store ptr %i.j, ptr %i.d, align 8, !tbaa !154
  br label %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit

_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEC2EOS4_.exit: ; preds = %bb.a, %bb.b
  %i.p = zext i1 %6 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %3, ptr %i.q, align 8, !tbaa !388
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %4, ptr %i.r, align 8, !tbaa !389
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %5, ptr %i.s, align 8, !tbaa !390
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.p, ptr %i.t, align 8, !tbaa !391
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl27checkMaybeFlowMatchSlowPathEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i64 0) #9
  %i.c = and i64 %i.b, 8589934591
  %i.d = icmp eq i64 %i.c, 4294967349
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes6parser6detail12JSParserImpl35reparseArgumentsAsMatchArgumentFlowEN4llvh7SMRangeEONS3_12simple_ilistINS_6ESTree4NodeEJEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2824) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !154
  %i.b = icmp eq ptr %3, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.d, align 1, !tbaa !135
  store ptr @.str.39, ptr %4, align 8, !tbaa !136
  store i8 3, ptr %i.c, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138, !nonnull !62, !align !63
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.f, i32 noundef 0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.sroa.020.026 = load ptr, ptr %i.g, align 8, !tbaa !155 ; 2 uses
  %.not27 = icmp eq ptr %.sroa.020.026, %3
  br i1 %.not27, label %_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !155 ; 3 uses
  %.not4.i.i = icmp eq ptr %.pre, %3
  br i1 %.not4.i.i, label %_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.02.05.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.pre, %._crit_edge ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155  ; 2 uses
  %i.m = add nuw nsw i64 %.06.i.i, 1
  %.not.i.i = icmp eq ptr %i.l, %3
  br i1 %.not.i.i, label %_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit: ; preds = %.lr.ph.i.i
  %i.n = icmp eq i64 %.06.i.i, 0
  br i1 %i.n, label %bb.g, label %_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit.thread

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.020.028 = phi ptr [ %.sroa.020.026, %.lr.ph ], [ %.sroa.020.0, %bb.f ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !161
  %i.q = icmp eq i32 %i.p, 45
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.r, align 8, !tbaa !60
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i8 1, ptr %i.i, align 1, !tbaa !135
  store ptr @.str.40, ptr %5, align 8, !tbaa !136
  store i8 3, ptr %i.h, align 8, !tbaa !137
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !138, !nonnull !62, !align !63
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.s, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 8
  %.sroa.020.0 = load ptr, ptr %i.t, align 8, !tbaa !155 ; 2 uses
  %.not = icmp eq ptr %.sroa.020.0, %3
  br i1 %.not, label %._crit_edge, label %bb.d

bb.g:                                             ; preds = %_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit
  store ptr %3, ptr %3, align 8, !tbaa !154
  store ptr %3, ptr %i.g, align 8, !tbaa !155
  br label %bb.j

_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit.thread: ; preds = %bb.c, %._crit_edge, %_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !62, !align !63 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !177  ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !183
  %i.y = zext i32 %i.x to i64
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !184
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !186
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !187 ; 2 uses
  %i.af = add i64 %i.ac, 7
  %i.ag = add i64 %i.af, %i.ae
  %i.ah = and i64 %i.ag, 7
  %.neg25 = add i64 %i.ae, 7
  %i.ai = sub i64 %.neg25, %i.ah                  ; 3 uses
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !187
  %i.aj = add i64 %i.ai, 64                       ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 262144
  br i1 %i.ak, label %.critedge.i.i.i, label %bb.h, !prof !149

.critedge.i.i.i:                                  ; preds = %_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit.thread
  %i.al = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.u, i64 noundef 64, i64 noundef 8) #9
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.h:                                             ; preds = %_ZNK4llvh12simple_ilistIN6hermes6ESTree4NodeEJEE4sizeEv.exit.thread
  %i.am = add i64 %i.ai, %i.ac
  %i.an = inttoptr i64 %i.am to ptr
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !187
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.al, %.critedge.i.i.i ], [ %i.an, %bb.h ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 42, ptr %i.ao, align 8, !tbaa !161
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ap, i8 0, i64 28, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 7 uses
  store ptr %i.aq, ptr %i.aq, align 8, !tbaa !154
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !155
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !155 ; 4 uses
  %i.at = icmp eq ptr %i.aq, %3
  %i.au = icmp eq ptr %i.as, %3
  %or.cond.i.i.i.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.av = load ptr, ptr %3, align 8, !tbaa !154   ; 2 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !154 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %3, ptr %i.ax, align 8, !tbaa !155
  store ptr %i.aw, ptr %3, align 8, !tbaa !154
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !154 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.aq, ptr %i.az, align 8, !tbaa !155
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !154
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !155
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !154
  br label %_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %1, ptr %i.bb, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %2, ptr %i.bc, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %1, ptr %i.bd, align 8, !tbaa !60
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.g
  %.0 = phi ptr [ %.pre, %bb.g ], [ %.0.i.i.i, %_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl26tryParseMatchStatementFlowENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit:
  %2 = alloca %"class.llvh::SMLoc", align 8       ; 5 uses
  %3 = alloca %"class.llvh::simple_ilist", align 8 ; 8 uses
  %4 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr null, ptr %2, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %3, ptr %3, align 8, !tbaa !154
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.sroa.0.0.copyload.i4.i = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !142
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !144
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i.i28 = load ptr, ptr %i.ab, align 8, !tbaa !60 ; 2 uses
  %i.ac = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.b, i32 noundef 0) #9 ; 2 uses
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.ae = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseArgumentsERN4llvh12simple_ilistINS_6ESTree4NodeEJEEERNS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %i.af = extractvalue { i64, i8 } %i.ae, 1
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !145, !range !125, !noundef !62
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !126
  %i.am = icmp eq i32 %i.al, 49
  br i1 %i.am, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i32 %i.d, label %bb.f [
    i32 1, label %bb.d
    i32 38, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.c, align 8, !tbaa !126
  store ptr %i.f, ptr %i.e, align 8, !tbaa !128
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !146
  store i32 38, ptr %i.c, align 8, !tbaa !126
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !128
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i32 %i.d, ptr %i.c, align 8, !tbaa !126
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store <2 x ptr> %i.j, ptr %i.i, align 8, !tbaa !60
  store ptr %i.h, ptr %i.g, align 8, !tbaa !140
  %i.ap = ptrtoint ptr %.sroa.0.0.copyload.i4.i to i64
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !147, !range !125, !noundef !62
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !142 ; 2 uses
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !141 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.r, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 %i.r ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i: ; preds = %bb.i
  store ptr %i.az, ptr %i.n, align 8, !tbaa !142
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i, %bb.i, %bb.h, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !148, !range !125, !noundef !62
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.j, label %.critedge, !prof !149

bb.j:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !150
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.y
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !150
  %i.bg = call ptr @_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr %i.be, ptr %i.bf) ; 0 uses
  br label %.critedge

bb.k:                                             ; preds = %bb.b
  %.sroa.015.0.copyload = load ptr, ptr %2, align 8, !tbaa !60
  %i.bh = call noundef ptr @_ZN6hermes6parser6detail12JSParserImpl35reparseArgumentsAsMatchArgumentFlowEN4llvh7SMRangeEONS3_12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.015.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0.0.copyload.i.i31 = load ptr, ptr %i.bj, align 8, !tbaa !60
  %i.bk = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.b, i32 noundef 0) #9 ; 4 uses
  store ptr %i.bk, ptr %i.z, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %4, ptr %4, align 8, !tbaa !154
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %4, ptr %i.bl, align 8, !tbaa !155
  %i.bm = load i32, ptr %i.bk, align 8, !tbaa !126
  %i.bn = icmp eq i32 %i.bm, 51
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bo = and i32 %1, 2
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.t
  %i.bp = phi ptr [ %i.bk, %.lr.ph ], [ %i.du, %bb.t ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.0.0.copyload.i36 = load ptr, ptr %i.bq, align 8, !tbaa !60 ; 3 uses
  %i.br = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseMatchPatternFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.bs = extractvalue { i64, i8 } %i.br, 0
  %i.bt = extractvalue { i64, i8 } %i.br, 1
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.m, label %.critedge27

bb.m:                                             ; preds = %bb.l
  %i.bv = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 6, i32 noundef 0) #9
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 0) #9 ; 2 uses
  %i.bx = extractvalue { i64, i8 } %i.bw, 1
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %.thread, label %.critedge27

.thread:                                          ; preds = %bb.n
  %i.bz = extractvalue { i64, i8 } %i.bw, 0
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.m
  %.125 = phi ptr [ %i.ca, %.thread ], [ null, %bb.m ]
  %i.cb = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 92, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr %.sroa.0.0.copyload.i36) #9
  br i1 %i.cb, label %bb.p, label %.critedge27

bb.p:                                             ; preds = %bb.o
  %i.cc = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl10parseBlockENS1_5ParamENS0_7JSLexer14GrammarContextEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.bo, i32 noundef 0, i1 noundef zeroext false) #9 ; 2 uses
  %i.cd = extractvalue { i64, i8 } %i.cc, 1
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.q, label %.critedge27

bb.q:                                             ; preds = %bb.p
  %i.cf = extractvalue { i64, i8 } %i.cc, 0
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !62, !align !63 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !177 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !183
  %i.cl = zext i32 %i.ck to i64
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !184
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !186
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !187 ; 2 uses
  %i.cs = add i64 %i.cp, 7
  %i.ct = add i64 %i.cs, %i.cr
end_hunk_0
