Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Lexer?download=true
inline.NumInlined: 468
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau5LexerC2EPKcmRNS_12AstNameTableENS_8PositionE:bb.a
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  store ptr %1, ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.0.0.extract.trunc, ptr %i.c, align 4, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = sub i32 0, %.sroa.3.0.extract.trunc
  store i32 %i.e, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 %4, ptr %i.g, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i64 %4, ptr %.sroa.4.0..sroa_idx, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  store ptr %3, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 1, ptr %i.k, align 1, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau5Lexer15setSkipCommentsEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((88, 89)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.a, ptr %i.b, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau5Lexer12setReadNamesEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((89, 90)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.a, ptr %i.b, align 1, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !70, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEbb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %i.c, i1 noundef zeroext true)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEbb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::Lexeme", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %1, label %.critedge2.us, label %.critedge2

.critedge2.us:                                    ; preds = %bb.a, %bb.d
  %.0.us = phi i1 [ false, %bb.d ], [ %2, %bb.a ]
  %i.h = load i64, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.promoted.us = load i32, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %i.i = zext i32 %.promoted.us to i64            ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph.us, label %_ZN4Luau7isSpaceEc.exit.us

_ZNK4Luau5Lexer6peekchEv.exit.us:                 ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph.us, %_ZN4Luau5Lexer10consumeAnyEv.exit.us
  %i.k = phi i64 [ %i.i, %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph.us ], [ %i.r, %_ZN4Luau5Lexer10consumeAnyEv.exit.us ]
  %i.l = phi i32 [ %.promoted.us, %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph.us ], [ %.pre-phi, %_ZN4Luau5Lexer10consumeAnyEv.exit.us ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22
  switch i8 %i.n, label %_ZN4Luau7isSpaceEc.exit.us [
    i8 10, label %bb.b
    i8 9, label %._ZN4Luau5Lexer10consumeAnyEv.exit.us_crit_edge
    i8 11, label %._ZN4Luau5Lexer10consumeAnyEv.exit.us_crit_edge
    i8 12, label %._ZN4Luau5Lexer10consumeAnyEv.exit.us_crit_edge
    i8 13, label %._ZN4Luau5Lexer10consumeAnyEv.exit.us_crit_edge
    i8 32, label %._ZN4Luau5Lexer10consumeAnyEv.exit.us_crit_edge
  ]

._ZN4Luau5Lexer10consumeAnyEv.exit.us_crit_edge:  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.us, %_ZNK4Luau5Lexer6peekchEv.exit.us, %_ZNK4Luau5Lexer6peekchEv.exit.us, %_ZNK4Luau5Lexer6peekchEv.exit.us, %_ZNK4Luau5Lexer6peekchEv.exit.us
  %.pre = add i32 %i.l, 1
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit.us

bb.b:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.us
  %i.o = load i32, ptr %i.c, align 4, !tbaa !66
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.c, align 4, !tbaa !66
  %i.q = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.q, ptr %i.d, align 8, !tbaa !67
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit.us

_ZN4Luau5Lexer10consumeAnyEv.exit.us:             ; preds = %._ZN4Luau5Lexer10consumeAnyEv.exit.us_crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre, %._ZN4Luau5Lexer10consumeAnyEv.exit.us_crit_edge ], [ %i.q, %bb.b ] ; 3 uses
  store i32 %.pre-phi, ptr %i.a, align 8, !tbaa !65
  %i.r = zext i32 %.pre-phi to i64                ; 2 uses
  %i.s = icmp ugt i64 %i.h, %i.r
  br i1 %i.s, label %_ZNK4Luau5Lexer6peekchEv.exit.us, label %_ZN4Luau7isSpaceEc.exit.us, !llvm.loop !83

_ZN4Luau7isSpaceEc.exit.us:                       ; preds = %_ZN4Luau5Lexer10consumeAnyEv.exit.us, %_ZNK4Luau5Lexer6peekchEv.exit.us, %.critedge2.us
  br i1 %.0.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4Luau7isSpaceEc.exit.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4Luau7isSpaceEc.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN4Luau5Lexer8readNextEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.t = load i32, ptr %i.g, align 8, !tbaa !84
  %i.u = and i32 %i.t, -2
  %switch.us = icmp eq i32 %i.u, 282
  br i1 %switch.us, label %.critedge2.us, label %.critedge

_ZNK4Luau5Lexer6peekchEv.exit.lr.ph.us:           ; preds = %.critedge2.us
  %i.v = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZNK4Luau5Lexer6peekchEv.exit.us

.critedge2:                                       ; preds = %bb.a
  %i.w = load i64, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %i.x = zext i32 %.promoted to i64               ; 2 uses
  %i.y = icmp ugt i64 %i.w, %i.x
  br i1 %i.y, label %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph, label %_ZN4Luau7isSpaceEc.exit

_ZNK4Luau5Lexer6peekchEv.exit.lr.ph:              ; preds = %.critedge2
  %i.z = load ptr, ptr %0, align 8, !tbaa !63
  %.promoted5 = load i32, ptr %i.c, align 4
  br label %_ZNK4Luau5Lexer6peekchEv.exit

_ZNK4Luau5Lexer6peekchEv.exit:                    ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph, %_ZN4Luau5Lexer10consumeAnyEv.exit
  %i.aa = phi i32 [ %.promoted5, %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph ], [ %i.ah, %_ZN4Luau5Lexer10consumeAnyEv.exit ] ; 2 uses
  %i.ab = phi i64 [ %i.x, %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph ], [ %i.ai, %_ZN4Luau5Lexer10consumeAnyEv.exit ]
  %i.ac = phi i32 [ %.promoted, %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph ], [ %.pre-phi7, %_ZN4Luau5Lexer10consumeAnyEv.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22
  switch i8 %i.ae, label %_ZN4Luau7isSpaceEc.exit [
    i8 10, label %bb.e
    i8 9, label %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge
    i8 11, label %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge
    i8 12, label %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge
    i8 13, label %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge
    i8 32, label %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge
  ]

._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge:     ; preds = %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit
  %.pre6 = add i32 %i.ac, 1
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit

bb.e:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit
  %i.af = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.af, ptr %i.c, align 4, !tbaa !66
  %i.ag = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !67
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit

_ZN4Luau5Lexer10consumeAnyEv.exit:                ; preds = %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge, %bb.e
  %.pre-phi7 = phi i32 [ %.pre6, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = phi i32 [ %i.aa, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge ], [ %i.af, %bb.e ]
  store i32 %.pre-phi7, ptr %i.a, align 8, !tbaa !65
  %i.ai = zext i32 %.pre-phi7 to i64              ; 2 uses
  %i.aj = icmp ugt i64 %i.w, %i.ai
  br i1 %i.aj, label %_ZNK4Luau5Lexer6peekchEv.exit, label %_ZN4Luau7isSpaceEc.exit, !llvm.loop !83

_ZN4Luau7isSpaceEc.exit:                          ; preds = %_ZN4Luau5Lexer10consumeAnyEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit, %.critedge2
  br i1 %2, label %bb.f, label %.critedge.split

bb.f:                                             ; preds = %_ZN4Luau7isSpaceEc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !20
  br label %.critedge.split

.critedge.split:                                  ; preds = %bb.f, %_ZN4Luau7isSpaceEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN4Luau5Lexer8readNextEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau5Lexer8readNextEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::Lexeme") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.Luau::Position", align 8   ; 13 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !66   ; 39 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 47 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65   ; 41 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67   ; 3 uses
  %i.h = sub i32 %i.e, %i.g                       ; 32 uses
  %.sroa.4173.0.insert.ext = zext i32 %i.h to i64
  %.sroa.4173.0.insert.shift = shl nuw i64 %.sroa.4173.0.insert.ext, 32
  %.sroa.0172.0.insert.ext = zext i32 %i.c to i64 ; 4 uses
  %.sroa.0172.0.insert.insert = or disjoint i64 %.sroa.4173.0.insert.shift, %.sroa.0172.0.insert.ext ; 44 uses
  store i64 %.sroa.0172.0.insert.insert, ptr %2, align 8
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64   ; 22 uses
  %i.l = icmp ugt i64 %i.k, %i.i
  br i1 %i.l, label %_ZNK4Luau5Lexer6peekchEv.exit40, label %_ZNK4Luau5Lexer6peekchEv.exit40.thread

_ZNK4Luau5Lexer6peekchEv.exit40:                  ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !63     ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22    ; 7 uses
  switch i8 %i.o, label %_ZNK4Luau5Lexer6peekchEv.exit21 [
    i8 0, label %_ZNK4Luau5Lexer6peekchEv.exit40.thread
    i8 45, label %bb.b
    i8 91, label %_ZNK4Luau5Lexer6peekchEv.exit5.i
    i8 123, label %bb.m
    i8 125, label %bb.p
    i8 61, label %bb.u
    i8 60, label %bb.w
    i8 62, label %bb.y
    i8 126, label %bb.aa
    i8 34, label %bb.ac
    i8 39, label %bb.ac
    i8 96, label %bb.ad
    i8 46, label %bb.ae
    i8 43, label %bb.aj
    i8 47, label %bb.al
    i8 42, label %bb.ap
    i8 37, label %bb.ar
    i8 94, label %bb.at
    i8 58, label %bb.av
    i8 40, label %_ZNK4Luau5Lexer6peekchEv.exit24
    i8 41, label %_ZNK4Luau5Lexer6peekchEv.exit24
    i8 93, label %_ZNK4Luau5Lexer6peekchEv.exit24
    i8 59, label %_ZNK4Luau5Lexer6peekchEv.exit24
    i8 44, label %_ZNK4Luau5Lexer6peekchEv.exit24
    i8 35, label %_ZNK4Luau5Lexer6peekchEv.exit24
    i8 63, label %_ZNK4Luau5Lexer6peekchEv.exit24
    i8 38, label %_ZNK4Luau5Lexer6peekchEv.exit24
    i8 124, label %_ZNK4Luau5Lexer6peekchEv.exit24
    i8 64, label %bb.ax
  ]

_ZNK4Luau5Lexer6peekchEv.exit40.thread:           ; preds = %bb.a, %_ZNK4Luau5Lexer6peekchEv.exit40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !89
  store i32 0, ptr %0, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.r, align 4
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4162.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.q, ptr %.sroa.5163.0..sroa_idx, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !22
  br label %bb.be

bb.b:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit40
  %i.u = add i32 %i.e, 1                          ; 2 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp ugt i64 %i.k, %i.v
  br i1 %i.w, label %_ZNK4Luau5Lexer6peekchEj.exit43, label %_ZNK4Luau5Lexer6peekchEj.exit41.thread

_ZNK4Luau5Lexer6peekchEj.exit43:                  ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !tbaa !22
  switch i8 %i.y, label %_ZNK4Luau5Lexer6peekchEj.exit41.thread [
    i8 62, label %bb.c
    i8 61, label %bb.d
    i8 45, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK4Luau5Lexer6peekchEj.exit43
  %i.z = add i32 %i.e, 2
  store i32 %i.z, ptr %i.d, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !89
  %i.ac = add i32 %i.ab, 2
  store i32 263, ptr %0, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.ad, align 4
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4159.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ac, ptr %.sroa.5160.0..sroa_idx, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ae, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !22
  br label %bb.be

bb.d:                                             ; preds = %_ZNK4Luau5Lexer6peekchEj.exit43
  %i.ag = add i32 %i.e, 2
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !89
  %i.aj = add i32 %i.ai, 2
  store i32 271, ptr %0, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.ak, align 4
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4156.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aj, ptr %.sroa.5157.0..sroa_idx, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.al, align 4, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.am, align 8, !tbaa !22
  br label %bb.be

bb.e:                                             ; preds = %_ZNK4Luau5Lexer6peekchEj.exit43
  tail call void @_ZN4Luau5Lexer15readCommentBodyEv(ptr dead_on_unwind writable sret(%"struct.Luau::Lexeme") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1)
  br label %bb.be

_ZNK4Luau5Lexer6peekchEj.exit41.thread:           ; preds = %_ZNK4Luau5Lexer6peekchEj.exit43, %bb.b
  store i32 %i.u, ptr %i.d, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !89
  %i.ap = add i32 %i.ao, 1
  store i32 45, ptr %0, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.aq, align 4
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4153.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ap, ptr %.sroa.5154.0..sroa_idx, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ar, align 4, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.as, align 8, !tbaa !22
  br label %bb.be

_ZNK4Luau5Lexer6peekchEv.exit5.i:                 ; preds = %_ZNK4Luau5Lexer6peekchEv.exit40
  %i.at = add i32 %i.e, 1                         ; 3 uses
  store i32 %i.at, ptr %i.d, align 8, !tbaa !65
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = icmp ugt i64 %i.k, %i.au
  br i1 %i.av, label %_ZNK4Luau5Lexer6peekchEv.exit4.i, label %.thread

_ZNK4Luau5Lexer6peekchEv.exit4.i:                 ; preds = %_ZNK4Luau5Lexer6peekchEv.exit5.i, %bb.f
  %i.aw = phi i64 [ %i.bd, %bb.f ], [ %i.au, %_ZNK4Luau5Lexer6peekchEv.exit5.i ]
  %.09.i = phi i32 [ %i.bc, %bb.f ], [ 0, %_ZNK4Luau5Lexer6peekchEv.exit5.i ] ; 2 uses
  %i.ax = phi i32 [ %i.bb, %bb.f ], [ %i.at, %_ZNK4Luau5Lexer6peekchEv.exit5.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aw
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !22  ; 2 uses
  %i.ba = icmp eq i8 %i.az, 61
  br i1 %i.ba, label %bb.f, label %_ZN4Luau5Lexer17skipLongSeparatorEv.exit

bb.f:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit4.i
  %i.bb = add i32 %i.ax, 1                        ; 4 uses
  store i32 %i.bb, ptr %i.d, align 8, !tbaa !65
  %i.bc = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %i.bd = zext i32 %i.bb to i64                   ; 2 uses
  %i.be = icmp ugt i64 %i.k, %i.bd
  br i1 %i.be, label %_ZNK4Luau5Lexer6peekchEv.exit4.i, label %_ZN4Luau5Lexer17skipLongSeparatorEv.exit, !llvm.loop !2

_ZN4Luau5Lexer17skipLongSeparatorEv.exit:         ; preds = %_ZNK4Luau5Lexer6peekchEv.exit4.i, %bb.f
  %i.bf = phi i32 [ %i.bb, %bb.f ], [ %i.ax, %_ZNK4Luau5Lexer6peekchEv.exit4.i ] ; 2 uses
  %.08.i.ph = phi i32 [ %i.bc, %bb.f ], [ %.09.i, %_ZNK4Luau5Lexer6peekchEv.exit4.i ]
  %.ph183 = phi i8 [ 0, %bb.f ], [ %i.az, %_ZNK4Luau5Lexer6peekchEv.exit4.i ]
  %i.bg = icmp ne i8 %.ph183, 91
  %i.bh = sext i1 %i.bg to i32
  %i.bi = xor i32 %.08.i.ph, %i.bh                ; 4 uses
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN4Luau5Lexer17skipLongSeparatorEv.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.bk = add i32 %i.bf, 1                        ; 5 uses
  store i32 %i.bk, ptr %i.d, align 8, !tbaa !65, !noalias !90
  %i.bl = zext i32 %i.bk to i64                   ; 3 uses
  %i.bm = icmp ugt i64 %i.k, %i.bl
  br i1 %i.bm, label %_ZNK4Luau5Lexer6peekchEv.exit9.i, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i

_ZNK4Luau5Lexer6peekchEv.exit9.i:                 ; preds = %bb.g, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread
  %i.bn = phi i32 [ %i.cs, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread ], [ %i.c, %bb.g ] ; 6 uses
  %i.bo = phi i64 [ %i.cu, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread ], [ %i.bl, %bb.g ]
  %i.bp = phi i32 [ %i.ct, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread ], [ %i.bk, %bb.g ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !22, !noalias !90
  switch i8 %i.br, label %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i [
    i8 0, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i.loopexit
    i8 93, label %_ZNK4Luau5Lexer6peekchEv.exit5.i.i
    i8 10, label %bb.j
  ]

_ZNK4Luau5Lexer6peekchEv.exit5.i.i:               ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9.i
  %i.bs = add i32 %i.bp, 1                        ; 4 uses
  store i32 %i.bs, ptr %i.d, align 8, !tbaa !65, !noalias !90
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.k, %i.bt
  br i1 %i.bu, label %_ZNK4Luau5Lexer6peekchEv.exit4.i.i, label %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread

_ZNK4Luau5Lexer6peekchEv.exit4.i.i:               ; preds = %_ZNK4Luau5Lexer6peekchEv.exit5.i.i, %bb.h
  %i.bv = phi i64 [ %i.cc, %bb.h ], [ %i.bt, %_ZNK4Luau5Lexer6peekchEv.exit5.i.i ]
  %.09.i.i = phi i32 [ %i.cb, %bb.h ], [ 0, %_ZNK4Luau5Lexer6peekchEv.exit5.i.i ] ; 2 uses
  %i.bw = phi i32 [ %i.ca, %bb.h ], [ %i.bs, %_ZNK4Luau5Lexer6peekchEv.exit5.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !22, !noalias !90 ; 2 uses
  %i.bz = icmp eq i8 %i.by, 61
  br i1 %i.bz, label %bb.h, label %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i

bb.h:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit4.i.i
  %i.ca = add i32 %i.bw, 1                        ; 4 uses
  store i32 %i.ca, ptr %i.d, align 8, !tbaa !65, !noalias !90
  %i.cb = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %i.cc = zext i32 %i.ca to i64                   ; 2 uses
  %i.cd = icmp ugt i64 %i.k, %i.cc
  br i1 %i.cd, label %_ZNK4Luau5Lexer6peekchEv.exit4.i.i, label %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i, !llvm.loop !2

_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i:       ; preds = %_ZNK4Luau5Lexer6peekchEv.exit4.i.i, %bb.h
  %.ph.i = phi i32 [ %i.ca, %bb.h ], [ %i.bw, %_ZNK4Luau5Lexer6peekchEv.exit4.i.i ] ; 3 uses
  %.08.i.ph.i = phi i32 [ %i.cb, %bb.h ], [ %.09.i.i, %_ZNK4Luau5Lexer6peekchEv.exit4.i.i ]
  %.ph22.i = phi i8 [ 0, %bb.h ], [ %i.by, %_ZNK4Luau5Lexer6peekchEv.exit4.i.i ]
  %i.ce = icmp ne i8 %.ph22.i, 93
  %i.cf = sext i1 %i.ce to i32
  %i.cg = xor i32 %.08.i.ph.i, %i.cf
  %i.ch = icmp eq i32 %i.cg, %i.bi
  br i1 %i.ch, label %bb.i, label %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread

bb.i:                                             ; preds = %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i
  %i.ci = add i32 %.ph.i, 1                       ; 2 uses
  store i32 %i.ci, ptr %i.d, align 8, !tbaa !65, !noalias !90
  %i.cj = load i32, ptr %i.f, align 8, !tbaa !67, !noalias !90
  %i.ck = sub i32 %i.ci, %i.cj
  %.sroa.417.0.insert.ext.i = zext i32 %i.ck to i64
  %.sroa.417.0.insert.shift.i = shl nuw i64 %.sroa.417.0.insert.ext.i, 32
  %.sroa.016.0.insert.ext.i = zext i32 %i.bn to i64
  %.sroa.016.0.insert.insert.i = or disjoint i64 %.sroa.417.0.insert.shift.i, %.sroa.016.0.insert.ext.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bl
  %i.cm = add i32 %i.bk, %i.bi
  %i.cn = xor i32 %i.cm, -1
  %i.co = add i32 %.ph.i, %i.cn
  br label %_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_.exit

._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i:   ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9.i
  %.pre23.i = add i32 %i.bp, 1
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit.i

bb.j:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9.i
  %i.cp = add i32 %i.bn, 1                        ; 2 uses
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !66, !noalias !90
  %i.cq = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.cq, ptr %i.f, align 8, !tbaa !67, !noalias !90
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit.i

_ZN4Luau5Lexer10consumeAnyEv.exit.i:              ; preds = %bb.j, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre23.i, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i ], [ %i.cq, %bb.j ] ; 2 uses
  %i.cr = phi i32 [ %i.bn, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i ], [ %i.cp, %bb.j ]
  store i32 %.pre-phi.i, ptr %i.d, align 8, !tbaa !65, !noalias !90
  br label %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread

_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread: ; preds = %_ZNK4Luau5Lexer6peekchEv.exit5.i.i, %_ZN4Luau5Lexer10consumeAnyEv.exit.i, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i
  %i.cs = phi i32 [ %i.bn, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i ], [ %i.cr, %_ZN4Luau5Lexer10consumeAnyEv.exit.i ], [ %i.bn, %_ZNK4Luau5Lexer6peekchEv.exit5.i.i ] ; 2 uses
  %i.ct = phi i32 [ %.ph.i, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i ], [ %.pre-phi.i, %_ZN4Luau5Lexer10consumeAnyEv.exit.i ], [ %i.bs, %_ZNK4Luau5Lexer6peekchEv.exit5.i.i ] ; 3 uses
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = icmp ugt i64 %i.k, %i.cu
  br i1 %i.cv, label %_ZNK4Luau5Lexer6peekchEv.exit9.i, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i.loopexit, !llvm.loop !3

_ZNK4Luau5Lexer6peekchEv.exit9.thread.i.loopexit: ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9.i, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread
  %.ph = phi i32 [ %i.bn, %_ZNK4Luau5Lexer6peekchEv.exit9.i ], [ %i.cs, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread ]
  %.lcssa.i.ph = phi i32 [ %i.bp, %_ZNK4Luau5Lexer6peekchEv.exit9.i ], [ %i.ct, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.i.thread ]
  %.pre186 = zext i32 %.ph to i64
  br label %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i

_ZNK4Luau5Lexer6peekchEv.exit9.thread.i:          ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i.loopexit, %bb.g
  %.sroa.014.0.insert.ext.i.pre-phi = phi i64 [ %.pre186, %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i.loopexit ], [ %.sroa.0172.0.insert.ext, %bb.g ]
  %.lcssa.i = phi i32 [ %.lcssa.i.ph, %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i.loopexit ], [ %i.bk, %bb.g ]
  %i.cw = load i32, ptr %i.f, align 8, !tbaa !67, !noalias !90
  %i.cx = sub i32 %.lcssa.i, %i.cw
  %.sroa.415.0.insert.ext.i = zext i32 %i.cx to i64
  %.sroa.415.0.insert.shift.i = shl nuw i64 %.sroa.415.0.insert.ext.i, 32
  %.sroa.014.0.insert.insert.i = or disjoint i64 %.sroa.415.0.insert.shift.i, %.sroa.014.0.insert.ext.i.pre-phi
  br label %_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_.exit

_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_.exit: ; preds = %bb.i, %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i
  %.sink40.i = phi i32 [ 286, %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i ], [ 278, %bb.i ]
  %.sroa.014.0.insert.insert.sink.i = phi i64 [ %.sroa.014.0.insert.insert.i, %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i ], [ %.sroa.016.0.insert.insert.i, %bb.i ]
  %.sink36.i = phi i32 [ 0, %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i ], [ %i.co, %bb.i ]
  %.sink.i = phi ptr [ null, %_ZNK4Luau5Lexer6peekchEv.exit9.thread.i ], [ %i.cl, %bb.i ]
  store i32 %.sink40.i, ptr %0, align 8, !tbaa !19, !alias.scope !90
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.cy, align 4, !alias.scope !90
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.014.0.insert.insert.sink.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !90
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink36.i, ptr %i.cz, align 4, !tbaa !21, !alias.scope !90
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink.i, ptr %i.da, align 8, !tbaa !22, !alias.scope !90
  br label %bb.be

bb.k:                                             ; preds = %_ZN4Luau5Lexer17skipLongSeparatorEv.exit
  %i.db = icmp eq i32 %i.bi, -1
  br i1 %i.db, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZNK4Luau5Lexer6peekchEv.exit5.i, %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !89
  %i.de = add i32 %i.dd, 1
  store i32 91, ptr %0, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.df, align 4
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4150.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.de, ptr %.sroa.5151.0..sroa_idx, align 8, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.dg, align 4, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.dh, align 8, !tbaa !22
  br label %bb.be

bb.l:                                             ; preds = %bb.k
  %i.di = sub i32 %i.bf, %i.g
  %.sroa.4171.0.insert.ext = zext i32 %i.di to i64
  %.sroa.4171.0.insert.shift = shl nuw i64 %.sroa.4171.0.insert.ext, 32
  %.sroa.0170.0.insert.insert = or disjoint i64 %.sroa.4171.0.insert.shift, %.sroa.0172.0.insert.ext
  store i32 286, ptr %0, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.dj, align 4
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.0170.0.insert.insert, ptr %.sroa.4148.0..sroa_idx, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.dk, align 4, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.dl, align 8, !tbaa !22
  br label %bb.be

bb.m:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit40
  %i.dm = add i32 %i.e, 1
  store i32 %i.dm, ptr %i.d, align 8, !tbaa !65
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !72
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !72
  %i.dr = icmp eq ptr %i.do, %i.dq
  br i1 %i.dr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 1, ptr %i.a, align 4, !tbaa !74
  call void @_ZNSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.pre = load i64, ptr %2, align 8               ; 3 uses
  %3 = trunc i64 %.pre to i32
  %4 = lshr i64 %.pre, 32
  %5 = trunc nuw i64 %4 to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %6 = phi i32 [ %5, %bb.n ], [ %i.h, %bb.m ]
  %7 = phi i32 [ %3, %bb.n ], [ %i.c, %bb.m ]
  %8 = phi i64 [ %.pre, %bb.n ], [ %.sroa.0172.0.insert.insert, %bb.m ]
  %i.ds = add i32 %6, 1
  store i32 123, ptr %0, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %8, ptr %i.dt, align 4
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %7, ptr %.sroa.4144.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ds, ptr %.sroa.5145.0..sroa_idx, align 8, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.du, align 4, !tbaa !21
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.dv, align 8, !tbaa !22
  br label %bb.be

bb.p:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit40
  %i.dw = add i32 %i.e, 1
  store i32 %i.dw, ptr %i.d, align 8, !tbaa !65
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !72
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !72 ; 2 uses
  %i.eb = icmp eq ptr %i.dy, %i.ea
  br i1 %i.eb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ec = add i32 %i.h, 1
  store i32 125, ptr %0, align 8, !tbaa !19
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.ed, align 4
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4141.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ec, ptr %.sroa.5142.0..sroa_idx, align 8, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ee, align 4, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ef, align 8, !tbaa !22
  br label %bb.be

bb.r:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds i8, ptr %i.ea, i64 -4 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !74
  store ptr %i.eg, ptr %i.dz, align 8, !tbaa !75
  %.not = icmp eq i32 %i.eh, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = add i32 %i.h, 1
  store i32 125, ptr %0, align 8, !tbaa !19
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.ej, align 4
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4138.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ei, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ek, align 4, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.el, align 8, !tbaa !22
  br label %bb.be

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN4Luau5Lexer29readInterpolatedStringSectionENS_8PositionENS_6Lexeme4TypeES3_(ptr dead_on_unwind writable sret(%"struct.Luau::Lexeme") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %.sroa.0172.0.insert.insert, i32 noundef 267, i32 noundef 268)
  br label %bb.be

bb.u:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit40
  %i.em = add i32 %i.e, 1                         ; 2 uses
  store i32 %i.em, ptr %i.d, align 8, !tbaa !65
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = icmp ugt i64 %i.k, %i.en
  br i1 %i.eo, label %_ZNK4Luau5Lexer6peekchEv.exit39, label %_ZNK4Luau5Lexer6peekchEv.exit39.thread

_ZNK4Luau5Lexer6peekchEv.exit39:                  ; preds = %bb.u
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !22
  %i.er = icmp eq i8 %i.eq, 61
  br i1 %i.er, label %bb.v, label %_ZNK4Luau5Lexer6peekchEv.exit39.thread

bb.v:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit39
  %i.es = add i32 %i.e, 2
  store i32 %i.es, ptr %i.d, align 8, !tbaa !65
  %i.et = add i32 %i.h, 2
  store i32 257, ptr %0, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.eu, align 4
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4135.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.et, ptr %.sroa.5136.0..sroa_idx, align 8, !tbaa !14
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ev, align 4, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ew, align 8, !tbaa !22
  br label %bb.be

_ZNK4Luau5Lexer6peekchEv.exit39.thread:           ; preds = %bb.u, %_ZNK4Luau5Lexer6peekchEv.exit39
  %i.ex = add i32 %i.h, 1
  store i32 61, ptr %0, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.ey, align 4
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4132.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ex, ptr %.sroa.5133.0..sroa_idx, align 8, !tbaa !14
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ez, align 4, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.fa, align 8, !tbaa !22
  br label %bb.be

bb.w:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit40
  %i.fb = add i32 %i.e, 1                         ; 2 uses
  store i32 %i.fb, ptr %i.d, align 8, !tbaa !65
  %i.fc = zext i32 %i.fb to i64                   ; 2 uses
  %i.fd = icmp ugt i64 %i.k, %i.fc
  br i1 %i.fd, label %_ZNK4Luau5Lexer6peekchEv.exit38, label %_ZNK4Luau5Lexer6peekchEv.exit38.thread

_ZNK4Luau5Lexer6peekchEv.exit38:                  ; preds = %bb.w
  %i.fe = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.fc
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !22
  %i.fg = icmp eq i8 %i.ff, 61
  br i1 %i.fg, label %bb.x, label %_ZNK4Luau5Lexer6peekchEv.exit38.thread

bb.x:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit38
  %i.fh = add i32 %i.e, 2
  store i32 %i.fh, ptr %i.d, align 8, !tbaa !65
  %i.fi = add i32 %i.h, 2
  store i32 258, ptr %0, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.fj, align 4
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4129.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.fi, ptr %.sroa.5130.0..sroa_idx, align 8, !tbaa !14
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.fk, align 4, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.fl, align 8, !tbaa !22
  br label %bb.be

_ZNK4Luau5Lexer6peekchEv.exit38.thread:           ; preds = %bb.w, %_ZNK4Luau5Lexer6peekchEv.exit38
  %i.fm = add i32 %i.h, 1
  store i32 60, ptr %0, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.fn, align 4
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4126.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.fm, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !14
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.fo, align 4, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.fp, align 8, !tbaa !22
  br label %bb.be

bb.y:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit40
  %i.fq = add i32 %i.e, 1                         ; 2 uses
  store i32 %i.fq, ptr %i.d, align 8, !tbaa !65
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = icmp ugt i64 %i.k, %i.fr
  br i1 %i.fs, label %_ZNK4Luau5Lexer6peekchEv.exit37, label %_ZNK4Luau5Lexer6peekchEv.exit37.thread

_ZNK4Luau5Lexer6peekchEv.exit37:                  ; preds = %bb.y
  %i.ft = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !22
  %i.fv = icmp eq i8 %i.fu, 61
  br i1 %i.fv, label %bb.z, label %_ZNK4Luau5Lexer6peekchEv.exit37.thread

bb.z:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit37
  %i.fw = add i32 %i.e, 2
  store i32 %i.fw, ptr %i.d, align 8, !tbaa !65
  %i.fx = add i32 %i.h, 2
  store i32 259, ptr %0, align 8, !tbaa !19
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.fy, align 4
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4123.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.fx, ptr %.sroa.5124.0..sroa_idx, align 8, !tbaa !14
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.fz, align 4, !tbaa !21
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ga, align 8, !tbaa !22
  br label %bb.be

_ZNK4Luau5Lexer6peekchEv.exit37.thread:           ; preds = %bb.y, %_ZNK4Luau5Lexer6peekchEv.exit37
  %i.gb = add i32 %i.h, 1
  store i32 62, ptr %0, align 8, !tbaa !19
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0172.0.insert.insert, ptr %i.gc, align 4
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %.sroa.4120.0..sroa_idx, align 4, !tbaa !14
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.gb, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !14
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.gd, align 4, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ge, align 8, !tbaa !22
  br label %bb.be

bb.aa:                                            ; preds = %_ZNK4Luau5Lexer6peekchEv.exit40
  %i.gf = add i32 %i.e, 1                         ; 2 uses
  store i32 %i.gf, ptr %i.d, align 8, !tbaa !65
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = icmp ugt i64 %i.k, %i.gg
  br i1 %i.gh, label %_ZNK4Luau5Lexer6peekchEv.exit36, label %_ZNK4Luau5Lexer6peekchEv.exit36.thread
end_hunk_0
