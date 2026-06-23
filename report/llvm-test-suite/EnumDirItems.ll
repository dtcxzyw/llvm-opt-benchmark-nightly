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
begin_hunk_1_@_ZN8NWindows5NFile5NFind12CEnumeratorWC2ERK11CStringBaseIwE:bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !53
  store i8 0, ptr %i.c, align 1, !tbaa !56
  store i32 4, ptr %i.b, align 4, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #15
          to label %_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit unwind label %_ZN11CStringBaseIcED2Ev.exit.i ; 2 uses

common.resume:                                    ; preds = %bb.e, %_ZN11CStringBaseIcED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZN11CStringBaseIcED2Ev.exit.i ], [ %i.y, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZN11CStringBaseIcED2Ev.exit.i:                   ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #16
  br label %common.resume

_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit:      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr %i.e, ptr %i.d, align 8, !tbaa !53
  store i8 0, ptr %i.e, align 1, !tbaa !56
  store i32 4, ptr %i.g, align 4, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.j = load i32, ptr %i.i, align 8, !tbaa !15   ; 3 uses
  %i.k = add nsw i32 %i.j, 1                      ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit
  %i.m = zext nneg i32 %i.k to i64
  %i.n = icmp slt i32 %i.j, -1
  %i.o = shl nuw nsw i64 %i.m, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #15
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr %i.q, ptr %i.h, align 8, !tbaa !19
  store i32 0, ptr %i.q, align 4, !tbaa !13
  store i32 %i.k, ptr %i.r, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc, %_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit
  %i.s = phi ptr [ null, %_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit ], [ %i.q, %.noexc ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.u, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.v = load i32, ptr %.04.i.i, align 4, !tbaa !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.v, ptr %.0.i.i, align 4, !tbaa !13
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c, !llvm.loop !20

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.j, ptr %i.x, align 8, !tbaa !15
  ret void

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8NWindows5NFile5NFind9CFindFileD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #17
  br label %common.resume
}

declare noundef zeroext i1 @_ZN8NWindows5NFile5NFind12CEnumeratorW4NextERNS1_10CFileInfoWERb(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind9CFindFile5CloseEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN11CStringBaseIcED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #16
  br label %_ZN11CStringBaseIcED2Ev.exit.i

_ZN11CStringBaseIcED2Ev.exit.i:                   ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN8NWindows5NFile5NFind9CFindFileD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #16
  br label %_ZN8NWindows5NFile5NFind9CFindFileD2Ev.exit

bb.f:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #19
  unreachable

_ZN8NWindows5NFile5NFind9CFindFileD2Ev.exit:      ; preds = %_ZN11CStringBaseIcED2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9CDirItems18EnumerateDirItems2ERK11CStringBaseIwES3_RK13CObjectVectorIS1_ERS5_R13CRecordVectorIjE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 10 uses
  %7 = alloca %class.CStringBase, align 8         ; 9 uses
  %8 = alloca %class.CStringBase, align 8         ; 7 uses
  %9 = alloca %class.CStringBase, align 8         ; 11 uses
  %10 = alloca %class.CStringBase, align 8        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN9CDirItems9AddPrefixEiiRK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i32 @_ZN9CDirItems9AddPrefixEiiRK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.i, %bb.d ], [ -1, %bb.c ]   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit, %bb.e
  call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit ] ; 2 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i64 0, ptr %i.ae, align 8
  %i.am = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15 ; 2 uses
  store ptr %i.am, ptr %i.o, align 8, !tbaa !19
  store i32 0, ptr %i.am, align 4, !tbaa !13
  store i32 4, ptr %i.p, align 4, !tbaa !22
  %i.an = load i32, ptr %i.a, align 8, !tbaa !15, !noalias !58 ; 10 uses
  %i.ao = add nsw i32 %i.an, 1                    ; 4 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = icmp slt i32 %i.an, -1
  %i.as = shl nuw nsw i64 %i.aq, 2
  %i.at = select i1 %i.ar, i64 -1, i64 %i.as
  %i.au = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #15
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %bb.g
  store i32 0, ptr %i.au, align 4, !tbaa !13, !noalias !58
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc, %bb.f
  %.sroa.0177.0 = phi ptr [ null, %bb.f ], [ %i.au, %.noexc ] ; 7 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !19, !noalias !58
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.av, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.aw, %bb.h ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.sroa.0177.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.ax = load i32, ptr %.04.i.i.i, align 4, !tbaa !13, !noalias !58 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.ax, ptr %.0.i.i.i, align 4, !tbaa !13, !noalias !58
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.h, !llvm.loop !20

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !15 ; 2 uses
  %.not.i.i110 = icmp sgt i32 %i.ba, 0
  br i1 %.not.i.i110, label %bb.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge

_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge: ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.pre297 = sext i32 %i.an to i64
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

bb.i:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.bb = icmp sgt i32 %i.an, 63
  %i.bc = lshr i32 %i.ao, 1
  %i.bd = icmp sgt i32 %i.an, 7
  %..i.i = select i1 %i.bd, i32 16, i32 4
  %.0.i.i112 = select i1 %i.bb, i32 %i.bc, i32 %..i.i
  %i.be = call i32 @llvm.umax.i32(i32 %.0.i.i112, i32 %i.ba)
  %11 = add nsw i32 %i.be, %i.ao                  ; 2 uses
  %i.bf = add nsw i32 %11, 1
  %12 = zext nneg i32 %i.bf to i64
  %13 = icmp slt i32 %11, -1
  %14 = shl nuw nsw i64 %12, 2
  %15 = select i1 %13, i64 -1, i64 %14
  %16 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %15) #15
          to label %.noexc113 unwind label %bb.l  ; 3 uses

.noexc113:                                        ; preds = %bb.i
  %i.bg = icmp sgt i32 %i.an, -1
  br i1 %i.bg, label %.preheader.i.i.i, label %bb.j

.preheader.i.i.i:                                 ; preds = %.noexc113
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.an to i64
  %i.bh = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %16, ptr align 4 %.sroa.0177.0, i64 %i.bh, i1 false), !tbaa !13
  br label %._crit_edge.thread.i.i.i

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.bi = icmp eq ptr %.sroa.0177.0, null
  br i1 %i.bi, label %bb.j, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0177.0) #16
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc113
  %i.bj = sext i32 %i.an to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %16, i64 %i.bj
  store i32 0, ptr %i.bk, align 4, !tbaa !13
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge, %bb.j
  %.pre-phi298 = phi i64 [ %.pre297, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge ], [ %i.bj, %bb.j ]
  %.sroa.0177.1 = phi ptr [ %.sroa.0177.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge ], [ %16, %bb.j ] ; 7 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.sroa.0177.1, i64 %.pre-phi298
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.04.i.i111 = phi ptr [ %i.bm, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.bn, %bb.k ] ; 2 uses
  %.0.i4.i = phi ptr [ %i.bl, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.bp, %bb.k ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.04.i.i111, i64 4
  %i.bo = load i32, ptr %.04.i.i111, align 4, !tbaa !13 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 4
  store i32 %i.bo, ptr %.0.i4.i, align 4, !tbaa !13
  %.not.i5.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i5.i, label %bb.n, label %bb.k, !llvm.loop !20

bb.l:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq ptr %.sroa.0177.0, null
  br i1 %i.br, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0177.0) #16
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !15
  %i.bt = add nsw i32 %i.bs, %i.an                ; 3 uses
  %i.bu = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %.sroa.0177.1)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  br i1 %i.bu, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = tail call ptr @__errno_location() #18
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.by = load i32, ptr %i.r, align 4, !tbaa !26
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bz
  store i32 %i.bw, ptr %i.ca, align 4, !tbaa !4
  %i.cb = load i32, ptr %i.r, align 4, !tbaa !26
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.r, align 4, !tbaa !26
  %i.cd = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15
          to label %.noexc60 unwind label %bb.u   ; 6 uses

.noexc60:                                         ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  %i.ce = add nsw i32 %i.bt, 1                    ; 3 uses
  %i.cf = icmp ne i32 %i.ce, 0
  call void @llvm.assume(i1 %i.cf)
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = icmp slt i32 %i.bt, -1
  %i.ci = shl nuw nsw i64 %i.cg, 2
  %i.cj = select i1 %i.ch, i64 -1, i64 %i.ci
  %i.ck = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #15
          to label %.noexc.i unwind label %bb.s   ; 3 uses

.noexc.i:                                         ; preds = %.noexc60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store ptr %i.ck, ptr %i.cd, align 8, !tbaa !19
  store i32 0, ptr %i.ck, align 4, !tbaa !13
  store i32 %i.ce, ptr %i.cl, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i56

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i56:    ; preds = %.noexc.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i56
  %.04.i.i.i57 = phi ptr [ %i.cm, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i56 ], [ %.sroa.0177.1, %.noexc.i ] ; 2 uses
  %.0.i.i.i58 = phi ptr [ %i.co, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i56 ], [ %i.ck, %.noexc.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.04.i.i.i57, i64 4
  %i.cn = load i32, ptr %.04.i.i.i57, align 4, !tbaa !13 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i58, i64 4
  store i32 %i.cn, ptr %.0.i.i.i58, align 4, !tbaa !13
  %.not.i.i.i59 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i59, label %bb.r, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i56, !llvm.loop !20

bb.r:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.bt, ptr %i.cp, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit unwind label %bb.u

bb.s:                                             ; preds = %.noexc60
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 16) #16
  br label %.body62

_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit: ; preds = %bb.r
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.cs = load i32, ptr %i.t, align 4, !tbaa !26  ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %i.cd, ptr %i.cu, align 8, !tbaa !27
  %i.cv = add nsw i32 %i.cs, 1
  store i32 %i.cv, ptr %i.t, align 4, !tbaa !26
  br label %bb.cc

bb.t:                                             ; preds = %bb.g
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body62

bb.v:                                             ; preds = %bb.o
  %i.cy = load i32, ptr %i.az, align 8, !tbaa !15 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = load ptr, ptr %i.al, align 8, !tbaa !19 ; 3 uses
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.db
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %.pn.i = phi ptr [ %i.dc, %bb.w ], [ %.0.i, %bb.z ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 4 uses
  %i.dd = load i32, ptr %.0.i, align 4, !tbaa !13
  %i.de = icmp eq i32 %i.dd, 47
  br i1 %i.de, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.df = ptrtoint ptr %.0.i to i64
  %i.dg = ptrtoint ptr %i.da to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = lshr exact i64 %i.dh, 2
  %i.dj = trunc i64 %i.di to i32
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit

bb.z:                                             ; preds = %bb.x
  %i.dk = icmp eq ptr %.0.i, %i.da
  br i1 %i.dk, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.x, !llvm.loop !61

_ZNK11CStringBaseIwE11ReverseFindEw.exit:         ; preds = %bb.z, %bb.y, %bb.v
  %.1.i = phi i32 [ -1, %bb.v ], [ %i.dj, %bb.y ], [ -1, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i64 0, ptr %i.af, align 8
  %i.dl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.aa unwind label %bb.ah     ; 7 uses

bb.aa:                                            ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  store ptr %i.dl, ptr %7, align 8, !tbaa !19
  store i32 0, ptr %i.dl, align 4, !tbaa !13
  store i32 4, ptr %i.u, align 4, !tbaa !22
  %i.dm = icmp sgt i32 %.1.i, -1
  br i1 %i.dm, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.dn = add nuw nsw i32 %.1.i, 1
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i32 noundef 0, i32 noundef %i.dn)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit unwind label %bb.ai

_ZNK11CStringBaseIwE4LeftEi.exit:                 ; preds = %bb.ab
  store i32 0, ptr %i.v, align 8, !tbaa !15
  store i32 0, ptr %i.dl, align 4, !tbaa !13
  %i.do = load i32, ptr %i.w, align 8, !tbaa !15  ; 2 uses
  %i.dp = add nsw i32 %i.do, 1                    ; 3 uses
  %i.dq = icmp eq i32 %i.dp, 4
  br i1 %i.dq, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.dr = zext nneg i32 %i.dp to i64
  %i.ds = icmp slt i32 %i.do, -1
  %i.dt = shl nuw nsw i64 %i.dr, 2
  %i.du = select i1 %i.ds, i64 -1, i64 %i.dt
  %i.dv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.du) #15
          to label %bb.ad unwind label %bb.aj     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #16
  store ptr %i.dv, ptr %7, align 8, !tbaa !19
  store i32 0, ptr %i.dv, align 4, !tbaa !13
  store i32 %i.dp, ptr %i.u, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.ad, %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.dw = phi ptr [ %i.dl, %_ZNK11CStringBaseIwE4LeftEi.exit ], [ %i.dv, %bb.ad ] ; 3 uses
  %i.dx = load ptr, ptr %8, align 8, !tbaa !19    ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.dx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.dy, %bb.ae ] ; 2 uses
  %.0.i.i = phi ptr [ %i.dw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ea, %bb.ae ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.dz = load i32, ptr %.04.i.i, align 4, !tbaa !13 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.dz, ptr %.0.i.i, align 4, !tbaa !13
  %.not.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i, label %bb.af, label %bb.ae, !llvm.loop !20

bb.af:                                            ; preds = %bb.ae
  %i.eb = load i32, ptr %i.w, align 8, !tbaa !15  ; 2 uses
  store i32 %i.eb, ptr %i.v, align 8, !tbaa !15
  %i.ec = icmp eq ptr %i.dx, null
  br i1 %i.ec, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ed = invoke noundef i32 @_ZN9CDirItems9AddPrefixEiiRK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.e, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.am unwind label %bb.al

bb.ah:                                            ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit106

bb.ai:                                            ; preds = %bb.ab
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit67

bb.aj:                                            ; preds = %bb.ac
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZN11CStringBaseIwED2Ev.exit67, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.eh) #16
  br label %_ZN11CStringBaseIwED2Ev.exit67

_ZN11CStringBaseIwED2Ev.exit67:                   ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.ai ], [ %i.eg, %bb.aj ], [ %i.eg, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.thread327

bb.al:                                            ; preds = %bb.am, %_ZN11CStringBaseIwED2Ev.exit
  %i.ej = phi ptr [ %i.el, %bb.am ], [ %i.dw, %_ZN11CStringBaseIwED2Ev.exit ]
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.thread327

bb.am:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.aa
  %i.el = phi ptr [ %i.dl, %bb.aa ], [ %i.dw, %_ZN11CStringBaseIwED2Ev.exit ] ; 4 uses
  %i.em = phi i32 [ 0, %bb.aa ], [ %i.eb, %_ZN11CStringBaseIwED2Ev.exit ] ; 3 uses
  %.031 = phi i32 [ %i.e, %bb.aa ], [ %i.ed, %_ZN11CStringBaseIwED2Ev.exit ] ; 2 uses
  invoke void @_Z14AddDirFileInfoiiRKN8NWindows5NFile5NFind10CFileInfoWER13CObjectVectorI8CDirItemE(i32 noundef %.031, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.en = load i32, ptr %i.y, align 8, !tbaa !8
  %i.eo = and i32 %i.en, 16
  %.not186 = icmp eq i32 %i.eo, 0
  br i1 %.not186, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !62
  %i.ep = load i32, ptr %i.z, align 8, !tbaa !15, !noalias !62 ; 12 uses
  %i.eq = add nsw i32 %i.ep, 1                    ; 9 uses
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i68, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.es = zext nneg i32 %i.eq to i64
  %i.et = icmp slt i32 %i.ep, -1
  %i.eu = shl nuw nsw i64 %i.es, 2
  %i.ev = select i1 %i.et, i64 -1, i64 %i.eu
  %i.ew = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ev) #15
          to label %.noexc74 unwind label %bb.bs  ; 3 uses

.noexc74:                                         ; preds = %bb.ap
  store ptr %i.ew, ptr %9, align 8, !tbaa !19, !alias.scope !62
  store i32 0, ptr %i.ew, align 4, !tbaa !13, !noalias !62
  store i32 %i.eq, ptr %i.aa, align 4, !tbaa !22, !alias.scope !62
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i68

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i68:    ; preds = %.noexc74, %bb.ao
  %.pre.i.i.i120 = phi ptr [ null, %bb.ao ], [ %i.ew, %.noexc74 ] ; 8 uses
  %i.ex = load ptr, ptr %i.o, align 8, !tbaa !19, !noalias !62
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i68
  %.04.i.i.i69 = phi ptr [ %i.ex, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i68 ], [ %i.ey, %bb.aq ] ; 2 uses
  %.0.i.i.i70 = phi ptr [ %.pre.i.i.i120, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i68 ], [ %i.fa, %bb.aq ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.04.i.i.i69, i64 4
  %i.ez = load i32, ptr %.04.i.i.i69, align 4, !tbaa !13, !noalias !62 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i.i.i70, i64 4
  store i32 %i.ez, ptr %.0.i.i.i70, align 4, !tbaa !13, !noalias !62
  %.not.i.i.i71 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i71, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i72, label %bb.aq, !llvm.loop !20

_ZN11CStringBaseIwEC2ERKS0_.exit.i72:             ; preds = %bb.aq
  %i.fb = icmp sgt i32 %i.ep, 63
  %i.fc = lshr i32 %i.eq, 1
  %i.fd = icmp sgt i32 %i.ep, 7
  %..i.i116 = select i1 %i.fd, i32 16, i32 4
  %i.fe = call i32 @llvm.umax.i32(i32 %i.fc, i32 1)
  %.1.i.i118 = select i1 %i.fb, i32 %i.fe, i32 %..i.i116
  %i.ff = add nsw i32 %.1.i.i118, %i.eq           ; 3 uses
  %i.fg = add nsw i32 %i.ff, 1                    ; 2 uses
  %i.fh = icmp eq i32 %i.ff, %i.ep
  br i1 %i.fh, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i72
  %i.fi = zext nneg i32 %i.fg to i64
  %i.fj = icmp slt i32 %i.ff, -1
  %i.fk = shl nuw nsw i64 %i.fi, 2
  %i.fl = select i1 %i.fj, i64 -1, i64 %i.fk
  %i.fm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fl) #15
          to label %.noexc129 unwind label %bb.at ; 5 uses

.noexc129:                                        ; preds = %bb.ar
  %i.fn = icmp sgt i32 %i.ep, -1
  br i1 %i.fn, label %.preheader.i.i.i119, label %bb.as

.preheader.i.i.i119:                              ; preds = %.noexc129
  %.not393 = icmp eq i32 %i.ep, 0
  br i1 %.not393, label %._crit_edge.i.i.i121, label %.lr.ph.i.i.i124

.lr.ph.i.i.i124:                                  ; preds = %.preheader.i.i.i119
  %wide.trip.count.i.i.i125 = zext nneg i32 %i.ep to i64 ; 3 uses
  %min.iters.check460 = icmp ult i32 %i.ep, 8
  br i1 %min.iters.check460, label %scalar.ph459.preheader, label %vector.ph461

vector.ph461:                                     ; preds = %.lr.ph.i.i.i124
  %n.vec463 = and i64 %wide.trip.count.i.i.i125, 2147483640 ; 3 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph461
  %index465 = phi i64 [ 0, %vector.ph461 ], [ %index.next468, %vector.body464 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i120, i64 %index465 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load466 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !13
  %wide.load467 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !13
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %index465 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <4 x i32> %wide.load466, ptr %i.fq, align 4, !tbaa !13
  store <4 x i32> %wide.load467, ptr %i.fr, align 4, !tbaa !13
  %index.next468 = add nuw i64 %index465, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next468, %n.vec463
  br i1 %i.fs, label %middle.block469, label %vector.body464, !llvm.loop !65

middle.block469:                                  ; preds = %vector.body464
  %cmp.n470 = icmp eq i64 %n.vec463, %wide.trip.count.i.i.i125
  br i1 %cmp.n470, label %._crit_edge.thread.i.i.i122, label %scalar.ph459.preheader

scalar.ph459.preheader:                           ; preds = %.lr.ph.i.i.i124, %middle.block469
  %indvars.iv.i.i.i126.ph = phi i64 [ 0, %.lr.ph.i.i.i124 ], [ %n.vec463, %middle.block469 ]
  br label %scalar.ph459

._crit_edge.i.i.i121:                             ; preds = %.preheader.i.i.i119
  %i.ft = icmp eq ptr %.pre.i.i.i120, null
  br i1 %i.ft, label %bb.as, label %._crit_edge.thread.i.i.i122

scalar.ph459:                                     ; preds = %scalar.ph459.preheader, %scalar.ph459
  %indvars.iv.i.i.i126 = phi i64 [ %indvars.iv.next.i.i.i127, %scalar.ph459 ], [ %indvars.iv.i.i.i126.ph, %scalar.ph459.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i120, i64 %indvars.iv.i.i.i126
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !13
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i.i.i126
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !13
  %indvars.iv.next.i.i.i127 = add nuw nsw i64 %indvars.iv.i.i.i126, 1 ; 2 uses
  %exitcond.not.i.i.i128 = icmp eq i64 %indvars.iv.next.i.i.i127, %wide.trip.count.i.i.i125
  br i1 %exitcond.not.i.i.i128, label %._crit_edge.thread.i.i.i122, label %scalar.ph459, !llvm.loop !66

._crit_edge.thread.i.i.i122:                      ; preds = %scalar.ph459, %middle.block469, %._crit_edge.i.i.i121
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i120) #16
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.thread.i.i.i122, %._crit_edge.i.i.i121, %.noexc129
  store ptr %i.fm, ptr %9, align 8, !tbaa !19
  %i.fx = sext i32 %i.ep to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fx
  store i32 0, ptr %i.fy, align 4, !tbaa !13
  store i32 %i.fg, ptr %i.aa, align 4, !tbaa !22
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = icmp eq ptr %.pre.i.i.i120, null
  br i1 %i.ga, label %bb.cf, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i120) #16
  br label %bb.cf

bb.av:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i72, %bb.as
  %i.gb = phi ptr [ %i.fm, %bb.as ], [ %.pre.i.i.i120, %_ZN11CStringBaseIwEC2ERKS0_.exit.i72 ] ; 3 uses
  %i.gc = sext i32 %i.ep to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gc
  store i32 47, ptr %i.gd, align 4, !tbaa !13
  store i32 %i.eq, ptr %i.ab, align 8, !tbaa !15
  %i.ge = sext i32 %i.eq to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.ge
  store i32 0, ptr %i.gf, align 4, !tbaa !13
  %i.gg = invoke noundef i32 @_ZN9CDirItems9AddPrefixEiiRK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %.031, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.aw unwind label %bb.bt     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.gh = load i32, ptr %i.a, align 8, !tbaa !15, !noalias !67 ; 10 uses
  %i.gi = add nsw i32 %i.gh, 1                    ; 4 uses
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i77, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gk = zext nneg i32 %i.gi to i64
  %i.gl = icmp slt i32 %i.gh, -1
  %i.gm = shl nuw nsw i64 %i.gk, 2
  %i.gn = select i1 %i.gl, i64 -1, i64 %i.gm
  %i.go = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gn) #15
          to label %.noexc83 unwind label %bb.bu  ; 2 uses

.noexc83:                                         ; preds = %bb.ax
  store i32 0, ptr %i.go, align 4, !tbaa !13, !noalias !67
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i77

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i77:    ; preds = %.noexc83, %bb.aw
  %.sroa.0.0 = phi ptr [ null, %bb.aw ], [ %i.go, %.noexc83 ] ; 7 uses
  %i.gp = load ptr, ptr %1, align 8, !tbaa !19, !noalias !67
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i77
  %.04.i.i.i78 = phi ptr [ %i.gp, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i77 ], [ %i.gq, %bb.ay ] ; 2 uses
  %.0.i.i.i79 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i77 ], [ %i.gs, %bb.ay ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.04.i.i.i78, i64 4
  %i.gr = load i32, ptr %.04.i.i.i78, align 4, !tbaa !13, !noalias !67 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i.i.i79, i64 4
  store i32 %i.gr, ptr %.0.i.i.i79, align 4, !tbaa !13, !noalias !67
  %.not.i.i.i80 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i80, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i81, label %bb.ay, !llvm.loop !20

_ZN11CStringBaseIwEC2ERKS0_.exit.i81:             ; preds = %bb.ay
  %.not.i.i130 = icmp sgt i32 %i.em, 0
  br i1 %.not.i.i130, label %bb.az, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i81._ZN11CStringBaseIwE10GrowLengthEi.exit.i131_crit_edge

_ZN11CStringBaseIwEC2ERKS0_.exit.i81._ZN11CStringBaseIwE10GrowLengthEi.exit.i131_crit_edge: ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i81
  %.pre299 = sext i32 %i.gh to i64
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131

bb.az:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i81
  %i.gt = icmp sgt i32 %i.gh, 63
  %i.gu = lshr i32 %i.gi, 1
  %i.gv = icmp sgt i32 %i.gh, 7
  %..i.i135 = select i1 %i.gv, i32 16, i32 4
  %.0.i.i136 = select i1 %i.gt, i32 %i.gu, i32 %..i.i135
  %i.gw = call i32 @llvm.umax.i32(i32 %.0.i.i136, i32 %i.em)
  %17 = add nsw i32 %i.gw, %i.gi                  ; 2 uses
  %i.gx = add nsw i32 %17, 1
  %18 = zext nneg i32 %i.gx to i64
  %19 = icmp slt i32 %17, -1
  %20 = shl nuw nsw i64 %18, 2
  %21 = select i1 %19, i64 -1, i64 %20
  %22 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %21) #15
          to label %.noexc148 unwind label %bb.bc ; 3 uses

.noexc148:                                        ; preds = %bb.az
  %i.gy = icmp sgt i32 %i.gh, -1
  br i1 %i.gy, label %.preheader.i.i.i138, label %bb.ba

.preheader.i.i.i138:                              ; preds = %.noexc148
  %.not187 = icmp eq i32 %i.gh, 0
  br i1 %.not187, label %._crit_edge.i.i.i140, label %.lr.ph.i.i.i143

.lr.ph.i.i.i143:                                  ; preds = %.preheader.i.i.i138
  %wide.trip.count.i.i.i144 = zext nneg i32 %i.gh to i64
  %i.gz = shl nuw nsw i64 %wide.trip.count.i.i.i144, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %22, ptr align 4 %.sroa.0.0, i64 %i.gz, i1 false), !tbaa !13
  br label %._crit_edge.thread.i.i.i141

._crit_edge.i.i.i140:                             ; preds = %.preheader.i.i.i138
  %i.ha = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ha, label %bb.ba, label %._crit_edge.thread.i.i.i141

._crit_edge.thread.i.i.i141:                      ; preds = %.lr.ph.i.i.i143, %._crit_edge.i.i.i140
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.thread.i.i.i141, %._crit_edge.i.i.i140, %.noexc148
  %i.hb = sext i32 %i.gh to i64                   ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %22, i64 %i.hb
  store i32 0, ptr %i.hc, align 4, !tbaa !13
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131

_ZN11CStringBaseIwE10GrowLengthEi.exit.i131:      ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i81._ZN11CStringBaseIwE10GrowLengthEi.exit.i131_crit_edge, %bb.ba
  %.pre-phi300 = phi i64 [ %.pre299, %_ZN11CStringBaseIwEC2ERKS0_.exit.i81._ZN11CStringBaseIwE10GrowLengthEi.exit.i131_crit_edge ], [ %i.hb, %bb.ba ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i81._ZN11CStringBaseIwE10GrowLengthEi.exit.i131_crit_edge ], [ %22, %bb.ba ] ; 6 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %.sroa.0.1, i64 %.pre-phi300
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131
  %.04.i.i132 = phi ptr [ %i.el, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131 ], [ %i.he, %bb.bb ] ; 2 uses
  %.0.i4.i133 = phi ptr [ %i.hd, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i131 ], [ %i.hg, %bb.bb ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.04.i.i132, i64 4
  %i.hf = load i32, ptr %.04.i.i132, align 4, !tbaa !13 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i4.i133, i64 4
  store i32 %i.hf, ptr %.0.i4.i133, align 4, !tbaa !13
  %.not.i5.i134 = icmp eq i32 %i.hf, 0
  br i1 %.not.i5.i134, label %bb.be, label %bb.bb, !llvm.loop !20

bb.bc:                                            ; preds = %bb.az
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = icmp eq ptr %.sroa.0.0, null
  br i1 %i.hi, label %.body84, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %.body84

bb.be:                                            ; preds = %bb.bb
  %i.hj = add nsw i32 %i.em, %i.gh                ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !alias.scope !70
  %i.hk = add nsw i32 %i.hj, 1                    ; 5 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hm = zext nneg i32 %i.hk to i64
  %i.hn = icmp slt i32 %i.hj, -1
  %i.ho = shl nuw nsw i64 %i.hm, 2
  %i.hp = select i1 %i.hn, i64 -1, i64 %i.ho
  %i.hq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hp) #15
          to label %.noexc93 unwind label %bb.bv  ; 3 uses

.noexc93:                                         ; preds = %bb.bf
  store ptr %i.hq, ptr %10, align 8, !tbaa !19, !alias.scope !70
  store i32 0, ptr %i.hq, align 4, !tbaa !13, !noalias !70
  store i32 %i.hk, ptr %i.ac, align 4, !tbaa !22, !alias.scope !70
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87:    ; preds = %.noexc93, %bb.be
  %.pr = phi ptr [ null, %bb.be ], [ %i.hq, %.noexc93 ] ; 8 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87
  %.04.i.i.i88 = phi ptr [ %.sroa.0.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87 ], [ %i.hr, %bb.bg ] ; 2 uses
  %.0.i.i.i89 = phi ptr [ %.pr, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i87 ], [ %i.ht, %bb.bg ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.04.i.i.i88, i64 4
  %i.hs = load i32, ptr %.04.i.i.i88, align 4, !tbaa !13, !noalias !70 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i.i.i89, i64 4
  store i32 %i.hs, ptr %.0.i.i.i89, align 4, !tbaa !13, !noalias !70
  %.not.i.i.i90 = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i.i90, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i91, label %bb.bg, !llvm.loop !20

_ZN11CStringBaseIwEC2ERKS0_.exit.i91:             ; preds = %bb.bg
  store i32 %i.hj, ptr %i.ad, align 8, !tbaa !15, !alias.scope !70
  %.not.i.i150.not = icmp slt i32 %i.ep, 0
  br i1 %.not.i.i150.not, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151thread-pre-split, label %bb.bh

bb.bh:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i91
  %i.hu = icmp sgt i32 %i.hj, 63
  %i.hv = lshr i32 %i.hk, 1
  %i.hw = icmp sgt i32 %i.hj, 7
  %..i.i155 = select i1 %i.hw, i32 16, i32 4
  %.0.i.i156 = select i1 %i.hu, i32 %i.hv, i32 %..i.i155
  %.1.i.i157 = call i32 @llvm.smax.i32(i32 %.0.i.i156, i32 %i.eq)
  %i.hx = add nsw i32 %.1.i.i157, %i.hk           ; 3 uses
  %i.hy = add nsw i32 %i.hx, 1                    ; 2 uses
  %i.hz = icmp eq i32 %i.hx, %i.hj
  br i1 %i.hz, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151thread-pre-split, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ia = zext nneg i32 %i.hy to i64
  %i.ib = icmp slt i32 %i.hx, -1
  %i.ic = shl nuw nsw i64 %i.ia, 2
  %i.id = select i1 %i.ib, i64 -1, i64 %i.ic
  %i.ie = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.id) #15
          to label %.noexc168 unwind label %bb.bl ; 5 uses

.noexc168:                                        ; preds = %bb.bi
  %i.if = icmp sgt i32 %i.hj, -1
  br i1 %i.if, label %.preheader.i.i.i158, label %bb.bj

.preheader.i.i.i158:                              ; preds = %.noexc168
  %.not394 = icmp eq i32 %i.hj, 0
  br i1 %.not394, label %._crit_edge.i.i.i160, label %.lr.ph.i.i.i163

.lr.ph.i.i.i163:                                  ; preds = %.preheader.i.i.i158
  %wide.trip.count.i.i.i164 = zext nneg i32 %i.hj to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.hj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i163
  %n.vec = and i64 %wide.trip.count.i.i.i164, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load = load <4 x i32>, ptr %i.ig, align 4, !tbaa !13
  %wide.load458 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !13
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %index ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <4 x i32> %wide.load, ptr %i.ii, align 4, !tbaa !13
  store <4 x i32> %wide.load458, ptr %i.ij, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i164
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i161, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i163, %middle.block
  %indvars.iv.i.i.i165.ph = phi i64 [ 0, %.lr.ph.i.i.i163 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i160:                             ; preds = %.preheader.i.i.i158
  %i.il = icmp eq ptr %.pr, null
  br i1 %i.il, label %bb.bj, label %._crit_edge.thread.i.i.i161

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i165 = phi i64 [ %indvars.iv.next.i.i.i166, %scalar.ph ], [ %indvars.iv.i.i.i165.ph, %scalar.ph.preheader ] ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %indvars.iv.i.i.i165
  %i.in = load i32, ptr %i.im, align 4, !tbaa !13
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i.i.i165
  store i32 %i.in, ptr %i.io, align 4, !tbaa !13
  %indvars.iv.next.i.i.i166 = add nuw nsw i64 %indvars.iv.i.i.i165, 1 ; 2 uses
  %exitcond.not.i.i.i167 = icmp eq i64 %indvars.iv.next.i.i.i166, %wide.trip.count.i.i.i164
  br i1 %exitcond.not.i.i.i167, label %._crit_edge.thread.i.i.i161, label %scalar.ph, !llvm.loop !74

._crit_edge.thread.i.i.i161:                      ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i.i160
  call void @_ZdaPv(ptr noundef nonnull %.pr) #16
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.thread.i.i.i161, %._crit_edge.i.i.i160, %.noexc168
  store ptr %i.ie, ptr %10, align 8, !tbaa !19
  %i.ip = sext i32 %i.hj to i64                   ; 2 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.ip
  store i32 0, ptr %i.iq, align 4, !tbaa !13
  store i32 %i.hy, ptr %i.ac, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151

_ZN11CStringBaseIwE10GrowLengthEi.exit.i151thread-pre-split: ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i91, %bb.bh
  %.pre296 = sext i32 %i.hj to i64
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151

_ZN11CStringBaseIwE10GrowLengthEi.exit.i151:      ; preds = %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151thread-pre-split, %bb.bj
  %.pre-phi = phi i64 [ %.pre296, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151thread-pre-split ], [ %i.ip, %bb.bj ]
  %i.ir = phi ptr [ %.pr, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151thread-pre-split ], [ %i.ie, %bb.bj ] ; 5 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %.pre-phi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151
  %.04.i.i152 = phi ptr [ %i.gb, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151 ], [ %i.it, %bb.bk ] ; 2 uses
  %.0.i4.i153 = phi ptr [ %i.is, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i151 ], [ %i.iv, %bb.bk ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.04.i.i152, i64 4
  %i.iu = load i32, ptr %.04.i.i152, align 4, !tbaa !13 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i4.i153, i64 4
  store i32 %i.iu, ptr %.0.i4.i153, align 4, !tbaa !13
  %.not.i5.i154 = icmp eq i32 %i.iu, 0
  br i1 %.not.i5.i154, label %bb.bn, label %bb.bk, !llvm.loop !20

bb.bl:                                            ; preds = %bb.bi
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = icmp eq ptr %.pr, null
  br i1 %i.ix, label %.body94, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZdaPv(ptr noundef nonnull %.pr) #16
  br label %.body94

bb.bn:                                            ; preds = %bb.bk
  %i.iy = add nsw i32 %i.hj, %i.eq
  store i32 %i.iy, ptr %i.ad, align 8, !tbaa !15
  invoke void @_ZN9CDirItems18EnumerateDirectoryEiiRK11CStringBaseIwER13CObjectVectorIS1_ER13CRecordVectorIjE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.gg, i32 noundef %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.iz = icmp eq ptr %i.ir, null
  br i1 %i.iz, label %_ZN11CStringBaseIwED2Ev.exit97, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZdaPv(ptr noundef nonnull %i.ir) #16
  br label %_ZN11CStringBaseIwED2Ev.exit97

_ZN11CStringBaseIwED2Ev.exit97:                   ; preds = %bb.bo, %bb.bp
  %i.ja = icmp eq ptr %.sroa.0.1, null
  br i1 %i.ja, label %_ZN11CStringBaseIwED2Ev.exit98, label %bb.bq

bb.bq:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit97
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #16
  br label %_ZN11CStringBaseIwED2Ev.exit98

_ZN11CStringBaseIwED2Ev.exit98:                   ; preds = %_ZN11CStringBaseIwED2Ev.exit97, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.jb = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.cb, label %bb.br

bb.br:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit98
  call void @_ZdaPv(ptr noundef nonnull %i.jb) #16
  br label %bb.cb

bb.bs:                                            ; preds = %bb.ap
  %i.jd = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_Z14EnumerateItemsRKN9NWildcard7CCensorER9CDirItemsP20IEnumDirItemCallbackR13CObjectVectorI11CStringBaseIwEER13CRecordVectorIjE:bb.a

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %i.y)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %i.s, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL17EnumerateDirItemsRKN9NWildcard11CCensorNodeEiiRK11CStringBaseIwERK13CObjectVectorIS4_ER9CDirItemsbP20IEnumDirItemCallbackRS8_R13CRecordVectorIjE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(128) %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %class.CRecordVector.7, align 8    ; 15 uses
  %11 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 10 uses
  %12 = alloca %class.CObjectVector.0, align 8    ; 14 uses
  %13 = alloca %class.CObjectVector.0, align 8    ; 14 uses
  %14 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 8 uses
  %15 = alloca %class.CObjectVector.0, align 8    ; 11 uses
  %16 = alloca %"class.NWindows::NFile::NFind::CEnumeratorW", align 8 ; 10 uses
  %17 = alloca %class.CStringBase, align 8        ; 12 uses
  %18 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %19 = alloca %class.CObjectVector.0, align 8    ; 22 uses
  %20 = alloca %class.CObjectVector.0, align 8    ; 14 uses
  br i1 %6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK9NWildcard11CCensorNode16NeedCheckSubDirsEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0162.shrunk = phi i1 [ true, %bb.a ], [ %i.b, %bb.b ] ; 3 uses
  %.not235 = icmp ne ptr %7, null                 ; 2 uses
  br i1 %.not235, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %3, align 8, !tbaa !19
  %i.j = load ptr, ptr %7, align 8, !tbaa !78
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.e, i64 noundef %i.h, ptr noundef %i.i) ; 2 uses
  %.not236.not = icmp eq i32 %i.l, 0
  br i1 %.not236.not, label %bb.e, label %bb.fu

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = icmp ne i32 %i.n, 0
  %or.cond = or i1 %.0162.shrunk, %i.o
  br i1 %or.cond, label %.thread487, label %.preheader501

.preheader501:                                    ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader501
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !81, !range !41, !noundef !42
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.thread.loopexit, label %.lr.ph936

bb.f:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !81, !range !41, !noundef !42
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.thread.loopexit, label %.lr.ph936, !llvm.loop !85

.lr.ph936:                                        ; preds = %.lr.ph, %bb.f
  %i.ae = phi ptr [ %i.aa, %bb.f ], [ %i.u, %.lr.ph ] ; 2 uses
  %indvars.iv935 = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph ] ; 4 uses
  %.pre734934 = phi i32 [ %.pre.pre, %bb.f ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %.not237 = icmp eq i32 %i.ag, 1
  br i1 %.not237, label %bb.g, label %.thread.loopexit

bb.g:                                             ; preds = %.lr.ph936
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !15
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.thread.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = tail call noundef zeroext i1 @_Z23DoesNameContainWildCardRK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
  %.pre.pre = load i32, ptr %i.p, align 4, !tbaa !26 ; 5 uses
  br i1 %i.an, label %.thread.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv935, 1 ; 5 uses
  %i.ao = sext i32 %.pre.pre to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.f, label %..thread.loopexit_crit_edge947, !llvm.loop !85

..thread.loopexit_crit_edge947:                   ; preds = %bb.i
  br label %.thread.loopexit, !llvm.loop !85

.thread.loopexit:                                 ; preds = %bb.f, %.lr.ph936, %bb.g, %bb.h, %..thread.loopexit_crit_edge947, %.lr.ph
  %.pre = phi i32 [ %.pre.pre, %..thread.loopexit_crit_edge947 ], [ %i.q, %.lr.ph ], [ %.pre.pre, %bb.f ], [ %.pre.pre, %bb.h ], [ %.pre734934, %bb.g ], [ %.pre734934, %.lr.ph936 ]
  %.0184.lcssa.ph.in = phi i64 [ %indvars.iv.next, %..thread.loopexit_crit_edge947 ], [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ], [ %indvars.iv935, %bb.h ], [ %indvars.iv935, %bb.g ], [ %indvars.iv935, %.lr.ph936 ]
  %.0184.lcssa.ph = trunc i64 %.0184.lcssa.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.preheader501
  %i.aq = phi i32 [ %i.q, %.preheader501 ], [ %.pre, %.thread.loopexit ] ; 2 uses
  %.0184.lcssa = phi i32 [ 0, %.preheader501 ], [ %.0184.lcssa.ph, %.thread.loopexit ]
  %i.ar = icmp eq i32 %.0184.lcssa, %i.aq
  br i1 %i.ar, label %bb.j, label %.thread487

bb.j:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.at, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %10, align 8, !tbaa !78
  %i.au = icmp sgt i32 %i.aq, 0
  br i1 %i.au, label %.lr.ph641, label %.preheader

.lr.ph641:                                        ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 48
  br label %bb.k

.preheader:                                       ; preds = %bb.bm, %bb.j
  %.2.lcssa = phi i32 [ 0, %bb.j ], [ %.5, %bb.bm ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !26
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph645, label %.thread490

.lr.ph645:                                        ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 48
  br label %bb.bp

bb.k:                                             ; preds = %.lr.ph641, %bb.bm
  %indvars.iv722 = phi i64 [ 0, %.lr.ph641 ], [ %indvars.iv.next723, %bb.bm ] ; 2 uses
  %.2639 = phi i32 [ 0, %.lr.ph641 ], [ %.5, %bb.bm ] ; 5 uses
  %i.cj = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv722
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !27 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !23
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !27 ; 4 uses
  %i.cp = load i32, ptr %i.aw, align 8, !tbaa !15, !noalias !86 ; 10 uses
  %i.cq = add nsw i32 %i.cp, 1                    ; 4 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = icmp slt i32 %i.cp, -1
  %i.cu = shl nuw nsw i64 %i.cs, 2
  %i.cv = select i1 %i.ct, i64 -1, i64 %i.cu
  %i.cw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cv) #15
          to label %.noexc unwind label %bb.z     ; 2 uses

.noexc:                                           ; preds = %bb.l
  store i32 0, ptr %i.cw, align 4, !tbaa !13, !noalias !86
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc, %bb.k
  %.sroa.0472.0 = phi ptr [ null, %bb.k ], [ %i.cw, %.noexc ] ; 7 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !19, !noalias !86
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.cx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.cy, %bb.m ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.sroa.0472.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.da, %bb.m ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.cz = load i32, ptr %.04.i.i.i, align 4, !tbaa !13, !noalias !86 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.cz, ptr %.0.i.i.i, align 4, !tbaa !13, !noalias !86
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.m, !llvm.loop !20

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !15 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dc, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge

_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge: ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.pre739 = sext i32 %i.cp to i64
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

bb.n:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.dd = icmp sgt i32 %i.cp, 63
  %i.de = lshr i32 %i.cq, 1
  %i.df = icmp sgt i32 %i.cp, 7
  %..i.i = select i1 %i.df, i32 16, i32 4
  %.0.i.i = select i1 %i.dd, i32 %i.de, i32 %..i.i
  %i.dg = call i32 @llvm.umax.i32(i32 %.0.i.i, i32 %i.dc)
  %21 = add nsw i32 %i.dg, %i.cq                  ; 2 uses
  %i.dh = add nsw i32 %21, 1
  %22 = zext nneg i32 %i.dh to i64
  %23 = icmp slt i32 %21, -1
  %24 = shl nuw nsw i64 %22, 2
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %25) #15
          to label %.noexc424 unwind label %bb.q  ; 3 uses

.noexc424:                                        ; preds = %bb.n
  %i.di = icmp sgt i32 %i.cp, -1
  br i1 %i.di, label %.preheader.i.i.i, label %bb.o

.preheader.i.i.i:                                 ; preds = %.noexc424
  %.not494 = icmp eq i32 %i.cp, 0
  br i1 %.not494, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cp to i64
  %i.dj = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %26, ptr align 4 %.sroa.0472.0, i64 %i.dj, i1 false), !tbaa !13
  br label %._crit_edge.thread.i.i.i

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.dk = icmp eq ptr %.sroa.0472.0, null
  br i1 %i.dk, label %bb.o, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0472.0) #16
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc424
  %i.dl = sext i32 %i.cp to i64                   ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %26, i64 %i.dl
  store i32 0, ptr %i.dm, align 4, !tbaa !13
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge, %bb.o
  %.pre-phi740 = phi i64 [ %.pre739, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge ], [ %i.dl, %bb.o ]
  %.sroa.0472.1 = phi ptr [ %.sroa.0472.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._ZN11CStringBaseIwE10GrowLengthEi.exit.i_crit_edge ], [ %26, %bb.o ] ; 8 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %.sroa.0472.1, i64 %.pre-phi740
  %i.do = load ptr, ptr %i.co, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.04.i.i = phi ptr [ %i.do, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.dp, %bb.p ] ; 2 uses
  %.0.i4.i = phi ptr [ %i.dn, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.dr, %bb.p ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.dq = load i32, ptr %.04.i.i, align 4, !tbaa !13 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 4
  store i32 %i.dq, ptr %.0.i4.i, align 4, !tbaa !13
  %.not.i5.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i5.i, label %bb.s, label %bb.p, !llvm.loop !20

bb.q:                                             ; preds = %bb.n
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = icmp eq ptr %.sroa.0472.0, null
  br i1 %i.dt, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0472.0) #16
  br label %.body

bb.s:                                             ; preds = %bb.p
  %i.du = load i32, ptr %i.db, align 8, !tbaa !15
  %i.dv = add nsw i32 %i.du, %i.cp                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store i64 0, ptr %i.br, align 8
  %i.dw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.t unwind label %bb.aa      ; 2 uses

bb.t:                                             ; preds = %bb.s
  store ptr %i.dw, ptr %i.ax, align 8, !tbaa !19
  store i32 0, ptr %i.dw, align 4, !tbaa !13
  store i32 4, ptr %i.ay, align 4, !tbaa !22
  %i.dx = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %.sroa.0472.1)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  br i1 %i.dx, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = tail call ptr @__errno_location() #18
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ea = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.eb = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ec
  store i32 %i.dz, ptr %i.ed, align 4, !tbaa !4
  %i.ee = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ba, align 4, !tbaa !26
  %i.eg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15
          to label %.noexc281 unwind label %bb.ab ; 6 uses

.noexc281:                                        ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  %i.eh = add nsw i32 %i.dv, 1                    ; 3 uses
  %i.ei = icmp ne i32 %i.eh, 0
  call void @llvm.assume(i1 %i.ei)
  %i.ej = zext nneg i32 %i.eh to i64
  %i.ek = icmp slt i32 %i.dv, -1
  %i.el = shl nuw nsw i64 %i.ej, 2
  %i.em = select i1 %i.ek, i64 -1, i64 %i.el
  %i.en = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.em) #15
          to label %.noexc.i unwind label %bb.y   ; 3 uses

.noexc.i:                                         ; preds = %.noexc281
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store ptr %i.en, ptr %i.eg, align 8, !tbaa !19
  store i32 0, ptr %i.en, align 4, !tbaa !13
  store i32 %i.eh, ptr %i.eo, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i277

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i277:   ; preds = %.noexc.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i277
  %.04.i.i.i278 = phi ptr [ %i.ep, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i277 ], [ %.sroa.0472.1, %.noexc.i ] ; 2 uses
  %.0.i.i.i279 = phi ptr [ %i.er, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i277 ], [ %i.en, %.noexc.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.04.i.i.i278, i64 4
  %i.eq = load i32, ptr %.04.i.i.i278, align 4, !tbaa !13 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i.i279, i64 4
  store i32 %i.eq, ptr %.0.i.i.i279, align 4, !tbaa !13
  %.not.i.i.i280 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i280, label %bb.x, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i277, !llvm.loop !20

bb.x:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i277
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 %i.dv, ptr %i.es, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit unwind label %bb.ab

bb.y:                                             ; preds = %.noexc281
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef 16) #16
  br label %.body283

_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit: ; preds = %bb.x
  %i.eu = load ptr, ptr %i.bb, align 8, !tbaa !23
  %i.ev = load i32, ptr %i.bc, align 4, !tbaa !26 ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ew
  store ptr %i.eg, ptr %i.ex, align 8, !tbaa !27
  %i.ey = add nsw i32 %i.ev, 1
  store i32 %i.ey, ptr %i.bc, align 4, !tbaa !26
  br label %bb.bj

bb.z:                                             ; preds = %bb.l
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.s
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit321

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body283

bb.ac:                                            ; preds = %bb.u
  %i.fc = load i32, ptr %i.bd, align 8, !tbaa !8
  %i.fd = and i32 %i.fc, 16
  %.not495 = icmp eq i32 %i.fd, 0                 ; 3 uses
  br i1 %.not495, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cl, i64 34
  %i.ff = load i8, ptr %i.fe, align 2, !tbaa !89, !range !41, !noundef !42
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.aj, label %bb.ae

.critedge:                                        ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cl, i64 33
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !90, !range !41, !noundef !42
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %.critedge, %bb.ad
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.fk = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.fl = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fm
  store i32 -2147467259, ptr %i.fn, align 4, !tbaa !4
  %i.fo = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.ba, align 4, !tbaa !26
  %i.fq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15
          to label %.noexc292 unwind label %bb.ai ; 6 uses

.noexc292:                                        ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  %i.fr = add nsw i32 %i.dv, 1                    ; 3 uses
  %i.fs = icmp ne i32 %i.fr, 0
  call void @llvm.assume(i1 %i.fs)
  %i.ft = zext nneg i32 %i.fr to i64
  %i.fu = icmp slt i32 %i.dv, -1
  %i.fv = shl nuw nsw i64 %i.ft, 2
  %i.fw = select i1 %i.fu, i64 -1, i64 %i.fv
  %i.fx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fw) #15
          to label %.noexc.i287 unwind label %bb.ah ; 3 uses

.noexc.i287:                                      ; preds = %.noexc292
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store ptr %i.fx, ptr %i.fq, align 8, !tbaa !19
  store i32 0, ptr %i.fx, align 4, !tbaa !13
  store i32 %i.fr, ptr %i.fy, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i288

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i288:   ; preds = %.noexc.i287, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i288
  %.04.i.i.i289 = phi ptr [ %i.fz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i288 ], [ %.sroa.0472.1, %.noexc.i287 ] ; 2 uses
  %.0.i.i.i290 = phi ptr [ %i.gb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i288 ], [ %i.fx, %.noexc.i287 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.04.i.i.i289, i64 4
  %i.ga = load i32, ptr %.04.i.i.i289, align 4, !tbaa !13 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i.i290, i64 4
  store i32 %i.ga, ptr %.0.i.i.i290, align 4, !tbaa !13
  %.not.i.i.i291 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i.i291, label %bb.ag, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i288, !llvm.loop !20

bb.ag:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i288
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i32 %i.dv, ptr %i.gc, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit296 unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc292
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef 16) #16
  br label %.body283

_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit296: ; preds = %bb.ag
  %i.ge = load ptr, ptr %i.bb, align 8, !tbaa !23
  %i.gf = load i32, ptr %i.bc, align 4, !tbaa !26 ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gg
  store ptr %i.fq, ptr %i.gh, align 8, !tbaa !27
  %i.gi = add nsw i32 %i.gf, 1
  store i32 %i.gi, ptr %i.bc, align 4, !tbaa !26
  br label %bb.bj

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.as
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body283
end_hunk_2
begin_hunk_3_@_ZL17EnumerateDirItemsRKN9NWildcard11CCensorNodeEiiRK11CStringBaseIwERK13CObjectVectorIS4_ER9CDirItemsbP20IEnumDirItemCallbackRS8_R13CRecordVectorIjE:bb.a

.lr.ph637:                                        ; preds = %bb.aw, %bb.ay
  %.0227636 = phi i32 [ %i.hz, %bb.ay ], [ %i.hm, %bb.aw ] ; 2 uses
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.lr.ph637
  %i.hu = load ptr, ptr %i.bp, align 8, !tbaa !23 ; 2 uses
  %i.hv = load i32, ptr %i.bo, align 4, !tbaa !26 ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %i.hu, i64 %i.hw
  store i8 1, ptr %i.hx, align 1, !tbaa !40
  %i.hy = add nsw i32 %i.hv, 1
  store i32 %i.hy, ptr %i.bo, align 4, !tbaa !26
  %i.hz = add i32 %.0227636, 1
  %exitcond.not = icmp eq i32 %.0227636, %i.hk
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph637, !llvm.loop !91

bb.az:                                            ; preds = %.lr.ph637
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body315

bb.ba:                                            ; preds = %bb.av
  %i.ib = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15
          to label %.noexc313 unwind label %bb.ax ; 6 uses

.noexc313:                                        ; preds = %bb.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i8 0, i64 16, i1 false)
  %i.ic = load i32, ptr %i.db, align 8, !tbaa !15 ; 3 uses
  %i.id = add nsw i32 %i.ic, 1                    ; 3 uses
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i309, label %bb.bb

bb.bb:                                            ; preds = %.noexc313
  %i.if = zext nneg i32 %i.id to i64
  %i.ig = icmp slt i32 %i.ic, -1
  %i.ih = shl nuw nsw i64 %i.if, 2
  %i.ii = select i1 %i.ig, i64 -1, i64 %i.ih
  %i.ij = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ii) #15
          to label %.noexc.i308 unwind label %bb.be ; 3 uses

.noexc.i308:                                      ; preds = %bb.bb
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store ptr %i.ij, ptr %i.ib, align 8, !tbaa !19
  store i32 0, ptr %i.ij, align 4, !tbaa !13
  store i32 %i.id, ptr %i.ik, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i309

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i309:   ; preds = %.noexc.i308, %.noexc313
  %i.il = phi ptr [ null, %.noexc313 ], [ %i.ij, %.noexc.i308 ]
  %i.im = load ptr, ptr %i.co, align 8, !tbaa !19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i309
  %.04.i.i.i310 = phi ptr [ %i.im, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i309 ], [ %i.in, %bb.bc ] ; 2 uses
  %.0.i.i.i311 = phi ptr [ %i.il, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i309 ], [ %i.ip, %bb.bc ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.04.i.i.i310, i64 4
  %i.io = load i32, ptr %.04.i.i.i310, align 4, !tbaa !13 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.i.i.i311, i64 4
  store i32 %i.io, ptr %.0.i.i.i311, align 4, !tbaa !13
  %.not.i.i.i312 = icmp eq i32 %i.io, 0
  br i1 %.not.i.i.i312, label %bb.bd, label %bb.bc, !llvm.loop !20

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i32 %i.ic, ptr %i.iq, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit317 unwind label %bb.ax

bb.be:                                            ; preds = %bb.bb
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef 16) #16
  br label %.body315

_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit317: ; preds = %bb.bd
  %i.is = load ptr, ptr %i.bm, align 8, !tbaa !23
  %i.it = load i32, ptr %i.bn, align 4, !tbaa !26 ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.iu
  store ptr %i.ib, ptr %i.iv, align 8, !tbaa !27
  %i.iw = add nsw i32 %i.it, 1
  store i32 %i.iw, ptr %i.bn, align 4, !tbaa !26
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit317, %._crit_edge
  %.0226 = phi ptr [ %i.hs, %._crit_edge ], [ %0, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit317 ]
  %i.ix = invoke fastcc noundef i32 @_ZL22EnumerateDirItems_SpecRKN9NWildcard11CCensorNodeEiiRK11CStringBaseIwES6_RK13CObjectVectorIS4_ER9CDirItemsbP20IEnumDirItemCallbackRS8_R13CRecordVectorIjE(ptr noundef nonnull align 8 dereferenceable(120) %.0226, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(128) %5, i1 noundef zeroext true, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bg unwind label %bb.bi     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %13, align 8, !tbaa !78
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit318 unwind label %bb.bh, !inline_history !80

bb.bh:                                            ; preds = %bb.bg
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #19, !inline_history !80
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit318: ; preds = %bb.bg
  %.not243 = icmp ne i32 %i.ix, 0                 ; 2 uses
  %.2. = select i1 %.not243, i32 %i.ix, i32 %.2639
  %.266 = zext i1 %.not243 to i32
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17, !inline_history !80
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body315

bb.bj:                                            ; preds = %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit296, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit318, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit, %bb.at
  %.6173 = phi i32 [ 7, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit ], [ %.266, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit318 ], [ 7, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit296 ], [ 7, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit ], [ 7, %bb.at ] ; 2 uses
  %.5 = phi i32 [ %.2639, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit ], [ %.2., %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit318 ], [ %.2639, %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit296 ], [ %.2639, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit ], [ %.2639, %bb.at ] ; 3 uses
  %i.jb = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.jb) #16
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit:    ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.jd = icmp eq ptr %.sroa.0472.1, null
  br i1 %i.jd, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0472.1) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit, %bb.bl
  switch i32 %.6173, label %.loopexit499 [
    i32 0, label %bb.bm
    i32 7, label %bb.bm
  ]

bb.bm:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit, %_ZN11CStringBaseIwED2Ev.exit
  %indvars.iv.next723 = add nuw nsw i64 %indvars.iv722, 1 ; 2 uses
  %i.je = load i32, ptr %i.p, align 4, !tbaa !26
  %i.jf = sext i32 %i.je to i64
  %i.jg = icmp slt i64 %indvars.iv.next723, %i.jf
  br i1 %i.jg, label %bb.k, label %.preheader, !llvm.loop !92

.body315:                                         ; preds = %bb.ax, %bb.be, %bb.bi, %bb.az
  %.pn244 = phi { ptr, i32 } [ %i.ia, %bb.az ], [ %i.ja, %bb.bi ], [ %i.ht, %bb.ax ], [ %i.ir, %bb.be ]
  call void @_ZN13CObjectVectorI11CStringBaseIwEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %.body283

.body283:                                         ; preds = %bb.ai, %bb.ah, %bb.ab, %bb.y, %.body304, %.body315
  %.pn244.pn.pn = phi { ptr, i32 } [ %eh.lpad-body305, %.body304 ], [ %.pn244, %.body315 ], [ %i.et, %bb.y ], [ %i.fb, %bb.ab ], [ %i.gj, %bb.ai ], [ %i.gd, %bb.ah ] ; 2 uses
  %i.jh = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit321, label %bb.bn

bb.bn:                                            ; preds = %.body283
  call void @_ZdaPv(ptr noundef nonnull %i.jh) #16
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit321

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit321: ; preds = %bb.bn, %.body283, %bb.aa
  %.pn244.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.aa ], [ %.pn244.pn.pn, %.body283 ], [ %.pn244.pn.pn, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.jj = icmp eq ptr %.sroa.0472.1, null
  br i1 %i.jj, label %.body, label %bb.bo

bb.bo:                                            ; preds = %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit321
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0472.1) #16
  br label %.body

.thread490:                                       ; preds = %bb.cx, %.preheader
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.fu

bb.bp:                                            ; preds = %.lr.ph645, %bb.cx
  %indvars.iv726 = phi i64 [ 0, %.lr.ph645 ], [ %indvars.iv.next727, %bb.cx ] ; 4 uses
  %.6644 = phi i32 [ %.2.lcssa, %.lr.ph645 ], [ %.9, %bb.cx ] ; 5 uses
  %i.jk = load i32, ptr %i.bv, align 4, !tbaa !26
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp slt i64 %indvars.iv726, %i.jl
  br i1 %i.jm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jn = load ptr, ptr %i.bw, align 8, !tbaa !23
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %indvars.iv726
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !40, !range !41, !noundef !42
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.br, label %bb.cx

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.jr = load ptr, ptr %i.bx, align 8, !tbaa !23
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv726
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !27 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.by, align 8, !tbaa !15, !noalias !93 ; 10 uses
  %i.jw = add nsw i32 %i.jv, 1                    ; 4 uses
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i323, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jy = zext nneg i32 %i.jw to i64
  %i.jz = icmp slt i32 %i.jv, -1
  %i.ka = shl nuw nsw i64 %i.jy, 2
  %i.kb = select i1 %i.jz, i64 -1, i64 %i.ka
  %i.kc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kb) #15
          to label %.noexc329 unwind label %bb.ce ; 2 uses

.noexc329:                                        ; preds = %bb.bs
  store i32 0, ptr %i.kc, align 4, !tbaa !13, !noalias !93
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i323

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i323:   ; preds = %.noexc329, %bb.br
  %.sroa.0.0 = phi ptr [ null, %bb.br ], [ %i.kc, %.noexc329 ] ; 7 uses
  %i.kd = load ptr, ptr %3, align 8, !tbaa !19, !noalias !93
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i323
  %.04.i.i.i324 = phi ptr [ %i.kd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i323 ], [ %i.ke, %bb.bt ] ; 2 uses
  %.0.i.i.i325 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i323 ], [ %i.kg, %bb.bt ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.04.i.i.i324, i64 4
  %i.kf = load i32, ptr %.04.i.i.i324, align 4, !tbaa !13, !noalias !93 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i.i325, i64 4
  store i32 %i.kf, ptr %.0.i.i.i325, align 4, !tbaa !13, !noalias !93
  %.not.i.i.i326 = icmp eq i32 %i.kf, 0
  br i1 %.not.i.i.i326, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i327, label %bb.bt, !llvm.loop !20

_ZN11CStringBaseIwEC2ERKS0_.exit.i327:            ; preds = %bb.bt
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !15 ; 2 uses
  %.not.i.i425 = icmp sgt i32 %i.ki, 0
  br i1 %.not.i.i425, label %bb.bu, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i327._ZN11CStringBaseIwE10GrowLengthEi.exit.i426_crit_edge

_ZN11CStringBaseIwEC2ERKS0_.exit.i327._ZN11CStringBaseIwE10GrowLengthEi.exit.i426_crit_edge: ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i327
  %.pre741 = sext i32 %i.jv to i64
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i426

bb.bu:                                            ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i327
  %i.kj = icmp sgt i32 %i.jv, 63
  %i.kk = lshr i32 %i.jw, 1
  %i.kl = icmp sgt i32 %i.jv, 7
  %..i.i430 = select i1 %i.kl, i32 16, i32 4
  %.0.i.i431 = select i1 %i.kj, i32 %i.kk, i32 %..i.i430
  %i.km = call i32 @llvm.umax.i32(i32 %.0.i.i431, i32 %i.ki)
  %27 = add nsw i32 %i.km, %i.jw                  ; 2 uses
  %i.kn = add nsw i32 %27, 1
  %28 = zext nneg i32 %i.kn to i64
  %29 = icmp slt i32 %27, -1
  %30 = shl nuw nsw i64 %28, 2
  %31 = select i1 %29, i64 -1, i64 %30
  %32 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %31) #15
          to label %.noexc443 unwind label %bb.bx ; 3 uses

.noexc443:                                        ; preds = %bb.bu
  %i.ko = icmp sgt i32 %i.jv, -1
  br i1 %i.ko, label %.preheader.i.i.i433, label %bb.bv

.preheader.i.i.i433:                              ; preds = %.noexc443
  %.not = icmp eq i32 %i.jv, 0
  br i1 %.not, label %._crit_edge.i.i.i435, label %.lr.ph.i.i.i438

.lr.ph.i.i.i438:                                  ; preds = %.preheader.i.i.i433
  %wide.trip.count.i.i.i439 = zext nneg i32 %i.jv to i64
  %i.kp = shl nuw nsw i64 %wide.trip.count.i.i.i439, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %32, ptr align 4 %.sroa.0.0, i64 %i.kp, i1 false), !tbaa !13
  br label %._crit_edge.thread.i.i.i436

._crit_edge.i.i.i435:                             ; preds = %.preheader.i.i.i433
  %i.kq = icmp eq ptr %.sroa.0.0, null
  br i1 %i.kq, label %bb.bv, label %._crit_edge.thread.i.i.i436

._crit_edge.thread.i.i.i436:                      ; preds = %.lr.ph.i.i.i438, %._crit_edge.i.i.i435
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.thread.i.i.i436, %._crit_edge.i.i.i435, %.noexc443
  %i.kr = sext i32 %i.jv to i64                   ; 2 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %32, i64 %i.kr
  store i32 0, ptr %i.ks, align 4, !tbaa !13
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i426

_ZN11CStringBaseIwE10GrowLengthEi.exit.i426:      ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i327._ZN11CStringBaseIwE10GrowLengthEi.exit.i426_crit_edge, %bb.bv
  %.pre-phi742 = phi i64 [ %.pre741, %_ZN11CStringBaseIwEC2ERKS0_.exit.i327._ZN11CStringBaseIwE10GrowLengthEi.exit.i426_crit_edge ], [ %i.kr, %bb.bv ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i327._ZN11CStringBaseIwE10GrowLengthEi.exit.i426_crit_edge ], [ %32, %bb.bv ] ; 8 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %.sroa.0.1, i64 %.pre-phi742
  %i.ku = load ptr, ptr %i.ju, align 8, !tbaa !19
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i426
  %.04.i.i427 = phi ptr [ %i.ku, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i426 ], [ %i.kv, %bb.bw ] ; 2 uses
  %.0.i4.i428 = phi ptr [ %i.kt, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i426 ], [ %i.kx, %bb.bw ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.04.i.i427, i64 4
  %i.kw = load i32, ptr %.04.i.i427, align 4, !tbaa !13 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i4.i428, i64 4
  store i32 %i.kw, ptr %.0.i4.i428, align 4, !tbaa !13
  %.not.i5.i429 = icmp eq i32 %i.kw, 0
  br i1 %.not.i5.i429, label %bb.bz, label %bb.bw, !llvm.loop !20

bb.bx:                                            ; preds = %bb.bu
  %i.ky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kz = icmp eq ptr %.sroa.0.0, null
  br i1 %i.kz, label %.body, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %.body

bb.bz:                                            ; preds = %bb.bw
  %i.la = load i32, ptr %i.kh, align 8, !tbaa !15
  %i.lb = add nsw i32 %i.la, %i.jv                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i64 0, ptr %i.ci, align 8
  %i.lc = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %bb.ca unwind label %bb.cf     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.lc, ptr %i.bz, align 8, !tbaa !19
  store i32 0, ptr %i.lc, align 4, !tbaa !13
  store i32 4, ptr %i.ca, align 4, !tbaa !22
  %i.ld = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef %.sroa.0.1)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.ld, label %bb.cl, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.le = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode20AreThereIncludeItemsEv(ptr noundef nonnull align 8 dereferenceable(120) %i.jt)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.le, label %bb.ch, label %bb.cu

bb.ce:                                            ; preds = %bb.bs
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cf:                                            ; preds = %bb.bz
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit364

bb.cg:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cj, %bb.ci, %bb.ch, %bb.cc, %bb.ca
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %.body344

bb.ch:                                            ; preds = %bb.cd
  %i.li = tail call ptr @__errno_location() #18
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !4
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ci unwind label %bb.cg

bb.ci:                                            ; preds = %bb.ch
  %i.lk = load ptr, ptr %i.cb, align 8, !tbaa !23
  %i.ll = load i32, ptr %i.cc, align 4, !tbaa !26
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.lm
  store i32 %i.lj, ptr %i.ln, align 4, !tbaa !4
  %i.lo = load i32, ptr %i.cc, align 4, !tbaa !26
  %i.lp = add nsw i32 %i.lo, 1
  store i32 %i.lp, ptr %i.cc, align 4, !tbaa !26
  %i.lq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15
          to label %.noexc342 unwind label %bb.cg ; 6 uses

.noexc342:                                        ; preds = %bb.ci
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, i8 0, i64 16, i1 false)
  %i.lr = add nsw i32 %i.lb, 1                    ; 3 uses
  %i.ls = icmp ne i32 %i.lr, 0
  call void @llvm.assume(i1 %i.ls)
  %i.lt = zext nneg i32 %i.lr to i64
  %i.lu = icmp slt i32 %i.lb, -1
  %i.lv = shl nuw nsw i64 %i.lt, 2
  %i.lw = select i1 %i.lu, i64 -1, i64 %i.lv
  %i.lx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lw) #15
          to label %.noexc.i337 unwind label %bb.ck ; 3 uses

.noexc.i337:                                      ; preds = %.noexc342
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  store ptr %i.lx, ptr %i.lq, align 8, !tbaa !19
  store i32 0, ptr %i.lx, align 4, !tbaa !13
  store i32 %i.lr, ptr %i.ly, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i338

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i338:   ; preds = %.noexc.i337, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i338
  %.04.i.i.i339 = phi ptr [ %i.lz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i338 ], [ %.sroa.0.1, %.noexc.i337 ] ; 2 uses
  %.0.i.i.i340 = phi ptr [ %i.mb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i338 ], [ %i.lx, %.noexc.i337 ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.04.i.i.i339, i64 4
  %i.ma = load i32, ptr %.04.i.i.i339, align 4, !tbaa !13 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.i.i.i340, i64 4
  store i32 %i.ma, ptr %.0.i.i.i340, align 4, !tbaa !13
  %.not.i.i.i341 = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i341, label %bb.cj, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i338, !llvm.loop !20

bb.cj:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i338
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i32 %i.lb, ptr %i.mc, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit346 unwind label %bb.cg

bb.ck:                                            ; preds = %.noexc342
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef 16) #16
  br label %.body344

_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit346: ; preds = %bb.cj
  %i.me = load ptr, ptr %i.cd, align 8, !tbaa !23
  %i.mf = load i32, ptr %i.ce, align 4, !tbaa !26 ; 2 uses
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.mg
  store ptr %i.lq, ptr %i.mh, align 8, !tbaa !27
  %i.mi = add nsw i32 %i.mf, 1
  store i32 %i.mi, ptr %i.ce, align 4, !tbaa !26
  br label %bb.cu

bb.cl:                                            ; preds = %bb.cb
  %i.mj = load i32, ptr %i.cf, align 8, !tbaa !8
  %i.mk = and i32 %i.mj, 16
  %.not493 = icmp eq i32 %i.mk, 0
  br i1 %.not493, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.cn unwind label %bb.cg

bb.cn:                                            ; preds = %bb.cm
  %i.ml = load ptr, ptr %i.cb, align 8, !tbaa !23
  %i.mm = load i32, ptr %i.cc, align 4, !tbaa !26
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.mn
  store i32 -2147467259, ptr %i.mo, align 4, !tbaa !4
  %i.mp = load i32, ptr %i.cc, align 4, !tbaa !26
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.cc, align 4, !tbaa !26
  %i.mr = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15
          to label %.noexc354 unwind label %bb.cg ; 6 uses

.noexc354:                                        ; preds = %bb.cn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, i8 0, i64 16, i1 false)
  %i.ms = add nsw i32 %i.lb, 1                    ; 3 uses
  %i.mt = icmp ne i32 %i.ms, 0
  call void @llvm.assume(i1 %i.mt)
  %i.mu = zext nneg i32 %i.ms to i64
  %i.mv = icmp slt i32 %i.lb, -1
  %i.mw = shl nuw nsw i64 %i.mu, 2
  %i.mx = select i1 %i.mv, i64 -1, i64 %i.mw
  %i.my = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mx) #15
          to label %.noexc.i349 unwind label %bb.cp ; 3 uses

.noexc.i349:                                      ; preds = %.noexc354
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  store ptr %i.my, ptr %i.mr, align 8, !tbaa !19
  store i32 0, ptr %i.my, align 4, !tbaa !13
  store i32 %i.ms, ptr %i.mz, align 4, !tbaa !22
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i350

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i350:   ; preds = %.noexc.i349, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i350
  %.04.i.i.i351 = phi ptr [ %i.na, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i350 ], [ %.sroa.0.1, %.noexc.i349 ] ; 2 uses
  %.0.i.i.i352 = phi ptr [ %i.nc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i350 ], [ %i.my, %.noexc.i349 ] ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.04.i.i.i351, i64 4
  %i.nb = load i32, ptr %.04.i.i.i351, align 4, !tbaa !13 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0.i.i.i352, i64 4
  store i32 %i.nb, ptr %.0.i.i.i352, align 4, !tbaa !13
  %.not.i.i.i353 = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i.i353, label %bb.co, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i350, !llvm.loop !20

bb.co:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i350
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i32 %i.lb, ptr %i.nd, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit358 unwind label %bb.cg

bb.cp:                                            ; preds = %.noexc354
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef 16) #16
  br label %.body344

_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_.exit358: ; preds = %bb.co
  %i.nf = load ptr, ptr %i.cd, align 8, !tbaa !23
  %i.ng = load i32, ptr %i.ce, align 4, !tbaa !26 ; 2 uses
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.nh
  store ptr %i.mr, ptr %i.ni, align 8, !tbaa !27
  %i.nj = add nsw i32 %i.ng, 1
  store i32 %i.nj, ptr %i.ce, align 4, !tbaa !26
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ch, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %15, align 8, !tbaa !78
  %i.nk = invoke fastcc noundef i32 @_ZL22EnumerateDirItems_SpecRKN9NWildcard11CCensorNodeEiiRK11CStringBaseIwES6_RK13CObjectVectorIS4_ER9CDirItemsbP20IEnumDirItemCallbackRS8_R13CRecordVectorIjE(ptr noundef nonnull align 8 dereferenceable(120) %i.jt, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(128) %5, i1 noundef zeroext false, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.cr unwind label %bb.ct     ; 2 uses

bb.cr:                                            ; preds = %bb.cq
end_hunk_3
