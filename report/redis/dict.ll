inline.NumInlined: 146
inline.NumDeleted: 25
begin_hunk_0_@dictFindByHashAndPtr:bb.a
  %i.e = sub i64 0, %i.d
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %i.j = phi i1 [ true, %.preheader ], [ false, %.backedge.backedge ] ; 2 uses
  %.033 = phi i64 [ 0, %.preheader ], [ 1, %.backedge.backedge ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.033
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19    ; 2 uses
  %i.m = sext i8 %i.l to i64
  %i.n = icmp eq i8 %i.l, -1
  %i.o = and i64 %i.m, 4294967295
  %notmask = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask, -1
  %i.q = and i64 %2, %i.p
  %i.r = select i1 %i.n, i64 0, i64 %i.q          ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  %i.s = load i64, ptr %i.h, align 8, !tbaa !20
  %i.t = icmp slt i64 %i.r, %i.s
  br i1 %i.t, label %.backedge.backedge, label %bb.c

.backedge.backedge:                               ; preds = %bb.b, %._crit_edge
  br label %.backedge, !llvm.loop !73

bb.c:                                             ; preds = %bb.b, %.backedge
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.033
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.r
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 2 uses
  %.not31 = icmp eq ptr %i.x, null
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %dictGetNext.exit
  %.02432 = phi ptr [ %i.ah, %dictGetNext.exit ], [ %i.x, %bb.c ] ; 5 uses
  %i.y = ptrtoint ptr %.02432 to i64              ; 4 uses
  %i.z = and i64 %i.y, 1
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.d, label %dictGetKey.exit

bb.d:                                             ; preds = %.lr.ph
  %i.aa = and i64 %i.y, 2
  %.not6.i = icmp eq i64 %i.aa, 0
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = and i64 %i.y, -8
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %dictGetKey.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02432, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  br label %dictGetKey.exit

dictGetKey.exit:                                  ; preds = %.lr.ph, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.ae, %bb.f ], [ %i.ac, %bb.e ], [ %.02432, %.lr.ph ]
  %i.af = icmp eq ptr %1, %.0.i
  br i1 %i.af, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %dictGetKey.exit
  %i.ag = and i64 %i.y, 3
  %.not.i27 = icmp eq i64 %i.ag, 0
  br i1 %.not.i27, label %dictGetNext.exit, label %._crit_edge

dictGetNext.exit:                                 ; preds = %bb.g
  %i.ah = load ptr, ptr %.02432, align 8, !tbaa !42 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.g, %dictGetNext.exit, %bb.c
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !20
  %.not26 = icmp ne i64 %i.ai, -1
  %or.cond = and i1 %.not26, %i.j
  br i1 %or.cond, label %.backedge.backedge, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %dictGetKey.exit, %bb.a
  %.023 = phi ptr [ %.02432, %dictGetKey.exit ], [ null, %bb.a ], [ null, %._crit_edge ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @dictFindLinkInternal(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.dictCmpCache, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = sub i64 0, %i.d
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !22
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = tail call i64 %i.h(ptr noundef %1) #21, !inline_history !48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !19    ; 2 uses
  %i.l = sext i8 %i.k to i64
  %i.m = icmp eq i8 %i.k, -1
  %i.n = and i64 %i.l, 4294967295
  %notmask = shl nsw i64 -1, %i.n
  %i.o = xor i64 %notmask, -1
  %i.p = and i64 %i.i, %i.o
  %i.q = select i1 %i.m, i64 0, i64 %i.p          ; 4 uses
  %.val63 = load ptr, ptr %0, align 8, !tbaa !22
  %i.r = getelementptr i8, ptr %.val63, i64 24
  %.val63.val = load ptr, ptr %i.r, align 8, !tbaa !64 ; 2 uses
  %.not.i = icmp eq ptr %.val63.val, null
  %dictDefaultCompare..i = select i1 %.not.i, ptr @dictDefaultCompare, ptr %.val63.val
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %.not.i64 = icmp eq i64 %i.t, -1
  br i1 %.not.i64, label %_dictRehashStepIfNeeded.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9
  %.not9.i = icmp eq i32 %i.v, 0
  br i1 %.not9.i, label %bb.f, label %_dictRehashStepIfNeeded.exit

bb.f:                                             ; preds = %bb.e
  %.not10.i = icmp slt i64 %i.q, %i.t
  br i1 %.not10.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.q
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  %.not11.i = icmp eq ptr %i.z, null
  br i1 %.not11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call i32 @_dictBucketRehash(ptr noundef nonnull %0, i64 noundef %i.q) ; 0 uses
  br label %_dictRehashStepIfNeeded.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ab = tail call i32 @dictRehash(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  br label %_dictRehashStepIfNeeded.exit

_dictRehashStepIfNeeded.exit:                     ; preds = %bb.d, %bb.e, %bb.h, %bb.i
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !20
  %.not58 = icmp ne i64 %i.ac, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %_dictRehashStepIfNeeded.exit, %.critedge
  %i.ae = phi i1 [ true, %_dictRehashStepIfNeeded.exit ], [ false, %.critedge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_dictRehashStepIfNeeded.exit ], [ 1, %.critedge ] ; 2 uses
  %.04777 = phi i64 [ %i.q, %_dictRehashStepIfNeeded.exit ], [ %.148, %.critedge ] ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.s, align 8, !tbaa !20
  %i.ag = icmp slt i64 %.04777, %i.af
  br i1 %i.ag, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !19  ; 2 uses
  %i.aj = sext i8 %i.ai to i64
  %i.ak = icmp eq i8 %i.ai, -1
  %i.al = and i64 %i.aj, 4294967295
  %notmask59 = shl nsw i64 -1, %i.al
  %i.am = xor i64 %notmask59, -1
  %i.an = and i64 %i.i, %i.am
  %i.ao = select i1 %i.ak, i64 0, i64 %i.an       ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ar, ptr %2, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not6074 = icmp eq ptr %i.aq, null
  br i1 %.not6074, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %select.unfold
  %.04575 = phi ptr [ %.fr, %select.unfold ], [ %i.ar, %bb.n ] ; 4 uses
  %i.as = load ptr, ptr %.04575, align 8, !tbaa !37 ; 4 uses
  %.not61 = icmp eq ptr %i.as, null
  br i1 %.not61, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.at = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.au = and i64 %i.at, 1
  %.not.i65 = icmp eq i64 %i.au, 0
  br i1 %.not.i65, label %bb.p, label %dictGetKey.exit

bb.p:                                             ; preds = %bb.o
  %i.av = and i64 %i.at, 2
  %.not6.i = icmp eq i64 %i.av, 0
  br i1 %.not6.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = and i64 %i.at, -8
  %i.ax = inttoptr i64 %i.aw to ptr
  br label %dictGetKey.exit

bb.r:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44
  br label %dictGetKey.exit

dictGetKey.exit:                                  ; preds = %bb.o, %bb.q, %bb.r
  %.0.i = phi ptr [ %i.az, %bb.r ], [ %i.ax, %bb.q ], [ %i.as, %bb.o ] ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !22
  %i.ba = getelementptr i8, ptr %.val, i64 104
  %.val.val = load ptr, ptr %i.ba, align 8, !tbaa !45 ; 2 uses
  %.not.i66 = icmp eq ptr %.val.val, null
  br i1 %.not.i66, label %dictStoredKey2Key.exit, label %bb.s

bb.s:                                             ; preds = %dictGetKey.exit
  %i.bb = call ptr %.val.val(ptr noundef %.0.i) #21, !inline_history !46
  br label %dictStoredKey2Key.exit

dictStoredKey2Key.exit:                           ; preds = %dictGetKey.exit, %bb.s
  %i.bc = phi ptr [ %i.bb, %bb.s ], [ %.0.i, %dictGetKey.exit ] ; 2 uses
  %i.bd = icmp eq ptr %1, %i.bc
  br i1 %i.bd, label %.thread, label %bb.t

bb.t:                                             ; preds = %dictStoredKey2Key.exit
  %i.be = call i32 %dictDefaultCompare..i(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %i.bc) #21
  %.not62 = icmp eq i32 %i.be, 0
  br i1 %.not62, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.t
  %i.bf = load ptr, ptr %.04575, align 8, !tbaa !37
  %.fr = freeze ptr %i.bf                         ; 3 uses
  %i.bg = ptrtoint ptr %.fr to i64
  %i.bh = and i64 %i.bg, 3
  %.not.i67 = icmp ne i64 %i.bh, 0
  %.not6088 = icmp eq ptr %.fr, null
  %.not60 = or i1 %.not.i67, %.not6088
  br i1 %.not60, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %select.unfold, %.lr.ph, %bb.n, %bb.k
  %.148 = phi i64 [ %.04777, %bb.k ], [ %i.ao, %bb.n ], [ %i.ao, %.lr.ph ], [ %i.ao, %select.unfold ]
  %i.bi = and i1 %.not58, %i.ae
  br i1 %i.bi, label %bb.j, label %.thread, !llvm.loop !75

.thread:                                          ; preds = %.critedge, %dictStoredKey2Key.exit, %bb.t, %bb.c
  %.5 = phi ptr [ null, %bb.c ], [ %.04575, %dictStoredKey2Key.exit ], [ %.04575, %bb.t ], [ null, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define dso_local void @dictSetKeyAtLink(ptr noundef %0, ptr noundef %1, ptr noundef captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq ptr %2, null                     ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr %i.e(ptr noundef nonnull %0, ptr noundef %1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]   ; 4 uses
  %.not34 = icmp eq i32 %3, 0
  br i1 %.not34, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %i.l = tail call i32 @dictExpandIfNeeded(ptr noundef nonnull %0) ; 0 uses
  %i.m = load i8, ptr %i.h, align 4, !tbaa !19
  %.not37 = icmp eq i8 %i.i, %i.m
  br i1 %.not37, label %bb.e, label %.cont47.thread

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.j, align 1, !tbaa !19
  %.not38 = icmp ne i8 %i.k, %i.n
  %brmerge = or i1 %i.b, %.not38
  br i1 %brmerge, label %.cont47.thread, label %.cont47

.cont47:                                          ; preds = %bb.e
  %.else.val50 = load ptr, ptr %2, align 8, !tbaa !16 ; 2 uses
  %i.o = icmp eq ptr %.else.val50, null
  br i1 %i.o, label %.cont47.thread, label %.cont51

.cont47.thread:                                   ; preds = %bb.e, %.cont47, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.val = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr i8, ptr %.val, i64 104
  %.val.val = load ptr, ptr %i.p, align 8, !tbaa !45 ; 2 uses
  %.not.i = icmp eq ptr %.val.val, null
  br i1 %.not.i, label %dictStoredKey2Key.exit, label %bb.f

bb.f:                                             ; preds = %.cont47.thread
  %i.q = tail call ptr %.val.val(ptr noundef %1) #21, !inline_history !46
  br label %dictStoredKey2Key.exit

dictStoredKey2Key.exit:                           ; preds = %.cont47.thread, %bb.f
  %i.r = phi ptr [ %i.q, %bb.f ], [ %1, %.cont47.thread ]
  %i.s = call fastcc ptr @dictFindLinkInternal(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.b, label %dictStoredKey2Key.exit.cont, label %dictStoredKey2Key.exit.else

dictStoredKey2Key.exit.else:                      ; preds = %dictStoredKey2Key.exit
  store ptr %i.s, ptr %2, align 8, !tbaa !16
  br label %dictStoredKey2Key.exit.cont

dictStoredKey2Key.exit.cont:                      ; preds = %dictStoredKey2Key.exit, %dictStoredKey2Key.exit.else
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %.not39 = icmp eq ptr %i.t, null
  br i1 %.not39, label %bb.g, label %bb.h, !prof !66

bb.g:                                             ; preds = %dictStoredKey2Key.exit.cont
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 892) #21
  call void @abort() #23
  unreachable

bb.h:                                             ; preds = %dictStoredKey2Key.exit.cont
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.j, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 893) #21
  call void @abort() #23
  unreachable

bb.j:                                             ; preds = %bb.h
  br i1 %i.b, label %.cont51.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.t, ptr %2, align 8, !tbaa !16
  br label %.cont51.sink.split

.cont51.sink.split:                               ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.cont51

.cont51:                                          ; preds = %.cont51.sink.split, %.cont47
  %i.v = phi ptr [ %.else.val50, %.cont47 ], [ %i.t, %.cont51.sink.split ]
  %i.w = call fastcc ptr @dictInsertKeyAtLink(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef nonnull %i.v) ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.c
  br i1 %i.b, label %.cont43.thread, label %.cont43

.cont43:                                          ; preds = %bb.l
  %.else.val46 = load ptr, ptr %2, align 8, !tbaa !16 ; 2 uses
  %i.x = icmp eq ptr %.else.val46, null
  br i1 %i.x, label %.cont43.thread.thread, label %.cont

.cont43.thread:                                   ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.ac = sub i64 0, %i.ab
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %dictFindLink.exit.cont.thread69, label %dictFindLink.exit.cont, !prof !66

.cont43.thread.thread:                            ; preds = %.cont43
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.ai = sub i64 0, %i.ah
  %i.aj = icmp eq i64 %i.af, %i.ai
  br i1 %i.aj, label %dictFindLink.exit.cont.thread69, label %dictFindLink.exit.cont.thread, !prof !66

dictFindLink.exit.cont:                           ; preds = %.cont43.thread
  %i.ak = tail call fastcc ptr @dictFindLinkInternal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) ; 2 uses
  %.not35 = icmp eq ptr %i.ak, null
  br i1 %.not35, label %dictFindLink.exit.cont.thread69, label %.cont, !prof !76

dictFindLink.exit.cont.thread:                    ; preds = %.cont43.thread.thread
  %i.al = tail call fastcc ptr @dictFindLinkInternal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) ; 3 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !16
  %.not3563 = icmp eq ptr %i.al, null
  br i1 %.not3563, label %dictFindLink.exit.cont.thread69, label %.cont, !prof !76

dictFindLink.exit.cont.thread69:                  ; preds = %.cont43.thread.thread, %.cont43.thread, %dictFindLink.exit.cont.thread, %dictFindLink.exit.cont
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 904) #21
  tail call void @abort() #23
  unreachable

.cont:                                            ; preds = %.cont43, %dictFindLink.exit.cont.thread, %dictFindLink.exit.cont
  %i.am = phi ptr [ %i.ak, %dictFindLink.exit.cont ], [ %i.al, %dictFindLink.exit.cont.thread ], [ %.else.val46, %.cont43 ] ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = and i64 %i.ao, 3
  %.not36 = icmp eq i64 %i.ap, 0
  br i1 %.not36, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.cont
  %.val40 = load ptr, ptr %0, align 8, !tbaa !22
  %i.aq = getelementptr i8, ptr %.val40, i64 96
  %.val40.val = load i8, ptr %i.aq, align 8
  %i.ar = and i8 %.val40.val, 2
  %.not.i41 = icmp eq i8 %i.ar, 0
  br i1 %.not.i41, label %bb.n, label %encodeEntryKey.exit

bb.n:                                             ; preds = %bb.m
  %i.as = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.at = and i64 %i.as, 7
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %encodeMaskedPtr.exit.i, label %bb.o, !prof !31

bb.o:                                             ; preds = %bb.n
  tail call void @_serverAssert(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 156) #21
  tail call void @abort() #23
  unreachable

encodeMaskedPtr.exit.i:                           ; preds = %bb.n
  %i.av = or disjoint i64 %i.as, 2
  %i.aw = inttoptr i64 %i.av to ptr
  br label %encodeEntryKey.exit

encodeEntryKey.exit:                              ; preds = %bb.m, %encodeMaskedPtr.exit.i
  %.0.i42 = phi ptr [ %i.aw, %encodeMaskedPtr.exit.i ], [ %i.g, %bb.m ]
  store ptr %.0.i42, ptr %i.am, align 8, !tbaa !37
  br label %bb.q

bb.p:                                             ; preds = %.cont
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.g, ptr %i.ax, align 8, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %encodeEntryKey.exit, %bb.p, %.cont51
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1_@dictExpandIfNeeded:bb.a

..thread_crit_edge:                               ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  %.pre32 = sext i8 %i.d to i64
  %.pre33 = and i64 %.pre32, 4294967295
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = sext i8 %i.d to i64
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  %.highbits = lshr i64 %i.k, %i.m
  %i.n = icmp eq i64 %.highbits, 0
  br i1 %i.n, label %.thread, label %.critedge

.thread:                                          ; preds = %..thread_crit_edge, %bb.e
  %.pre-phi34 = phi i64 [ %.pre33, %..thread_crit_edge ], [ %i.m, %bb.e ]
  %i.o = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = shl i64 4, %.pre-phi34
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %dictExpand.exit, label %.critedge

.critedge:                                        ; preds = %.thread, %bb.e
  %i.r = phi i64 [ %i.o, %.thread ], [ %i.k, %bb.e ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = add i64 %i.r, 1                          ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !77   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %dictTypeResizeAllowed.exit.thread, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.y = icmp ult i64 %i.t, 5
  br i1 %i.y, label %dictTypeResizeAllowed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ugt i64 %i.t, 9223372036854775806
  br i1 %i.z, label %dictTypeResizeAllowed.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.ab = sub nuw nsw i64 64, %i.aa
  br label %dictTypeResizeAllowed.exit

dictTypeResizeAllowed.exit:                       ; preds = %bb.f, %bb.g, %bb.h
  %.0.i9.i = phi i64 [ %i.ab, %bb.h ], [ 2, %bb.f ], [ 63, %bb.g ]
  %i.ac = shl i64 8, %.0.i9.i
  %i.ad = uitofp i64 %i.r to double
  %i.ae = sext i8 %i.d to i64
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = uitofp i64 %i.ag to double
  %i.ai = fdiv double %i.ad, %i.ah
  %i.aj = tail call i32 %i.w(i64 noundef %i.ac, double noundef %i.ai) #21, !inline_history !78
  %.not20 = icmp eq i32 %i.aj, 0
  br i1 %.not20, label %dictExpand.exit, label %dictTypeResizeAllowed.exit.dictTypeResizeAllowed.exit.thread_crit_edge

dictTypeResizeAllowed.exit.dictTypeResizeAllowed.exit.thread_crit_edge: ; preds = %dictTypeResizeAllowed.exit
  %.pre30 = load i64, ptr %i.s, align 8, !tbaa !20 ; 2 uses
  %.pre31 = load i64, ptr %i.a, align 8, !tbaa !20
  %.pre35 = add i64 %.pre30, 1
  %i.ak = icmp ne i64 %.pre31, -1
  br label %dictTypeResizeAllowed.exit.thread

dictTypeResizeAllowed.exit.thread:                ; preds = %dictTypeResizeAllowed.exit.dictTypeResizeAllowed.exit.thread_crit_edge, %.critedge
  %.pre-phi36 = phi i64 [ %.pre35, %dictTypeResizeAllowed.exit.dictTypeResizeAllowed.exit.thread_crit_edge ], [ %i.t, %.critedge ] ; 2 uses
  %.not.i.i23 = phi i1 [ %i.ak, %dictTypeResizeAllowed.exit.dictTypeResizeAllowed.exit.thread_crit_edge ], [ false, %.critedge ]
  %i.al = phi i64 [ %.pre30, %dictTypeResizeAllowed.exit.dictTypeResizeAllowed.exit.thread_crit_edge ], [ %i.r, %.critedge ]
  %i.am = icmp eq i64 %i.al, -1
  %or.cond = select i1 %.not.i.i23, i1 true, i1 %i.am
  br i1 %or.cond, label %dictExpand.exit, label %bb.i

bb.i:                                             ; preds = %dictTypeResizeAllowed.exit.thread
  %i.an = load i8, ptr %i.c, align 4, !tbaa !19   ; 2 uses
  %i.ao = icmp eq i8 %i.an, -1
  %i.ap = sext i8 %i.an to i64
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = select i1 %i.ao, i64 0, i64 %i.ar
  %.not11.i.i25 = icmp ult i64 %i.as, %.pre-phi36
  br i1 %.not11.i.i25, label %dictExpand.exit.sink.split, label %dictExpand.exit

dictExpand.exit.sink.split:                       ; preds = %bb.i, %bb.c
  %.pre-phi36.sink = phi i64 [ 4, %bb.c ], [ %.pre-phi36, %bb.i ]
  %i.at = tail call i32 @_dictResize(ptr noundef nonnull %0, i64 noundef %.pre-phi36.sink, ptr noundef null) ; 0 uses
  br label %dictExpand.exit

dictExpand.exit:                                  ; preds = %dictExpand.exit.sink.split, %bb.d, %bb.i, %dictTypeResizeAllowed.exit.thread, %bb.c, %.thread, %dictTypeResizeAllowed.exit, %bb.a
  %.0 = phi i32 [ 0, %dictTypeResizeAllowed.exit ], [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.i ], [ 1, %.thread ], [ 0, %bb.c ], [ 0, %dictTypeResizeAllowed.exit.thread ], [ 0, %dictExpand.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dictFetchValue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = sub i64 0, %i.d
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %dictFind.exit.thread, label %dictFindLink.exit.i, !prof !66

dictFindLink.exit.i:                              ; preds = %bb.a
  %i.g = tail call fastcc ptr @dictFindLinkInternal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %dictFind.exit.thread, label %dictFind.exit

dictFind.exit:                                    ; preds = %dictFindLink.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %dictFind.exit.thread, label %bb.b

bb.b:                                             ; preds = %dictFind.exit
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 7
  %.not.i4 = icmp eq i64 %i.j, 0
  br i1 %.not.i4, label %dictGetVal.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1037) #21
  tail call void @abort() #23
  unreachable

dictGetVal.exit:                                  ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  br label %dictFind.exit.thread

dictFind.exit.thread:                             ; preds = %bb.a, %dictFindLink.exit.i, %dictFind.exit, %dictGetVal.exit
  %i.m = phi ptr [ %i.l, %dictGetVal.exit ], [ null, %dictFind.exit ], [ null, %dictFindLink.exit.i ], [ null, %bb.a ]
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @dictTwoPhaseUnlinkFind(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.dictCmpCache, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = sub i64 0, %i.d
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !9
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @dictRehash(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !22
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = tail call i64 %i.n(ptr noundef %1) #21, !inline_history !48 ; 2 uses
  %.val53 = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr i8, ptr %.val53, i64 24
  %.val53.val = load ptr, ptr %i.p, align 8, !tbaa !64 ; 2 uses
  %.not.i = icmp eq ptr %.val53.val, null
  %dictDefaultCompare..i = select i1 %.not.i, ptr @dictDefaultCompare, ptr %.val53.val ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i8, ptr %i.q, align 4, !tbaa !19    ; 2 uses
  %i.s = sext i8 %i.r to i64
  %i.t = icmp eq i8 %i.r, -1
  %i.u = and i64 %i.s, 4294967295
  %notmask = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask, -1
  %i.w = and i64 %i.o, %i.v
  %i.x = select i1 %i.t, i64 0, i64 %i.w          ; 2 uses
  %i.y = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.z = icmp slt i64 %i.x, %i.y
  br i1 %i.z, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %.not4966 = icmp eq ptr %i.ab, null
  br i1 %.not4966, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.04067 = phi ptr [ %.fr, %select.unfold ], [ %i.ac, %.lr.ph.preheader ] ; 4 uses
  %i.ad = load ptr, ptr %.04067, align 8, !tbaa !37 ; 4 uses
  %.not50 = icmp eq ptr %i.ad, null
  br i1 %.not50, label %._crit_edgethread-pre-split, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.af = and i64 %i.ae, 1
  %.not.i54 = icmp eq i64 %i.af, 0
  br i1 %.not.i54, label %bb.h, label %dictGetKey.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = and i64 %i.ae, 2
  %.not6.i = icmp eq i64 %i.ag, 0
  br i1 %.not6.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = and i64 %i.ae, -8
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %dictGetKey.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44
  br label %dictGetKey.exit

dictGetKey.exit:                                  ; preds = %bb.g, %bb.i, %bb.j
  %.0.i = phi ptr [ %i.ak, %bb.j ], [ %i.ai, %bb.i ], [ %i.ad, %bb.g ] ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !22
  %i.al = getelementptr i8, ptr %.val, i64 104
  %.val.val = load ptr, ptr %i.al, align 8, !tbaa !45 ; 2 uses
  %.not.i55 = icmp eq ptr %.val.val, null
  br i1 %.not.i55, label %dictStoredKey2Key.exit, label %bb.k

bb.k:                                             ; preds = %dictGetKey.exit
  %i.am = call ptr %.val.val(ptr noundef %.0.i) #21, !inline_history !46
  br label %dictStoredKey2Key.exit

dictStoredKey2Key.exit:                           ; preds = %dictGetKey.exit, %bb.k
  %i.an = phi ptr [ %i.am, %bb.k ], [ %.0.i, %dictGetKey.exit ] ; 2 uses
  %i.ao = icmp eq ptr %1, %i.an
  br i1 %i.ao, label %.thread60, label %bb.l

bb.l:                                             ; preds = %dictStoredKey2Key.exit
  %i.ap = call i32 %dictDefaultCompare..i(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %i.an) #21
  %.not52 = icmp eq i32 %i.ap, 0
  br i1 %.not52, label %select.unfold, label %.thread60

.thread60:                                        ; preds = %bb.l, %dictStoredKey2Key.exit, %bb.s, %dictStoredKey2Key.exit.1
  %.04268.lcssa = phi i32 [ 1, %bb.s ], [ 1, %dictStoredKey2Key.exit.1 ], [ 0, %dictStoredKey2Key.exit ], [ 0, %bb.l ]
  %.04067.lcssa71 = phi ptr [ %.04067.1, %bb.s ], [ %.04067.1, %dictStoredKey2Key.exit.1 ], [ %.04067, %dictStoredKey2Key.exit ], [ %.04067, %bb.l ]
  store i32 %.04268.lcssa, ptr %2, align 4, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !9
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !9
  br label %.loopexit

select.unfold:                                    ; preds = %bb.l
  %i.at = load ptr, ptr %.04067, align 8, !tbaa !37
  %.fr = freeze ptr %i.at                         ; 3 uses
  %i.au = ptrtoint ptr %.fr to i64
  %i.av = and i64 %i.au, 3
  %.not.i56 = icmp ne i64 %i.av, 0
  %.not4988 = icmp eq ptr %.fr, null
  %.not49 = or i1 %.not.i56, %.not4988
  br i1 %.not49, label %._crit_edgethread-pre-split, label %.lr.ph

._crit_edgethread-pre-split:                      ; preds = %.lr.ph, %select.unfold
  %.pr = load i64, ptr %i.g, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edgethread-pre-split, %bb.f
  %i.aw = phi i64 [ %.pr, %._crit_edgethread-pre-split ], [ %i.y, %bb.f ]
  %.not51.not = icmp eq i64 %i.aw, -1
  br i1 %.not51.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.e, %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  %.not4966.1 = icmp eq ptr %i.ay, null
  br i1 %.not4966.1, label %.loopexit, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, -1
  %i.bc = sext i8 %i.ba to i64
  %i.bd = and i64 %i.bc, 4294967295
  %notmask.1 = shl nsw i64 -1, %i.bd
  %i.be = xor i64 %notmask.1, -1
  %i.bf = and i64 %i.o, %i.be
  %i.bg = select i1 %i.bb, i64 0, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bg
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %select.unfold.1, %.lr.ph.preheader.1
  %.04067.1 = phi ptr [ %.fr.1, %select.unfold.1 ], [ %i.bh, %.lr.ph.preheader.1 ] ; 4 uses
  %i.bi = load ptr, ptr %.04067.1, align 8, !tbaa !37 ; 4 uses
  %.not50.1 = icmp eq ptr %i.bi, null
  br i1 %.not50.1, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.1
  %i.bj = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bk = and i64 %i.bj, 1
  %.not.i54.1 = icmp eq i64 %i.bk, 0
  br i1 %.not.i54.1, label %bb.o, label %dictGetKey.exit.1

bb.o:                                             ; preds = %bb.n
  %i.bl = and i64 %i.bj, 2
  %.not6.i.1 = icmp eq i64 %i.bl, 0
  br i1 %.not6.i.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = and i64 %i.bj, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %dictGetKey.exit.1

bb.q:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !44
  br label %dictGetKey.exit.1

dictGetKey.exit.1:                                ; preds = %bb.q, %bb.p, %bb.n
  %.0.i.1 = phi ptr [ %i.bp, %bb.q ], [ %i.bn, %bb.p ], [ %i.bi, %bb.n ] ; 2 uses
  %.val.1 = load ptr, ptr %0, align 8, !tbaa !22
  %i.bq = getelementptr i8, ptr %.val.1, i64 104
  %.val.val.1 = load ptr, ptr %i.bq, align 8, !tbaa !45 ; 2 uses
  %.not.i55.1 = icmp eq ptr %.val.val.1, null
  br i1 %.not.i55.1, label %dictStoredKey2Key.exit.1, label %bb.r

bb.r:                                             ; preds = %dictGetKey.exit.1
  %i.br = call ptr %.val.val.1(ptr noundef %.0.i.1) #21, !inline_history !46
  br label %dictStoredKey2Key.exit.1

dictStoredKey2Key.exit.1:                         ; preds = %bb.r, %dictGetKey.exit.1
  %i.bs = phi ptr [ %i.br, %bb.r ], [ %.0.i.1, %dictGetKey.exit.1 ] ; 2 uses
  %i.bt = icmp eq ptr %1, %i.bs
  br i1 %i.bt, label %.thread60, label %bb.s

bb.s:                                             ; preds = %dictStoredKey2Key.exit.1
  %i.bu = call i32 %dictDefaultCompare..i(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %i.bs) #21
  %.not52.1 = icmp eq i32 %i.bu, 0
  br i1 %.not52.1, label %select.unfold.1, label %.thread60

select.unfold.1:                                  ; preds = %bb.s
  %i.bv = load ptr, ptr %.04067.1, align 8, !tbaa !37
  %.fr.1 = freeze ptr %i.bv                       ; 3 uses
  %i.bw = ptrtoint ptr %.fr.1 to i64
  %i.bx = and i64 %i.bw, 3
  %.not.i56.1 = icmp ne i64 %i.bx, 0
  %.not49.189 = icmp eq ptr %.fr.1, null
  %.not49.1 = or i1 %.not.i56.1, %.not49.189
  br i1 %.not49.1, label %.loopexit, label %.lr.ph.1

.loopexit:                                        ; preds = %select.unfold.1, %.lr.ph.1, %bb.m, %._crit_edge, %.thread60, %bb.a
  %.6 = phi ptr [ null, %bb.a ], [ %.04067.lcssa71, %.thread60 ], [ null, %bb.m ], [ null, %._crit_edge ], [ null, %.lr.ph.1 ], [ null, %select.unfold.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dictGetHash(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i64 %i.b(ptr noundef %1) #21
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @dictTwoPhaseUnlinkFree(ptr noundef %0, ptr noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !37     ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !20
  %i.i = ptrtoint ptr %i.b to i64                 ; 6 uses
  %i.j = and i64 %i.i, 3
  %.not.i = icmp eq i64 %i.j, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %dictGetNext.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %dictGetNext.exit

dictGetNext.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ]
  store ptr %.0.i, ptr %1, align 8, !tbaa !37
  %i.l = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %dictGetNext.exit
  %i.o = and i64 %i.i, 1
  %.not.i23 = icmp eq i64 %i.o, 0
  br i1 %.not.i23, label %bb.f, label %dictGetKey.exit

bb.f:                                             ; preds = %bb.e
  %i.p = and i64 %i.i, 2
  %.not6.i = icmp eq i64 %i.p, 0
  br i1 %.not6.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i64 %i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  br label %dictGetKey.exit

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  br label %dictGetKey.exit

dictGetKey.exit:                                  ; preds = %bb.e, %bb.g, %bb.h
  %.0.i24 = phi ptr [ %i.t, %bb.h ], [ %i.r, %bb.g ], [ %i.b, %bb.e ]
  tail call void %i.n(ptr noundef nonnull %0, ptr noundef %.0.i24) #21
  %.pre = load ptr, ptr %0, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %dictGetNext.exit, %dictGetKey.exit
  %i.u = phi ptr [ %i.l, %dictGetNext.exit ], [ %.pre, %dictGetKey.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67   ; 2 uses
  %.not21 = icmp eq ptr %i.w, null
  br i1 %.not21, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = and i64 %i.i, 7
  %.not.i25 = icmp eq i64 %i.x, 0
  br i1 %.not.i25, label %dictGetVal.exit, label %bb.k, !prof !31

bb.k:                                             ; preds = %bb.j
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1037) #21
  tail call void @abort() #23
  unreachable

dictGetVal.exit:                                  ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  tail call void %i.w(ptr noundef nonnull %0, ptr noundef %i.z) #21
  br label %bb.l

bb.l:                                             ; preds = %dictGetVal.exit, %bb.i
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = and i64 %i.i, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  tail call void @zfree(ptr noundef %i.ab) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !24
  %i.ae = icmp sgt i16 %i.ad, 0
  br i1 %i.ae, label %_dictShrinkIfNeeded.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = tail call i32 @dictShrinkIfNeeded(ptr noundef nonnull %0) ; 0 uses
  br label %_dictShrinkIfNeeded.exit

_dictShrinkIfNeeded.exit:                         ; preds = %bb.n, %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !9
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.b, %_dictShrinkIfNeeded.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dictSetKey(ptr noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 982) #21
  tail call void @abort() #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr %i.f(ptr noundef nonnull %0, ptr noundef %2) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %i.g, %bb.d ], [ %2, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sink, ptr %i.h, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dictSetSignedIntegerVal(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 995) #21
  tail call void @abort() #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dictSetUnsignedIntegerVal(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1000) #21
  tail call void @abort() #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !19
end_hunk_1
begin_hunk_2_@dictGetRandomKey:bb.a
  %.0.i54.3 = phi ptr [ %i.cm, %bb.n ], [ null, %dictGetNext.exit55.2 ] ; 2 uses
  %.not52.3 = icmp eq i32 %i.cj, 0
  br i1 %.not52.3, label %.loopexit, label %.lr.ph, !llvm.loop !95

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %dictGetNext.exit55.3, %.loopexit81, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.037, %.loopexit81 ], [ %.0.i54.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.0.i54.3, %dictGetNext.exit55.3 ]
  ret ptr %.0
}

declare i64 @genrand64_int64() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @random() local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local i32 @dictGetSomeKeys(ptr noundef %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = add i64 %i.d, %i.b
  %i.f = zext i32 %2 to i64
  %spec.select122 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 9 uses
  %i.g = mul nuw nsw i64 %spec.select122, 10
  %i.h = and i64 %i.g, 4294967294                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.not146 = icmp eq i64 %spec.select122, 0       ; 2 uses
  br i1 %.not146, label %._crit_edgethread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_dictRehashStep.exit
  %.093130 = phi i64 [ 0, %.lr.ph ], [ %i.o, %_dictRehashStep.exit ]
  %i.k = load i64, ptr %i.i, align 8, !tbaa !20
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 8, !tbaa !9
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_dictRehashStep.exit

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @dictRehash(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  br label %_dictRehashStep.exit

_dictRehashStep.exit:                             ; preds = %bb.c, %bb.d
  %i.o = add nuw nsw i64 %.093130, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %spec.select122
  br i1 %exitcond.not, label %._crit_edgethread-pre-split, label %bb.b, !llvm.loop !96

._crit_edgethread-pre-split:                      ; preds = %_dictRehashStep.exit, %bb.a
  %.pr = load i64, ptr %i.i, align 8, !tbaa !20
  %i.p = icmp ne i64 %.pr, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edgethread-pre-split
  %i.q = phi i1 [ %i.p, %._crit_edgethread-pre-split ], [ false, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !19    ; 2 uses
  %i.t = sext i8 %i.s to i64
  %i.u = icmp eq i8 %i.s, -1
  %i.v = and i64 %i.t, 4294967295
  %notmask = shl nsw i64 -1, %i.v
  %i.w = xor i64 %notmask, -1
  %i.x = select i1 %i.u, i64 0, i64 %i.w          ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19    ; 2 uses
  %i.aa = sext i8 %i.z to i64
  %.not123 = icmp eq i8 %i.z, -1
  %i.ab = and i64 %i.aa, 4294967295
  %notmask107 = shl nsw i64 -1, %i.ab
  %i.ac = xor i64 %notmask107, -1
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.ac)
  %spec.select121 = select i1 %.not123, i64 %i.x, i64 %i.ad
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.085 = phi i64 [ %i.x, %._crit_edge ], [ %spec.select121, %bb.e ] ; 2 uses
  %i.ae = tail call i64 @genrand64_int64() #21
  br i1 %.not146, label %.critedge, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.f
  %invariant.umax = tail call i64 @llvm.umax.i64(i64 %spec.select122, i64 4)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not109162 = icmp eq i64 %i.h, 0
  br i1 %.not109162, label %.critedge, label %.preheader124.preheader

bb.g:                                             ; preds = %bb.p
  %i.ah = add i64 %.5, 1
  %.not109 = icmp eq i64 %i.ai, 0
  br i1 %.not109, label %.critedge, label %.preheader124.preheader, !llvm.loop !97

.preheader124.preheader:                          ; preds = %.lr.ph143, %bb.g
  %.in = phi i64 [ %i.ai, %bb.g ], [ %i.h, %.lr.ph143 ]
  %.086138165 = phi i64 [ %.591, %bb.g ], [ 0, %.lr.ph143 ]
  %.pn140164 = phi i64 [ %i.ah, %bb.g ], [ %i.ae, %.lr.ph143 ]
  %.078141163 = phi i64 [ %.4, %bb.g ], [ 0, %.lr.ph143 ]
  %i.ai = add nsw i64 %.in, -1                    ; 2 uses
  %.079 = and i64 %.pn140164, %.085
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124.preheader, %.thread
  %.1137 = phi i64 [ %.4, %.thread ], [ %.078141163, %.preheader124.preheader ] ; 3 uses
  %.180136 = phi i64 [ %.5, %.thread ], [ %.079, %.preheader124.preheader ] ; 5 uses
  %.187135 = phi i64 [ %.591, %.thread ], [ %.086138165, %.preheader124.preheader ] ; 5 uses
  %or.cond = phi i1 [ false, %.thread ], [ %i.q, %.preheader124.preheader ] ; 2 uses
  %.194134 = phi i64 [ 1, %.thread ], [ 0, %.preheader124.preheader ] ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.preheader124
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %i.ak = icmp ult i64 %.180136, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load i8, ptr %i.af, align 1, !tbaa !19  ; 2 uses
  %i.am = icmp ne i8 %i.al, -1
  %i.an = sext i8 %i.al to i64
  %i.ao = and i64 %i.an, 4294967295
  %.180.highbits = lshr i64 %.180136, %i.ao
  %i.ap = icmp eq i64 %.180.highbits, 0
  %.not110 = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %.not110, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.preheader124
  %.281 = phi i64 [ %.180136, %.preheader124 ], [ %.180136, %bb.h ], [ %i.aj, %bb.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 %.194134
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19  ; 2 uses
  %i.as = icmp ne i8 %i.ar, -1
  %i.at = sext i8 %i.ar to i64
  %i.au = and i64 %i.at, 4294967295
  %.281.highbits = lshr i64 %.281, %i.au
  %i.av = icmp eq i64 %.281.highbits, 0
  %.not111 = select i1 %i.as, i1 %i.av, i1 false
  br i1 %.not111, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.194134
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.281
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.l, label %.preheader

bb.l:                                             ; preds = %bb.k
  %i.bb = add i64 %.1137, 1                       ; 2 uses
  %or.cond114 = icmp ugt i64 %i.bb, %invariant.umax
  br i1 %or.cond114, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call i64 @genrand64_int64() #21
  %i.bd = and i64 %i.bc, %.085
  br label %.thread

.preheader:                                       ; preds = %bb.k, %dictGetNext.exit
  %.077133 = phi ptr [ %i.bn, %dictGetNext.exit ], [ %i.az, %bb.k ] ; 3 uses
  %.288132 = phi i64 [ %i.bo, %dictGetNext.exit ], [ %.187135, %bb.k ] ; 5 uses
  %i.be = icmp ult i64 %.288132, %spec.select122
  br i1 %i.be, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %.preheader
  %i.bf = tail call i64 @genrand64_int64() #21
  %i.bg = add i64 %.288132, 1
  %i.bh = urem i64 %i.bf, %i.bg                   ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %spec.select122
  br i1 %i.bi, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.n, %.preheader
  %.sink158 = phi i64 [ %.288132, %.preheader ], [ %i.bh, %bb.n ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sink158
  store ptr %.077133, ptr %i.bj, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.n
  %i.bk = ptrtoint ptr %.077133 to i64
  %i.bl = and i64 %i.bk, 3
  %.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i, label %dictGetNext.exit, label %dictGetNext.exit.thread

dictGetNext.exit.thread:                          ; preds = %bb.o
  %i.bm = add i64 %.288132, 1
  br label %.loopexit

dictGetNext.exit:                                 ; preds = %bb.o
  %i.bn = load ptr, ptr %.077133, align 8, !tbaa !42 ; 2 uses
  %i.bo = add i64 %.288132, 1                     ; 2 uses
  %.not112 = icmp eq ptr %i.bn, null
  br i1 %.not112, label %.loopexit, label %.preheader, !llvm.loop !98

.loopexit:                                        ; preds = %dictGetNext.exit, %dictGetNext.exit.thread
  %i.bp = phi i64 [ %i.bm, %dictGetNext.exit.thread ], [ %i.bo, %dictGetNext.exit ] ; 3 uses
  %.not113 = icmp ult i64 %i.bp, %spec.select122
  %cond.fr = freeze i1 %.not113
  br i1 %cond.fr, label %.thread, label %.critedge

.thread:                                          ; preds = %.loopexit, %bb.m, %bb.l, %bb.j, %bb.i
  %.591 = phi i64 [ %.187135, %bb.j ], [ %.187135, %bb.i ], [ %.187135, %bb.m ], [ %.187135, %bb.l ], [ %i.bp, %.loopexit ] ; 5 uses
  %.5 = phi i64 [ %.281, %bb.j ], [ %.180136, %bb.i ], [ %i.bd, %bb.m ], [ %.281, %bb.l ], [ %.281, %.loopexit ] ; 2 uses
  %.4 = phi i64 [ %.1137, %bb.j ], [ %.1137, %bb.i ], [ 0, %bb.m ], [ %i.bb, %bb.l ], [ 0, %.loopexit ] ; 2 uses
  br i1 %or.cond, label %.preheader124, label %bb.p, !llvm.loop !99

bb.p:                                             ; preds = %.thread
  %i.bq = icmp ult i64 %.591, %spec.select122
  br i1 %i.bq, label %bb.g, label %..critedge.loopexit159_crit_edge166, !llvm.loop !97

..critedge.loopexit159_crit_edge166:              ; preds = %bb.p
  br label %.critedge, !llvm.loop !97

.critedge:                                        ; preds = %bb.g, %.loopexit, %.lr.ph143, %..critedge.loopexit159_crit_edge166, %bb.f
  %.6 = phi i64 [ %i.bp, %.loopexit ], [ 0, %bb.f ], [ %.591, %..critedge.loopexit159_crit_edge166 ], [ 0, %.lr.ph143 ], [ %.591, %bb.g ]
  %i.br = tail call i64 @llvm.umin.i64(i64 %.6, i64 %spec.select122)
  %i.bs = trunc nuw i64 %i.br to i32
  ret i32 %i.bs
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dictGetFairRandomKey(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [15 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call i32 @dictGetSomeKeys(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 15) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @dictGetRandomKey(ptr noundef %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @rand() #21
  %i.f = urem i32 %i.e, %i.b
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @dictScan(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @dictScanDefrag(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @dictScanDefrag(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = sub i64 0, %i.d
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !9
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %.not = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !19    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sext i8 %i.m to i64
  %i.o = icmp eq i8 %i.m, -1
  %i.p = and i64 %i.n, 4294967295
  %notmask = shl nsw i64 -1, %i.p
  %i.q = xor i64 %notmask, -1
  %i.r = select i1 %i.o, i64 0, i64 %i.q          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = and i64 %i.r, %1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  tail call void @dictScanDefragBucket(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.v)
  %i.w = xor i64 %i.r, -1
  %i.x = or i64 %1, %i.w
  %i.y = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.x)
  %i.z = add i64 %i.y, 1
  %i.aa = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.z)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ab = icmp ne i8 %i.m, -1
  %i.ac = sext i8 %i.m to i64
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, -1
  %i.ai = sext i8 %i.ag to i64
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ae
  %i.am = select i1 %i.ah, i1 true, i1 %i.al
  %i.an = select i1 %i.ab, i1 %i.am, i1 false     ; 2 uses
  %.070 = zext i1 %i.an to i64                    ; 2 uses
  %not. = xor i1 %i.an, true
  %.069 = zext i1 %not. to i64                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %.070
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19  ; 2 uses
  %i.aq = sext i8 %i.ap to i64
  %i.ar = icmp eq i8 %i.ap, -1
  %i.as = and i64 %i.aq, 4294967295
  %notmask77 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask77, -1
  %i.au = select i1 %i.ar, i64 0, i64 %i.at       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.069
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19  ; 2 uses
  %i.ax = sext i8 %i.aw to i64
  %i.ay = icmp eq i8 %i.aw, -1
  %i.az = and i64 %i.ax, 4294967295
  %notmask78 = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask78, -1
  %i.bb = select i1 %i.ay, i64 0, i64 %i.ba       ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.070
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bf = and i64 %i.au, %1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  tail call void @dictScanDefragBucket(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.069
  %i.bi = xor i64 %i.bb, -1
  %i.bj = xor i64 %i.bb, %i.au
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.071 = phi i64 [ %1, %bb.d ], [ %i.bq, %bb.e ] ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !16
  %i.bl = and i64 %.071, %i.bb
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  tail call void @dictScanDefragBucket(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.bm)
  %i.bn = or i64 %.071, %i.bi
  %i.bo = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.bn)
  %i.bp = add i64 %i.bo, 1
  %i.bq = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.bp) ; 3 uses
  %i.br = and i64 %i.bq, %i.bj
  %.not79 = icmp eq i64 %i.br, 0
  br i1 %.not79, label %.loopexit, label %bb.e, !llvm.loop !100

.loopexit:                                        ; preds = %bb.e, %bb.c
  %.1 = phi i64 [ %i.aa, %bb.c ], [ %i.bq, %bb.e ]
  %i.bs = load i32, ptr %i.g, align 8, !tbaa !9
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr %i.g, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  %.0 = phi i64 [ %.1, %.loopexit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @dictScanDefragBucket(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %dictDefragBucket.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !101    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %.not75.i = icmp eq ptr %4, null
  br i1 %.not75.i, label %dictDefragBucket.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.not53.i = icmp eq ptr %i.c, null
  %.not55.i = icmp eq ptr %i.e, null
  br label %bb.c

bb.c:                                             ; preds = %.thread.i, %.lr.ph.i
  %.076.i = phi ptr [ %4, %.lr.ph.i ], [ %.fr.i, %.thread.i ] ; 3 uses
  %i.f = load ptr, ptr %.076.i, align 8, !tbaa !37 ; 7 uses
  %.not52.i = icmp eq ptr %i.f, null
  br i1 %.not52.i, label %dictDefragBucket.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pre = ptrtoint ptr %i.f to i64                ; 6 uses
  br i1 %.not53.i, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = and i64 %.pre, 1
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.f, label %dictGetKey.exit.i

bb.f:                                             ; preds = %bb.e
  %i.h = and i64 %.pre, 2
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i64 %.pre, -8
  %i.j = inttoptr i64 %i.i to ptr
  br label %dictGetKey.exit.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  br label %dictGetKey.exit.i

dictGetKey.exit.i:                                ; preds = %bb.h, %bb.g, %bb.e
  %.0.i.i = phi ptr [ %i.l, %bb.h ], [ %i.j, %bb.g ], [ %i.f, %bb.e ]
  %i.m = tail call ptr %i.c(ptr noundef %.0.i.i) #21, !inline_history !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %dictGetKey.exit.i
  %i.n = phi ptr [ %i.m, %dictGetKey.exit.i ], [ null, %bb.d ] ; 7 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.q = load i8, ptr %i.p, align 8               ; 2 uses
  %i.r = and i8 %i.q, 1
  %.not54.i = icmp eq i8 %i.r, 0
  br i1 %.not54.i, label %bb.p, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.s = and i64 %.pre, 3
  %.not60.i = icmp eq i64 %i.s, 0
  br i1 %.not60.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not63.i = icmp eq ptr %i.n, null
  br i1 %.not63.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = and i8 %i.q, 2
  %.not.i67.i = icmp eq i8 %i.t, 0
  br i1 %.not.i67.i, label %bb.l, label %.thread.sink.split.i

bb.l:                                             ; preds = %bb.k
  %i.u = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %encodeMaskedPtr.exit.i.i, label %bb.m, !prof !31

bb.m:                                             ; preds = %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 156) #21
  tail call void @abort() #23
  unreachable

encodeMaskedPtr.exit.i.i:                         ; preds = %bb.l
  %i.x = or disjoint i64 %i.u, 2
  %i.y = inttoptr i64 %i.x to ptr
  br label %.thread.sink.split.i

bb.n:                                             ; preds = %bb.i
  %i.z = and i64 %.pre, -8
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = tail call ptr %i.a(ptr noundef %i.aa) #21, !inline_history !105 ; 4 uses
  %.not62.i = icmp eq ptr %i.n, null
  br i1 %.not62.i, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not61.i = icmp eq ptr %i.ab, null
  %spec.select65.i = select i1 %.not61.i, ptr %i.aa, ptr %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select65.i, i64 8
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !49
  br label %bb.y

bb.p:                                             ; preds = %._crit_edge
  %.pre77.i = and i64 %.pre, 7
  %i.ad = icmp eq i64 %.pre77.i, 0                ; 2 uses
  br i1 %.not55.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.ad, label %.thread85.i, label %bb.r, !prof !31

bb.r:                                             ; preds = %bb.q
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1037) #21
  tail call void @abort() #23
  unreachable

.thread85.i:                                      ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.ag = tail call ptr %i.e(ptr noundef %i.af) #21, !inline_history !105
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  br i1 %i.ad, label %bb.u, label %bb.t, !prof !106

bb.t:                                             ; preds = %bb.s
  tail call void @_serverAssert(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 1385) #21
  tail call void @abort() #23
  unreachable

bb.u:                                             ; preds = %bb.s, %.thread85.i
  %i.ah = phi ptr [ %i.ag, %.thread85.i ], [ null, %bb.s ] ; 2 uses
  %i.ai = tail call ptr %i.a(ptr noundef nonnull %i.f) #21, !inline_history !105 ; 4 uses
  %.not57.i = icmp eq ptr %i.ai, null
  %spec.select66.i = select i1 %.not57.i, ptr %i.f, ptr %i.ai ; 2 uses
  %.not58.i = icmp eq ptr %i.n, null
  br i1 %.not58.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select66.i, i64 8
  store ptr %i.n, ptr %i.aj, align 8, !tbaa !44
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not59.i = icmp eq ptr %i.ah, null
  br i1 %.not59.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select66.i, i64 16
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.o, %bb.n
  %.1.i = phi ptr [ %i.ai, %bb.x ], [ %i.ai, %bb.w ], [ %i.ab, %bb.n ], [ %i.ab, %bb.o ] ; 2 uses
  %.not64.i = icmp eq ptr %.1.i, null
  br i1 %.not64.i, label %.thread.i, label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.y, %encodeMaskedPtr.exit.i.i, %bb.k
  %.0.i68.sink.i = phi ptr [ %i.n, %bb.k ], [ %i.y, %encodeMaskedPtr.exit.i.i ], [ %.1.i, %bb.y ]
  store ptr %.0.i68.sink.i, ptr %.076.i, align 8, !tbaa !37
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.sink.split.i, %bb.y, %bb.j
  %i.al = load ptr, ptr %.076.i, align 8, !tbaa !37
  %.fr.i = freeze ptr %i.al                       ; 3 uses
  %i.am = ptrtoint ptr %.fr.i to i64
  %i.an = and i64 %i.am, 3
  %.not.i70.i = icmp ne i64 %i.an, 0
  %.not87.i = icmp eq ptr %.fr.i, null
  %.not.i = or i1 %.not87.i, %.not.i70.i
  br i1 %.not.i, label %dictDefragBucket.exit, label %bb.c

dictDefragBucket.exit:                            ; preds = %.thread.i, %bb.c, %bb.b, %bb.a
  %i.ao = load ptr, ptr %4, align 8, !tbaa !37    ; 4 uses
  %.not2027 = icmp eq ptr %i.ao, null
  br i1 %.not2027, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %dictDefragBucket.exit
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, 3
  %.not.i2244 = icmp eq i64 %i.aq, 0
  br i1 %.not.i2244, label %dictGetNext.exit, label %dictGetNext.exit.thread

dictGetNext.exit.thread:                          ; preds = %.lr.ph, %.lr.ph.preheader
  %.029.lcssa = phi ptr [ %4, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ]
  %.01728.lcssa = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.ar, %.lr.ph ]
  tail call void %1(ptr noundef %3, ptr noundef nonnull %.01728.lcssa, ptr noundef %.029.lcssa) #21
  br label %.loopexit

dictGetNext.exit:                                 ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172846 = phi ptr [ %i.ar, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ] ; 4 uses
  %.02945 = phi ptr [ %spec.select, %.lr.ph ], [ %4, %.lr.ph.preheader ] ; 3 uses
  %i.ar = load ptr, ptr %.0172846, align 8, !tbaa !42 ; 4 uses
  tail call void %1(ptr noundef %3, ptr noundef nonnull %.0172846, ptr noundef %.02945) #21
  %.not21 = icmp eq ptr %i.ar, null
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %dictGetNext.exit
  %i.as = load ptr, ptr %.02945, align 8, !tbaa !37
  %i.at = icmp eq ptr %i.as, %.0172846
  %spec.select = select i1 %i.at, ptr %.0172846, ptr %.02945 ; 2 uses
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = and i64 %i.au, 3
  %.not.i22 = icmp eq i64 %i.av, 0
  br i1 %.not.i22, label %dictGetNext.exit, label %dictGetNext.exit.thread

.loopexit:                                        ; preds = %dictGetNext.exit, %dictDefragBucket.exit, %dictGetNext.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dictShrinkIfNeeded(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.b, label %dictShrink.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !19    ; 2 uses
  %i.e = icmp eq i8 %i.d, -1
  %i.f = sext i8 %i.d to i64
  %i.g = and i64 %i.f, 4294967295                 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 3
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %dictShrink.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @dict_can_resize, align 4, !tbaa !9
  switch i32 %i.j, label %..thread_crit_edge [
    i32 0, label %bb.d
    i32 2, label %dictShrink.exit
  ]

..thread_crit_edge:                               ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  %.pre26 = shl nuw i64 1, %i.g
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  %i.m = shl i64 %i.l, 3
  %i.n = shl nuw i64 1, %i.g                      ; 2 uses
  %.not16 = icmp ugt i64 %i.m, %i.n
  br i1 %.not16, label %.thread, label %bb.e

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre26, %..thread_crit_edge ], [ %i.n, %bb.d ]
  %i.o = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.l, %bb.d ] ; 2 uses
  %i.p = shl i64 %i.o, 5
  %.not18 = icmp ugt i64 %i.p, %.pre-phi
  br i1 %.not18, label %dictShrink.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.q = phi i64 [ %i.o, %.thread ], [ %i.l, %bb.d ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %0, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %dictTypeResizeAllowed.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ult i64 %i.q, 5
  br i1 %i.w, label %dictTypeResizeAllowed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ugt i64 %i.q, 9223372036854775806
  br i1 %i.x, label %dictTypeResizeAllowed.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i64 %i.q, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = sub nuw nsw i64 64, %i.z
  br label %dictTypeResizeAllowed.exit

dictTypeResizeAllowed.exit:                       ; preds = %bb.f, %bb.g, %bb.h
  %.0.i9.i = phi i64 [ %i.aa, %bb.h ], [ 2, %bb.f ], [ 63, %bb.g ]
  %i.ab = shl i64 8, %.0.i9.i
  %i.ac = uitofp i64 %i.q to double
  %i.ad = shl nuw i64 1, %i.g
  %i.ae = uitofp i64 %i.ad to double
  %i.af = fdiv double %i.ac, %i.ae
  %i.ag = tail call i32 %i.u(i64 noundef %i.ab, double noundef %i.af) #21, !inline_history !78
  %.not19 = icmp eq i32 %i.ag, 0
  br i1 %.not19, label %dictShrink.exit, label %dictTypeResizeAllowed.exit.thread

dictTypeResizeAllowed.exit.thread:                ; preds = %dictTypeResizeAllowed.exit
  %.pre24 = load i64, ptr %i.r, align 8, !tbaa !20
  %.pre25 = load i64, ptr %i.a, align 8, !tbaa !20
  %i.ah = icmp eq i64 %.pre25, -1
  br i1 %i.ah, label %dictTypeResizeAllowed.exit.thread.thread, label %dictShrink.exit

dictTypeResizeAllowed.exit.thread.thread:         ; preds = %bb.e, %dictTypeResizeAllowed.exit.thread
  %i.ai = phi i64 [ %.pre24, %dictTypeResizeAllowed.exit.thread ], [ %i.q, %bb.e ] ; 2 uses
  %i.aj = load i8, ptr %i.c, align 4, !tbaa !19   ; 2 uses
  %i.ak = icmp ne i8 %i.aj, -1
  %i.al = sext i8 %i.aj to i64
  %i.am = and i64 %i.al, 4294967295
  %.highbits.i = lshr i64 %i.ai, %i.am
  %i.an = icmp eq i64 %.highbits.i, 0
  %.not10.i = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %.not10.i, label %bb.i, label %dictShrink.exit

bb.i:                                             ; preds = %dictTypeResizeAllowed.exit.thread.thread
  %i.ao = tail call i32 @_dictResize(ptr noundef nonnull %0, i64 noundef %i.ai, ptr noundef null) ; 0 uses
  br label %dictShrink.exit

dictShrink.exit:                                  ; preds = %bb.c, %bb.i, %dictTypeResizeAllowed.exit.thread.thread, %dictTypeResizeAllowed.exit.thread, %.thread, %dictTypeResizeAllowed.exit, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %dictTypeResizeAllowed.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %.thread ], [ 0, %dictTypeResizeAllowed.exit.thread ], [ 0, %dictTypeResizeAllowed.exit.thread.thread ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @dictEmpty(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %.not = icmp eq i64 %i.b, -1
  %.pre27 = load ptr, ptr %0, align 8, !tbaa !22  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.pre27, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull %0) #21
  %.pre = load ptr, ptr %0, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.c ], [ %.pre27, %bb.b ], [ %.pre27, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i8, ptr %i.h, align 4, !tbaa !19    ; 2 uses
  %i.j = icmp eq i8 %i.i, -1
  %i.k = sext i8 %i.i to i64
  %i.l = and i64 %i.k, 4294967295
  %.neg = shl nsw i64 -1, %i.l
  %.neg23 = select i1 %i.j, i64 0, i64 %.neg
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19    ; 2 uses
  %i.o = icmp eq i8 %i.n, -1
  %i.p = sext i8 %i.n to i64
  %i.q = and i64 %i.p, 4294967295
  %.neg24 = shl nsw i64 -1, %i.q
  %.neg25 = select i1 %i.o, i64 0, i64 %.neg24
  %.neg26 = add i64 %.neg25, %.neg23
  tail call void %i.g(ptr noundef nonnull %0, i64 noundef %.neg26) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = tail call i32 @_dictClear(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1) ; 0 uses
  %i.s = tail call i32 @_dictClear(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %1) ; 0 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.t, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 54
end_hunk_2
