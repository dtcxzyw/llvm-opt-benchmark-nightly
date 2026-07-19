inline.NumInlined: 245
inline.NumDeleted: 56
begin_hunk_0_@_Z14AddDirFileInfoiiRKN8NWindows5NFile5NFind10CFileInfoWER13CObjectVectorI8CDirItemE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %i.j to i64
  %i.m = icmp slt i32 %i.i, -1
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #15
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #16
  store i32 0, ptr %i.p, align 4, !tbaa !13
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.a
  %.sroa.8.1 = phi ptr [ %i.a, %bb.a ], [ %i.p, %bb.c ] ; 6 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.r, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %.sroa.8.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.s = load i32, ptr %.04.i.i, align 4, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.s, ptr %.0.i.i, align 4, !tbaa !13
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d, !llvm.loop !20

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.v = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15
          to label %.noexc10 unwind label %bb.h   ; 10 uses

.noexc10:                                         ; preds = %bb.e
  store <2 x i64> %i.b, ptr %i.v, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i64> %i.d, ptr %.sroa.6.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = add nsw i32 %i.u, 1                      ; 3 uses
  %i.y = icmp ne i32 %i.x, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = icmp slt i32 %i.u, -1
  %i.ab = shl nuw nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #15
          to label %.noexc.i unwind label %bb.g   ; 3 uses

.noexc.i:                                         ; preds = %.noexc10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !19
  store i32 0, ptr %i.ad, align 4, !tbaa !13
  store i32 %i.x, ptr %i.ae, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i:    ; preds = %.noexc.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.af, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %.sroa.8.1, %.noexc.i ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.ah, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %i.ad, %.noexc.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %i.ag = load i32, ptr %.04.i.i.i.i, align 4, !tbaa !13 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  store i32 %i.ag, ptr %.0.i.i.i.i, align 4, !tbaa !13
  %.not.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i, !llvm.loop !20

bb.f:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i32 %i.u, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i32 %i.f, ptr %i.aj, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  store i32 %0, ptr %.sroa.24.48..sroa_idx, align 4
  %.sroa.26.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store i32 %1, ptr %.sroa.26.48..sroa_idx, align 8
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8CDirItemD2Ev.exit unwind label %bb.h

bb.g:                                             ; preds = %.noexc10
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 64) #16
  br label %_ZN8CDirItemD2Ev.exit12

_ZN8CDirItemD2Ev.exit:                            ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !26 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ap
  store ptr %i.v, ptr %i.aq, align 8, !tbaa !27
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !26
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.8.1) #16
  ret void

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %bb.f ], [ %.sroa.8.1, %bb.e ], [ %i.a, %bb.b ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8CDirItemD2Ev.exit12

_ZN8CDirItemD2Ev.exit12:                          ; preds = %bb.g, %bb.h
  %.sroa.8.2 = phi ptr [ %.sroa.8.0, %bb.h ], [ %.sroa.8.1, %bb.g ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.h ], [ %i.ak, %bb.g ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.8.2) #16
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK9CDirItems15GetPrefixesPathERK13CRecordVectorIiEiRK11CStringBaseIwE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.CStringBase) align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %i.c, align 4, !tbaa !13
  store i32 4, ptr %i.a, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.f = icmp sgt i32 %3, -1                      ; 2 uses
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.035 = phi i32 [ %i.e, %.lr.ph ], [ %i.p, %bb.b ]
  %.03234 = phi i32 [ %3, %.lr.ph ], [ %i.r, %bb.b ]
  %i.k = zext nneg i32 %.03234 to i64             ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !15
  %i.p = add nsw i32 %i.o, %.035                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.p, %bb.b ] ; 5 uses
  %.not.i = icmp slt i32 %.0.lcssa, 4
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.t = add nuw nsw i32 %.0.lcssa, 1             ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #15
          to label %.loopexit unwind label %_ZN11CStringBaseIwED2Ev.exit ; 3 uses

.loopexit:                                        ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #16
  store ptr %i.w, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %i.w, align 4, !tbaa !13
  store i32 %i.t, ptr %i.a, align 4, !tbaa !22
  %.pre = load i32, ptr %i.d, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %._crit_edge
  %i.x = phi i32 [ %.pre, %.loopexit ], [ %i.e, %._crit_edge ] ; 2 uses
  %i.y = phi ptr [ %i.w, %.loopexit ], [ %i.c, %._crit_edge ] ; 3 uses
  %i.z = sext i32 %.0.lcssa to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !13
  %i.ab = sub nsw i32 %.0.lcssa, %i.x             ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load ptr, ptr %4, align 8, !tbaa !19
  %i.af = sext i32 %i.x to i64
  %i.ag = shl nsw i64 %i.af, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr align 4 %i.ae, i64 %i.ag, i1 false)
  br i1 %i.f, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %5 = load ptr, ptr %i.ah, align 8, !tbaa !23
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre42 = load ptr, ptr %6, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph39, %bb.e
  %.137 = phi i32 [ %i.ab, %.lr.ph39 ], [ %i.an, %bb.e ]
  %.13336 = phi i32 [ %3, %.lr.ph39 ], [ %i.au, %bb.e ]
  %i.ai = zext nneg i32 %.13336 to i64            ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !15 ; 2 uses
  %i.an = sub nsw i32 %.137, %i.am                ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ao
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.ar = sext i32 %i.am to i64
  %i.as = shl nsw i64 %i.ar, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %i.aq, i64 %i.as, i1 false)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre42, i64 %i.ai
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.e, label %._crit_edge40, !llvm.loop !29

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #16
  resume { ptr, i32 } %i.aw

._crit_edge40:                                    ; preds = %bb.e, %bb.d
  store i32 0, ptr %i.aa, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0.lcssa, ptr %i.ax, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK9CDirItems10GetPhyPathEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.CStringBase) align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @_ZNK9CDirItems15GetPrefixesPathERK13CRecordVectorIiEiRK11CStringBaseIwE(ptr dead_on_unwind writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK9CDirItems10GetLogPathEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.CStringBase) align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @_ZNK9CDirItems15GetPrefixesPathERK13CRecordVectorIiEiRK11CStringBaseIwE(ptr dead_on_unwind writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9CDirItems11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  ret void
}

declare void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9CDirItems9AddPrefixEiiRK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  store i32 %1, ptr %i.g, align 4, !tbaa !4
  %i.h = load i32, ptr %i.d, align 4, !tbaa !26
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.o
  store i32 %2, ptr %i.p, align 4, !tbaa !4
  %i.q = load i32, ptr %i.m, align 4, !tbaa !26
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !26
  %i.s = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15   ; 3 uses
  %i.v = add nsw i32 %i.u, 1                      ; 3 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = zext nneg i32 %i.v to i64
  %i.y = icmp slt i32 %i.u, -1
  %i.z = shl nuw nsw i64 %i.x, 2
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #15
          to label %.noexc.i unwind label %bb.d   ; 3 uses

.noexc.i:                                         ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !19
  store i32 0, ptr %i.ab, align 4, !tbaa !13
  store i32 %i.v, ptr %i.ac, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc.i, %bb.a
  %i.ad = phi ptr [ null, %bb.a ], [ %i.ab, %.noexc.i ]
  %i.ae = load ptr, ptr %3, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.ae, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ah, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.ag = load i32, ptr %.04.i.i.i, align 4, !tbaa !13 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.ag, ptr %.0.i.i.i, align 4, !tbaa !13
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i, label %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit, label %bb.c, !llvm.loop !20

bb.d:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 16) #16
  resume { ptr, i32 } %i.ai

_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit: ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.u, ptr %i.aj, align 8, !tbaa !15
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26 ; 3 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ao
  store ptr %i.s, ptr %i.ap, align 8, !tbaa !27
  %i.aq = add nsw i32 %i.an, 1
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !26
  ret i32 %i.an
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9CDirItems16DeleteLastPrefixEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

declare void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9CDirItems18EnumerateDirectoryEiiRK11CStringBaseIwER13CObjectVectorIS1_ER13CRecordVectorIjE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.NWindows::NFile::NFind::CEnumeratorW", align 8 ; 10 uses
  %7 = alloca %class.CStringBase, align 8         ; 12 uses
  %8 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %9 = alloca %class.CStringBase, align 8         ; 9 uses
  %10 = alloca %class.CStringBase, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !33
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15, !noalias !33 ; 11 uses
  %i.d = add nsw i32 %i.c, 1                      ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.g = zext nneg i32 %i.d to i64
  %i.h = icmp slt i32 %i.c, -1
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
end_hunk_0
