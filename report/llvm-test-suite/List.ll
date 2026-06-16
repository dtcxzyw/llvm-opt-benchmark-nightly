inline.NumInlined: 231
inline.NumDeleted: 69
begin_hunk_0_@_ZN11CStringBaseIwEpLEPKw:bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.e to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  %i.y = sub i64 %i.v, %.pre.i.i10
  %diff.check = icmp ult i64 %i.y, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !14
  %wide.load11 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !14
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %wide.load, ptr %i.ab, align 4, !tbaa !14
  store <4 x i32> %wide.load11, ptr %i.ac, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !67

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
  br label %bb.gg

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

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit473, %bb.fx
  %lpad.loopexit.split-lp555 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph728, %bb.fv
  %indvars.iv781 = phi i64 [ 0, %.lr.ph728 ], [ %indvars.iv.next782, %bb.fv ] ; 3 uses
  %.0726 = phi i32 [ undef, %.lr.ph728 ], [ %.30, %bb.fv ] ; 5 uses
  %.0244725 = phi i64 [ 0, %.lr.ph728 ], [ %.4248, %bb.fv ] ; 10 uses
  %.0272724 = phi i64 [ 0, %.lr.ph728 ], [ %.4276, %bb.fv ] ; 10 uses
  %.0278723 = phi ptr [ null, %.lr.ph728 ], [ %.5283, %bb.fv ] ; 10 uses
  %.0285722 = phi ptr [ null, %.lr.ph728 ], [ %.5290, %bb.fv ] ; 10 uses
  %.0292721 = phi i32 [ %i.s, %.lr.ph728 ], [ %.5297, %bb.fv ] ; 5 uses
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
  br i1 %cond1, label %bb.v, label %bb.fu

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
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20COpenCallbackConsole, i64 16), ptr %14, align 8, !tbaa !31
  store i8 0, ptr %i.ag, align 1, !tbaa !83
  %i.ca = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.w unwind label %bb.ab      ; 4 uses

bb.w:                                             ; preds = %bb.v
  store ptr %i.ca, ptr %i.ah, align 8, !tbaa !22
  store i32 4, ptr %i.ai, align 4, !tbaa !23
  store ptr @g_StdOut, ptr %i.aj, align 8, !tbaa !87
  %i.cb = load i8, ptr %8, align 1, !tbaa !53, !range !55, !noundef !56
  store i8 %i.cb, ptr %i.af, align 8, !tbaa !88
  store i32 0, ptr %i.ak, align 8, !tbaa !24
  store i32 0, ptr %i.ca, align 4, !tbaa !14
  %25 = load i32, ptr %i.al, align 8, !tbaa !24   ; 2 uses
  %26 = add nsw i32 %25, 1                        ; 3 uses
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = zext nneg i32 %26 to i64
  %i.cd = icmp slt i32 %25, -1
  %i.ce = shl nuw nsw i64 %i.cc, 2
  %i.cf = select i1 %i.cd, i64 -1, i64 %i.ce
  %i.cg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #15
          to label %bb.y unwind label %bb.ac      ; 3 uses

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.ca) #16
  %.pre.i = load i32, ptr %i.ak, align 8, !tbaa !24
  %i.ch = sext i32 %.pre.i to i64
  store ptr %i.cg, ptr %i.ah, align 8, !tbaa !22
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  store i32 0, ptr %i.ci, align 4, !tbaa !14
  store i32 %26, ptr %i.ai, align 4, !tbaa !23
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.y, %bb.w
  %i.cj = phi ptr [ %i.ca, %bb.w ], [ %i.cg, %bb.y ]
  %i.ck = load ptr, ptr %9, align 8, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ck, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cl, %bb.z ] ; 2 uses
  %.0.i.i = phi ptr [ %i.cj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cn, %bb.z ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.cm = load i32, ptr %.04.i.i, align 4, !tbaa !14 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.cm, ptr %.0.i.i, align 4, !tbaa !14
  %.not.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.z, !llvm.loop !16

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.z
  %i.co = load i32, ptr %i.al, align 8, !tbaa !24
  store i32 %i.co, ptr %i.ak, align 8, !tbaa !24
  %28 = invoke noundef i32 @_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI(ptr noundef nonnull align 8 dereferenceable(73) %13, ptr noundef %0, ptr noundef nonnull align 1 %1, i1 noundef zeroext %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull %14)
          to label %bb.aa unwind label %.loopexit.split-lp565.loopexit.split-lp ; 4 uses

bb.aa:                                            ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  switch i32 %28, label %bb.ad [
    i32 0, label %bb.au
    i32 -2147467260, label %.thread503
  ]

bb.ab:                                            ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20COpenCallbackConsoleD2Ev.exit460

bb.ac:                                            ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp565

.loopexit564:                                     ; preds = %.lr.ph.i438
  %lpad.loopexit566 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp565

.loopexit.split-lp565.loopexit:                   ; preds = %.lr.ph.i.i
  %lpad.loopexit568 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp565

.loopexit.split-lp565.loopexit.split-lp:          ; preds = %.invoke, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit, %bb.du, %bb.dt, %bb.ds, %._crit_edge, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.as, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %lpad.loopexit.split-lp569 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp565

bb.ad:                                            ; preds = %bb.aa
  %i.cr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.ae unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.cs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull @.str.5)
          to label %bb.af unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.bf, align 8, !tbaa !22
  %i.cu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef %i.ct)
          to label %bb.ag unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.cv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull @.str.7)
          to label %bb.ah unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  switch i32 %28, label %bb.ak [
    i32 1, label %bb.ai
    i32 -2147024882, label %.invoke
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cw = invoke noundef zeroext i1 @_ZN20COpenCallbackConsole21Open_WasPasswordAskedEv(ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %bb.aj unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %.str.8..str.9 = select i1 %i.cw, ptr @.str.8, ptr @.str.9
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.aj
  %i.cx = phi ptr [ %.str.8..str.9, %bb.aj ], [ @.str.10, %bb.ah ]
  %i.cy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull %i.cx)
          to label %bb.as unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  store i64 17179869184, ptr %i.ba, align 8, !alias.scope !89
  %i.cz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %.noexc396 unwind label %bb.ap ; 2 uses

.noexc396:                                        ; preds = %bb.ak
  store ptr %i.cz, ptr %15, align 8, !tbaa !22, !alias.scope !89
  store i32 0, ptr %i.cz, align 4, !tbaa !14, !noalias !89
  %i.da = invoke noundef zeroext i1 @_ZN8NWindows6NError15MyFormatMessageEjR11CStringBaseIwE(i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN8NWindows6NError15MyFormatMessageEj.exit unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %.noexc396
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %15, align 8, !tbaa !22, !alias.scope !89 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.body, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #16
  br label %.body

_ZN8NWindows6NError15MyFormatMessageEj.exit:      ; preds = %.noexc396
  %i.de = load ptr, ptr %15, align 8, !tbaa !22
  %i.df = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.de)
          to label %bb.an unwind label %bb.aq     ; 0 uses

bb.an:                                            ; preds = %_ZN8NWindows6NError15MyFormatMessageEj.exit
  %i.dg = load ptr, ptr %15, align 8, !tbaa !22   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.as

bb.ap:                                            ; preds = %bb.ak
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %_ZN8NWindows6NError15MyFormatMessageEj.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %15, align 8, !tbaa !22   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.body, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %i.dk) #16
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.am, %bb.al
  %.pn381 = phi { ptr, i32 } [ %i.db, %bb.al ], [ %i.di, %bb.ap ], [ %i.db, %bb.am ], [ %i.dj, %bb.aq ], [ %i.dj, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.loopexit.split-lp565

bb.as:                                            ; preds = %.invoke, %_ZN11CStringBaseIwED2Ev.exit
  %i.dm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.at unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.dn = load i64, ptr %10, align 8, !tbaa !65
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %10, align 8, !tbaa !65
  br label %.thread503

bb.au:                                            ; preds = %bb.aa
  %i.dp = load i32, ptr %i.am, align 4
  %i.dq = icmp slt i32 %i.dp, 1
  %or.cond.not = select i1 %2, i1 true, i1 %i.dq
  br i1 %or.cond.not, label %.loopexit579, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ], [ 0, %bb.au ] ; 2 uses
  %.1293667 = phi i32 [ %.2294, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ], [ %.0292721, %bb.au ] ; 3 uses
  %i.dr = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !29 ; 2 uses
  %i.du = load i32, ptr %i.ao, align 4, !tbaa !28 ; 2 uses
  %.not24.i = icmp eq i32 %i.du, 0
  br i1 %.not24.i, label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.noexc399
  %.01526.i = phi i32 [ %.116.i, %.noexc399 ], [ 0, %.lr.ph ] ; 2 uses
  %.01825.i = phi i32 [ %.119.i, %.noexc399 ], [ %i.du, %.lr.ph ] ; 2 uses
  %i.dv = add nsw i32 %.01825.i, %.01526.i        ; 2 uses
  %i.dw = sdiv i32 %i.dv, 2                       ; 5 uses
  %i.dx = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.dy = sext i32 %i.dw to i64                   ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !29 ; 2 uses
  %i.eb = load ptr, ptr %i.dt, align 8, !tbaa !22
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !22
  %i.ed = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.eb, ptr noundef %i.ec)
          to label %.noexc398 unwind label %.loopexit572

.noexc398:                                        ; preds = %.lr.ph.i
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit, label %bb.av

bb.av:                                            ; preds = %.noexc398
  %i.ef = load ptr, ptr %i.dt, align 8, !tbaa !22
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !22
  %i.eh = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ef, ptr noundef %i.eg)
          to label %.noexc399 unwind label %.loopexit572

.noexc399:                                        ; preds = %bb.av
  %i.ei = icmp slt i32 %i.eh, 0                   ; 2 uses
  %i.ej = add nsw i32 %i.dw, 1
  %.119.i = select i1 %i.ei, i32 %i.dw, i32 %.01825.i ; 2 uses
  %.116.i = select i1 %i.ei, i32 %.01526.i, i32 %i.ej ; 2 uses
  %.not.i = icmp eq i32 %.116.i, %.119.i
  br i1 %.not.i, label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread, label %.lr.ph.i, !llvm.loop !92

_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit: ; preds = %.noexc398
  %i.ek = icmp sgt i32 %i.dv, -2
  %i.el = icmp slt i64 %indvars.iv781, %i.dy
  %or.cond393 = and i1 %i.ek, %i.el
  br i1 %or.cond393, label %bb.aw, label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread

bb.aw:                                            ; preds = %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit
  %i.em = load ptr, ptr %3, align 8, !tbaa !31
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.dw, i32 noundef 1)
          to label %bb.ax unwind label %.loopexit.split-lp573

bb.ax:                                            ; preds = %bb.aw
  %i.ep = load ptr, ptr %4, align 8, !tbaa !31
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  invoke void %i.er(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.dw, i32 noundef 1)
          to label %bb.ay unwind label %.loopexit.split-lp573

bb.ay:                                            ; preds = %bb.ax
  %i.es = load i32, ptr %i.r, align 4, !tbaa !28
  br label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread

.loopexit572:                                     ; preds = %.lr.ph.i, %bb.av
  %lpad.loopexit574 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp565

.loopexit.split-lp573:                            ; preds = %bb.aw, %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp565

_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread: ; preds = %.noexc399, %.lr.ph, %bb.ay, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit
  %.2294 = phi i32 [ %i.es, %bb.ay ], [ %.1293667, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit ], [ %.1293667, %.lr.ph ], [ %.1293667, %.noexc399 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.et = load i32, ptr %i.am, align 4, !tbaa !28
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next, %i.eu
  br i1 %i.ev, label %.lr.ph, label %.loopexit579, !llvm.loop !93

.loopexit579:                                     ; preds = %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread, %bb.au
  %.3295 = phi i32 [ %.0292721, %bb.au ], [ %.2294, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ] ; 4 uses
  br i1 %6, label %bb.az, label %.thread508

bb.az:                                            ; preds = %.loopexit579
  %i.ew = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.ba unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.ex = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull @.str.78)
          to label %bb.bb unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  %i.ey = load ptr, ptr %i.bf, align 8, !tbaa !22
  %i.ez = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef %i.ey)
          to label %bb.bc unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %i.fa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.bd unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.fb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %.preheader577 unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

.preheader577:                                    ; preds = %bb.bd
  %i.fc = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph681, label %._crit_edge

.lr.ph681:                                        ; preds = %.preheader577, %bb.dp
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %bb.dp ], [ 0, %.preheader577 ] ; 4 uses
  %.1680 = phi i32 [ %.16482, %bb.dp ], [ %.0726, %.preheader577 ] ; 2 uses
  %i.fe = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv778
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !29 ; 5 uses
  %i.fh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @.str.11)
          to label %bb.be unwind label %bb.bg     ; 0 uses

bb.be:                                            ; preds = %.lr.ph681
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !22
  %i.fk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @.str.12)
          to label %.noexc400 unwind label %bb.bg

.noexc400:                                        ; preds = %bb.be
  %i.fl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull @.str)
          to label %.noexc401 unwind label %bb.bg
end_hunk_0
begin_hunk_1_@_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.thread503

bb.do:                                            ; preds = %_ZN10CMyComBSTRD2Ev.exit437, %bb.co
  %.pn356.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn, %_ZN10CMyComBSTRD2Ev.exit437 ], [ %i.jd, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  br label %bb.dq

.thread487:                                       ; preds = %bb.cn, %bb.cm, %bb.cl
  %.14.ph = phi i32 [ %.7, %bb.cl ], [ %.7, %bb.cm ], [ %.11, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !28
  br label %bb.dp

bb.dp:                                            ; preds = %.thread487, %.thread478
  %i.kv = phi i32 [ %i.il, %.thread478 ], [ %.pre, %.thread487 ]
  %.16482 = phi i32 [ %.7, %.thread478 ], [ %.14.ph, %.thread487 ] ; 2 uses
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1 ; 2 uses
  %i.kw = sext i32 %i.kv to i64
  %i.kx = icmp slt i64 %indvars.iv.next779, %i.kw
  br i1 %i.kx, label %.lr.ph681, label %._crit_edge, !llvm.loop !99

bb.dq:                                            ; preds = %bb.do, %_ZN10CMyComBSTRD2Ev.exit424, %bb.bj
  %.pn356.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn.pn, %bb.do ], [ %.pn347.pn.pn.pn, %_ZN10CMyComBSTRD2Ev.exit424 ], [ %i.gt, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.loopexit.split-lp565

._crit_edge:                                      ; preds = %bb.dp, %.preheader577
  %.1.lcssa = phi i32 [ %.0726, %.preheader577 ], [ %.16482, %bb.dp ] ; 2 uses
  %i.ky = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.dr unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

bb.dr:                                            ; preds = %._crit_edge
  br i1 %7, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.kz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @.str.16)
          to label %.thread508.thread unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

.thread508.thread:                                ; preds = %bb.ds
  %i.la = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.lb = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.lc = sext i32 %i.la to i64
  %i.ld = getelementptr [8 x i8], ptr %i.lb, i64 %i.lc
  %i.le = getelementptr i8, ptr %i.ld, i64 -8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !29 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !50
  br label %bb.dw

bb.dt:                                            ; preds = %bb.dr
  invoke void @_ZN13CFieldPrinter10PrintTitleEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.du unwind label %.loopexit.split-lp565.loopexit.split-lp

bb.du:                                            ; preds = %bb.dt
  %i.lh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.dv unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

bb.dv:                                            ; preds = %bb.du
  %i.li = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %.lr.ph11.i, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit

.lr.ph11.i:                                       ; preds = %bb.dv, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.dv ] ; 2 uses
  %i.lk = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %indvars.iv.i
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !29 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !38 ; 2 uses
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph.i.i, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i, %.noexc439
  %.03.i.i = phi i32 [ %i.lr, %.noexc439 ], [ 0, %.lr.ph11.i ]
  %i.lq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc439 unwind label %.loopexit.split-lp565.loopexit ; 0 uses

.noexc439:                                        ; preds = %.lr.ph.i.i
  %i.lr = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.lr, %i.lo
  br i1 %exitcond.not.i.i, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i, !llvm.loop !39

_ZL11PrintSpacesi.exit.i:                         ; preds = %.noexc439, %.lr.ph11.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 36 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !42
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph.i438, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc440, %_ZL11PrintSpacesi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lv = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.lw = sext i32 %i.lv to i64
  %i.lx = icmp slt i64 %indvars.iv.next.i, %i.lw
  br i1 %i.lx, label %.lr.ph11.i, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit, !llvm.loop !43

.lr.ph.i438:                                      ; preds = %_ZL11PrintSpacesi.exit.i, %.noexc440
  %.08.i = phi i32 [ %i.lz, %.noexc440 ], [ 0, %_ZL11PrintSpacesi.exit.i ]
  %i.ly = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 45)
          to label %.noexc440 unwind label %.loopexit564 ; 0 uses

.noexc440:                                        ; preds = %.lr.ph.i438
  %i.lz = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %i.ma = load i32, ptr %i.ls, align 4, !tbaa !42
  %i.mb = icmp slt i32 %i.lz, %i.ma
  br i1 %i.mb, label %.lr.ph.i438, label %._crit_edge.i, !llvm.loop !44

_ZN13CFieldPrinter15PrintTitleLinesEv.exit:       ; preds = %._crit_edge.i, %bb.dv
  %i.mc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %.thread508 unwind label %.loopexit.split-lp565.loopexit.split-lp ; 0 uses

.thread508:                                       ; preds = %.loopexit579, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit
  %or.cond513 = phi i1 [ false, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit ], [ %or.cond511, %.loopexit579 ] ; 2 uses
  %.18512 = phi i32 [ %.1.lcssa, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit ], [ %.0726, %.loopexit579 ] ; 2 uses
  %i.md = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.me = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.mf = sext i32 %i.md to i64
  %i.mg = getelementptr [8 x i8], ptr %i.me, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 -8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !29 ; 3 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !50 ; 2 uses
  br i1 %7, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %.thread508.thread, %.thread508
  %i.mk = phi ptr [ %i.lg, %.thread508.thread ], [ %i.mj, %.thread508 ] ; 2 uses
  %i.ml = phi ptr [ %i.lf, %.thread508.thread ], [ %i.mi, %.thread508 ]
  %.18512827 = phi i32 [ %.1.lcssa, %.thread508.thread ], [ %.18512, %.thread508 ]
  %or.cond513825 = phi i1 [ true, %.thread508.thread ], [ %or.cond513, %.thread508 ]
  %i.mm = invoke noundef i32 @_ZN13CFieldPrinter4InitEP10IInArchive(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.mk)
          to label %bb.dx unwind label %bb.dy     ; 2 uses

bb.dx:                                            ; preds = %bb.dw
  %.not365 = icmp eq i32 %i.mm, 0
  br i1 %.not365, label %bb.dz, label %.thread503

bb.dy:                                            ; preds = %bb.dw
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp565

bb.dz:                                            ; preds = %bb.dx, %.thread508
  %i.mo = phi ptr [ %i.mk, %bb.dx ], [ %i.mj, %.thread508 ] ; 5 uses
  %i.mp = phi ptr [ %i.ml, %bb.dx ], [ %i.mi, %.thread508 ] ; 2 uses
  %.18512826 = phi i32 [ %.18512827, %bb.dx ], [ %.18512, %.thread508 ] ; 2 uses
  %or.cond513824 = phi i1 [ %or.cond513825, %bb.dx ], [ %or.cond513, %.thread508 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store i64 0, ptr %i.i, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  store i64 0, ptr %i.j, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  %i.mq = load ptr, ptr %i.mo, align 8, !tbaa !31
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 56
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = invoke noundef i32 %i.ms(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, ptr noundef nonnull %i.k)
          to label %bb.ea unwind label %bb.eb     ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %.not366 = icmp eq i32 %i.mt, 0
  br i1 %.not366, label %.preheader576, label %.thread531

.preheader576:                                    ; preds = %bb.ea
  %i.mu = load i32, ptr %i.k, align 4, !tbaa !4
  %.not = icmp eq i32 %i.mu, 0
  br i1 %.not, label %.thread518, label %.lr.ph702

bb.eb:                                            ; preds = %bb.dz
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

.lr.ph702:                                        ; preds = %.preheader576, %bb.fd
  %.22701 = phi i32 [ %.25, %bb.fd ], [ %.18512826, %.preheader576 ] ; 2 uses
  %.0243700 = phi i32 [ %i.oe, %bb.fd ], [ 0, %.preheader576 ] ; 6 uses
  %.0250699 = phi ptr [ %.3253, %bb.fd ], [ null, %.preheader576 ] ; 5 uses
  %.0256698 = phi ptr [ %.3259, %bb.fd ], [ null, %.preheader576 ] ; 5 uses
  %.0262697 = phi i64 [ %.3265, %bb.fd ], [ 0, %.preheader576 ] ; 5 uses
  %.0267696 = phi i64 [ %.3270, %bb.fd ], [ 0, %.preheader576 ] ; 5 uses
  %i.mw = phi i64 [ %i.ob, %bb.fd ], [ 0, %.preheader576 ] ; 5 uses
  %i.mx = phi i64 [ %i.oa, %bb.fd ], [ 0, %.preheader576 ] ; 5 uses
  %i.my = invoke noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv()
          to label %bb.ec unwind label %bb.ed

bb.ec:                                            ; preds = %.lr.ph702
  br i1 %i.my, label %.thread531, label %bb.ee

bb.ed:                                            ; preds = %.lr.ph702
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  store i64 0, ptr %i.bc, align 8
  %i.na = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.ef unwind label %bb.eh     ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.na, ptr %24, align 8, !tbaa !22
  store i32 0, ptr %i.na, align 4, !tbaa !14
  store i32 4, ptr %i.az, align 4, !tbaa !23
  %i.nb = invoke noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80) %i.mp, i32 noundef %.0243700, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.eg unwind label %bb.ei     ; 3 uses

bb.eg:                                            ; preds = %bb.ef
  %i.nc = icmp eq i32 %i.nb, -2147024809
  %or.cond21 = and i1 %2, %i.nc
  br i1 %or.cond21, label %bb.fb, label %bb.ej

bb.eh:                                            ; preds = %bb.ee
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit444

bb.ei:                                            ; preds = %bb.ef
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ej:                                            ; preds = %bb.eg
  %.not367 = icmp eq i32 %i.nb, 0
  br i1 %.not367, label %bb.ek, label %bb.fb

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #17
  %i.nf = invoke noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef nonnull %i.mo, i32 noundef %.0243700, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %bb.el unwind label %bb.em     ; 2 uses

bb.el:                                            ; preds = %bb.ek
  %.not368 = icmp eq i32 %i.nf, 0                 ; 2 uses
  %.22.. = select i1 %.not368, i32 %.22701, i32 %i.nf
  br i1 %.not368, label %bb.en, label %bb.fa

bb.em:                                            ; preds = %bb.ek
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.en:                                            ; preds = %bb.el
  %i.nh = load i8, ptr %i.l, align 1, !tbaa !53, !range !55, !noundef !56
  %i.ni = trunc nuw i8 %i.nh to i1
  %i.nj = xor i1 %i.ni, true
  %i.nk = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(16) %24, i1 noundef zeroext %i.nj)
          to label %bb.eo unwind label %bb.ep

bb.eo:                                            ; preds = %bb.en
  br i1 %i.nk, label %bb.eq, label %bb.fa

bb.ep:                                            ; preds = %bb.eq, %bb.en
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.eq:                                            ; preds = %bb.eo
  %i.nm = invoke noundef i32 @_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(80) %i.mp, i32 noundef %.0243700, i1 noundef zeroext %7)
          to label %bb.er unwind label %bb.ep     ; 0 uses

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #17
  %i.nn = invoke noundef zeroext i1 @_Z14GetUInt64ValueP10IInArchivejjRy(ptr noundef nonnull %i.mo, i32 noundef %.0243700, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er
  br i1 %i.nn, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %bb.es
  store i64 0, ptr %i.n, align 8, !tbaa !65
  br label %bb.ev

bb.eu:                                            ; preds = %bb.ey, %bb.ev, %bb.er
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  br label %bb.fe

bb.ev:                                            ; preds = %bb.es, %bb.et
  %.1251 = phi ptr [ %.0250699, %bb.et ], [ %i.j, %bb.es ]
  %i.np = invoke noundef zeroext i1 @_Z14GetUInt64ValueP10IInArchivejjRy(ptr noundef nonnull %i.mo, i32 noundef %.0243700, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.ew unwind label %bb.eu

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.np, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i64 0, ptr %i.m, align 8, !tbaa !65
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  %.1257 = phi ptr [ %.0256698, %bb.ex ], [ %i.i, %bb.ew ]
  %i.nq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.ez unwind label %bb.eu     ; 0 uses

bb.ez:                                            ; preds = %bb.ey
  %i.nr = load i8, ptr %i.l, align 1, !tbaa !53, !range !55, !noundef !56 ; 2 uses
  %i.ns = xor i8 %i.nr, 1
  %not. = zext nneg i8 %i.ns to i64
  %.1268 = add i64 %.0267696, %not.
  %i.nt = zext nneg i8 %i.nr to i64
  %.1263 = add i64 %.0262697, %i.nt
  %i.nu = load i64, ptr %i.m, align 8, !tbaa !65
  %i.nv = add i64 %i.mw, %i.nu
  %i.nw = load i64, ptr %i.n, align 8, !tbaa !65
  %i.nx = add i64 %i.mx, %i.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #17
  br label %bb.fa

bb.fa:                                            ; preds = %bb.eo, %bb.el, %bb.ez
  %i.ny = phi i64 [ %i.nx, %bb.ez ], [ %i.mx, %bb.el ], [ %i.mx, %bb.eo ]
  %i.nz = phi i64 [ %i.nv, %bb.ez ], [ %i.mw, %bb.el ], [ %i.mw, %bb.eo ]
  %.18319 = phi i32 [ 0, %bb.ez ], [ 1, %bb.el ], [ 19, %bb.eo ]
  %.2269 = phi i64 [ %.1268, %bb.ez ], [ %.0267696, %bb.el ], [ %.0267696, %bb.eo ]
  %.2264 = phi i64 [ %.1263, %bb.ez ], [ %.0262697, %bb.el ], [ %.0262697, %bb.eo ]
  %.2258 = phi ptr [ %.1257, %bb.ez ], [ %.0256698, %bb.el ], [ %.0256698, %bb.eo ]
  %.2252 = phi ptr [ %.1251, %bb.ez ], [ %.0250699, %bb.el ], [ %.0250699, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %bb.fb

bb.fb:                                            ; preds = %bb.eg, %bb.ej, %bb.fa
  %i.oa = phi i64 [ %i.mx, %bb.ej ], [ %i.ny, %bb.fa ], [ %i.mx, %bb.eg ] ; 3 uses
  %i.ob = phi i64 [ %i.mw, %bb.ej ], [ %i.nz, %bb.fa ], [ %i.mw, %bb.eg ] ; 3 uses
  %.19320 = phi i32 [ 1, %bb.ej ], [ %.18319, %bb.fa ], [ 17, %bb.eg ] ; 2 uses
  %.3270 = phi i64 [ %.0267696, %bb.ej ], [ %.2269, %bb.fa ], [ %.0267696, %bb.eg ] ; 3 uses
  %.3265 = phi i64 [ %.0262697, %bb.ej ], [ %.2264, %bb.fa ], [ %.0262697, %bb.eg ] ; 3 uses
  %.3259 = phi ptr [ %.0256698, %bb.ej ], [ %.2258, %bb.fa ], [ %.0256698, %bb.eg ] ; 3 uses
  %.3253 = phi ptr [ %.0250699, %bb.ej ], [ %.2252, %bb.fa ], [ %.0250699, %bb.eg ] ; 3 uses
  %.25 = phi i32 [ %i.nb, %bb.ej ], [ %.22.., %bb.fa ], [ %.22701, %bb.eg ] ; 4 uses
  %i.oc = load ptr, ptr %24, align 8, !tbaa !22   ; 2 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %_ZN11CStringBaseIwED2Ev.exit443, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @_ZdaPv(ptr noundef nonnull %i.oc) #16
  br label %_ZN11CStringBaseIwED2Ev.exit443

_ZN11CStringBaseIwED2Ev.exit443:                  ; preds = %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  switch i32 %.19320, label %.thread531 [
    i32 0, label %bb.fd
    i32 19, label %bb.fd
    i32 17, label %.thread518
  ]

bb.fd:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit443, %_ZN11CStringBaseIwED2Ev.exit443
  %i.oe = add nuw i32 %.0243700, 1                ; 2 uses
  %i.of = load i32, ptr %i.k, align 4, !tbaa !4
  %i.og = icmp ult i32 %i.oe, %i.of
  br i1 %i.og, label %.lr.ph702, label %.thread518, !llvm.loop !100

bb.fe:                                            ; preds = %bb.eu, %bb.ep, %bb.em
  %.pn369 = phi { ptr, i32 } [ %i.no, %bb.eu ], [ %i.nl, %bb.ep ], [ %i.ng, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.ei
  %.pn369.pn = phi { ptr, i32 } [ %.pn369, %bb.fe ], [ %i.ne, %bb.ei ] ; 2 uses
  %i.oh = load ptr, ptr %24, align 8, !tbaa !22   ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %_ZN11CStringBaseIwED2Ev.exit444, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZdaPv(ptr noundef nonnull %i.oh) #16
  br label %_ZN11CStringBaseIwED2Ev.exit444

_ZN11CStringBaseIwED2Ev.exit444:                  ; preds = %bb.fg, %bb.ff, %bb.eh
  %.pn369.pn.pn = phi { ptr, i32 } [ %i.nd, %bb.eh ], [ %.pn369.pn, %bb.ff ], [ %.pn369.pn, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %.loopexit.split-lp558

.thread518:                                       ; preds = %bb.fd, %_ZN11CStringBaseIwED2Ev.exit443, %.preheader576
  %i.oj = phi i64 [ 0, %.preheader576 ], [ %i.oa, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %i.oa, %bb.fd ] ; 2 uses
  %i.ok = phi i64 [ 0, %.preheader576 ], [ %i.ob, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %i.ob, %bb.fd ] ; 2 uses
  %.26530 = phi i32 [ %.18512826, %.preheader576 ], [ %.25, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.25, %bb.fd ]
  %.4254529 = phi ptr [ null, %.preheader576 ], [ %.3253, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.3253, %bb.fd ] ; 2 uses
  %.4260528 = phi ptr [ null, %.preheader576 ], [ %.3259, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.3259, %bb.fd ] ; 2 uses
  %.4266527 = phi i64 [ 0, %.preheader576 ], [ %.3265, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.3265, %bb.fd ] ; 2 uses
  %.4271526 = phi i64 [ 0, %.preheader576 ], [ %.3270, %_ZN11CStringBaseIwED2Ev.exit443 ], [ %.3270, %bb.fd ] ; 4 uses
  store i64 %i.ok, ptr %i.i, align 8
  store i64 %i.oj, ptr %i.j, align 8
  %i.ol = icmp ne ptr %.4260528, null
  %or.cond24.not = select i1 %2, i1 true, i1 %i.ol
  br i1 %or.cond24.not, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.thread518
  %i.om = load i32, ptr %i.am, align 4, !tbaa !28
  %.not375 = icmp eq i32 %i.om, 0
  %i.on = load i64, ptr %i.ad, align 8
  %i.oo = select i1 %.not375, i64 0, i64 %i.on
  %.2329 = add i64 %i.oo, %.1328
  %i.op = icmp eq i64 %.4271526, 0
  %i.oq = select i1 %i.op, i64 0, i64 %.2329      ; 2 uses
  store i64 %i.oq, ptr %i.i, align 8, !tbaa !65
  br label %bb.fi

.loopexit557:                                     ; preds = %.lr.ph.i450
  %lpad.loopexit559 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

.loopexit.split-lp558.loopexit:                   ; preds = %.lr.ph.i.i452
  %lpad.loopexit561 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

.loopexit.split-lp558.loopexit.split-lp:          ; preds = %bb.fn, %bb.fm, %_ZN13CFieldPrinter15PrintTitleLinesEv.exit457
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp558

bb.fi:                                            ; preds = %bb.fh, %.thread518
  %i.or = phi i64 [ %i.oq, %bb.fh ], [ %i.ok, %.thread518 ]
  %.5261 = phi ptr [ %i.i, %bb.fh ], [ %.4260528, %.thread518 ] ; 2 uses
  %i.os = icmp eq ptr %.4254529, null
  %i.ot = icmp eq i64 %.4271526, 0
  %or.cond26 = select i1 %i.os, i1 %i.ot, i1 false
  br i1 %or.cond26, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  store i64 0, ptr %i.j, align 8, !tbaa !65
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ou = phi i64 [ 0, %bb.fj ], [ %i.oj, %bb.fi ]
  %.5255 = phi ptr [ %i.j, %bb.fj ], [ %.4254529, %bb.fi ] ; 2 uses
  br i1 %or.cond513824, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ov = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.ow = icmp sgt i32 %i.ov, 0
  br i1 %i.ow, label %.lr.ph11.i445, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit457

.lr.ph11.i445:                                    ; preds = %bb.fl, %._crit_edge.i448
  %indvars.iv.i446 = phi i64 [ %indvars.iv.next.i449, %._crit_edge.i448 ], [ 0, %bb.fl ] ; 2 uses
  %i.ox = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv.i446
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !29 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !38 ; 2 uses
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %.lr.ph.i.i452, label %_ZL11PrintSpacesi.exit.i447

.lr.ph.i.i452:                                    ; preds = %.lr.ph11.i445, %.noexc455
  %.03.i.i453 = phi i32 [ %i.pe, %.noexc455 ], [ 0, %.lr.ph11.i445 ]
  %i.pd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc455 unwind label %.loopexit.split-lp558.loopexit ; 0 uses

.noexc455:                                        ; preds = %.lr.ph.i.i452
  %i.pe = add nuw nsw i32 %.03.i.i453, 1          ; 2 uses
  %exitcond.not.i.i454 = icmp eq i32 %i.pe, %i.pb
  br i1 %exitcond.not.i.i454, label %_ZL11PrintSpacesi.exit.i447, label %.lr.ph.i.i452, !llvm.loop !39

_ZL11PrintSpacesi.exit.i447:                      ; preds = %.noexc455, %.lr.ph11.i445
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 36 ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !42
  %i.ph = icmp sgt i32 %i.pg, 0
  br i1 %i.ph, label %.lr.ph.i450, label %._crit_edge.i448

._crit_edge.i448:                                 ; preds = %.noexc456, %_ZL11PrintSpacesi.exit.i447
  %indvars.iv.next.i449 = add nuw nsw i64 %indvars.iv.i446, 1 ; 2 uses
  %i.pi = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.pj = sext i32 %i.pi to i64
  %i.pk = icmp slt i64 %indvars.iv.next.i449, %i.pj
  br i1 %i.pk, label %.lr.ph11.i445, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit457, !llvm.loop !43

.lr.ph.i450:                                      ; preds = %_ZL11PrintSpacesi.exit.i447, %.noexc456
  %.08.i451 = phi i32 [ %i.pm, %.noexc456 ], [ 0, %_ZL11PrintSpacesi.exit.i447 ]
  %i.pl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 45)
          to label %.noexc456 unwind label %.loopexit557 ; 0 uses

.noexc456:                                        ; preds = %.lr.ph.i450
  %i.pm = add nuw nsw i32 %.08.i451, 1            ; 2 uses
  %i.pn = load i32, ptr %i.pf, align 4, !tbaa !42
  %i.po = icmp slt i32 %i.pm, %i.pn
  br i1 %i.po, label %.lr.ph.i450, label %._crit_edge.i448, !llvm.loop !44

_ZN13CFieldPrinter15PrintTitleLinesEv.exit457:    ; preds = %._crit_edge.i448, %bb.fl
  %i.pp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.fm unwind label %.loopexit.split-lp558.loopexit.split-lp ; 0 uses

bb.fm:                                            ; preds = %_ZN13CFieldPrinter15PrintTitleLinesEv.exit457
  %i.pq = invoke noundef i32 @_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %.4271526, i64 noundef %.4266527, ptr noundef %.5255, ptr noundef %.5261)
          to label %bb.fn unwind label %.loopexit.split-lp558.loopexit.split-lp ; 0 uses

bb.fn:                                            ; preds = %bb.fm
  %i.pr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.fo unwind label %.loopexit.split-lp558.loopexit.split-lp ; 0 uses

bb.fo:                                            ; preds = %bb.fn, %bb.fk
  %.not379 = icmp eq ptr %.5261, null
  br i1 %.not379, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ps = load i64, ptr %i.a, align 8, !tbaa !65
  %i.pt = add i64 %i.ps, %i.or
  store i64 %i.pt, ptr %i.a, align 8, !tbaa !65
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.1279 = phi ptr [ %i.a, %bb.fp ], [ %.0278723, %bb.fo ]
  %.not380 = icmp eq ptr %.5255, null
  br i1 %.not380, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.pu = load i64, ptr %i.b, align 8, !tbaa !65
  %i.pv = add i64 %i.pu, %i.ou
  store i64 %i.pv, ptr %i.b, align 8, !tbaa !65
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.1286 = phi ptr [ %i.b, %bb.fr ], [ %.0285722, %bb.fq ]
  %i.pw = add i64 %.4271526, %.0244725
  %i.px = add i64 %.4266527, %.0272724
  br label %.thread531

.thread531:                                       ; preds = %_ZN11CStringBaseIwED2Ev.exit443, %bb.ec, %bb.ea, %bb.fs
  %.21322 = phi i32 [ 0, %bb.fs ], [ 1, %bb.ea ], [ 1, %bb.ec ], [ %.19320, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.2287 = phi ptr [ %.1286, %bb.fs ], [ %.0285722, %bb.ea ], [ %.0285722, %bb.ec ], [ %.0285722, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.2280 = phi ptr [ %.1279, %bb.fs ], [ %.0278723, %bb.ea ], [ %.0278723, %bb.ec ], [ %.0278723, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.1273 = phi i64 [ %i.px, %bb.fs ], [ %.0272724, %bb.ea ], [ %.0272724, %bb.ec ], [ %.0272724, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.1245 = phi i64 [ %i.pw, %bb.fs ], [ %.0244725, %bb.ea ], [ %.0244725, %bb.ec ], [ %.0244725, %_ZN11CStringBaseIwED2Ev.exit443 ]
  %.27 = phi i32 [ %.26530, %bb.fs ], [ %i.mt, %bb.ea ], [ -2147467260, %bb.ec ], [ %.25, %_ZN11CStringBaseIwED2Ev.exit443 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  br label %.thread503

.thread503:                                       ; preds = %.thread483, %.thread497, %.thread531, %bb.dx, %bb.aa, %bb.at
  %.23324 = phi i32 [ 1, %bb.dx ], [ 4, %bb.at ], [ 1, %bb.aa ], [ %.21322, %.thread531 ], [ 1, %.thread497 ], [ 1, %.thread483 ]
  %.4296 = phi i32 [ %.3295, %bb.dx ], [ %.0292721, %bb.at ], [ %.0292721, %bb.aa ], [ %.3295, %.thread531 ], [ %.3295, %.thread497 ], [ %.3295, %.thread483 ]
  %.4289 = phi ptr [ %.0285722, %bb.dx ], [ %.0285722, %bb.at ], [ %.0285722, %bb.aa ], [ %.2287, %.thread531 ], [ %.0285722, %.thread497 ], [ %.0285722, %.thread483 ]
  %.4282 = phi ptr [ %.0278723, %bb.dx ], [ %.0278723, %bb.at ], [ %.0278723, %bb.aa ], [ %.2280, %.thread531 ], [ %.0278723, %.thread497 ], [ %.0278723, %.thread483 ]
  %.3275 = phi i64 [ %.0272724, %bb.dx ], [ %.0272724, %bb.at ], [ %.0272724, %bb.aa ], [ %.1273, %.thread531 ], [ %.0272724, %.thread497 ], [ %.0272724, %.thread483 ]
  %.3247 = phi i64 [ %.0244725, %bb.dx ], [ %.0244725, %bb.at ], [ %.0244725, %bb.aa ], [ %.1245, %.thread531 ], [ %.0244725, %.thread497 ], [ %.0244725, %.thread483 ]
  %.29 = phi i32 [ %i.mm, %bb.dx ], [ %.0726, %bb.at ], [ %28, %bb.aa ], [ %.27, %.thread531 ], [ %.11, %.thread497 ], [ %.5, %.thread483 ]
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20COpenCallbackConsole, i64 16), ptr %14, align 8, !tbaa !31
  %i.py = load ptr, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %_ZN20COpenCallbackConsoleD2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %.thread503
  call void @_ZdaPv(ptr noundef nonnull %i.py) #16
  br label %_ZN20COpenCallbackConsoleD2Ev.exit

_ZN20COpenCallbackConsoleD2Ev.exit:               ; preds = %.thread503, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN12CArchiveLinkD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.fu

bb.fu:                                            ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395, %_ZN20COpenCallbackConsoleD2Ev.exit
  %.24325 = phi i32 [ %.23324, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0301, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ]
  %.5297 = phi i32 [ %.4296, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0292721, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 4 uses
  %.5290 = phi ptr [ %.4289, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0285722, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  %.5283 = phi ptr [ %.4282, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0278723, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  %.4276 = phi i64 [ %.3275, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0272724, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  %.4248 = phi i64 [ %.3247, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0244725, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  %.30 = phi i32 [ %.29, %_ZN20COpenCallbackConsoleD2Ev.exit ], [ %.0726, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit395 ] ; 2 uses
  switch i32 %.24325, label %.loopexit580 [
    i32 0, label %bb.fv
    i32 4, label %bb.fv
    i32 2, label %.thread539
  ]

bb.fv:                                            ; preds = %bb.fu, %bb.fu
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %i.qa = sext i32 %.5297 to i64
  %i.qb = icmp slt i64 %indvars.iv.next782, %i.qa
  br i1 %i.qb, label %bb.e, label %.thread539, !llvm.loop !101

.loopexit.split-lp558:                            ; preds = %.loopexit557, %.loopexit.split-lp558.loopexit.split-lp, %.loopexit.split-lp558.loopexit, %bb.ed, %_ZN11CStringBaseIwED2Ev.exit444, %bb.eb
  %.pn376 = phi { ptr, i32 } [ %i.mz, %bb.ed ], [ %i.mv, %bb.eb ], [ %.pn369.pn.pn, %_ZN11CStringBaseIwED2Ev.exit444 ], [ %lpad.loopexit559, %.loopexit557 ], [ %lpad.loopexit561, %.loopexit.split-lp558.loopexit ], [ %lpad.loopexit.split-lp562, %.loopexit.split-lp558.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  br label %.loopexit.split-lp565

.loopexit.split-lp565:                            ; preds = %.loopexit572, %.loopexit.split-lp573, %.loopexit564, %.loopexit.split-lp565.loopexit.split-lp, %.loopexit.split-lp565.loopexit, %.body, %bb.dq, %bb.bg, %.loopexit.split-lp558, %bb.dy, %bb.ac
  %.pn383.pn = phi { ptr, i32 } [ %i.cq, %bb.ac ], [ %i.mn, %bb.dy ], [ %.pn381, %.body ], [ %i.gj, %bb.bg ], [ %lpad.loopexit.split-lp569, %.loopexit.split-lp565.loopexit.split-lp ], [ %.pn356.pn.pn.pn.pn.pn, %bb.dq ], [ %.pn376, %.loopexit.split-lp558 ], [ %lpad.loopexit566, %.loopexit564 ], [ %lpad.loopexit568, %.loopexit.split-lp565.loopexit ], [ %lpad.loopexit574, %.loopexit572 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp573 ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV20COpenCallbackConsole, i64 16), ptr %14, align 8, !tbaa !31
  %i.qc = load ptr, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %_ZN20COpenCallbackConsoleD2Ev.exit460, label %bb.fw

bb.fw:                                            ; preds = %.loopexit.split-lp565
  call void @_ZdaPv(ptr noundef nonnull %i.qc) #16
  br label %_ZN20COpenCallbackConsoleD2Ev.exit460

_ZN20COpenCallbackConsoleD2Ev.exit460:            ; preds = %bb.fw, %.loopexit.split-lp565, %bb.ab
  %.pn383.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.ab ], [ %.pn383.pn, %.loopexit.split-lp565 ], [ %.pn383.pn, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN12CArchiveLinkD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %.loopexit.split-lp

.thread539:                                       ; preds = %bb.fv, %bb.fu
  %.not389 = xor i1 %7, true
  %or.cond32.not = and i1 %6, %.not389
  %i.qe = icmp sgt i32 %.5297, 1
  %or.cond34 = select i1 %or.cond32.not, i1 %i.qe, i1 false
  br i1 %or.cond34, label %bb.fx, label %.loopexit580

bb.fx:                                            ; preds = %.thread539
  %i.qf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.fy unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.fy:                                            ; preds = %bb.fx
  %i.qg = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !28
  %i.qi = icmp sgt i32 %i.qh, 0
  br i1 %i.qi, label %.lr.ph11.i461, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit473

.lr.ph11.i461:                                    ; preds = %bb.fy
  %i.qj = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.fz

bb.fz:                                            ; preds = %._crit_edge.i464, %.lr.ph11.i461
  %indvars.iv.i462 = phi i64 [ 0, %.lr.ph11.i461 ], [ %indvars.iv.next.i465, %._crit_edge.i464 ] ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !25
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv.i462
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !29 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !38 ; 2 uses
  %i.qp = icmp sgt i32 %i.qo, 0
  br i1 %i.qp, label %.lr.ph.i.i468, label %_ZL11PrintSpacesi.exit.i463

.lr.ph.i.i468:                                    ; preds = %bb.fz, %.noexc471
  %.03.i.i469 = phi i32 [ %i.qr, %.noexc471 ], [ 0, %bb.fz ]
  %i.qq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc471 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc471:                                        ; preds = %.lr.ph.i.i468
  %i.qr = add nuw nsw i32 %.03.i.i469, 1          ; 2 uses
  %exitcond.not.i.i470 = icmp eq i32 %i.qr, %i.qo
  br i1 %exitcond.not.i.i470, label %_ZL11PrintSpacesi.exit.i463, label %.lr.ph.i.i468, !llvm.loop !39

_ZL11PrintSpacesi.exit.i463:                      ; preds = %.noexc471, %bb.fz
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 36 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !42
  %i.qu = icmp sgt i32 %i.qt, 0
  br i1 %i.qu, label %.lr.ph.i466, label %._crit_edge.i464

._crit_edge.i464:                                 ; preds = %.noexc472, %_ZL11PrintSpacesi.exit.i463
  %indvars.iv.next.i465 = add nuw nsw i64 %indvars.iv.i462, 1 ; 2 uses
  %i.qv = load i32, ptr %i.qg, align 4, !tbaa !28
  %i.qw = sext i32 %i.qv to i64
  %i.qx = icmp slt i64 %indvars.iv.next.i465, %i.qw
  br i1 %i.qx, label %bb.fz, label %_ZN13CFieldPrinter15PrintTitleLinesEv.exit473, !llvm.loop !43

.lr.ph.i466:                                      ; preds = %_ZL11PrintSpacesi.exit.i463, %.noexc472
  %.08.i467 = phi i32 [ %i.qz, %.noexc472 ], [ 0, %_ZL11PrintSpacesi.exit.i463 ]
  %i.qy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 45)
          to label %.noexc472 unwind label %.loopexit ; 0 uses

.noexc472:                                        ; preds = %.lr.ph.i466
  %i.qz = add nuw nsw i32 %.08.i467, 1            ; 2 uses
  %i.ra = load i32, ptr %i.qs, align 4, !tbaa !42
  %i.rb = icmp slt i32 %i.qz, %i.ra
  br i1 %i.rb, label %.lr.ph.i466, label %._crit_edge.i464, !llvm.loop !44

_ZN13CFieldPrinter15PrintTitleLinesEv.exit473:    ; preds = %._crit_edge.i464, %bb.fy
  %i.rc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.ga unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ga:                                            ; preds = %_ZN13CFieldPrinter15PrintTitleLinesEv.exit473
  %i.rd = invoke noundef i32 @_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %.4248, i64 noundef %.4276, ptr noundef %.5290, ptr noundef %.5283)
          to label %bb.gb unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gb:                                            ; preds = %bb.ga
  %i.re = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %bb.gc unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.gc:                                            ; preds = %bb.gb
  %i.rf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @.str.17)
          to label %bb.gd unwind label %.loopexit.split-lp.loopexit.split-lp

bb.gd:                                            ; preds = %bb.gc
  %i.rg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEi(ptr noundef nonnull align 8 dereferenceable(16) %i.rf, i32 noundef %.5297)
          to label %bb.ge unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ge:                                            ; preds = %bb.gd
  %i.rh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.rg, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %.loopexit580 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit580:                                     ; preds = %bb.fu, %bb.d, %.thread539, %bb.ge
  %.32 = phi i32 [ 0, %.thread539 ], [ 0, %bb.ge ], [ 0, %bb.d ], [ %.30, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI10CFieldInfoE, i64 16), ptr %11, align 8, !tbaa !31
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN13CFieldPrinterD2Ev.exit unwind label %bb.gf, !inline_history !102

bb.gf:                                            ; preds = %.loopexit580
  %i.ri = landingpad { ptr, i32 }
          catch ptr null
  %i.rj = extractvalue { ptr, i32 } %i.ri, 0
  call void @__clang_call_terminate(ptr %i.rj) #18, !inline_history !102
  unreachable

_ZN13CFieldPrinterD2Ev.exit:                      ; preds = %.loopexit580
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17, !inline_history !102
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  ret i32 %.32

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit, %_ZN20COpenCallbackConsoleD2Ev.exit460
  %.pn390 = phi { ptr, i32 } [ %.pn, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit ], [ %.pn383.pn.pn, %_ZN20COpenCallbackConsoleD2Ev.exit460 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit554, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp555, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.gg

bb.gg:                                            ; preds = %.loopexit.split-lp, %bb.c
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
end_hunk_1
