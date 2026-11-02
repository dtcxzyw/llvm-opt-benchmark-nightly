Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_dbus?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDL_DBus_OpenURI:bb.a
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.j) #6
  br label %.thread65

bb.f:                                             ; preds = %bb.d
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.m = phi ptr [ %i.j, %bb.f ], [ %0, %bb.c ]
  %.021 = phi ptr [ %i.j, %bb.f ], [ null, %bb.c ]
  %i.n = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.m, i32 noundef 524290) #6 ; 3 uses
  store i32 %i.n, ptr %i.c, align 4
  tail call void @SDL_free_REAL(ptr noundef %.021) #6
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.thread48, label %.thread65

.thread48:                                        ; preds = %bb.c, %bb.g
  %.str.12.sink = phi ptr [ @.str.12, %bb.g ], [ @.str.13, %bb.c ]
  %i.p = phi i32 [ %i.n, %bb.g ], [ -1, %bb.c ]   ; 2 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 200), align 8
  %i.r = tail call ptr %i.q(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %.str.12.sink) #6 ; 4 uses
  %.not34 = icmp eq ptr %i.r, null
  br i1 %.not34, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.thread48
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 240), align 8
  call void %i.s(ptr noundef nonnull %i.r, ptr noundef nonnull %3) #6
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @.str.14, ptr %i.b, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 256), align 8
  %i.u = call i32 %i.t(ptr noundef nonnull %3, i32 noundef 115, ptr noundef nonnull %i.b) #6
  %.not36 = icmp eq i32 %i.u, 0
  br i1 %.not36, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = icmp sgt i32 %i.p, -1
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 256), align 8 ; 2 uses
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = call i32 %i.w(ptr noundef nonnull %3, i32 noundef 104, ptr noundef nonnull %i.c) #6
  %.not38 = icmp eq i32 %i.x, 0
  br i1 %.not38, label %bb.u, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.y = call i32 %i.w(ptr noundef nonnull %3, i32 noundef 115, ptr noundef nonnull %i.a) #6
  %.not37 = icmp eq i32 %i.y, 0
  br i1 %.not37, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not39 = icmp eq ptr %2, null
  br i1 %.not39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = call fastcc zeroext i1 @SDL_DBus_AppendDictWithKeyValue(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull %2)
  br i1 %i.z, label %bb.s, label %bb.u

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 248), align 8
  %i.ab = call i32 %i.aa(ptr noundef nonnull %3, i32 noundef 97, ptr noundef nonnull @.str.16, ptr noundef nonnull %4) #6
  %.not40 = icmp eq i32 %i.ab, 0
  br i1 %.not40, label %.thread52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 264), align 8
  %i.ad = call i32 %i.ac(ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %.not41 = icmp eq i32 %i.ad, 0
  br i1 %.not41, label %.thread52, label %bb.r

.thread52:                                        ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 112), align 8
  %i.af = load ptr, ptr @dbus, align 8
  %i.ag = call ptr %i.ae(ptr noundef %i.af, ptr noundef nonnull %i.r, i32 noundef -1, ptr noundef null) #6 ; 2 uses
  %.not42.not = icmp eq ptr %i.ag, null
  br i1 %.not42.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 328), align 8
  call void %i.ah(ptr noundef nonnull %i.ag) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.o, %.thread52, %bb.l, %bb.m, %bb.j, %bb.t
  %.123.ph = phi i1 [ true, %bb.t ], [ false, %bb.j ], [ false, %bb.m ], [ false, %bb.l ], [ false, %.thread52 ], [ false, %bb.o ], [ false, %bb.s ]
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 328), align 8
  call void %i.ai(ptr noundef nonnull %i.r) #6
  %.pr.pre = load i32, ptr %i.c, align 4
  br label %bb.v

bb.v:                                             ; preds = %.thread48, %bb.u
  %.pr = phi i32 [ %i.p, %.thread48 ], [ %.pr.pre, %bb.u ] ; 2 uses
  %.12361.ph = phi i1 [ false, %.thread48 ], [ %.123.ph, %bb.u ] ; 2 uses
  %i.aj = icmp sgt i32 %.pr, -1
  br i1 %i.aj, label %bb.w, label %.thread65

bb.w:                                             ; preds = %bb.v
  %i.ak = call i32 @close(i32 noundef %.pr) #6    ; 0 uses
  br label %.thread65

.thread65:                                        ; preds = %.critedge, %bb.e, %bb.g, %bb.v, %bb.w
  %.1236167 = phi i1 [ %.12361.ph, %bb.w ], [ %.12361.ph, %bb.v ], [ false, %bb.g ], [ false, %bb.e ], [ false, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %.thread65
  %.128 = phi i1 [ %.1236167, %.thread65 ], [ false, %bb.a ]
  ret i1 %.128
}

declare i32 @SDL_strncasecmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_IsURI(ptr noundef) local_unnamed_addr #1

declare i64 @SDL_strlen_REAL(ptr noundef) local_unnamed_addr #1

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #1

declare i32 @SDL_URIToLocal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_DBus_AppendDictWithKeyValue(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %4 = alloca %struct.DBusMessageIter, align 8    ; 8 uses
  %5 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 248), align 8
  %i.d = call i32 %i.c(ptr noundef nonnull %0, i32 noundef 97, ptr noundef nonnull @.str.16, ptr noundef nonnull %3) #6, !inline_history !7
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr %2, ptr %i.b, align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 248), align 8
  %i.f = call i32 %i.e(ptr noundef nonnull %3, i32 noundef 101, ptr noundef null, ptr noundef nonnull %4) #6, !inline_history !7
  %.not13.i = icmp eq i32 %i.f, 0
  br i1 %.not13.i, label %.thread7.i, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader.i
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 256), align 8
  %i.h = call i32 %i.g(ptr noundef nonnull %4, i32 noundef 115, ptr noundef nonnull %i.a) #6, !inline_history !7
  %.not14.i = icmp eq i32 %i.h, 0
  br i1 %.not14.i, label %.thread7.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 248), align 8
  %i.j = call i32 %i.i(ptr noundef nonnull %4, i32 noundef 118, ptr noundef nonnull @.str.91, ptr noundef nonnull %5) #6, !inline_history !7
  %.not15.i = icmp eq i32 %i.j, 0
  br i1 %.not15.i, label %.thread7.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 256), align 8
  %i.l = call i32 %i.k(ptr noundef nonnull %5, i32 noundef 115, ptr noundef nonnull %i.b) #6, !inline_history !7
  %.not16.i = icmp eq i32 %i.l, 0
  br i1 %.not16.i, label %.thread7.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 264), align 8
  %i.n = call i32 %i.m(ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !inline_history !7
  %.not17.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i, label %.thread7.i, label %bb.f

.thread7.i:                                       ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.preheader.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 264), align 8
  %i.p = call i32 %i.o(ptr noundef nonnull %3, ptr noundef nonnull %4) #6, !inline_history !7
  %.not18.not.i = icmp eq i32 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %.not18.not.i, label %.loopexit.i, label %.thread5.i

.thread5.i:                                       ; preds = %bb.f
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 264), align 8
  %i.r = call i32 %i.q(ptr noundef nonnull %0, ptr noundef nonnull %3) #6, !inline_history !7
  %.not19.i = icmp eq i32 %i.r, 0
  br i1 %.not19.i, label %.loopexit.i, label %SDL_DBus_AppendDictWithKeysAndValues.exit

.loopexit.i:                                      ; preds = %.thread5.i, %bb.f, %.thread7.i, %bb.a
  br label %SDL_DBus_AppendDictWithKeysAndValues.exit

SDL_DBus_AppendDictWithKeysAndValues.exit:        ; preds = %.thread5.i, %.loopexit.i
  %.012.i = phi i1 [ true, %.thread5.i ], [ false, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i1 %.012.i
}

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_DBus_ScreensaverInhibit(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %struct.DBusMessageIter, align 8    ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %.b = load i1, ptr @SDL_DBus_ScreensaverInhibit.interface_unavailable, align 1
  br i1 %.b, label %.thread60, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @screensaver_cookie, align 4
  %i.g = icmp ne i32 %i.f, 0
  %i.h = load ptr, ptr @inhibit_handle, align 8
  %i.i = icmp ne ptr %i.h, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.i     ; 2 uses
  br i1 %0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond, label %.thread60, label %.thread

bb.d:                                             ; preds = %bb.b
  br i1 %or.cond, label %.thread, label %.thread60

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = load ptr, ptr @dbus, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread60, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.k = tail call i32 @SDL_GetSandbox_REAL() #6
  %.not47 = icmp eq i32 %i.k, 0
  br i1 %.not47, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr @.str.14, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  br i1 %0, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8
  %i.l = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.20) #6 ; 3 uses
  %.not50 = icmp eq ptr %i.l, null
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i8, ptr %i.l, align 1
  %.not51 = icmp eq i8 %i.m, 0
  br i1 %.not51, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.l, %bb.h ], [ @.str.17, %bb.i ]
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 200), align 8
  %i.o = tail call ptr %i.n(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21) #6 ; 7 uses
  %.not52 = icmp eq ptr %i.o, null
  br i1 %.not52, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 224), align 8
  %i.q = call i32 (ptr, i32, ...) %i.p(ptr noundef nonnull %i.o, i32 noundef 115, ptr noundef nonnull %i.a, i32 noundef 117, ptr noundef nonnull @SDL_DBus_ScreensaverInhibit.INHIBIT_IDLE, i32 noundef 0) #6
  %.not53 = icmp eq i32 %i.q, 0
  br i1 %.not53, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 328), align 8
  call void %i.r(ptr noundef nonnull %i.o) #6
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 240), align 8
  call void %i.s(ptr noundef nonnull %i.o, ptr noundef nonnull %1) #6
  %i.t = call fastcc zeroext i1 @SDL_DBus_AppendDictWithKeyValue(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %.0)
  br i1 %i.t, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 328), align 8
  call void %i.u(ptr noundef nonnull %i.o) #6
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr null, ptr %i.c, align 8
  %i.v = load ptr, ptr @dbus, align 8
  %i.w = call fastcc zeroext i1 @SDL_DBus_CallWithBasicReply(ptr noundef %i.v, ptr noundef nonnull %i.c, ptr noundef %i.o, i32 noundef 111, ptr noundef nonnull %i.b) ; 2 uses
  br i1 %i.w, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = call noalias ptr @SDL_strdup_REAL(ptr noundef %i.x) #6
  store ptr %i.y, ptr @inhibit_handle, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i1 true, ptr @SDL_DBus_ScreensaverInhibit.interface_unavailable, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.z = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %SDL_DBus_FreeReply.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 328), align 8
  call void %i.aa(ptr noundef nonnull %i.z) #6, !inline_history !8
  br label %SDL_DBus_FreeReply.exit

SDL_DBus_FreeReply.exit:                          ; preds = %bb.r, %bb.s
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dbus, i64 328), align 8
  call void %i.ab(ptr noundef nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.j, %SDL_DBus_FreeReply.exit, %bb.n, %bb.l
  %.038 = phi i1 [ %i.w, %SDL_DBus_FreeReply.exit ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %.thread56

bb.u:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr @inhibit_handle, align 8
  %i.ad = tail call zeroext i1 (ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallVoidMethod(ptr noundef nonnull @.str.8, ptr noundef %i.ac, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 0)
  br i1 %i.ad, label %bb.v, label %.thread56

.thread56:                                        ; preds = %bb.t, %bb.u
  %.139.ph = phi i1 [ false, %bb.u ], [ %.038, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread60

bb.v:                                             ; preds = %bb.u
  %i.ae = load ptr, ptr @inhibit_handle, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.ae) #6
  store ptr null, ptr @inhibit_handle, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread60

bb.w:                                             ; preds = %bb.e
  br i1 %0, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.af = tail call ptr @SDL_GetAppMetadataProperty_REAL(ptr noundef nonnull @.str.24) #6
  store ptr %i.af, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.ag = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.20) #6 ; 3 uses
  store ptr %i.ag, ptr %i.e, align 8
  %.not48 = icmp eq ptr %i.ag, null
  br i1 %.not48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ah = load i8, ptr %i.ag, align 1
  %.not49 = icmp eq i8 %i.ah, 0
  br i1 %.not49, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr @.str.17, ptr %i.e, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ai = call zeroext i1 (ptr, ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallMethod(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, i32 noundef 115, ptr noundef nonnull %i.d, i32 noundef 115, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 117, ptr noundef nonnull @screensaver_cookie, i32 noundef 0)
  br i1 %i.ai, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i1 true, ptr @SDL_DBus_ScreensaverInhibit.interface_unavailable, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.aj = load i32, ptr @screensaver_cookie, align 4
  %i.ak = icmp ne i32 %i.aj, 0
  br label %bb.ad
end_hunk_0
