inline.NumInlined: 302
inline.NumDeleted: 51
begin_hunk_0_@psubscribeCommand
declare void @psubscribeCommand(ptr noundef) #2

declare void @punsubscribeCommand(ptr noundef) #2

declare void @ssubscribeCommand(ptr noundef) #2

declare void @sunsubscribeCommand(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @_addReplyToBufferOrList(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = and i64 %i.b, 64
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 9007199254740997
  %.not40 = icmp eq i64 %i.d, 1
  br i1 %.not40, label %bb.c, label %bb.f, !prof !142

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150  ; 2 uses
  %.not33 = icmp eq ptr %i.f, null
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.not34 = icmp eq ptr %i.i, null
  %i.j = select i1 %.not34, ptr @.str.3, ptr %i.i
  tail call void (ptr, ptr, ...) @logInvalidUseAndFreeClientAsync(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.j)
  br label %bb.p

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !152
  %i.m = add i64 %i.l, %2
  store i64 %i.m, ptr %i.k, align 8, !tbaa !152
  tail call void @reqresSaveClientReplyOffset(ptr noundef nonnull %0) #30
  %i.n = load i64, ptr %i.a, align 8, !tbaa !99
  %i.o = and i64 %i.n, 70368744177664
  %.not31 = icmp eq i64 %i.o, 0
  br i1 %.not31, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1496), align 8, !tbaa !153
  %i.q = icmp eq ptr %0, %i.p
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1504), align 8 ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !154  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %cmdHasPushAsReply.exit.thread, label %cmdHasPushAsReply.exit

cmdHasPushAsReply.exit:                           ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !144  ; 6 uses
  %i.x = icmp ne ptr %i.w, @subscribeCommand
  %i.y = icmp ne ptr %i.w, @unsubscribeCommand
  %or.cond.i.not50 = and i1 %i.x, %i.y
  %i.z = icmp ne ptr %i.w, @psubscribeCommand
  %or.cond9.i.not47 = and i1 %i.z, %or.cond.i.not50
  %i.aa = icmp ne ptr %i.w, @punsubscribeCommand
  %or.cond10.i.not45 = and i1 %i.aa, %or.cond9.i.not47
  %i.ab = icmp ne ptr %i.w, @ssubscribeCommand
  %or.cond11.i.not43 = and i1 %i.ab, %or.cond10.i.not45
  %i.ac = icmp ne ptr %i.w, @sunsubscribeCommand
  %narrow.i.not = and i1 %i.ac, %or.cond11.i.not43
  br i1 %narrow.i.not, label %cmdHasPushAsReply.exit.thread, label %bb.i

cmdHasPushAsReply.exit.thread:                    ; preds = %bb.h, %cmdHasPushAsReply.exit
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7912), align 8, !tbaa !155
  tail call fastcc void @_addReplyPayloadToList(ptr noundef nonnull %0, ptr noundef %i.ad, ptr noundef %1, i64 noundef %2, i8 noundef zeroext 0)
  br label %bb.p

bb.i:                                             ; preds = %cmdHasPushAsReply.exit, %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !113
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !143
  %.not.i36 = icmp eq i64 %i.ah, 0
  br i1 %.not.i36, label %bb.j, label %_addReplyPayloadToBuffer.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.am = load i8, ptr %i.al, align 8, !tbaa !92
  %.not28.i = icmp eq i8 %i.am, 0
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !20 ; 4 uses
  br i1 %.not28.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add i64 %2, 9                           ; 2 uses
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = icmp ugt i64 %i.ap, %i.aj
  br i1 %i.aq, label %_addReplyPayloadToBuffer.exit, label %tryAddPayload.exit.i

tryAddPayload.exit.i:                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.an ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 0, ptr %i.au, align 1, !tbaa !156
  store i64 %2, ptr %i.at, align 1, !tbaa !158
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr readonly align 1 %1, i64 %2, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aw = sub i64 %i.aj, %i.an
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %2) ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr readonly align 1 %1, i64 %i.ax, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %tryAddPayload.exit.i
  %.sink32.i = phi i64 [ %i.ao, %tryAddPayload.exit.i ], [ %i.ax, %bb.l ]
  %.0.i37 = phi i64 [ %2, %tryAddPayload.exit.i ], [ %i.ax, %bb.l ] ; 2 uses
  %i.bb = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.bc = add i64 %i.bb, %.sink32.i               ; 3 uses
  store i64 %i.bc, ptr %i.ak, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !89
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.n, label %_addReplyPayloadToBuffer.exit

bb.n:                                             ; preds = %bb.m
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !89
  br label %_addReplyPayloadToBuffer.exit

_addReplyPayloadToBuffer.exit:                    ; preds = %bb.i, %bb.k, %bb.m, %bb.n
  %.1.i = phi i64 [ 0, %bb.i ], [ %.0.i37, %bb.m ], [ %.0.i37, %bb.n ], [ 0, %bb.k ] ; 3 uses
  %i.bg = icmp ugt i64 %2, %.1.i
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_addReplyPayloadToBuffer.exit
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !113
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i
  %i.bj = sub nuw i64 %2, %.1.i
  tail call fastcc void @_addReplyPayloadToList(ptr noundef nonnull %0, ptr noundef %i.bh, ptr noundef %i.bi, i64 noundef %i.bj, i8 noundef zeroext 0)
  br label %bb.p

bb.p:                                             ; preds = %_addReplyPayloadToBuffer.exit, %bb.o, %bb.a, %cmdHasPushAsReply.exit.thread, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @logInvalidUseAndFreeClientAsync(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call ptr @sdsempty() #30
  %i.b = call ptr @sdscatvprintf(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull %2) #30 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = call ptr @sdsempty() #30
  %i.d = call ptr @catClientInfoString(ptr noundef %i.c, ptr noundef %0) ; 2 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !159
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.63, ptr noundef %i.b, ptr noundef %i.d) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @sdsfree(ptr noundef %i.b) #30
  call void @sdsfree(ptr noundef %i.d) #30
  call void @freeClientAsync(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

declare void @reqresSaveClientReplyOffset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_addReplyPayloadToList(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i8 noundef zeroext range(i8 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %5 = trunc nuw i8 %4 to i1
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160  ; 8 uses
  %6 = trunc nuw i8 %4 to i1                      ; 3 uses
  %.not62 = icmp eq ptr %i.e, null
  br i1 %.not62, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !17
  %.not63 = icmp eq i8 %i.g, 0
  br i1 %.not63, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !20
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.k = add i64 %3, 9
  %i.l = add i64 %i.k, %i.j                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, %i.i
  br i1 %i.m, label %bb.h, label %.thread78

.thread78:                                        ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i8 %4, ptr %i.p, align 1, !tbaa !156
  store i64 %3, ptr %i.o, align 1, !tbaa !158
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr readonly align 1 %2, i64 %3, i1 false)
  store i64 %i.l, ptr %i.h, align 8, !tbaa !20
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  br i1 %6, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.e, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20   ; 3 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %3) ; 5 uses
  %.not65 = icmp eq i64 %i.v, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %2, i64 %i.v, i1 false)
  %i.y = add i64 %i.v, %i.t
  store i64 %i.y, ptr %i.s, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.aa = sub i64 %3, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %.thread, %bb.f, %bb.g, %bb.e, %bb.b
  %.not6875 = phi i1 [ %6, %bb.b ], [ false, %bb.f ], [ true, %bb.e ], [ %5, %.thread ], [ false, %bb.g ], [ %6, %bb.d ]
  %.158 = phi i64 [ %3, %bb.b ], [ %3, %bb.f ], [ %3, %bb.e ], [ %3, %.thread ], [ %i.aa, %bb.g ], [ %3, %bb.d ] ; 7 uses
  %.1 = phi ptr [ %2, %bb.b ], [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %.thread ], [ %i.z, %bb.g ], [ %2, %bb.d ] ; 2 uses
  %.not67 = icmp eq i64 %.158, 0
  br i1 %.not67, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ab = add i64 %.158, 9                        ; 3 uses
  %i.ac = select i1 %.not6875, i64 %i.ab, i64 %.158
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 16384)
  %i.ae = add i64 %i.ad, 24
  %i.af = call ptr @zmalloc_usable(i64 noundef %i.ae, ptr noundef nonnull %i.a) #30 ; 9 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !20
  %i.ah = add i64 %i.ag, -24                      ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 %4, ptr %i.aj, align 8, !tbaa !17
  %.not68 = icmp eq i8 %4, 0
  br i1 %.not68, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp ugt i64 %i.ab, %i.ah
  br i1 %i.ak, label %bb.k, label %tryAddPayload.exit72

tryAddPayload.exit72:                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 25
  store i8 1, ptr %i.am, align 1, !tbaa !156
  store i64 %.158, ptr %i.al, align 1, !tbaa !158
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr readonly align 1 %.1, i64 %.158, i1 false)
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !20
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @_serverAssert(ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.1, i32 noundef 423) #30
  call void @abort() #31
  unreachable

bb.l:                                             ; preds = %bb.i
  store i64 %.158, ptr %i.ai, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %.1, i64 %.158, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %tryAddPayload.exit72, %bb.l
  %i.ap = call ptr @listAddNodeTail(ptr noundef nonnull %1, ptr noundef nonnull %i.af) #30 ; 0 uses
  %i.aq = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !161
  %i.at = add i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !161
  %i.au = call i32 @closeClientOnOutputBufferLimitReached(ptr noundef %0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.n

bb.n:                                             ; preds = %.thread78, %bb.m, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @addReply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !99   ; 7 uses
  %i.d = and i64 %i.c, 134217984
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.m, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 1024
  %.not11.i = icmp eq i64 %i.e, 0
  br i1 %.not11.i, label %bb.c, label %_prepareClientToWrite.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.c, 20971520
  %.not12.i = icmp ne i64 %i.f, 0
  %i.g = and i64 %i.c, 70368744177664
  %.not13.i = icmp eq i64 %i.g, 0
  %i.h = and i1 %.not12.i, %.not13.i
  %i.i = and i64 %i.c, 8194
  %i.j = icmp eq i64 %i.i, 2
  %or.cond.i = or i1 %i.j, %i.h
  br i1 %or.cond.i, label %_prepareClientToWrite.exit, label %bb.d, !prof !141

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %.not16.i = icmp eq ptr %i.l, null
  br i1 %.not16.i, label %_prepareClientToWrite.exit, label %bb.e, !prof !142

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.n = load i8, ptr %i.m, align 1, !tbaa !84
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.m, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.p = and i64 %i.c, 9007199254740997
  %.not.i.i = icmp eq i64 %i.p, 1
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !142

bb.g:                                             ; preds = %bb.f
  %i.q = tail call fastcc i32 @_clientHasPendingRepliesSlave(ptr noundef nonnull readonly %0)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr %i.b, align 8, !tbaa !99
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.t = load i64, ptr %i.s, align 8, !tbaa !87
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %clientHasPendingReplies.exit.i, label %bb.m

clientHasPendingReplies.exit.i:                   ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !143
  %.not21.i = icmp eq i64 %i.x, 0
  br i1 %.not21.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %._crit_edge, %clientHasPendingReplies.exit.i
  %i.y = phi i64 [ %.pre, %._crit_edge ], [ %i.c, %clientHasPendingReplies.exit.i ] ; 2 uses
  %i.z = and i64 %i.y, 2097152
  %.not.i18.i = icmp eq i64 %i.z, 0
  br i1 %.not.i18.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !111
  switch i32 %i.ab, label %bb.m [
    i32 0, label %bb.l
    i32 12, label %bb.l
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !112
  %.not7.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not7.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j
  %i.ae = or disjoint i64 %i.y, 2097152
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !99
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1456), align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 880
  tail call void @listLinkNodeHead(ptr noundef %i.af, ptr noundef nonnull %i.ag) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.h, %bb.l, %clientHasPendingReplies.exit.i, %bb.e, %bb.i, %bb.j, %bb.k, %bb.g
  %i.ah = load i64, ptr %1, align 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 4
  %i.ak = and i32 %i.aj, 15
  switch i32 %i.ak, label %bb.u [
    i32 0, label %bb.n
    i32 8, label %bb.n
    i32 1, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14 ; 6 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %.val.i = load i8, ptr %i.an, align 1, !tbaa !17 ; 2 uses
  %i.ao = and i8 %.val.i, 7
  switch i8 %i.ao, label %sdslen.exit [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.ap = lshr i8 %.val.i, 3
  %i.aq = zext nneg i8 %i.ap to i64
  br label %sdslen.exit

bb.p:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i64
  br label %sdslen.exit

bb.q:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 -5
  %i.av = load i16, ptr %i.au, align 1, !tbaa !18
  %i.aw = zext i16 %i.av to i64
  br label %sdslen.exit

bb.r:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds i8, ptr %i.am, i64 -9
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !9
  %i.az = zext i32 %i.ay to i64
  br label %sdslen.exit

bb.s:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds i8, ptr %i.am, i64 -17
  %i.bb = load i64, ptr %i.ba, align 1, !tbaa !20
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i9 = phi i64 [ %i.bb, %bb.s ], [ %i.aq, %bb.o ], [ %i.at, %bb.p ], [ %i.aw, %bb.q ], [ %i.az, %bb.r ], [ 0, %bb.n ]
  tail call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull %i.am, i64 noundef %.0.i9)
  br label %_prepareClientToWrite.exit

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.be) #30
  %i.bg = sext i32 %i.bf to i64
  call void @_addReplyToBufferOrList(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_prepareClientToWrite.exit

bb.u:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 585, ptr noundef nonnull @.str.4) #30
  tail call void @abort() #31
  unreachable
end_hunk_0
begin_hunk_1_@clientCommand:bb.a
  %i.fq = icmp slt i64 %i.fp, 1
  br i1 %i.fq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.177)
  br label %.thread655

.thread655:                                       ; preds = %bb.be, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %.critedge

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %getClientTypeByName.exit631.thread

bb.bi:                                            ; preds = %bb.bd
  %i.fr = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.165) #34
  %i.fs = icmp eq i32 %i.fr, 0
  %or.cond19 = select i1 %i.fs, i1 %i.ey, i1 false
  br i1 %or.cond19, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !173
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !14 ; 6 uses
  %i.fx = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.248) #34
  %.not.i624 = icmp eq i32 %i.fx, 0
  br i1 %.not.i624, label %getClientTypeByName.exit631.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fy = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.249) #34
  %.not5.i625 = icmp eq i32 %i.fy, 0
  br i1 %.not5.i625, label %getClientTypeByName.exit631.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fz = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.13) #34
  %.not6.i626 = icmp eq i32 %i.fz, 0
  br i1 %.not6.i626, label %getClientTypeByName.exit631.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ga = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.250) #34
  %.not7.i627 = icmp eq i32 %i.ga, 0
  br i1 %.not7.i627, label %getClientTypeByName.exit631.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gb = call i32 @strcasecmp(ptr noundef readonly %i.fw, ptr noundef nonnull @.str.12) #34
  %.not8.i628 = icmp eq i32 %i.gb, 0
  br i1 %.not8.i628, label %getClientTypeByName.exit631.thread, label %getClientTypeByName.exit631

getClientTypeByName.exit631:                      ; preds = %bb.bn
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.166, ptr noundef %i.fw)
  br label %.critedge

bb.bo:                                            ; preds = %bb.bi
  %i.gc = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.178) #34
  %i.gd = icmp eq i32 %i.gc, 0
  %or.cond21 = select i1 %i.gd, i1 %i.ey, i1 false
  br i1 %or.cond21, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !173
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !14
  br label %getClientTypeByName.exit631.thread

bb.bq:                                            ; preds = %bb.bo
  %i.gi = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.179) #34
  %i.gj = icmp eq i32 %i.gi, 0
  %or.cond23 = select i1 %i.gj, i1 %i.ey, i1 false
  br i1 %or.cond23, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !173
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !14
  br label %getClientTypeByName.exit631.thread

bb.bs:                                            ; preds = %bb.bq
  %i.go = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.180) #34
  %i.gp = icmp eq i32 %i.go, 0
  %or.cond25 = select i1 %i.gp, i1 %i.ey, i1 false
  br i1 %or.cond25, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !173
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !14 ; 2 uses
  %i.gu = call fastcc i64 @sdslen(ptr noundef %i.gt)
  %i.gv = call ptr @ACLGetUserByName(ptr noundef %i.gt, i64 noundef %i.gu) #30 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bu, label %getClientTypeByName.exit631.thread

bb.bu:                                            ; preds = %bb.bt
  %i.gx = load ptr, ptr %i.al, align 8, !tbaa !186
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.ew
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !173
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !14
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.181, ptr noundef %i.hb)
  br label %.critedge

bb.bv:                                            ; preds = %bb.bs
  %i.hc = call i32 @strcasecmp(ptr noundef %i.fd, ptr noundef nonnull @.str.182) #34
  %i.hd = icmp eq i32 %i.hc, 0
  %or.cond27 = select i1 %i.hd, i1 %i.ey, i1 false
  br i1 %or.cond27, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ew
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !173
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !14 ; 2 uses
  %i.hi = call i32 @strcasecmp(ptr noundef %i.hh, ptr noundef nonnull @.str.183) #34
  %.not527 = icmp eq i32 %i.hi, 0
  br i1 %.not527, label %getClientTypeByName.exit631.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hj = call i32 @strcasecmp(ptr noundef %i.hh, ptr noundef nonnull @.str.184) #34
  %.not528 = icmp eq i32 %i.hj, 0
  br i1 %.not528, label %getClientTypeByName.exit631.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !338
  call void @addReplyErrorObject(ptr noundef %0, ptr noundef %i.hk)
  br label %.critedge

bb.bz:                                            ; preds = %bb.bv
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !338
  call void @addReplyErrorObject(ptr noundef %0, ptr noundef %i.hl)
  br label %.critedge

getClientTypeByName.exit631.thread:               ; preds = %bb.bn, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bc, %bb.br, %bb.bt, %bb.bp, %bb.bw, %bb.bx, %bb.bh
  %.2480 = phi i64 [ %i.fj, %bb.bc ], [ %.0478786, %bb.bh ], [ %.0478786, %bb.bx ], [ %.0478786, %bb.bp ], [ %.0478786, %bb.br ], [ %.0478786, %bb.bt ], [ %.0478786, %bb.bw ], [ %.0478786, %bb.bm ], [ %.0478786, %bb.bl ], [ %.0478786, %bb.bk ], [ %.0478786, %bb.bj ], [ %.0478786, %bb.bn ] ; 2 uses
  %.2474 = phi i64 [ %.0472787, %bb.bc ], [ %i.fp, %bb.bh ], [ %.0472787, %bb.bx ], [ %.0472787, %bb.bp ], [ %.0472787, %bb.br ], [ %.0472787, %bb.bt ], [ %.0472787, %bb.bw ], [ %.0472787, %bb.bm ], [ %.0472787, %bb.bl ], [ %.0472787, %bb.bk ], [ %.0472787, %bb.bj ], [ %.0472787, %bb.bn ] ; 2 uses
  %.1468 = phi i32 [ %.0467788, %bb.bc ], [ %.0467788, %bb.bh ], [ 0, %bb.bx ], [ %.0467788, %bb.bp ], [ %.0467788, %bb.br ], [ %.0467788, %bb.bt ], [ 1, %bb.bw ], [ %.0467788, %bb.bm ], [ %.0467788, %bb.bl ], [ %.0467788, %bb.bk ], [ %.0467788, %bb.bj ], [ %.0467788, %bb.bn ] ; 2 uses
  %.1456 = phi i32 [ %.0455790, %bb.bc ], [ %.0455790, %bb.bh ], [ %.0455790, %bb.bx ], [ %.0455790, %bb.bp ], [ %.0455790, %bb.br ], [ %.0455790, %bb.bt ], [ %.0455790, %bb.bw ], [ 2, %bb.bm ], [ 1, %bb.bl ], [ 1, %bb.bk ], [ 0, %bb.bj ], [ 3, %bb.bn ] ; 2 uses
  %.1451 = phi ptr [ %.0450791, %bb.bc ], [ %.0450791, %bb.bh ], [ %.0450791, %bb.bx ], [ %.0450791, %bb.bp ], [ %.0450791, %bb.br ], [ %i.gv, %bb.bt ], [ %.0450791, %bb.bw ], [ %.0450791, %bb.bm ], [ %.0450791, %bb.bl ], [ %.0450791, %bb.bk ], [ %.0450791, %bb.bj ], [ %.0450791, %bb.bn ] ; 2 uses
  %.1445 = phi ptr [ %.0444792, %bb.bc ], [ %.0444792, %bb.bh ], [ %.0444792, %bb.bx ], [ %.0444792, %bb.bp ], [ %i.gn, %bb.br ], [ %.0444792, %bb.bt ], [ %.0444792, %bb.bw ], [ %.0444792, %bb.bm ], [ %.0444792, %bb.bl ], [ %.0444792, %bb.bk ], [ %.0444792, %bb.bj ], [ %.0444792, %bb.bn ] ; 2 uses
  %.1424 = phi ptr [ %.0423793, %bb.bc ], [ %.0423793, %bb.bh ], [ %.0423793, %bb.bx ], [ %i.gh, %bb.bp ], [ %.0423793, %bb.br ], [ %.0423793, %bb.bt ], [ %.0423793, %bb.bw ], [ %.0423793, %bb.bm ], [ %.0423793, %bb.bl ], [ %.0423793, %bb.bk ], [ %.0423793, %bb.bj ], [ %.0423793, %bb.bn ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.hm = load i32, ptr %i.i, align 8, !tbaa !275 ; 2 uses
  %i.hn = trunc nuw i64 %indvars.iv.next to i32
  %.not531 = icmp sgt i32 %i.hm, %i.hn
  br i1 %.not531, label %.lr.ph794, label %.loopexit.loopexit, !llvm.loop !339

bb.ca:                                            ; preds = %bb.bb
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !338 ; 2 uses
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef readonly %i.ho)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !14 ; 6 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 -1
  %.val.i.i632 = load i8, ptr %i.hr, align 1, !tbaa !17 ; 2 uses
  %i.hs = and i8 %.val.i.i632, 7
  switch i8 %i.hs, label %addReplyErrorObject.exit634 [
    i8 0, label %bb.cb
    i8 1, label %bb.cc
    i8 2, label %bb.cd
    i8 3, label %bb.ce
    i8 4, label %bb.cf
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.ht = lshr i8 %.val.i.i632, 3
  %i.hu = zext nneg i8 %i.ht to i64
  br label %addReplyErrorObject.exit634

bb.cc:                                            ; preds = %bb.ca
  %i.hv = getelementptr inbounds i8, ptr %i.hq, i64 -3
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !17
  %i.hx = zext i8 %i.hw to i64
  br label %addReplyErrorObject.exit634

bb.cd:                                            ; preds = %bb.ca
  %i.hy = getelementptr inbounds i8, ptr %i.hq, i64 -5
  %i.hz = load i16, ptr %i.hy, align 1, !tbaa !18
  %i.ia = zext i16 %i.hz to i64
  br label %addReplyErrorObject.exit634

bb.ce:                                            ; preds = %bb.ca
  %i.ib = getelementptr inbounds i8, ptr %i.hq, i64 -9
  %i.ic = load i32, ptr %i.ib, align 1, !tbaa !9
  %i.id = zext i32 %i.ic to i64
  br label %addReplyErrorObject.exit634

bb.cf:                                            ; preds = %bb.ca
  %i.ie = getelementptr inbounds i8, ptr %i.hq, i64 -17
  %i.if = load i64, ptr %i.ie, align 1, !tbaa !20
  br label %addReplyErrorObject.exit634

addReplyErrorObject.exit634:                      ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf
  %.0.i.i633 = phi i64 [ %i.if, %bb.cf ], [ %i.hu, %bb.cb ], [ %i.hx, %bb.cc ], [ %i.ia, %bb.cd ], [ %i.id, %bb.ce ], [ 0, %bb.ca ]
  %i.ig = add i64 %.0.i.i633, -2
  tail call void @afterErrorReply(ptr noundef nonnull %0, ptr noundef nonnull %i.hq, i64 noundef %i.ig, i32 noundef 0)
  br label %.critedge

.loopexit.loopexit:                               ; preds = %getClientTypeByName.exit631.thread
  %3 = trunc nuw i32 %.1468 to i1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ba
  %.5483 = phi i64 [ 0, %bb.ba ], [ %.2480, %.loopexit.loopexit ] ; 2 uses
  %.5477 = phi i64 [ 0, %bb.ba ], [ %.2474, %.loopexit.loopexit ] ; 2 uses
  %.4471 = phi i1 [ false, %bb.ba ], [ %3, %.loopexit.loopexit ]
  %.4459 = phi i32 [ -1, %bb.ba ], [ %.1456, %.loopexit.loopexit ] ; 2 uses
  %.4454 = phi ptr [ null, %bb.ba ], [ %.1451, %.loopexit.loopexit ] ; 2 uses
  %.4448 = phi ptr [ null, %bb.ba ], [ %.1445, %.loopexit.loopexit ] ; 2 uses
  %.4427 = phi ptr [ %i.et, %bb.ba ], [ %.1424, %.loopexit.loopexit ] ; 2 uses
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !22
  call void @listRewind(ptr noundef %i.ih, ptr noundef nonnull %1) #30
  %i.ii = call ptr @listNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not532802 = icmp eq ptr %i.ii, null
  br i1 %.not532802, label %._crit_edge807.thread, label %.lr.ph806

.lr.ph806:                                        ; preds = %.loopexit
  %.not534 = icmp eq ptr %.4427, null
  %.not536 = icmp eq ptr %.4448, null
  %.not538 = icmp eq i32 %.4459, -1
  %.not540 = icmp eq i64 %.5483, 0
  %.not542 = icmp eq ptr %.4454, null
  %.not544 = icmp eq i64 %.5477, 0
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph806, %bb.cy
  %i.ij = phi ptr [ %i.ii, %.lr.ph806 ], [ %i.jh, %bb.cy ]
  %.0462804 = phi i32 [ 0, %.lr.ph806 ], [ %.2464, %bb.cy ] ; 8 uses
  %.0465803 = phi i32 [ 0, %.lr.ph806 ], [ %.1466, %bb.cy ] ; 8 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !160 ; 8 uses
  br i1 %.not534, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.im = call ptr @getClientPeerId(ptr noundef %i.il)
  %i.in = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.im, ptr noundef nonnull dereferenceable(1) %.4427) #34
  %.not535 = icmp eq i32 %i.in, 0
  br i1 %.not535, label %bb.ci, label %bb.cy, !llvm.loop !340

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %.not536, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.io = call ptr @getClientSockname(ptr noundef %i.il)
  %i.ip = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.io, ptr noundef nonnull dereferenceable(1) %.4448) #34
  %.not537 = icmp eq i32 %i.ip, 0
  br i1 %.not537, label %bb.ck, label %bb.cy, !llvm.loop !340

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br i1 %.not538, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !99 ; 3 uses
  %i.is = and i64 %i.ir, 2
  %.not.i635 = icmp eq i64 %i.is, 0
  br i1 %.not.i635, label %bb.cm, label %getClientType.exit

bb.cm:                                            ; preds = %bb.cl
  %i.it = and i64 %i.ir, 5
  %or.cond.i = icmp eq i64 %i.it, 1
  br i1 %or.cond.i, label %getClientType.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iu = trunc i64 %i.ir to i32
  %i.iv = lshr i32 %i.iu, 17
  %..i637 = and i32 %i.iv, 2
  br label %getClientType.exit

getClientType.exit:                               ; preds = %bb.cl, %bb.cm, %bb.cn
  %.0.i636 = phi i32 [ 3, %bb.cl ], [ %..i637, %bb.cn ], [ 1, %bb.cm ]
  %.not539 = icmp eq i32 %.0.i636, %.4459
  br i1 %.not539, label %bb.co, label %bb.cy, !llvm.loop !340

bb.co:                                            ; preds = %getClientType.exit, %bb.ck
  br i1 %.not540, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.iw = load i64, ptr %i.il, align 8, !tbaa !71
  %.not541 = icmp eq i64 %i.iw, %.5483
  br i1 %.not541, label %bb.cq, label %bb.cy, !llvm.loop !340

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %.not542, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 224
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !108
  %.not543 = icmp eq ptr %i.iy, %.4454
  br i1 %.not543, label %bb.cs, label %bb.cy, !llvm.loop !340

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.iz = icmp eq ptr %0, %i.il                   ; 2 uses
  %or.cond29 = select i1 %i.iz, i1 %.4471, i1 false
  br i1 %or.cond29, label %bb.cy, label %bb.ct, !llvm.loop !340

bb.ct:                                            ; preds = %bb.cs
  br i1 %.not544, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ja = call i64 @commandTimeSnapshot() #30
  %i.jb = sdiv i64 %i.ja, 1000
  %i.jc = getelementptr inbounds nuw i8, ptr %i.il, i64 280
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !105
  %i.je = sub nsw i64 %i.jb, %i.jd
  %i.jf = icmp slt i64 %i.je, %.5477
  br i1 %i.jf, label %bb.cy, label %bb.cv, !llvm.loop !340

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %i.iz, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @freeClient(ptr noundef %i.il)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %.1463 = phi i32 [ %.0462804, %bb.cw ], [ 1, %bb.cv ]
  %i.jg = add nsw i32 %.0465803, 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cu, %bb.cs, %bb.cr, %bb.cp, %getClientType.exit, %bb.cj, %bb.ch, %bb.cx
  %.1466 = phi i32 [ %i.jg, %bb.cx ], [ %.0465803, %bb.ch ], [ %.0465803, %bb.cj ], [ %.0465803, %getClientType.exit ], [ %.0465803, %bb.cp ], [ %.0465803, %bb.cr ], [ %.0465803, %bb.cs ], [ %.0465803, %bb.cu ] ; 3 uses
  %.2464 = phi i32 [ %.1463, %bb.cx ], [ %.0462804, %bb.ch ], [ %.0462804, %bb.cj ], [ %.0462804, %getClientType.exit ], [ %.0462804, %bb.cp ], [ %.0462804, %bb.cr ], [ %.0462804, %bb.cs ], [ %.0462804, %bb.cu ] ; 2 uses
  %i.jh = call ptr @listNext(ptr noundef nonnull %1) #30 ; 2 uses
  %.not532 = icmp eq ptr %i.jh, null
  br i1 %.not532, label %._crit_edge807, label %bb.cg

._crit_edge807:                                   ; preds = %bb.cy
  %i.ji = icmp eq i32 %.2464, 0                   ; 3 uses
  %i.jj = load i32, ptr %i.i, align 8, !tbaa !275
  %i.jk = icmp eq i32 %i.jj, 3
  br i1 %i.jk, label %bb.cz, label %bb.da

._crit_edge807.thread:                            ; preds = %.loopexit
  %i.jl = load i32, ptr %i.i, align 8, !tbaa !275
  %i.jm = icmp eq i32 %i.jl, 3
  br i1 %i.jm, label %.thread871.thread, label %.thread876

.thread876:                                       ; preds = %._crit_edge807.thread
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef 0)
  br label %.critedge

.thread871.thread:                                ; preds = %._crit_edge807.thread
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.185)
  br label %.critedge

bb.cz:                                            ; preds = %._crit_edge807
  %i.jn = icmp eq i32 %.1466, 0
  br i1 %i.jn, label %.thread871, label %bb.db

.thread871:                                       ; preds = %bb.cz
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.185)
  br i1 %i.ji, label %.critedge, label %bb.dc

bb.da:                                            ; preds = %._crit_edge807
  %i.jo = sext i32 %.1466 to i64
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.jo)
  br i1 %i.ji, label %.critedge, label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.jp = load ptr, ptr @shared, align 8, !tbaa !336
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.jp)
  br i1 %i.ji, label %.critedge, label %bb.dc

bb.dc:                                            ; preds = %bb.da, %.thread871, %bb.db
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !99
  %i.js = or i64 %i.jr, 64
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !99
  br label %.critedge

bb.dd:                                            ; preds = %bb.ay
  %i.jt = tail call i32 @strcasecmp(ptr noundef %.pre831, ptr noundef nonnull @.str.186) #34
  %.not545 = icmp eq i32 %i.jt, 0
  %.off = add i32 %i.j, -3
  %switch = icmp ult i32 %.off, 2                 ; 2 uses
  %or.cond700 = and i1 %switch, %.not545
  br i1 %or.cond700, label %bb.de, label %bb.dq

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.ju = icmp eq i32 %i.j, 4
  br i1 %i.ju, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.jv = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !173
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !14 ; 2 uses
  %i.jz = tail call i32 @strcasecmp(ptr noundef %i.jy, ptr noundef nonnull @.str.187) #34
  %.not546 = icmp eq i32 %i.jz, 0
  br i1 %.not546, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ka = tail call i32 @strcasecmp(ptr noundef %i.jy, ptr noundef nonnull @.str.188) #34
  %.not547 = icmp eq i32 %i.ka, 0
  br i1 %.not547, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.189)
end_hunk_1
