inline.NumInlined: 231
inline.NumDeleted: 69
begin_hunk_0_@_ZN11CStringBaseIwEpLEPKw:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.prol
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !14
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !70

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.aj = icmp eq ptr %.pre.i.i, null
  br i1 %i.aj, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !14
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !14
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.1
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !14
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.2
  store i32 %i.au, ptr %i.av, align 4, !tbaa !14
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !72

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #16
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.aw = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %i.e, %._crit_edge.i.i ], [ %i.e, %bb.c ] ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !22
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ax
  store i32 0, ptr %i.ay, align 4, !tbaa !14
  store i32 %i.o, ptr %i.b, align 4, !tbaa !23
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit

_ZN11CStringBaseIwE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.az = phi i32 [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !22
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE10GrowLengthEi.exit
  %.04.i = phi ptr [ %1, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.bd, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %i.bc, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.bf, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %i.be = load i32, ptr %.04.i, align 4, !tbaa !14 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i4, i64 4
  store i32 %i.be, ptr %.0.i4, align 4, !tbaa !14
  %.not.i5 = icmp eq i32 %i.be, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !16

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.bg = add nsw i32 %i.az, %i.a
  store i32 %i.bg, ptr %i.d, align 8, !tbaa !24
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14GetUInt64ValueP10IInArchivejjRy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i16 0, ptr %4, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !49
  %i.b = load ptr, ptr %0, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr @.str.4, ptr %i.f, align 16, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIPKc, ptr null) #19
          to label %bb.k unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.b
  %i.k = load i16, ptr %4, align 8, !tbaa !46
  %i.l = icmp ne i16 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  store i64 %i.m, ptr %3, align 8, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.n = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit6 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit6:        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i1 %i.l

bb.k:                                             ; preds = %bb.c
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

declare noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry(ptr noundef %0, ptr noundef nonnull align 1 %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(120) %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %9, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %class.CFieldPrinter, align 8      ; 20 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %12 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 9 uses
  %13 = alloca %struct.CArchiveLink, align 8      ; 18 uses
  %14 = alloca %class.COpenCallbackConsole, align 8 ; 14 uses
  %15 = alloca %class.CStringBase, align 8        ; 10 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %16 = alloca %class.CMyComBSTR, align 8         ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %17 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 9 uses
  %18 = alloca %class.CStringBase, align 8        ; 8 uses
  %19 = alloca %class.CStringBase, align 8        ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %20 = alloca %class.CMyComBSTR, align 8         ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i16, align 2                      ; 4 uses
  %21 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 9 uses
  %22 = alloca %class.CStringBase, align 8        ; 8 uses
  %23 = alloca %class.CStringBase, align 8        ; 5 uses
  %i.i = alloca i64, align 8                      ; 8 uses
  %i.j = alloca i64, align 8                      ; 8 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %24 = alloca %class.CStringBase, align 8        ; 10 uses
  %i.l = alloca i8, align 1                       ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  store i64 0, ptr %10, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.p, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI10CFieldInfoE, i64 16), ptr %11, align 8, !tbaa !31
  br i1 %7, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN13CFieldPrinter4InitEPK14CFieldInfoIniti(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @_ZL19kStandardFieldTable, i32 noundef 5)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph728, label %.loopexit580

.lr.ph728:                                        ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 52
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 17
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 36 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 44 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %21, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.not510 = xor i1 %6, true
  %or.cond511 = or i1 %7, %.not510
  %i.az = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.e

.loopexit:                                        ; preds = %.lr.ph.i466
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i468
  %lpad.loopexit554 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit473, %bb.fy
  %lpad.loopexit.split-lp555 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph728, %bb.fw
  %indvars.iv781 = phi i64 [ 0, %.lr.ph728 ], [ %indvars.iv.next782, %bb.fw ] ; 3 uses
  %.0726 = phi i32 [ undef, %.lr.ph728 ], [ %.30, %bb.fw ] ; 5 uses
  %.0244725 = phi i64 [ 0, %.lr.ph728 ], [ %.4248, %bb.fw ] ; 10 uses
  %.0272724 = phi i64 [ 0, %.lr.ph728 ], [ %.4276, %bb.fw ] ; 10 uses
  %.0278723 = phi ptr [ null, %.lr.ph728 ], [ %.5283, %bb.fw ] ; 10 uses
  %.0285722 = phi ptr [ null, %.lr.ph728 ], [ %.5290, %bb.fw ] ; 10 uses
  %.0292721 = phi i32 [ %i.s, %.lr.ph728 ], [ %.5297, %bb.fw ] ; 5 uses
  %i.bd = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv781
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29 ; 5 uses
  br i1 %2, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i64 0, ptr %i.bb, align 8
  %i.bg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.g unwind label %bb.p       ; 2 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.bg, ptr %i.v, align 8, !tbaa !22
  store i32 0, ptr %i.bg, align 4, !tbaa !14
  store i32 4, ptr %i.w, align 4, !tbaa !23
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !22
  %i.bi = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %i.bh)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %i.x, align 8, !tbaa !74
  %i.bk = and i32 %i.bj, 16
  %.not553 = icmp eq i32 %i.bk, 0
  br i1 %.not553, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull @.str.5)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !22
  %i.bo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef %i.bn)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull @.str.6)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.o unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.br = load i64, ptr %10, align 8, !tbaa !65
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %10, align 8, !tbaa !65
  br label %bb.t

bb.p:                                             ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.g
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.v, align 8, !tbaa !22  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #16
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit

bb.s:                                             ; preds = %bb.i
  %i.bx = load i64, ptr %12, align 8, !tbaa !76
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.0327 = phi i64 [ 0, %bb.o ], [ %i.bx, %bb.s ]
  %cond1 = phi i1 [ false, %bb.o ], [ true, %bb.s ]
  %.0301 = phi i32 [ 4, %bb.o ], [ 0, %bb.s ]
  %i.by = load ptr, ptr %i.v, align 8, !tbaa !22  ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.by) #16
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br i1 %cond1, label %bb.v, label %bb.fv

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit:    ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.bu, %bb.q ], [ %i.bu, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.loopexit.split-lp

bb.v:                                             ; preds = %bb.e, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395
  %.1328 = phi i64 [ 0, %bb.e ], [ %.0327, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.z, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI4CArcE, i64 16), ptr %13, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ac, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %i.aa, align 8, !tbaa !31
  store i64 0, ptr %i.ad, align 8, !tbaa !77
  store i8 0, ptr %i.ae, align 8, !tbaa !82
end_hunk_0
begin_hunk_1_@_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry:bb.a
  %i.kq = load ptr, ptr %20, align 8, !tbaa !33
  invoke void @SysFreeString(ptr noundef %i.kq)
          to label %_ZN10CMyComBSTRD2Ev.exit435 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.kr = landingpad { ptr, i32 }
          catch ptr null
  %i.ks = extractvalue { ptr, i32 } %i.kr, 0
  call void @__clang_call_terminate(ptr %i.ks) #18
  unreachable

_ZN10CMyComBSTRD2Ev.exit435:                      ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br i1 %.9310, label %bb.co, label %.thread497

_ZN11CStringBaseIwED2Ev.exit432:                  ; preds = %bb.de, %_ZN11CStringBaseIwED2Ev.exit431, %bb.da
  %.pn356.pn = phi { ptr, i32 } [ %i.kf, %bb.da ], [ %.pn356, %_ZN11CStringBaseIwED2Ev.exit431 ], [ %.pn356, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit432, %bb.cu
  %.pn356.pn.pn = phi { ptr, i32 } [ %.pn356.pn, %_ZN11CStringBaseIwED2Ev.exit432 ], [ %i.js, %bb.cu ]
  %i.kt = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit436 unwind label %bb.dm ; 0 uses

bb.dm:                                            ; preds = %bb.dl
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit436:      ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit436, %bb.cr
  %.pn356.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit436 ], [ %i.jm, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  %i.kw = load ptr, ptr %20, align 8, !tbaa !33
  invoke void @SysFreeString(ptr noundef %i.kw)
          to label %_ZN10CMyComBSTRD2Ev.exit437 unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.kx = landingpad { ptr, i32 }
          catch ptr null
  %i.ky = extractvalue { ptr, i32 } %i.kx, 0
  call void @__clang_call_terminate(ptr %i.ky) #18
  unreachable

_ZN10CMyComBSTRD2Ev.exit437:                      ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.dp

.thread497:                                       ; preds = %_ZN10CMyComBSTRD2Ev.exit435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.thread503

bb.dp:                                            ; preds = %_ZN10CMyComBSTRD2Ev.exit437, %bb.cp
  %.pn356.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn, %_ZN10CMyComBSTRD2Ev.exit437 ], [ %i.jh, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  br label %bb.dr

.thread487:                                       ; preds = %bb.co, %bb.cn, %bb.cm
  %.14.ph = phi i32 [ %.7, %bb.cm ], [ %.7, %bb.cn ], [ %.11, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !28
  br label %bb.dq

bb.dq:                                            ; preds = %.thread487, %.thread478
  %i.kz = phi i32 [ %i.ip, %.thread478 ], [ %.pre, %.thread487 ]
  %.16482 = phi i32 [ %.7, %.thread478 ], [ %.14.ph, %.thread487 ] ; 2 uses
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1 ; 2 uses
  %i.la = sext i32 %i.kz to i64
  %i.lb = icmp slt i64 %indvars.iv.next779, %i.la
  br i1 %i.lb, label %.lr.ph681, label %._crit_edge, !llvm.loop !99

bb.dr:                                            ; preds = %bb.dp, %_ZN10CMyComBSTRD2Ev.exit424, %bb.bk
  %.pn356.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn.pn, %bb.dp ], [ %.pn347.pn.pn.pn, %_ZN10CMyComBSTRD2Ev.exit424 ], [ %i.gx, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.loopexit.split-lp565

._crit_edge:                                      ; preds = %bb.dq, %.preheader577
  %.1.lcssa = phi i32 [ %.0726, %.preheader577 ], [ %.16482, %bb.dq ] ; 2 uses
  %i.lc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.ds unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

bb.ds:                                            ; preds = %._crit_edge
  br i1 %7, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.ld = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @.str.16)
          to label %.thread508.thread unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

.thread508.thread:                                ; preds = %bb.dt
  %i.le = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.lf = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.lg = sext i32 %i.le to i64
  %i.lh = getelementptr [8 x i8], ptr %i.lf, i64 %i.lg
  %i.li = getelementptr i8, ptr %i.lh, i64 -8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !29 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !50
  br label %bb.dx

bb.du:                                            ; preds = %bb.ds
  invoke void @_ZN13CFieldPrinter10PrintTitleEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.dv unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.dv:                                            ; preds = %bb.du
  %i.ll = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.dw unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

bb.dw:                                            ; preds = %bb.dv
  %i.lm = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph11.i, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit

.lr.ph11.i:                                       ; preds = %bb.dw, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.dw ] ; 2 uses
  %i.lo = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv.i
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !29 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !38 ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, 0
  br i1 %i.lt, label %.lr.ph.i.i, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i, %.noexc439
  %.03.i.i = phi i32 [ %i.lv, %.noexc439 ], [ 0, %.lr.ph11.i ]
  %i.lu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc439 unwind label %.loopexit.split-lp565.loopexit ; 0 uses

.noexc439:                                        ; preds = %.lr.ph.i.i
  %i.lv = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.lv, %i.ls
  br i1 %exitcond.not.i.i, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i, !llvm.loop !39

_ZL11PrintSpacesi.exit.i:                         ; preds = %.noexc439, %.lr.ph11.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 36 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !42
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %.lr.ph.i438, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc440, %_ZL11PrintSpacesi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lz = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.ma = sext i32 %i.lz to i64
  %i.mb = icmp slt i64 %indvars.iv.next.i, %i.ma
  br i1 %i.mb, label %.lr.ph11.i, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit, !llvm.loop !43

.lr.ph.i438:                                      ; preds = %_ZL11PrintSpacesi.exit.i, %.noexc440
  %.08.i = phi i32 [ %i.md, %.noexc440 ], [ 0, %_ZL11PrintSpacesi.exit.i ]
  %i.mc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 45)
          to label %.noexc440 unwind label %.loopexit564 ; 0 uses

.noexc440:                                        ; preds = %.lr.ph.i438
  %i.md = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %i.me = load i32, ptr %i.lw, align 4, !tbaa !42
  %i.mf = icmp slt i32 %i.md, %i.me
  br i1 %i.mf, label %.lr.ph.i438, label %._crit_edge.i, !llvm.loop !44

_ZN13CFieldPrinter15PrintTitleLinesEv.exit:       ; preds = %._crit_edge.i, %bb.dw
  %i.mg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %.thread508 unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

.thread508:                                       ; preds = %.loopexit579, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit
  %or.cond513 = phi i1 [ false, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit ], [ %or.cond511, %.loopexit579 ] ; 2 uses
  %.18512 = phi i32 [ %.1.lcssa, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit ], [ %.0726, %.loopexit579 ] ; 2 uses
  %i.mh = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.mi = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.mj = sext i32 %i.mh to i64
  %i.mk = getelementptr [8 x i8], ptr %i.mi, i64 %i.mj
  %i.ml = getelementptr i8, ptr %i.mk, i64 -8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !29 ; 3 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !50 ; 2 uses
  br i1 %7, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %.thread508.thread, %.thread508
  %i.mo = phi ptr [ %i.lk, %.thread508.thread ], [ %i.mn, %.thread508 ] ; 2 uses
  %i.mp = phi ptr [ %i.lj, %.thread508.thread ], [ %i.mm, %.thread508 ]
  %.18512825 = phi i32 [ %.1.lcssa, %.thread508.thread ], [ %.18512, %.thread508 ]
  %or.cond513823 = phi i1 [ true, %.thread508.thread ], [ %or.cond513, %.thread508 ]
  %i.mq = invoke noundef i32 @_ZN13CFieldPrinter4InitEP10IInArchive(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.mo)
          to label %bb.dy unwind label %bb.dz     ; 2 uses

bb.dy:                                            ; preds = %bb.dx
  %.not365 = icmp eq i32 %i.mq, 0
  br i1 %.not365, label %bb.ea, label %.thread503

bb.dz:                                            ; preds = %bb.dx
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp565

bb.ea:                                            ; preds = %bb.dy, %.thread508
  %i.ms = phi ptr [ %i.mo, %bb.dy ], [ %i.mn, %.thread508 ] ; 5 uses
  %i.mt = phi ptr [ %i.mp, %bb.dy ], [ %i.mm, %.thread508 ] ; 2 uses
  %.18512824 = phi i32 [ %.18512825, %bb.dy ], [ %.18512, %.thread508 ] ; 2 uses
  %or.cond513822 = phi i1 [ %or.cond513823, %bb.dy ], [ %or.cond513, %.thread508 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store i64 0, ptr %i.i, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  store i64 0, ptr %i.j, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !31
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = invoke noundef i32 %i.mw(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull %i.k)
          to label %bb.eb unwind label %bb.ec     ; 2 uses

bb.eb:                                            ; preds = %bb.ea
  %.not366 = icmp eq i32 %i.mx, 0
  br i1 %.not366, label %.preheader576, label %.thread531

.preheader576:                                    ; preds = %bb.eb
  %i.my = load i32, ptr %i.k, align 4, !tbaa !4
  %.not = icmp eq i32 %i.my, 0
  br i1 %.not, label %.thread518, label %.lr.ph702

bb.ec:                                            ; preds = %bb.ea
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

.lr.ph702:                                        ; preds = %.preheader576, %bb.fe
  %.22701 = phi i32 [ %.25, %bb.fe ], [ %.18512824, %.preheader576 ] ; 2 uses
  %.0243700 = phi i32 [ %i.oe, %bb.fe ], [ 0, %.preheader576 ] ; 6 uses
  %.0250699 = phi ptr [ %.3253, %bb.fe ], [ null, %.preheader576 ] ; 5 uses
  %.0256698 = phi ptr [ %.3259, %bb.fe ], [ null, %.preheader576 ] ; 5 uses
  %.0262697 = phi i64 [ %.3265, %bb.fe ], [ 0, %.preheader576 ] ; 5 uses
  %.0267696 = phi i64 [ %.3270, %bb.fe ], [ 0, %.preheader576 ] ; 5 uses
  %i.na = phi i64 [ %28, %bb.fe ], [ 0, %.preheader576 ] ; 5 uses
  %i.nb = phi i64 [ %27, %bb.fe ], [ 0, %.preheader576 ] ; 5 uses
  %i.nc = invoke noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv()
          to label %bb.ed unwind label %bb.ee

bb.ed:                                            ; preds = %.lr.ph702
  br i1 %i.nc, label %.thread531, label %bb.ef

bb.ee:                                            ; preds = %.lr.ph702
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  store i64 0, ptr %i.bc, align 8
  %i.ne = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.eg unwind label %bb.ei     ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  store ptr %i.ne, ptr %24, align 8, !tbaa !22
  store i32 0, ptr %i.ne, align 4, !tbaa !14
  store i32 4, ptr %i.az, align 4, !tbaa !23
  %i.nf = invoke noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80) %i.mt, i32 noundef %.0243700, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.eh unwind label %bb.ej     ; 3 uses

bb.eh:                                            ; preds = %bb.eg
  %i.ng = icmp eq i32 %i.nf, -2147024809
  %or.cond21 = and i1 %2, %i.ng
  br i1 %or.cond21, label %bb.fc, label %bb.ek

bb.ei:                                            ; preds = %bb.ef
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit444

bb.ej:                                            ; preds = %bb.eg
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ek:                                            ; preds = %bb.eh
  %.not367 = icmp eq i32 %i.nf, 0
  br i1 %.not367, label %bb.el, label %bb.fc

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #17
  %i.nj = invoke noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef nonnull %i.ms, i32 noundef %.0243700, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %bb.em unwind label %bb.en     ; 2 uses

bb.em:                                            ; preds = %bb.el
  %.not368 = icmp eq i32 %i.nj, 0                 ; 2 uses
  %.22.. = select i1 %.not368, i32 %.22701, i32 %i.nj
  br i1 %.not368, label %bb.eo, label %bb.fb

bb.en:                                            ; preds = %bb.el
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.eo:                                            ; preds = %bb.em
  %i.nl = load i8, ptr %i.l, align 1, !tbaa !53, !range !55, !noundef !56
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = xor i1 %i.nm, true
  %i.no = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(16) %24, i1 noundef zeroext %i.nn)
          to label %bb.ep unwind label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.no, label %bb.er, label %bb.fb

bb.eq:                                            ; preds = %bb.er, %bb.eo
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.er:                                            ; preds = %bb.ep
  %i.nq = invoke noundef i32 @_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(80) %i.mt, i32 noundef %.0243700, i1 noundef zeroext %7)
          to label %bb.es unwind label %bb.eq     ; 0 uses

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #17
  %i.nr = invoke noundef zeroext i1 @_Z14GetUInt64ValueP10IInArchivejjRy(ptr noundef nonnull %i.ms, i32 noundef %.0243700, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  br i1 %i.nr, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store i64 0, ptr %i.n, align 8, !tbaa !65
  br label %bb.ew

bb.ev:                                            ; preds = %bb.ez, %bb.ew, %bb.es
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  br label %bb.ff

bb.ew:                                            ; preds = %bb.et, %bb.eu
  %.1251 = phi ptr [ %.0250699, %bb.eu ], [ %i.j, %bb.et ]
  %i.nt = invoke noundef zeroext i1 @_Z14GetUInt64ValueP10IInArchivejjRy(ptr noundef nonnull %i.ms, i32 noundef %.0243700, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.ex unwind label %bb.ev

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.nt, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  store i64 0, ptr %i.m, align 8, !tbaa !65
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey
  %.1257 = phi ptr [ %.0256698, %bb.ey ], [ %i.i, %bb.ex ]
  %i.nu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.fa unwind label %bb.ev     ; 0 uses

bb.fa:                                            ; preds = %bb.ez
  %i.nv = load i8, ptr %i.l, align 1, !tbaa !53, !range !55, !noundef !56 ; 2 uses
  %i.nw = xor i8 %i.nv, 1
  %not. = zext nneg i8 %i.nw to i64
  %.1268 = add i64 %.0267696, %not.
  %i.nx = zext nneg i8 %i.nv to i64
  %.1263 = add i64 %.0262697, %i.nx
  %i.ny = load i64, ptr %i.m, align 8, !tbaa !65
  %i.nz = add i64 %i.na, %i.ny
  %i.oa = load i64, ptr %i.n, align 8, !tbaa !65
  %i.ob = add i64 %i.nb, %i.oa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ep, %bb.em, %bb.fa
  %25 = phi i64 [ %i.ob, %bb.fa ], [ %i.nb, %bb.em ], [ %i.nb, %bb.ep ]
  %26 = phi i64 [ %i.nz, %bb.fa ], [ %i.na, %bb.em ], [ %i.na, %bb.ep ]
  %.18319 = phi i32 [ 0, %bb.fa ], [ 1, %bb.em ], [ 19, %bb.ep ]
  %.2269 = phi i64 [ %.1268, %bb.fa ], [ %.0267696, %bb.em ], [ %.0267696, %bb.ep ]
  %.2264 = phi i64 [ %.1263, %bb.fa ], [ %.0262697, %bb.em ], [ %.0262697, %bb.ep ]
  %.2258 = phi ptr [ %.1257, %bb.fa ], [ %.0256698, %bb.em ], [ %.0256698, %bb.ep ]
  %.2252 = phi ptr [ %.1251, %bb.fa ], [ %.0250699, %bb.em ], [ %.0250699, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %bb.fc

bb.fc:                                            ; preds = %bb.eh, %bb.ek, %bb.fb
  %27 = phi i64 [ %i.nb, %bb.ek ], [ %25, %bb.fb ], [ %i.nb, %bb.eh ] ; 3 uses
  %28 = phi i64 [ %i.na, %bb.ek ], [ %26, %bb.fb ], [ %i.na, %bb.eh ] ; 3 uses
  %.19320 = phi i32 [ 1, %bb.ek ], [ %.18319, %bb.fb ], [ 17, %bb.eh ] ; 2 uses
  %.3270 = phi i64 [ %.0267696, %bb.ek ], [ %.2269, %bb.fb ], [ %.0267696, %bb.eh ] ; 3 uses
  %.3265 = phi i64 [ %.0262697, %bb.ek ], [ %.2264, %bb.fb ], [ %.0262697, %bb.eh ] ; 3 uses
  %.3259 = phi ptr [ %.0256698, %bb.ek ], [ %.2258, %bb.fb ], [ %.0256698, %bb.eh ] ; 3 uses
  %.3253 = phi ptr [ %.0250699, %bb.ek ], [ %.2252, %bb.fb ], [ %.0250699, %bb.eh ] ; 3 uses
  %.25 = phi i32 [ %i.nf, %bb.ek ], [ %.22.., %bb.fb ], [ %.22701, %bb.eh ] ; 4 uses
  %i.oc = load ptr, ptr %24, align 8, !tbaa !22   ; 2 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %_ZN11CStringBaseIwED2Ev.exit443, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @_ZdaPv(ptr noundef nonnull %i.oc) #16
  br label %_ZN11CStringBaseIwED2Ev.exit443

_ZN11CStringBaseIwED2Ev.exit443:                  ; preds = %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  switch i32 %.19320, label %.thread531 [
    i32 0, label %bb.fe
    i32 19, label %bb.fe
    i32 17, label %.thread518
  ]

bb.fe:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit443, %_ZN11CStringBaseIwED2Ev.exit443
  %i.oe = add nuw i32 %.0243700, 1                ; 2 uses
  %i.of = load i32, ptr %i.k, align 4, !tbaa !4
  %i.og = icmp ult i32 %i.oe, %i.of
  br i1 %i.og, label %.lr.ph702, label %.thread518, !llvm.loop !100

bb.ff:                                            ; preds = %bb.ev, %bb.eq, %bb.en
  %.pn369 = phi { ptr, i32 } [ %i.ns, %bb.ev ], [ %i.np, %bb.eq ], [ %i.nk, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.ej
  %.pn369.pn = phi { ptr, i32 } [ %.pn369, %bb.ff ], [ %i.ni, %bb.ej ] ; 2 uses
  %i.oh = load ptr, ptr %24, align 8, !tbaa !22   ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %_ZN11CStringBaseIwED2Ev.exit444, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @_ZdaPv(ptr noundef nonnull %i.oh) #16
  br label %_ZN11CStringBaseIwED2Ev.exit444

_ZN11CStringBaseIwED2Ev.exit444:                  ; preds = %bb.fh, %bb.fg, %bb.ei
  %.pn369.pn.pn = phi { ptr, i32 } [ %i.nh, %bb.ei ], [ %.pn369.pn, %bb.fg ], [ %.pn369.pn, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %.loopexit.split-lp558

.thread518:                                       ; preds = %bb.fe, %_ZN11CStringBaseIwED2Ev.exit443, %.preheader576
  %i.oj = phi i64 [ 0, %.preheader576 ], [ %27, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %27, %bb.fe ] ; 2 uses
  %i.ok = phi i64 [ 0, %.preheader576 ], [ %28, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %28, %bb.fe ] ; 2 uses
  %.26530 = phi i32 [ %.18512824, %.preheader576 ], [ %.25, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.25, %bb.fe ]
  %.4254529 = phi ptr [ null, %.preheader576 ], [ %.3253, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.3253, %bb.fe ] ; 2 uses
  %.4260528 = phi ptr [ null, %.preheader576 ], [ %.3259, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.3259, %bb.fe ] ; 2 uses
  %.4266527 = phi i64 [ 0, %.preheader576 ], [ %.3265, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.3265, %bb.fe ] ; 2 uses
  %.4271526 = phi i64 [ 0, %.preheader576 ], [ %.3270, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.3270, %bb.fe ] ; 4 uses
  store i64 %i.ok, ptr %i.i, align 8
  store i64 %i.oj, ptr %i.j, align 8
  %i.ol = icmp ne ptr %.4260528, null
  %or.cond24.not = select i1 %2, i1 true, i1 %i.ol
  br i1 %or.cond24.not, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %.thread518
  %i.om = load i32, ptr %i.am, align 4, !tbaa !28
  %.not375 = icmp eq i32 %i.om, 0
  %i.on = load i64, ptr %i.ad, align 8
  %i.oo = select i1 %.not375, i64 0, i64 %i.on
  %.2329 = add i64 %i.oo, %.1328
  %i.op = icmp eq i64 %.4271526, 0
  %i.oq = select i1 %i.op, i64 0, i64 %.2329      ; 2 uses
  store i64 %i.oq, ptr %i.i, align 8, !tbaa !65
  br label %bb.fj

.loopexit557:                                     ; preds = %.lr.ph.i450
  %lpad.loopexit559 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

.loopexit.split-lp558.loopexit:                   ; preds = %.lr.ph.i.i452
  %lpad.loopexit561 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

.loopexit.split-lp558.loopexit.split-lp:          ; preds = %bb.fo, %bb.fn, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit457
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

bb.fj:                                            ; preds = %bb.fi, %.thread518
  %i.or = phi i64 [ %i.oq, %bb.fi ], [ %i.ok, %.thread518 ]
  %.5261 = phi ptr [ %i.i, %bb.fi ], [ %.4260528, %.thread518 ] ; 2 uses
  %i.os = icmp eq ptr %.4254529, null
  %i.ot = icmp eq i64 %.4271526, 0
  %or.cond26 = select i1 %i.os, i1 %i.ot, i1 false
  br i1 %or.cond26, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  store i64 0, ptr %i.j, align 8, !tbaa !65
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %29 = phi i64 [ 0, %bb.fk ], [ %i.oj, %bb.fj ]
  %.5255 = phi ptr [ %i.j, %bb.fk ], [ %.4254529, %bb.fj ] ; 2 uses
  br i1 %or.cond513822, label %bb.fp, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ou = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.ov = icmp sgt i32 %i.ou, 0
  br i1 %i.ov, label %.lr.ph11.i445, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit457

.lr.ph11.i445:                                    ; preds = %bb.fm, %._crit_edge.i448
  %indvars.iv.i446 = phi i64 [ %indvars.iv.next.i449, %._crit_edge.i448 ], [ 0, %bb.fm ] ; 2 uses
  %i.ow = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv.i446
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !29 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !38 ; 2 uses
  %i.pb = icmp sgt i32 %i.pa, 0
  br i1 %i.pb, label %.lr.ph.i.i452, label %_ZL11PrintSpacesi.exit.i447

.lr.ph.i.i452:                                    ; preds = %.lr.ph11.i445, %.noexc455
  %.03.i.i453 = phi i32 [ %i.pd, %.noexc455 ], [ 0, %.lr.ph11.i445 ]
  %i.pc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc455 unwind label %.loopexit.split-lp558.loopexit ; 0 uses

.noexc455:                                        ; preds = %.lr.ph.i.i452
  %i.pd = add nuw nsw i32 %.03.i.i453, 1          ; 2 uses
  %exitcond.not.i.i454 = icmp eq i32 %i.pd, %i.pa
  br i1 %exitcond.not.i.i454, label %_ZL11PrintSpacesi.exit.i447, label %.lr.ph.i.i452, !llvm.loop !39

_ZL11PrintSpacesi.exit.i447:                      ; preds = %.noexc455, %.lr.ph11.i445
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 36 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !42
  %i.pg = icmp sgt i32 %i.pf, 0
  br i1 %i.pg, label %.lr.ph.i450, label %._crit_edge.i448

._crit_edge.i448:                                 ; preds = %.noexc456, %_ZL11PrintSpacesi.exit.i447
  %indvars.iv.next.i449 = add nuw nsw i64 %indvars.iv.i446, 1 ; 2 uses
  %i.ph = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.pi = sext i32 %i.ph to i64
  %i.pj = icmp slt i64 %indvars.iv.next.i449, %i.pi
  br i1 %i.pj, label %.lr.ph11.i445, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit457, !llvm.loop !43

.lr.ph.i450:                                      ; preds = %_ZL11PrintSpacesi.exit.i447, %.noexc456
  %.08.i451 = phi i32 [ %i.pl, %.noexc456 ], [ 0, %_ZL11PrintSpacesi.exit.i447 ]
  %i.pk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 45)
          to label %.noexc456 unwind label %.loopexit557 ; 0 uses

.noexc456:                                        ; preds = %.lr.ph.i450
  %i.pl = add nuw nsw i32 %.08.i451, 1            ; 2 uses
  %i.pm = load i32, ptr %i.pe, align 4, !tbaa !42
  %i.pn = icmp slt i32 %i.pl, %i.pm
  br i1 %i.pn, label %.lr.ph.i450, label %._crit_edge.i448, !llvm.loop !44

_ZN13CFieldPrinter15PrintTitleLinesEv.exit457:    ; preds = %._crit_edge.i448, %bb.fm
  %i.po = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.fn unwind label %.loopexit.split-lp558.loopexit.split-lp ; 0 uses

bb.fn:                                            ; preds = %_ZN13CFieldPrinter15PrintTitleLinesEv.exit457
  %i.pp = invoke noundef i32 @_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %.4271526, i64 noundef %.4266527, ptr noundef %.5255, ptr noundef %.5261)
          to label %bb.fo unwind label %.loopexit.split-lp558.loopexit.split-lp ; 0 uses

bb.fo:                                            ; preds = %bb.fn
  %i.pq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.fp unwind label %.loopexit.split-lp558.loopexit.split-lp ; 0 uses

bb.fp:                                            ; preds = %bb.fo, %bb.fl
  %.not379 = icmp eq ptr %.5261, null
  br i1 %.not379, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.pr = load i64, ptr %i.a, align 8, !tbaa !65
  %i.ps = add i64 %i.pr, %i.or
  store i64 %i.ps, ptr %i.a, align 8, !tbaa !65
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.1279 = phi ptr [ %i.a, %bb.fq ], [ %.0278723, %bb.fp ]
  %.not380 = icmp eq ptr %.5255, null
  br i1 %.not380, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.pt = load i64, ptr %i.b, align 8, !tbaa !65
  %i.pu = add i64 %i.pt, %29
  store i64 %i.pu, ptr %i.b, align 8, !tbaa !65
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.1286 = phi ptr [ %i.b, %bb.fs ], [ %.0285722, %bb.fr ]
  %i.pv = add i64 %.4271526, %.0244725
  %i.pw = add i64 %.4266527, %.0272724
  br label %.thread531

.thread531:                                       ; preds = %_ZN11CStringBaseIwED2Ev.exit443, %bb.ed, %bb.eb, %bb.ft
  %.21322 = phi i32 [ 0, %bb.ft ], [ 1, %bb.eb ], [ 1, %bb.ed ], [ %.19320, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.2287 = phi ptr [ %.1286, %bb.ft ], [ %.0285722, %bb.eb ], [ %.0285722, %bb.ed ], [ %.0285722, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.2280 = phi ptr [ %.1279, %bb.ft ], [ %.0278723, %bb.eb ], [ %.0278723, %bb.ed ], [ %.0278723, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.1273 = phi i64 [ %i.pw, %bb.ft ], [ %.0272724, %bb.eb ], [ %.0272724, %bb.ed ], [ %.0272724, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.1245 = phi i64 [ %i.pv, %bb.ft ], [ %.0244725, %bb.eb ], [ %.0244725, %bb.ed ], [ %.0244725, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.27 = phi i32 [ %.26530, %bb.ft ], [ %i.mx, %bb.eb ], [ -2147467260, %bb.ed ], [ %.25, %_ZN11CStringBaseIwED2Ev.exit443 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  br label %.thread503

.thread503:                                       ; preds = %.thread483, %.thread497, %.thread531, %bb.dy, %bb.ab, %bb.au
  %.23324 = phi i32 [ 1, %bb.dy ], [ 4, %bb.au ], [ 1, %bb.ab ], [ %.21322, %.thread531 ], [ 1, %.thread497 ], [ 1, %.thread483 ]
  %.4296 = phi i32 [ %.3295, %bb.dy ], [ %.0292721, %bb.au ], [ %.0292721, %bb.ab ], [ %.3295, %.thread531 ], [ %.3295, %.thread497 ], [ %.3295, %.thread483 ]
  %.4289 = phi ptr [ %.0285722, %bb.dy ], [ %.0285722, %bb.au ], [ %.0285722, %bb.ab ], [ %.2287, %.thread531 ], [ %.0285722, %.thread497 ], [ %.0285722, %.thread483 ]
  %.4282 = phi ptr [ %.0278723, %bb.dy ], [ %.0278723, %bb.au ], [ %.0278723, %bb.ab ], [ %.2280, %.thread531 ], [ %.0278723, %.thread497 ], [ %.0278723, %.thread483 ]
  %.3275 = phi i64 [ %.0272724, %bb.dy ], [ %.0272724, %bb.au ], [ %.0272724, %bb.ab ], [ %.1273, %.thread531 ], [ %.0272724, %.thread497 ], [ %.0272724, %.thread483 ]
  %.3247 = phi i64 [ %.0244725, %bb.dy ], [ %.0244725, %bb.au ], [ %.0244725, %bb.ab ], [ %.1245, %.thread531 ], [ %.0244725, %.thread497 ], [ %.0244725, %.thread483 ]
  %.29 = phi i32 [ %i.mq, %bb.dy ], [ %.0726, %bb.au ], [ %i.cs, %bb.ab ], [ %.27, %.thread531 ], [ %.11, %.thread497 ], [ %.5, %.thread483 ]
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20COpenCallbackConsole, i64 16), ptr %14, align 8, !tbaa !31
  %i.px = load ptr, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %_ZN20COpenCallbackConsoleD2Ev.exit, label %bb.fu

bb.fu:                                            ; preds = %.thread503
  call void @_ZdaPv(ptr noundef nonnull %i.px) #16
  br label %_ZN20COpenCallbackConsoleD2Ev.exit

_ZN20COpenCallbackConsoleD2Ev.exit:               ; preds = %.thread503, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN12CArchiveLinkD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.fv

bb.fv:                                            ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395, %_ZN20COpenCallbackConsoleD2Ev.exit
  %.24325 = phi i32 [ %.23324, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0301, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ]
  %.5297 = phi i32 [ %.4296, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0292721, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 4 uses
  %.5290 = phi ptr [ %.4289, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0285722, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  %.5283 = phi ptr [ %.4282, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0278723, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  %.4276 = phi i64 [ %.3275, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0272724, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  %.4248 = phi i64 [ %.3247, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0244725, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  %.30 = phi i32 [ %.29, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0726, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  switch i32 %.24325, label %.loopexit580 [
    i32 0, label %bb.fw
    i32 4, label %bb.fw
    i32 2, label %.thread539
  ]

bb.fw:                                            ; preds = %bb.fv, %bb.fv
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %i.pz = sext i32 %.5297 to i64
  %i.qa = icmp slt i64 %indvars.iv.next782, %i.pz
  br i1 %i.qa, label %bb.e, label %.thread539, !llvm.loop !101

.loopexit.split-lp558:                            ; preds = %.loopexit557, %.loopexit.split-lp558.loopexit.split-lp, %.loopexit.split-lp558.loopexit, %bb.ee, %_ZN11CStringBaseIwED2Ev.exit444, %bb.ec
  %.pn376 = phi { ptr, i32 } [ %i.nd, %bb.ee ], [ %i.mz, %bb.ec ], [ %.pn369.pn.pn, %_ZN11CStringBaseIwED2Ev.exit444 ], [ %lpad.loopexit559, %.loopexit557 ], [ %lpad.loopexit561, %.loopexit.split-lp558.loopexit ], [ %lpad.loopexit.split-lp562, %.loopexit.split-lp558.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  br label %.loopexit.split-lp565

.loopexit.split-lp565:                            ; preds = %.loopexit572, %.loopexit.split-lp573, %.loopexit564, %.loopexit.split-lp565.loopexit.split-lp, %.loopexit.split-lp565.loopexit, %.body, %bb.dr, %bb.bh, %.loopexit.split-lp558, %bb.dz, %bb.ad
  %.pn383.pn = phi { ptr, i32 } [ %i.cu, %bb.ad ], [ %i.mr, %bb.dz ], [ %.pn381, %.body ], [ %i.gn, %bb.bh ], [ %lpad.loopexit.split-lp569, %.loopexit.split-lp565.loopexit.split-lp ], [ %.pn356.pn.pn.pn.pn.pn, %bb.dr ], [ %.pn376, %.loopexit.split-lp558 ], [ %lpad.loopexit566, %.loopexit564 ], [ %lpad.loopexit568, %.loopexit.split-lp565.loopexit ], [ %lpad.loopexit574, %.loopexit572 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp573 ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20COpenCallbackConsole, i64 16), ptr %14, align 8, !tbaa !31
  %i.qb = load ptr, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %_ZN20COpenCallbackConsoleD2Ev.exit460, label %bb.fx

bb.fx:                                            ; preds = %.loopexit.split-lp565
  call void @_ZdaPv(ptr noundef nonnull %i.qb) #16
  br label %_ZN20COpenCallbackConsoleD2Ev.exit460

_ZN20COpenCallbackConsoleD2Ev.exit460:            ; preds = %bb.fx, %.loopexit.split-lp565, %bb.ac
  %.pn383.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.ac ], [ %.pn383.pn, %.loopexit.split-lp565 ], [ %.pn383.pn, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN12CArchiveLinkD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %.loopexit.split-lp

.thread539:                                       ; preds = %bb.fw, %bb.fv
  %.not389 = xor i1 %7, true
  %or.cond32.not = and i1 %6, %.not389
  %i.qd = icmp sgt i32 %.5297, 1
  %or.cond34 = select i1 %or.cond32.not, i1 %i.qd, i1 false
  br i1 %or.cond34, label %bb.fy, label %.loopexit580

bb.fy:                                            ; preds = %.thread539
  %i.qe = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.fz unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.fz:                                            ; preds = %bb.fy
  %i.qf = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !28
  %i.qh = icmp sgt i32 %i.qg, 0
  br i1 %i.qh, label %.lr.ph11.i461, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit473

.lr.ph11.i461:                                    ; preds = %bb.fz
  %i.qi = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.ga

bb.ga:                                            ; preds = %._crit_edge.i464, %.lr.ph11.i461
  %indvars.iv.i462 = phi i64 [ 0, %.lr.ph11.i461 ], [ %indvars.iv.next.i465, %._crit_edge.i464 ] ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !25
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %indvars.iv.i462
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !29 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !38 ; 2 uses
  %i.qo = icmp sgt i32 %i.qn, 0
  br i1 %i.qo, label %.lr.ph.i.i468, label %_ZL11PrintSpacesi.exit.i463

.lr.ph.i.i468:                                    ; preds = %bb.ga, %.noexc471
  %.03.i.i469 = phi i32 [ %i.qq, %.noexc471 ], [ 0, %bb.ga ]
  %i.qp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc471 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc471:                                        ; preds = %.lr.ph.i.i468
  %i.qq = add nuw nsw i32 %.03.i.i469, 1          ; 2 uses
  %exitcond.not.i.i470 = icmp eq i32 %i.qq, %i.qn
  br i1 %exitcond.not.i.i470, label %_ZL11PrintSpacesi.exit.i463, label %.lr.ph.i.i468, !llvm.loop !39

_ZL11PrintSpacesi.exit.i463:                      ; preds = %.noexc471, %bb.ga
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ql, i64 36 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !42
  %i.qt = icmp sgt i32 %i.qs, 0
  br i1 %i.qt, label %.lr.ph.i466, label %._crit_edge.i464

._crit_edge.i464:                                 ; preds = %.noexc472, %_ZL11PrintSpacesi.exit.i463
  %indvars.iv.next.i465 = add nuw nsw i64 %indvars.iv.i462, 1 ; 2 uses
  %i.qu = load i32, ptr %i.qf, align 4, !tbaa !28
  %i.qv = sext i32 %i.qu to i64
  %i.qw = icmp slt i64 %indvars.iv.next.i465, %i.qv
  br i1 %i.qw, label %bb.ga, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit473, !llvm.loop !43

.lr.ph.i466:                                      ; preds = %_ZL11PrintSpacesi.exit.i463, %.noexc472
  %.08.i467 = phi i32 [ %i.qy, %.noexc472 ], [ 0, %_ZL11PrintSpacesi.exit.i463 ]
  %i.qx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 45)
          to label %.noexc472 unwind label %.loopexit ; 0 uses

.noexc472:                                        ; preds = %.lr.ph.i466
  %i.qy = add nuw nsw i32 %.08.i467, 1            ; 2 uses
  %i.qz = load i32, ptr %i.qr, align 4, !tbaa !42
  %i.ra = icmp slt i32 %i.qy, %i.qz
  br i1 %i.ra, label %.lr.ph.i466, label %._crit_edge.i464, !llvm.loop !44

_ZN13CFieldPrinter15PrintTitleLinesEv.exit473:    ; preds = %._crit_edge.i464, %bb.fz
  %i.rb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gb:                                            ; preds = %_ZN13CFieldPrinter15PrintTitleLinesEv.exit473
  %i.rc = invoke noundef i32 @_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %.4248, i64 noundef %.4276, ptr noundef %.5290, ptr noundef %.5283)
          to label %bb.gc unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gc:                                            ; preds = %bb.gb
  %i.rd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  %i.re = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @.str.17)
          to label %bb.ge unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ge:                                            ; preds = %bb.gd
  %i.rf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEi(ptr noundef nonnull align 8 dereferenceable(16) %i.re, i32 noundef %.5297)
          to label %bb.gf unwind label %.loopexit.split-lp.loopexit.split-lp

bb.gf:                                            ; preds = %bb.ge
  %i.rg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.rf, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %.loopexit580 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit580:                                     ; preds = %bb.fv, %bb.d, %.thread539, %bb.gf
  %.32 = phi i32 [ 0, %.thread539 ], [ 0, %bb.gf ], [ 0, %bb.d ], [ %.30, %bb.fv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI10CFieldInfoE, i64 16), ptr %11, align 8, !tbaa !31
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN13CFieldPrinterD2Ev.exit unwind label %bb.gg, !inline_history !102

bb.gg:                                            ; preds = %.loopexit580
  %i.rh = landingpad { ptr, i32 }
          catch ptr null
  %i.ri = extractvalue { ptr, i32 } %i.rh, 0
  call void @__clang_call_terminate(ptr %i.ri) #18, !inline_history !102
  unreachable

_ZN13CFieldPrinterD2Ev.exit:                      ; preds = %.loopexit580
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17, !inline_history !102
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  ret i32 %.32

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit, %_ZN20COpenCallbackConsoleD2Ev.exit460
  %.pn390 = phi { ptr, i32 } [ %.pn, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit ], [ %.pn383.pn.pn, %_ZN20COpenCallbackConsoleD2Ev.exit460 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit554, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp555, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.gh

bb.gh:                                            ; preds = %.loopexit.split-lp, %bb.c
  %.pn390.pn = phi { ptr, i32 } [ %.pn390, %.loopexit.split-lp ], [ %i.q, %bb.c ]
  call void @_ZN13CFieldPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  resume { ptr, i32 } %.pn390.pn
}

declare noundef zeroext i1 @_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef, ptr noundef nonnull align 1, i1 noundef zeroext, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN20COpenCallbackConsole21Open_WasPasswordAskedEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12CArchiveLinkD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN12CArchiveLink7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(73) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %i.a, align 8, !tbaa !31
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit unwind label %bb.c, !inline_history !103

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #18, !inline_history !103
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit:    ; preds = %bb.b
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17, !inline_history !103
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI4CArcE, i64 16), ptr %0, align 8, !tbaa !31
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI4CArcED2Ev.exit unwind label %bb.d, !inline_history !104

bb.d:                                             ; preds = %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18, !inline_history !104
  unreachable

_ZN13CObjectVectorI4CArcED2Ev.exit:               ; preds = %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17, !inline_history !104
  ret void

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CFieldPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI10CFieldInfoE, i64 16), ptr %0, align 8, !tbaa !31
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI10CFieldInfoED2Ev.exit unwind label %bb.b, !inline_history !102

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #18, !inline_history !102
  unreachable

_ZN13CObjectVectorI10CFieldInfoED2Ev.exit:        ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17, !inline_history !102
  ret void
}

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_Z21ConvertUInt32ToStringjPw(i32 noundef, ptr noundef) local_unnamed_addr #2

end_hunk_1
