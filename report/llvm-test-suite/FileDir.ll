inline.NumInlined: 243
inline.NumDeleted: 63
begin_hunk_0_@_Z15GetFullPathNamePKwjPwPS1_:bb.a

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.s, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ah, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.a, %bb.s ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aj, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.ag, %bb.s ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.ai = load i8, ptr %.04.i.i, align 1, !tbaa !21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 %i.ai, ptr %.0.i.i, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2EPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !23

_ZN11CStringBaseIcEC2EPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ab, ptr %i.ak, align 8, !tbaa !24
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0)
          to label %_Z16GetUnicodeStringRK11CStringBaseIcE.exit unwind label %bb.w

_Z16GetUnicodeStringRK11CStringBaseIcE.exit:      ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.al = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_Z16GetUnicodeStringRK11CStringBaseIcE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.al) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %_Z16GetUnicodeStringRK11CStringBaseIcE.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.an = load ptr, ptr %4, align 8, !tbaa !8
  %i.ao = call ptr @wcscpy(ptr noundef %2, ptr noundef %i.an) #22 ; 0 uses
  %i.ap = call ptr @wcscat(ptr noundef %2, ptr noundef nonnull @.str.1) #22 ; 0 uses
  %i.aq = call ptr @wcscat(ptr noundef %2, ptr noundef nonnull %0) #22 ; 0 uses
  %i.ar = and i64 %i.x, 4294967295
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.at, ptr %3, align 8, !tbaa !25
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %_ZN11CStringBaseIcED2Ev.exit
  %.0 = phi ptr [ %2, %_ZN11CStringBaseIcED2Ev.exit ], [ %i.az, %bb.y ] ; 3 uses
  %i.au = load i32, ptr %.0, align 4, !tbaa !12
  switch i32 %i.au, label %bb.y [
    i32 0, label %bb.z
    i32 47, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store ptr %i.av, ptr %3, align 8, !tbaa !25
  br label %bb.y

bb.w:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN11CStringBaseIcED2Ev.exit78, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #24
  br label %_ZN11CStringBaseIcED2Ev.exit78

_ZN11CStringBaseIcED2Ev.exit78:                   ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.aw

bb.y:                                             ; preds = %bb.u, %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 4
  br label %bb.u, !llvm.loop !28

bb.z:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.thread

.thread:                                          ; preds = %bb.p, %_ZN11CStringBaseIwED2Ev.exit, %bb.q, %bb.r
  %.2 = phi i32 [ 0, %bb.r ], [ %i.aa, %_ZN11CStringBaseIwED2Ev.exit ], [ 0, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.e, %.thread, %bb.c, %bb.j, %bb.o, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %.2, %.thread ], [ 0, %bb.o ], [ %i.g, %bb.e ], [ 0, %bb.c ], [ 0, %bb.j ], [ %i.d, %bb.l ]
  ret i32 %.4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @wcscat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory21MySetCurrentDirectoryEPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 6 uses
  %2 = alloca %class.CStringBase.0, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %0)
  %i.a = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.b = add nsw i32 %i.a, 1                      ; 3 uses
  %i.c = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = zext nneg i32 %i.b to i64
  %i.f = icmp slt i32 %i.a, -1
  %i.g = shl nuw nsw i64 %i.e, 2
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #23 ; 3 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !8
  store i32 0, ptr %i.i, align 4, !tbaa !12
  store i32 %i.b, ptr %i.d, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.j, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %0, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.l, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.k = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.k, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !15

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.a, ptr %i.m, align 8, !tbaa !17
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.n = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.p = load ptr, ptr %1, align 8, !tbaa !18
  %i.q = call i32 @chdir(ptr noundef %i.p) #22
  %i.r = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.r) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.d
  %i.t = icmp eq i32 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %i.t

bb.e:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN11CStringBaseIwED2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.v) #24
  br label %_ZN11CStringBaseIwED2Ev.exit2

_ZN11CStringBaseIwED2Ev.exit2:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.u
}

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory11GetOnlyNameEPKwR11CStringBaseIwE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %class.CStringBase.0, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %3 = load i32, ptr %i.a, align 4, !tbaa !4      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %5 = load i32, ptr %4, align 8, !tbaa !17, !noalias !29
  %6 = sub nsw i32 %5, %3
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, i32 noundef %6)
  store i32 0, ptr %4, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.f to i64
  %i.k = icmp slt i32 %i.e, -1
  %i.l = shl nuw nsw i64 %i.j, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #23
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.c) #24
  %.pre.i = load i32, ptr %4, align 8, !tbaa !17
  %i.p = sext i32 %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.q = phi i64 [ %i.p, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.n, ptr %1, align 8, !tbaa !8
  %i.r = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !12
  store i32 %i.f, ptr %i.g, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.s = phi ptr [ %i.c, %bb.b ], [ %i.n, %bb.d ]
  %i.t = load ptr, ptr %2, align 8, !tbaa !8      ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.u, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.v = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.v, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.e, !llvm.loop !15

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.e
  %7 = load i32, ptr %i.d, align 8, !tbaa !17
  store i32 %7, ptr %4, align 8, !tbaa !17
  %i.x = icmp eq ptr %i.t, null
  br i1 %i.x, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.t) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN11CStringBaseIwED2Ev.exit6, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.z) #24
  br label %_ZN11CStringBaseIwED2Ev.exit6

_ZN11CStringBaseIwED2Ev.exit6:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, 4096
  br i1 %.not.i, label %._ZN11CStringBaseIwE9GetBufferEi.exit_crit_edge, label %bb.b

._ZN11CStringBaseIwE9GetBufferEi.exit_crit_edge:  ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !8
  br label %_ZN11CStringBaseIwE9GetBufferEi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(16388) ptr @_Znam(i64 noundef 16388) #23 ; 10 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = icmp sgt i32 %i.c, 0
  br i1 %i.f, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !8 ; 9 uses
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i14 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  %i.j = sub i64 %i.e, %.pre.i.i14
  %diff.check = icmp ult i64 %i.j, 32
  %or.cond16 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond16, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !12
  %wide.load15 = load <4 x i32>, ptr %i.l, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %wide.load, ptr %i.m, align 4, !tbaa !12
  store <4 x i32> %wide.load15, ptr %i.n, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !32

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
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i.prol
  store i32 %i.q, ptr %i.r, align 4, !tbaa !12
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !35

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.s = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.u = icmp eq ptr %.pre.i.i, null
  br i1 %i.u, label %bb.c, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  store i32 %i.w, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !12
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.1
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !12
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.2
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !12
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !37

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.b
  store ptr %i.d, ptr %1, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !17
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aj
  store i32 0, ptr %i.ak, align 4, !tbaa !12
  store i32 4097, ptr %i.b, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE9GetBufferEi.exit

_ZN11CStringBaseIwE9GetBufferEi.exit:             ; preds = %._ZN11CStringBaseIwE9GetBufferEi.exit_crit_edge, %bb.c
  %i.al = phi ptr [ %.pre, %._ZN11CStringBaseIwE9GetBufferEi.exit_crit_edge ], [ %i.d, %bb.c ] ; 2 uses
  %i.am = call noundef i32 @_Z15GetFullPathNamePKwjPwPS1_(ptr noundef %0, i32 noundef 4097, ptr noundef %i.al, ptr noundef nonnull %i.a)
  %i.an = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %wcslen.i.i = tail call i64 @wcslen(ptr %i.an)  ; 2 uses
  %i.ao = trunc i64 %wcslen.i.i to i32
  %sext.i = shl i64 %wcslen.i.i, 32
  %i.ap = ashr exact i64 %sext.i, 30
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  store i32 0, ptr %i.aq, align 4, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ao, ptr %i.ar, align 8, !tbaa !17
  %i.as = add i32 %i.am, -1
  %or.cond = icmp ult i32 %i.as, 4095             ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN11CStringBaseIwE9GetBufferEi.exit
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = tail call i64 @wcslen(ptr noundef %0) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.al to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = lshr exact i64 %i.ay, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge.in = phi i64 [ %i.az, %bb.f ], [ %i.av, %bb.e ]
  %storemerge = trunc i64 %storemerge.in to i32
  store i32 %storemerge, ptr %2, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %_ZN11CStringBaseIwE9GetBufferEi.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %or.cond
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory16GetOnlyDirPrefixEPKwR11CStringBaseIwE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %class.CStringBase.0, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %3 = load i32, ptr %i.a, align 4, !tbaa !4
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = add nsw i32 %i.f, 1                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 2 uses
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.g to i64
  %i.l = icmp slt i32 %i.f, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #23
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.p = icmp sgt i32 %i.i, 0
  br i1 %i.p, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !17
  %i.q = sext i32 %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.r = phi i64 [ %i.q, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.o, ptr %1, align 8, !tbaa !8
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  store i32 0, ptr %i.s, align 4, !tbaa !12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.t = phi ptr [ %i.d, %bb.b ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %2, align 8, !tbaa !8      ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.u, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.v, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.w = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.w, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.e, !llvm.loop !15

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.e
  %4 = load i32, ptr %i.e, align 8, !tbaa !17
  store i32 %4, ptr %i.c, align 8, !tbaa !17
  %i.y = icmp eq ptr %i.u, null
  br i1 %i.y, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.u) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN11CStringBaseIwED2Ev.exit6, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #24
  br label %_ZN11CStringBaseIwED2Ev.exit6

_ZN11CStringBaseIwED2Ev.exit6:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory21MyGetCurrentDirectoryER11CStringBaseIwE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  %1 = alloca %class.CStringBase.0, align 8       ; 7 uses
  %2 = alloca %class.CStringBase, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 99, ptr %i.a, align 16, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 58, ptr %i.b, align 1, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = call ptr @getcwd(ptr noundef nonnull %i.c, i64 noundef 1021) #22
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %i.e = trunc i64 %strlen.i.i to i32             ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = icmp ne i32 %i.f, 0
  call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = sext i32 %i.f to i64
  %i.j = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #23 ; 3 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !18
  store i8 0, ptr %i.j, align 1, !tbaa !21
  store i32 %i.f, ptr %i.h, align 4, !tbaa !22
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.b, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.a, %bb.b ] ; 2 uses
  %.0.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.l = load i8, ptr %.04.i.i, align 1, !tbaa !21 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 %i.l, ptr %.0.i.i, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2EPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !23

_ZN11CStringBaseIcEC2EPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.n, align 8, !tbaa !24
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !17
  %i.p = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  store i32 0, ptr %i.p, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.s = add nsw i32 %i.r, 1                      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14   ; 2 uses
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = zext nneg i32 %i.s to i64
  %i.x = icmp slt i32 %i.r, -1
  %i.y = shl nuw nsw i64 %i.w, 2
  %i.z = select i1 %i.x, i64 -1, i64 %i.y
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #23
          to label %.noexc unwind label %bb.j     ; 3 uses

.noexc:                                           ; preds = %bb.d
  %i.ab = icmp sgt i32 %i.u, 0
  br i1 %i.ab, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.p) #24
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !17
  %i.ac = sext i32 %.pre.i to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.ad = phi i64 [ %i.ac, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.aa, ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ad
  store i32 0, ptr %i.ae, align 4, !tbaa !12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.e, %bb.c
  %i.af = phi ptr [ %i.p, %bb.c ], [ %i.aa, %bb.e ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !8     ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i7 = phi ptr [ %i.ag, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ah, %bb.f ] ; 2 uses
  %.0.i.i8 = phi ptr [ %i.af, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.04.i.i7, i64 4
  %i.ai = load i32, ptr %.04.i.i7, align 4, !tbaa !12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 4
  store i32 %i.ai, ptr %.0.i.i8, align 4, !tbaa !12
  %.not.i.i9 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i9, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.f, !llvm.loop !15

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.f
  %3 = load i32, ptr %i.q, align 8, !tbaa !17
  store i32 %3, ptr %i.o, align 8, !tbaa !17
  %i.ak = icmp eq ptr %i.ag, null
  br i1 %i.ak, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.g
  %i.al = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.al) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.m

bb.i:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit10

bb.j:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN11CStringBaseIwED2Ev.exit10, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #24
  br label %_ZN11CStringBaseIwED2Ev.exit10

_ZN11CStringBaseIwED2Ev.exit10:                   ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ao, %bb.j ], [ %i.ao, %bb.k ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN11CStringBaseIcED2Ev.exit11, label %bb.l

bb.l:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit10
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #24
  br label %_ZN11CStringBaseIcED2Ev.exit11

_ZN11CStringBaseIcED2Ev.exit11:                   ; preds = %_ZN11CStringBaseIwED2Ev.exit10, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.a, %_ZN11CStringBaseIcED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory10MyMoveFileEPKwS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 6 uses
  %2 = alloca %class.CStringBase, align 8         ; 6 uses
  %3 = alloca %class.CStringBase, align 8         ; 5 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef %1)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !18     ; 8 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !18     ; 7 uses
  %i.d = tail call i32 @rename(ptr noundef %i.b, ptr noundef %i.c) #22
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge19, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #26    ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = icmp eq i32 %i.f, 18
  br i1 %i.g, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.h = invoke i32 (ptr, i32, ...) @open64(ptr noundef readonly %i.c, i32 noundef 193, i32 noundef 384)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %bb.d
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %.critedge19, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.i = invoke i32 (ptr, i32, ...) @open64(ptr noundef readonly %i.b, i32 noundef 0, i32 noundef 384)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc20:                                         ; preds = %bb.e
  %.not20.i = icmp eq i32 %i.i, -1
  br i1 %.not20.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %bb.f
  %i.j = invoke i64 @read(i32 noundef range(i32 0, -1) %i.i, ptr noundef nonnull %i.a, i64 noundef 16384)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc21:                                         ; preds = %bb.g
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.h, label %.critedge.i.i

bb.h:                                             ; preds = %.noexc21
  %i.l = load i32, ptr %i.e, align 4, !tbaa !4
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %.backedge, label %_ZL7copy_fdii.exit.thread42.i

.backedge:                                        ; preds = %bb.h, %.critedge2.i.i
  br label %bb.g, !llvm.loop !38

_ZL7copy_fdii.exit.thread42.i:                    ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.k

.critedge.i.i:                                    ; preds = %.noexc21
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %.sink.split.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i, %bb.i
  %i.n = invoke i64 @write(i32 noundef range(i32 0, -1) %i.h, ptr noundef nonnull %i.a, i64 noundef %i.j)
          to label %.noexc22 unwind label %.loopexit ; 3 uses

.noexc22:                                         ; preds = %.preheader.i.i
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %.critedge2.i.i

bb.i:                                             ; preds = %.noexc22
  %i.p = load i32, ptr %i.e, align 4, !tbaa !4
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %.preheader.i.i, label %_ZL7copy_fdii.exit.i, !llvm.loop !39

.critedge2.i.i:                                   ; preds = %.noexc22
  %.not15.i.i = icmp eq i64 %i.n, 0
  br i1 %.not15.i.i, label %.sink.split.i, label %.backedge

_ZL7copy_fdii.exit.i:                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = and i64 %i.n, 4294967295
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.k

.sink.split.i:                                    ; preds = %.critedge2.i.i, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %_ZL7copy_fdii.exit.i
  %i.t = invoke i32 @close(i32 noundef %i.i)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.j
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %.critedge.i

bb.k:                                             ; preds = %_ZL7copy_fdii.exit.i, %_ZL7copy_fdii.exit.thread42.i
  %i.v = invoke i32 @close(i32 noundef %i.i)
          to label %.critedge.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %bb.k, %.noexc23, %.noexc20
  %i.w = invoke i32 @close(i32 noundef %i.h)
          to label %.critedge19 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %.noexc23
  %i.x = invoke i32 @close(i32 noundef %i.h)
          to label %_ZL8CopyFilePKcS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZL8CopyFilePKcS0_.exit:                          ; preds = %bb.l
  %.fr.i = freeze i32 %i.x
  %i.y = icmp eq i32 %.fr.i, 0
  br i1 %i.y, label %bb.o, label %.critedge19

bb.m:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %2, align 8, !tbaa !18
  br label %_ZN11CStringBaseIcED2Ev.exit

.loopexit:                                        ; preds = %.preheader.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.g
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.l, %.critedge.i, %bb.k, %bb.j, %bb.e, %bb.d
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit32, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp33, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aa = icmp eq ptr %i.c, null
  br i1 %i.aa, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.n
end_hunk_0
begin_hunk_1_@_ZN8NWindows5NFile10NDirectory27RemoveDirectoryWithSubItemsERK11CStringBaseIwE:bb.a
  %i.gc = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  %i.gd = call i32 @rmdir(ptr noundef %i.gc) #22
  %.not5.i.i = icmp eq i32 %i.gd, 0
  %i.ge = icmp eq ptr %i.gc, null
  br i1 %i.ge, label %_ZN11CStringBaseIcED2Ev.exit.i.i39, label %bb.br

bb.br:                                            ; preds = %.noexc40
  call void @_ZdaPv(ptr noundef nonnull %i.gc) #24
  br label %_ZN11CStringBaseIcED2Ev.exit.i.i39

_ZN11CStringBaseIcED2Ev.exit.i.i39:               ; preds = %bb.br, %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN8NWindows5NFile10NDirectory17MyRemoveDirectoryEPKw.exit

_ZN8NWindows5NFile10NDirectory17MyRemoveDirectoryEPKw.exit: ; preds = %_ZN11CStringBaseIcED2Ev.exit.i.i39, %bb.bp, %_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev.exit, %bb.bk
  %.112 = phi i1 [ false, %bb.bk ], [ false, %_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev.exit ], [ %.not5.i.i, %_ZN11CStringBaseIcED2Ev.exit.i.i39 ], [ false, %bb.bp ]
  %i.gf = icmp eq ptr %.sroa.0.1, null
  br i1 %i.gf, label %_ZN11CStringBaseIwED2Ev.exit41, label %bb.bs

bb.bs:                                            ; preds = %_ZN8NWindows5NFile10NDirectory17MyRemoveDirectoryEPKw.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #24
  br label %_ZN11CStringBaseIwED2Ev.exit41

_ZN11CStringBaseIwED2Ev.exit41:                   ; preds = %_ZN8NWindows5NFile10NDirectory17MyRemoveDirectoryEPKw.exit, %bb.bs
  %i.gg = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit41
  call void @_ZdaPv(ptr noundef nonnull %i.gg) #24
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit:    ; preds = %_ZN11CStringBaseIwED2Ev.exit41, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %.112

bb.bu:                                            ; preds = %bb.bm, %bb.bl
  %.pn16 = phi { ptr, i32 } [ %i.fy, %bb.bm ], [ %.pn14, %bb.bl ] ; 2 uses
  %i.gi = icmp eq ptr %.sroa.0.1, null
  br i1 %i.gi, label %.body, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #24
  br label %.body

.body:                                            ; preds = %bb.bv, %bb.bu, %bb.au, %bb.g, %bb.f
  %.pn16.pn = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.es, %bb.au ], [ %i.ah, %bb.g ], [ %.pn16, %bb.bu ], [ %.pn16, %bb.bv ]
  %i.gj = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit45, label %bb.bw

bb.bw:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.gj) #24
  br label %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit45

_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit45:  ; preds = %.body, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8NWindows5NFile5NFind12CEnumeratorWC2ERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.c = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #23 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 1, !tbaa !21
  store i32 4, ptr %i.b, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #23
          to label %_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit unwind label %_ZN11CStringBaseIcED2Ev.exit.i ; 2 uses

common.resume:                                    ; preds = %bb.e, %_ZN11CStringBaseIcED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZN11CStringBaseIcED2Ev.exit.i ], [ %i.y, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZN11CStringBaseIcED2Ev.exit.i:                   ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #24
  br label %common.resume

_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit:      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr %i.e, ptr %i.d, align 8, !tbaa !18
  store i8 0, ptr %i.e, align 1, !tbaa !21
  store i32 4, ptr %i.g, align 4, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.j = load i32, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %i.k = add nsw i32 %i.j, 1                      ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit
  %i.m = zext nneg i32 %i.k to i64
  %i.n = icmp slt i32 %i.j, -1
  %i.o = shl nuw nsw i64 %i.m, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #23
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr %i.q, ptr %i.h, align 8, !tbaa !8
  store i32 0, ptr %i.q, align 4, !tbaa !12
  store i32 %i.k, ptr %i.r, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc, %_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit
  %i.s = phi ptr [ null, %_ZN8NWindows5NFile5NFind9CFindFileC2Ev.exit ], [ %i.q, %.noexc ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.u, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.v = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.v, ptr %.0.i.i, align 4, !tbaa !12
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c, !llvm.loop !15

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.j, ptr %i.x, align 8, !tbaa !17
  ret void

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8NWindows5NFile5NFind9CFindFileD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  br label %common.resume
}

declare noundef zeroext i1 @_ZN8NWindows5NFile5NFind12CEnumeratorW4NextERNS1_10CFileInfoWE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind9CFindFile5CloseEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN11CStringBaseIcED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #24
  br label %_ZN11CStringBaseIcED2Ev.exit.i

_ZN11CStringBaseIcED2Ev.exit.i:                   ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN8NWindows5NFile5NFind9CFindFileD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24
  br label %_ZN8NWindows5NFile5NFind9CFindFileD2Ev.exit

bb.f:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZN8NWindows5NFile5NFind9CFindFileD2Ev.exit:      ; preds = %_ZN11CStringBaseIcED2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwE(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory12MySearchPathEPKwS3_S3_R11CStringBaseIwE(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readnone captures(address_is_null) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 13 uses
  %5 = alloca %class.CStringBase, align 8         ; 8 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %7 = alloca %class.CStringBase.0, align 8       ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %puts30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.5) #22 ; 3 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %bb.aj, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.b) ; 7 uses
  %i.c = trunc i64 %strlen.i.i to i32             ; 7 uses
  %i.d = add nsw i32 %i.c, 1                      ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = sext i32 %i.d to i64
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #23 ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !18
  store i8 0, ptr %i.h, align 1, !tbaa !21
  store i32 %i.d, ptr %i.f, align 4, !tbaa !22
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.i, %bb.h
  %.pre.i.i.i = phi ptr [ null, %bb.h ], [ %i.h, %bb.i ] ; 9 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.b, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.i, %bb.j ] ; 2 uses
  %.0.i.i = phi ptr [ %.pre.i.i.i, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.k, %bb.j ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.j = load i8, ptr %.04.i.i, align 1, !tbaa !21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 %i.j, ptr %.0.i.i, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2EPKc.exit, label %bb.j, !llvm.loop !23

_ZN11CStringBaseIcEC2EPKc.exit:                   ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.c, ptr %i.l, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr nonnull %1)
  %i.m = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.n = add nsw i32 %i.m, 1                      ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = zext nneg i32 %i.n to i64
  %i.q = icmp slt i32 %i.m, -1
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #23
          to label %.noexc unwind label %bb.z     ; 3 uses

.noexc:                                           ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 12
  store ptr %i.t, ptr %6, align 8, !tbaa !8
  store i32 0, ptr %i.t, align 4, !tbaa !12
  store i32 %i.n, ptr %i.u, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i32 = phi ptr [ %i.v, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %1, %.noexc ] ; 2 uses
  %.0.i.i33 = phi ptr [ %i.x, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.t, %.noexc ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04.i.i32, i64 4
  %i.w = load i32, ptr %.04.i.i32, align 4, !tbaa !12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 4
  store i32 %i.w, ptr %.0.i.i33, align 4, !tbaa !12
  %.not.i.i34 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i34, label %bb.k, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !15

bb.k:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.m, ptr %i.y, align 8, !tbaa !17
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 0)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.not.i.i35 = icmp sgt i32 %i.aa, 0
  br i1 %.not.i.i35, label %bb.m, label %_ZN11CStringBaseIcE10GrowLengthEi.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ac = icmp sgt i32 %i.c, 63
  %i.ad = lshr i32 %i.d, 1
  %i.ae = icmp sgt i32 %i.c, 7
  %..i.i = select i1 %i.ae, i32 16, i32 4
  %.0.i.i37 = select i1 %i.ac, i32 %i.ad, i32 %..i.i
  %.1.i.i = call i32 @llvm.smax.i32(i32 %.0.i.i37, i32 %i.aa)
  %i.af = add i32 %i.c, 2
  %i.ag = add i32 %i.af, %.1.i.i                  ; 3 uses
  %i.ah = icmp eq i32 %i.ag, %i.d
  br i1 %i.ah, label %_ZN11CStringBaseIcE10GrowLengthEi.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = sext i32 %i.ag to i64
  %i.aj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #23
          to label %.noexc38 unwind label %bb.ab  ; 6 uses

.noexc38:                                         ; preds = %bb.n
  %i.ak = icmp sgt i32 %i.c, -1
  br i1 %i.ak, label %.preheader.i.i.i, label %bb.o

.preheader.i.i.i:                                 ; preds = %.noexc38
  %.not76 = icmp eq i32 %i.c, 0
  br i1 %.not76, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = and i64 %strlen.i.i, 2147483647 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.i.i, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check77 = icmp samesign ult i64 %wide.trip.count.i.i.i, 32
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %strlen.i.i, 28
  %n.vec = and i64 %strlen.i.i, 2147483616        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <16 x i8>, ptr %i.al, align 1, !tbaa !21
  %wide.load78.a = load <16 x i8>, ptr %i.am, align 1, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <16 x i8> %wide.load, ptr %i.an, align 1, !tbaa !21
  store <16 x i8> %wide.load78.a, ptr %i.ao, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !79

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec80 = and i64 %strlen.i.i, 2147483644      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index81
  %wide.load82 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index81
  store <4 x i8> %wide.load82, ptr %i.ar, align 1, !tbaa !21
  %index.next83 = add nuw i64 %index81, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next83, %n.vec80
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !80

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %wide.trip.count.i.i.i, %n.vec80
  br i1 %cmp.n84, label %._crit_edge.thread.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec80, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.at = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.at, label %bb.o, label %._crit_edge.thread.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i.i.i
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !21
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.thread.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !81

._crit_edge.thread.i.i.i:                         ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i) #24
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc38
  store ptr %i.aj, ptr %4, align 8, !tbaa !18
  %sext = shl i64 %strlen.i.i, 32
  %i.ax = ashr exact i64 %sext, 32
  %i.ay = getelementptr inbounds i8, ptr %i.aj, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !21
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !22
  br label %_ZN11CStringBaseIcE10GrowLengthEi.exit.i

_ZN11CStringBaseIcE10GrowLengthEi.exit.i:         ; preds = %bb.o, %bb.m, %bb.l
  %i.az = phi ptr [ %i.aj, %bb.o ], [ %.pre.i.i.i, %bb.m ], [ %.pre.i.i.i, %bb.l ]
  %sext75 = shl i64 %strlen.i.i, 32
  %i.ba = ashr exact i64 %sext75, 32
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load ptr, ptr %5, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN11CStringBaseIcE10GrowLengthEi.exit.i
  %.04.i.i36 = phi ptr [ %i.bc, %_ZN11CStringBaseIcE10GrowLengthEi.exit.i ], [ %i.bd, %bb.p ] ; 2 uses
  %.0.i4.i = phi ptr [ %i.bb, %_ZN11CStringBaseIcE10GrowLengthEi.exit.i ], [ %i.bf, %bb.p ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04.i.i36, i64 1
  %i.be = load i8, ptr %.04.i.i36, align 1, !tbaa !21 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 1
  store i8 %i.be, ptr %.0.i4.i, align 1, !tbaa !21
  %.not.i5.i = icmp eq i8 %i.be, 0
  br i1 %.not.i5.i, label %bb.q, label %bb.p, !llvm.loop !23

bb.q:                                             ; preds = %bb.p
  %i.bg = load i32, ptr %i.z, align 8, !tbaa !24
  %i.bh = load i32, ptr %i.l, align 8, !tbaa !24
  %i.bi = add nsw i32 %i.bh, %i.bg
  store i32 %i.bi, ptr %i.l, align 8, !tbaa !24
  %i.bj = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.q, %bb.r
  %i.bl = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bn = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  %i.bo = call noalias ptr @fopen64(ptr noundef %i.bn, ptr noundef nonnull @.str.6) ; 2 uses
  %.not26 = icmp ne ptr %i.bo, null               ; 2 uses
  br i1 %.not26, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bp = call i32 @fclose(ptr noundef nonnull %i.bo) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !17
  %i.br = load ptr, ptr %3, align 8, !tbaa !8     ; 3 uses
  store i32 0, ptr %i.br, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !17 ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1                    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !14 ; 2 uses
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = zext nneg i32 %i.bu to i64
  %i.bz = icmp slt i32 %i.bt, -1
  %i.ca = shl nuw nsw i64 %i.by, 2
  %i.cb = select i1 %i.bz, i64 -1, i64 %i.ca
  %i.cc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cb) #23
          to label %.noexc43 unwind label %bb.af  ; 3 uses

.noexc43:                                         ; preds = %bb.v
  %i.cd = icmp sgt i32 %i.bw, 0
  br i1 %i.cd, label %._crit_edge.thread.i.i, label %bb.w

._crit_edge.thread.i.i:                           ; preds = %.noexc43
  call void @_ZdaPv(ptr noundef nonnull %i.br) #24
  %.pre.i = load i32, ptr %i.bq, align 8, !tbaa !17
  %i.ce = sext i32 %.pre.i to i64
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.thread.i.i, %.noexc43
  %i.cf = phi i64 [ %i.ce, %._crit_edge.thread.i.i ], [ 0, %.noexc43 ]
  store ptr %i.cc, ptr %3, align 8, !tbaa !8
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cf
  store i32 0, ptr %i.cg, align 4, !tbaa !12
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i39

_ZN11CStringBaseIwE11SetCapacityEi.exit.i39:      ; preds = %bb.w, %bb.u
  %i.ch = phi ptr [ %i.br, %bb.u ], [ %i.cc, %bb.w ]
  %i.ci = load ptr, ptr %7, align 8, !tbaa !8     ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i39
  %.04.i.i40 = phi ptr [ %i.ci, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i39 ], [ %i.cj, %bb.x ] ; 2 uses
  %.0.i.i41 = phi ptr [ %i.ch, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i39 ], [ %i.cl, %bb.x ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.04.i.i40, i64 4
  %i.ck = load i32, ptr %.04.i.i40, align 4, !tbaa !12 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 4
  store i32 %i.ck, ptr %.0.i.i41, align 4, !tbaa !12
  %.not.i.i42 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i42, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.x, !llvm.loop !15

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.x
  %8 = load i32, ptr %i.bs, align 8, !tbaa !17
  store i32 %8, ptr %i.bq, align 8, !tbaa !17
  %i.cm = icmp eq ptr %i.ci, null
  br i1 %i.cm, label %_ZN11CStringBaseIwED2Ev.exit44, label %bb.y

bb.y:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ci) #24
  br label %_ZN11CStringBaseIwED2Ev.exit44

_ZN11CStringBaseIwED2Ev.exit44:                   ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.cn = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.sink.split, label %.sink.split.sink.split

bb.z:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit47

bb.aa:                                            ; preds = %bb.k
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit46

bb.ab:                                            ; preds = %bb.n
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN11CStringBaseIcED2Ev.exit46, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.cs) #24
  br label %_ZN11CStringBaseIcED2Ev.exit46

_ZN11CStringBaseIcED2Ev.exit46:                   ; preds = %bb.ac, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.aa ], [ %i.cr, %bb.ab ], [ %i.cr, %bb.ac ] ; 2 uses
  %i.cu = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN11CStringBaseIwED2Ev.exit47, label %bb.ad

bb.ad:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit46
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #24
  br label %_ZN11CStringBaseIwED2Ev.exit47

_ZN11CStringBaseIwED2Ev.exit47:                   ; preds = %bb.ad, %_ZN11CStringBaseIcED2Ev.exit46, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %.pn, %_ZN11CStringBaseIcED2Ev.exit46 ], [ %.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ah

bb.ae:                                            ; preds = %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit48

bb.af:                                            ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZN11CStringBaseIwED2Ev.exit48, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #24
  br label %_ZN11CStringBaseIwED2Ev.exit48

_ZN11CStringBaseIwED2Ev.exit48:                   ; preds = %bb.ag, %bb.af, %bb.ae
  %.pn27 = phi { ptr, i32 } [ %i.cw, %bb.ae ], [ %i.cx, %bb.af ], [ %i.cx, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pre = load ptr, ptr %4, align 8, !tbaa !18
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit48, %_ZN11CStringBaseIwED2Ev.exit47
  %i.da = phi ptr [ %.pre, %_ZN11CStringBaseIwED2Ev.exit48 ], [ %.pre.i.i.i, %_ZN11CStringBaseIwED2Ev.exit47 ] ; 2 uses
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %_ZN11CStringBaseIwED2Ev.exit48 ], [ %.pn.pn, %_ZN11CStringBaseIwED2Ev.exit47 ]
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN11CStringBaseIcED2Ev.exit49, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.da) #24
  br label %_ZN11CStringBaseIcED2Ev.exit49

_ZN11CStringBaseIcED2Ev.exit49:                   ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn27.pn

.critedge:                                        ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.dc = icmp eq ptr %i.bn, null
  br i1 %i.dc, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.critedge, %_ZN11CStringBaseIwED2Ev.exit44
  %.sink = phi ptr [ %i.cn, %_ZN11CStringBaseIwED2Ev.exit44 ], [ %i.bn, %.critedge ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #24
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.critedge, %_ZN11CStringBaseIwED2Ev.exit44
  %.1.ph = phi i1 [ false, %.critedge ], [ true, %_ZN11CStringBaseIwED2Ev.exit44 ], [ %.not26, %.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.g
  %.1 = phi i1 [ false, %bb.g ], [ %.1.ph, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

declare void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind writable sret(%class.CStringBase.0) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory13MyGetTempPathER11CStringBaseIwE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((8, 12)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !17
  %i.b = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %i.e = icmp eq i32 %i.d, 8
  br i1 %i.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #23 ; 3 uses
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %._crit_edge.thread.i.i, label %bb.c

._crit_edge.thread.i.i:                           ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #24
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !17
  %i.h = sext i32 %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %bb.b
  %i.i = phi i64 [ %i.h, %._crit_edge.thread.i.i ], [ 0, %bb.b ]
  store ptr %i.f, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.i
  store i32 0, ptr %i.j, align 4, !tbaa !12
  store i32 8, ptr %i.c, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> <i32 99, i32 58, i32 47, i32 116>, ptr %i.k, align 4, !tbaa !12
  store <4 x i32> <i32 109, i32 112, i32 47, i32 0>, ptr %i.l, align 4, !tbaa !12
  store i32 7, ptr %i.a, align 8, !tbaa !17
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #22 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NWindows5NFile10NDirectory9CTempFile6CreateEPKwS4_R11CStringBaseIwE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) initializes((8, 12)) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  %4 = alloca %class.CStringBase, align 8         ; 4 uses
  %5 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @_ZN8NWindows5NFile10NDirectoryL22g_CountCriticalSectionE) #22 ; 0 uses
  %i.d = load i32, ptr @_ZZN8NWindows5NFile10NDirectory9CTempFile6CreateEPKwS4_R11CStringBaseIwEE10memo_count, align 4, !tbaa !4 ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN8NWindows5NFile10NDirectory9CTempFile6CreateEPKwS4_R11CStringBaseIwEE10memo_count, align 4, !tbaa !4
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN8NWindows5NFile10NDirectoryL22g_CountCriticalSectionE) #22 ; 0 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !82, !range !84, !noundef !85
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  %.not6.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.l, align 4, !tbaa !4
  br label %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull readonly %i.j)
end_hunk_1
