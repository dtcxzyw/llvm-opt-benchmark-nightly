inline.NumInlined: 6239
inline.NumDeleted: 1654
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl12parseProgramEv:bb.a
  store ptr %1, ptr %1, align 8, !tbaa !231
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %1, ptr %i.h, align 8, !tbaa !234
  %i.i = load i32, ptr %i.b, align 8, !tbaa !235
  %i.j = icmp eq i32 %i.i, 112
  br i1 %i.j, label %.lr.ph.i, label %.critedge.i.preheader

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.k = call noundef ptr @_ZN6hermes6parser6detail12JSParserImpl14parseDirectiveEv(ptr noundef nonnull align 8 dereferenceable(2824) %0), !inline_history !236 ; 5 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.critedge.i.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !231    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !234
  store ptr %i.l, ptr %i.k, align 8, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.n, align 8, !tbaa !234
  store ptr %i.k, ptr %1, align 8, !tbaa !231
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.p = load i32, ptr %i.o, align 8, !tbaa !235
  %i.q = icmp eq i32 %i.p, 112
  br i1 %i.q, label %.lr.ph.i, label %.critedge.i.preheader, !llvm.loop !237

.critedge.i.preheader:                            ; preds = %bb.b, %.lr.ph.i, %bb.a
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.s = load i32, ptr %i.r, align 8, !tbaa !235
  %i.t = icmp eq i32 %i.s, 120
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.u = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22parseStatementListItemENS1_5ParamENS2_17AllowImportExportERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !236
  br i1 %i.u, label %.critedge.i, label %.loopexit, !llvm.loop !238

bb.d:                                             ; preds = %.critedge.i
  %i.v = load ptr, ptr %1, align 8, !tbaa !231    ; 2 uses
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.0.0.copyload.i5 = load ptr, ptr %i.x, align 8, !tbaa !229
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.0 = phi ptr [ %.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.0.0.copyload.i5, %bb.e ]
  %i.y = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !240 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !241
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !247
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !248
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !250 ; 2 uses
  %i.aj = add i64 %i.ag, 7
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = and i64 %i.ak, 7
  %.neg14 = add i64 %i.ai, 7
  %i.am = sub i64 %.neg14, %i.al                  ; 3 uses
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !250
  %i.an = add i64 %i.am, 104                      ; 2 uses
  %i.ao = icmp ugt i64 %i.an, 262144
  br i1 %i.ao, label %.critedge.i.i.i, label %bb.g, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.f
  %i.ap = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.y, i64 noundef 104, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = add i64 %i.am, %i.ag
  %i.ar = inttoptr i64 %i.aq to ptr
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.g
  %.0.i.i.i = phi ptr [ %i.ap, %.critedge.i.i.i ], [ %i.ar, %bb.g ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 3, ptr %i.as, align 8, !tbaa !252
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.at, i8 0, i64 45, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 72 ; 3 uses
  store ptr %i.au, ptr %i.au, align 8, !tbaa !231
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  store ptr %i.au, ptr %i.av, align 8, !tbaa !234
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88 ; 7 uses
  store ptr %i.aw, ptr %i.aw, align 8, !tbaa !231
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 96 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !234
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !234 ; 4 uses
  %i.az = icmp eq ptr %i.aw, %1
  %i.ba = icmp eq ptr %i.ay, %1
  %or.cond.i.i.i.i.i.i = or i1 %i.az, %i.ba
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree11ProgramNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.bb = load ptr, ptr %1, align 8, !tbaa !231   ; 2 uses
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !231 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %1, ptr %i.bd, align 8, !tbaa !234
  store ptr %i.bc, ptr %1, align 8, !tbaa !231
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.aw, ptr %i.be, align 8, !tbaa !234
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !231
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !234
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree11ProgramNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree11ProgramNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.bf, align 8, !tbaa !229
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.03.0, ptr %i.bg, align 8, !tbaa !229
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.bh, align 8, !tbaa !229
  %i.bi = ptrtoint ptr %.0.i.i.i to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %_ZN6hermes6ESTree11ProgramNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit
  %.sroa.09.0 = phi i64 [ %i.bi, %_ZN6hermes6ESTree11ProgramNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.c ]
  %.sroa.2.0 = phi i8 [ 1, %_ZN6hermes6ESTree11ProgramNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  store i8 %i.e, ptr %i.d, align 8, !tbaa !230
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.bk = zext i32 %i.g to i64                    ; 2 uses
  %i.bl = load i32, ptr %i.f, align 8, !tbaa !132 ; 3 uses
  %i.bm = icmp ult i32 %i.g, %i.bl
  br i1 %i.bm, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.bn = icmp ugt i32 %i.g, %i.bl
  br i1 %i.bn, label %bb.j, label %_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !133
  %i.bq = icmp ugt i32 %i.g, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1224
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.br, i64 noundef %i.bk, i64 noundef 8) #17
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !132
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi.i.in.i = phi i32 [ %.pre.i.i, %bb.k ], [ %i.bl, %bb.j ] ; 2 uses
  %.not13.i.i = icmp eq i32 %i.g, %.pre-phi.i.in.i
  br i1 %.not13.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %.pre-phi.i.i = zext i32 %.pre-phi.i.in.i to i64 ; 2 uses
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !131
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %.pre-phi.i.i
  %i.bu = sub nsw i64 %i.bk, %.pre-phi.i.i
  %i.bv = shl nsw i64 %i.bu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %i.bv, i1 false), !tbaa !214
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.l, %.loopexit
  store i32 %i.g, ptr %i.f, align 8, !tbaa !132
  br label %_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit

_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit: ; preds = %bb.i, %.sink.split.i.i
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2824) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr noundef %3, ptr noundef %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvh::SmallString.98", align 8 ; 8 uses
  %7 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 19 uses
  %8 = alloca %"class.hermes::SourceErrorManager::SourceCoords", align 4 ; 7 uses
  %9 = alloca %"class.hermes::SourceErrorManager::SourceCoords", align 4 ; 8 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.d, align 8, !tbaa !257
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store ptr %6, ptr %i.f, align 8, !tbaa !260
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #17
  %.not56 = icmp eq i64 %2, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = add i64 %2, -1
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 8 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit37, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !262
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !263  ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, 9
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.r = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.80, i64 noundef 9) #17 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.m, ptr noundef nonnull align 1 dereferenceable(9) @.str.80, i64 9, i1 false)
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !263
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  store ptr %i.t, ptr %i.l, align 8, !tbaa !263
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %_ZN4llvh11raw_ostreamlsEPKc.exit46, label %bb.s

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsEPKc.exit37
  %i.u = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN4llvh11raw_ostreamlsEPKc.exit37 ] ; 2 uses
  %.055 = phi i32 [ 0, %.lr.ph ], [ %i.bm, %_ZN4llvh11raw_ostreamlsEPKc.exit37 ] ; 2 uses
  %.not21 = icmp eq i32 %.055, 0
  br i1 %.not21, label %_ZN4llvh11raw_ostreamlsEPKc.exit24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.g, %i.u
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !262
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !263  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i64 %i.aa, 4
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.77, i64 noundef 4) #17 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit24

bb.h:                                             ; preds = %bb.f
  store i32 544370464, ptr %i.x, align 1
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !263
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit24

bb.i:                                             ; preds = %bb.e
  %i.af = icmp ult i64 %i.aa, 2
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.78, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit24

bb.k:                                             ; preds = %bb.i
  store i16 8236, ptr %i.x, align 1
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !263
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit24

_ZN4llvh11raw_ostreamlsEPKc.exit24:               ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.d
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !262
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !263 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit24
  %i.am = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.79, i64 noundef 1) #17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit30

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit24
  store i8 39, ptr %i.ak, align 1
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !263
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit30

_ZN4llvh11raw_ostreamlsEPKc.exit30:               ; preds = %bb.l, %bb.m
  %.0.i.i29 = phi ptr [ %i.am, %bb.l ], [ %7, %bb.m ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.u
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !264
  %i.ar = call noundef ptr @_ZN6hermes6parser12tokenKindStrENS0_9TokenKindE(i32 noundef %i.aq) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit33, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit30
  %i.as = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #18 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !262
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 24 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !263 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ugt i64 %i.as, %i.az
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %i.bb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i29, ptr noundef nonnull %i.ar, i64 noundef %i.as) #17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit33

bb.o:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %.not.i2.i31 = icmp eq i64 %i.as, 0
  br i1 %.not.i2.i31, label %_ZN4llvh11raw_ostreamlsEPKc.exit33, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %i.ar, i64 %i.as, i1 false)
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !263
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.as
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !263
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit33

_ZN4llvh11raw_ostreamlsEPKc.exit33:               ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit30, %bb.n, %bb.o, %bb.p
  %.0.i.i32 = phi ptr [ %i.bb, %bb.n ], [ %.0.i.i29, %bb.p ], [ %.0.i.i29, %bb.o ], [ %.0.i.i29, %_ZN4llvh11raw_ostreamlsEPKc.exit30 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !262
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 24 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !263 ; 2 uses
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit33
  %i.bj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i32, ptr noundef nonnull @.str.79, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit37

bb.r:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit33
  store i8 39, ptr %i.bh, align 1
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !263
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !263
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit37

_ZN4llvh11raw_ostreamlsEPKc.exit37:               ; preds = %bb.q, %bb.r
  %i.bm = add i32 %.055, 1                        ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = icmp ugt i64 %2, %i.bn
  br i1 %i.bo, label %bb.d, label %._crit_edge, !llvm.loop !265

bb.s:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !262
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !263 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.81, i64 noundef 1) #17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !263
  br label %_ZN4llvh9StringRefC2EPKc.exit.i43

bb.u:                                             ; preds = %bb.s
  store i8 32, ptr %i.bq, align 1
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !263
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  store ptr %i.bu, ptr %i.l, align 8, !tbaa !263
  br label %_ZN4llvh9StringRefC2EPKc.exit.i43

_ZN4llvh9StringRefC2EPKc.exit.i43:                ; preds = %bb.u, %bb.t
  %i.bv = phi ptr [ %.pre, %bb.t ], [ %i.bu, %bb.u ] ; 2 uses
  %.0.i.i40 = phi ptr [ %i.bs, %bb.t ], [ %7, %bb.u ] ; 3 uses
  %i.bw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !262
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i40, i64 24 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ugt i64 %i.bw, %i.cc
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i43
  %i.ce = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i40, ptr noundef nonnull %3, i64 noundef %i.bw) #17 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit46

bb.w:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i43
  %.not.i2.i44 = icmp eq i64 %i.bw, 0
  br i1 %.not.i2.i44, label %_ZN4llvh11raw_ostreamlsEPKc.exit46, label %bb.x
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERb:bb.a
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !252 ; 2 uses
  switch i32 %i.ci, label %bb.y [
    i32 275, label %bb.r
    i32 45, label %bb.u
    i32 273, label %bb.ah
  ]

bb.r:                                             ; preds = %bb.q
  %.not160 = icmp eq ptr %i.bz, %7
  br i1 %.not160, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 24
  %.sroa.0.0.copyload.i91 = load ptr, ptr %i.cj, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 32
  %.sroa.2.0.copyload.i93 = load ptr, ptr %.sroa.2.0..sroa_idx.i92, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store i8 1, ptr %i.bv, align 1, !tbaa !277
  store ptr @.str.244, ptr %10, align 8, !tbaa !278
  store i8 3, ptr %i.bu, align 8, !tbaa !274
  %i.ck = load ptr, ptr %i.bo, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ck, i32 noundef 0, ptr %.sroa.0.0.copyload.i91, ptr %.sroa.2.0.copyload.i93, ptr noundef nonnull align 8 dereferenceable(18) %10, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.ah, !llvm.loop !676

bb.t:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !483 ; 4 uses
  %i.cn = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %3, ptr %i.co, align 8, !tbaa !234
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !231
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !234
  store ptr %i.cm, ptr %3, align 8, !tbaa !231
  br label %bb.ah, !llvm.loop !676

bb.u:                                             ; preds = %bb.q
  %.not163 = icmp eq ptr %i.bz, %7
  br i1 %.not163, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 24
  %.sroa.0.0.copyload.i97 = load ptr, ptr %i.cq, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 32
  %.sroa.2.0.copyload.i99 = load ptr, ptr %.sroa.2.0..sroa_idx.i98, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store i8 1, ptr %i.bt, align 1, !tbaa !277
  store ptr @.str.244, ptr %11, align 8, !tbaa !278
  store i8 3, ptr %i.bs, align 8, !tbaa !274
  %i.cr = load ptr, ptr %i.bo, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cr, i32 noundef 0, ptr %.sroa.0.0.copyload.i97, ptr %.sroa.2.0.copyload.i99, ptr noundef nonnull align 8 dereferenceable(18) %11, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ah, !llvm.loop !676

bb.w:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !240 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !241
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !247
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !248
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !250 ; 2 uses
  %i.dd = add i64 %i.da, 7
  %i.de = add i64 %i.dd, %i.dc
  %i.df = and i64 %i.de, 7
  %.neg169 = add i64 %i.dc, 7
  %i.dg = sub i64 %.neg169, %i.df                 ; 3 uses
  store i64 %i.dg, ptr %i.db, align 8, !tbaa !250
  %i.dh = add i64 %i.dg, 56                       ; 2 uses
  %i.di = icmp ugt i64 %i.dh, 262144
  br i1 %i.di, label %.critedge.i.i.i, label %bb.x, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.w
  %i.dj = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cs, i64 noundef 56, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.x:                                             ; preds = %bb.w
  %i.dk = add i64 %i.dg, %i.da
  %i.dl = inttoptr i64 %i.dk to ptr
  store i64 %i.dh, ptr %i.db, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.x
  %.0.i.i.i = phi ptr [ %i.dj, %.critedge.i.i.i ], [ %i.dl, %bb.x ] ; 8 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 96, ptr %i.do, align 8, !tbaa !252
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dp, i8 0, i64 28, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !345
  %i.dr = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %3, ptr %i.ds, align 8, !tbaa !234
  store ptr %i.dr, ptr %.0.i.i.i, align 8, !tbaa !231
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %.0.i.i.i, ptr %i.dt, align 8, !tbaa !234
  store ptr %.0.i.i.i, ptr %3, align 8, !tbaa !231
  br label %bb.ah, !llvm.loop !676

bb.y:                                             ; preds = %bb.q
  %.not199 = icmp eq i32 %i.ci, 54                ; 2 uses
  br i1 %.not199, label %bb.z, label %"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit106.thread"

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !460
  %i.dw = load ptr, ptr %i.bp, align 8, !tbaa !214
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.aa, label %"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit106.thread"

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !462 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !463
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !487
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit106.thread", label %"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit106"

"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit106": ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.sroa.0.0.copyload.i.i103 = load ptr, ptr %i.ef, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i.i104 = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %.sroa.2.0.copyload.i.i105 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i104, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i8 1, ptr %i.br, align 1, !tbaa !277
  store ptr @.str.286, ptr %5, align 8, !tbaa !278
  store i8 3, ptr %i.bq, align 8, !tbaa !274
  %i.eg = load ptr, ptr %i.bo, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eg, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i103, ptr %.sroa.2.0.copyload.i.i105, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ah, !llvm.loop !676

"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit106.thread": ; preds = %bb.aa, %bb.z, %bb.y
  %.0 = phi ptr [ %.sroa.0130.0171, %bb.y ], [ %.sroa.0130.0171, %bb.z ], [ %i.dz, %bb.aa ]
  %.057 = phi ptr [ null, %bb.y ], [ null, %bb.z ], [ %i.eb, %bb.aa ] ; 2 uses
  %i.eh = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24reparseAssignmentPatternEPNS_6ESTree4NodeEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull %.0, i1 noundef zeroext true) ; 2 uses
  %i.ei = extractvalue { i64, i8 } %i.eh, 1
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ab, label %bb.ah, !llvm.loop !676

bb.ab:                                            ; preds = %"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit106.thread"
  %i.ek = extractvalue { i64, i8 } %i.eh, 0       ; 2 uses
  %i.el = inttoptr i64 %i.ek to ptr               ; 7 uses
  %.not69 = icmp eq ptr %.057, null
  br i1 %.not69, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !240 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !241
  %i.eq = zext i32 %i.ep to i64
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !247
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !248
  %i.eu = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 3 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !250 ; 2 uses
  %i.ex = add i64 %i.eu, 7
  %i.ey = add i64 %i.ex, %i.ew
  %i.ez = and i64 %i.ey, 7
  %.neg166 = add i64 %i.ew, 7
  %i.fa = sub i64 %.neg166, %i.ez                 ; 3 uses
  store i64 %i.fa, ptr %i.ev, align 8, !tbaa !250
  %i.fb = add i64 %i.fa, 64                       ; 2 uses
  %i.fc = icmp ugt i64 %i.fb, 262144
  br i1 %i.fc, label %.critedge.i.i.i108, label %bb.ad, !prof !251

.critedge.i.i.i108:                               ; preds = %bb.ac
  %i.fd = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.em, i64 noundef 64, i64 noundef 8) #17
  br label %.thread193

bb.ad:                                            ; preds = %bb.ac
  %i.fe = add i64 %i.fa, %i.eu
  %i.ff = inttoptr i64 %i.fe to ptr
  store i64 %i.fb, ptr %i.ev, align 8, !tbaa !250
  br label %.thread193

.thread193:                                       ; preds = %bb.ad, %.critedge.i.i.i108
  %.0.i.i.i107 = phi ptr [ %i.fd, %.critedge.i.i.i108 ], [ %i.ff, %bb.ad ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i107, i8 0, i64 16, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i107, i64 16
  store i32 97, ptr %i.fg, align 8, !tbaa !252
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i107, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fh, i8 0, i64 28, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i.i107, i64 48
  store ptr %i.el, ptr %i.fi, align 8, !tbaa !470
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i.i.i107, i64 56
  store ptr %.057, ptr %i.fj, align 8, !tbaa !472
  %.sroa.0130.0171.sroa.gep = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 24
  %spec.select.i102.sroa.sel = select i1 %.not199, ptr %.sroa.0130.0171.sroa.gep, ptr inttoptr (i64 24 to ptr) ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %spec.select.i102.sroa.sel, align 8, !tbaa !229
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i.i107, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.fk, align 8, !tbaa !229
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0130.0171, i64 32
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.fl, align 8, !tbaa !229
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i.i107, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.fm, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %spec.select.i102.sroa.sel, align 8, !tbaa !229
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i.i107, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.fn, align 8, !tbaa !229
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %.phi.trans.insert174 = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %.pre175 = load i32, ptr %.phi.trans.insert174, align 8, !tbaa !252
  %i.fo = icmp ne i32 %.pre175, 66
  %.not70164 = icmp eq i64 %i.ek, 0
  %.not70 = or i1 %.not70164, %i.fo
  br i1 %.not70, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %.sroa.0.0.copyload.i111 = load ptr, ptr %i.fp, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %.sroa.2.0.copyload.i113 = load ptr, ptr %.sroa.2.0..sroa_idx.i112, align 8, !tbaa !229
  %i.fq = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !302
  %i.fs = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl25validateBindingIdentifierENS1_5ParamEN4llvh7SMRangeEPNS_12UniqueStringENS0_9TokenKindE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 poison, ptr %.sroa.0.0.copyload.i111, ptr %.sroa.2.0.copyload.i113, ptr noundef %i.fr, i32 noundef 1) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.thread193, %bb.af, %bb.ae
  %.1197 = phi ptr [ %.0.i.i.i107, %.thread193 ], [ %i.el, %bb.af ], [ %i.el, %bb.ae ] ; 4 uses
  %i.ft = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1197, i64 8
  store ptr %3, ptr %i.fu, align 8, !tbaa !234
  store ptr %i.ft, ptr %.1197, align 8, !tbaa !231
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %.1197, ptr %i.fv, align 8, !tbaa !234
  store ptr %.1197, ptr %3, align 8, !tbaa !231
  br label %bb.ah

bb.ah:                                            ; preds = %bb.q, %bb.ag, %"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit106.thread", %"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit106", %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.v, %bb.t, %bb.s, %"_ZZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERbENK3$_0clES5_.exit"
  %.not157 = icmp eq ptr %i.bz, %7
  br i1 %.not157, label %._crit_edge, label %bb.p

_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEaSEOS4_.exit89: ; preds = %bb.j, %.critedge, %._crit_edge
  %cond153 = phi i1 [ true, %._crit_edge ], [ false, %.critedge ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEaSEOS4_.exit89, %bb.c
  %.4 = phi i1 [ %cond153, %_ZN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEaSEOS4_.exit89 ], [ %i.l, %bb.c ], [ true, %bb.b ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl28parseArrowFunctionExpressionENS1_5ParamEPNS_6ESTree4NodeEbS6_S6_S6_N4llvh5SMLocENS2_23AllowTypedArrowFunctionEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %10 = alloca %"class.llvh::simple_ilist", align 8 ; 12 uses
  %i.c = inttoptr i64 %7 to ptr                   ; 3 uses
  %i.d = zext i1 %9 to i8                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1206 ; 6 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !283, !range !81, !noundef !75 ; 2 uses
  store i8 %i.d, ptr %i.e, align 2, !tbaa !283
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.i = load i32, ptr %i.h, align 8, !tbaa !235
  %i.j = icmp eq i32 %i.i, 109
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 109, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.246, ptr %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.k, i32 noundef 0) #17
  store ptr %i.l, ptr %i.g, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i8 %i.d, ptr %i.b, align 1, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr %10, ptr %10, align 8, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %10, ptr %i.m, align 8, !tbaa !234
  %i.n = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22reparseArrowParametersEPNS_6ESTree4NodeEbRN4llvh12simple_ilistIS4_JEEERb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br i1 %i.n, label %bb.d, label %_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !230, !range !81, !noundef !75
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !132  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1205 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !283, !range !81, !noundef !75 ; 2 uses
  store i8 0, ptr %i.s, align 1, !tbaa !283
  %i.u = load i8, ptr %i.e, align 2, !tbaa !283, !range !81, !noundef !75
  %i.v = load i8, ptr %i.b, align 1, !tbaa !283, !range !81, !noundef !75 ; 2 uses
  store i8 %i.v, ptr %i.e, align 2, !tbaa !283
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.x = load i32, ptr %i.w, align 8, !tbaa !235
  %i.y = icmp ne i32 %i.x, 49                     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = trunc nuw i8 %i.t to i1
  %i.aa = trunc nuw i8 %i.f to i1
  %i.ab = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseFunctionBodyENS1_5ParamEbbbNS0_7JSLexer14GrammarContextEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 poison, i1 noundef zeroext true, i1 noundef zeroext %i.z, i1 noundef zeroext %i.aa, i32 noundef 1, i1 noundef zeroext true) ; 2 uses
  %i.ac = extractvalue { i64, i8 } %i.ab, 1
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.thread, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !348
  %i.ag = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !348
  %i.ah = icmp ugt i32 %i.ag, 1023
  br i1 %i.ah, label %.critedge, label %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, !prof !251

.critedge:                                        ; preds = %bb.f
  %i.ai = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22recursionDepthExceededEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 0 uses
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !348
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ae, align 8, !tbaa !348
  br label %bb.i

_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit: ; preds = %bb.f
  %i.al = and i32 %1, 1
  %i.am = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.al, i32 noundef %8, i32 noundef 0, ptr noundef null) ; 2 uses
  %i.an = extractvalue { i64, i8 } %i.am, 1
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = load i32, ptr %i.ae, align 8, !tbaa !348
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !348
  br i1 %i.ao, label %.thread, label %bb.i

.thread:                                          ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, %bb.e
  %.pn = phi { i64, i8 } [ %i.ab, %bb.e ], [ %i.am, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit ]
  %.3.in = extractvalue { i64, i8 } %.pn, 0
  %.3 = inttoptr i64 %.3.in to ptr
  %i.ar = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !240 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !241
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !247
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !248
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !250 ; 2 uses
  %i.bc = add i64 %i.az, 7
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = and i64 %i.bd, 7
  %.neg52 = add i64 %i.bb, 7
  %i.bf = sub i64 %.neg52, %i.be                  ; 3 uses
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !250
  %i.bg = add i64 %i.bf, 136                      ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 262144
  br i1 %i.bh, label %.critedge.i.i.i, label %bb.g, !prof !251

.critedge.i.i.i:                                  ; preds = %.thread
  %i.bi = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ar, i64 noundef 136, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.g:                                             ; preds = %.thread
  %i.bj = add i64 %i.bf, %i.az
  %i.bk = inttoptr i64 %i.bj to ptr
  store i64 %i.bg, ptr %i.ba, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.g
  %.0.i.i.i = phi ptr [ %i.bi, %.critedge.i.i.i ], [ %i.bk, %bb.g ] ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(130) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 5, ptr %i.bl, align 8, !tbaa !252
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.bm, i8 0, i64 45, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 72
  store ptr null, ptr %i.bn, align 8, !tbaa !677
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80 ; 7 uses
  store ptr %i.bo, ptr %i.bo, align 8, !tbaa !231
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !234
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !234 ; 4 uses
  %i.br = icmp eq ptr %i.bo, %10
  %i.bs = icmp eq ptr %i.bq, %10
  %or.cond.i.i.i.i.i.i = or i1 %i.br, %i.bs
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree27ArrowFunctionExpressionNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_S3_S3_S3_bb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.bt = load ptr, ptr %10, align 8, !tbaa !231  ; 2 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !231 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %10, ptr %i.bv, align 8, !tbaa !234
end_hunk_1
begin_hunk_2_@_ZN6hermes6parser6detail12JSParserImpl20parseExportSpecifierEN4llvh5SMLocERNS3_15SmallVectorImplINS3_7SMRangeEEE:bb.a
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes6parser6detail12JSParserImpl14parseDirectiveEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer24isCurrentTokenADirectiveEv(ptr noundef nonnull align 8 dereferenceable(1160) %i.a) #17
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240  ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !241
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !247
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !248
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !250  ; 2 uses
  %i.p = add i64 %i.m, 7
  %i.q = add i64 %i.p, %i.o
  %i.r = and i64 %i.q, 7
  %.neg20 = add i64 %i.o, 7
  %i.s = sub i64 %.neg20, %i.r                    ; 3 uses
  store i64 %i.s, ptr %i.n, align 8, !tbaa !250
  %i.t = add i64 %i.s, 56                         ; 2 uses
  %i.u = icmp ugt i64 %i.t, 262144
  br i1 %i.u, label %.critedge.i.i.i, label %bb.c, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.b
  %i.v = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.e, i64 noundef 56, i64 noundef 8) #17
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !85
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.c:                                             ; preds = %bb.b
  %i.w = add i64 %i.s, %i.m
  %i.x = inttoptr i64 %i.w to ptr
  store i64 %i.t, ptr %i.n, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.c
  %i.y = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.d, %bb.c ]
  %.0.i.i.i = phi ptr [ %i.v, %.critedge.i.i.i ], [ %i.x, %bb.c ] ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !431 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 36, ptr %i.ab, align 8, !tbaa !252
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !334
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.af, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ag, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ah, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.ai, align 8, !tbaa !229
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ak, align 8, !tbaa !229
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !132 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !133
  %.not.i.i = icmp ult i32 %i.an, %i.ap
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i, label %bb.d, !prof !281

bb.d:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1224
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull %i.aq, i64 noundef 0, i64 noundef 8) #17
  %.pre.i.i = load i32, ptr %i.am, align 8, !tbaa !132
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i: ; preds = %bb.d, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.ar = phi i32 [ %.pre.i.i, %bb.d ], [ %i.an, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ]
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !131
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = ptrtoint ptr %i.aa to i64
  store i64 %i.av, ptr %i.au, align 1
  %i.aw = load i32, ptr %i.am, align 8, !tbaa !132
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.am, align 8, !tbaa !132
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !141
  %i.ba = icmp eq ptr %i.aa, %i.az
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.bb, align 8, !tbaa !230
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !145
  %i.be = icmp eq ptr %i.aa, %i.bd
  br i1 %i.be, label %bb.g, label %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1204
  store i8 1, ptr %i.bf, align 4, !tbaa !282
  br label %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit

_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit: ; preds = %bb.f, %bb.g
  %i.bg = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 1) #17 ; 3 uses
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !85
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !235
  %i.bi = icmp eq i32 %i.bh, 60
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit
  %.sroa.2.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.2.0.copyload.i.i11 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i10, align 8, !tbaa !229
  %i.bj = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !85
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit
  %.sroa.03.0 = phi ptr [ %.sroa.2.0.copyload.i.i11, %bb.h ], [ %.sroa.0.0.copyload.i, %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit ]
  %i.bk = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !240 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !241
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !247
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !248
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !250 ; 2 uses
  %i.bv = add i64 %i.bs, 7
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = and i64 %i.bw, 7
  %.neg23 = add i64 %i.bu, 7
  %i.by = sub i64 %.neg23, %i.bx                  ; 3 uses
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !250
  %i.bz = add i64 %i.by, 64                       ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 262144
  br i1 %i.ca, label %.critedge.i.i.i15, label %bb.j, !prof !251

.critedge.i.i.i15:                                ; preds = %bb.i
  %i.cb = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bk, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16

bb.j:                                             ; preds = %bb.i
  %i.cc = add i64 %i.by, %i.bs
  %i.cd = inttoptr i64 %i.cc to ptr
  store i64 %i.bz, ptr %i.bt, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16:  ; preds = %.critedge.i.i.i15, %bb.j
  %.0.i.i.i14 = phi ptr [ %i.cb, %.critedge.i.i.i15 ], [ %i.cd, %bb.j ] ; 9 uses
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !334
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i14, i8 0, i64 16, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 16
  store i32 30, ptr %i.cf, align 8, !tbaa !252
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cg, i8 0, i64 28, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 48
  store ptr %.0.i.i.i, ptr %i.ch, align 8, !tbaa !336
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 56
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !339
  %.sroa.0.0.copyload.i.i.i17 = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i17, ptr %i.cj, align 8, !tbaa !229
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 32
  store ptr %.sroa.03.0, ptr %i.ck, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i18 = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i18, ptr %i.cl, align 8, !tbaa !229
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16
  %.0 = phi ptr [ %.0.i.i.i14, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16 ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZN6hermes6parser7JSLexer24isCurrentTokenADirectiveEv(ptr noundef nonnull align 8 dereferenceable(1160)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser6detail12JSParserImpl14preParseBufferERNS_7ContextEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.304") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(2848) ptr @_Znwm(i64 noundef 2848) #19, !noalias !776 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !781, !noalias !783
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !784, !noalias !783
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes6parser6detail12_GLOBAL__N_19PreParserESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !82, !noalias !783
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !785, !noalias !783
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19, !noalias !783 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240, !noalias !783 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !241, !noalias !783
  store i32 %i.h, ptr %i.e, align 8, !tbaa !241, !noalias !783
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !250, !noalias !783
  store i64 %i.k, ptr %i.i, align 8, !tbaa !250, !noalias !783
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !131, !noalias !783
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !132, !noalias !783
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 0, ptr %i.o, align 4, !tbaa !133, !noalias !783
  store ptr %i.g, ptr %i.m, align 8, !tbaa !298, !noalias !783
  store ptr %i.e, ptr %i.f, align 8, !tbaa !240, !noalias !783
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  tail call void @_ZN6hermes6parser6detail12JSParserImplC2ERNS_7ContextEjNS0_10ParserPassE(ptr noundef nonnull align 8 dereferenceable(2824) %i.p, ptr noundef nonnull align 8 dereferenceable(656) %1, i32 noundef %2, i32 noundef 0), !noalias !783
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.r = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.q, i32 noundef 0) #17
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  store ptr %i.r, ptr %i.s, align 8, !tbaa !85
  %i.t = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl12parseProgramEv(ptr noundef nonnull align 8 dereferenceable(2824) %i.p)
  %i.u = extractvalue { i64, i8 } %i.t, 1
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit, label %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread

_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit: ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !228, !nonnull !75, !align !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread

_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread: ; preds = %bb.a, %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit

bb.b:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit
  store ptr %i.p, ptr %0, align 8, !tbaa !786
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.z, align 8, !tbaa !788
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !278
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !3
  br label %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit

_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit: ; preds = %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread, %bb.c, %bb.d
  %i.ae = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit
  store i32 0, ptr %i.b, align 8, !tbaa !781
  store i32 0, ptr %i.c, align 4, !tbaa !784
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #17, !inline_history !789
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #17, !inline_history !789
  br label %_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !278
  %.not.i.i.i5 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i32 %i.ag, -1
  store i32 %i.ao, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ap = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.i, label %_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !251

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #17
  br label %_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseLazyFunctionENS_6ESTree8NodeKindEbbN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) initializes((160, 168)) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %4, ptr %i.d, align 8, !tbaa !324
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.c, i32 noundef 0) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %i.e, ptr %i.f, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1205
  store i8 %i.a, ptr %i.g, align 1, !tbaa !687
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1206
  store i8 %i.b, ptr %i.h, align 2, !tbaa !372
  switch i32 %1, label %bb.f [
    i32 4, label %bb.b
    i32 6, label %bb.c
    i32 76, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, i1 noundef zeroext false, i1 noundef zeroext true), !inline_history !496 ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 0
  %i.k = extractvalue { i64, i8 } %i.i, 1
  %spec.select3.i = and i8 %i.k, 1                ; 2 uses
  %.not27 = icmp eq i8 %spec.select3.i, 0
  %spec.select.i10 = select i1 %.not27, i64 undef, i64 %i.j
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 2, i1 noundef zeroext true, i1 noundef zeroext true), !inline_history !425 ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 0
  %i.n = extractvalue { i64, i8 } %i.l, 1
  %spec.select3.i15 = and i8 %i.n, 1              ; 2 uses
  %.not26 = icmp eq i8 %spec.select3.i15, 0
  %spec.select.i18 = select i1 %.not26, i64 undef, i64 %i.m
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.o = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parsePropertyAssignmentEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i1 noundef zeroext true)
  %i.p = extractvalue { i64, i8 } %i.o, 0         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !252
  %i.t = icmp ne i32 %i.s, 76
  %.not25 = icmp eq i64 %i.p, 0
  %.not = or i1 %i.t, %.not25
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !388
  %i.w = ptrtoint ptr %i.v to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.023.1 = phi i64 [ %spec.select.i10, %bb.b ], [ %spec.select.i18, %bb.c ], [ %i.w, %bb.e ], [ undef, %bb.d ]
  %.sroa.424.1 = phi i8 [ %spec.select3.i, %bb.b ], [ %spec.select3.i15, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.023.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.424.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS4_EELb0EE13destroy_rangeEPS7_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit
  %.05 = phi ptr [ %i.a, %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit ], [ %1, %bb.a ]
  %i.a = getelementptr inbounds i8, ptr %.05, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !790  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %.pre1.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !793 ; 3 uses
  br i1 %i.e, label %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
end_hunk_2
