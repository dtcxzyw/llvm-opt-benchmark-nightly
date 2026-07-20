inline.NumInlined: 489
inline.NumDeleted: 209
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6google8protobuf2io26CopyingOutputStreamAdaptor6BackUpEi:bb.a
_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit17: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi78EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  unreachable

bb.p:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi78EEERS2_RAT__Kc.exit, %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  unreachable

_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %bb.f, %bb.e, %bb.c, %bb.b, %bb.n
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6google8protobuf2io26CopyingOutputStreamAdaptor9ByteCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65
  %i.e = sext i32 %i.d to i64
  %i.f = add nsw i64 %i.b, %i.e
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io26CopyingOutputStreamAdaptor15WriteAliasedRawEPKvi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64
  %.not = icmp slt i32 %2, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !63, !range !54, !noundef !55
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !65   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n, i32 noundef %i.i), !inline_history !68
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.h, align 4, !tbaa !65
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !67
  %i.w = add nsw i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8, !tbaa !67
  store i32 0, ptr %i.h, align 4, !tbaa !65
  br label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.e, align 1, !tbaa !63
  store i32 0, ptr %i.h, align 4, !tbaa !65
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !56   ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit.thread, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #26
  br label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit.thread

_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit: ; preds = %bb.e, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %1, i32 noundef %2)
  br i1 %i.ad, label %bb.g, label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit.thread

bb.g:                                             ; preds = %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit
  %i.ae = sext i32 %2 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !67
  %i.ah = add nsw i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !67
  br label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit.thread

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ai = load ptr, ptr %0, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.al, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h, %bb.j
  %.023 = phi i32 [ %i.ay, %bb.j ], [ %2, %bb.h ] ; 4 uses
  %.01222 = phi ptr [ %i.ax, %bb.j ], [ %1, %bb.h ] ; 3 uses
  %i.am = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not17 = icmp sgt i32 %.023, %i.am
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  br i1 %.not17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ao = sext i32 %.023 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %.01222, i64 %i.ao, i1 false)
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !3
  %i.aq = sub nsw i32 %i.ap, %.023
  %i.ar = load ptr, ptr %0, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.aq)
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.au = sext i32 %i.am to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %.01222, i64 %i.au, i1 false)
  %i.av = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %.01222, i64 %i.aw
  %i.ay = sub nsw i32 %.023, %i.av
  %i.az = load ptr, ptr %0, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br i1 %i.bc, label %.lr.ph, label %.loopexit, !llvm.loop !69

.loopexit:                                        ; preds = %bb.j, %bb.h, %bb.i
  %i.bd = phi i1 [ true, %bb.i ], [ false, %bb.h ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit.thread

_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit.thread: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %bb.f, %bb.b, %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit, %.loopexit, %bb.g
  %.1 = phi i1 [ true, %bb.g ], [ %i.bd, %.loopexit ], [ false, %_ZN6google8protobuf2io26CopyingOutputStreamAdaptor5FlushEv.exit ], [ false, %bb.b ], [ false, %bb.f ], [ false, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io26CopyingOutputStreamAdaptor9WriteCordERKN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 40, i1 false), !alias.scope !76
  store i32 -1, ptr %i.c, align 8, !tbaa !77, !alias.scope !76
  %i.d = load i8, ptr %1, align 8, !tbaa !36, !noalias !76 ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !76 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i.i = select i1 %i.e, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79, !noalias !76 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !84, !alias.scope !76
  %.not7.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !89, !noalias !76 ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !76 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !89, !noalias !76
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36, !noalias !76 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !77, !alias.scope !76
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !76 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i.i, ptr %i.w, align 8, !tbaa !94, !alias.scope !76
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !36, !alias.scope !76
  %.018.i.i.i.i.i.i.i = zext i8 %i.t to i64       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.v, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96, !noalias !76 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !94, !alias.scope !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !76 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !36, !alias.scope !76
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.ae to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ag = icmp eq i8 %i.q, 1
  br i1 %i.ag, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.021.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !96, !noalias !76 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !94, !alias.scope !76
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !76 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !36, !alias.scope !76
  %.0.i.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !96, !noalias !76 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !94, !alias.scope !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !76 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !36, !alias.scope !76
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.at to i64      ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !97

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !94, !alias.scope !76
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !96, !noalias !76 ; 5 uses
  %i.ba = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !79, !noalias !76
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !79, !noalias !76 ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !98, !alias.scope !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !89, !noalias !76 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !99, !noalias !76
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !101, !noalias !76 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !89, !noalias !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bk = phi i8 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.be, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.f ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.az, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %i.bl = icmp ugt i8 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !102, !noalias !76
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.010.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !84
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bp = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !79, !noalias !76
  %i.bq = icmp eq i8 %i.n, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !99, !noalias !76
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !101, !noalias !76 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !89, !noalias !76
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = phi i8 [ %.pre.i.i.i.i.i, %bb.k ], [ %i.n, %bb.j ]
  %.010.i.i.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %.0.i8.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i8.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i8.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !102, !noalias !76
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.010.i.i.i.i.i
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.ca = sext i8 %i.d to i64
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i.i = select i1 %i.e, ptr null, ptr %i.cc
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.o
  %i.cd = phi i64 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bc, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.2.0.copyload.i30 = phi ptr [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.0.0.copyload.i27 = phi i64 [ %i.cb, %bb.o ], [ %i.bp, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bb, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.ce = phi i64 [ %i.cb, %bb.o ], [ %i.h, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.not18 = icmp eq i64 %i.ce, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit
  %i.ch = phi i64 [ %i.cd, %.lr.ph ], [ %i.eu, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i30, %.lr.ph ], [ %.sroa.2.0.copyload.i29, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i27, %.lr.ph ], [ %.sroa.0.0.copyload.i26, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.ci = phi i64 [ %i.ce, %.lr.ph ], [ %i.et, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %i.cj = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ck = load ptr, ptr %0, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.sroa.2.0.copyload.i, i32 noundef %i.cj) ; 4 uses
  br i1 %i.cn, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  %i.co = sub i64 %i.ci, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.co, ptr %i.a, align 8, !tbaa !84
  %.not.i = icmp eq i64 %i.ci, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.r
  %i.cr = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !94
  %.not2.i = icmp eq ptr %i.ct, null
  br i1 %.not2.i, label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.cu = icmp eq i64 %i.ch, 0
  br i1 %i.cu, label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !94 ; 2 uses
  %i.cw = load i8, ptr %i.cg, align 4, !tbaa !36  ; 2 uses
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !36
  %i.da = zext i8 %i.cz to i64
  %i.db = add nsw i64 %i.da, -1
  %i.dc = icmp eq i64 %i.db, %i.cx
  br i1 %i.dc, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.t, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.t ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io17ArrayOutputStreamD0Ev:bb.a
}

declare noundef zeroext i1 @_ZN6google8protobuf2io20ZeroCopyOutputStream15WriteAliasedRawEPKvi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6google8protobuf2io20ZeroCopyOutputStream14AllowsAliasingEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN6google8protobuf2io20ZeroCopyOutputStream9WriteCordERKN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io20ZeroCopyOutputStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io18StringOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io18CopyingInputStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io18CopyingInputStreamD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #25
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6google8protobuf2io26CopyingOutputStreamAdaptor14AllowsAliasingEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io19ZeroCopyInputStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io15CordInputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io16CordOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !36
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !89    ; 3 uses
  %i.g = zext i8 %i.f to i32
  %i.h = icmp ult i8 %i.f, 67                     ; 2 uses
  %i.i = icmp ult i8 %i.f, -69                    ; 2 uses
  %..i.i.i = select i1 %i.i, i32 6, i32 12
  %.7.i.i.i = select i1 %i.i, i32 -3712, i32 -753664
  %.sink6.i.i.i = select i1 %i.h, i32 3, i32 %..i.i.i
  %.sink5.i.i.i = select i1 %i.h, i32 -16, i32 %.7.i.i.i
  %i.j = shl nuw nsw i32 %i.g, %.sink6.i.i.i
  %i.k = add nsw i32 %i.j, %.sink5.i.i.i
  %i.l = sext i32 %i.k to i64
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.l) #23
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit

_ZN4absl12lts_2025051210CordBufferD2Ev.exit:      ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !36
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZN4absl12lts_202505124CordD2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_ZN4absl12lts_202505124CordD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZN4absl12lts_202505124CordD2Ev.exit:             ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io16CordOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !36
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !89    ; 3 uses
  %i.g = zext i8 %i.f to i32
  %i.h = icmp ult i8 %i.f, 67                     ; 2 uses
  %i.i = icmp ult i8 %i.f, -69                    ; 2 uses
  %..i.i.i.i = select i1 %i.i, i32 6, i32 12
  %.7.i.i.i.i = select i1 %i.i, i32 -3712, i32 -753664
  %.sink6.i.i.i.i = select i1 %i.h, i32 3, i32 %..i.i.i.i
  %.sink5.i.i.i.i = select i1 %i.h, i32 -16, i32 %.7.i.i.i.i
  %i.j = shl nuw nsw i32 %i.g, %.sink6.i.i.i.i
  %i.k = add nsw i32 %i.j, %.sink5.i.i.i.i
  %i.l = sext i32 %i.k to i64
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.l) #23
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i

_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i:    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !36
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZN6google8protobuf2io16CordOutputStreamD2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_ZN6google8protobuf2io16CordOutputStreamD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZN6google8protobuf2io16CordOutputStreamD2Ev.exit: ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505124Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.d, align 8, !tbaa !77
  %i.e = load i8, ptr %1, align 1, !tbaa !36      ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not8.i = icmp ne ptr %i.h, null
  %.not.not.i = select i1 %i.f, i1 %.not8.i, i1 false
  br i1 %.not.not.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !84
  %.not7.i = icmp eq i64 %i.i, 0
  br i1 %.not7.i, label %bb.o, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4, !tbaa !89    ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !89
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ %.pre.i.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 11 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !36    ; 4 uses
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.d, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 14
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !36
  %.018.i.i.i.i.i = zext i8 %i.u to i64           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.prol = add nsw i64 %i.w, -1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !96 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !36
  %.0.i.i.i.i.i.prol = zext i8 %i.af to i64       ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp eq i8 %i.r, 1
  br i1 %i.ah, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.01619.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !96 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !36
  %.0.i.i.i.i.i = zext i8 %i.an to i64
  %indvars.iv.next.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i, -2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !96 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !36
  %.0.i.i.i.i.i.1 = zext i8 %i.au to i64          ; 2 uses
  %i.aw = icmp sgt i64 %indvars.iv.i.i.i.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, !llvm.loop !97

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ]
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !96 ; 5 uses
  %i.bb = load i64, ptr %.0.i.i.i, align 8, !tbaa !79
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !79 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !89  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !99
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bl = phi i8 [ %.pre.i.i.i.i, %bb.f ], [ %i.bf, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.010.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.010.i.i.i.i
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !147
  %i.bq = load i64, ptr %.0.i.i.i, align 8, !tbaa !79
  %i.br = icmp eq i8 %i.o, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !99
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !89
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi i8 [ %.pre.i.i.i, %bb.k ], [ %i.o, %bb.j ]
  %.010.i.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %.0.i8.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i, %bb.j ] ; 2 uses
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i8.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i8.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %.sroa.3.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 %.010.i.i.i
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i
  %.sink.i.i = phi i64 [ %i.bq, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %i.bc, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  %.sroa.3.0.i.sink.i.i = phi ptr [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i.sink.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !56
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

bb.p:                                             ; preds = %bb.a
  %i.cb = sext i8 %i.e to i64
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !84
  %i.cd = load i8, ptr %1, align 8, !tbaa !36
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i = select i1 %i.ce, ptr null, ptr %i.cf
  store i64 %i.cc, ptr %0, align 8, !tbaa !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit: ; preds = %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i, %bb.o, %bb.p
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505124Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = sub i64 %i.b, %1                         ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !84
  %.not = icmp eq i64 %i.b, %1
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !119
  %i.e = icmp eq i64 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !36    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.o = load i8, ptr %i.n, align 1, !tbaa !36
  %i.p = zext i8 %i.o to i64
  %i.q = add nsw i64 %i.p, -1
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !77
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
end_hunk_1
