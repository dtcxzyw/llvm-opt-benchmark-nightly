inline.NumInlined: 236
inline.NumDeleted: 62
begin_hunk_0_@_ZN11CStringBaseIcEaSERKS0_:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !tbaa !25
  %wide.load14 = load <16 x i8>, ptr %i.q, align 1, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <16 x i8> %wide.load, ptr %i.r, align 1, !tbaa !25
  store <16 x i8> %wide.load14, ptr %i.s, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.u, align 1, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %index17
  store <4 x i8> %wide.load18, ptr %i.v, align 1, !tbaa !25
  %index.next19 = add nuw i64 %index17, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next19, %n.vec16
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec16, %wide.trip.count.i
  br i1 %cmp.n20, label %._crit_edge.thread.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.i.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i.prol
  store i8 %i.y, ptr %i.z, align 1, !tbaa !25
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !132

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge.thread.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.ac = icmp eq ptr %.pre.i, null
  br i1 %i.ac, label %bb.d, label %._crit_edge.thread.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.next.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !25
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.next.i.1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !25
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.next.i.2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.2
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !25
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.thread.i, label %vec.epilog.scalar.ph, !llvm.loop !133

._crit_edge.thread.i:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #21
  %.pre = load i32, ptr %i.b, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.c
  %i.ap = phi i32 [ %.pre, %._crit_edge.thread.i ], [ %.pre7, %._crit_edge.i ], [ %.pre7, %bb.c ]
  store ptr %i.k, ptr %0, align 8, !tbaa !24
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.k, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !25
  store i32 %i.f, ptr %i.g, align 4, !tbaa !26
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit

_ZN11CStringBaseIcE11SetCapacityEi.exit:          ; preds = %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge, %bb.d
  %i.as = phi ptr [ %.pre8, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge ], [ %i.k, %bb.d ]
  %i.at = load ptr, ptr %1, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIcE11SetCapacityEi.exit
  %.04.i = phi ptr [ %i.at, %_ZN11CStringBaseIcE11SetCapacityEi.exit ], [ %i.au, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.as, %_ZN11CStringBaseIcE11SetCapacityEi.exit ], [ %i.aw, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  %i.av = load i8, ptr %.04.i, align 1, !tbaa !25 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.av, ptr %.0.i, align 1, !tbaa !25
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !78

_Z12MyStringCopyIcEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !76
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z12MyStringCopyIcEPT_S1_PKS0_.exit
  ret ptr %0
}

declare noundef zeroext i1 @_Z20ConvertUnicodeToUTF8RK11CStringBaseIwERS_IcE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef i32 @_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip22CCompressionMethodModeD2Ev(ptr noundef nonnull align 8 dead_on_return(106) dereferenceable(106) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #21
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #21
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.c
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE, i64 16), ptr %0, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #20
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn8_N8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN8NArchive4NZip8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi(ptr noundef nonnull align 8 dereferenceable(256) initializes((208, 251), (252, 256)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase.3, align 8       ; 33 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %5 = alloca %class.CStringBase.3, align 8       ; 10 uses
  %6 = alloca %class.CStringBase.3, align 8       ; 7 uses
  %7 = alloca %class.CStringBase.3, align 8       ; 17 uses
  %8 = alloca %class.CStringBase.3, align 8       ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %9 = alloca %class.CStringBase.3, align 8       ; 10 uses
  %10 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %11 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %12 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %13 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %14 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %15 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %16 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %17 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %18 = alloca %class.CStringBase.3, align 8      ; 10 uses
  %19 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %20 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %21 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %22 = alloca %class.CStringBase.3, align 8      ; 7 uses
  %i.i = tail call noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv() ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.k, i8 -1, i64 36, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 245
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 246
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 247
  store <4 x i8> <i8 0, i8 0, i8 0, i8 3>, ptr %i.l, align 4, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store i8 0, ptr %i.p, align 8, !tbaa !134
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 4 uses
  store i8 0, ptr %i.q, align 1, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 250 ; 4 uses
  store i8 0, ptr %i.r, align 2, !tbaa !135
  %i.s = tail call noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv()
  store i32 %i.s, ptr %i.j, align 4, !tbaa !121
  %.not232540 = icmp sgt i32 %3, 0
  br i1 %.not232540, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.gk
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.gk ] ; 3 uses
  %.0542 = phi i32 [ undef, %.lr.ph ], [ %.17.jt4, %bb.gk ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %wcslen.i.i = call i64 @wcslen(ptr %i.au)
  %i.av = trunc i64 %wcslen.i.i to i32            ; 3 uses
  %i.aw = add nsw i32 %i.av, 1                    ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = icmp slt i32 %i.av, -1
  %i.ba = shl nuw nsw i64 %i.ay, 2
  %i.bb = select i1 %i.az, i64 -1, i64 %i.ba
  %i.bc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #19 ; 3 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !41
  store i32 0, ptr %i.bc, align 4, !tbaa !44
  store i32 %i.aw, ptr %i.t, align 4, !tbaa !46
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.b
  %i.bd = phi ptr [ null, %bb.b ], [ %i.bc, %bb.c ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.au, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.be, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.bg, %bb.d ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.bf = load i32, ptr %.04.i.i, align 4, !tbaa !44 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.bf, ptr %.0.i.i, align 4, !tbaa !44
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.d, !llvm.loop !52

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.d
  store i32 %i.av, ptr %i.u, align 8, !tbaa !51
  %i.bh = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %i.bd)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit unwind label %bb.e ; 0 uses

_ZN11CStringBaseIwE9MakeUpperEv.exit:             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.bi = load i32, ptr %i.u, align 8, !tbaa !51  ; 8 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.gi, label %bb.f

bb.e:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.f:                                             ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 17 uses
  %i.bm = load ptr, ptr %4, align 8, !tbaa !41    ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !44
  %i.bo = icmp eq i32 %i.bn, 88
  br i1 %i.bo, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 9, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bp = add i32 %i.bi, -1                       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.bq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc395 unwind label %bb.l  ; 5 uses

.noexc395:                                        ; preds = %bb.g
  store ptr %i.bq, ptr %5, align 8, !tbaa !41, !alias.scope !137
  store i32 0, ptr %i.bq, align 4, !tbaa !44, !noalias !137
  store i32 4, ptr %i.ar, align 4, !tbaa !46, !alias.scope !137
  %i.br = icmp eq i32 %i.bi, 4
  br i1 %i.br, label %.lr.ph.i, label %bb.h

bb.h:                                             ; preds = %.noexc395
  %i.bs = zext nneg i32 %i.bi to i64
  %i.bt = icmp slt i32 %i.bi, 0
  %i.bu = shl nuw nsw i64 %i.bs, 2
  %i.bv = select i1 %i.bt, i64 -1, i64 %i.bu
  %i.bw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i393 unwind label %_ZN11CStringBaseIwED2Ev.exit.i, !noalias !137 ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i393:     ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #21, !noalias !137
  store ptr %i.bw, ptr %5, align 8, !tbaa !41, !alias.scope !137
  store i32 0, ptr %i.bw, align 4, !tbaa !44, !noalias !137
  store i32 %i.bi, ptr %i.ar, align 4, !tbaa !46, !alias.scope !137
  %i.bx = icmp sgt i32 %i.bi, 1
  br i1 %i.bx, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i393..lr.ph.i_crit_edge, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i393..lr.ph.i_crit_edge: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i393
  %.pre577 = load ptr, ptr %4, align 8, !tbaa !41, !noalias !137
  br label %.lr.ph.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i393
  %.pre.i394 = sext i32 %i.bp to i64
  br label %.loopexit

.lr.ph.i:                                         ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i393..lr.ph.i_crit_edge, %.noexc395
  %i.by = phi ptr [ %.pre577, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i393..lr.ph.i_crit_edge ], [ %i.bm, %.noexc395 ] ; 2 uses
  %i.bz = phi ptr [ %i.bw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i393..lr.ph.i_crit_edge ], [ %i.bq, %.noexc395 ] ; 10 uses
  %i.ca = zext i32 %i.bp to i64                   ; 8 uses
  %invariant.gep.i = getelementptr i8, ptr %i.by, i64 4 ; 6 uses
  %min.iters.check = icmp ult i32 %i.bi, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.cb = ptrtoaddr ptr %i.by to i64
  %i.cc = ptrtoaddr ptr %i.bz to i64
  %i.cd = add i64 %i.cc, -4
  %i.ce = sub i64 %i.cd, %i.cb
  %diff.check = icmp ult i64 %i.ce, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ca, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cf = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  %wide.load = load <4 x i32>, ptr %i.cf, align 4, !tbaa !44, !noalias !137
  %wide.load672 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !44, !noalias !137
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x i32> %wide.load, ptr %i.ch, align 4, !tbaa !44, !noalias !137
  store <4 x i32> %wide.load672, ptr %i.ci, align 4, !tbaa !44, !noalias !137
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ca
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter812 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod813.not = icmp eq i64 %xtraiter812, 0
  br i1 %lcmp.mod813.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter814 = phi i64 [ %prol.iter814.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.ck = load i32, ptr %gep.i.prol, align 4, !tbaa !44, !noalias !137
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i.prol
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !44, !noalias !137
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter814.next = add i64 %prol.iter814, 1   ; 2 uses
  %prol.iter814.cmp.not = icmp eq i64 %prol.iter814.next, %xtraiter812
  br i1 %prol.iter814.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !141

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.cm = sub nsw i64 %indvars.iv.i.ph, %i.ca
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %.loopexit, label %scalar.ph

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.h
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #21, !noalias !137
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cp = load i32, ptr %gep.i, align 4, !tbaa !44, !noalias !137
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !44, !noalias !137
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.cr = load i32, ptr %gep.i.1, align 4, !tbaa !44, !noalias !137
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !44, !noalias !137
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.ct = load i32, ptr %gep.i.2, align 4, !tbaa !44, !noalias !137
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.i.1
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !44, !noalias !137
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.cv = load i32, ptr %gep.i.3, align 4, !tbaa !44, !noalias !137
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.i.2
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !44, !noalias !137
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond572.not.3 = icmp eq i64 %indvars.iv.next.i.3, %i.ca
  br i1 %exitcond572.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !142

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i
  %i.cx = phi ptr [ %i.bw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i ], [ %i.bz, %middle.block ], [ %i.bz, %scalar.ph ], [ %i.bz, %scalar.ph.prol.loopexit ]
  %.pre-phi.i = phi i64 [ %.pre.i394, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i ], [ %i.ca, %middle.block ], [ %i.ca, %scalar.ph ], [ %i.ca, %scalar.ph.prol.loopexit ]
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %.pre-phi.i
  store i32 0, ptr %i.cy, align 4, !tbaa !44, !noalias !137
  store i32 %i.bp, ptr %i.as, align 8, !tbaa !51, !alias.scope !137
  %i.cz = invoke noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.m       ; 2 uses

bb.i:                                             ; preds = %.loopexit
  %i.da = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.da) #21
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not231 = icmp eq i32 %i.cz, 0
  br i1 %.not231, label %bb.p, label %bb.o

bb.k:                                             ; preds = %bb.gb, %bb.fv, %bb.fr, %bb.q
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.l:                                             ; preds = %bb.g
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %.loopexit
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.df) #21
  br label %.body

.body:                                            ; preds = %bb.n, %bb.m, %bb.l, %_ZN11CStringBaseIwED2Ev.exit.i
  %.pn227 = phi { ptr, i32 } [ %i.co, %_ZN11CStringBaseIwED2Ev.exit.i ], [ %i.dd, %bb.l ], [ %i.de, %bb.m ], [ %i.de, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.o:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.gi

bb.p:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %23 = load i32, ptr %i.a, align 4, !tbaa !4
  store i32 %23, ptr %i.k, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.critedge252

bb.q:                                             ; preds = %bb.f
  %i.dh = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef nonnull %i.bm, ptr noundef nonnull @.str)
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.s, label %bb.ao

bb.s:                                             ; preds = %bb.r
  %i.dj = load i16, ptr %i.bl, align 8, !tbaa !47
  switch i16 %i.dj, label %bb.gi [
    i16 8, label %bb.t
    i16 19, label %bb.am
  ]

bb.t:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !25 ; 2 uses
  %wcslen.i.i257 = call i64 @wcslen(ptr %i.dl)
  %i.dm = trunc i64 %wcslen.i.i257 to i32         ; 2 uses
  %i.dn = add nsw i32 %i.dm, 1                    ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i258, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = zext nneg i32 %i.dn to i64
  %i.dq = icmp slt i32 %i.dm, -1
  %i.dr = shl nuw nsw i64 %i.dp, 2
  %i.ds = select i1 %i.dq, i64 -1, i64 %i.dr
  %i.dt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ds) #19
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %bb.u
  store i32 0, ptr %i.dt, align 4, !tbaa !44
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i258

_ZN11CStringBaseIwE11SetCapacityEi.exit.i258:     ; preds = %.noexc, %bb.t
  %.sroa.0508.0 = phi ptr [ null, %bb.t ], [ %i.dt, %.noexc ] ; 12 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i258
  %.04.i.i259 = phi ptr [ %i.dl, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i258 ], [ %i.du, %bb.v ] ; 2 uses
  %.0.i.i260 = phi ptr [ %.sroa.0508.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i258 ], [ %i.dw, %bb.v ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.04.i.i259, i64 4
  %i.dv = load i32, ptr %.04.i.i259, align 4, !tbaa !44 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i260, i64 4
  store i32 %i.dv, ptr %.0.i.i260, align 4, !tbaa !44
  %.not.i.i261 = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i261, label %_ZN11CStringBaseIwEC2EPKw.exit262, label %bb.v, !llvm.loop !52

_ZN11CStringBaseIwEC2EPKw.exit262:                ; preds = %bb.v
  %i.dx = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %.sroa.0508.0)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit264 unwind label %bb.y ; 0 uses

_ZN11CStringBaseIwE9MakeUpperEv.exit264:          ; preds = %_ZN11CStringBaseIwEC2EPKw.exit262
  %i.dy = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0508.0, ptr noundef nonnull @.str.1)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit264
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %.sink.split, label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.y:                                             ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %_ZN11CStringBaseIwE9MakeUpperEv.exit264, %_ZN11CStringBaseIwEC2EPKw.exit262
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = icmp eq ptr %.sroa.0508.0, null
  br i1 %i.ec, label %_ZN11CStringBaseIwED2Ev.exit267, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0508.0) #21
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.aa:                                            ; preds = %bb.w
  %i.ed = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0508.0, ptr noundef nonnull @.str.2)
          to label %bb.ab unwind label %bb.y

bb.ab:                                            ; preds = %bb.aa
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0508.0, ptr noundef nonnull @.str.3)
          to label %bb.ad unwind label %bb.y

bb.ad:                                            ; preds = %bb.ac
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0508.0, ptr noundef nonnull @.str.4)
          to label %bb.af unwind label %bb.y

bb.af:                                            ; preds = %bb.ae
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0508.0, ptr noundef nonnull @.str.5)
          to label %bb.ah unwind label %bb.y

bb.ah:                                            ; preds = %bb.ag
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %.sroa.0508.0, ptr noundef nonnull @.str.6)
          to label %bb.aj unwind label %bb.y

bb.aj:                                            ; preds = %bb.ai
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.sink.split, label %bb.ak

.sink.split:                                      ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.w
  %.sink = phi i32 [ 0, %bb.w ], [ 8, %bb.ab ], [ 12, %bb.af ], [ 14, %bb.ah ], [ 9, %bb.ad ], [ 98, %bb.aj ]
  store i32 %.sink, ptr %i.aq, align 4, !tbaa !105
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.aj
  %cond20 = phi i1 [ false, %bb.aj ], [ true, %.sink.split ]
  %.2 = phi i32 [ -2147024809, %bb.aj ], [ %.0542, %.sink.split ] ; 2 uses
  %i.en = icmp eq ptr %.sroa.0508.0, null
  br i1 %i.en, label %_ZN11CStringBaseIwED2Ev.exit278, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0508.0) #21
  br label %_ZN11CStringBaseIwED2Ev.exit278

_ZN11CStringBaseIwED2Ev.exit278:                  ; preds = %bb.ak, %bb.al
  br i1 %cond20, label %.critedge252, label %bb.gi

bb.am:                                            ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !25 ; 2 uses
  switch i32 %i.ep, label %bb.gi [
    i32 0, label %bb.an
    i32 8, label %bb.an
    i32 9, label %bb.an
    i32 12, label %bb.an
    i32 14, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am, %bb.am, %bb.am, %bb.am
  store i32 %i.ep, ptr %i.aq, align 4, !tbaa !105
  br label %.critedge252

bb.ao:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef 2)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit unwind label %bb.bd

_ZNK11CStringBaseIwE4LeftEi.exit:                 ; preds = %bb.ao
  %i.eq = load ptr, ptr %6, align 8, !tbaa !41
  %i.er = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.eq, ptr noundef nonnull @.str.7)
          to label %bb.ap unwind label %bb.be

bb.ap:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.es = icmp eq i32 %i.er, 0
  %i.et = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %_ZN11CStringBaseIwED2Ev.exit282, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.et) #21
  br label %_ZN11CStringBaseIwED2Ev.exit282

_ZN11CStringBaseIwED2Ev.exit282:                  ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.es, label %bb.ar, label %bb.bw

bb.ar:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit282
  %i.ev = load i16, ptr %i.bl, align 8, !tbaa !47
  %i.ew = icmp eq i16 %i.ev, 8
  br i1 %i.ew, label %bb.as, label %bb.gi

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !25 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %wcslen.i.i283 = call i64 @wcslen(ptr %i.ey)
  %i.ez = trunc i64 %wcslen.i.i283 to i32         ; 3 uses
  %i.fa = add nsw i32 %i.ez, 1                    ; 3 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i284, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = icmp slt i32 %i.ez, -1
  %i.fe = shl nuw nsw i64 %i.fc, 2
  %i.ff = select i1 %i.fd, i64 -1, i64 %i.fe
  %i.fg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ff) #19
          to label %.noexc288 unwind label %bb.bg ; 3 uses

.noexc288:                                        ; preds = %bb.at
  store ptr %i.fg, ptr %7, align 8, !tbaa !41
  store i32 0, ptr %i.fg, align 4, !tbaa !44
  store i32 %i.fa, ptr %i.ao, align 4, !tbaa !46
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i284

_ZN11CStringBaseIwE11SetCapacityEi.exit.i284:     ; preds = %.noexc288, %bb.as
  %i.fh = phi ptr [ null, %bb.as ], [ %i.fg, %.noexc288 ] ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i284
  %.04.i.i285 = phi ptr [ %i.ey, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i284 ], [ %i.fi, %bb.au ] ; 2 uses
  %.0.i.i286 = phi ptr [ %i.fh, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i284 ], [ %i.fk, %bb.au ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.04.i.i285, i64 4
  %i.fj = load i32, ptr %.04.i.i285, align 4, !tbaa !44 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i286, i64 4
  store i32 %i.fj, ptr %.0.i.i286, align 4, !tbaa !44
  %.not.i.i287 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i287, label %bb.av, label %bb.au, !llvm.loop !52

bb.av:                                            ; preds = %bb.au
  store i32 %i.ez, ptr %i.ap, align 8, !tbaa !51
  %i.fl = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %i.fh)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit291 unwind label %bb.bh ; 0 uses

_ZN11CStringBaseIwE9MakeUpperEv.exit291:          ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, i32 noundef 3)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit293 unwind label %bb.bi

_ZNK11CStringBaseIwE4LeftEi.exit293:              ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit291
  %i.fm = load ptr, ptr %8, align 8, !tbaa !41
  %i.fn = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.fm, ptr noundef nonnull @.str.8)
          to label %bb.aw unwind label %bb.bj

bb.aw:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit293
  %i.fo = icmp eq i32 %i.fn, 0
  %i.fp = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %_ZN11CStringBaseIwED2Ev.exit296, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZdaPv(ptr noundef nonnull %i.fp) #21
  br label %_ZN11CStringBaseIwED2Ev.exit296

_ZN11CStringBaseIwED2Ev.exit296:                  ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.fo, label %bb.ay, label %bb.br

bb.ay:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit296
  %i.fr = load i32, ptr %i.ap, align 8, !tbaa !51, !noalias !143 ; 5 uses
  %i.fs = add i32 %i.fr, -3                       ; 4 uses
  %i.ft = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc407 unwind label %bb.bl ; 4 uses

.noexc407:                                        ; preds = %bb.ay
  store i32 0, ptr %i.ft, align 4, !tbaa !44, !noalias !146
  %i.fu = add nsw i32 %i.fr, -2                   ; 5 uses
  %i.fv = icmp eq i32 %i.fu, 4
  br i1 %i.fv, label %.lr.ph.i402, label %bb.az

bb.az:                                            ; preds = %.noexc407
  %i.fw = zext i32 %i.fu to i64
  %i.fx = icmp slt i32 %i.fr, 2
  %i.fy = shl nuw nsw i64 %i.fw, 2
  %i.fz = select i1 %i.fx, i64 -1, i64 %i.fy
  %i.ga = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fz) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398 unwind label %_ZN11CStringBaseIwED2Ev.exit.i397, !noalias !146 ; 3 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i398:     ; preds = %bb.az
  call void @_ZdaPv(ptr noundef nonnull %i.ft) #21, !noalias !146
  store i32 0, ptr %i.ga, align 4, !tbaa !44, !noalias !146
  %i.gb = icmp sgt i32 %i.fr, 3
  br i1 %i.gb, label %.lr.ph.i402, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i399

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i399: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398
  %.pre.i400 = sext i32 %i.fs to i64
  %.pre576 = load ptr, ptr %7, align 8, !tbaa !41
  br label %.loopexit518

.lr.ph.i402:                                      ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398, %.noexc407
  %.sroa.0.0 = phi ptr [ %i.ft, %.noexc407 ], [ %i.ga, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i398 ] ; 10 uses
  %i.gc = load ptr, ptr %7, align 8, !tbaa !41, !noalias !146 ; 5 uses
  %i.gd = zext i32 %i.fs to i64                   ; 8 uses
  %invariant.gep.i403 = getelementptr i8, ptr %i.gc, i64 12 ; 6 uses
  %min.iters.check677 = icmp ult i32 %i.fs, 8
  br i1 %min.iters.check677, label %scalar.ph676.preheader, label %vector.memcheck673

vector.memcheck673:                               ; preds = %.lr.ph.i402
  %i.ge = ptrtoaddr ptr %i.gc to i64
  %.sroa.0.0674 = ptrtoaddr ptr %.sroa.0.0 to i64
  %i.gf = add i64 %.sroa.0.0674, -12
  %i.gg = sub i64 %i.gf, %i.ge
  %diff.check675 = icmp ult i64 %i.gg, 32
  br i1 %diff.check675, label %scalar.ph676.preheader, label %vector.ph678

vector.ph678:                                     ; preds = %vector.memcheck673
  %n.vec680 = and i64 %i.gd, 2147483640           ; 3 uses
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph678
  %index682 = phi i64 [ 0, %vector.ph678 ], [ %index.next685, %vector.body681 ] ; 3 uses
  %i.gh = getelementptr [4 x i8], ptr %invariant.gep.i403, i64 %index682 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 16
  %wide.load683 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !44, !noalias !146
  %wide.load684 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !44, !noalias !146
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %index682 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <4 x i32> %wide.load683, ptr %i.gj, align 4, !tbaa !44, !noalias !146
  store <4 x i32> %wide.load684, ptr %i.gk, align 4, !tbaa !44, !noalias !146
  %index.next685 = add nuw i64 %index682, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next685, %n.vec680
  br i1 %i.gl, label %middle.block686, label %vector.body681, !llvm.loop !149

middle.block686:                                  ; preds = %vector.body681
  %cmp.n687 = icmp eq i64 %n.vec680, %i.gd
  br i1 %cmp.n687, label %.loopexit518, label %scalar.ph676.preheader

scalar.ph676.preheader:                           ; preds = %vector.memcheck673, %.lr.ph.i402, %middle.block686
  %indvars.iv.i404.ph = phi i64 [ 0, %vector.memcheck673 ], [ 0, %.lr.ph.i402 ], [ %n.vec680, %middle.block686 ] ; 3 uses
  %xtraiter809 = and i64 %i.gd, 3                 ; 2 uses
  %lcmp.mod810.not = icmp eq i64 %xtraiter809, 0
  br i1 %lcmp.mod810.not, label %scalar.ph676.prol.loopexit, label %scalar.ph676.prol

scalar.ph676.prol:                                ; preds = %scalar.ph676.preheader, %scalar.ph676.prol
  %indvars.iv.i404.prol = phi i64 [ %indvars.iv.next.i406.prol, %scalar.ph676.prol ], [ %indvars.iv.i404.ph, %scalar.ph676.preheader ] ; 3 uses
  %prol.iter811 = phi i64 [ %prol.iter811.next, %scalar.ph676.prol ], [ 0, %scalar.ph676.preheader ]
  %gep.i405.prol = getelementptr [4 x i8], ptr %invariant.gep.i403, i64 %indvars.iv.i404.prol
  %i.gm = load i32, ptr %gep.i405.prol, align 4, !tbaa !44, !noalias !146
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.i404.prol
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !44, !noalias !146
  %indvars.iv.next.i406.prol = add nuw nsw i64 %indvars.iv.i404.prol, 1 ; 2 uses
  %prol.iter811.next = add i64 %prol.iter811, 1   ; 2 uses
  %prol.iter811.cmp.not = icmp eq i64 %prol.iter811.next, %xtraiter809
  br i1 %prol.iter811.cmp.not, label %scalar.ph676.prol.loopexit, label %scalar.ph676.prol, !llvm.loop !150

scalar.ph676.prol.loopexit:                       ; preds = %scalar.ph676.prol, %scalar.ph676.preheader
  %indvars.iv.i404.unr = phi i64 [ %indvars.iv.i404.ph, %scalar.ph676.preheader ], [ %indvars.iv.next.i406.prol, %scalar.ph676.prol ]
  %i.go = sub nsw i64 %indvars.iv.i404.ph, %i.gd
  %i.gp = icmp ugt i64 %i.go, -4
  br i1 %i.gp, label %.loopexit518, label %scalar.ph676

_ZN11CStringBaseIwED2Ev.exit.i397:                ; preds = %bb.az
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.ft) #21, !noalias !146
  br label %.body408

scalar.ph676:                                     ; preds = %scalar.ph676.prol.loopexit, %scalar.ph676
  %indvars.iv.i404 = phi i64 [ %indvars.iv.next.i406.3, %scalar.ph676 ], [ %indvars.iv.i404.unr, %scalar.ph676.prol.loopexit ] ; 6 uses
  %gep.i405 = getelementptr [4 x i8], ptr %invariant.gep.i403, i64 %indvars.iv.i404
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi:bb.a
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !44, !noalias !146
  %indvars.iv.next.i406 = add nuw nsw i64 %indvars.iv.i404, 1 ; 2 uses
  %gep.i405.1 = getelementptr [4 x i8], ptr %invariant.gep.i403, i64 %indvars.iv.next.i406
  %i.gt = load i32, ptr %gep.i405.1, align 4, !tbaa !44, !noalias !146
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.next.i406
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !44, !noalias !146
  %indvars.iv.next.i406.1 = add nuw nsw i64 %indvars.iv.i404, 2 ; 2 uses
  %gep.i405.2 = getelementptr [4 x i8], ptr %invariant.gep.i403, i64 %indvars.iv.next.i406.1
  %i.gv = load i32, ptr %gep.i405.2, align 4, !tbaa !44, !noalias !146
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.next.i406.1
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !44, !noalias !146
  %indvars.iv.next.i406.2 = add nuw nsw i64 %indvars.iv.i404, 3 ; 2 uses
  %gep.i405.3 = getelementptr [4 x i8], ptr %invariant.gep.i403, i64 %indvars.iv.next.i406.2
  %i.gx = load i32, ptr %gep.i405.3, align 4, !tbaa !44, !noalias !146
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv.next.i406.2
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !44, !noalias !146
  %indvars.iv.next.i406.3 = add nuw nsw i64 %indvars.iv.i404, 4 ; 2 uses
  %exitcond570.not.3 = icmp eq i64 %indvars.iv.next.i406.3, %i.gd
  br i1 %exitcond570.not.3, label %.loopexit518, label %scalar.ph676, !llvm.loop !151

.loopexit518:                                     ; preds = %scalar.ph676.prol.loopexit, %scalar.ph676, %middle.block686, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i399
  %i.gz = phi ptr [ %.pre576, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i399 ], [ %i.gc, %middle.block686 ], [ %i.gc, %scalar.ph676 ], [ %i.gc, %scalar.ph676.prol.loopexit ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.ga, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i399 ], [ %.sroa.0.0, %middle.block686 ], [ %.sroa.0.0, %scalar.ph676 ], [ %.sroa.0.0, %scalar.ph676.prol.loopexit ] ; 4 uses
  %.pre-phi.i401 = phi i64 [ %.pre.i400, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i399 ], [ %i.gd, %middle.block686 ], [ %i.gd, %scalar.ph676 ], [ %i.gd, %scalar.ph676.prol.loopexit ]
  %i.ha = getelementptr inbounds [4 x i8], ptr %.sroa.0.1, i64 %.pre-phi.i401
  store i32 0, ptr %i.ha, align 4, !tbaa !44, !noalias !146
  store i32 0, ptr %i.ap, align 8, !tbaa !51
  store i32 0, ptr %i.gz, align 4, !tbaa !44
  %i.hb = load i32, ptr %i.ao, align 4, !tbaa !46 ; 2 uses
  %i.hc = icmp eq i32 %i.fu, %i.hb
  br i1 %i.hc, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299.preheader, label %bb.ba

bb.ba:                                            ; preds = %.loopexit518
  %i.hd = zext nneg i32 %i.fu to i64
  %i.he = icmp slt i32 %i.fr, 2
  %i.hf = shl nuw nsw i64 %i.hd, 2
  %i.hg = select i1 %i.he, i64 -1, i64 %i.hf
  %i.hh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hg) #19
          to label %.noexc303 unwind label %_ZN11CStringBaseIwED2Ev.exit309 ; 3 uses

.noexc303:                                        ; preds = %bb.ba
  %i.hi = icmp sgt i32 %i.hb, 0
  br i1 %i.hi, label %._crit_edge.thread.i.i, label %bb.bb

._crit_edge.thread.i.i:                           ; preds = %.noexc303
  call void @_ZdaPv(ptr noundef nonnull %i.gz) #21
  %.pre.i = load i32, ptr %i.ap, align 8, !tbaa !51
  %i.hj = sext i32 %.pre.i to i64
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.thread.i.i, %.noexc303
  %i.hk = phi i64 [ %i.hj, %._crit_edge.thread.i.i ], [ 0, %.noexc303 ]
  store ptr %i.hh, ptr %7, align 8, !tbaa !41
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hk
  store i32 0, ptr %i.hl, align 4, !tbaa !44
  store i32 %i.fu, ptr %i.ao, align 4, !tbaa !46
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i299.preheader: ; preds = %bb.bb, %.loopexit518
  %.0.i.i301.ph = phi ptr [ %i.gz, %.loopexit518 ], [ %i.hh, %bb.bb ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299

_ZN11CStringBaseIwE11SetCapacityEi.exit.i299:     ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299
  %.04.i.i300 = phi ptr [ %i.hm, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299 ], [ %.sroa.0.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299.preheader ] ; 2 uses
  %.0.i.i301 = phi ptr [ %i.ho, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299 ], [ %.0.i.i301.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299.preheader ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.04.i.i300, i64 4
  %i.hn = load i32, ptr %.04.i.i300, align 4, !tbaa !44 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i.i301, i64 4
  store i32 %i.hn, ptr %.0.i.i301, align 4, !tbaa !44
  %.not.i.i302 = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i302, label %_ZN11CStringBaseIwED2Ev.exit304, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299, !llvm.loop !52

_ZN11CStringBaseIwED2Ev.exit304:                  ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i299
  store i32 %i.fs, ptr %i.ap, align 8, !tbaa !51
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #21
  %i.hp = load ptr, ptr %7, align 8, !tbaa !41
  %i.hq = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.hp, ptr noundef nonnull @.str.9)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit304
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.bq, label %bb.bm

bb.bd:                                            ; preds = %bb.ao
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit307

bb.be:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_ZN11CStringBaseIwED2Ev.exit307, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZdaPv(ptr noundef nonnull %i.hu) #21
  br label %_ZN11CStringBaseIwED2Ev.exit307

_ZN11CStringBaseIwED2Ev.exit307:                  ; preds = %bb.bf, %bb.be, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.hs, %bb.bd ], [ %i.ht, %bb.be ], [ %i.ht, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.bg:                                            ; preds = %bb.at
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit317

bb.bh:                                            ; preds = %bb.br, %bb.bo, %bb.bm, %_ZN11CStringBaseIwED2Ev.exit304, %bb.av
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body408

bb.bi:                                            ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit291
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit308

bb.bj:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit293
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %_ZN11CStringBaseIwED2Ev.exit308, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #21
  br label %_ZN11CStringBaseIwED2Ev.exit308

_ZN11CStringBaseIwED2Ev.exit308:                  ; preds = %bb.bk, %bb.bj, %bb.bi
  %.pn218 = phi { ptr, i32 } [ %i.hy, %bb.bi ], [ %i.hz, %bb.bj ], [ %i.hz, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body408

bb.bl:                                            ; preds = %bb.ay
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body408

_ZN11CStringBaseIwED2Ev.exit309:                  ; preds = %bb.ba
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #21
  br label %.body408

bb.bm:                                            ; preds = %bb.bc
  %i.ie = load ptr, ptr %7, align 8, !tbaa !41
  %i.if = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ie, ptr noundef nonnull @.str.10)
          to label %bb.bn unwind label %bb.bh

bb.bn:                                            ; preds = %bb.bm
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ih = load ptr, ptr %7, align 8, !tbaa !41
  %i.ii = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ih, ptr noundef nonnull @.str.11)
          to label %bb.bp unwind label %bb.bh

bb.bp:                                            ; preds = %bb.bo
  %i.ij = icmp eq i32 %i.ii, 0
  %i.ik = load i32, ptr %i.ap, align 8
  %i.il = icmp eq i32 %i.ik, 0
  %or.cond = select i1 %i.ij, i1 true, i1 %i.il
  br i1 %or.cond, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %bb.bc
  %.sink654 = phi i8 [ 1, %bb.bc ], [ 2, %bb.bn ], [ 3, %bb.bp ]
  store i8 %.sink654, ptr %i.o, align 1, !tbaa !94
  br label %.sink.split655

bb.br:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit296
  %i.im = load ptr, ptr %7, align 8, !tbaa !41
  %i.in = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.im, ptr noundef nonnull @.str.12)
          to label %bb.bs unwind label %bb.bh

bb.bs:                                            ; preds = %bb.br
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %.sink.split655, label %bb.bt

.sink.split655:                                   ; preds = %bb.bs, %bb.bq
  %.sink656 = phi i8 [ 1, %bb.bq ], [ 0, %bb.bs ]
  store i8 %.sink656, ptr %i.n, align 2, !tbaa !152
  store i8 1, ptr %i.m, align 1, !tbaa !93
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split655, %bb.bp, %bb.bs
  %cond19 = phi i1 [ false, %bb.bs ], [ false, %bb.bp ], [ true, %.sink.split655 ]
  %.3 = phi i32 [ -2147024809, %bb.bs ], [ -2147024809, %bb.bp ], [ %.0542, %.sink.split655 ] ; 2 uses
  %i.ip = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %_ZN11CStringBaseIwED2Ev.exit316, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZdaPv(ptr noundef nonnull %i.ip) #21
  br label %_ZN11CStringBaseIwED2Ev.exit316

_ZN11CStringBaseIwED2Ev.exit316:                  ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %cond19, label %.critedge252, label %bb.gi

.body408:                                         ; preds = %_ZN11CStringBaseIwED2Ev.exit309, %_ZN11CStringBaseIwED2Ev.exit.i397, %bb.bl, %_ZN11CStringBaseIwED2Ev.exit308, %bb.bh
  %.pn222 = phi { ptr, i32 } [ %i.hx, %bb.bh ], [ %.pn218, %_ZN11CStringBaseIwED2Ev.exit308 ], [ %i.id, %_ZN11CStringBaseIwED2Ev.exit309 ], [ %i.ic, %bb.bl ], [ %i.gq, %_ZN11CStringBaseIwED2Ev.exit.i397 ] ; 2 uses
  %i.ir = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %_ZN11CStringBaseIwED2Ev.exit317, label %bb.bv

bb.bv:                                            ; preds = %.body408
  call void @_ZdaPv(ptr noundef nonnull %i.ir) #21
  br label %_ZN11CStringBaseIwED2Ev.exit317

_ZN11CStringBaseIwED2Ev.exit317:                  ; preds = %bb.bv, %.body408, %bb.bg
  %.pn222.pn = phi { ptr, i32 } [ %i.hw, %bb.bg ], [ %.pn222, %.body408 ], [ %.pn222, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.bw:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit282
  %i.it = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !44
  %i.iv = icmp eq i32 %i.iu, 68
  br i1 %i.iv, label %bb.bx, label %bb.cf

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 900000, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.iw = load i32, ptr %i.u, align 8, !tbaa !51, !noalias !153 ; 6 uses
  %i.ix = add i32 %i.iw, -1                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.iy = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc422 unwind label %bb.cb ; 5 uses

.noexc422:                                        ; preds = %bb.bx
  store ptr %i.iy, ptr %9, align 8, !tbaa !41, !alias.scope !156
  store i32 0, ptr %i.iy, align 4, !tbaa !44, !noalias !156
  store i32 4, ptr %i.al, align 4, !tbaa !46, !alias.scope !156
  %i.iz = icmp eq i32 %i.iw, 4
  br i1 %i.iz, label %.lr.ph.i417, label %bb.by

bb.by:                                            ; preds = %.noexc422
  %i.ja = zext nneg i32 %i.iw to i64
  %i.jb = icmp slt i32 %i.iw, 0
  %i.jc = shl nuw nsw i64 %i.ja, 2
  %i.jd = select i1 %i.jb, i64 -1, i64 %i.jc
  %i.je = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jd) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413 unwind label %_ZN11CStringBaseIwED2Ev.exit.i412, !noalias !156 ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i413:     ; preds = %bb.by
  call void @_ZdaPv(ptr noundef nonnull %i.iy) #21, !noalias !156
  store ptr %i.je, ptr %9, align 8, !tbaa !41, !alias.scope !156
  store i32 0, ptr %i.je, align 4, !tbaa !44, !noalias !156
  store i32 %i.iw, ptr %i.al, align 4, !tbaa !46, !alias.scope !156
  %i.jf = icmp sgt i32 %i.iw, 1
  br i1 %i.jf, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413..lr.ph.i417_crit_edge, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i414

_ZN11CStringBaseIwE11SetCapacityEi.exit.i413..lr.ph.i417_crit_edge: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413
  %.pre575 = load ptr, ptr %4, align 8, !tbaa !41, !noalias !156
  br label %.lr.ph.i417

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i414: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413
  %.pre.i415 = sext i32 %i.ix to i64
  br label %.loopexit519

.lr.ph.i417:                                      ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413..lr.ph.i417_crit_edge, %.noexc422
  %i.jg = phi ptr [ %.pre575, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413..lr.ph.i417_crit_edge ], [ %i.it, %.noexc422 ] ; 2 uses
  %i.jh = phi ptr [ %i.je, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i413..lr.ph.i417_crit_edge ], [ %i.iy, %.noexc422 ] ; 10 uses
  %i.ji = zext i32 %i.ix to i64                   ; 8 uses
  %invariant.gep.i418 = getelementptr i8, ptr %i.jg, i64 4 ; 6 uses
  %min.iters.check692 = icmp ult i32 %i.ix, 8
  br i1 %min.iters.check692, label %scalar.ph691.preheader, label %vector.memcheck689

vector.memcheck689:                               ; preds = %.lr.ph.i417
  %i.jj = ptrtoaddr ptr %i.jg to i64
  %i.jk = ptrtoaddr ptr %i.jh to i64
  %i.jl = add i64 %i.jk, -4
  %i.jm = sub i64 %i.jl, %i.jj
  %diff.check690 = icmp ult i64 %i.jm, 32
  br i1 %diff.check690, label %scalar.ph691.preheader, label %vector.ph693

vector.ph693:                                     ; preds = %vector.memcheck689
  %n.vec695 = and i64 %i.ji, 2147483640           ; 3 uses
  br label %vector.body696

vector.body696:                                   ; preds = %vector.body696, %vector.ph693
  %index697 = phi i64 [ 0, %vector.ph693 ], [ %index.next700, %vector.body696 ] ; 3 uses
  %i.jn = getelementptr [4 x i8], ptr %invariant.gep.i418, i64 %index697 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  %wide.load698 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !44, !noalias !156
  %wide.load699 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !44, !noalias !156
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %index697 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store <4 x i32> %wide.load698, ptr %i.jp, align 4, !tbaa !44, !noalias !156
  store <4 x i32> %wide.load699, ptr %i.jq, align 4, !tbaa !44, !noalias !156
  %index.next700 = add nuw i64 %index697, 8       ; 2 uses
  %i.jr = icmp eq i64 %index.next700, %n.vec695
  br i1 %i.jr, label %middle.block701, label %vector.body696, !llvm.loop !159

middle.block701:                                  ; preds = %vector.body696
  %cmp.n702 = icmp eq i64 %n.vec695, %i.ji
  br i1 %cmp.n702, label %.loopexit519, label %scalar.ph691.preheader

scalar.ph691.preheader:                           ; preds = %vector.memcheck689, %.lr.ph.i417, %middle.block701
  %indvars.iv.i419.ph = phi i64 [ 0, %vector.memcheck689 ], [ 0, %.lr.ph.i417 ], [ %n.vec695, %middle.block701 ] ; 3 uses
  %xtraiter806 = and i64 %i.ji, 3                 ; 2 uses
  %lcmp.mod807.not = icmp eq i64 %xtraiter806, 0
  br i1 %lcmp.mod807.not, label %scalar.ph691.prol.loopexit, label %scalar.ph691.prol

scalar.ph691.prol:                                ; preds = %scalar.ph691.preheader, %scalar.ph691.prol
  %indvars.iv.i419.prol = phi i64 [ %indvars.iv.next.i421.prol, %scalar.ph691.prol ], [ %indvars.iv.i419.ph, %scalar.ph691.preheader ] ; 3 uses
  %prol.iter808 = phi i64 [ %prol.iter808.next, %scalar.ph691.prol ], [ 0, %scalar.ph691.preheader ]
  %gep.i420.prol = getelementptr [4 x i8], ptr %invariant.gep.i418, i64 %indvars.iv.i419.prol
  %i.js = load i32, ptr %gep.i420.prol, align 4, !tbaa !44, !noalias !156
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i419.prol
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !44, !noalias !156
  %indvars.iv.next.i421.prol = add nuw nsw i64 %indvars.iv.i419.prol, 1 ; 2 uses
  %prol.iter808.next = add i64 %prol.iter808, 1   ; 2 uses
  %prol.iter808.cmp.not = icmp eq i64 %prol.iter808.next, %xtraiter806
  br i1 %prol.iter808.cmp.not, label %scalar.ph691.prol.loopexit, label %scalar.ph691.prol, !llvm.loop !160

scalar.ph691.prol.loopexit:                       ; preds = %scalar.ph691.prol, %scalar.ph691.preheader
  %indvars.iv.i419.unr = phi i64 [ %indvars.iv.i419.ph, %scalar.ph691.preheader ], [ %indvars.iv.next.i421.prol, %scalar.ph691.prol ]
  %i.ju = sub nsw i64 %indvars.iv.i419.ph, %i.ji
  %i.jv = icmp ugt i64 %i.ju, -4
  br i1 %i.jv, label %.loopexit519, label %scalar.ph691

_ZN11CStringBaseIwED2Ev.exit.i412:                ; preds = %bb.by
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.iy) #21, !noalias !156
  br label %.body423

scalar.ph691:                                     ; preds = %scalar.ph691.prol.loopexit, %scalar.ph691
  %indvars.iv.i419 = phi i64 [ %indvars.iv.next.i421.3, %scalar.ph691 ], [ %indvars.iv.i419.unr, %scalar.ph691.prol.loopexit ] ; 6 uses
  %gep.i420 = getelementptr [4 x i8], ptr %invariant.gep.i418, i64 %indvars.iv.i419
  %i.jx = load i32, ptr %gep.i420, align 4, !tbaa !44, !noalias !156
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i419
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !44, !noalias !156
  %indvars.iv.next.i421 = add nuw nsw i64 %indvars.iv.i419, 1 ; 2 uses
  %gep.i420.1 = getelementptr [4 x i8], ptr %invariant.gep.i418, i64 %indvars.iv.next.i421
  %i.jz = load i32, ptr %gep.i420.1, align 4, !tbaa !44, !noalias !156
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next.i421
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !44, !noalias !156
  %indvars.iv.next.i421.1 = add nuw nsw i64 %indvars.iv.i419, 2 ; 2 uses
  %gep.i420.2 = getelementptr [4 x i8], ptr %invariant.gep.i418, i64 %indvars.iv.next.i421.1
  %i.kb = load i32, ptr %gep.i420.2, align 4, !tbaa !44, !noalias !156
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next.i421.1
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !44, !noalias !156
  %indvars.iv.next.i421.2 = add nuw nsw i64 %indvars.iv.i419, 3 ; 2 uses
  %gep.i420.3 = getelementptr [4 x i8], ptr %invariant.gep.i418, i64 %indvars.iv.next.i421.2
  %i.kd = load i32, ptr %gep.i420.3, align 4, !tbaa !44, !noalias !156
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next.i421.2
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !44, !noalias !156
  %indvars.iv.next.i421.3 = add nuw nsw i64 %indvars.iv.i419, 4 ; 2 uses
  %exitcond568.not.3 = icmp eq i64 %indvars.iv.next.i421.3, %i.ji
  br i1 %exitcond568.not.3, label %.loopexit519, label %scalar.ph691, !llvm.loop !161

.loopexit519:                                     ; preds = %scalar.ph691.prol.loopexit, %scalar.ph691, %middle.block701, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i414
  %i.kf = phi ptr [ %i.je, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i414 ], [ %i.jh, %middle.block701 ], [ %i.jh, %scalar.ph691 ], [ %i.jh, %scalar.ph691.prol.loopexit ]
  %.pre-phi.i416 = phi i64 [ %.pre.i415, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i414 ], [ %i.ji, %middle.block701 ], [ %i.ji, %scalar.ph691 ], [ %i.ji, %scalar.ph691.prol.loopexit ]
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %.pre-phi.i416
  store i32 0, ptr %i.kg, align 4, !tbaa !44, !noalias !156
  store i32 %i.ix, ptr %i.am, align 8, !tbaa !51, !alias.scope !156
  %i.kh = invoke noundef i32 @_Z24ParsePropDictionaryValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.bz unwind label %bb.cc     ; 2 uses

bb.bz:                                            ; preds = %.loopexit519
  %i.ki = load ptr, ptr %9, align 8, !tbaa !41    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %_ZN11CStringBaseIwED2Ev.exit320, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZdaPv(ptr noundef nonnull %i.ki) #21
  br label %_ZN11CStringBaseIwED2Ev.exit320

_ZN11CStringBaseIwED2Ev.exit320:                  ; preds = %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %.not217 = icmp eq i32 %i.kh, 0
  br i1 %.not217, label %bb.ce, label %bb.gh

bb.cb:                                            ; preds = %bb.bx
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body423

bb.cc:                                            ; preds = %.loopexit519
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = load ptr, ptr %9, align 8, !tbaa !41    ; 2 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %.body423, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZdaPv(ptr noundef nonnull %i.km) #21
  br label %.body423

.body423:                                         ; preds = %bb.cd, %bb.cc, %bb.cb, %_ZN11CStringBaseIwED2Ev.exit.i412
  %.pn215 = phi { ptr, i32 } [ %i.jw, %_ZN11CStringBaseIwED2Ev.exit.i412 ], [ %i.kk, %bb.cb ], [ %i.kl, %bb.cc ], [ %i.kl, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.ce:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit320
  %i.ko = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.ko, ptr %i.an, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.critedge252

bb.cf:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef 3)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit323 unwind label %bb.cm

_ZNK11CStringBaseIwE4LeftEi.exit323:              ; preds = %bb.cf
  %i.kp = load ptr, ptr %10, align 8, !tbaa !41
  %i.kq = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.kp, ptr noundef nonnull @.str.13)
          to label %bb.cg unwind label %bb.cn

bb.cg:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit323
  %i.kr = icmp eq i32 %i.kq, 0
  %i.ks = load ptr, ptr %10, align 8, !tbaa !41   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %_ZN11CStringBaseIwED2Ev.exit326, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.ks) #21
  br label %_ZN11CStringBaseIwED2Ev.exit326

_ZN11CStringBaseIwED2Ev.exit326:                  ; preds = %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %i.kr, label %bb.ci, label %bb.ct

bb.ci:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 16777216, ptr %i.c, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ku = load i32, ptr %i.u, align 8, !tbaa !51, !noalias !162 ; 4 uses
  %i.kv = add i32 %i.ku, -3                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.kw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc437 unwind label %bb.cp ; 5 uses

.noexc437:                                        ; preds = %bb.ci
  store ptr %i.kw, ptr %11, align 8, !tbaa !41, !alias.scope !165
  store i32 0, ptr %i.kw, align 4, !tbaa !44, !noalias !165
  store i32 4, ptr %i.ai, align 4, !tbaa !46, !alias.scope !165
  %i.kx = add nsw i32 %i.ku, -2                   ; 3 uses
  %i.ky = icmp eq i32 %i.kx, 4
  br i1 %i.ky, label %.lr.ph.i432, label %bb.cj

bb.cj:                                            ; preds = %.noexc437
  %i.kz = zext nneg i32 %i.kx to i64
  %i.la = icmp slt i32 %i.ku, 2
  %i.lb = shl nuw nsw i64 %i.kz, 2
  %i.lc = select i1 %i.la, i64 -1, i64 %i.lb
  %i.ld = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lc) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i428 unwind label %_ZN11CStringBaseIwED2Ev.exit.i427, !noalias !165 ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i428:     ; preds = %bb.cj
  call void @_ZdaPv(ptr noundef nonnull %i.kw) #21, !noalias !165
  store ptr %i.ld, ptr %11, align 8, !tbaa !41, !alias.scope !165
  store i32 0, ptr %i.ld, align 4, !tbaa !44, !noalias !165
  store i32 %i.kx, ptr %i.ai, align 4, !tbaa !46, !alias.scope !165
  %i.le = icmp sgt i32 %i.ku, 3
  br i1 %i.le, label %.lr.ph.i432, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i429

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i429: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i428
  %.pre.i430 = sext i32 %i.kv to i64
  br label %.loopexit520

.lr.ph.i432:                                      ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i428, %.noexc437
  %i.lf = phi ptr [ %i.ld, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i428 ], [ %i.kw, %.noexc437 ] ; 10 uses
  %i.lg = load ptr, ptr %4, align 8, !tbaa !41, !noalias !165 ; 2 uses
  %i.lh = zext i32 %i.kv to i64                   ; 8 uses
  %invariant.gep.i433 = getelementptr i8, ptr %i.lg, i64 12 ; 6 uses
  %min.iters.check707 = icmp ult i32 %i.kv, 8
  br i1 %min.iters.check707, label %scalar.ph706.preheader, label %vector.memcheck704

vector.memcheck704:                               ; preds = %.lr.ph.i432
  %i.li = ptrtoaddr ptr %i.lg to i64
  %i.lj = ptrtoaddr ptr %i.lf to i64
  %i.lk = add i64 %i.lj, -12
  %i.ll = sub i64 %i.lk, %i.li
  %diff.check705 = icmp ult i64 %i.ll, 32
  br i1 %diff.check705, label %scalar.ph706.preheader, label %vector.ph708

vector.ph708:                                     ; preds = %vector.memcheck704
  %n.vec710 = and i64 %i.lh, 2147483640           ; 3 uses
  br label %vector.body711

vector.body711:                                   ; preds = %vector.body711, %vector.ph708
  %index712 = phi i64 [ 0, %vector.ph708 ], [ %index.next715, %vector.body711 ] ; 3 uses
  %i.lm = getelementptr [4 x i8], ptr %invariant.gep.i433, i64 %index712 ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 16
  %wide.load713 = load <4 x i32>, ptr %i.lm, align 4, !tbaa !44, !noalias !165
  %wide.load714 = load <4 x i32>, ptr %i.ln, align 4, !tbaa !44, !noalias !165
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index712 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <4 x i32> %wide.load713, ptr %i.lo, align 4, !tbaa !44, !noalias !165
  store <4 x i32> %wide.load714, ptr %i.lp, align 4, !tbaa !44, !noalias !165
  %index.next715 = add nuw i64 %index712, 8       ; 2 uses
  %i.lq = icmp eq i64 %index.next715, %n.vec710
  br i1 %i.lq, label %middle.block716, label %vector.body711, !llvm.loop !168

middle.block716:                                  ; preds = %vector.body711
  %cmp.n717 = icmp eq i64 %n.vec710, %i.lh
  br i1 %cmp.n717, label %.loopexit520, label %scalar.ph706.preheader

scalar.ph706.preheader:                           ; preds = %vector.memcheck704, %.lr.ph.i432, %middle.block716
  %indvars.iv.i434.ph = phi i64 [ 0, %vector.memcheck704 ], [ 0, %.lr.ph.i432 ], [ %n.vec710, %middle.block716 ] ; 3 uses
  %xtraiter803 = and i64 %i.lh, 3                 ; 2 uses
  %lcmp.mod804.not = icmp eq i64 %xtraiter803, 0
  br i1 %lcmp.mod804.not, label %scalar.ph706.prol.loopexit, label %scalar.ph706.prol

scalar.ph706.prol:                                ; preds = %scalar.ph706.preheader, %scalar.ph706.prol
  %indvars.iv.i434.prol = phi i64 [ %indvars.iv.next.i436.prol, %scalar.ph706.prol ], [ %indvars.iv.i434.ph, %scalar.ph706.preheader ] ; 3 uses
  %prol.iter805 = phi i64 [ %prol.iter805.next, %scalar.ph706.prol ], [ 0, %scalar.ph706.preheader ]
  %gep.i435.prol = getelementptr [4 x i8], ptr %invariant.gep.i433, i64 %indvars.iv.i434.prol
  %i.lr = load i32, ptr %gep.i435.prol, align 4, !tbaa !44, !noalias !165
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i434.prol
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !44, !noalias !165
  %indvars.iv.next.i436.prol = add nuw nsw i64 %indvars.iv.i434.prol, 1 ; 2 uses
  %prol.iter805.next = add i64 %prol.iter805, 1   ; 2 uses
  %prol.iter805.cmp.not = icmp eq i64 %prol.iter805.next, %xtraiter803
  br i1 %prol.iter805.cmp.not, label %scalar.ph706.prol.loopexit, label %scalar.ph706.prol, !llvm.loop !169

scalar.ph706.prol.loopexit:                       ; preds = %scalar.ph706.prol, %scalar.ph706.preheader
  %indvars.iv.i434.unr = phi i64 [ %indvars.iv.i434.ph, %scalar.ph706.preheader ], [ %indvars.iv.next.i436.prol, %scalar.ph706.prol ]
  %i.lt = sub nsw i64 %indvars.iv.i434.ph, %i.lh
  %i.lu = icmp ugt i64 %i.lt, -4
  br i1 %i.lu, label %.loopexit520, label %scalar.ph706

_ZN11CStringBaseIwED2Ev.exit.i427:                ; preds = %bb.cj
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.kw) #21, !noalias !165
  br label %.body438

scalar.ph706:                                     ; preds = %scalar.ph706.prol.loopexit, %scalar.ph706
  %indvars.iv.i434 = phi i64 [ %indvars.iv.next.i436.3, %scalar.ph706 ], [ %indvars.iv.i434.unr, %scalar.ph706.prol.loopexit ] ; 6 uses
  %gep.i435 = getelementptr [4 x i8], ptr %invariant.gep.i433, i64 %indvars.iv.i434
  %i.lw = load i32, ptr %gep.i435, align 4, !tbaa !44, !noalias !165
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.i434
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !44, !noalias !165
  %indvars.iv.next.i436 = add nuw nsw i64 %indvars.iv.i434, 1 ; 2 uses
  %gep.i435.1 = getelementptr [4 x i8], ptr %invariant.gep.i433, i64 %indvars.iv.next.i436
  %i.ly = load i32, ptr %gep.i435.1, align 4, !tbaa !44, !noalias !165
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.next.i436
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !44, !noalias !165
  %indvars.iv.next.i436.1 = add nuw nsw i64 %indvars.iv.i434, 2 ; 2 uses
  %gep.i435.2 = getelementptr [4 x i8], ptr %invariant.gep.i433, i64 %indvars.iv.next.i436.1
  %i.ma = load i32, ptr %gep.i435.2, align 4, !tbaa !44, !noalias !165
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.next.i436.1
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !44, !noalias !165
  %indvars.iv.next.i436.2 = add nuw nsw i64 %indvars.iv.i434, 3 ; 2 uses
  %gep.i435.3 = getelementptr [4 x i8], ptr %invariant.gep.i433, i64 %indvars.iv.next.i436.2
  %i.mc = load i32, ptr %gep.i435.3, align 4, !tbaa !44, !noalias !165
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv.next.i436.2
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !44, !noalias !165
  %indvars.iv.next.i436.3 = add nuw nsw i64 %indvars.iv.i434, 4 ; 2 uses
  %exitcond566.not.3 = icmp eq i64 %indvars.iv.next.i436.3, %i.lh
  br i1 %exitcond566.not.3, label %.loopexit520, label %scalar.ph706, !llvm.loop !170

.loopexit520:                                     ; preds = %scalar.ph706.prol.loopexit, %scalar.ph706, %middle.block716, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i429
  %i.me = phi ptr [ %i.ld, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i429 ], [ %i.lf, %middle.block716 ], [ %i.lf, %scalar.ph706 ], [ %i.lf, %scalar.ph706.prol.loopexit ]
  %.pre-phi.i431 = phi i64 [ %.pre.i430, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i429 ], [ %i.lh, %middle.block716 ], [ %i.lh, %scalar.ph706 ], [ %i.lh, %scalar.ph706.prol.loopexit ]
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.me, i64 %.pre-phi.i431
  store i32 0, ptr %i.mf, align 4, !tbaa !44, !noalias !165
  store i32 %i.kv, ptr %i.aj, align 8, !tbaa !51, !alias.scope !165
  %i.mg = invoke noundef i32 @_Z24ParsePropDictionaryValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ck unwind label %bb.cq     ; 2 uses

bb.ck:                                            ; preds = %.loopexit520
  %i.mh = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %_ZN11CStringBaseIwED2Ev.exit329, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZdaPv(ptr noundef nonnull %i.mh) #21
  br label %_ZN11CStringBaseIwED2Ev.exit329

_ZN11CStringBaseIwED2Ev.exit329:                  ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %.not214 = icmp eq i32 %i.mg, 0
  br i1 %.not214, label %bb.cs, label %.critedge

bb.cm:                                            ; preds = %bb.cf
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit330

bb.cn:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit323
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ml = load ptr, ptr %10, align 8, !tbaa !41   ; 2 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %_ZN11CStringBaseIwED2Ev.exit330, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.ml) #21
  br label %_ZN11CStringBaseIwED2Ev.exit330

_ZN11CStringBaseIwED2Ev.exit330:                  ; preds = %bb.co, %bb.cn, %bb.cm
  %.pn180 = phi { ptr, i32 } [ %i.mj, %bb.cm ], [ %i.mk, %bb.cn ], [ %i.mk, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.cp:                                            ; preds = %bb.ci
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body438

bb.cq:                                            ; preds = %.loopexit520
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = load ptr, ptr %11, align 8, !tbaa !41   ; 2 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %.body438, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZdaPv(ptr noundef nonnull %i.mp) #21
  br label %.body438

.body438:                                         ; preds = %bb.cr, %bb.cq, %bb.cp, %_ZN11CStringBaseIwED2Ev.exit.i427
  %.pn212 = phi { ptr, i32 } [ %i.lv, %_ZN11CStringBaseIwED2Ev.exit.i427 ], [ %i.mn, %bb.cp ], [ %i.mo, %bb.cq ], [ %i.mo, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.cs:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit329
  %i.mr = load i32, ptr %i.c, align 4, !tbaa !4
  store i32 %i.mr, ptr %i.ak, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.critedge252

bb.ct:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit326
  %i.ms = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !44
  %i.mu = icmp eq i32 %i.mt, 79
  br i1 %i.mu, label %bb.cu, label %bb.dc

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 8, ptr %i.d, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.mv = load i32, ptr %i.u, align 8, !tbaa !51, !noalias !171 ; 6 uses
  %i.mw = add i32 %i.mv, -1                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.mx = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc452 unwind label %bb.cy ; 5 uses

.noexc452:                                        ; preds = %bb.cu
  store ptr %i.mx, ptr %12, align 8, !tbaa !41, !alias.scope !174
  store i32 0, ptr %i.mx, align 4, !tbaa !44, !noalias !174
  store i32 4, ptr %i.af, align 4, !tbaa !46, !alias.scope !174
  %i.my = icmp eq i32 %i.mv, 4
  br i1 %i.my, label %.lr.ph.i447, label %bb.cv

bb.cv:                                            ; preds = %.noexc452
  %i.mz = zext nneg i32 %i.mv to i64
  %i.na = icmp slt i32 %i.mv, 0
  %i.nb = shl nuw nsw i64 %i.mz, 2
  %i.nc = select i1 %i.na, i64 -1, i64 %i.nb
  %i.nd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nc) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i443 unwind label %_ZN11CStringBaseIwED2Ev.exit.i442, !noalias !174 ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i443:     ; preds = %bb.cv
  call void @_ZdaPv(ptr noundef nonnull %i.mx) #21, !noalias !174
  store ptr %i.nd, ptr %12, align 8, !tbaa !41, !alias.scope !174
  store i32 0, ptr %i.nd, align 4, !tbaa !44, !noalias !174
  store i32 %i.mv, ptr %i.af, align 4, !tbaa !46, !alias.scope !174
  %i.ne = icmp sgt i32 %i.mv, 1
  br i1 %i.ne, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i443..lr.ph.i447_crit_edge, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i444

_ZN11CStringBaseIwE11SetCapacityEi.exit.i443..lr.ph.i447_crit_edge: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i443
  %.pre = load ptr, ptr %4, align 8, !tbaa !41, !noalias !174
  br label %.lr.ph.i447

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i444: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i443
  %.pre.i445 = sext i32 %i.mw to i64
  br label %.loopexit521

.lr.ph.i447:                                      ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i443..lr.ph.i447_crit_edge, %.noexc452
  %i.nf = phi ptr [ %.pre, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i443..lr.ph.i447_crit_edge ], [ %i.ms, %.noexc452 ] ; 2 uses
  %i.ng = phi ptr [ %i.nd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i443..lr.ph.i447_crit_edge ], [ %i.mx, %.noexc452 ] ; 10 uses
  %i.nh = zext i32 %i.mw to i64                   ; 8 uses
  %invariant.gep.i448 = getelementptr i8, ptr %i.nf, i64 4 ; 6 uses
  %min.iters.check722 = icmp ult i32 %i.mw, 8
  br i1 %min.iters.check722, label %scalar.ph721.preheader, label %vector.memcheck719

vector.memcheck719:                               ; preds = %.lr.ph.i447
  %i.ni = ptrtoaddr ptr %i.nf to i64
  %i.nj = ptrtoaddr ptr %i.ng to i64
  %i.nk = add i64 %i.nj, -4
  %i.nl = sub i64 %i.nk, %i.ni
  %diff.check720 = icmp ult i64 %i.nl, 32
  br i1 %diff.check720, label %scalar.ph721.preheader, label %vector.ph723

vector.ph723:                                     ; preds = %vector.memcheck719
  %n.vec725 = and i64 %i.nh, 2147483640           ; 3 uses
  br label %vector.body726

vector.body726:                                   ; preds = %vector.body726, %vector.ph723
  %index727 = phi i64 [ 0, %vector.ph723 ], [ %index.next730, %vector.body726 ] ; 3 uses
  %i.nm = getelementptr [4 x i8], ptr %invariant.gep.i448, i64 %index727 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 16
  %wide.load728 = load <4 x i32>, ptr %i.nm, align 4, !tbaa !44, !noalias !174
  %wide.load729 = load <4 x i32>, ptr %i.nn, align 4, !tbaa !44, !noalias !174
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %index727 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store <4 x i32> %wide.load728, ptr %i.no, align 4, !tbaa !44, !noalias !174
  store <4 x i32> %wide.load729, ptr %i.np, align 4, !tbaa !44, !noalias !174
  %index.next730 = add nuw i64 %index727, 8       ; 2 uses
  %i.nq = icmp eq i64 %index.next730, %n.vec725
  br i1 %i.nq, label %middle.block731, label %vector.body726, !llvm.loop !177

middle.block731:                                  ; preds = %vector.body726
  %cmp.n732 = icmp eq i64 %n.vec725, %i.nh
  br i1 %cmp.n732, label %.loopexit521, label %scalar.ph721.preheader

scalar.ph721.preheader:                           ; preds = %vector.memcheck719, %.lr.ph.i447, %middle.block731
  %indvars.iv.i449.ph = phi i64 [ 0, %vector.memcheck719 ], [ 0, %.lr.ph.i447 ], [ %n.vec725, %middle.block731 ] ; 3 uses
  %xtraiter800 = and i64 %i.nh, 3                 ; 2 uses
  %lcmp.mod801.not = icmp eq i64 %xtraiter800, 0
  br i1 %lcmp.mod801.not, label %scalar.ph721.prol.loopexit, label %scalar.ph721.prol

scalar.ph721.prol:                                ; preds = %scalar.ph721.preheader, %scalar.ph721.prol
  %indvars.iv.i449.prol = phi i64 [ %indvars.iv.next.i451.prol, %scalar.ph721.prol ], [ %indvars.iv.i449.ph, %scalar.ph721.preheader ] ; 3 uses
  %prol.iter802 = phi i64 [ %prol.iter802.next, %scalar.ph721.prol ], [ 0, %scalar.ph721.preheader ]
  %gep.i450.prol = getelementptr [4 x i8], ptr %invariant.gep.i448, i64 %indvars.iv.i449.prol
  %i.nr = load i32, ptr %gep.i450.prol, align 4, !tbaa !44, !noalias !174
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.i449.prol
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !44, !noalias !174
  %indvars.iv.next.i451.prol = add nuw nsw i64 %indvars.iv.i449.prol, 1 ; 2 uses
  %prol.iter802.next = add i64 %prol.iter802, 1   ; 2 uses
  %prol.iter802.cmp.not = icmp eq i64 %prol.iter802.next, %xtraiter800
  br i1 %prol.iter802.cmp.not, label %scalar.ph721.prol.loopexit, label %scalar.ph721.prol, !llvm.loop !178

scalar.ph721.prol.loopexit:                       ; preds = %scalar.ph721.prol, %scalar.ph721.preheader
  %indvars.iv.i449.unr = phi i64 [ %indvars.iv.i449.ph, %scalar.ph721.preheader ], [ %indvars.iv.next.i451.prol, %scalar.ph721.prol ]
  %i.nt = sub nsw i64 %indvars.iv.i449.ph, %i.nh
  %i.nu = icmp ugt i64 %i.nt, -4
  br i1 %i.nu, label %.loopexit521, label %scalar.ph721

_ZN11CStringBaseIwED2Ev.exit.i442:                ; preds = %bb.cv
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.mx) #21, !noalias !174
  br label %.body453

scalar.ph721:                                     ; preds = %scalar.ph721.prol.loopexit, %scalar.ph721
  %indvars.iv.i449 = phi i64 [ %indvars.iv.next.i451.3, %scalar.ph721 ], [ %indvars.iv.i449.unr, %scalar.ph721.prol.loopexit ] ; 6 uses
  %gep.i450 = getelementptr [4 x i8], ptr %invariant.gep.i448, i64 %indvars.iv.i449
  %i.nw = load i32, ptr %gep.i450, align 4, !tbaa !44, !noalias !174
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.i449
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !44, !noalias !174
  %indvars.iv.next.i451 = add nuw nsw i64 %indvars.iv.i449, 1 ; 2 uses
  %gep.i450.1 = getelementptr [4 x i8], ptr %invariant.gep.i448, i64 %indvars.iv.next.i451
  %i.ny = load i32, ptr %gep.i450.1, align 4, !tbaa !44, !noalias !174
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next.i451
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !44, !noalias !174
  %indvars.iv.next.i451.1 = add nuw nsw i64 %indvars.iv.i449, 2 ; 2 uses
  %gep.i450.2 = getelementptr [4 x i8], ptr %invariant.gep.i448, i64 %indvars.iv.next.i451.1
  %i.oa = load i32, ptr %gep.i450.2, align 4, !tbaa !44, !noalias !174
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next.i451.1
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !44, !noalias !174
  %indvars.iv.next.i451.2 = add nuw nsw i64 %indvars.iv.i449, 3 ; 2 uses
  %gep.i450.3 = getelementptr [4 x i8], ptr %invariant.gep.i448, i64 %indvars.iv.next.i451.2
  %i.oc = load i32, ptr %gep.i450.3, align 4, !tbaa !44, !noalias !174
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next.i451.2
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !44, !noalias !174
  %indvars.iv.next.i451.3 = add nuw nsw i64 %indvars.iv.i449, 4 ; 2 uses
  %exitcond564.not.3 = icmp eq i64 %indvars.iv.next.i451.3, %i.nh
  br i1 %exitcond564.not.3, label %.loopexit521, label %scalar.ph721, !llvm.loop !179

.loopexit521:                                     ; preds = %scalar.ph721.prol.loopexit, %scalar.ph721, %middle.block731, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i444
  %i.oe = phi ptr [ %i.nd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i444 ], [ %i.ng, %middle.block731 ], [ %i.ng, %scalar.ph721 ], [ %i.ng, %scalar.ph721.prol.loopexit ]
  %.pre-phi.i446 = phi i64 [ %.pre.i445, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i444 ], [ %i.nh, %middle.block731 ], [ %i.nh, %scalar.ph721 ], [ %i.nh, %scalar.ph721.prol.loopexit ]
  %i.of = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %.pre-phi.i446
  store i32 0, ptr %i.of, align 4, !tbaa !44, !noalias !174
  store i32 %i.mw, ptr %i.ag, align 8, !tbaa !51, !alias.scope !174
  %i.og = invoke noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.cw unwind label %bb.cz     ; 2 uses

bb.cw:                                            ; preds = %.loopexit521
  %i.oh = load ptr, ptr %12, align 8, !tbaa !41   ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %_ZN11CStringBaseIwED2Ev.exit334, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_ZdaPv(ptr noundef nonnull %i.oh) #21
  br label %_ZN11CStringBaseIwED2Ev.exit334

_ZN11CStringBaseIwED2Ev.exit334:                  ; preds = %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %.not211 = icmp eq i32 %i.og, 0
  br i1 %.not211, label %bb.db, label %.critedge236

bb.cy:                                            ; preds = %bb.cu
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body453

bb.cz:                                            ; preds = %.loopexit521
  %i.ok = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ol = load ptr, ptr %12, align 8, !tbaa !41   ; 2 uses
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %.body453, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZdaPv(ptr noundef nonnull %i.ol) #21
  br label %.body453

.body453:                                         ; preds = %bb.da, %bb.cz, %bb.cy, %_ZN11CStringBaseIwED2Ev.exit.i442
  %.pn209 = phi { ptr, i32 } [ %i.nv, %_ZN11CStringBaseIwED2Ev.exit.i442 ], [ %i.oj, %bb.cy ], [ %i.ok, %bb.cz ], [ %i.ok, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.db:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit334
  %i.on = load i32, ptr %i.d, align 4, !tbaa !4
  store i32 %i.on, ptr %i.ah, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %.critedge252

bb.dc:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef 4)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit337 unwind label %bb.dj

_ZNK11CStringBaseIwE4LeftEi.exit337:              ; preds = %bb.dc
  %i.oo = load ptr, ptr %13, align 8, !tbaa !41
  %i.op = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.oo, ptr noundef nonnull @.str.14)
          to label %bb.dd unwind label %bb.dk

bb.dd:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit337
  %i.oq = icmp eq i32 %i.op, 0
  %i.or = load ptr, ptr %13, align 8, !tbaa !41   ; 2 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %_ZN11CStringBaseIwED2Ev.exit340, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZdaPv(ptr noundef nonnull %i.or) #21
  br label %_ZN11CStringBaseIwED2Ev.exit340

_ZN11CStringBaseIwED2Ev.exit340:                  ; preds = %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br i1 %i.oq, label %bb.df, label %bb.dq

bb.df:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 10, ptr %i.e, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ot = load i32, ptr %i.u, align 8, !tbaa !51, !noalias !180 ; 4 uses
  %i.ou = add i32 %i.ot, -4                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.ov = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc467 unwind label %bb.dm ; 5 uses

.noexc467:                                        ; preds = %bb.df
  store ptr %i.ov, ptr %14, align 8, !tbaa !41, !alias.scope !183
  store i32 0, ptr %i.ov, align 4, !tbaa !44, !noalias !183
  store i32 4, ptr %i.ac, align 4, !tbaa !46, !alias.scope !183
  %i.ow = add nsw i32 %i.ot, -3                   ; 3 uses
  %i.ox = icmp eq i32 %i.ow, 4
  br i1 %i.ox, label %.lr.ph.i462, label %bb.dg

bb.dg:                                            ; preds = %.noexc467
  %i.oy = zext nneg i32 %i.ow to i64
  %i.oz = icmp slt i32 %i.ot, 3
  %i.pa = shl nuw nsw i64 %i.oy, 2
  %i.pb = select i1 %i.oz, i64 -1, i64 %i.pa
  %i.pc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pb) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i458 unwind label %_ZN11CStringBaseIwED2Ev.exit.i457, !noalias !183 ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i458:     ; preds = %bb.dg
  call void @_ZdaPv(ptr noundef nonnull %i.ov) #21, !noalias !183
  store ptr %i.pc, ptr %14, align 8, !tbaa !41, !alias.scope !183
  store i32 0, ptr %i.pc, align 4, !tbaa !44, !noalias !183
  store i32 %i.ow, ptr %i.ac, align 4, !tbaa !46, !alias.scope !183
  %i.pd = icmp sgt i32 %i.ot, 4
  br i1 %i.pd, label %.lr.ph.i462, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i459

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i459: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i458
  %.pre.i460 = sext i32 %i.ou to i64
  br label %.loopexit522

.lr.ph.i462:                                      ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i458, %.noexc467
  %i.pe = phi ptr [ %i.pc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i458 ], [ %i.ov, %.noexc467 ] ; 10 uses
  %i.pf = load ptr, ptr %4, align 8, !tbaa !41, !noalias !183 ; 2 uses
  %i.pg = zext i32 %i.ou to i64                   ; 8 uses
  %invariant.gep.i463 = getelementptr i8, ptr %i.pf, i64 16 ; 6 uses
  %min.iters.check737 = icmp ult i32 %i.ou, 8
  br i1 %min.iters.check737, label %scalar.ph736.preheader, label %vector.memcheck734

vector.memcheck734:                               ; preds = %.lr.ph.i462
  %i.ph = ptrtoaddr ptr %i.pf to i64
  %i.pi = ptrtoaddr ptr %i.pe to i64
  %i.pj = add i64 %i.pi, -16
  %i.pk = sub i64 %i.pj, %i.ph
  %diff.check735 = icmp ult i64 %i.pk, 32
  br i1 %diff.check735, label %scalar.ph736.preheader, label %vector.ph738

vector.ph738:                                     ; preds = %vector.memcheck734
  %n.vec740 = and i64 %i.pg, 2147483640           ; 3 uses
  br label %vector.body741

vector.body741:                                   ; preds = %vector.body741, %vector.ph738
  %index742 = phi i64 [ 0, %vector.ph738 ], [ %index.next745, %vector.body741 ] ; 3 uses
  %i.pl = getelementptr [4 x i8], ptr %invariant.gep.i463, i64 %index742 ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 16
  %wide.load743 = load <4 x i32>, ptr %i.pl, align 4, !tbaa !44, !noalias !183
  %wide.load744 = load <4 x i32>, ptr %i.pm, align 4, !tbaa !44, !noalias !183
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %index742 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  store <4 x i32> %wide.load743, ptr %i.pn, align 4, !tbaa !44, !noalias !183
  store <4 x i32> %wide.load744, ptr %i.po, align 4, !tbaa !44, !noalias !183
  %index.next745 = add nuw i64 %index742, 8       ; 2 uses
  %i.pp = icmp eq i64 %index.next745, %n.vec740
  br i1 %i.pp, label %middle.block746, label %vector.body741, !llvm.loop !186

middle.block746:                                  ; preds = %vector.body741
  %cmp.n747 = icmp eq i64 %n.vec740, %i.pg
  br i1 %cmp.n747, label %.loopexit522, label %scalar.ph736.preheader

scalar.ph736.preheader:                           ; preds = %vector.memcheck734, %.lr.ph.i462, %middle.block746
  %indvars.iv.i464.ph = phi i64 [ 0, %vector.memcheck734 ], [ 0, %.lr.ph.i462 ], [ %n.vec740, %middle.block746 ] ; 3 uses
  %xtraiter797 = and i64 %i.pg, 3                 ; 2 uses
  %lcmp.mod798.not = icmp eq i64 %xtraiter797, 0
  br i1 %lcmp.mod798.not, label %scalar.ph736.prol.loopexit, label %scalar.ph736.prol

scalar.ph736.prol:                                ; preds = %scalar.ph736.preheader, %scalar.ph736.prol
  %indvars.iv.i464.prol = phi i64 [ %indvars.iv.next.i466.prol, %scalar.ph736.prol ], [ %indvars.iv.i464.ph, %scalar.ph736.preheader ] ; 3 uses
  %prol.iter799 = phi i64 [ %prol.iter799.next, %scalar.ph736.prol ], [ 0, %scalar.ph736.preheader ]
  %gep.i465.prol = getelementptr [4 x i8], ptr %invariant.gep.i463, i64 %indvars.iv.i464.prol
  %i.pq = load i32, ptr %gep.i465.prol, align 4, !tbaa !44, !noalias !183
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv.i464.prol
  store i32 %i.pq, ptr %i.pr, align 4, !tbaa !44, !noalias !183
  %indvars.iv.next.i466.prol = add nuw nsw i64 %indvars.iv.i464.prol, 1 ; 2 uses
  %prol.iter799.next = add i64 %prol.iter799, 1   ; 2 uses
  %prol.iter799.cmp.not = icmp eq i64 %prol.iter799.next, %xtraiter797
  br i1 %prol.iter799.cmp.not, label %scalar.ph736.prol.loopexit, label %scalar.ph736.prol, !llvm.loop !187

scalar.ph736.prol.loopexit:                       ; preds = %scalar.ph736.prol, %scalar.ph736.preheader
  %indvars.iv.i464.unr = phi i64 [ %indvars.iv.i464.ph, %scalar.ph736.preheader ], [ %indvars.iv.next.i466.prol, %scalar.ph736.prol ]
  %i.ps = sub nsw i64 %indvars.iv.i464.ph, %i.pg
  %i.pt = icmp ugt i64 %i.ps, -4
  br i1 %i.pt, label %.loopexit522, label %scalar.ph736

_ZN11CStringBaseIwED2Ev.exit.i457:                ; preds = %bb.dg
  %i.pu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.ov) #21, !noalias !183
  br label %.body468

scalar.ph736:                                     ; preds = %scalar.ph736.prol.loopexit, %scalar.ph736
  %indvars.iv.i464 = phi i64 [ %indvars.iv.next.i466.3, %scalar.ph736 ], [ %indvars.iv.i464.unr, %scalar.ph736.prol.loopexit ] ; 6 uses
  %gep.i465 = getelementptr [4 x i8], ptr %invariant.gep.i463, i64 %indvars.iv.i464
  %i.pv = load i32, ptr %gep.i465, align 4, !tbaa !44, !noalias !183
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv.i464
  store i32 %i.pv, ptr %i.pw, align 4, !tbaa !44, !noalias !183
  %indvars.iv.next.i466 = add nuw nsw i64 %indvars.iv.i464, 1 ; 2 uses
  %gep.i465.1 = getelementptr [4 x i8], ptr %invariant.gep.i463, i64 %indvars.iv.next.i466
  %i.px = load i32, ptr %gep.i465.1, align 4, !tbaa !44, !noalias !183
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv.next.i466
  store i32 %i.px, ptr %i.py, align 4, !tbaa !44, !noalias !183
  %indvars.iv.next.i466.1 = add nuw nsw i64 %indvars.iv.i464, 2 ; 2 uses
  %gep.i465.2 = getelementptr [4 x i8], ptr %invariant.gep.i463, i64 %indvars.iv.next.i466.1
  %i.pz = load i32, ptr %gep.i465.2, align 4, !tbaa !44, !noalias !183
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv.next.i466.1
  store i32 %i.pz, ptr %i.qa, align 4, !tbaa !44, !noalias !183
  %indvars.iv.next.i466.2 = add nuw nsw i64 %indvars.iv.i464, 3 ; 2 uses
  %gep.i465.3 = getelementptr [4 x i8], ptr %invariant.gep.i463, i64 %indvars.iv.next.i466.2
  %i.qb = load i32, ptr %gep.i465.3, align 4, !tbaa !44, !noalias !183
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv.next.i466.2
  store i32 %i.qb, ptr %i.qc, align 4, !tbaa !44, !noalias !183
  %indvars.iv.next.i466.3 = add nuw nsw i64 %indvars.iv.i464, 4 ; 2 uses
  %exitcond562.not.3 = icmp eq i64 %indvars.iv.next.i466.3, %i.pg
  br i1 %exitcond562.not.3, label %.loopexit522, label %scalar.ph736, !llvm.loop !188

.loopexit522:                                     ; preds = %scalar.ph736.prol.loopexit, %scalar.ph736, %middle.block746, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i459
  %i.qd = phi ptr [ %i.pc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i459 ], [ %i.pe, %middle.block746 ], [ %i.pe, %scalar.ph736 ], [ %i.pe, %scalar.ph736.prol.loopexit ]
  %.pre-phi.i461 = phi i64 [ %.pre.i460, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i459 ], [ %i.pg, %middle.block746 ], [ %i.pg, %scalar.ph736 ], [ %i.pg, %scalar.ph736.prol.loopexit ]
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %.pre-phi.i461
  store i32 0, ptr %i.qe, align 4, !tbaa !44, !noalias !183
  store i32 %i.ou, ptr %i.ad, align 8, !tbaa !51, !alias.scope !183
  %i.qf = invoke noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.dh unwind label %bb.dn     ; 2 uses

bb.dh:                                            ; preds = %.loopexit522
  %i.qg = load ptr, ptr %14, align 8, !tbaa !41   ; 2 uses
  %i.qh = icmp eq ptr %i.qg, null
  br i1 %i.qh, label %_ZN11CStringBaseIwED2Ev.exit343, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_ZdaPv(ptr noundef nonnull %i.qg) #21
  br label %_ZN11CStringBaseIwED2Ev.exit343

_ZN11CStringBaseIwED2Ev.exit343:                  ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %.not208 = icmp eq i32 %i.qf, 0
  br i1 %.not208, label %bb.dp, label %.critedge239

bb.dj:                                            ; preds = %bb.dc
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit344

bb.dk:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit337
  %i.qj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qk = load ptr, ptr %13, align 8, !tbaa !41   ; 2 uses
  %i.ql = icmp eq ptr %i.qk, null
  br i1 %i.ql, label %_ZN11CStringBaseIwED2Ev.exit344, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZdaPv(ptr noundef nonnull %i.qk) #21
  br label %_ZN11CStringBaseIwED2Ev.exit344

_ZN11CStringBaseIwED2Ev.exit344:                  ; preds = %bb.dl, %bb.dk, %bb.dj
  %.pn182 = phi { ptr, i32 } [ %i.qi, %bb.dj ], [ %i.qj, %bb.dk ], [ %i.qj, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.dm:                                            ; preds = %bb.df
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %.body468

bb.dn:                                            ; preds = %.loopexit522
  %i.qn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qo = load ptr, ptr %14, align 8, !tbaa !41   ; 2 uses
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %.body468, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZdaPv(ptr noundef nonnull %i.qo) #21
  br label %.body468

.body468:                                         ; preds = %bb.do, %bb.dn, %bb.dm, %_ZN11CStringBaseIwED2Ev.exit.i457
  %.pn206 = phi { ptr, i32 } [ %i.pu, %_ZN11CStringBaseIwED2Ev.exit.i457 ], [ %i.qm, %bb.dm ], [ %i.qn, %bb.dn ], [ %i.qn, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.dp:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit343
  %i.qq = load i32, ptr %i.e, align 4, !tbaa !4
  store i32 %i.qq, ptr %i.ae, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %.critedge252

bb.dq:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit340
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef 2)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit347 unwind label %bb.dx

_ZNK11CStringBaseIwE4LeftEi.exit347:              ; preds = %bb.dq
  %i.qr = load ptr, ptr %15, align 8, !tbaa !41
  %i.qs = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.qr, ptr noundef nonnull @.str.15)
          to label %bb.dr unwind label %bb.dy

bb.dr:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit347
  %i.qt = icmp eq i32 %i.qs, 0
  %i.qu = load ptr, ptr %15, align 8, !tbaa !41   ; 2 uses
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %_ZN11CStringBaseIwED2Ev.exit350, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_ZdaPv(ptr noundef nonnull %i.qu) #21
  br label %_ZN11CStringBaseIwED2Ev.exit350

_ZN11CStringBaseIwED2Ev.exit350:                  ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br i1 %i.qt, label %bb.dt, label %bb.ee

bb.dt:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i32 128, ptr %i.f, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.qw = load i32, ptr %i.u, align 8, !tbaa !51, !noalias !189 ; 4 uses
  %i.qx = add i32 %i.qw, -2                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.qy = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc482 unwind label %bb.ea ; 5 uses

.noexc482:                                        ; preds = %bb.dt
  store ptr %i.qy, ptr %16, align 8, !tbaa !41, !alias.scope !192
  store i32 0, ptr %i.qy, align 4, !tbaa !44, !noalias !192
  store i32 4, ptr %i.z, align 4, !tbaa !46, !alias.scope !192
  %i.qz = add nsw i32 %i.qw, -1                   ; 3 uses
  %i.ra = icmp eq i32 %i.qz, 4
  br i1 %i.ra, label %.lr.ph.i477, label %bb.du

bb.du:                                            ; preds = %.noexc482
  %i.rb = zext nneg i32 %i.qz to i64
  %i.rc = icmp slt i32 %i.qw, 1
  %i.rd = shl nuw nsw i64 %i.rb, 2
  %i.re = select i1 %i.rc, i64 -1, i64 %i.rd
  %i.rf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.re) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i473 unwind label %_ZN11CStringBaseIwED2Ev.exit.i472, !noalias !192 ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i473:     ; preds = %bb.du
  call void @_ZdaPv(ptr noundef nonnull %i.qy) #21, !noalias !192
  store ptr %i.rf, ptr %16, align 8, !tbaa !41, !alias.scope !192
  store i32 0, ptr %i.rf, align 4, !tbaa !44, !noalias !192
  store i32 %i.qz, ptr %i.z, align 4, !tbaa !46, !alias.scope !192
  %i.rg = icmp sgt i32 %i.qw, 2
  br i1 %i.rg, label %.lr.ph.i477, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i474

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i474: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i473
  %.pre.i475 = sext i32 %i.qx to i64
  br label %.loopexit523

.lr.ph.i477:                                      ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i473, %.noexc482
  %i.rh = phi ptr [ %i.rf, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i473 ], [ %i.qy, %.noexc482 ] ; 10 uses
  %i.ri = load ptr, ptr %4, align 8, !tbaa !41, !noalias !192 ; 2 uses
  %i.rj = zext i32 %i.qx to i64                   ; 8 uses
  %invariant.gep.i478 = getelementptr i8, ptr %i.ri, i64 8 ; 6 uses
  %min.iters.check752 = icmp ult i32 %i.qx, 8
  br i1 %min.iters.check752, label %scalar.ph751.preheader, label %vector.memcheck749

vector.memcheck749:                               ; preds = %.lr.ph.i477
  %i.rk = ptrtoaddr ptr %i.ri to i64
  %i.rl = ptrtoaddr ptr %i.rh to i64
  %i.rm = add i64 %i.rl, -8
  %i.rn = sub i64 %i.rm, %i.rk
  %diff.check750 = icmp ult i64 %i.rn, 32
  br i1 %diff.check750, label %scalar.ph751.preheader, label %vector.ph753

vector.ph753:                                     ; preds = %vector.memcheck749
  %n.vec755 = and i64 %i.rj, 2147483640           ; 3 uses
  br label %vector.body756

vector.body756:                                   ; preds = %vector.body756, %vector.ph753
  %index757 = phi i64 [ 0, %vector.ph753 ], [ %index.next760, %vector.body756 ] ; 3 uses
  %i.ro = getelementptr [4 x i8], ptr %invariant.gep.i478, i64 %index757 ; 2 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 16
  %wide.load758 = load <4 x i32>, ptr %i.ro, align 4, !tbaa !44, !noalias !192
  %wide.load759 = load <4 x i32>, ptr %i.rp, align 4, !tbaa !44, !noalias !192
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %index757 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store <4 x i32> %wide.load758, ptr %i.rq, align 4, !tbaa !44, !noalias !192
  store <4 x i32> %wide.load759, ptr %i.rr, align 4, !tbaa !44, !noalias !192
  %index.next760 = add nuw i64 %index757, 8       ; 2 uses
  %i.rs = icmp eq i64 %index.next760, %n.vec755
  br i1 %i.rs, label %middle.block761, label %vector.body756, !llvm.loop !195

middle.block761:                                  ; preds = %vector.body756
  %cmp.n762 = icmp eq i64 %n.vec755, %i.rj
  br i1 %cmp.n762, label %.loopexit523, label %scalar.ph751.preheader

scalar.ph751.preheader:                           ; preds = %vector.memcheck749, %.lr.ph.i477, %middle.block761
  %indvars.iv.i479.ph = phi i64 [ 0, %vector.memcheck749 ], [ 0, %.lr.ph.i477 ], [ %n.vec755, %middle.block761 ] ; 3 uses
  %xtraiter794 = and i64 %i.rj, 3                 ; 2 uses
  %lcmp.mod795.not = icmp eq i64 %xtraiter794, 0
  br i1 %lcmp.mod795.not, label %scalar.ph751.prol.loopexit, label %scalar.ph751.prol

scalar.ph751.prol:                                ; preds = %scalar.ph751.preheader, %scalar.ph751.prol
  %indvars.iv.i479.prol = phi i64 [ %indvars.iv.next.i481.prol, %scalar.ph751.prol ], [ %indvars.iv.i479.ph, %scalar.ph751.preheader ] ; 3 uses
  %prol.iter796 = phi i64 [ %prol.iter796.next, %scalar.ph751.prol ], [ 0, %scalar.ph751.preheader ]
  %gep.i480.prol = getelementptr [4 x i8], ptr %invariant.gep.i478, i64 %indvars.iv.i479.prol
  %i.rt = load i32, ptr %gep.i480.prol, align 4, !tbaa !44, !noalias !192
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.i479.prol
  store i32 %i.rt, ptr %i.ru, align 4, !tbaa !44, !noalias !192
  %indvars.iv.next.i481.prol = add nuw nsw i64 %indvars.iv.i479.prol, 1 ; 2 uses
  %prol.iter796.next = add i64 %prol.iter796, 1   ; 2 uses
  %prol.iter796.cmp.not = icmp eq i64 %prol.iter796.next, %xtraiter794
  br i1 %prol.iter796.cmp.not, label %scalar.ph751.prol.loopexit, label %scalar.ph751.prol, !llvm.loop !196

scalar.ph751.prol.loopexit:                       ; preds = %scalar.ph751.prol, %scalar.ph751.preheader
  %indvars.iv.i479.unr = phi i64 [ %indvars.iv.i479.ph, %scalar.ph751.preheader ], [ %indvars.iv.next.i481.prol, %scalar.ph751.prol ]
  %i.rv = sub nsw i64 %indvars.iv.i479.ph, %i.rj
  %i.rw = icmp ugt i64 %i.rv, -4
  br i1 %i.rw, label %.loopexit523, label %scalar.ph751

_ZN11CStringBaseIwED2Ev.exit.i472:                ; preds = %bb.du
  %i.rx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.qy) #21, !noalias !192
  br label %.body483

scalar.ph751:                                     ; preds = %scalar.ph751.prol.loopexit, %scalar.ph751
  %indvars.iv.i479 = phi i64 [ %indvars.iv.next.i481.3, %scalar.ph751 ], [ %indvars.iv.i479.unr, %scalar.ph751.prol.loopexit ] ; 6 uses
  %gep.i480 = getelementptr [4 x i8], ptr %invariant.gep.i478, i64 %indvars.iv.i479
  %i.ry = load i32, ptr %gep.i480, align 4, !tbaa !44, !noalias !192
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.i479
  store i32 %i.ry, ptr %i.rz, align 4, !tbaa !44, !noalias !192
  %indvars.iv.next.i481 = add nuw nsw i64 %indvars.iv.i479, 1 ; 2 uses
  %gep.i480.1 = getelementptr [4 x i8], ptr %invariant.gep.i478, i64 %indvars.iv.next.i481
  %i.sa = load i32, ptr %gep.i480.1, align 4, !tbaa !44, !noalias !192
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next.i481
  store i32 %i.sa, ptr %i.sb, align 4, !tbaa !44, !noalias !192
  %indvars.iv.next.i481.1 = add nuw nsw i64 %indvars.iv.i479, 2 ; 2 uses
  %gep.i480.2 = getelementptr [4 x i8], ptr %invariant.gep.i478, i64 %indvars.iv.next.i481.1
  %i.sc = load i32, ptr %gep.i480.2, align 4, !tbaa !44, !noalias !192
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next.i481.1
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !44, !noalias !192
  %indvars.iv.next.i481.2 = add nuw nsw i64 %indvars.iv.i479, 3 ; 2 uses
  %gep.i480.3 = getelementptr [4 x i8], ptr %invariant.gep.i478, i64 %indvars.iv.next.i481.2
  %i.se = load i32, ptr %gep.i480.3, align 4, !tbaa !44, !noalias !192
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next.i481.2
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !44, !noalias !192
  %indvars.iv.next.i481.3 = add nuw nsw i64 %indvars.iv.i479, 4 ; 2 uses
  %exitcond560.not.3 = icmp eq i64 %indvars.iv.next.i481.3, %i.rj
  br i1 %exitcond560.not.3, label %.loopexit523, label %scalar.ph751, !llvm.loop !197

.loopexit523:                                     ; preds = %scalar.ph751.prol.loopexit, %scalar.ph751, %middle.block761, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i474
  %i.sg = phi ptr [ %i.rf, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i474 ], [ %i.rh, %middle.block761 ], [ %i.rh, %scalar.ph751 ], [ %i.rh, %scalar.ph751.prol.loopexit ]
  %.pre-phi.i476 = phi i64 [ %.pre.i475, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i474 ], [ %i.rj, %middle.block761 ], [ %i.rj, %scalar.ph751 ], [ %i.rj, %scalar.ph751.prol.loopexit ]
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %.pre-phi.i476
  store i32 0, ptr %i.sh, align 4, !tbaa !44, !noalias !192
  store i32 %i.qx, ptr %i.aa, align 8, !tbaa !51, !alias.scope !192
  %i.si = invoke noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.dv unwind label %bb.eb     ; 2 uses

bb.dv:                                            ; preds = %.loopexit523
  %i.sj = load ptr, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %_ZN11CStringBaseIwED2Ev.exit353, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_ZdaPv(ptr noundef nonnull %i.sj) #21
  br label %_ZN11CStringBaseIwED2Ev.exit353

_ZN11CStringBaseIwED2Ev.exit353:                  ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %.not205 = icmp eq i32 %i.si, 0
  br i1 %.not205, label %bb.ed, label %.critedge242

bb.dx:                                            ; preds = %bb.dq
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit354

bb.dy:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit347
  %i.sm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sn = load ptr, ptr %15, align 8, !tbaa !41   ; 2 uses
  %i.so = icmp eq ptr %i.sn, null
  br i1 %i.so, label %_ZN11CStringBaseIwED2Ev.exit354, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_ZdaPv(ptr noundef nonnull %i.sn) #21
  br label %_ZN11CStringBaseIwED2Ev.exit354

_ZN11CStringBaseIwED2Ev.exit354:                  ; preds = %bb.dz, %bb.dy, %bb.dx
  %.pn184 = phi { ptr, i32 } [ %i.sl, %bb.dx ], [ %i.sm, %bb.dy ], [ %i.sm, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.ea:                                            ; preds = %bb.dt
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %.body483

bb.eb:                                            ; preds = %.loopexit523
  %i.sq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sr = load ptr, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.ss = icmp eq ptr %i.sr, null
  br i1 %i.ss, label %.body483, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_ZdaPv(ptr noundef nonnull %i.sr) #21
  br label %.body483

.body483:                                         ; preds = %bb.ec, %bb.eb, %bb.ea, %_ZN11CStringBaseIwED2Ev.exit.i472
  %.pn203 = phi { ptr, i32 } [ %i.rx, %_ZN11CStringBaseIwED2Ev.exit.i472 ], [ %i.sp, %bb.ea ], [ %i.sq, %bb.eb ], [ %i.sq, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.ed:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit353
  %i.st = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.st, ptr %i.ab, align 4, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %.critedge252

bb.ee:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit350
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef 2)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit357 unwind label %bb.el

_ZNK11CStringBaseIwE4LeftEi.exit357:              ; preds = %bb.ee
  %i.su = load ptr, ptr %17, align 8, !tbaa !41
  %i.sv = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.su, ptr noundef nonnull @.str.16)
          to label %bb.ef unwind label %bb.em

bb.ef:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit357
  %i.sw = icmp eq i32 %i.sv, 0
  %i.sx = load ptr, ptr %17, align 8, !tbaa !41   ; 2 uses
  %i.sy = icmp eq ptr %i.sx, null
  br i1 %i.sy, label %_ZN11CStringBaseIwED2Ev.exit360, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @_ZdaPv(ptr noundef nonnull %i.sx) #21
  br label %_ZN11CStringBaseIwED2Ev.exit360

_ZN11CStringBaseIwED2Ev.exit360:                  ; preds = %bb.ef, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br i1 %i.sw, label %bb.eh, label %bb.es

bb.eh:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i32 -1, ptr %i.g, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.sz = load i32, ptr %i.u, align 8, !tbaa !51, !noalias !198 ; 4 uses
  %i.ta = add i32 %i.sz, -2                       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.tb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %.noexc497 unwind label %bb.eo ; 5 uses

.noexc497:                                        ; preds = %bb.eh
  store ptr %i.tb, ptr %18, align 8, !tbaa !41, !alias.scope !201
  store i32 0, ptr %i.tb, align 4, !tbaa !44, !noalias !201
  store i32 4, ptr %i.w, align 4, !tbaa !46, !alias.scope !201
  %i.tc = add nsw i32 %i.sz, -1                   ; 3 uses
  %i.td = icmp eq i32 %i.tc, 4
  br i1 %i.td, label %.lr.ph.i492, label %bb.ei

bb.ei:                                            ; preds = %.noexc497
  %i.te = zext nneg i32 %i.tc to i64
  %i.tf = icmp slt i32 %i.sz, 1
  %i.tg = shl nuw nsw i64 %i.te, 2
  %i.th = select i1 %i.tf, i64 -1, i64 %i.tg
  %i.ti = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.th) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i488 unwind label %_ZN11CStringBaseIwED2Ev.exit.i487, !noalias !201 ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i488:     ; preds = %bb.ei
  call void @_ZdaPv(ptr noundef nonnull %i.tb) #21, !noalias !201
  store ptr %i.ti, ptr %18, align 8, !tbaa !41, !alias.scope !201
  store i32 0, ptr %i.ti, align 4, !tbaa !44, !noalias !201
  store i32 %i.tc, ptr %i.w, align 4, !tbaa !46, !alias.scope !201
  %i.tj = icmp sgt i32 %i.sz, 2
  br i1 %i.tj, label %.lr.ph.i492, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i489

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i489: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i488
  %.pre.i490 = sext i32 %i.ta to i64
  br label %.loopexit524

.lr.ph.i492:                                      ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i488, %.noexc497
  %i.tk = phi ptr [ %i.ti, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i488 ], [ %i.tb, %.noexc497 ] ; 10 uses
  %i.tl = load ptr, ptr %4, align 8, !tbaa !41, !noalias !201 ; 2 uses
  %i.tm = zext i32 %i.ta to i64                   ; 8 uses
  %invariant.gep.i493 = getelementptr i8, ptr %i.tl, i64 8 ; 6 uses
  %min.iters.check767 = icmp ult i32 %i.ta, 8
  br i1 %min.iters.check767, label %scalar.ph766.preheader, label %vector.memcheck764

vector.memcheck764:                               ; preds = %.lr.ph.i492
  %i.tn = ptrtoaddr ptr %i.tl to i64
  %i.to = ptrtoaddr ptr %i.tk to i64
  %i.tp = add i64 %i.to, -8
  %i.tq = sub i64 %i.tp, %i.tn
  %diff.check765 = icmp ult i64 %i.tq, 32
  br i1 %diff.check765, label %scalar.ph766.preheader, label %vector.ph768

vector.ph768:                                     ; preds = %vector.memcheck764
  %n.vec770 = and i64 %i.tm, 2147483640           ; 3 uses
  br label %vector.body771

vector.body771:                                   ; preds = %vector.body771, %vector.ph768
  %index772 = phi i64 [ 0, %vector.ph768 ], [ %index.next775, %vector.body771 ] ; 3 uses
  %i.tr = getelementptr [4 x i8], ptr %invariant.gep.i493, i64 %index772 ; 2 uses
  %i.ts = getelementptr i8, ptr %i.tr, i64 16
  %wide.load773 = load <4 x i32>, ptr %i.tr, align 4, !tbaa !44, !noalias !201
  %wide.load774 = load <4 x i32>, ptr %i.ts, align 4, !tbaa !44, !noalias !201
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %index772 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store <4 x i32> %wide.load773, ptr %i.tt, align 4, !tbaa !44, !noalias !201
  store <4 x i32> %wide.load774, ptr %i.tu, align 4, !tbaa !44, !noalias !201
  %index.next775 = add nuw i64 %index772, 8       ; 2 uses
  %i.tv = icmp eq i64 %index.next775, %n.vec770
  br i1 %i.tv, label %middle.block776, label %vector.body771, !llvm.loop !204

middle.block776:                                  ; preds = %vector.body771
  %cmp.n777 = icmp eq i64 %n.vec770, %i.tm
  br i1 %cmp.n777, label %.loopexit524, label %scalar.ph766.preheader

scalar.ph766.preheader:                           ; preds = %vector.memcheck764, %.lr.ph.i492, %middle.block776
  %indvars.iv.i494.ph = phi i64 [ 0, %vector.memcheck764 ], [ 0, %.lr.ph.i492 ], [ %n.vec770, %middle.block776 ] ; 3 uses
  %xtraiter = and i64 %i.tm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph766.prol.loopexit, label %scalar.ph766.prol

scalar.ph766.prol:                                ; preds = %scalar.ph766.preheader, %scalar.ph766.prol
  %indvars.iv.i494.prol = phi i64 [ %indvars.iv.next.i496.prol, %scalar.ph766.prol ], [ %indvars.iv.i494.ph, %scalar.ph766.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph766.prol ], [ 0, %scalar.ph766.preheader ]
  %gep.i495.prol = getelementptr [4 x i8], ptr %invariant.gep.i493, i64 %indvars.iv.i494.prol
  %i.tw = load i32, ptr %gep.i495.prol, align 4, !tbaa !44, !noalias !201
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %indvars.iv.i494.prol
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !44, !noalias !201
  %indvars.iv.next.i496.prol = add nuw nsw i64 %indvars.iv.i494.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph766.prol.loopexit, label %scalar.ph766.prol, !llvm.loop !205

scalar.ph766.prol.loopexit:                       ; preds = %scalar.ph766.prol, %scalar.ph766.preheader
  %indvars.iv.i494.unr = phi i64 [ %indvars.iv.i494.ph, %scalar.ph766.preheader ], [ %indvars.iv.next.i496.prol, %scalar.ph766.prol ]
  %i.ty = sub nsw i64 %indvars.iv.i494.ph, %i.tm
  %i.tz = icmp ugt i64 %i.ty, -4
  br i1 %i.tz, label %.loopexit524, label %scalar.ph766

_ZN11CStringBaseIwED2Ev.exit.i487:                ; preds = %bb.ei
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.tb) #21, !noalias !201
  br label %.body498

scalar.ph766:                                     ; preds = %scalar.ph766.prol.loopexit, %scalar.ph766
  %indvars.iv.i494 = phi i64 [ %indvars.iv.next.i496.3, %scalar.ph766 ], [ %indvars.iv.i494.unr, %scalar.ph766.prol.loopexit ] ; 6 uses
  %gep.i495 = getelementptr [4 x i8], ptr %invariant.gep.i493, i64 %indvars.iv.i494
  %i.ub = load i32, ptr %gep.i495, align 4, !tbaa !44, !noalias !201
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %indvars.iv.i494
  store i32 %i.ub, ptr %i.uc, align 4, !tbaa !44, !noalias !201
  %indvars.iv.next.i496 = add nuw nsw i64 %indvars.iv.i494, 1 ; 2 uses
  %gep.i495.1 = getelementptr [4 x i8], ptr %invariant.gep.i493, i64 %indvars.iv.next.i496
  %i.ud = load i32, ptr %gep.i495.1, align 4, !tbaa !44, !noalias !201
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %indvars.iv.next.i496
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !44, !noalias !201
  %indvars.iv.next.i496.1 = add nuw nsw i64 %indvars.iv.i494, 2 ; 2 uses
  %gep.i495.2 = getelementptr [4 x i8], ptr %invariant.gep.i493, i64 %indvars.iv.next.i496.1
  %i.uf = load i32, ptr %gep.i495.2, align 4, !tbaa !44, !noalias !201
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %indvars.iv.next.i496.1
  store i32 %i.uf, ptr %i.ug, align 4, !tbaa !44, !noalias !201
  %indvars.iv.next.i496.2 = add nuw nsw i64 %indvars.iv.i494, 3 ; 2 uses
  %gep.i495.3 = getelementptr [4 x i8], ptr %invariant.gep.i493, i64 %indvars.iv.next.i496.2
  %i.uh = load i32, ptr %gep.i495.3, align 4, !tbaa !44, !noalias !201
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %indvars.iv.next.i496.2
  store i32 %i.uh, ptr %i.ui, align 4, !tbaa !44, !noalias !201
  %indvars.iv.next.i496.3 = add nuw nsw i64 %indvars.iv.i494, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.i496.3, %i.tm
  br i1 %exitcond.not.3, label %.loopexit524, label %scalar.ph766, !llvm.loop !206

.loopexit524:                                     ; preds = %scalar.ph766.prol.loopexit, %scalar.ph766, %middle.block776, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i489
  %i.uj = phi ptr [ %i.ti, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i489 ], [ %i.tk, %middle.block776 ], [ %i.tk, %scalar.ph766 ], [ %i.tk, %scalar.ph766.prol.loopexit ]
  %.pre-phi.i491 = phi i64 [ %.pre.i490, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge.i489 ], [ %i.tm, %middle.block776 ], [ %i.tm, %scalar.ph766 ], [ %i.tm, %scalar.ph766.prol.loopexit ]
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %.pre-phi.i491
  store i32 0, ptr %i.uk, align 4, !tbaa !44, !noalias !201
  store i32 %i.ta, ptr %i.x, align 8, !tbaa !51, !alias.scope !201
  %i.ul = invoke noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.ej unwind label %bb.ep     ; 2 uses

bb.ej:                                            ; preds = %.loopexit524
  %i.um = load ptr, ptr %18, align 8, !tbaa !41   ; 2 uses
  %i.un = icmp eq ptr %i.um, null
  br i1 %i.un, label %_ZN11CStringBaseIwED2Ev.exit363, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZdaPv(ptr noundef nonnull %i.um) #21
  br label %_ZN11CStringBaseIwED2Ev.exit363

_ZN11CStringBaseIwED2Ev.exit363:                  ; preds = %bb.ej, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %.not202 = icmp eq i32 %i.ul, 0
  br i1 %.not202, label %bb.er, label %.critedge245

bb.el:                                            ; preds = %bb.ee
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit364

bb.em:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit357
  %i.up = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uq = load ptr, ptr %17, align 8, !tbaa !41   ; 2 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %_ZN11CStringBaseIwED2Ev.exit364, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @_ZdaPv(ptr noundef nonnull %i.uq) #21
  br label %_ZN11CStringBaseIwED2Ev.exit364

_ZN11CStringBaseIwED2Ev.exit364:                  ; preds = %bb.en, %bb.em, %bb.el
  %.pn186 = phi { ptr, i32 } [ %i.uo, %bb.el ], [ %i.up, %bb.em ], [ %i.up, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.eo:                                            ; preds = %bb.eh
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %.body498

bb.ep:                                            ; preds = %.loopexit524
  %i.ut = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uu = load ptr, ptr %18, align 8, !tbaa !41   ; 2 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %.body498, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @_ZdaPv(ptr noundef nonnull %i.uu) #21
  br label %.body498

.body498:                                         ; preds = %bb.eq, %bb.ep, %bb.eo, %_ZN11CStringBaseIwED2Ev.exit.i487
  %.pn200 = phi { ptr, i32 } [ %i.ua, %_ZN11CStringBaseIwED2Ev.exit.i487 ], [ %i.us, %bb.eo ], [ %i.ut, %bb.ep ], [ %i.ut, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.er:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit363
  %i.uw = load i32, ptr %i.g, align 4, !tbaa !4
  store i32 %i.uw, ptr %i.y, align 8, !tbaa !112
  store i8 1, ptr %i.l, align 4, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %.critedge252

bb.es:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit360
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef 2)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit367 unwind label %bb.ey

_ZNK11CStringBaseIwE4LeftEi.exit367:              ; preds = %bb.es
  %i.ux = load ptr, ptr %19, align 8, !tbaa !41
  %i.uy = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ux, ptr noundef nonnull @.str.17)
          to label %bb.et unwind label %bb.ez

bb.et:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit367
  %i.uz = icmp eq i32 %i.uy, 0
  %i.va = load ptr, ptr %19, align 8, !tbaa !41   ; 2 uses
  %i.vb = icmp eq ptr %i.va, null
  br i1 %i.vb, label %_ZN11CStringBaseIwED2Ev.exit370, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @_ZdaPv(ptr noundef nonnull %i.va) #21
  br label %_ZN11CStringBaseIwED2Ev.exit370

_ZN11CStringBaseIwED2Ev.exit370:                  ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br i1 %i.uz, label %bb.ev, label %bb.fe

bb.ev:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit370
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.vc = load i32, ptr %i.u, align 8, !tbaa !51, !noalias !207
  %i.vd = add nsw i32 %i.vc, -2
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 2, i32 noundef %i.vd)
          to label %_ZNK11CStringBaseIwE3MidEi.exit372 unwind label %bb.fb

_ZNK11CStringBaseIwE3MidEi.exit372:               ; preds = %bb.ev
  %i.ve = invoke noundef i32 @_Z11ParseMtPropRK11CStringBaseIwERK14tagPROPVARIANTjRj(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i32 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.ew unwind label %bb.fc     ; 2 uses

bb.ew:                                            ; preds = %_ZNK11CStringBaseIwE3MidEi.exit372
  %i.vf = load ptr, ptr %20, align 8, !tbaa !41   ; 2 uses
  %i.vg = icmp eq ptr %i.vf, null
  br i1 %i.vg, label %_ZN11CStringBaseIwED2Ev.exit373, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @_ZdaPv(ptr noundef nonnull %i.vf) #21
  br label %_ZN11CStringBaseIwED2Ev.exit373

_ZN11CStringBaseIwED2Ev.exit373:                  ; preds = %bb.ew, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %.not199 = icmp eq i32 %i.ve, 0
  br i1 %.not199, label %.critedge252, label %bb.gi

bb.ey:                                            ; preds = %bb.es
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit374

bb.ez:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit367
  %i.vi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vj = load ptr, ptr %19, align 8, !tbaa !41   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, null
  br i1 %i.vk, label %_ZN11CStringBaseIwED2Ev.exit374, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @_ZdaPv(ptr noundef nonnull %i.vj) #21
  br label %_ZN11CStringBaseIwED2Ev.exit374

_ZN11CStringBaseIwED2Ev.exit374:                  ; preds = %bb.fa, %bb.ez, %bb.ey
  %.pn188 = phi { ptr, i32 } [ %i.vh, %bb.ey ], [ %i.vi, %bb.ez ], [ %i.vi, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.fb:                                            ; preds = %bb.ev
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit375

bb.fc:                                            ; preds = %_ZNK11CStringBaseIwE3MidEi.exit372
  %i.vm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vn = load ptr, ptr %20, align 8, !tbaa !41   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, null
  br i1 %i.vo, label %_ZN11CStringBaseIwED2Ev.exit375, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @_ZdaPv(ptr noundef nonnull %i.vn) #21
  br label %_ZN11CStringBaseIwED2Ev.exit375

_ZN11CStringBaseIwED2Ev.exit375:                  ; preds = %bb.fd, %bb.fc, %bb.fb
  %.pn197 = phi { ptr, i32 } [ %i.vl, %bb.fb ], [ %i.vm, %bb.fc ], [ %i.vm, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.fe:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit370
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef 1)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit377 unwind label %bb.fk

_ZNK11CStringBaseIwE4LeftEi.exit377:              ; preds = %bb.fe
  %i.vp = load ptr, ptr %21, align 8, !tbaa !41
  %i.vq = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.vp, ptr noundef nonnull @.str.18)
          to label %bb.ff unwind label %bb.fl

bb.ff:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit377
  %i.vr = icmp eq i32 %i.vq, 0
  %i.vs = load ptr, ptr %21, align 8, !tbaa !41   ; 2 uses
  %i.vt = icmp eq ptr %i.vs, null
  br i1 %i.vt, label %_ZN11CStringBaseIwED2Ev.exit380, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZdaPv(ptr noundef nonnull %i.vs) #21
  br label %_ZN11CStringBaseIwED2Ev.exit380

_ZN11CStringBaseIwED2Ev.exit380:                  ; preds = %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br i1 %i.vr, label %bb.fh, label %bb.fr

bb.fh:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i32 1, ptr %i.h, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.vu = load i32, ptr %i.u, align 8, !tbaa !51, !noalias !210
  %i.vv = add nsw i32 %i.vu, -1
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.3) align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1, i32 noundef %i.vv)
          to label %_ZNK11CStringBaseIwE3MidEi.exit382 unwind label %bb.fn

_ZNK11CStringBaseIwE3MidEi.exit382:               ; preds = %bb.fh
  %i.vw = invoke noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.fi unwind label %bb.fo     ; 2 uses

bb.fi:                                            ; preds = %_ZNK11CStringBaseIwE3MidEi.exit382
  %i.vx = load ptr, ptr %22, align 8, !tbaa !41   ; 2 uses
  %i.vy = icmp eq ptr %i.vx, null
  br i1 %i.vy, label %_ZN11CStringBaseIwED2Ev.exit383, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @_ZdaPv(ptr noundef nonnull %i.vx) #21
  br label %_ZN11CStringBaseIwED2Ev.exit383

_ZN11CStringBaseIwED2Ev.exit383:                  ; preds = %bb.fi, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %.not196 = icmp eq i32 %i.vw, 0
  br i1 %.not196, label %bb.fq, label %.critedge248

bb.fk:                                            ; preds = %bb.fe
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit384

bb.fl:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit377
  %i.wa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wb = load ptr, ptr %21, align 8, !tbaa !41   ; 2 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %_ZN11CStringBaseIwED2Ev.exit384, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @_ZdaPv(ptr noundef nonnull %i.wb) #21
  br label %_ZN11CStringBaseIwED2Ev.exit384

_ZN11CStringBaseIwED2Ev.exit384:                  ; preds = %bb.fm, %bb.fl, %bb.fk
  %.pn190 = phi { ptr, i32 } [ %i.vz, %bb.fk ], [ %i.wa, %bb.fl ], [ %i.wa, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.fn:                                            ; preds = %bb.fh
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit385

bb.fo:                                            ; preds = %_ZNK11CStringBaseIwE3MidEi.exit382
  %i.we = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wf = load ptr, ptr %22, align 8, !tbaa !41   ; 2 uses
  %i.wg = icmp eq ptr %i.wf, null
  br i1 %i.wg, label %_ZN11CStringBaseIwED2Ev.exit385, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @_ZdaPv(ptr noundef nonnull %i.wf) #21
  br label %_ZN11CStringBaseIwED2Ev.exit385

_ZN11CStringBaseIwED2Ev.exit385:                  ; preds = %bb.fp, %bb.fo, %bb.fn
  %.pn194 = phi { ptr, i32 } [ %i.wd, %bb.fn ], [ %i.we, %bb.fo ], [ %i.we, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.fq:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit383
  %i.wh = load i32, ptr %i.h, align 4, !tbaa !4
  store i32 %i.wh, ptr %i.v, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %.critedge252

bb.fr:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit380
  %i.wi = load ptr, ptr %4, align 8, !tbaa !41
  %i.wj = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.wi, ptr noundef nonnull @.str.19)
          to label %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit unwind label %bb.k

_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit:     ; preds = %bb.fr
  %i.wk = icmp eq i32 %i.wj, 0
  br i1 %i.wk, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit
  %i.wl = invoke noundef i32 @_Z15SetBoolPropertyRbRK14tagPROPVARIANT(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.ft unwind label %bb.fu     ; 2 uses

bb.ft:                                            ; preds = %bb.fs
  %.not193 = icmp eq i32 %i.wl, 0
  br i1 %.not193, label %.critedge252, label %bb.gi

bb.fu:                                            ; preds = %bb.fs
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.fv:                                            ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit
  %i.wn = load ptr, ptr %4, align 8, !tbaa !41
  %i.wo = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.wn, ptr noundef nonnull @.str.20)
          to label %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit388 unwind label %bb.k

_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit388:  ; preds = %bb.fv
  %i.wp = icmp eq i32 %i.wo, 0
  br i1 %i.wp, label %bb.fw, label %bb.gb

bb.fw:                                            ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit388
  %i.wq = invoke noundef i32 @_Z15SetBoolPropertyRbRK14tagPROPVARIANT(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.fx unwind label %bb.fy     ; 2 uses

bb.fx:                                            ; preds = %bb.fw
  %.not192 = icmp eq i32 %i.wq, 0
  br i1 %.not192, label %bb.fz, label %bb.gi

bb.fy:                                            ; preds = %bb.fw
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.fz:                                            ; preds = %bb.fx
  %i.ws = load i8, ptr %i.q, align 1, !tbaa !59, !range !54, !noundef !58
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.ga, label %.critedge252

bb.ga:                                            ; preds = %bb.fz
  store i8 0, ptr %i.r, align 2, !tbaa !135
  br label %.critedge252

bb.gb:                                            ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit388
  %i.wu = load ptr, ptr %4, align 8, !tbaa !41
  %i.wv = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.wu, ptr noundef nonnull @.str.21)
          to label %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit390 unwind label %bb.k

_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit390:  ; preds = %bb.gb
  %i.ww = icmp eq i32 %i.wv, 0
  br i1 %i.ww, label %bb.gc, label %bb.gi

bb.gc:                                            ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit390
  %i.wx = invoke noundef i32 @_Z15SetBoolPropertyRbRK14tagPROPVARIANT(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.gd unwind label %bb.ge     ; 2 uses

bb.gd:                                            ; preds = %bb.gc
  %.not = icmp eq i32 %i.wx, 0
  br i1 %.not, label %bb.gf, label %bb.gi

bb.ge:                                            ; preds = %bb.gc
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit267

bb.gf:                                            ; preds = %bb.gd
  %i.wz = load i8, ptr %i.r, align 2, !tbaa !135, !range !54, !noundef !58
  %i.xa = trunc nuw i8 %i.wz to i1
  br i1 %i.xa, label %bb.gg, label %.critedge252

bb.gg:                                            ; preds = %bb.gf
  store i8 0, ptr %i.q, align 1, !tbaa !59
  br label %.critedge252

bb.gh:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.gi

.critedge:                                        ; preds = %_ZN11CStringBaseIwED2Ev.exit329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.gi

.critedge236:                                     ; preds = %_ZN11CStringBaseIwED2Ev.exit334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.gi

.critedge239:                                     ; preds = %_ZN11CStringBaseIwED2Ev.exit343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.gi

.critedge242:                                     ; preds = %_ZN11CStringBaseIwED2Ev.exit353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.gi

.critedge245:                                     ; preds = %_ZN11CStringBaseIwED2Ev.exit363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.gi

.critedge248:                                     ; preds = %_ZN11CStringBaseIwED2Ev.exit383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %bb.gi

.critedge252:                                     ; preds = %_ZN11CStringBaseIwED2Ev.exit316, %bb.ga, %bb.fz, %bb.gf, %bb.gg, %bb.ft, %_ZN11CStringBaseIwED2Ev.exit373, %bb.an, %_ZN11CStringBaseIwED2Ev.exit278, %bb.ce, %bb.cs, %bb.db, %bb.dp, %bb.ed, %bb.er, %bb.fq, %bb.p
  %.17.jt4 = phi i32 [ %.0542, %bb.p ], [ %.2, %_ZN11CStringBaseIwED2Ev.exit278 ], [ %.0542, %bb.an ], [ %.3, %_ZN11CStringBaseIwED2Ev.exit316 ], [ %.0542, %bb.ce ], [ %.0542, %bb.cs ], [ %.0542, %bb.db ], [ %.0542, %bb.dp ], [ %.0542, %bb.ed ], [ %.0542, %bb.er ], [ %.0542, %_ZN11CStringBaseIwED2Ev.exit373 ], [ %.0542, %bb.fq ], [ %.0542, %bb.ft ], [ %.0542, %bb.ga ], [ %.0542, %bb.fz ], [ %.0542, %bb.gg ], [ %.0542, %bb.gf ]
  %24 = load ptr, ptr %4, align 8, !tbaa !41      ; 2 uses
  %25 = icmp eq ptr %24, null
  br i1 %25, label %bb.gk, label %bb.gj

bb.gi:                                            ; preds = %bb.ar, %bb.gd, %bb.fx, %bb.ft, %_ZN11CStringBaseIwED2Ev.exit373, %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit390, %bb.s, %_ZN11CStringBaseIwED2Ev.exit316, %bb.am, %_ZN11CStringBaseIwED2Ev.exit278, %_ZN11CStringBaseIwE9MakeUpperEv.exit, %bb.gh, %.critedge, %.critedge236, %.critedge239, %.critedge242, %.critedge245, %.critedge248, %bb.o
  %.17.jt1 = phi i32 [ %i.kh, %bb.gh ], [ %i.ul, %.critedge245 ], [ %i.cz, %bb.o ], [ %i.si, %.critedge242 ], [ %i.vw, %.critedge248 ], [ %i.qf, %.critedge239 ], [ %i.og, %.critedge236 ], [ %i.mg, %.critedge ], [ %i.wx, %bb.gd ], [ %i.wq, %bb.fx ], [ %i.wl, %bb.ft ], [ %i.ve, %_ZN11CStringBaseIwED2Ev.exit373 ], [ -2147024809, %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit390 ], [ -2147024809, %bb.s ], [ %.3, %_ZN11CStringBaseIwED2Ev.exit316 ], [ -2147024809, %bb.am ], [ %.2, %_ZN11CStringBaseIwED2Ev.exit278 ], [ -2147024809, %bb.ar ], [ -2147024809, %_ZN11CStringBaseIwE9MakeUpperEv.exit ]
  %i.xb = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.xc = icmp eq ptr %i.xb, null
  br i1 %i.xc, label %_ZN11CStringBaseIwED2Ev.exit391.jt1, label %_ZN11CStringBaseIwED2Ev.exit391

bb.gj:                                            ; preds = %.critedge252
  call void @_ZdaPv(ptr noundef nonnull %24) #21
  br label %bb.gk

_ZN11CStringBaseIwED2Ev.exit391:                  ; preds = %bb.gi
  call void @_ZdaPv(ptr noundef nonnull %i.xb) #21
  br label %_ZN11CStringBaseIwED2Ev.exit391.jt1

bb.gk:                                            ; preds = %bb.gj, %.critedge252
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond574.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond574.not, label %._crit_edge, label %bb.b, !llvm.loop !213

_ZN11CStringBaseIwED2Ev.exit391.jt1:              ; preds = %_ZN11CStringBaseIwED2Ev.exit391, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %._crit_edge

_ZN11CStringBaseIwED2Ev.exit267:                  ; preds = %bb.x, %bb.y, %bb.z, %bb.k, %.body, %_ZN11CStringBaseIwED2Ev.exit307, %_ZN11CStringBaseIwED2Ev.exit317, %.body423, %_ZN11CStringBaseIwED2Ev.exit330, %.body438, %.body453, %_ZN11CStringBaseIwED2Ev.exit344, %.body468, %_ZN11CStringBaseIwED2Ev.exit354, %.body483, %_ZN11CStringBaseIwED2Ev.exit364, %.body498, %_ZN11CStringBaseIwED2Ev.exit374, %_ZN11CStringBaseIwED2Ev.exit375, %_ZN11CStringBaseIwED2Ev.exit384, %_ZN11CStringBaseIwED2Ev.exit385, %bb.fu, %bb.fy, %bb.ge, %bb.e
  %.pn227.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.e ], [ %.pn227, %.body ], [ %.pn, %_ZN11CStringBaseIwED2Ev.exit307 ], [ %.pn222.pn, %_ZN11CStringBaseIwED2Ev.exit317 ], [ %.pn215, %.body423 ], [ %.pn212, %.body438 ], [ %.pn209, %.body453 ], [ %.pn206, %.body468 ], [ %.pn203, %.body483 ], [ %.pn200, %.body498 ], [ %.pn197, %_ZN11CStringBaseIwED2Ev.exit375 ], [ %.pn194, %_ZN11CStringBaseIwED2Ev.exit385 ], [ %i.wm, %bb.fu ], [ %i.wr, %bb.fy ], [ %i.wy, %bb.ge ], [ %i.dc, %bb.k ], [ %.pn190, %_ZN11CStringBaseIwED2Ev.exit384 ], [ %.pn188, %_ZN11CStringBaseIwED2Ev.exit374 ], [ %.pn186, %_ZN11CStringBaseIwED2Ev.exit364 ], [ %.pn184, %_ZN11CStringBaseIwED2Ev.exit354 ], [ %.pn182, %_ZN11CStringBaseIwED2Ev.exit344 ], [ %.pn180, %_ZN11CStringBaseIwED2Ev.exit330 ], [ %i.ea, %bb.x ], [ %i.eb, %bb.y ], [ %i.eb, %bb.z ]
  %i.xd = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.xe = icmp eq ptr %i.xd, null
  br i1 %i.xe, label %_ZN11CStringBaseIwED2Ev.exit392, label %bb.gl

bb.gl:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit267
  call void @_ZdaPv(ptr noundef nonnull %i.xd) #21
  br label %_ZN11CStringBaseIwED2Ev.exit392

_ZN11CStringBaseIwED2Ev.exit392:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit267, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn227.pn.pn

._crit_edge:                                      ; preds = %bb.gk, %_ZN11CStringBaseIwED2Ev.exit391.jt1, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ %.17.jt1, %_ZN11CStringBaseIwED2Ev.exit391.jt1 ], [ 0, %bb.gk ]
  ret i32 %spec.select
}

declare noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv() local_unnamed_addr #4

declare noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef i32 @_Z24ParsePropDictionaryValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef i32 @_Z11ParseMtPropRK11CStringBaseIwERK14tagPROPVARIANTjRj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef i32 @_Z15SetBoolPropertyRbRK14tagPROPVARIANT(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn16_N8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi(ptr noundef initializes((192, 235), (236, 240)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = tail call noundef i32 @_ZN8NArchive4NZip8CHandler13SetPropertiesEPPKwPK14tagPROPVARIANTi(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

declare noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIhED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @SysFreeString(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CUpdateItemEE, i64 16), ptr %0, align 8, !tbaa !12
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev.exit unwind label %bb.b, !inline_history !124

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #20, !inline_history !124
  unreachable

_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18, !inline_history !124
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NZip11CUpdateItemEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !79   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.d, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN8NArchive4NZip11CUpdateItemD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #21
  br label %_ZN8NArchive4NZip11CUpdateItemD2Ev.exit

_ZN8NArchive4NZip11CUpdateItemD2Ev.exit:          ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 72) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN8NArchive4NZip11CUpdateItemD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.r, label %bb.a, label %._crit_edge, !llvm.loop !214
}

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #13

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef ptr @_Z13MyStringUpperPw(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind noalias writable sret(%class.CStringBase.3) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %3, %2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51   ; 6 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %2
  %spec.select = select i1 %i.d, i32 %i.e, i32 %3 ; 8 uses
  %i.f = icmp eq i32 %2, 0
  %i.g = icmp eq i32 %spec.select, %i.c
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.h = add nsw i32 %i.c, 1                      ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = zext nneg i32 %i.h to i64
  %i.l = icmp slt i32 %i.c, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #19 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !41
  store i32 0, ptr %i.o, align 4, !tbaa !44
  store i32 %i.h, ptr %i.j, align 4, !tbaa !46
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ null, %bb.b ], [ %i.o, %bb.c ]
  %i.q = load ptr, ptr %1, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.r, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.s = load i32, ptr %.04.i.i, align 4, !tbaa !44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.s, ptr %.0.i.i, align 4, !tbaa !44
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit, label %bb.d, !llvm.loop !52

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %i.w = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19 ; 5 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !41
  store i32 0, ptr %i.w, align 4, !tbaa !44
  store i32 4, ptr %i.u, align 4, !tbaa !46
  %i.x = add nsw i32 %spec.select, 1              ; 3 uses
  %i.y = icmp eq i32 %i.x, 4
  br i1 %i.y, label %.lr.ph, label %bb.f

end_hunk_1
