Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DiagnosticIDs?download=true
inline.NumInlined: 1122
inline.NumDeleted: 618
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK5clang13DiagnosticIDs14getDescriptionEj:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.3.1 = phi i64 [ %i.u, %bb.c ], [ %i.k, %bb.b ]
  %.sroa.0.1 = phi ptr [ %i.s, %bb.c ], [ %i.h, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang13DiagnosticIDs11getStableIDB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call fastcc noundef ptr @_ZL11GetDiagInfoj(i32 noundef %2) ; 2 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = sub i64 %i.c, ptrtoint (ptr @_ZN12_GLOBAL__N_114StaticDiagInfoE to i64)
  %i.e = sdiv exact i64 %i.d, 10
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_129StaticDiagInfoStableIDOffsetsE, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !53
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_120DiagStableIDsStorageE, i64 %i.h ; 3 uses
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !35, !alias.scope !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !152
  store i64 %i.j, ptr %i.a, align 8, !tbaa !39, !noalias !152
  %i.l = icmp ugt i64 %i.j, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !37, !alias.scope !152
  %i.n = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !152
  store i64 %i.n, ptr %i.k, align 8, !tbaa !21, !alias.scope !152
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.m, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !21
  store i8 %i.p, ptr %i.o, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !152 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !38, !alias.scope !152
  %i.s = load ptr, ptr %0, align 8, !tbaa !37, !alias.scope !152
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !152
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.u = icmp ult i32 %2, 10
  br i1 %i.u, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.m
  %.030.i.i = phi i32 [ %i.ac, %bb.m ], [ 1, %bb.g ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ab, %bb.m ], [ %2, %bb.g ] ; 5 uses
  %i.v = icmp ult i32 %.02329.i.i, 100
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.w = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.x = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.k:                                             ; preds = %bb.i
  %i.z = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ab = udiv i32 %.02329.i.i, 10000
  %i.ac = add i32 %.030.i.i, 4                    ; 2 uses
  %i.ad = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.ad, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !150

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g
  %.022.i.i = phi i32 [ %i.aa, %bb.l ], [ %i.w, %bb.h ], [ %i.y, %bb.j ], [ 1, %bb.g ], [ %i.ac, %bb.m ]
  %i.ae = zext i32 %.022.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %0, align 8, !tbaa !35, !alias.scope !153
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ae, i8 noundef signext 0) #24
  %i.ag = load ptr, ptr %0, align 8, !tbaa !37, !alias.scope !153 ; 4 uses
  %i.ah = icmp ugt i32 %2, 99
  br i1 %i.ah, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !38, !alias.scope !153
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add i32 %i.ak, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ao, %.lr.ph.i2.i ], [ %2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.az, %.lr.ph.i2.i ], [ %i.al, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.am = urem i32 %.020.i.i, 100
  %i.an = shl nuw nsw i32 %i.am, 1
  %i.ao = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21, !noalias !153
  %i.at = zext i32 %.01819.i.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.at
  store i8 %i.as, ptr %i.au, align 1, !tbaa !21
  %i.av = load i8, ptr %i.aq, align 2, !tbaa !21, !noalias !153
  %i.aw = add i32 %.01819.i.i, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1, !tbaa !21
  %i.az = add i32 %.01819.i.i, -2
  %i.ba = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ba, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !151

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %.0.lcssa.i.i = phi i32 [ %2, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.ao, %.lr.ph.i2.i ] ; 3 uses
  %i.bb = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bc = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !21, !noalias !153
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !21
  %i.bi = load i8, ptr %i.be, align 2, !tbaa !21, !noalias !153
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bj = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bk = or disjoint i8 %i.bj, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.n, %bb.o
  %storemerge.i.i = phi i8 [ %i.bk, %bb.o ], [ %i.bi, %bb.n ]
  store i8 %storemerge.i.i, ptr %i.ag, align 1, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZNSt7__cxx119to_stringEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang13DiagnosticIDs18getLegacyStableIDsEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL11GetDiagInfoj(i32 noundef %2) ; 2 uses
  %.not.not = icmp eq ptr %i.a, null
  br i1 %.not.not, label %_ZNK12_GLOBAL__N_117StaticDiagInfoRec18getLegacyStableIDsEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %0, align 8, !tbaa !58, !alias.scope !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !59, !alias.scope !157
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 4, ptr %i.d, align 4, !tbaa !60, !alias.scope !157
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, ptrtoint (ptr @_ZN12_GLOBAL__N_114StaticDiagInfoE to i64)
  %i.g = sdiv exact i64 %i.f, 10
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_140StaticDiagInfoLegacyStableIDStartOffsetsE, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53, !noalias !157 ; 2 uses
  %i.j = and i32 %i.i, -3
  %.not7.i = icmp eq i32 %i.j, 0
  br i1 %.not7.i, label %_ZNK12_GLOBAL__N_117StaticDiagInfoRec18getLegacyStableIDsEv.exit.thread4, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i
  %.08.i = phi i32 [ %4, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i ], [ %i.i, %bb.b ] ; 2 uses
  %3 = zext i32 %.08.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_119DiagLegacyStableIDsE, i64 %3
  %i.l = load i32, ptr %i.k, align 4, !tbaa !53, !noalias !157
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_120DiagStableIDsStorageE, i64 %i.m ; 3 uses
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #24, !noalias !157 ; 2 uses
  %i.p = load i32, ptr %i.c, align 8, !tbaa !59, !alias.scope !157 ; 2 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !60, !alias.scope !157
  %.not.i.i = icmp ult i32 %i.p, %i.q
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !61

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %i.n, i64 %i.o)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !58, !alias.scope !157
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.r ; 2 uses
  store ptr %i.n, ptr %i.t, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.o, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.u = load i32, ptr %i.c, align 8, !tbaa !59, !alias.scope !157
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.c, align 8, !tbaa !59, !alias.scope !157
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i: ; preds = %bb.d, %bb.c
  %4 = add i32 %.08.i, 1                          ; 2 uses
  %5 = and i32 %4, -3
  %.not.i = icmp eq i32 %5, 0
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_117StaticDiagInfoRec18getLegacyStableIDsEv.exit.thread4, label %.lr.ph.i, !llvm.loop !156

_ZNK12_GLOBAL__N_117StaticDiagInfoRec18getLegacyStableIDsEv.exit.thread: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %0, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.y, align 4, !tbaa !60
  br label %_ZNK12_GLOBAL__N_117StaticDiagInfoRec18getLegacyStableIDsEv.exit.thread4

_ZNK12_GLOBAL__N_117StaticDiagInfoRec18getLegacyStableIDsEv.exit.thread4: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit.i, %bb.b, %_ZNK12_GLOBAL__N_117StaticDiagInfoRec18getLegacyStableIDsEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext range(i8 0, 6) i8 @_ZNK5clang13DiagnosticIDs18getDiagnosticLevelEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(15256) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 10119
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = add i32 %1, -10120
  %i.e = zext i32 %i.d to i64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.e
  %i.h = load i16, ptr %i.g, align 8
  %i.i = lshr i16 %i.h, 3
  %i.j = and i16 %i.i, 7
  %i.k = zext nneg i16 %i.j to i32
  br label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call fastcc noundef ptr @_ZL11GetDiagInfoj(i32 noundef %1) ; 2 uses
  %.not.not.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i, label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i32, ptr %i.m, align 2
  %i.o = lshr i32 %i.n, 3
  %i.p = and i32 %i.o, 7
  br label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit

_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit:   ; preds = %bb.b, %bb.d
  %.1.i = phi i32 [ %i.k, %bb.b ], [ %i.p, %bb.d ]
  %i.q = icmp eq i32 %.1.i, 1
  br i1 %i.q, label %_ZL7toLevelN5clang4diag8SeverityE.exit, label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread

_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread: ; preds = %bb.c, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit
  %i.r = tail call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(15256) %3) #26
  %switch.tableidx = add nsw i8 %i.r, -1
  %switch.cast = zext i8 %switch.tableidx to i40
  %switch.shiftamt = shl nuw nsw i40 %switch.cast, 3
  %switch.downshift = lshr i40 21542142464, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  br label %_ZL7toLevelN5clang4diag8SeverityE.exit

_ZL7toLevelN5clang4diag8SeverityE.exit:           ; preds = %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit
  %.0 = phi i8 [ 1, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit ], [ %switch.masked, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext range(i8 1, 0) i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(15256) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 10119                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.e = tail call noundef ptr @_ZNK5clang17DiagnosticsEngine12DiagStateMap6lookupERNS_13SourceManagerENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(68) %i.d, ptr noundef nonnull align 8 dereferenceable(776) %i.c, i32 %2) #24
  br label %_ZNK5clang17DiagnosticsEngine18GetDiagStateForLocENS_14SourceLocationE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158
  br label %_ZNK5clang17DiagnosticsEngine18GetDiagStateForLocENS_14SourceLocationE.exit

_ZNK5clang17DiagnosticsEngine18GetDiagStateForLocENS_14SourceLocationE.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %i.i = tail call noundef nonnull align 4 dereferenceable(1) ptr @_ZN5clang17DiagnosticsEngine9DiagState15getOrAddMappingEj(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef %1) #24
  %i.j = load i32, ptr %i.i, align 4
  %.sroa.060.0.extract.trunc = trunc i32 %i.j to i8 ; 7 uses
  %i.k = and i8 %.sroa.060.0.extract.trunc, 7     ; 3 uses
  %.not = icmp eq i8 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load i8, ptr %i.l, align 8               ; 7 uses
  br i1 %.not, label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang17DiagnosticsEngine18GetDiagStateForLocENS_14SourceLocationE.exit
  %i.n = and i8 %i.m, 2
  %i.o = icmp ne i8 %i.n, 0
  %i.p = icmp eq i8 %i.k, 1
  %or.cond = and i1 %i.p, %i.o
  br i1 %or.cond, label %bb.e, label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.q = and i8 %.sroa.060.0.extract.trunc, 8
  %.not155 = icmp eq i8 %i.q, 0
  br i1 %.not155, label %bb.f, label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread

bb.f:                                             ; preds = %bb.e
  br i1 %i.a, label %.thread136, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call fastcc noundef ptr @_ZL11GetDiagInfoj(i32 noundef %1) ; 3 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %.thread187, label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit

_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit:   ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i32, ptr %i.s, align 2
  %i.u = and i32 %i.t, 56
  %.not47 = icmp eq i32 %i.u, 16
  %spec.select197 = select i1 %.not47, i8 1, i8 3
  br label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.i

_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread: ; preds = %_ZNK5clang17DiagnosticsEngine18GetDiagStateForLocENS_14SourceLocationE.exit, %bb.e, %bb.d
  %.1 = phi i8 [ 1, %bb.e ], [ %i.k, %bb.d ], [ 5, %_ZNK5clang17DiagnosticsEngine18GetDiagStateForLocENS_14SourceLocationE.exit ] ; 3 uses
  br i1 %i.a, label %bb.l, label %.thread101

.thread101:                                       ; preds = %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread
  %.pre = tail call fastcc noundef ptr @_ZL11GetDiagInfoj(i32 noundef %1) ; 2 uses
  %.not.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.not.i.i, label %bb.l, label %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.i

_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.i: ; preds = %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit, %.thread101
  %.1103175 = phi i8 [ %.1, %.thread101 ], [ %spec.select197, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit ] ; 4 uses
  %.pre-phi174 = phi ptr [ %.pre, %.thread101 ], [ %i.r, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.pre-phi174, i64 2
  %i.w = load i32, ptr %i.v, align 2              ; 2 uses
  %i.x = and i32 %i.w, 56
  %.not.i55 = icmp eq i32 %i.x, 32
  br i1 %.not.i55, label %_ZNK5clang13DiagnosticIDs15isExtensionDiagEjRb.exit, label %bb.l

_ZNK5clang13DiagnosticIDs15isExtensionDiagEjRb.exit: ; preds = %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.i
  %i.y = and i32 %i.w, 7
  %i.z = icmp ne i32 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !159
  %.not156 = icmp eq i8 %i.ab, 0
  %or.cond5 = or i1 %i.z, %.not156
  br i1 %or.cond5, label %bb.h, label %.critedge9

bb.h:                                             ; preds = %_ZNK5clang13DiagnosticIDs15isExtensionDiagEjRb.exit
  %i.ac = and i8 %.sroa.060.0.extract.trunc, 8
  %i.ad = icmp ne i8 %i.ac, 0
  %i.ae = icmp eq i8 %.1103175, 1
  %or.cond7 = and i1 %i.ad, %i.ae
  br i1 %or.cond7, label %.critedge9, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = and i8 %.sroa.060.0.extract.trunc, 32
  %.not157 = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 25
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !102 ; 2 uses
  br i1 %.not157, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call i8 @llvm.umin.i8(i8 %i.ah, i8 3)
  %.sroa.speculated81 = tail call i8 @llvm.umax.i8(i8 %.1103175, i8 %i.ai)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %.1103175, i8 %i.ah)
  br label %bb.l

bb.l:                                             ; preds = %.thread101, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.i, %bb.j, %bb.k
  %.2 = phi i8 [ %.1, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.thread ], [ %.sroa.speculated81, %bb.j ], [ %.sroa.speculated, %bb.k ], [ %.1103175, %_ZNK5clang13DiagnosticIDs12getDiagClassEj.exit.i ], [ %.1, %.thread101 ] ; 4 uses
  %i.aj = icmp eq i8 %.2, 1
  br i1 %i.aj, label %.critedge9, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = and i8 %i.m, 1
  %.not48 = icmp eq i8 %i.ak, 0
  br i1 %.not48, label %.critedge, label %bb.n

.thread187:                                       ; preds = %bb.g
  %i.al = and i8 %i.m, 1
  %.not48189 = icmp eq i8 %i.al, 0
  br i1 %.not48189, label %.critedge.thread145, label %.critedge9

.thread136:                                       ; preds = %bb.f
  %i.am = and i8 %i.m, 1
  %.not48138 = icmp eq i8 %i.am, 0
  br i1 %.not48138, label %.critedge.thread145, label %.thread141

bb.n:                                             ; preds = %bb.m
  br i1 %i.a, label %.thread141, label %bb.o

.thread141:                                       ; preds = %.thread136, %bb.n
  %.2135139143 = phi i8 [ %.2, %bb.n ], [ 3, %.thread136 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !12
end_hunk_0
