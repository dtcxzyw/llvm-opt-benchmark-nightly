inline.NumInlined: 754
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4absl12lts_2025051213cord_internal12CordRepBtree7DestroyEPS2_:bb.a
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !27  ; 5 uses
  %i.bo = icmp ugt i8 %i.bn, 5
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit25.thread.i
  %i.bp = zext i8 %i.bn to i32
  %i.bq = icmp ult i8 %i.bn, 67                   ; 2 uses
  %i.br = icmp ult i8 %i.bn, -69                  ; 2 uses
  %..i.i.i.i16 = select i1 %i.br, i32 6, i32 12
  %.7.i.i.i.i17 = select i1 %i.br, i32 -3712, i32 -753664
  %.sink6.i.i.i.i18 = select i1 %i.bq, i32 3, i32 %..i.i.i.i16
  %.sink5.i.i.i.i19 = select i1 %i.bq, i32 -16, i32 %.7.i.i.i.i17
  %i.bs = shl nuw nsw i32 %i.bp, %.sink6.i.i.i.i18
  %i.bt = add nsw i32 %i.bs, %.sink5.i.i.i.i19
  %i.bu = sext i32 %i.bt to i64
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bu) #16
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_114DeleteLeafEdgeEPNS1_7CordRepE.exit.i

bb.k:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit25.thread.i
  %i.bv = icmp eq i8 %i.bn, 5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !89 ; 6 uses
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void %i.bx(ptr noundef nonnull %i.bi), !inline_history !93
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_114DeleteLeafEdgeEPNS1_7CordRepE.exit.i

bb.m:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load atomic i32, ptr %i.by acquire, align 4
  %.not.i.i.i.i = icmp eq i32 %i.bz, 2
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.thread.i.i.i, label %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.i.i.i

_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.i.i.i: ; preds = %bb.m
  %i.ca = atomicrmw sub ptr %i.by, i32 2 acq_rel, align 4
  %.not.i.i.i15 = icmp eq i32 %i.ca, 2
  br i1 %.not.i.i.i15, label %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.thread.i.i.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115DeleteSubstringEPNS1_16CordRepSubstringE.exit.i.i

_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.thread.i.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.i.i.i, %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !27  ; 4 uses
  %i.cd = icmp ugt i8 %i.cc, 5
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.thread.i.i.i
  %i.ce = zext i8 %i.cc to i32
  %i.cf = icmp ult i8 %i.cc, 67                   ; 2 uses
  %i.cg = icmp ult i8 %i.cc, -69                  ; 2 uses
  %..i.i.i.i.i = select i1 %i.cg, i32 6, i32 12
  %.7.i.i.i.i.i = select i1 %i.cg, i32 -3712, i32 -753664
  %.sink6.i.i.i.i.i = select i1 %i.cf, i32 3, i32 %..i.i.i.i.i
  %.sink5.i.i.i.i.i = select i1 %i.cf, i32 -16, i32 %.7.i.i.i.i.i
  %i.ch = shl nuw nsw i32 %i.ce, %.sink6.i.i.i.i.i
  %i.ci = add nsw i32 %i.ch, %.sink5.i.i.i.i.i
  %i.cj = sext i32 %i.ci to i64
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cj) #16
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115DeleteSubstringEPNS1_16CordRepSubstringE.exit.i.i

bb.o:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.thread.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !91
  tail call void %i.cl(ptr noundef nonnull %i.bx), !inline_history !94
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115DeleteSubstringEPNS1_16CordRepSubstringE.exit.i.i

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115DeleteSubstringEPNS1_16CordRepSubstringE.exit.i.i: ; preds = %bb.o, %bb.n, %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 32) #20
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_114DeleteLeafEdgeEPNS1_7CordRepE.exit.i

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_114DeleteLeafEdgeEPNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_115DeleteSubstringEPNS1_16CordRepSubstringE.exit.i.i, %bb.l, %bb.j, %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit25.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.01933.i, i64 8 ; 2 uses
  %.not20.i = icmp eq ptr %i.cm, %i.be
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit23.i: ; preds = %._crit_edge.thread.i, %._crit_edge.i, %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.035.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %i.cn, %i.i
  br i1 %.not.i14, label %._crit_edge38.i, label %.lr.ph37.i

bb.p:                                             ; preds = %bb.a
  br i1 %.not.i2048, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit.sink.split, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %bb.p
  %i.co = zext i8 %i.e to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.co
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit24
  %.0.i49 = phi ptr [ %i.dj, %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit24 ], [ %i.cp, %.lr.ph51.preheader ] ; 2 uses
  %i.cq = load ptr, ptr %.0.i49, align 8, !tbaa !17 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load atomic i32, ptr %i.cr acquire, align 4
  %.not.i27 = icmp eq i32 %i.cs, 2
  br i1 %.not.i27, label %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit28.thread, label %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit28

_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit28: ; preds = %.lr.ph51
  %i.ct = atomicrmw sub ptr %i.cr, i32 2 acq_rel, align 4
  %.not40 = icmp eq i32 %i.ct, 2
  br i1 %.not40, label %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit28.thread, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit24

_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit28.thread: ; preds = %.lr.ph51, %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !7   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 15
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !7   ; 2 uses
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cz
  %.not20.i2144 = icmp eq i8 %i.cw, %i.cy
  br i1 %.not20.i2144, label %._crit_edge47.thread, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit28.thread
  %i.db = zext i8 %i.cw to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db
  br label %.lr.ph46

._crit_edge47:                                    ; preds = %bb.q
  %i.dd = icmp eq ptr %i.cq, null
  br i1 %i.dd, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit24, label %._crit_edge47.thread

._crit_edge47.thread:                             ; preds = %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit28.thread, %._crit_edge47
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 64) #20
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit24

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %bb.q
  %.019.i45 = phi ptr [ %i.di, %bb.q ], [ %i.dc, %.lr.ph46.preheader ] ; 2 uses
  %i.de = load ptr, ptr %.019.i45, align 8, !tbaa !17 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dg = load atomic i32, ptr %i.df acquire, align 4
  %.not.i22 = icmp eq i32 %i.dg, 2
  br i1 %.not.i22, label %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit23.thread, label %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit23

_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit23: ; preds = %.lr.ph46
  %i.dh = atomicrmw sub ptr %i.df, i32 2 acq_rel, align 4
  %.not41 = icmp eq i32 %i.dh, 2
  br i1 %.not41, label %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit23.thread, label %bb.q

_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit23.thread: ; preds = %.lr.ph46, %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit23
  tail call void @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7DestroyEPS2_(ptr noundef nonnull %i.de), !inline_history !95
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit23.thread, %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit23
  %i.di = getelementptr inbounds nuw i8, ptr %.019.i45, i64 8 ; 2 uses
  %.not20.i21 = icmp eq ptr %i.di, %i.da
  br i1 %.not20.i21, label %._crit_edge47, label %.lr.ph46

_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit24: ; preds = %._crit_edge47.thread, %._crit_edge47, %_ZN4absl12lts_2025051213cord_internal16RefcountAndFlags9DecrementEv.exit28
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i49, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %i.dj, %i.i
  br i1 %.not.i20, label %_ZN4absl12lts_2025051213cord_internalL11DestroyTreeILm2EEEvPNS1_12CordRepBtreeE.exit, label %.lr.ph51

_ZN4absl12lts_2025051213cord_internalL11DestroyTreeILm2EEEvPNS1_12CordRepBtreeE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit24
  %i.dk = icmp eq ptr %0, null
  br i1 %i.dk, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit, label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit.sink.split

_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit.sink.split: ; preds = %_ZN4absl12lts_2025051213cord_internalL11DestroyTreeILm2EEEvPNS1_12CordRepBtreeE.exit, %bb.p, %bb.i, %._crit_edge38.i, %._crit_edge, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #20
  br label %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit

_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12CordRepBtree6DeleteEPS2_.exit.sink.split, %_ZN4absl12lts_2025051213cord_internalL11DestroyTreeILm2EEEvPNS1_12CordRepBtreeE.exit, %._crit_edge38.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7IsValidEPKS2_b(ptr nofree noundef readonly captures(address) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 439, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !27
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 440, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6)
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7     ; 5 uses
  %i.f = icmp ult i8 %i.e, 12
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 441, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7)
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.h = load i8, ptr %i.g, align 2, !tbaa !7     ; 5 uses
  %i.i = zext nneg i8 %i.h to i64
  %i.j = icmp ult i8 %i.h, 6
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 442, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8)
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7     ; 5 uses
  %.not61 = icmp ugt i8 %i.l, 6
  br i1 %.not61, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 443, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9)
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %.not62 = icmp samesign ugt i8 %i.h, %i.l
  br i1 %.not62, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 444, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10)
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.i ; 3 uses
  %narrow = sub nuw nsw i8 %i.l, %i.h
  %i.o = shl nuw nsw i8 %narrow, 3
  %.idx = zext nneg i8 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not6394 = icmp eq i8 %i.l, %i.h               ; 2 uses
  br i1 %.not6394, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.q = zext nneg i8 %i.e to i32
  %.not88 = icmp eq i8 %i.e, 0
  %i.r = add nsw i32 %i.q, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread
  %.04896 = phi i64 [ %i.af, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread ], [ 0, %.lr.ph.preheader ]
  %.05295 = phi ptr [ %i.ag, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.s = load ptr, ptr %.05295, align 8, !tbaa !17 ; 5 uses
  %.not64 = icmp eq ptr %i.s, null
  br i1 %.not64, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 447, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11)
  br label %.critedge

bb.o:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i8, ptr %i.t, align 4, !tbaa !27    ; 3 uses
  br i1 %.not88, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = icmp eq i8 %i.u, 3
  br i1 %i.v, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 449, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12)
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i8 %i.x to i32
  %i.z = icmp eq i32 %i.r, %i.y
  br i1 %i.z, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 450, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13)
  br label %.critedge

bb.t:                                             ; preds = %bb.o
  %or.cond.i = icmp ugt i8 %i.u, 4
  br i1 %or.cond.i, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aa = icmp eq i8 %i.u, 1
  br i1 %i.aa, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread83

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit: ; preds = %bb.u
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !27
  %i.ad = icmp ugt i8 %.pre.i, 4
  br i1 %i.ad, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread, label %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread83

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread83: ; preds = %bb.u, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 452, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14)
  br label %.critedge

_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread: ; preds = %bb.t, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit, %bb.r
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !8
  %i.af = add i64 %i.ae, %.04896                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05295, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.ag, %i.p
  br i1 %.not63, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread, %bb.m
  %.048.lcssa = phi i64 [ 0, %bb.m ], [ %i.af, %_ZN4absl12lts_2025051213cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread ] ; 2 uses
  %i.ah = load i64, ptr %0, align 8, !tbaa !8
  %.not65 = icmp eq i64 %.048.lcssa, %i.ah
  br i1 %.not65, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aj = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %.048.lcssa, ptr noundef nonnull %i.ai)
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  store i64 %i.am, ptr %3, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !82
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.ao = load ptr, ptr %2, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ap = load i64, ptr %0, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ar = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEmPc(i64 noundef %i.ap, ptr noundef nonnull %i.aq)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  store i64 %i.au, ptr %5, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !82
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aw = load ptr, ptr %4, align 8, !tbaa !83
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 77), i32 noundef 456, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %i.ao, ptr noundef %i.aw)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ax = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !7
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bc = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !7
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %.critedge

bb.z:                                             ; preds = %bb.v, %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.aa:                                            ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.aa
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !7
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.z ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.bi, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bo = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_0
