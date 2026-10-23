Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/acl?download=true
inline.NumInlined: 130
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ACLStringSetUser:bb.a
._crit_edge:                                      ; preds = %bb.j, %ACLCopyUser.exit
  br i1 %i.c, label %.thread, label %.critedge

.thread:                                          ; preds = %._crit_edge
  call void @ACLKillPubsubClientsIfNeeded(ptr noundef nonnull %i.m, ptr noundef nonnull %0)
  br label %bb.af

.critedge:                                        ; preds = %._crit_edge
  %i.be = getelementptr i8, ptr %1, i64 -1
  %.val.i47 = load i8, ptr %i.be, align 1, !tbaa !33 ; 2 uses
  %i.bf = and i8 %.val.i47, 7
  switch i8 %i.bf, label %bb.ad [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.ac
  ]

bb.y:                                             ; preds = %.critedge
  %i.bg = lshr i8 %.val.i47, 3
  %i.bh = zext nneg i8 %i.bg to i64
  br label %bb.ad

bb.z:                                             ; preds = %.critedge
  %i.bi = getelementptr inbounds i8, ptr %1, i64 -3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !33
  %i.bk = zext i8 %i.bj to i64
  br label %bb.ad

bb.aa:                                            ; preds = %.critedge
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -5
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !39
  %i.bn = zext i16 %i.bm to i64
  br label %bb.ad

bb.ab:                                            ; preds = %.critedge
  %i.bo = getelementptr inbounds i8, ptr %1, i64 -9
  %i.bp = load i32, ptr %i.bo, align 1, !tbaa !22
  %i.bq = zext i32 %i.bp to i64
  br label %bb.ad

bb.ac:                                            ; preds = %.critedge
  %i.br = getelementptr inbounds i8, ptr %1, i64 -17
  %i.bs = load i64, ptr %i.br, align 1, !tbaa !24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %.critedge
  %.0.i48 = phi i64 [ %i.bs, %bb.ac ], [ %i.bh, %bb.y ], [ %i.bk, %bb.z ], [ %i.bn, %bb.aa ], [ %i.bq, %bb.ab ], [ 0, %.critedge ]
  %i.bt = call ptr @ACLCreateUser(ptr noundef nonnull %1, i64 noundef %.0.i48) ; 2 uses
  %.not45 = icmp eq ptr %i.bt, null
  br i1 %.not45, label %bb.ae, label %bb.af, !prof !227

bb.ae:                                            ; preds = %bb.ad
  call void @_serverAssert(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.22, i32 noundef 2152) #25
  call void @abort() #27
  unreachable

bb.af:                                            ; preds = %.thread, %bb.ad
  %.04060 = phi ptr [ %0, %.thread ], [ %i.bt, %bb.ad ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.04060, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !99
  call void @listRelease(ptr noundef %i.bv) #25
  %i.bw = getelementptr inbounds nuw i8, ptr %.04060, i64 24 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !91
  call void @listRelease(ptr noundef %i.bx) #25
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !99
  %i.ca = call ptr @listDup(ptr noundef %i.bz) #25
  store ptr %i.ca, ptr %i.bu, align 8, !tbaa !99
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !91
  %i.cd = call ptr @listDup(ptr noundef %i.cc) #25
  store ptr %i.cd, ptr %i.bw, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cf = load atomic i32, ptr %i.ce seq_cst, align 8, !tbaa !114
  %i.cg = getelementptr inbounds nuw i8, ptr %.04060, i64 8
  store atomic i32 %i.cf, ptr %i.cg seq_cst, align 8, !tbaa !114
  %i.ch = getelementptr inbounds nuw i8, ptr %.04060, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !100 ; 2 uses
  %.not.i50 = icmp eq ptr %i.ci, null
  br i1 %.not.i50, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @decrRefCount(ptr noundef nonnull %i.ci) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !100 ; 3 uses
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !100
  %.not15.i51 = icmp eq ptr %i.ck, null
  br i1 %.not15.i51, label %ACLCopyUser.exit52, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @incrRefCount(ptr noundef nonnull %i.ck) #25
  br label %ACLCopyUser.exit52

ACLCopyUser.exit52:                               ; preds = %bb.ai, %bb.ah, %bb.x
  %.03956 = phi ptr [ %i.bd, %bb.x ], [ null, %bb.ah ], [ null, %bb.ai ]
  %i.cl = load ptr, ptr %i.m, align 8, !tbaa !98
  call void @sdsfree(ptr noundef %i.cl) #25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !100 ; 2 uses
  %.not.i53 = icmp eq ptr %i.cn, null
  br i1 %.not.i53, label %ACLFreeUser.exit, label %bb.aj

bb.aj:                                            ; preds = %ACLCopyUser.exit52
  call void @decrRefCount(ptr noundef nonnull %i.cn) #25
  store ptr null, ptr %i.cm, align 8, !tbaa !100
  br label %ACLFreeUser.exit

ACLFreeUser.exit:                                 ; preds = %ACLCopyUser.exit52, %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !99
  call void @listRelease(ptr noundef %i.cp) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !91
  call void @listRelease(ptr noundef %i.cr) #25
  call void @zfree(ptr noundef nonnull %i.m) #25
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !22  ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %ACLFreeUser.exit
  %wide.trip.count71 = zext nneg i32 %i.cs to i64
  br label %.lr.ph64

._crit_edge65:                                    ; preds = %.lr.ph64, %ACLFreeUser.exit
  call void @zfree(ptr noundef nonnull %i.f) #25
  br label %bb.ak

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %.lr.ph64
  %indvars.iv68 = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next69, %.lr.ph64 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv68
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !40
  call void @sdsfree(ptr noundef %i.cv) #25
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count71
  br i1 %exitcond72.not, label %._crit_edge65, label %.lr.ph64, !llvm.loop !226

bb.ak:                                            ; preds = %._crit_edge65, %bb.d
  %.1 = phi ptr [ %.03956, %._crit_edge65 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @ACLAppendUserForLoading(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp slt i32 %1, 2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !40
  %i.d = tail call i32 @strcasecmp(ptr noundef %i.c, ptr noundef nonnull @.str.95) #29
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not61 = icmp eq ptr %2, null
  br i1 %.not61, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !22
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @UsersToLoad, align 8, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = tail call ptr @listSearchKey(ptr noundef %i.e, ptr noundef %i.g) #25
  %.not55 = icmp eq ptr %i.h, null
  br i1 %.not55, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %2, align 4, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = tail call ptr @__errno_location() #28
  store i32 114, ptr %i.i, align 4, !tbaa !22
  br label %bb.v

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = add nsw i32 %1, -2
  %i.l = call ptr @ACLMergeSelectorArguments(ptr noundef nonnull %i.j, i32 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef %2) ; 6 uses
  %.not56 = icmp eq ptr %i.l, null
  br i1 %.not56, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = tail call ptr @ACLCreateUnlinkedUser()   ; 7 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !22   ; 7 uses
  %.not5964 = icmp sgt i32 %i.n, 0                ; 3 uses
  br i1 %.not5964, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 6 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.val.i = load i8, ptr %i.q, align 1, !tbaa !33 ; 2 uses
  %i.r = and i8 %.val.i, 7
  switch i8 %i.r, label %sdslen.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %.lr.ph
  %i.s = lshr i8 %.val.i, 3
  %i.t = zext nneg i8 %i.s to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33
  %i.w = zext i8 %i.v to i64
  br label %sdslen.exit

bb.m:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds i8, ptr %i.p, i64 -5
  %i.y = load i16, ptr %i.x, align 1, !tbaa !39
  %i.z = zext i16 %i.y to i64
  br label %sdslen.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds i8, ptr %i.p, i64 -9
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !22
  %i.ac = zext i32 %i.ab to i64
  br label %sdslen.exit

bb.o:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds i8, ptr %i.p, i64 -17
  %i.ae = load i64, ptr %i.ad, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %.lr.ph, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.ae, %bb.o ], [ %i.t, %bb.k ], [ %i.w, %bb.l ], [ %i.z, %bb.m ], [ %i.ac, %bb.n ], [ 0, %.lr.ph ]
  %i.af = tail call i32 @ACLSetUser(ptr noundef nonnull %i.m, ptr noundef nonnull %i.p, i64 noundef %.0.i)
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.p, label %bb.s

bb.p:                                             ; preds = %sdslen.exit
  %i.ah = tail call ptr @__errno_location() #28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
  %.not57 = icmp eq i32 %i.ai, 2
  br i1 %.not57, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @ACLFreeUser(ptr noundef nonnull %i.m)
  %.not58 = icmp eq ptr %2, null
  br i1 %.not58, label %.lr.ph73.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aj, ptr %2, align 4, !tbaa !22
  br label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %bb.q, %bb.r
  %wide.trip.count80 = zext nneg i32 %i.n to i64
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.lr.ph73
  %indvars.iv77 = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvars.iv.next78, %.lr.ph73 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv77
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40
  tail call void @sdsfree(ptr noundef %i.al) #25
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %.sink.split, label %.lr.ph73, !llvm.loop !228

bb.s:                                             ; preds = %sdslen.exit, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !229

.critedge:                                        ; preds = %bb.s, %bb.j
  %i.am = add nsw i32 %i.n, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = tail call noalias ptr @zmalloc(i64 noundef %i.ao) #26 ; 4 uses
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.ar = tail call ptr @sdsdup(ptr noundef %i.aq) #25
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !40
  br i1 %.not5964, label %.lr.ph67.preheader, label %._crit_edge

.lr.ph67.preheader:                               ; preds = %.critedge
  %wide.trip.count85 = zext nneg i32 %i.n to i64
  br label %.lr.ph67

._crit_edge:                                      ; preds = %.lr.ph67, %.critedge
  %i.as = sext i32 %i.n to i64
  %i.at = getelementptr [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store ptr null, ptr %i.au, align 8, !tbaa !40
  %i.av = load ptr, ptr @UsersToLoad, align 8, !tbaa !136
  %i.aw = tail call ptr @listAddNodeTail(ptr noundef %i.av, ptr noundef nonnull %i.ap) #25 ; 0 uses
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !98
  tail call void @sdsfree(ptr noundef %i.ax) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %ACLFreeUser.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  tail call void @decrRefCount(ptr noundef nonnull %i.az) #25
  store ptr null, ptr %i.ay, align 8, !tbaa !100
  br label %ACLFreeUser.exit

ACLFreeUser.exit:                                 ; preds = %._crit_edge, %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !99
  tail call void @listRelease(ptr noundef %i.bb) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !91
  tail call void @listRelease(ptr noundef %i.bd) #25
  tail call void @zfree(ptr noundef nonnull %i.m) #25
  br i1 %.not5964, label %.lr.ph69.preheader, label %.sink.split

.lr.ph69.preheader:                               ; preds = %ACLFreeUser.exit
  %wide.trip.count90 = zext nneg i32 %i.n to i64
  br label %.lr.ph69

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %indvars.iv82 = phi i64 [ 0, %.lr.ph67.preheader ], [ %indvars.iv.next83, %.lr.ph67 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv82
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bg = tail call ptr @sdsdup(ptr noundef %i.bf) #25
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next83
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !40
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge, label %.lr.ph67, !llvm.loop !230

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.lr.ph69
  %indvars.iv87 = phi i64 [ 0, %.lr.ph69.preheader ], [ %indvars.iv.next88, %.lr.ph69 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv87
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40
  tail call void @sdsfree(ptr noundef %i.bj) #25
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %.sink.split, label %.lr.ph69, !llvm.loop !231

.sink.split:                                      ; preds = %.lr.ph73, %.lr.ph69, %ACLFreeUser.exit
  %.2.ph = phi i32 [ 0, %.lr.ph69 ], [ 0, %ACLFreeUser.exit ], [ -1, %.lr.ph73 ]
  tail call void @zfree(ptr noundef nonnull %i.l) #25
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.i
  %.2 = phi i32 [ -1, %bb.i ], [ %.2.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %bb.d, %bb.u, %bb.h
  %.3 = phi i32 [ %.2, %bb.u ], [ -1, %bb.h ], [ -1, %bb.d ], [ -1, %bb.c ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @ACLLoadConfiguredUsers() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.b = load ptr, ptr @UsersToLoad, align 8, !tbaa !136
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %0) #25
  %i.c = call ptr @listNext(ptr noundef nonnull %0) #25 ; 2 uses
  %.not65 = icmp eq ptr %i.c, null
  br i1 %.not65, label %.critedge41, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a, %bb.ai
  %i.d = phi ptr [ %i.cs, %bb.ai ], [ %i.c, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96   ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 12 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !33 ; 3 uses
  %i.i = and i8 %.val.i, 7                        ; 2 uses
  switch i8 %i.i, label %sdslen.exit46 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %.lr.ph66
  %i.j = lshr i8 %.val.i, 3
  %i.k = zext nneg i8 %i.j to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %.lr.ph66
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !33
  %i.n = zext i8 %i.m to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %.lr.ph66
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.p = load i16, ptr %i.o, align 1, !tbaa !39
  %i.q = zext i16 %i.p to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %.lr.ph66
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -9
  %i.s = load i32, ptr %i.r, align 1, !tbaa !22
  %i.t = zext i32 %i.s to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %.lr.ph66
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -17
  %i.v = load i64, ptr %i.u, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.v, %bb.f ], [ %i.k, %bb.b ], [ %i.n, %bb.c ], [ %i.q, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.not14.i = icmp eq i64 %.0.i, 0
  br i1 %.not14.i, label %sdslen.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sdslen.exit
  %i.w = tail call ptr @__ctype_b_loc() #28
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.y = add nuw i64 %.0811.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %.0.i
  br i1 %exitcond.not.i, label %sdslen.exit.thread, label %bb.h, !llvm.loop !3

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.0811.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0811.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !33   ; 2 uses
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !39
  %i.ae = and i16 %i.ad, 8192
  %.not.i = icmp ne i16 %i.ae, 0
  %i.af = icmp eq i8 %i.aa, 0
  %or.cond.i = or i1 %i.af, %.not.i
  br i1 %or.cond.i, label %ACLStringHasSpaces.exit, label %bb.g

ACLStringHasSpaces.exit:                          ; preds = %bb.h
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !130
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %.critedge41, label %bb.i

bb.i:                                             ; preds = %ACLStringHasSpaces.exit
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.96) #25
  br label %.critedge41

sdslen.exit.thread:                               ; preds = %bb.g, %sdslen.exit
  switch i8 %i.i, label %sdslen.exit46 [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.j:                                             ; preds = %sdslen.exit.thread
  %i.ai = lshr i8 %.val.i, 3
  %i.aj = zext nneg i8 %i.ai to i64
  br label %sdslen.exit46

bb.k:                                             ; preds = %sdslen.exit.thread
  %i.ak = getelementptr inbounds i8, ptr %i.g, i64 -3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !33
  %i.am = zext i8 %i.al to i64
end_hunk_0
