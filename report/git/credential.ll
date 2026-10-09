Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/credential?download=true
inline.NumInlined: 58
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@credential_set_all_capabilities
define dso_local void @credential_set_all_capabilities(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %1, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %credential_set_capability.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %switch.cast = trunc nuw i32 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 262657, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %i.c = load i8, ptr %i.b, align 4
  %i.d = or i8 %i.c, %switch.masked
  store i8 %i.d, ptr %i.b, align 4
  br label %credential_set_capability.exit

credential_set_capability.exit:                   ; preds = %bb.a, %switch.lookup
  %switch.tableidx6 = add i32 %1, -1              ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx6, 3
  br i1 %i.e, label %switch.lookup7, label %credential_set_capability.exit5

switch.lookup7:                                   ; preds = %credential_set_capability.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %switch.cast8 = trunc nuw i32 %switch.tableidx6 to i24
  %switch.shiftamt9 = shl nuw nsw i24 %switch.cast8, 3
  %switch.downshift10 = lshr i24 262657, %switch.shiftamt9
  %switch.masked11 = trunc i24 %switch.downshift10 to i8
  %i.g = load i8, ptr %i.f, align 4
  %i.h = or i8 %i.g, %switch.masked11
  store i8 %i.h, ptr %i.f, align 4
  br label %credential_set_capability.exit5

credential_set_capability.exit5:                  ; preds = %credential_set_capability.exit, %switch.lookup7
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @credential_announce_capabilities(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 10, i64 1, ptr %1) ; 0 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.val5 = load i8, ptr %i.a, align 4
  %i.b = and i8 %.val5, 1
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %announce_one.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1) #18 ; 0 uses
  br label %announce_one.exit

announce_one.exit:                                ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val = load i8, ptr %i.d, align 4
  %i.e = and i8 %.val, 1
  %.not.i6 = icmp eq i8 %i.e, 0
  br i1 %.not.i6, label %announce_one.exit7, label %bb.c

bb.c:                                             ; preds = %announce_one.exit
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2) #18 ; 0 uses
  br label %announce_one.exit7

announce_one.exit7:                               ; preds = %announce_one.exit, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @credential_match(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not36 = icmp eq ptr %i.d, null
  br i1 %.not36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.d) #19
  %.not37 = icmp eq i32 %i.e, 0
  br i1 %.not37, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not38 = icmp eq ptr %i.g, null
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %.not39 = icmp eq ptr %i.i, null
  br i1 %.not39, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %i.i) #19
  %.not40 = icmp eq i32 %i.j, 0
  br i1 %.not40, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %.not42 = icmp eq ptr %i.n, null
  br i1 %.not42, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.n) #19
  %.not43 = icmp eq i32 %i.o, 0
  br i1 %.not43, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %.not44 = icmp eq ptr %i.q, null
  br i1 %.not44, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not45 = icmp eq ptr %i.s, null
  br i1 %.not45, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.s) #19
  %.not46 = icmp eq i32 %i.t, 0
  br i1 %.not46, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l, %bb.j
  %.not47 = icmp eq i32 %2, 0
  br i1 %.not47, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %.not48 = icmp eq ptr %i.v, null
  br i1 %.not48, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 2 uses
  %.not49 = icmp eq ptr %i.x, null
  br i1 %.not49, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.x) #19
  %.not50.not = icmp eq i32 %i.y, 0
  br i1 %.not50.not, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.n, %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %.not51 = icmp eq ptr %i.aa, null
  br i1 %.not51, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %.not52 = icmp eq ptr %i.ac, null
  br i1 %.not52, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(1) %i.ac) #19
  %.not53 = icmp eq i32 %i.ad, 0
  %i.ae = zext i1 %.not53 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.p, %bb.r, %bb.s, %bb.q, %bb.o, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b
  %i.af = phi i32 [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %bb.q ], [ 0, %bb.r ], [ %i.ae, %bb.s ]
  ret i32 %i.af
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @credential_has_capability(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 2, label %bb.b
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 4
  %i.b = and i8 %i.a, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 4
  %i.d = and i8 %i.c, 3
  %.not = icmp eq i8 %i.d, 3
  %2 = zext i1 %.not to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0.shrunk = phi i8 [ %2, %bb.c ], [ %i.b, %bb.b ], [ 0, %bb.a ]
  %.0 = zext nneg i8 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @credential_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.credential_ask_one.prompt, i64 24, i1 false)
  %i.a = call i32 @strbuf_getline(ptr noundef nonnull %3, ptr noundef %1) #18
  %.not100 = icmp eq i32 %i.a, -1
  br i1 %.not100, label %credential_set_capability.exit.thread98, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %switch.tableidx105 = add i32 %2, -1            ; 2 uses
  %i.r = icmp ult i32 %switch.tableidx105, 3
  %switch.cast107 = trunc nuw i32 %switch.tableidx105 to i24
  %switch.shiftamt108 = shl nuw nsw i24 %switch.cast107, 3
  %switch.downshift109 = lshr i24 262657, %switch.shiftamt108
  %switch.masked110 = trunc i24 %switch.downshift109 to i8
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %i.s = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc nuw i32 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 262657, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %credential_set_capability.exit
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !31   ; 18 uses
  %i.u = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 noundef 61) #19 ; 3 uses
  %i.v = load i64, ptr %i.c, align 8, !tbaa !32
  %.not71 = icmp eq i64 %i.v, 0
  br i1 %.not71, label %credential_set_capability.exit.thread98, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not72 = icmp eq ptr %i.u, null
  br i1 %.not72, label %credential_set_capability.exit.thread, label %bb.d

credential_set_capability.exit.thread:            ; preds = %bb.c
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.t) #18
  br label %credential_set_capability.exit.thread98

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 17 uses
  store i8 0, ptr %i.u, align 1, !tbaa !33
  %i.x = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(9) @.str.4) #19
  %.not73 = icmp eq i32 %i.x, 0
  br i1 %.not73, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !27
  call void @free(ptr noundef %i.y) #18
  %i.z = call ptr @xstrdup(ptr noundef nonnull %i.w) #18
  store ptr %i.z, ptr %i.q, align 8, !tbaa !27
  %i.aa = load i16, ptr %i.d, align 8
  %i.ab = or i16 %i.aa, 128
  store i16 %i.ab, ptr %i.d, align 8
  br label %credential_set_capability.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(9) @.str.5) #19
  %.not74 = icmp eq i32 %i.ac, 0
  br i1 %.not74, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !22
  call void @free(ptr noundef %i.ad) #18
  %i.ae = call ptr @xstrdup(ptr noundef nonnull %i.w) #18
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !22
  br label %credential_set_capability.exit

bb.h:                                             ; preds = %bb.f
  %i.af = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.6) #19
  %.not75 = icmp eq i32 %i.af, 0
  br i1 %.not75, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !23
  call void @free(ptr noundef %i.ag) #18
  %i.ah = call ptr @xstrdup(ptr noundef nonnull %i.w) #18
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !23
  br label %credential_set_capability.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(9) @.str.7) #19
  %.not76 = icmp eq i32 %i.ai, 0
  br i1 %.not76, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !24
  call void @free(ptr noundef %i.aj) #18
  %i.ak = call ptr @xstrdup(ptr noundef nonnull %i.w) #18
  store ptr %i.ak, ptr %i.n, align 8, !tbaa !24
  br label %credential_set_capability.exit

bb.l:                                             ; preds = %bb.j
  %i.al = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(5) @.str.8) #19
  %.not77 = icmp eq i32 %i.al, 0
  br i1 %.not77, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !25
  call void @free(ptr noundef %i.am) #18
  %i.an = call ptr @xstrdup(ptr noundef nonnull %i.w) #18
  store ptr %i.an, ptr %i.m, align 8, !tbaa !25
  br label %credential_set_capability.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(5) @.str.9) #19
  %.not78 = icmp eq i32 %i.ao, 0
  br i1 %.not78, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !26
  call void @free(ptr noundef %i.ap) #18
  %i.aq = call ptr @xstrdup(ptr noundef nonnull %i.w) #18
  store ptr %i.aq, ptr %i.l, align 8, !tbaa !26
  br label %credential_set_capability.exit

bb.p:                                             ; preds = %bb.n
  %i.ar = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(10) @.str.10) #19
  %.not79 = icmp eq i32 %i.ar, 0
  br i1 %.not79, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = call i32 @git_config_bool(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.w) #18
  %.not80 = icmp eq i32 %i.as, 0
  %i.at = load i16, ptr %i.d, align 8
  %i.au = select i1 %.not80, i16 0, i16 4
  %i.av = and i16 %i.at, -5
  %i.aw = or disjoint i16 %i.av, %i.au
  store i16 %i.aw, ptr %i.d, align 8
  br label %credential_set_capability.exit

bb.r:                                             ; preds = %bb.p
  %i.ax = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(10) @.str.11) #19
  %.not81 = icmp eq i32 %i.ax, 0
  br i1 %.not81, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = call ptr @strvec_push(ptr noundef nonnull %i.k, ptr noundef nonnull %i.w) #18 ; 0 uses
  br label %credential_set_capability.exit

bb.t:                                             ; preds = %bb.r
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(8) @.str.12) #19
  %.not82 = icmp eq i32 %i.az, 0
  br i1 %.not82, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = call ptr @strvec_push(ptr noundef nonnull %i.j, ptr noundef nonnull %i.w) #18 ; 0 uses
  br label %credential_set_capability.exit

bb.v:                                             ; preds = %bb.t
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(13) @.str.13) #19
  %.not83 = icmp eq i32 %i.bb, 0
  br i1 %.not83, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(9) @.str.1) #19
  %.not84 = icmp eq i32 %i.bc, 0
  br i1 %.not84, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  br i1 %i.s, label %switch.lookup, label %credential_set_capability.exit

switch.lookup:                                    ; preds = %bb.x
  %i.bd = load i8, ptr %i.i, align 4
  %i.be = or i8 %i.bd, %switch.masked
  store i8 %i.be, ptr %i.i, align 4
  br label %credential_set_capability.exit

bb.y:                                             ; preds = %bb.w
  %i.bf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(6) @.str.2) #19
  %.not85 = icmp eq i32 %i.bf, 0
  %.not85.not = xor i1 %.not85, true
  %.not113 = xor i1 %i.r, true
  %brmerge = or i1 %.not85.not, %.not113
  br i1 %brmerge, label %credential_set_capability.exit, label %switch.lookup106

switch.lookup106:                                 ; preds = %bb.y
  %i.bg = load i8, ptr %i.h, align 4
  %i.bh = or i8 %i.bg, %switch.masked110
  store i8 %i.bh, ptr %i.h, align 4
  br label %credential_set_capability.exit

bb.z:                                             ; preds = %bb.v
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(9) @.str.14) #19
  %.not86 = icmp eq i32 %i.bi, 0
  br i1 %.not86, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = call i32 @git_config_bool(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.w) #18
  %.not87 = icmp eq i32 %i.bj, 0
  %i.bk = load i16, ptr %i.d, align 8
  %i.bl = select i1 %.not87, i16 0, i16 16
  %i.bm = and i16 %i.bk, -17
  %i.bn = or disjoint i16 %i.bm, %i.bl
  store i16 %i.bn, ptr %i.d, align 8
  br label %credential_set_capability.exit

bb.ab:                                            ; preds = %bb.z
  %i.bo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(20) @.str.15) #19
  %.not88 = icmp eq i32 %i.bo, 0
  br i1 %.not88, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.bp = tail call ptr @__errno_location() #20   ; 2 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !34
  %i.bq = call i64 @__isoc23_strtoumax(ptr noundef nonnull %i.w, ptr noundef null, i32 noundef 10) #18 ; 2 uses
  store i64 %i.bq, ptr %i.g, align 8, !tbaa !35
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !34
  %i.bt = icmp eq i32 %i.bs, 34
  br i1 %i.bt, label %bb.ae, label %credential_set_capability.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i64 -1, ptr %i.g, align 8, !tbaa !35
  br label %credential_set_capability.exit

bb.af:                                            ; preds = %bb.ab
  %i.bu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(20) @.str.16) #19
  %.not89 = icmp eq i32 %i.bu, 0
  br i1 %.not89, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !28
  call void @free(ptr noundef %i.bv) #18
  %i.bw = call ptr @xstrdup(ptr noundef nonnull %i.w) #18
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !28
  br label %credential_set_capability.exit

bb.ah:                                            ; preds = %bb.af
  %i.bx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(9) @.str.1) #19
  %.not90 = icmp eq i32 %i.bx, 0
  br i1 %.not90, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !29
  call void @free(ptr noundef %i.by) #18
  %i.bz = call ptr @xstrdup(ptr noundef nonnull %i.w) #18
  store ptr %i.bz, ptr %i.e, align 8, !tbaa !29
  br label %credential_set_capability.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ca = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(4) @.str.17) #19
  %.not91 = icmp eq i32 %i.ca, 0
  br i1 %.not91, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @credential_from_url(ptr noundef %0, ptr noundef nonnull %i.w)
  br label %credential_set_capability.exit

bb.al:                                            ; preds = %bb.aj
  %i.cb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(5) @.str.18) #19
  %.not92 = icmp eq i32 %i.cb, 0
  br i1 %.not92, label %bb.am, label %credential_set_capability.exit

bb.am:                                            ; preds = %bb.al
  %i.cc = call i32 @git_config_bool(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.w) #18
  %.not93 = icmp eq i32 %i.cc, 0
  %i.cd = load i16, ptr %i.d, align 8
  %i.ce = select i1 %.not93, i16 0, i16 32
  %i.cf = and i16 %i.cd, -33
  %i.cg = or disjoint i16 %i.cf, %i.ce
  store i16 %i.cg, ptr %i.d, align 8
  br label %credential_set_capability.exit

credential_set_capability.exit:                   ; preds = %bb.y, %bb.x, %switch.lookup106, %switch.lookup, %bb.e, %bb.i, %bb.m, %bb.q, %bb.u, %bb.aa, %bb.ag, %bb.ak, %bb.am, %bb.al, %bb.ai, %bb.ad, %bb.ae, %bb.s, %bb.o, %bb.k, %bb.g
  %i.ch = call i32 @strbuf_getline(ptr noundef nonnull %3, ptr noundef %1) #18
  %.not = icmp eq i32 %i.ch, -1
  br i1 %.not, label %credential_set_capability.exit.thread98, label %bb.b

credential_set_capability.exit.thread98:          ; preds = %bb.b, %credential_set_capability.exit, %bb.a, %credential_set_capability.exit.thread
  %.2 = phi i32 [ -1, %credential_set_capability.exit.thread ], [ 0, %bb.a ], [ 0, %credential_set_capability.exit ], [ 0, %bb.b ]
  call void @strbuf_release(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.2
}

declare i32 @strbuf_getline(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @warning(ptr noundef, ...) local_unnamed_addr #5

declare void @strbuf_release(ptr noundef) local_unnamed_addr #5

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

declare i32 @git_config_bool(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @strvec_push(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @__isoc23_strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @credential_from_url(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc range(i32 -1, 1) i32 @credential_from_url_1(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @_(ptr noundef nonnull @.str.26)
  tail call void (ptr, ...) @die(ptr noundef %i.c, ptr noundef %1) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @credential_write(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  switch i32 %2, label %credential_has_capability.exit.thread [
    i32 2, label %credential_has_capability.exit
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 3
  %.not.i = icmp eq i8 %i.c, 3
  br i1 %.not.i, label %credential_write_item.exit, label %credential_has_capability.exit.thread.thread.a

credential_has_capability.exit.thread.thread.a:   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.c

credential_has_capability.exit:                   ; preds = %bb.a
  %3 = load i8, ptr %i.a, align 4
  %.0.shrunk.i = and i8 %3, 1
  %.not.a = icmp eq i8 %.0.shrunk.i, 0
  br i1 %.not.a, label %credential_has_capability.exit.thread.thread, label %credential_write_item.exit

credential_has_capability.exit.thread.thread:     ; preds = %credential_has_capability.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %credential_has_capability.exit74

credential_write_item.exit:                       ; preds = %bb.b, %credential_has_capability.exit
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #18 ; 0 uses
  br label %credential_has_capability.exit.thread

credential_has_capability.exit.thread:            ; preds = %bb.a, %credential_write_item.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  switch i32 %2, label %credential_has_capability.exit84.thread [
    i32 2, label %credential_has_capability.exit74
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %credential_has_capability.exit.thread.thread.a, %credential_has_capability.exit.thread
  %i.g = phi ptr [ %i.d, %credential_has_capability.exit.thread.thread.a ], [ %i.f, %credential_has_capability.exit.thread ] ; 3 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 3
  %.not.i69 = icmp eq i8 %i.i, 3
  br i1 %.not.i69, label %bb.d, label %credential_has_capability.exit74.thread.thread

credential_has_capability.exit74:                 ; preds = %credential_has_capability.exit.thread, %credential_has_capability.exit.thread.thread
  %i.j = phi ptr [ %4, %credential_has_capability.exit.thread.thread ], [ %i.f, %credential_has_capability.exit.thread ] ; 3 uses
  %5 = load i8, ptr %i.j, align 4
  %.0.shrunk.i72 = and i8 %5, 1
  %.not63 = icmp eq i8 %.0.shrunk.i72, 0
  br i1 %.not63, label %credential_has_capability.exit84, label %credential_write_item.exit78

credential_write_item.exit78:                     ; preds = %credential_has_capability.exit74
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2) #18 ; 0 uses
  br label %credential_has_capability.exit84

bb.d:                                             ; preds = %bb.c
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2) #18 ; 0 uses
  br label %credential_has_capability.exit74.thread.thread

credential_has_capability.exit74.thread.thread:   ; preds = %bb.c, %bb.d
  %i.l = load i8, ptr %i.a, align 4
  %i.m = and i8 %i.l, 3
  %.not.i79 = icmp eq i8 %i.m, 3
  br i1 %.not.i79, label %bb.e, label %credential_has_capability.exit84.thread

credential_has_capability.exit84:                 ; preds = %credential_has_capability.exit74, %credential_write_item.exit78
  %7 = load i8, ptr %i.a, align 4
  %.0.shrunk.i82 = and i8 %7, 1
  %.not64 = icmp eq i8 %.0.shrunk.i82, 0
  br i1 %.not64, label %credential_has_capability.exit84.thread, label %bb.e

bb.e:                                             ; preds = %credential_has_capability.exit74.thread.thread, %credential_has_capability.exit84
  %8 = phi ptr [ %i.g, %credential_has_capability.exit74.thread.thread ], [ %i.j, %credential_has_capability.exit84 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %credential_write_item.exit88, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.o, i32 noundef 10) #19
  %.not12.i85 = icmp eq ptr %i.q, null
  br i1 %.not12.i85, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1) #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.s, 512
  %.not13.i86 = icmp eq i16 %i.t, 0
  br i1 %.not13.i86, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.o, i32 noundef 13) #19
  %.not14.i87 = icmp eq ptr %i.u, null
  br i1 %.not14.i87, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1) #21
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.o) #18 ; 0 uses
  br label %credential_write_item.exit88

credential_write_item.exit88:                     ; preds = %bb.e, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %credential_write_item.exit92, label %bb.l

bb.l:                                             ; preds = %credential_write_item.exit88
  %i.z = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.x, i32 noundef 10) #19
  %.not12.i89 = icmp eq ptr %i.z, null
  br i1 %.not12.i89, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6) #21
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = and i16 %i.ab, 512
  %.not13.i90 = icmp eq i16 %i.ac, 0
  br i1 %.not13.i90, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.x, i32 noundef 13) #19
  %.not14.i91 = icmp eq ptr %i.ad, null
  br i1 %.not14.i91, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.6) #21
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.x) #18 ; 0 uses
  br label %credential_write_item.exit92

credential_write_item.exit92:                     ; preds = %credential_write_item.exit88, %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = and i16 %i.ag, 4
  %.not65 = icmp eq i16 %i.ah, 0
  br i1 %.not65, label %credential_has_capability.exit84.thread, label %credential_write_item.exit96

credential_write_item.exit96:                     ; preds = %credential_write_item.exit92
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.19) #18 ; 0 uses
  br label %credential_has_capability.exit84.thread

credential_has_capability.exit84.thread:          ; preds = %credential_has_capability.exit74.thread.thread, %credential_has_capability.exit.thread, %credential_write_item.exit92, %credential_write_item.exit96, %credential_has_capability.exit84
  %i.aj = phi ptr [ %i.f, %credential_has_capability.exit.thread ], [ %i.j, %credential_has_capability.exit84 ], [ %8, %credential_write_item.exit92 ], [ %8, %credential_write_item.exit96 ], [ %i.g, %credential_has_capability.exit74.thread.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  tail call fastcc void @credential_write_item(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %i.al, i32 noundef 1)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  tail call fastcc void @credential_write_item(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %i.an, i32 noundef 1)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %credential_write_item.exit100, label %bb.r

bb.r:                                             ; preds = %credential_has_capability.exit84.thread
  %i.ar = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ap, i32 noundef 10) #19
  %.not12.i97 = icmp eq ptr %i.ar, null
  br i1 %.not12.i97, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.9) #21
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load i16, ptr %i.as, align 8
  %i.au = and i16 %i.at, 512
  %.not13.i98 = icmp eq i16 %i.au, 0
  br i1 %.not13.i98, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ap, i32 noundef 13) #19
  %.not14.i99 = icmp eq ptr %i.av, null
  br i1 %.not14.i99, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.9) #21
  unreachable

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.ap) #18 ; 0 uses
  br label %credential_write_item.exit100

credential_write_item.exit100:                    ; preds = %credential_has_capability.exit84.thread, %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %credential_write_item.exit104, label %bb.x

bb.x:                                             ; preds = %credential_write_item.exit100
  %i.ba = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ay, i32 noundef 10) #19
  %.not12.i101 = icmp eq ptr %i.ba, null
  br i1 %.not12.i101, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4) #21
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = and i16 %i.bc, 512
  %.not13.i102 = icmp eq i16 %i.bd, 0
  br i1 %.not13.i102, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ay, i32 noundef 13) #19
  %.not14.i103 = icmp eq ptr %i.be, null
  br i1 %.not14.i103, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4) #21
  unreachable

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.ay) #18 ; 0 uses
  br label %credential_write_item.exit104

credential_write_item.exit104:                    ; preds = %credential_write_item.exit100, %bb.ac
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %credential_write_item.exit108, label %bb.ad

bb.ad:                                            ; preds = %credential_write_item.exit104
  %i.bj = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bh, i32 noundef 10) #19
  %.not12.i105 = icmp eq ptr %i.bj, null
  br i1 %.not12.i105, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5) #21
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = and i16 %i.bl, 512
  %.not13.i106 = icmp eq i16 %i.bm, 0
  br i1 %.not13.i106, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bh, i32 noundef 13) #19
  %.not14.i107 = icmp eq ptr %i.bn, null
  br i1 %.not14.i107, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.5) #21
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.bh) #18 ; 0 uses
  br label %credential_write_item.exit108

credential_write_item.exit108:                    ; preds = %credential_write_item.exit104, %bb.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !28 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %credential_write_item.exit112, label %bb.aj

bb.aj:                                            ; preds = %credential_write_item.exit108
  %i.bs = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bq, i32 noundef 10) #19
  %.not12.i109 = icmp eq ptr %i.bs, null
  br i1 %.not12.i109, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.16) #21
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = and i16 %i.bu, 512
  %.not13.i110 = icmp eq i16 %i.bv, 0
  br i1 %.not13.i110, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bw = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bq, i32 noundef 13) #19
  %.not14.i111 = icmp eq ptr %i.bw, null
  br i1 %.not14.i111, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.16) #21
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.bx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.bq) #18 ; 0 uses
  br label %credential_write_item.exit112

credential_write_item.exit112:                    ; preds = %credential_write_item.exit108, %bb.ao
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !35 ; 2 uses
  %.not66 = icmp eq i64 %i.bz, -1
  br i1 %.not66, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %credential_write_item.exit112
  %i.ca = tail call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.20, i64 noundef %i.bz) #18 ; 5 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %credential_write_item.exit116, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cc = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ca, i32 noundef 10) #19
  %.not12.i113 = icmp eq ptr %i.cc, null
  br i1 %.not12.i113, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.15) #21
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ce = load i16, ptr %i.cd, align 8
  %i.cf = and i16 %i.ce, 512
  %.not13.i114 = icmp eq i16 %i.cf, 0
  br i1 %.not13.i114, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cg = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ca, i32 noundef 13) #19
  %.not14.i115 = icmp eq ptr %i.cg, null
  br i1 %.not14.i115, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.15) #21
  unreachable

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ca) #18 ; 0 uses
  br label %credential_write_item.exit116

credential_write_item.exit116:                    ; preds = %bb.ap, %bb.av
  tail call void @free(ptr noundef %i.ca) #18
  br label %bb.aw

bb.aw:                                            ; preds = %credential_write_item.exit116, %credential_write_item.exit112
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !46 ; 2 uses
  %.not151 = icmp eq i64 %i.cj, 0
  br i1 %.not151, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre153 = load ptr, ptr %i.ck, align 8, !tbaa !47
  br label %bb.ay

._crit_edge:                                      ; preds = %credential_write_item.exit126, %bb.aw
  switch i32 %2, label %credential_has_capability.exit122.thread [
    i32 2, label %credential_has_capability.exit122
    i32 3, label %bb.ax
  ]

bb.ax:                                            ; preds = %._crit_edge
  %i.cm = load i8, ptr %i.aj, align 4
  %i.cn = and i8 %i.cm, 3
  %.not.i117 = icmp eq i8 %i.cn, 3
  br i1 %.not.i117, label %bb.bf, label %credential_has_capability.exit122.thread

credential_has_capability.exit122:                ; preds = %._crit_edge
  %9 = load i8, ptr %i.aj, align 4
  %.0.shrunk.i120 = and i8 %9, 1
  %.not67 = icmp eq i8 %.0.shrunk.i120, 0
  br i1 %.not67, label %credential_has_capability.exit122.thread, label %bb.bf

bb.ay:                                            ; preds = %.lr.ph, %credential_write_item.exit126
  %i.co = phi i64 [ %i.cj, %.lr.ph ], [ %i.cy, %credential_write_item.exit126 ]
  %i.cp = phi ptr [ %.pre153, %.lr.ph ], [ %i.cz, %credential_write_item.exit126 ] ; 2 uses
  %.061147 = phi i64 [ 0, %.lr.ph ], [ %i.da, %credential_write_item.exit126 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.061147
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !36 ; 4 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %credential_write_item.exit126, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ct = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cr, i32 noundef 10) #19
  %.not12.i123 = icmp eq ptr %i.ct, null
  br i1 %.not12.i123, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.11) #21
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.cu = load i16, ptr %i.cl, align 8
  %i.cv = and i16 %i.cu, 512
  %.not13.i124 = icmp eq i16 %i.cv, 0
  br i1 %.not13.i124, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cw = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cr, i32 noundef 13) #19
  %.not14.i125 = icmp eq ptr %i.cw, null
  br i1 %.not14.i125, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.11) #21
  unreachable

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.cx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.cr) #18 ; 0 uses
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !47
  %.pre154 = load i64, ptr %i.ci, align 8, !tbaa !46
  br label %credential_write_item.exit126

credential_write_item.exit126:                    ; preds = %bb.ay, %bb.be
  %i.cy = phi i64 [ %i.co, %bb.ay ], [ %.pre154, %bb.be ] ; 2 uses
  %i.cz = phi ptr [ %i.cp, %bb.ay ], [ %.pre, %bb.be ]
  %i.da = add nuw i64 %.061147, 1                 ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cy
  br i1 %i.db, label %bb.ay, label %._crit_edge, !llvm.loop !44

bb.bf:                                            ; preds = %bb.ax, %credential_has_capability.exit122
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 8
  %i.de = and i16 %i.dd, 16
  %.not68 = icmp eq i16 %i.de, 0
  br i1 %.not68, label %bb.bg, label %credential_write_item.exit130

credential_write_item.exit130:                    ; preds = %bb.bf
  %i.df = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19) #18 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %credential_write_item.exit130, %bb.bf
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !48 ; 2 uses
  %.not152 = icmp eq i64 %i.dh, 0
  br i1 %.not152, label %credential_has_capability.exit122.thread, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.bg
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.pre156 = load ptr, ptr %i.di, align 8, !tbaa !49
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph150, %credential_write_item.exit134
  %i.dj = phi i64 [ %i.dh, %.lr.ph150 ], [ %i.dt, %credential_write_item.exit134 ]
  %i.dk = phi ptr [ %.pre156, %.lr.ph150 ], [ %i.du, %credential_write_item.exit134 ] ; 2 uses
  %.0148 = phi i64 [ 0, %.lr.ph150 ], [ %i.dv, %credential_write_item.exit134 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.0148
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !36 ; 4 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %credential_write_item.exit134, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.do = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.dm, i32 noundef 10) #19
  %.not12.i131 = icmp eq ptr %i.do, null
  br i1 %.not12.i131, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.12) #21
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.dp = load i16, ptr %i.dc, align 8
  %i.dq = and i16 %i.dp, 512
  %.not13.i132 = icmp eq i16 %i.dq, 0
  br i1 %.not13.i132, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dr = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.dm, i32 noundef 13) #19
  %.not14.i133 = icmp eq ptr %i.dr, null
  br i1 %.not14.i133, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.12) #21
  unreachable

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.dm) #18 ; 0 uses
  %.pre155 = load ptr, ptr %i.di, align 8, !tbaa !49
  %.pre157 = load i64, ptr %i.dg, align 8, !tbaa !48
  br label %credential_write_item.exit134

credential_write_item.exit134:                    ; preds = %bb.bh, %bb.bn
  %i.dt = phi i64 [ %i.dj, %bb.bh ], [ %.pre157, %bb.bn ] ; 2 uses
  %i.du = phi ptr [ %i.dk, %bb.bh ], [ %.pre155, %bb.bn ]
  %i.dv = add nuw i64 %.0148, 1                   ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.dt
  br i1 %i.dw, label %bb.bh, label %credential_has_capability.exit122.thread, !llvm.loop !45

credential_has_capability.exit122.thread:         ; preds = %credential_write_item.exit134, %bb.ax, %bb.bg, %._crit_edge, %credential_has_capability.exit122
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @credential_write_item(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %3, null                     ; 2 uses
  %i.b = icmp ne i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.28, i32 noundef 397, ptr noundef nonnull @.str.29, ptr noundef %2) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 10) #19
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.30, ptr noundef %2) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 512
  %.not13 = icmp eq i16 %i.f, 0
  br i1 %.not13, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 13) #19
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.31, ptr noundef %2) #21
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %2, ptr noundef nonnull %3) #18 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  ret void
}

declare ptr @xstrfmt(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @credential_fill(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.timeval, align 8            ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not30 = icmp eq ptr %i.g, null
  br i1 %.not30, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %.not31 = icmp eq ptr %i.i, null
  br i1 %.not31, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  tail call void @strvec_clear(ptr noundef nonnull %i.j) #18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -17
  store i16 %i.n, ptr %i.l, align 8
  tail call fastcc void @credential_apply_config(ptr noundef %0, ptr noundef nonnull %1)
  %.not32 = icmp eq i32 %2, 0
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = or i8 %i.p, 1
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = or i8 %i.s, 1
  store i8 %i.t, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38
  %.not46 = icmp eq i64 %i.v, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i64, ptr %i.u, align 8, !tbaa !38
  %i.z = icmp ugt i64 %i.y, %indvars.iv.next
  br i1 %i.z, label %bb.h, label %._crit_edge, !llvm.loop !50

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  tail call fastcc void @credential_do(ptr noundef nonnull %1, ptr noundef %i.ac, ptr noundef nonnull @.str.21)
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ae = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #18 ; 0 uses
  %i.af = load i64, ptr %3, align 8, !tbaa !43
end_hunk_0
