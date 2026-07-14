inline.NumInlined: 7915
inline.NumDeleted: 2037
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN6duckdb18StandardStringCastINS_11timestamp_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  %i.f = trunc i64 %i.c to i32                    ; 3 uses
  %i.g = icmp ult i32 %i.f, 13
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = select i1 %i.g, ptr %i.h, ptr %i.e       ; 2 uses
  %i.j = and i64 %i.c, 4294967295                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !22, !alias.scope !908
  %i.l = icmp eq ptr %i.i, null
  %i.m = lshr i64 %i.c, 32
  %i.n = trunc i64 %i.m to i8
  br i1 %i.l, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %_ZN6duckdb10StringCast9OperationINS_11timestamp_tEEENS_8string_tET_RNS_6VectorE.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #31
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %_ZN6duckdb10StringCast9OperationINS_11timestamp_tEEENS_8string_tET_RNS_6VectorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !908
  store i64 %i.j, ptr %i.a, align 8, !tbaa !13, !noalias !908
  %i.o = icmp ugt i32 %i.f, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.h    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !18, !alias.scope !908
  %i.q = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !908
  store i64 %i.q, ptr %i.k, align 8, !tbaa !23, !alias.scope !908
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc4, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc4 ], [ %i.k, %bb.c ] ; 2 uses
  switch i32 %i.f, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  store i8 %i.n, ptr %i.r, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !908 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !24, !alias.scope !908
  %i.u = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !908
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i.i, %.noexc.i, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %2) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ConvertToString9OperationINS_8string_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  store i64 %1, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = icmp ult i32 %i.c, 13
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = select i1 %i.d, ptr %i.e, ptr %2         ; 2 uses
  %i.g = and i64 %1, 4294967295                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !22, !alias.scope !911
  %i.i = icmp eq ptr %i.f, null
  %i.j = lshr i64 %1, 32
  %i.k = trunc i64 %i.j to i8
  br i1 %i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !911
  store i64 %i.g, ptr %i.a, align 8, !tbaa !13, !noalias !911
  %i.l = icmp ugt i32 %i.c, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !18, !alias.scope !911
  %i.n = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !911
  store i64 %i.n, ptr %i.h, align 8, !tbaa !23, !alias.scope !911
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc.i.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 1, label %bb.c
    i32 0, label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  store i8 %i.k, ptr %i.o, align 1, !tbaa !23
  br label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit

_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit:     ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.p = load i64, ptr %i.a, align 8, !tbaa !13, !noalias !911 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !24, !alias.scope !911
  %i.r = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !911
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !911
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationIbEENS_8string_tET_RNS_6VectorE(i1 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull @.str.9, i64 noundef 4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull @.str.10, i64 noundef 5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret { i64, ptr } %.pn
}

declare { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKcm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationIaEENS_8string_tET_RNS_6VectorE(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIaEENS_8string_tET_RNS_6VectorE(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIaEENS_8string_tET_RNS_6VectorE(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %.neg = lshr i8 %0, 7                           ; 2 uses
  %i.a = ashr i8 %0, 7
  %i.b = xor i8 %i.a, %0
  %i.c = add i8 %i.b, %.neg                       ; 6 uses
  %i.d = tail call noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthIhEEiT_(i8 noundef zeroext %i.c)
  %i.e = zext nneg i8 %.neg to i32
  %i.f = add nsw i32 %i.d, %i.e
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = tail call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.g) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  store i64 %i.i, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = trunc i64 %i.i to i32
  %i.m = icmp ult i32 %i.l, 13
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.o = select i1 %i.m, ptr %i.n, ptr %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g ; 5 uses
  %i.q = icmp ugt i8 %i.c, 99
  br i1 %i.q, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %bb.a
  %3 = icmp ugt i8 %i.c, -57
  %4 = select i1 %3, i32 2, i32 1
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -2 ; 2 uses
  %i.s = urem i8 %i.c, 100
  %i.t = shl nuw i8 %i.s, 1
  %i.u = zext i8 %i.t to i32
  %i.v = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.u) ; 2 uses
  %i.w = add i32 %i.v, 1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23
  %i.aa = getelementptr inbounds i8, ptr %i.p, i64 -1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !23
  %i.ab = zext i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23
  store i8 %i.ad, ptr %i.r, align 1, !tbaa !23
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %i.ae = zext nneg i8 %i.c to i32                ; 2 uses
  %i.af = icmp samesign ult i8 %i.c, 10
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.ag = phi i32 [ %4, %._crit_edge.thread.i ], [ %i.ae, %._crit_edge.i ]
  %.018.lcssa29.i = phi ptr [ %i.r, %._crit_edge.thread.i ], [ %i.p, %._crit_edge.i ]
  %i.ah = or disjoint i32 %i.ag, 48
  %i.ai = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %i.ah)
  %i.aj = getelementptr inbounds i8, ptr %.018.lcssa29.i, i64 -1 ; 2 uses
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !23
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.ak = shl nuw nsw i32 %i.ae, 1
  %i.al = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.ak) ; 2 uses
  %i.am = add i32 %i.al, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !23
  %i.aq = getelementptr inbounds i8, ptr %i.p, i64 -1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !23
  %i.ar = zext i32 %i.al to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !23
  %i.au = getelementptr inbounds i8, ptr %i.p, i64 -2 ; 2 uses
  store i8 %i.at, ptr %i.au, align 1, !tbaa !23
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.aj, %bb.b ], [ %i.au, %bb.c ]
  %.not = icmp sgt i8 %0, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit
  %i.av = getelementptr inbounds i8, ptr %.0.i, i64 -1
  store i8 45, ptr %i.av, align 1, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit
  %i.aw = load i32, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 13
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ay
  %i.ba = sub nuw nsw i64 12, %i.ay
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ba, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.j, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 1
  store i32 %i.bc, ptr %i.n, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.f, %bb.g
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.f ], [ %i.bb, %bb.g ]
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationIsEENS_8string_tET_RNS_6VectorE(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIsEENS_8string_tET_RNS_6VectorE(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIsEENS_8string_tET_RNS_6VectorE(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %.neg = lshr i16 %0, 15                         ; 2 uses
  %i.a = ashr i16 %0, 15
  %.neg13 = zext nneg i16 %.neg to i32
  %i.b = xor i16 %i.a, %0
  %i.c = add i16 %i.b, %.neg                      ; 4 uses
  %i.d = tail call noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthItEEiT_(i16 noundef zeroext %i.c)
  %i.e = add nsw i32 %i.d, %.neg13
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.f) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  store i64 %i.h, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = trunc i64 %i.h to i32
  %i.l = icmp ult i32 %i.k, 13
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.n = select i1 %i.l, ptr %i.m, ptr %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f ; 2 uses
  %i.p = icmp ugt i16 %i.c, 99
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01722.i = phi i16 [ %i.u, %.lr.ph.i ], [ %i.c, %bb.a ] ; 3 uses
  %.01821.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.o, %bb.a ] ; 2 uses
  %i.q = urem i16 %.01722.i, 100
  %i.r = shl nuw nsw i16 %i.q, 1
  %i.s = zext nneg i16 %i.r to i32
  %i.t = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.s) ; 2 uses
  %i.u = udiv i16 %.01722.i, 100                  ; 2 uses
  %i.v = add i32 %i.t, 1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  %i.z = getelementptr inbounds i8, ptr %.01821.i, i64 -1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !23
  %i.aa = zext i32 %i.t to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !23
  %i.ad = getelementptr inbounds i8, ptr %.01821.i, i64 -2 ; 3 uses
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !23
  %i.ae = icmp ugt i16 %.01722.i, 9999
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !914

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.017.lcssa20.i = phi i16 [ %i.c, %bb.a ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %.018.lcssa.i = phi ptr [ %i.o, %bb.a ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %i.af = zext nneg i16 %.017.lcssa20.i to i32    ; 2 uses
  %i.ag = icmp samesign ult i16 %.017.lcssa20.i, 10
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.ah = or disjoint i32 %i.af, 48
  %i.ai = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %i.ah)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.aj = shl nuw nsw i32 %i.af, 1
  %i.ak = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.aj) ; 2 uses
  %i.al = add i32 %i.ak, 1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23
  %i.ap = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !23
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !23
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit: ; preds = %bb.b, %bb.c
  %.sink29.i = phi i64 [ -2, %bb.c ], [ -1, %bb.b ]
  %.sink.i = phi i8 [ %i.as, %bb.c ], [ %i.ai, %bb.b ]
  %i.at = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink29.i ; 2 uses
  store i8 %.sink.i, ptr %i.at, align 1, !tbaa !23
  %.not = icmp sgt i16 %0, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -1
  store i8 45, ptr %i.au, align 1, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit
  %i.av = load i32, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.aw = icmp ult i32 %i.av, 13
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ax
  %i.az = sub nuw nsw i64 12, %i.ax
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ay, i8 0, i64 %i.az, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.i, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 1
  store i32 %i.bb, ptr %i.m, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.f, %bb.g
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.f ], [ %i.ba, %bb.g ]
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationIiEENS_8string_tET_RNS_6VectorE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIiEENS_8string_tET_RNS_6VectorE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIiEENS_8string_tET_RNS_6VectorE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN6duckdb13NumericHelper12FormatSignedIiEENS_8string_tET_RNS_6VectorE:bb.a
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.ad = shl nuw nsw i32 %.017.lcssa.i, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !23
  %i.ai = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !23
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !23
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit: ; preds = %bb.b, %bb.c
  %.sink26.i = phi i64 [ -2, %bb.c ], [ -1, %bb.b ]
  %.sink.i = phi i8 [ %i.aj, %bb.c ], [ %i.ac, %bb.b ]
  %i.ak = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i ; 2 uses
  store i8 %.sink.i, ptr %i.ak, align 1, !tbaa !23
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -1
  store i8 45, ptr %i.al, align 1, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit
  %i.am = load i32, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.an = icmp ult i32 %i.am, 13
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ao
  %i.aq = sub nuw nsw i64 12, %i.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ap, i8 0, i64 %i.aq, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.h, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.as = load i32, ptr %i.ar, align 1
  store i32 %i.as, ptr %i.l, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.f, %bb.g
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.f ], [ %i.ar, %bb.g ]
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationIlEENS_8string_tET_RNS_6VectorE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIlEENS_8string_tET_RNS_6VectorE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIlEENS_8string_tET_RNS_6VectorE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %.lobit.neg.neg = lshr i64 %0, 63               ; 2 uses
  %.lobit.neg = ashr i64 %0, 63
  %.neg = trunc nuw nsw i64 %.lobit.neg.neg to i32
  %i.a = xor i64 %.lobit.neg, %0
  %i.b = add i64 %i.a, %.lobit.neg.neg            ; 4 uses
  %i.c = tail call noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_(i64 noundef %i.b)
  %i.d = add nsw i32 %i.c, %.neg
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = tail call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.e) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  store i64 %i.g, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  store ptr %i.i, ptr %i.h, align 8
  %i.j = trunc i64 %i.g to i32
  %i.k = icmp ult i32 %i.j, 13
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.m = select i1 %i.k, ptr %i.l, ptr %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e ; 2 uses
  %i.o = icmp ugt i64 %i.b, 99
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01720.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01819.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.n, %bb.a ] ; 2 uses
  %i.p = urem i64 %.01720.i, 100
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.q) ; 2 uses
  %i.s = udiv i64 %.01720.i, 100                  ; 2 uses
  %i.t = add i32 %i.r, 1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23
  %i.x = getelementptr inbounds i8, ptr %.01819.i, i64 -1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !23
  %i.y = zext i32 %i.r to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !23
  %i.ab = getelementptr inbounds i8, ptr %.01819.i, i64 -2 ; 3 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !23
  %i.ac = icmp ugt i64 %.01720.i, 9999
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !916

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.018.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.017.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %i.ad = icmp samesign ult i64 %.017.lcssa.i, 10
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.ae = or disjoint i64 %.017.lcssa.i, 48
  %i.af = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcmLb0EE7ConvertEm(i64 noundef %i.ae)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.ag = shl nuw nsw i64 %.017.lcssa.i, 1
  %i.ah = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ag) ; 2 uses
  %i.ai = add i32 %i.ah, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %i.am = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !23
  %i.an = zext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !23
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit: ; preds = %bb.b, %bb.c
  %.sink26.i = phi i64 [ -2, %bb.c ], [ -1, %bb.b ]
  %.sink.i = phi i8 [ %i.ap, %bb.c ], [ %i.af, %bb.b ]
  %i.aq = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i ; 2 uses
  store i8 %.sink.i, ptr %i.aq, align 1, !tbaa !23
  %.not = icmp sgt i64 %0, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -1
  store i8 45, ptr %i.ar, align 1, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit
  %i.as = load i32, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.at = icmp ult i32 %i.as, 13
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = zext nneg i32 %i.as to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.aw = sub nuw nsw i64 12, %i.au
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.av, i8 0, i64 %i.aw, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.h, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 1
  store i32 %i.ay, ptr %i.l, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.f, %bb.g
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.f ], [ %i.ax, %bb.g ]
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationIhEENS_8string_tET_RNS_6VectorE(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIhEENS_8string_tET_RNS_6VectorE(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIhEENS_8string_tET_RNS_6VectorE(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = tail call noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthIhEEiT_(i8 noundef zeroext %0)
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.b) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  store i64 %i.d, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp ult i32 %i.g, 13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.j = select i1 %i.h, ptr %i.i, ptr %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.b ; 5 uses
  %i.l = icmp ugt i8 %0, 99
  br i1 %i.l, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %bb.a
  %3 = icmp ugt i8 %0, -57
  %4 = select i1 %3, i32 2, i32 1
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -2 ; 2 uses
  %i.n = urem i8 %0, 100
  %i.o = shl nuw i8 %i.n, 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.p) ; 2 uses
  %i.r = add i32 %i.q, 1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %i.v = getelementptr inbounds i8, ptr %i.k, i64 -1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !23
  %i.w = zext i32 %i.q to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  store i8 %i.y, ptr %i.m, align 1, !tbaa !23
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %i.z = zext nneg i8 %0 to i32                   ; 2 uses
  %i.aa = icmp samesign ult i8 %0, 10
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.ab = phi i32 [ %4, %._crit_edge.thread.i ], [ %i.z, %._crit_edge.i ]
  %.018.lcssa29.i = phi ptr [ %i.m, %._crit_edge.thread.i ], [ %i.k, %._crit_edge.i ]
  %i.ac = or disjoint i32 %i.ab, 48
  %i.ad = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %i.ac)
  %i.ae = getelementptr inbounds i8, ptr %.018.lcssa29.i, i64 -1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !23
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.af = shl nuw nsw i32 %i.z, 1
  %i.ag = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.af) ; 2 uses
  %i.ah = add i32 %i.ag, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !23
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23
  %i.ap = getelementptr inbounds i8, ptr %i.k, i64 -2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !23
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit: ; preds = %bb.b, %bb.c
  %i.aq = load i32, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 13
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.as
  %i.au = sub nuw nsw i64 12, %i.as
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.at, i8 0, i64 %i.au, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.e, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.e:                                             ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedIhEEPcT_S2_.exit
  %i.av = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1
  store i32 %i.aw, ptr %i.i, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.d, %bb.e
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.d ], [ %i.av, %bb.e ]
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationItEENS_8string_tET_RNS_6VectorE(i16 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedItEENS_8string_tET_RNS_6VectorE(i16 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedItEENS_8string_tET_RNS_6VectorE(i16 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = tail call noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthItEEiT_(i16 noundef zeroext %0)
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.b) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  store i64 %i.d, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp ult i32 %i.g, 13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.j = select i1 %i.h, ptr %i.i, ptr %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.b ; 2 uses
  %i.l = icmp ugt i16 %0, 99
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01722.i = phi i16 [ %i.q, %.lr.ph.i ], [ %0, %bb.a ] ; 3 uses
  %.01821.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.m = urem i16 %.01722.i, 100
  %i.n = shl nuw nsw i16 %i.m, 1
  %i.o = zext nneg i16 %i.n to i32
  %i.p = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.o) ; 2 uses
  %i.q = udiv i16 %.01722.i, 100                  ; 2 uses
  %i.r = add i32 %i.p, 1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %i.v = getelementptr inbounds i8, ptr %.01821.i, i64 -1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !23
  %i.w = zext i32 %i.p to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  %i.z = getelementptr inbounds i8, ptr %.01821.i, i64 -2 ; 3 uses
  store i8 %i.y, ptr %i.z, align 1, !tbaa !23
  %i.aa = icmp ugt i16 %.01722.i, 9999
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !914

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.017.lcssa20.i = phi i16 [ %0, %bb.a ], [ %i.q, %.lr.ph.i ] ; 2 uses
  %.018.lcssa.i = phi ptr [ %i.k, %bb.a ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %i.ab = zext nneg i16 %.017.lcssa20.i to i32    ; 2 uses
  %i.ac = icmp samesign ult i16 %.017.lcssa20.i, 10
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.ad = or disjoint i32 %i.ab, 48
  %i.ae = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %i.ad)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.af = shl nuw nsw i32 %i.ab, 1
  %i.ag = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.af) ; 2 uses
  %i.ah = add i32 %i.ag, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23
  %i.al = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !23
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit: ; preds = %bb.b, %bb.c
  %.sink29.i = phi i64 [ -2, %bb.c ], [ -1, %bb.b ]
  %.sink.i = phi i8 [ %i.ao, %bb.c ], [ %i.ae, %bb.b ]
  %i.ap = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink29.i
  store i8 %.sink.i, ptr %i.ap, align 1, !tbaa !23
  %i.aq = load i32, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 13
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.as
  %i.au = sub nuw nsw i64 12, %i.as
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.at, i8 0, i64 %i.au, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.e, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.e:                                             ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit
  %i.av = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1
  store i32 %i.aw, ptr %i.i, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.d, %bb.e
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.d ], [ %i.av, %bb.e ]
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb10StringCast9OperationIjEENS_8string_tET_RNS_6VectorE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIjEENS_8string_tET_RNS_6VectorE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN6duckdb13NumericHelper12FormatSignedIjEENS_8string_tET_RNS_6VectorE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = tail call noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthIjEEiT_(i32 noundef %0)
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.b) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  store i64 %i.d, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp ult i32 %i.g, 13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.j = select i1 %i.h, ptr %i.i, ptr %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.b ; 2 uses
  %i.l = icmp ugt i32 %0, 99
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01720.i = phi i32 [ %i.o, %.lr.ph.i ], [ %0, %bb.a ] ; 3 uses
  %.01819.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.m = urem i32 %.01720.i, 100
  %i.n = shl nuw nsw i32 %i.m, 1
  %i.o = udiv i32 %.01720.i, 100                  ; 2 uses
  %i.p = zext nneg i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.p ; 2 uses
end_hunk_1
