Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/nsh_fscmds?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@cp_handler:bb.a
  %.049 = phi i32 [ 577, %bb.c ], [ 577, %bb.d ], [ 1, %bb.g ], [ 577, %bb.e ]
  %i.r = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %.051, i32 noundef %.049, i32 noundef 438) #17 ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %.preheader62

.preheader62:                                     ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.u = tail call i64 @read(i32 noundef %i.a, ptr noundef nonnull %i.t, i64 noundef 1024) #17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit63, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @__errno() #17
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = tail call i32 (ptr, ptr, ...) %i.x(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34, i32 noundef %i.z) #17 ; 0 uses
  br label %bb.q

.loopexit:                                        ; preds = %bb.m
  %i.ab = tail call i64 @read(i32 noundef %i.a, ptr noundef nonnull %i.t, i64 noundef 1024) #17 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit63, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.preheader62, %.loopexit
  %i.ad = phi i64 [ %i.ab, %.loopexit ], [ %i.u, %.preheader62 ] ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %.preheader

bb.j:                                             ; preds = %.lr.ph
  %i.af = tail call ptr @__errno() #17
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call i32 (ptr, ptr, ...) %i.aj(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtsignalrecvd, ptr noundef nonnull @.str.29) #17 ; 0 uses
  br label %.loopexit63

bb.l:                                             ; preds = %bb.j
  %i.al = tail call ptr @__errno() #17
  %i.am = load i32, ptr %i.al, align 4
  %i.an = tail call i32 (ptr, ptr, ...) %i.aj(ptr noundef nonnull %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.20, i32 noundef %i.am) #17 ; 0 uses
  br label %.loopexit63

.preheader:                                       ; preds = %.lr.ph, %bb.m
  %.046 = phi i64 [ %i.aq, %bb.m ], [ %i.ad, %.lr.ph ] ; 2 uses
  %.0 = phi ptr [ %i.ar, %bb.m ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.ao = tail call i64 @write(i32 noundef %i.r, ptr noundef %.0, i64 noundef %.046) #17 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader
  %i.aq = sub nsw i64 %.046, %i.ao                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ao
  %i.as = icmp sgt i64 %i.aq, 0
  br i1 %i.as, label %.preheader, label %.loopexit, !llvm.loop !11

bb.n:                                             ; preds = %.preheader
  %i.at = tail call ptr @__errno() #17
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp eq i32 %i.au, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call i32 (ptr, ptr, ...) %i.ax(ptr noundef %0, ptr noundef nonnull @g_fmtsignalrecvd, ptr noundef nonnull @.str.29) #17 ; 0 uses
  br label %.loopexit63

bb.p:                                             ; preds = %bb.n
  %i.az = tail call ptr @__errno() #17
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call i32 (ptr, ptr, ...) %i.ax(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.35, i32 noundef %i.ba) #17 ; 0 uses
  br label %.loopexit63

.loopexit63:                                      ; preds = %.loopexit, %.preheader62, %bb.k, %bb.o, %bb.l, %bb.p
  %.1.ph = phi i32 [ -1, %bb.p ], [ -1, %bb.l ], [ -1, %bb.o ], [ -1, %bb.k ], [ 0, %.preheader62 ], [ 0, %.loopexit ]
  %i.bc = tail call i32 @close(i32 noundef %i.r) #17 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %.loopexit63, %bb.i
  %.2 = phi i32 [ -1, %bb.i ], [ %.1.ph, %.loopexit63 ]
  tail call void @free(ptr noundef %.050) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %.3 = phi i32 [ %.2, %bb.q ], [ -1, %bb.f ]
  %i.bd = tail call i32 @close(i32 noundef %i.a) #17 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.b
  %.052 = phi i32 [ -1, %bb.b ], [ %.3, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.052
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @cmd_ls(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.053.ph = phi i32 [ 0, %bb.a ], [ %.053.ph.be, %.outer.backedge ] ; 7 uses
  %.052.ph = phi i1 [ false, %bb.a ], [ %.052, %.outer.backedge ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.g
  %.052 = phi i1 [ true, %bb.g ], [ %.052.ph, %.outer ] ; 2 uses
  %i.b = tail call i32 @getopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.6) #17
  switch i32 %i.b, label %bb.g [
    i32 -1, label %bb.h
    i32 108, label %bb.c
    i32 82, label %bb.d
    i32 115, label %bb.e
    i32 104, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = or i32 %.053.ph, 11
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.053.ph.be = phi i32 [ %i.f, %bb.f ], [ %i.e, %bb.e ], [ %i.d, %bb.d ], [ %i.c, %bb.c ]
  br label %.outer, !llvm.loop !12

bb.d:                                             ; preds = %bb.b
  %i.d = or i32 %.053.ph, 4
  br label %.outer.backedge

bb.e:                                             ; preds = %bb.b
  %i.e = or i32 %.053.ph, 1
  br label %.outer.backedge

bb.f:                                             ; preds = %bb.b
  %i.f = or i32 %.053.ph, 16
  br label %.outer.backedge

bb.g:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %2, align 8
  %i.i = tail call i32 (ptr, ptr, ...) %i.g(ptr noundef %0, ptr noundef nonnull @g_fmtarginvalid, ptr noundef %i.h) #17 ; 0 uses
  br label %bb.b, !llvm.loop !12

bb.h:                                             ; preds = %bb.b
  br i1 %.052, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = tail call ptr @getoptindp() #17
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add nsw i32 %i.k, 1
  %i.m = icmp slt i32 %i.l, %1
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = load ptr, ptr %2, align 8
  %i.p = tail call i32 (ptr, ptr, ...) %i.n(ptr noundef %0, ptr noundef nonnull @g_fmttoomanyargs, ptr noundef %i.o) #17 ; 0 uses
  br label %bb.y

bb.k:                                             ; preds = %bb.i
  %i.q = tail call ptr @getoptindp() #17
  %i.r = load i32, ptr %i.q, align 4
  %.not62 = icmp slt i32 %i.r, %1
  br i1 %.not62, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @nsh_getcwd(ptr noundef %0) #17
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.t = tail call ptr @getoptindp() #17
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.055 = phi ptr [ %i.s, %bb.l ], [ %i.x, %bb.m ]
  %i.y = tail call ptr @nsh_getfullpath(ptr noundef %0, ptr noundef %.055) #17 ; 9 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = load ptr, ptr %2, align 8
  %i.ac = tail call i32 (ptr, ptr, ...) %i.aa(ptr noundef %0, ptr noundef nonnull @g_fmtcmdoutofmemory, ptr noundef %i.ab) #17 ; 0 uses
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  %i.ad = tail call i64 @strlen(ptr noundef nonnull %i.y) #18
  %i.ae = trunc i64 %i.ad to i32
  %.05164 = add i32 %i.ae, -1                     ; 2 uses
  %i.af = icmp sgt i32 %.05164, 0
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.05165 = phi i32 [ %.051, %bb.q ], [ %.05164, %bb.p ] ; 3 uses
  %4 = zext nneg i32 %.05165 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 47
  br i1 %i.ai, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.ag, align 1
  %.051 = add nsw i32 %.05165, -1
  %i.aj = icmp sgt i32 %.05165, 1
  br i1 %i.aj, label %.lr.ph, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %.lr.ph, %bb.q, %bb.p
  %i.ak = call i32 @stat(ptr noundef nonnull %i.y, ptr noundef nonnull %3) #18
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = load ptr, ptr %2, align 8
  %i.ao = tail call ptr @__errno() #17
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 (ptr, ptr, ...) %i.am(ptr noundef %0, ptr noundef nonnull @g_fmtcmdfailed, ptr noundef %i.an, ptr noundef nonnull @.str.7, i32 noundef %i.ap) #17 ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, 61440
  %i.au = icmp eq i32 %i.at, 16384
  br i1 %i.au, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = zext nneg i32 %.053.ph to i64
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = tail call i32 @ls_handler(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef null, ptr noundef %i.aw) #18
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i32 (ptr, ptr, ...) %i.az(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.y) #17 ; 0 uses
  %i.bb = zext nneg i32 %.053.ph to i64
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = tail call i32 @nsh_foreach_direntry(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.y, ptr noundef nonnull @ls_handler, ptr noundef %i.bc) #17 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bf = and i32 %.053.ph, 4
  %.not63 = icmp eq i32 %i.bf, 0
  br i1 %.not63, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = tail call i32 @nsh_foreach_direntry(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.y, ptr noundef nonnull @ls_recursive, ptr noundef %i.bc) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.v, %bb.u, %bb.r
  %.0 = phi i32 [ -1, %bb.r ], [ %i.bg, %bb.w ], [ 0, %bb.v ], [ %i.bd, %bb.u ], [ %i.ax, %bb.t ]
  tail call void @nsh_freefullpath(ptr noundef nonnull %i.y) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.h, %bb.x, %bb.o, %bb.j
  %.056 = phi i32 [ %.0, %bb.x ], [ -1, %bb.j ], [ -1, %bb.o ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.056
}

; Function Attrs: noredzone optsize
declare dso_local ptr @nsh_getcwd(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: noredzone nounwind optsize uwtable
define internal range(i32 -1, 1) i32 @ls_handler(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 9 uses
  %i.a = alloca [11 x i8], align 1                ; 14 uses
  %5 = alloca %struct.tm, align 8                 ; 4 uses
  %i.b = alloca [20 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = ptrtoint ptr %3 to i64
  %i.e = trunc i64 %i.d to i32                    ; 4 uses
  %i.f = and i32 %i.e, 11
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i64 88, i1 false)
  %.not59 = icmp eq ptr %2, null
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.h = tail call ptr @nsh_getdirpath(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.g) #17 ; 2 uses
  %i.i = call i32 @stat(ptr noundef %i.h, ptr noundef nonnull %4) #18
  tail call void @free(ptr noundef %i.h) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = call i32 @stat(ptr noundef %1, ptr noundef nonnull %4) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.054 = phi i32 [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  %.not60 = icmp eq i32 %.054, 0
  br i1 %.not60, label %bb.f, label %bb.ak

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %i.e, 2
  %i.l = icmp ne i32 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.ae

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @__const.ls_handler.details, i64 11, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i32, ptr %i.m, align 8              ; 14 uses
  %i.o = lshr i32 %i.n, 12
  %i.p = and i32 %i.o, 15
  switch i32 %i.p, label %bb.k [
    i32 6, label %.sink.split
    i32 2, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 8, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  br label %.sink.split

bb.k:                                             ; preds = %bb.g
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i, %bb.k, %bb.j, %bb.h
  %.sink = phi i8 [ 99, %bb.h ], [ 109, %bb.j ], [ 63, %bb.k ], [ 100, %bb.i ], [ 98, %bb.g ]
  store i8 %.sink, ptr %i.a, align 1
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.g
  %i.q = and i32 %i.n, 256
  %.not61 = icmp eq i32 %i.q, 0
  br i1 %.not61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 114, ptr %i.r, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.s = and i32 %i.n, 128
  %.not62 = icmp eq i32 %i.s, 0
  br i1 %.not62, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 119, ptr %i.t, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.u = and i32 %i.n, 2112
  %or.cond79.not = icmp eq i32 %i.u, 2112
  br i1 %or.cond79.not, label %.sink.split88, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = and i32 %i.n, 2048
  %.not64.not = icmp eq i32 %i.v, 0
  %i.w = and i32 %i.n, 2112
  %brmerge.not = icmp eq i32 %i.w, 0
  %.mux = select i1 %.not64.not, i8 120, i8 83
  br i1 %brmerge.not, label %bb.r, label %.sink.split88

.sink.split88:                                    ; preds = %bb.q, %bb.p
  %.sink89 = phi i8 [ 115, %bb.p ], [ %.mux, %bb.q ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %.sink89, ptr %i.x, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.sink.split88
  %i.y = and i32 %i.n, 32
  %.not67 = icmp eq i32 %i.y, 0
  br i1 %.not67, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 114, ptr %i.z, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aa = and i32 %i.n, 16
  %.not68 = icmp eq i32 %i.aa, 0
  br i1 %.not68, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 119, ptr %i.ab, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ac = and i32 %i.n, 1032
  %or.cond80.not = icmp eq i32 %i.ac, 1032
  br i1 %or.cond80.not, label %.sink.split91, label %bb.w
end_hunk_0
