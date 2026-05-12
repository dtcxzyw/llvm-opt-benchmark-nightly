inline.NumInlined: 541
inline.NumDeleted: 275
begin_hunk_0_@_ZSt16__do_uninit_copyIPKN6Assimp3LWO4FaceEPS2_ET0_T_S7_S6_:bb.a
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.l, %bb.d ], [ %2, %bb.a ]  ; 9 uses
  %.01215 = phi ptr [ %i.k, %bb.d ], [ %0, %bb.a ] ; 5 uses
  store i32 0, ptr %.016, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %i.b = icmp eq ptr %.01215, %.016
  br i1 %i.b, label %bb.d, label %bb.b
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIPKN6Assimp3LWO4FaceEPS2_ET0_T_S7_S6_:bb.a

.noexc.i.i.a:                                     ; preds = %bb.b
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #21
          to label %.noexc unwind label %6        ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.a
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %3 = load i32, ptr %.016, align 8
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %i.h, i64 %5, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8
  br label %bb.d

6:                                                ; preds = %.noexc.i.i.a
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = load ptr, ptr %i.a, align 8                ; 2 uses
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb.e, label %10

10:                                               ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %8) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %.noexc, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.01215, i64 16
end_hunk_1
begin_hunk_2_@_ZSt16__do_uninit_copyIPKN6Assimp3LWO4FaceEPS2_ET0_T_S7_S6_:bb.a
  %.not = icmp eq ptr %i.k, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

bb.e:                                             ; preds = %6, %10
  %i.m = extractvalue { ptr, i32 } %7, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #18 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit, label %.lr.ph.i.i
end_hunk_2
