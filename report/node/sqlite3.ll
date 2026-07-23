inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@walIndexAppend:bb.a
walIndexPage.exit.thread.i:                       ; preds = %walIndexPage.exit.i, %bb.b
  %.0.i17.i = phi i32 [ %i.o, %walIndexPage.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %.pr.i, %walIndexPage.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16384 ; 3 uses
  %i.r = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = shl i32 %i.e, 12
  %i.u = add i32 %i.t, -34
  %.idx = select i1 %i.r, i64 136, i64 0          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 2 uses
  %i.w = select i1 %i.r, i32 0, i32 %i.u          ; 2 uses
  store i32 %i.w, ptr %i.s, align 8, !tbaa !2188
  %i.x = icmp eq i32 %.0.i17.i, 0
  br i1 %i.x, label %bb.c, label %bb.q

walHashGet.exit.thread:                           ; preds = %walIndexPage.exit.i
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.o, i32 1)
  br label %bb.q

bb.c:                                             ; preds = %walIndexPage.exit.thread.i
  %i.y = sub i32 %1, %i.w                         ; 5 uses
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = sub nuw nsw i64 32768, %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, i8 0, i64 %i.aa, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr [4 x i8], ptr %i.v, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 2 uses
  %i.ae = load volatile i32, ptr %i.ad, align 4, !tbaa !5
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !2182 ; 3 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %walCleanupHash.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = add i32 %i.ag, 4096
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 17592186040353
  %i.al = lshr i64 %i.ak, 12                      ; 2 uses
  %i.am = trunc i64 %i.al to i32                  ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.g, align 8, !tbaa !2185
  %.not.i.i.i = icmp sgt i32 %i.ao, %i.am
  br i1 %.not.i.i.i, label %bb.h, label %walIndexPage.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1978
  %sext15.i = shl i64 %i.al, 32
  %i.ar = ashr exact i64 %sext15.i, 29
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !348 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %walIndexPage.exit.i.i, label %walIndexPage.exit.thread.i.i.thread

walIndexPage.exit.thread.i.i.thread:              ; preds = %bb.h
  %i.av = icmp eq i32 %i.am, 0                    ; 2 uses
  %.idx.i29 = select i1 %i.av, i64 136, i64 0
  br label %bb.i

walIndexPage.exit.i.i:                            ; preds = %bb.h, %bb.g
  %i.aw = call fastcc i32 @walIndexPageRealloc(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef nonnull %i.an)
  %.pr.i.i = load ptr, ptr %i.an, align 8, !tbaa !2186 ; 2 uses
  %.not.i.i24 = icmp ne ptr %.pr.i.i, null
  %.not.i25 = icmp eq i32 %i.aw, 0
  %or.cond = select i1 %.not.i.i24, i1 %.not.i25, i1 false
  br i1 %or.cond, label %walIndexPage.exit.thread.i.i._crit_edge, label %walCleanupHash.exit

walIndexPage.exit.thread.i.i._crit_edge:          ; preds = %walIndexPage.exit.i.i
  %i.ax = icmp eq i32 %i.am, 0                    ; 2 uses
  %.idx.i = select i1 %i.ax, i64 136, i64 0
  %.pre = load i32, ptr %i.af, align 8, !tbaa !2182
  br label %bb.i

bb.i:                                             ; preds = %walIndexPage.exit.thread.i.i._crit_edge, %walIndexPage.exit.thread.i.i.thread
  %i.ay = phi i32 [ %i.ag, %walIndexPage.exit.thread.i.i.thread ], [ %.pre, %walIndexPage.exit.thread.i.i._crit_edge ]
  %.idx.i31 = phi i64 [ %.idx.i29, %walIndexPage.exit.thread.i.i.thread ], [ %.idx.i, %walIndexPage.exit.thread.i.i._crit_edge ]
  %i.az = phi i1 [ %i.av, %walIndexPage.exit.thread.i.i.thread ], [ %i.ax, %walIndexPage.exit.thread.i.i._crit_edge ]
  %i.ba = phi ptr [ %i.at, %walIndexPage.exit.thread.i.i.thread ], [ %.pr.i.i, %walIndexPage.exit.thread.i.i._crit_edge ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16384 ; 2 uses
  %i.bc = shl i32 %i.am, 12
  %i.bd = add i32 %i.bc, -34
  %i.be = select i1 %i.az, i32 0, i32 %i.bd
  %i.bf = sub i32 %i.ay, %i.be                    ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.i
  %indvars.iv.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.1, %bb.n ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i ; 2 uses
  %i.bh = load volatile i16, ptr %i.bg, align 2, !tbaa !330
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp slt i32 %i.bf, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store volatile i16 0, ptr %i.bg, align 2, !tbaa !330
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2 ; 2 uses
  %i.bm = load volatile i16, ptr %i.bl, align 2, !tbaa !330
  %i.bn = zext i16 %i.bm to i32
  %i.bo = icmp slt i32 %i.bf, %i.bn
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store volatile i16 0, ptr %i.bl, align 2, !tbaa !330
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 8192
  br i1 %exitcond.not.i.1, label %bb.o, label %bb.j, !llvm.loop !2202

bb.o:                                             ; preds = %bb.n
  %i.bp = sext i32 %i.bf to i64
  %.idx20.i = shl nsw i64 %i.bp, 2
  %i.bq = add nsw i64 %.idx20.i, %.idx.i31        ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.ba, i64 %i.bq
  %i.bs = shl i64 %i.bq, 32
  %sext.i = sub i64 70368744177664, %i.bs
  %i.bt = ashr exact i64 %sext.i, 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.br, i8 0, i64 %i.bt, i1 false)
  br label %walCleanupHash.exit

walCleanupHash.exit:                              ; preds = %bb.f, %walIndexPage.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %bb.p

bb.p:                                             ; preds = %walCleanupHash.exit, %bb.e
  %i.bu = mul i32 %2, 383
  %.02136 = and i32 %i.bu, 8191                   ; 2 uses
  %i.bv = zext nneg i32 %.02136 to i64            ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.bv
  %i.bx = load volatile i16, ptr %i.bw, align 2, !tbaa !330
  %.not2337 = icmp eq i16 %i.bx, 0
  br i1 %.not2337, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.by = icmp eq i32 %i.y, 0
  br i1 %i.by, label %.lr.ph._crit_edge, label %.lr.ph47

.lr.ph:                                           ; preds = %.lr.ph47
  %i.bz = add nsw i32 %.0223846, -1               ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph._crit_edge, label %.lr.ph47, !llvm.loop !2261

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0223846 = phi i32 [ %i.bz, %.lr.ph ], [ %i.y, %.lr.ph.preheader ]
  %.0213945 = phi i32 [ %.021, %.lr.ph ], [ %.02136, %.lr.ph.preheader ]
  %i.cb = add nuw nsw i32 %.0213945, 1
  %.021 = and i32 %i.cb, 8191                     ; 2 uses
  %i.cc = zext nneg i32 %.021 to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cc
  %i.ce = load volatile i16, ptr %i.cd, align 2, !tbaa !330
  %.not23 = icmp eq i16 %i.ce, 0
  br i1 %.not23, label %.thread, label %.lr.ph, !llvm.loop !2261

.thread:                                          ; preds = %.lr.ph47, %bb.p
  %.lcssa35 = phi i64 [ %i.bv, %bb.p ], [ %i.cc, %.lr.ph47 ]
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.lcssa35
  store volatile i32 %2, ptr %i.ad, align 4, !tbaa !5
  %i.cg = trunc i32 %i.y to i16
  store atomic volatile i16 %i.cg, ptr %i.cf monotonic, align 2
  br label %bb.q

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 68235, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %bb.q

bb.q:                                             ; preds = %walIndexPage.exit.thread.i, %walHashGet.exit.thread, %.thread, %.lr.ph._crit_edge
  %.1 = phi i32 [ 11, %.lr.ph._crit_edge ], [ %spec.store.select.i, %walHashGet.exit.thread ], [ 0, %.thread ], [ %.0.i17.i, %walIndexPage.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pagerOpenWal(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !736
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !1968  ; 3 uses
  %i.g = zext nneg i8 %i.f to i32
  switch i8 %i.f, label %bb.i [
    i8 5, label %bb.c
    i8 3, label %bb.c
    i8 2, label %bb.c
    i8 1, label %bb.c
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1969
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !524  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !473
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1970
  %i.o = tail call i32 %i.n(ptr noundef nonnull %i.k, i32 noundef range(i32 1, 5) 4) #59, !inline_history !2262 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %..thread.i.i_crit_edge, label %pagerLockDb.exit.i

..thread.i.i_crit_edge:                           ; preds = %bb.d
  %.pre.pre = load i8, ptr %i.c, align 8, !tbaa !736
  %i.q = icmp eq i8 %.pre.pre, 0
  %i.r = select i1 %i.q, i8 0, i8 2
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread.i.i_crit_edge, %bb.c
  %.pre = phi i8 [ %i.r, %..thread.i.i_crit_edge ], [ 2, %bb.c ]
  store i8 4, ptr %i.e, align 2, !tbaa !1968
  br label %bb.i

pagerLockDb.exit.i:                               ; preds = %bb.d
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !524  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !473  ; 2 uses
  %.not.i5.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i, label %pagerExclusiveLock.exit, label %bb.e

bb.e:                                             ; preds = %pagerLockDb.exit.i
  %i.u = load i8, ptr %i.h, align 1, !tbaa !1969
  %.not9.i.i = icmp eq i8 %i.u, 0
  br i1 %.not9.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2081
  %i.x = tail call i32 %i.w(ptr noundef nonnull %i.s, i32 noundef range(i32 0, 256) %i.g) #59, !inline_history !2263 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = load i8, ptr %i.e, align 2, !tbaa !1968
  %.not10.i.i = icmp eq i8 %i.y, 5
  br i1 %.not10.i.i, label %pagerExclusiveLock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.f, ptr %i.e, align 2, !tbaa !1968
  br label %pagerExclusiveLock.exit

pagerExclusiveLock.exit:                          ; preds = %pagerLockDb.exit.i, %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !666
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !2064
  br label %bb.w

bb.i:                                             ; preds = %bb.a, %.thread.i.i, %bb.b
  %.not36.i = phi i8 [ 0, %bb.a ], [ %.pre, %.thread.i.i ], [ 2, %bb.b ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1310  ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !524 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2083 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !2115
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store ptr null, ptr %i.aj, align 8, !tbaa !2264
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !1168
  %i.am = sext i32 %i.al to i64
  %i.an = add nsw i64 %i.am, 144                  ; 2 uses
  %i.ao = tail call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) %i.an) ; 18 uses
  %.not.i.i10 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i10, label %sqlite3WalOpen.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 range(i64 -180388626400, 180388626381) %i.an, i1 false)
  store ptr %i.ac, ptr %i.ao, align 8, !tbaa !2216
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 144 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !2194
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ae, ptr %i.ar, align 8, !tbaa !1973
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 60
  store i16 -1, ptr %i.as, align 4, !tbaa !1972
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 %i.ai, ptr %i.at, align 8, !tbaa !2265
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  store ptr %i.ag, ptr %i.au, align 8, !tbaa !2254
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 68 ; 2 uses
  store i8 1, ptr %i.av, align 4, !tbaa !2266
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 69 ; 2 uses
  store i8 1, ptr %i.aw, align 1, !tbaa !2267
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 63
  store i8 %.not36.i, ptr %i.ax, align 1, !tbaa !1967
  store i32 524294, ptr %i.b, align 4, !tbaa !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1506
  %i.ba = call i32 %i.az(ptr noundef nonnull %i.ac, ptr noundef %i.ag, ptr noundef nonnull %i.ap, i32 noundef 524294, ptr noundef nonnull %i.b) #59, !inline_history !2268 ; 4 uses
  %cond.i = icmp eq i32 %i.ba, 0
  br i1 %cond.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !5
  %i.bc = and i32 %i.bb, 1
  %.not37.i = icmp eq i32 %i.bc, 0
  br i1 %.not37.i, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 66
  store i8 1, ptr %i.bd, align 2, !tbaa !1975
  br label %bb.s

bb.m:                                             ; preds = %bb.j
  call fastcc void @walIndexClose(ptr noundef nonnull %i.ao, i32 noundef 0)
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !2194 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !473 ; 2 uses
  %.not.i41.i = icmp eq ptr %i.bf, null
  br i1 %.not.i41.i, label %sqlite3OsClose.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2028
  %i.bi = call i32 %i.bh(ptr noundef nonnull %i.be) #59, !inline_history !2269 ; 0 uses
  store ptr null, ptr %i.be, align 8, !tbaa !473
  br label %sqlite3OsClose.exit.i

sqlite3OsClose.exit.i:                            ; preds = %bb.n, %bb.m
  %i.bj = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i42.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i42.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %sqlite3OsClose.exit.i
  %i.bk = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.bl(ptr noundef nonnull %i.bk) #59, !inline_history !2270
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.p, %bb.o
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.bn = call i32 %i.bm(ptr noundef nonnull %i.ao) #59, !inline_history !2271
  %i.bo = sext i32 %i.bn to i64
  %i.bp = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bq = sub nsw i64 %i.bp, %i.bo
  store i64 %i.bq, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bs = add nsw i64 %i.br, -1
  store i64 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.bt(ptr noundef nonnull %i.ao) #59, !inline_history !2272
  %i.bu = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i4.i.i, label %sqlite3WalOpen.exit, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.bv(ptr noundef nonnull %i.bu) #59, !inline_history !2273
  br label %sqlite3WalOpen.exit

bb.r:                                             ; preds = %sqlite3OsClose.exit.i
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.bw(ptr noundef nonnull %i.ao) #59, !inline_history !2272
  br label %sqlite3WalOpen.exit

bb.s:                                             ; preds = %bb.l, %bb.k
  %i.bx = load ptr, ptr %i.ae, align 8, !tbaa !473 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.thread.i, label %sqlite3OsDeviceCharacteristics.exit.i

sqlite3OsDeviceCharacteristics.exit.i:            ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2077
  %i.cb = call i32 %i.ca(ptr noundef nonnull %i.ae) #59, !inline_history !2274 ; 2 uses
  %i.cc = and i32 %i.cb, 1024
  %.not39.i = icmp eq i32 %i.cc, 0
  br i1 %.not39.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %sqlite3OsDeviceCharacteristics.exit.i
  store i8 0, ptr %i.av, align 4, !tbaa !2266
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %sqlite3OsDeviceCharacteristics.exit.i
  %i.cd = and i32 %i.cb, 4096
end_hunk_0
begin_hunk_1_@sqlite3VdbeExec:bb.a
  %i.eml = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.emm = load i32, ptr %i.eml, align 4, !tbaa !586
  %i.emn = sext i32 %i.emm to i64
  %.not3628 = icmp slt i64 %.03264, %i.emn
  br i1 %.not3628, label %.critedge, label %bb.aha

bb.aha:                                           ; preds = %sqlite3BtreeFirst.exit.thread.thread5445
  %i.emo = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.emp = load i32, ptr %i.emo, align 8, !tbaa !227
  %i.emq = sext i32 %i.emp to i64
  %i.emr = icmp sle i64 %.03264, %i.emq
  %cond.fr5111 = freeze i1 %i.emr
  br i1 %cond.fr5111, label %.thread4778, label %.critedge

bb.ahb:                                           ; preds = %bb.h, %bb.h
  %i.ems = load i32, ptr %i.fp, align 4, !tbaa !5
  %i.emt = add i32 %i.ems, 1
  store i32 %i.emt, ptr %i.fp, align 4, !tbaa !5
  br label %bb.ahc

bb.ahc:                                           ; preds = %bb.ahb, %bb.h
  %i.emu = load ptr, ptr %i.bz, align 8, !tbaa !989
  %i.emv = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.emw = load i32, ptr %i.emv, align 4, !tbaa !584
  %i.emx = sext i32 %i.emw to i64
  %i.emy = getelementptr inbounds [8 x i8], ptr %i.emu, i64 %i.emx
  %i.emz = load ptr, ptr %i.emy, align 8, !tbaa !994 ; 5 uses
  %i.ena = load i8, ptr %i.emz, align 8, !tbaa !227
  %i.enb = icmp eq i8 %i.ena, 1
  %i.enc = getelementptr i8, ptr %i.emz, i64 40
  %.val4123 = load ptr, ptr %i.enc, align 8, !tbaa !227 ; 18 uses
  br i1 %i.enb, label %bb.ahd, label %bb.alb

bb.ahd:                                           ; preds = %bb.ahc
  %i.end = getelementptr inbounds nuw i8, ptr %.val4123, i64 88
  %i.ene = load i8, ptr %i.end, align 8, !tbaa !227
  %i.enf = icmp eq i8 %i.ene, 0
  br i1 %i.enf, label %bb.ahe, label %bb.ahg

bb.ahe:                                           ; preds = %bb.ahd
  %i.eng = getelementptr inbounds nuw i8, ptr %.val4123, i64 56 ; 2 uses
  %i.enh = load ptr, ptr %i.eng, align 8, !tbaa !2522
  %.not.i4385 = icmp eq ptr %i.enh, null
  br i1 %.not.i4385, label %sqlite3VdbeSorterRewind.exit.thread5127, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  %i.eni = getelementptr inbounds nuw i8, ptr %.val4123, i64 96
  %i.enj = call fastcc i32 @vdbeSorterSort(ptr noundef nonnull %i.eni, ptr noundef nonnull %i.eng)
  br label %sqlite3VdbeSorterRewind.exit

bb.ahg:                                           ; preds = %bb.ahd
  %i.enk = call fastcc i32 @vdbeSorterFlushPMA(ptr noundef nonnull %.val4123)
  %i.enl = call fastcc i32 @vdbeSorterJoinAll(ptr noundef nonnull %.val4123, i32 noundef %i.enk) ; 2 uses
  %i.enm = icmp eq i32 %i.enl, 0
  br i1 %i.enm, label %bb.ahh, label %sqlite3VdbeSorterRowkey.exit.loopexit12628

bb.ahh:                                           ; preds = %bb.ahg
  %i.enn = getelementptr inbounds nuw i8, ptr %.val4123, i64 96 ; 12 uses
  %i.eno = getelementptr inbounds nuw i8, ptr %.val4123, i64 112
  %i.enp = load ptr, ptr %i.eno, align 8, !tbaa !2520
  %i.enq = getelementptr inbounds nuw i8, ptr %i.enp, i64 32
  %i.enr = load ptr, ptr %i.enq, align 8, !tbaa !818 ; 2 uses
  %i.ens = getelementptr i8, ptr %.val4123, i64 92
  %.val.i.i4380 = load i8, ptr %i.ens, align 4, !tbaa !227 ; 2 uses
  %switch.selectcmp.i.i.i = icmp eq i8 %.val.i.i4380, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr @vdbeSorterCompareText, ptr @vdbeSorterCompare
  %switch.selectcmp4.i.i.i = icmp eq i8 %.val.i.i4380, 1
  %switch.select5.i.i.i = select i1 %switch.selectcmp4.i.i.i, ptr @vdbeSorterCompareInt, ptr %switch.select.i.i.i ; 9 uses
  %i.ent = getelementptr inbounds nuw i8, ptr %.val4123, i64 91 ; 5 uses
  %i.enu = load i8, ptr %i.ent, align 1, !tbaa !227 ; 5 uses
  %i.env = zext i8 %i.enu to i32
  %.not148.i.i = icmp eq i8 %i.enu, 0
  br i1 %.not148.i.i, label %.lr.ph113.i.i.i.preheader, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ahh
  %wide.trip.count.i.i = zext i8 %i.enu to i64    ; 2 uses
  %xtraiter13401 = and i64 %wide.trip.count.i.i, 7 ; 3 uses
  %i.enw = icmp ult i8 %i.enu, 8
  br i1 %i.enw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 248
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.enx = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv.i.i
  %i.eny = getelementptr inbounds nuw i8, ptr %i.enx, i64 56
  store ptr %switch.select5.i.i.i, ptr %i.eny, align 8, !tbaa !2717
  %i.enz = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv.i.i
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.enz, i64 160
  store ptr %switch.select5.i.i.i, ptr %i.eoa, align 8, !tbaa !2717
  %i.eob = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv.i.i
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.eob, i64 264
  store ptr %switch.select5.i.i.i, ptr %i.eoc, align 8, !tbaa !2717
  %i.eod = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv.i.i
  %i.eoe = getelementptr inbounds nuw i8, ptr %i.eod, i64 368
  store ptr %switch.select5.i.i.i, ptr %i.eoe, align 8, !tbaa !2717
  %i.eof = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv.i.i
  %i.eog = getelementptr inbounds nuw i8, ptr %i.eof, i64 472
  store ptr %switch.select5.i.i.i, ptr %i.eog, align 8, !tbaa !2717
  %i.eoh = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv.i.i
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.eoh, i64 576
  store ptr %switch.select5.i.i.i, ptr %i.eoi, align 8, !tbaa !2717
  %i.eoj = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv.i.i
  %i.eok = getelementptr inbounds nuw i8, ptr %i.eoj, i64 680
  store ptr %switch.select5.i.i.i, ptr %i.eok, align 8, !tbaa !2717
  %i.eol = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv.i.i
  %i.eom = getelementptr inbounds nuw i8, ptr %i.eol, i64 784
  store ptr %switch.select5.i.i.i, ptr %i.eom, align 8, !tbaa !2717
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2718

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod13402.not = icmp eq i64 %xtraiter13401, 0
  br i1 %lcmp.mod13402.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod13403 = icmp ne i64 %xtraiter13401, 0
  call void @llvm.assume(i1 %lcmp.mod13403)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.eon = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv.i.i.epil
  %i.eoo = getelementptr inbounds nuw i8, ptr %i.eon, i64 56
  store ptr %switch.select5.i.i.i, ptr %i.eoo, align 8, !tbaa !2717
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter13401
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !2719

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil, %._crit_edge.i.i.unr-lcssa
  %.not255.i.i = icmp eq i8 %i.enu, 1
  br i1 %.not255.i.i, label %.lr.ph113.i.i.i.preheader, label %.preheader119.i.i

.preheader119.i.i:                                ; preds = %._crit_edge.i.i, %.preheader119.i.i
  %.0.i.i.i.i4381 = phi i32 [ %i.eoq, %.preheader119.i.i ], [ 2, %._crit_edge.i.i ] ; 4 uses
  %i.eop = icmp slt i32 %.0.i.i.i.i4381, %i.env
  %i.eoq = shl nsw i32 %.0.i.i.i.i4381, 1
  br i1 %i.eop, label %.preheader119.i.i, label %bb.ahi, !llvm.loop !2720

bb.ahi:                                           ; preds = %.preheader119.i.i
  %i.eor = zext nneg i32 %.0.i.i.i.i4381 to i64   ; 2 uses
  %i.eos = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !718 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eos, null
  br i1 %.not.i.i.i.i.i, label %sqlite3FaultSim.exit.thread.i.i.i.i, label %sqlite3FaultSim.exit.i.i.i.i

sqlite3FaultSim.exit.i.i.i.i:                     ; preds = %bb.ahi
  %i.eot = call i32 %i.eos(i32 noundef 100) #59, !inline_history !2721
  %.not.i.i.i.i4382 = icmp eq i32 %i.eot, 0
  br i1 %.not.i.i.i.i4382, label %sqlite3FaultSim.exit.thread.i.i.i.i, label %sqlite3VdbeSorterRowkey.exit.loopexit12628

sqlite3FaultSim.exit.thread.i.i.i.i:              ; preds = %sqlite3FaultSim.exit.i.i.i.i, %bb.ahi
  %i.eou = mul nuw nsw i64 %i.eor, 84
  %i.eov = add nuw nsw i64 %i.eou, 32             ; 2 uses
  %i.eow = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) %i.eov) ; 8 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.eow, null
  br i1 %.not.i17.i.i.i.i, label %sqlite3VdbeSorterRowkey.exit.loopexit12628, label %vdbeMergeEngineNew.exit.i.i.i

vdbeMergeEngineNew.exit.i.i.i:                    ; preds = %sqlite3FaultSim.exit.thread.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eow, i8 0, i64 range(i64 -180388626400, 180388626381) %i.eov, i1 false)
  store i32 %.0.i.i.i.i4381, ptr %i.eow, align 8, !tbaa !2491
  %i.eox = getelementptr inbounds nuw i8, ptr %i.eow, i64 8
  store ptr null, ptr %i.eox, align 8, !tbaa !2722
  %i.eoy = getelementptr inbounds nuw i8, ptr %i.eow, i64 32 ; 2 uses
  %i.eoz = getelementptr inbounds nuw i8, ptr %i.eow, i64 24
  store ptr %i.eoy, ptr %i.eoz, align 8, !tbaa !2498
  %i.epa = getelementptr inbounds nuw [80 x i8], ptr %i.eoy, i64 %i.eor
  %i.epb = getelementptr inbounds nuw i8, ptr %i.eow, i64 16
  store ptr %i.epa, ptr %i.epb, align 8, !tbaa !2712
  br label %.lr.ph113.i.i.i.preheader

.lr.ph113.i.i.i.preheader:                        ; preds = %vdbeMergeEngineNew.exit.i.i.i, %._crit_edge.i.i, %bb.ahh
  %.1112.i.i.i.ph = phi ptr [ null, %bb.ahh ], [ null, %._crit_edge.i.i ], [ %i.eow, %vdbeMergeEngineNew.exit.i.i.i ]
  br label %.lr.ph113.i.i.i

.lr.ph113.i.i.i:                                  ; preds = %.lr.ph113.i.i.i.preheader, %bb.ajs
  %indvars.iv122.i.i.i = phi i64 [ %indvars.iv.next123.i.i.i, %bb.ajs ], [ 0, %.lr.ph113.i.i.i.preheader ] ; 4 uses
  %.1112.i.i.i = phi ptr [ %.3.i.i.i, %bb.ajs ], [ %.1112.i.i.i.ph, %.lr.ph113.i.i.i.preheader ] ; 27 uses
  %i.epc = load i8, ptr %i.ent, align 1, !tbaa !227
  %i.epd = zext i8 %i.epc to i64                  ; 2 uses
  %i.epe = icmp samesign ult i64 %indvars.iv122.i.i.i, %i.epd
  br i1 %i.epe, label %bb.ahj, label %vdbeSorterMergeTreeBuild.exit.i.i

bb.ahj:                                           ; preds = %.lr.ph113.i.i.i
  %i.epf = getelementptr inbounds nuw [104 x i8], ptr %i.enn, i64 %indvars.iv122.i.i.i ; 8 uses
  %i.epg = getelementptr inbounds nuw i8, ptr %i.epf, i64 12 ; 3 uses
  %i.eph = load i32, ptr %i.epg, align 4, !tbaa !2723 ; 4 uses
  %.not52.i.i.i = icmp eq i32 %i.eph, 0
  br i1 %.not52.i.i.i, label %bb.ajs, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #59
  store ptr null, ptr %i.i, align 8, !tbaa !2489
  %20 = zext nneg i32 %i.eph to i64
  %i.epi = icmp sgt i32 %i.eph, 16
  br i1 %i.epi, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ahk, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i.i ], [ 1, %bb.ahk ] ; 3 uses
  %.07.i.i.i.i = phi i64 [ %i.epj, %.lr.ph.i.i.i.i ], [ 16, %bb.ahk ]
  %.056.i.i.i.i = phi i32 [ %i.epk, %.lr.ph.i.i.i.i ], [ 0, %bb.ahk ] ; 4 uses
  %i.epj = shl nsw i64 %.07.i.i.i.i, 4            ; 2 uses
  %i.epk = add nuw i32 %.056.i.i.i.i, 1
  %i.epl = icmp slt i64 %i.epj, %20
  %indvars.iv.next.i.i.i = add nuw i32 %indvars.iv.i.i.i, 1
  br i1 %i.epl, label %.lr.ph.i.i.i.i, label %bb.ahl, !llvm.loop !2724

bb.ahl:                                           ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #59
  store i64 0, ptr %i.j, align 8, !tbaa !18
  %i.epm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !718 ; 2 uses
  %.not.i.i58.i.i.i = icmp eq ptr %i.epm, null
  br i1 %.not.i.i58.i.i.i, label %sqlite3FaultSim.exit.thread.i61.i.i.i, label %sqlite3FaultSim.exit.i59.i.i.i

sqlite3FaultSim.exit.i59.i.i.i:                   ; preds = %bb.ahl
  %i.epn = call i32 %i.epm(i32 noundef 100) #59, !inline_history !2721
  %.not.i60.i.i.i = icmp eq i32 %i.epn, 0
  br i1 %.not.i60.i.i.i, label %sqlite3FaultSim.exit.thread.i61.i.i.i, label %vdbeMergeEngineFree.exit.i.i.i

sqlite3FaultSim.exit.thread.i61.i.i.i:            ; preds = %sqlite3FaultSim.exit.i59.i.i.i, %bb.ahl
  %i.epo = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) 1376) ; 13 uses
  %.not.i17.i62.i.i.i = icmp eq ptr %i.epo, null
  br i1 %.not.i17.i62.i.i.i, label %vdbeMergeEngineFree.exit.i.i.i, label %vdbeMergeEngineNew.exit63.i.i.i

vdbeMergeEngineNew.exit63.i.i.i:                  ; preds = %sqlite3FaultSim.exit.thread.i61.i.i.i
  %i.epp = getelementptr inbounds nuw i8, ptr %i.epo, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1372) %i.epp, i8 0, i64 range(i64 -180388626400, 180388626381) 1372, i1 false)
  store i32 16, ptr %i.epo, align 8, !tbaa !2491
  %i.epq = getelementptr inbounds nuw i8, ptr %i.epo, i64 32
  %i.epr = getelementptr inbounds nuw i8, ptr %i.epo, i64 24
  store ptr %i.epq, ptr %i.epr, align 8, !tbaa !2498
  %i.eps = getelementptr inbounds nuw i8, ptr %i.epo, i64 1312
  %i.ept = getelementptr inbounds nuw i8, ptr %i.epo, i64 16
  store ptr %i.eps, ptr %i.ept, align 8, !tbaa !2712
  store ptr %i.epo, ptr %i.i, align 8, !tbaa !2489
  %i.epu = load i32, ptr %i.epg, align 4, !tbaa !2723 ; 2 uses
  %i.epv = icmp sgt i32 %i.epu, 0
  br i1 %i.epv, label %.lr.ph.i.i.i, label %.loopexit.thread186.i.i.i

.lr.ph.i.i.i:                                     ; preds = %vdbeMergeEngineNew.exit63.i.i.i
  %.not.i.i.i4384 = icmp eq i32 %.056.i.i.i.i, 0
  %i.epw = getelementptr inbounds nuw i8, ptr %i.epf, i64 16
  %i.epx = getelementptr inbounds nuw i8, ptr %i.epf, i64 88 ; 2 uses
  %i.epy = add i32 %indvars.iv.i.i.i, -2
  %xtraiter13404 = and i32 %.056.i.i.i.i, 7       ; 3 uses
  %i.epz = icmp ult i32 %i.epy, 7
  %unroll_iter13409 = and i32 %.056.i.i.i.i, -8
  %lcmp.mod13406.not = icmp eq i32 %xtraiter13404, 0
  %lcmp.mod13408 = icmp ne i32 %xtraiter13404, 0
  br label %bb.ahm

bb.ahm:                                           ; preds = %.loopexit193.i.i.i, %.lr.ph.i.i.i
  %i.eqa = phi i32 [ %i.epu, %.lr.ph.i.i.i ], [ %i.eyf, %.loopexit193.i.i.i ]
  %.037108.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.eqe, %.loopexit193.i.i.i ] ; 3 uses
  %.039107.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.eye, %.loopexit193.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #59
  store ptr null, ptr %i.k, align 8, !tbaa !2489
  %i.eqb = sub nsw i32 %i.eqa, %.039107.i.i.i
  %spec.select56.i.i.i = call i32 @llvm.smin.i32(i32 %i.eqb, i32 16)
  %i.eqc = call fastcc i32 @vdbeMergeEngineLevel0(ptr noundef nonnull %i.epf, i32 noundef %spec.select56.i.i.i, ptr noundef %i.j, ptr noundef %i.k) ; 2 uses
  %i.eqd = icmp eq i32 %i.eqc, 0
  br i1 %i.eqd, label %bb.ahn, label %.loopexit.thread.sink.split.i.i.i

bb.ahn:                                           ; preds = %bb.ahm
  %i.eqe = add nuw nsw i32 %.037108.i.i.i, 1
  %i.eqf = load ptr, ptr %i.k, align 8, !tbaa !2489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #59
  %i.eqg = call fastcc i32 @vdbeIncrMergerNew(ptr noundef nonnull %i.epf, ptr noundef %i.eqf, ptr noundef nonnull %i.h) ; 4 uses
  br i1 %.not.i.i.i4384, label %.preheader42.thread.i.i.i.i, label %.lr.ph.i64.i.i.i.preheader

.lr.ph.i64.i.i.i.preheader:                       ; preds = %bb.ahn
  br i1 %i.epz, label %.lr.ph.i64.i.i.i.epil.preheader, label %.lr.ph.i64.i.i.i

.preheader42.thread.i.i.i.i:                      ; preds = %bb.ahn
  %i.eqh = icmp eq i32 %i.eqg, 0
  br i1 %i.eqh, label %.loopexit193.i.i.i, label %._crit_edge.thread.i.i.i.i

.preheader42.i.i.i.i.unr-lcssa:                   ; preds = %.lr.ph.i64.i.i.i
  br i1 %lcmp.mod13406.not, label %.preheader42.i.i.i.i, label %.lr.ph.i64.i.i.i.epil.preheader

.lr.ph.i64.i.i.i.epil.preheader:                  ; preds = %.preheader42.i.i.i.i.unr-lcssa, %.lr.ph.i64.i.i.i.preheader
  %.02644.i.i.i.i.epil.init = phi i32 [ 1, %.lr.ph.i64.i.i.i.preheader ], [ 0, %.preheader42.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod13408)
  br label %.lr.ph.i64.i.i.i.epil

.lr.ph.i64.i.i.i.epil:                            ; preds = %.lr.ph.i64.i.i.i.epil, %.lr.ph.i64.i.i.i.epil.preheader
  %.02644.i.i.i.i.epil = phi i32 [ %i.eqi, %.lr.ph.i64.i.i.i.epil ], [ %.02644.i.i.i.i.epil.init, %.lr.ph.i64.i.i.i.epil.preheader ]
  %epil.iter13405 = phi i32 [ %epil.iter13405.next, %.lr.ph.i64.i.i.i.epil ], [ 0, %.lr.ph.i64.i.i.i.epil.preheader ]
  %i.eqi = shl nsw i32 %.02644.i.i.i.i.epil, 4    ; 2 uses
  %epil.iter13405.next = add i32 %epil.iter13405, 1 ; 2 uses
  %epil.iter13405.cmp.not = icmp eq i32 %epil.iter13405.next, %xtraiter13404
  br i1 %epil.iter13405.cmp.not, label %.preheader42.i.i.i.i, label %.lr.ph.i64.i.i.i.epil, !llvm.loop !2725

.preheader42.i.i.i.i:                             ; preds = %.lr.ph.i64.i.i.i.epil, %.preheader42.i.i.i.i.unr-lcssa
  %.lcssa12646 = phi i32 [ 0, %.preheader42.i.i.i.i.unr-lcssa ], [ %i.eqi, %.lr.ph.i64.i.i.i.epil ]
  %i.eqj = icmp eq i32 %i.eqg, 0
  br i1 %i.eqj, label %.lr.ph48.i.i.i.i, label %._crit_edge.thread.i.i.i.i

.lr.ph.i64.i.i.i:                                 ; preds = %.lr.ph.i64.i.i.i.preheader, %.lr.ph.i64.i.i.i
  %niter13410 = phi i32 [ %niter13410.next.7, %.lr.ph.i64.i.i.i ], [ 0, %.lr.ph.i64.i.i.i.preheader ]
  %niter13410.next.7 = add i32 %niter13410, 8     ; 2 uses
  %niter13410.ncmp.7 = icmp eq i32 %niter13410.next.7, %unroll_iter13409
  br i1 %niter13410.ncmp.7, label %.preheader42.i.i.i.i.unr-lcssa, label %.lr.ph.i64.i.i.i, !llvm.loop !2726

.lr.ph48.i.i.i.i:                                 ; preds = %.preheader42.i.i.i.i, %.thread40.i.i.i.i
  %.12747.i.i.i.i = phi i32 [ %i.etv, %.thread40.i.i.i.i ], [ %.lcssa12646, %.preheader42.i.i.i.i ] ; 2 uses
  %.13046.i.i.i.i = phi i32 [ %i.etw, %.thread40.i.i.i.i ], [ 1, %.preheader42.i.i.i.i ]
  %.03145.i.i.i.i = phi ptr [ %i.etu, %.thread40.i.i.i.i ], [ %i.epo, %.preheader42.i.i.i.i ]
  %i.eqk = sdiv i32 %.037108.i.i.i, %.12747.i.i.i.i
  %i.eql = srem i32 %i.eqk, 16
  %i.eqm = getelementptr inbounds nuw i8, ptr %.03145.i.i.i.i, i64 24
  %i.eqn = load ptr, ptr %i.eqm, align 8, !tbaa !2498
  %i.eqo = sext i32 %i.eql to i64
  %i.eqp = getelementptr inbounds [80 x i8], ptr %i.eqn, i64 %i.eqo
  %i.eqq = getelementptr inbounds nuw i8, ptr %i.eqp, i64 72 ; 3 uses
  %i.eqr = load ptr, ptr %i.eqq, align 8, !tbaa !2542 ; 2 uses
  %i.eqs = icmp eq ptr %i.eqr, null
  br i1 %i.eqs, label %.preheader.preheader.i.i.i.i, label %.lr.ph48.i..thread40.i_crit_edge.i.i.i

.lr.ph48.i..thread40.i_crit_edge.i.i.i:           ; preds = %.lr.ph48.i.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.eqr, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !2556
  br label %.thread40.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph48.i.i.i.i
  %i.eqt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !718 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eqt, null
  br i1 %.not.i.i.i.i.i.i, label %sqlite3FaultSim.exit.thread.i.i.i.i.i, label %sqlite3FaultSim.exit.i.i.i.i.i

sqlite3FaultSim.exit.i.i.i.i.i:                   ; preds = %.preheader.preheader.i.i.i.i
  %i.equ = call i32 %i.eqt(i32 noundef 100) #59, !inline_history !2727
  %.not.i.i65.i.i.i = icmp eq i32 %i.equ, 0
  br i1 %.not.i.i65.i.i.i, label %sqlite3FaultSim.exit.thread.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i

sqlite3FaultSim.exit.thread.i.i.i.i.i:            ; preds = %sqlite3FaultSim.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i
  %i.eqv = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i90.i.i.i = icmp eq i32 %i.eqv, 0
  br i1 %.not.i90.i.i.i, label %bb.aib, label %bb.aho

bb.aho:                                           ; preds = %sqlite3FaultSim.exit.thread.i.i.i.i.i
  %i.eqw = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i91.i.i.i = icmp eq ptr %i.eqw, null
  br i1 %.not.i.i91.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i, label %bb.ahp

bb.ahp:                                           ; preds = %bb.aho
  %i.eqx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.eqx(ptr noundef nonnull %i.eqw) #59, !inline_history !2728
  br label %sqlite3_mutex_enter.exit.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i:                 ; preds = %bb.ahp, %bb.aho
  %i.eqy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 64), align 8, !tbaa !102
  %i.eqz = call i32 %i.eqy(i32 noundef range(i32 1, 2147483392) 1376) #59, !inline_history !2729 ; 2 uses
  %i.era = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !18
  %i.erb = icmp slt i64 %i.era, 1376
  br i1 %i.erb, label %bb.ahq, label %sqlite3StatusHighwater.exit.i.i.i.i.i

bb.ahq:                                           ; preds = %sqlite3_mutex_enter.exit.i.i.i.i
  store i64 1376, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !18
  br label %sqlite3StatusHighwater.exit.i.i.i.i.i

sqlite3StatusHighwater.exit.i.i.i.i.i:            ; preds = %bb.ahq, %sqlite3_mutex_enter.exit.i.i.i.i
  %i.erc = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 8), align 8, !tbaa !256 ; 2 uses
  %i.erd = icmp sgt i64 %i.erc, 0
  br i1 %i.erd, label %bb.ahr, label %bb.ahw

bb.ahr:                                           ; preds = %sqlite3StatusHighwater.exit.i.i.i.i.i
  %i.ere = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.erf = sext i32 %i.eqz to i64                 ; 2 uses
  %i.erg = sub nsw i64 %i.erc, %i.erf
  %.not.i5.i.i.i.i = icmp slt i64 %i.ere, %i.erg
  br i1 %.not.i5.i.i.i.i, label %bb.ahv, label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr
  store atomic i32 1, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  %i.erh = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i93.i.i.i = icmp eq ptr %i.erh, null
  br i1 %.not.i.i.i.i93.i.i.i, label %sqlite3MallocAlarm.exit.i.i.i.i.i, label %sqlite3_mutex_leave.exit.i.i.i.i.i.i

sqlite3_mutex_leave.exit.i.i.i.i.i.i:             ; preds = %bb.ahs
  %i.eri = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.eri(ptr noundef nonnull %i.erh) #59, !inline_history !2730
  %.pr.i.i.i.i.i.i = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i1.i.i.i.i.i.i, label %sqlite3MallocAlarm.exit.i.i.i.i.i, label %bb.aht

bb.aht:                                           ; preds = %sqlite3_mutex_leave.exit.i.i.i.i.i.i
  %i.erj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.erj(ptr noundef nonnull %.pr.i.i.i.i.i.i) #59, !inline_history !2731
  br label %sqlite3MallocAlarm.exit.i.i.i.i.i

sqlite3MallocAlarm.exit.i.i.i.i.i:                ; preds = %bb.aht, %sqlite3_mutex_leave.exit.i.i.i.i.i.i, %bb.ahs
  %i.erk = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 16), align 8, !tbaa !257 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i64 %i.erk, 0
  br i1 %.not17.i.i.i.i.i, label %bb.ahw, label %bb.ahu
end_hunk_1
begin_hunk_2_@sqlite3RowSetTest:bb.a
  store ptr %i.bt, ptr %.0.lcssa, align 8, !tbaa !3000
  br label %bb.w

rowSetEntryAlloc.exit.thread:                     ; preds = %sqlite3DbMallocRawNN.exit.i, %bb.q
  store ptr null, ptr %.0.lcssa, align 8, !tbaa !3000
  br label %bb.x

rowSetEntryAlloc.exit:                            ; preds = %._crit_edge
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2993 ; 4 uses
  %i.bw = add i16 %i.aq, -1
  store i16 %i.bw, ptr %i.ap, align 8, !tbaa !1937
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  store ptr %i.bx, ptr %.phi.trans.insert.i, align 8, !tbaa !2993
  store ptr %.pre.i, ptr %.0.lcssa, align 8, !tbaa !3000
  %.not53 = icmp eq ptr %.pre.i, null
  br i1 %.not53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %rowSetEntryAlloc.exit.thread71, %rowSetEntryAlloc.exit
  %i.by = phi ptr [ %i.bt, %rowSetEntryAlloc.exit.thread71 ], [ %.pre.i, %rowSetEntryAlloc.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bz = getelementptr inbounds nuw i8, ptr %.144.lcssa, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2997 ; 2 uses
  %.not12.i58 = icmp eq ptr %i.ca, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br i1 %.not12.i58, label %rowSetListToTree.exit66, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.w, %.lr.ph.i59
  %.014.i60 = phi i32 [ %i.cg, %.lr.ph.i59 ], [ 1, %bb.w ] ; 2 uses
  %.01013.i61 = phi ptr [ %i.cb, %.lr.ph.i59 ], [ %.144.lcssa, %bb.w ]
  %i.cb = phi ptr [ %.pr.i62, %.lr.ph.i59 ], [ %i.ca, %bb.w ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2997
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !3000
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %.01013.i61, ptr %i.ce, align 8, !tbaa !3001
  %i.cf = call fastcc ptr @rowSetNDeepTree(ptr noundef %i.a, i32 noundef %.014.i60)
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !2997
  %i.cg = add nuw nsw i32 %.014.i60, 1
  %.pr.i62 = load ptr, ptr %i.a, align 8, !tbaa !3000 ; 2 uses
  %.not.i63 = icmp eq ptr %.pr.i62, null
  br i1 %.not.i63, label %rowSetListToTree.exit66, label %.lr.ph.i59, !llvm.loop !3002

rowSetListToTree.exit66:                          ; preds = %.lr.ph.i59, %bb.w
  %.010.lcssa.i65 = phi ptr [ %.144.lcssa, %bb.w ], [ %i.cb, %.lr.ph.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %.010.lcssa.i65, ptr %i.ch, align 8, !tbaa !3001
  br label %bb.x

bb.x:                                             ; preds = %rowSetEntryAlloc.exit.thread, %.loopexit74, %rowSetEntryAlloc.exit, %rowSetListToTree.exit66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.ci = load i16, ptr %i.j, align 2, !tbaa !1939
  %i.cj = or i16 %i.ci, 1
  store i16 %i.cj, ptr %i.j, align 2, !tbaa !1939
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.b
  store i32 %1, ptr %i.e, align 4, !tbaa !2994
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.14290 = load ptr, ptr %i.ck, align 8, !tbaa !3000 ; 2 uses
  %.not5491 = icmp eq ptr %.14290, null
  br i1 %.not5491, label %.loopexit, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.z, %._crit_edge89
  %.14292 = phi ptr [ %.142, %._crit_edge89 ], [ %.14290, %bb.z ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.14292, i64 16
  %.284 = load ptr, ptr %i.cl, align 8, !tbaa !3000 ; 2 uses
  %.not5585 = icmp eq ptr %.284, null
  br i1 %.not5585, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph94, %bb.ab
  %.286 = phi ptr [ %.2, %bb.ab ], [ %.284, %.lr.ph94 ] ; 2 uses
  %i.cm = load i64, ptr %.286, align 8, !tbaa !2995 ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %2
  br i1 %i.cn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph88
  %i.co = icmp sgt i64 %i.cm, %2
  br i1 %i.co, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa, %.lr.ph88
  %.sink = phi i64 [ 8, %.lr.ph88 ], [ 16, %bb.aa ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.286, i64 %.sink
  %.2 = load ptr, ptr %i.cp, align 8, !tbaa !3000 ; 2 uses
  %.not55 = icmp eq ptr %.2, null
  br i1 %.not55, label %._crit_edge89, label %.lr.ph88, !llvm.loop !3004

._crit_edge89:                                    ; preds = %bb.ab, %.lr.ph94
  %i.cq = getelementptr inbounds nuw i8, ptr %.14292, i64 8
  %.142 = load ptr, ptr %i.cq, align 8, !tbaa !3000 ; 2 uses
  %.not54 = icmp eq ptr %.142, null
  br i1 %.not54, label %.loopexit, label %.lr.ph94, !llvm.loop !3005

.loopexit:                                        ; preds = %._crit_edge89, %bb.aa, %bb.z
  %.045 = phi i32 [ 0, %bb.z ], [ 1, %bb.aa ], [ 0, %._crit_edge89 ]
  ret i32 %.045
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @sqlite3VdbeFrameMemDel(ptr noundef initializes((8, 16)) %0) #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2405
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2402
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !2396
  store ptr %0, ptr %i.b, align 8, !tbaa !2402
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3PagerCloseWal(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !595  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.thread40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !1968  ; 2 uses
  switch i8 %i.f, label %pagerLockDb.exit [
    i8 5, label %bb.c
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1969
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !524  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !473
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1970
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.j, i32 noundef range(i32 1, 5) 1) #59, !inline_history !3006 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %..thread_crit_edge.i, label %.thread38

.thread38:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %bb.w

..thread_crit_edge.i:                             ; preds = %bb.d
  %.pre.i = load i8, ptr %i.e, align 2, !tbaa !1968
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.c
  %i.p = phi i8 [ %.pre.i, %..thread_crit_edge.i ], [ %i.f, %bb.c ]
  %.not43 = icmp eq i8 %i.p, 5
  br i1 %.not43, label %pagerLockDb.exit, label %bb.e

bb.e:                                             ; preds = %.thread.i
  store i8 1, ptr %i.e, align 2, !tbaa !1968
  br label %pagerLockDb.exit

pagerLockDb.exit:                                 ; preds = %bb.b, %.thread.i, %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !1310   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2083
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1532
  %i.v = call i32 %i.u(ptr noundef %i.q, ptr noundef %i.s, i32 noundef 0, ptr noundef nonnull %i.b) #59, !inline_history !2030 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = load i32, ptr %i.b, align 4
  %i.y = icmp ne i32 %i.x, 0
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %pagerLockDb.exit
  %i.z = call fastcc i32 @pagerOpenWal(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %pagerLockDb.exit, %bb.f
  %.1 = phi i32 [ %i.z, %bb.f ], [ %i.v, %pagerLockDb.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %i.aa = icmp eq i32 %.1, 0
  br i1 %i.aa, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !595  ; 2 uses
  %.not26 = icmp eq ptr %.pr, null
  br i1 %.not26, label %bb.w, label %.thread40

.thread40:                                        ; preds = %bb.a, %bb.h
  %i.ab = phi ptr [ %i.d, %bb.a ], [ %.pr, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 6 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !1968 ; 3 uses
  %i.ae = zext nneg i8 %i.ad to i32
  switch i8 %i.ad, label %bb.o [
    i8 5, label %bb.i
    i8 3, label %bb.i
    i8 2, label %bb.i
    i8 1, label %bb.i
    i8 0, label %bb.i
  ]

bb.i:                                             ; preds = %.thread40, %.thread40, %.thread40, %.thread40, %.thread40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !1969
  %.not.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !524 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !473
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1970
  %i.am = call i32 %i.al(ptr noundef nonnull %i.ai, i32 noundef range(i32 1, 5) 4) #59, !inline_history !2262 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %..thread.i.i_crit_edge, label %pagerLockDb.exit.i

..thread.i.i_crit_edge:                           ; preds = %bb.j
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !595
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread.i.i_crit_edge, %bb.i
  %.pre = phi ptr [ %.pre.pre, %..thread.i.i_crit_edge ], [ %i.ab, %bb.i ]
  store i8 4, ptr %i.ac, align 2, !tbaa !1968
  br label %bb.o

pagerLockDb.exit.i:                               ; preds = %bb.j
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !524 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !473 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ap, null
  br i1 %.not.i5.i, label %pagerExclusiveLock.exit, label %bb.k

bb.k:                                             ; preds = %pagerLockDb.exit.i
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !1969
  %.not9.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not9.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2081
  %i.at = call i32 %i.as(ptr noundef nonnull %i.ao, i32 noundef range(i32 0, 256) %i.ae) #59, !inline_history !2263 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.au = load i8, ptr %i.ac, align 2, !tbaa !1968
  %.not10.i.i = icmp eq i8 %i.au, 5
  br i1 %.not10.i.i, label %pagerExclusiveLock.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !1968
  br label %pagerExclusiveLock.exit

pagerExclusiveLock.exit:                          ; preds = %pagerLockDb.exit.i, %bb.m, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !666
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !2064
  br label %bb.w

bb.o:                                             ; preds = %.thread.i.i, %.thread40
  %i.ay = phi ptr [ %.pre, %.thread.i.i ], [ %i.ab, %.thread40 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !2303
  %i.bb = zext i8 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !79
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2053
  %i.bh = call fastcc i32 @sqlite3WalClose(ptr noundef %i.ay, ptr noundef %1, i32 noundef %i.bb, i32 noundef %i.be, ptr noundef %i.bg) ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !595
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !524 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !473 ; 3 uses
  %.not.i29 = icmp eq ptr %i.bk, null
  br i1 %.not.i29, label %pagerFixMaplimit.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1520
  %i.bm = icmp sgt i32 %i.bl, 2
  br i1 %i.bm, label %sqlite3OsFileControlHint.exit.i, label %pagerFixMaplimit.exit

sqlite3OsFileControlHint.exit.i:                  ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !2055 ; 2 uses
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !18
  %i.bp = icmp sgt i64 %i.bo, 0                   ; 2 uses
  %i.bq = zext i1 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !739
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !678
  %.not.i.i30 = icmp eq i32 %i.bt, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %getPageMMap.getPageNormal.i = select i1 %i.bp, ptr @getPageMMap, ptr @getPageNormal
  %getPageError.sink.i = select i1 %.not.i.i30, ptr %getPageMMap.getPageNormal.i, ptr @getPageError
  store ptr %getPageError.sink.i, ptr %i.bu, align 8, !tbaa !514
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !729
  %i.bx = call i32 %i.bw(ptr noundef nonnull %i.bj, i32 noundef 18, ptr noundef nonnull %i.a) #59, !inline_history !2056 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %pagerFixMaplimit.exit

pagerFixMaplimit.exit:                            ; preds = %bb.o, %bb.p, %sqlite3OsFileControlHint.exit.i
  %.not27 = icmp eq i32 %i.bh, 0
  br i1 %.not27, label %bb.w, label %bb.q

bb.q:                                             ; preds = %pagerFixMaplimit.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !736
  %.not28 = icmp eq i8 %i.bz, 0
  br i1 %.not28, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !524 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !473 ; 2 uses
  %.not.i31 = icmp eq ptr %i.cb, null
  br i1 %.not.i31, label %pagerUnlockDb.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !1969
  %.not9.i = icmp eq i8 %i.cd, 0
  br i1 %.not9.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2081
  %i.cg = call i32 %i.cf(ptr noundef nonnull %i.ca, i32 noundef range(i32 0, 256) 1) #59, !inline_history !2092 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ch = load i8, ptr %i.ac, align 2, !tbaa !1968
  %.not10.i = icmp eq i8 %i.ch, 5
  br i1 %.not10.i, label %pagerUnlockDb.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.ac, align 2, !tbaa !1968
  br label %pagerUnlockDb.exit

pagerUnlockDb.exit:                               ; preds = %bb.r, %bb.u, %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !666
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !2064
  br label %bb.w

bb.w:                                             ; preds = %pagerExclusiveLock.exit, %.thread38, %pagerUnlockDb.exit, %bb.q, %pagerFixMaplimit.exit, %bb.h, %bb.g
  %.3 = phi i32 [ %i.bh, %bb.q ], [ %i.bh, %pagerUnlockDb.exit ], [ 0, %pagerFixMaplimit.exit ], [ %i.am, %pagerExclusiveLock.exit ], [ 0, %bb.h ], [ %.1, %bb.g ], [ %i.n, %.thread38 ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 256) i32 @sqlite3PagerSetJournalMode(ptr noundef %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !665
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1217
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %sqlite3OsDelete.exit [
    i32 4, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.a
  %i.e = zext i8 %i.b to i32                      ; 2 uses
  %.not39 = icmp eq i32 %1, %i.e
  br i1 %.not39, label %sqlite3OsDelete.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i32 %1 to i8
  store i8 %i.f, ptr %i.a, align 1, !tbaa !665
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !736
  %.not40 = icmp eq i8 %i.h, 0
  %i.i = and i32 %i.e, 5
  %i.j = icmp eq i32 %i.i, 1
  %or.cond = and i1 %i.j, %.not40
  %i.k = and i32 %1, 1
  %i.l = icmp eq i32 %i.k, 0
  %or.cond43 = and i1 %i.l, %or.cond
  br i1 %or.cond43, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2014 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !473  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
end_hunk_2
begin_hunk_3_@sqlite3ExprCodeTarget:bb.a
  %i.o = load i32, ptr %i.n, align 4, !tbaa !367
  %i.p = and i32 %i.o, 512
  %.not570.us = icmp eq i32 %i.p, 0
  br i1 %.not570.us, label %.split999.us, label %.backedge.us

.backedge.us:                                     ; preds = %bb.b, %.lr.ph.split.us, %.lr.ph.split.us
  %.0512.be.us.in = getelementptr inbounds nuw i8, ptr %.0512873.us, i64 16
  %.0512.be.us = load ptr, ptr %.0512.be.us.in, align 8, !tbaa !371 ; 2 uses
  %i.q = icmp eq ptr %.0512.be.us, null
  br i1 %i.q, label %.thread, label %.lr.ph.split.us

.lr.ph.splitthread-pre-split:                     ; preds = %.backedge
  %.pr1275 = load ptr, ptr %i.j, align 8, !tbaa !3755
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.r = phi ptr [ %.pr1275, %.lr.ph.splitthread-pre-split ], [ %i.k, %.lr.ph ]
  %.0512873 = phi ptr [ %.0512.be, %.lr.ph.splitthread-pre-split ], [ %1, %.lr.ph ] ; 54 uses
  %i.s = phi i32 [ %i.y, %.lr.ph.splitthread-pre-split ], [ undef, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.t = getelementptr inbounds nuw i8, ptr %.0512873, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !367
  %i.v = and i32 %i.u, 8388608
  %.not560 = icmp eq i32 %i.v, 0
  br i1 %.not560, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc i32 @sqlite3IndexedExprLookup(ptr noundef nonnull %0, ptr noundef %.0512873, i32 noundef %2) ; 3 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %bb.c, %bb.d
  %i.y = phi i32 [ %i.s, %.lr.ph.split ], [ %i.s, %bb.c ], [ %i.w, %bb.d ] ; 26 uses
  %i.z = load i8, ptr %.0512873, align 8, !tbaa !3021 ; 25 uses
  switch i8 %i.z, label %.thread [
    i8 -86, label %.split.us
    i8 -88, label %.thread719.loopexit
    i8 -100, label %.split881.us
    i8 -85, label %.split885.us
    i8 -102, label %.split889.us
    i8 118, label %.split893.us
    i8 83, label %.split897.us
    i8 -101, label %.split901.us
    i8 -99, label %.split905.us
    i8 -80, label %.split909.us
    i8 36, label %.split913.us
    i8 45, label %.split917.us
    i8 46, label %.split917.us
    i8 57, label %.loopexit
    i8 56, label %.loopexit
    i8 55, label %.loopexit
    i8 58, label %.loopexit
    i8 53, label %.loopexit
    i8 54, label %.loopexit
    i8 44, label %.split925.us
    i8 43, label %.split925.us
    i8 107, label %.split929.us
    i8 109, label %.split929.us
    i8 108, label %.split929.us
    i8 111, label %.split929.us
    i8 103, label %.split929.us
    i8 104, label %.split929.us
    i8 110, label %.split929.us
    i8 105, label %.split929.us
    i8 106, label %.split929.us
    i8 112, label %.split929.us
    i8 -82, label %.split935.us
    i8 115, label %.split939.us
    i8 19, label %.split939.us
    i8 -81, label %.split945.us
    i8 51, label %.split949.us
    i8 52, label %.split949.us
    i8 -87, label %.split955.us
    i8 -84, label %.split959.us
    i8 20, label %.split963.us
    i8 -117, label %.split963.us
    i8 -78, label %.split968.us
    i8 50, label %.split972.us
    i8 49, label %.split976.us
    i8 114, label %bb.fy
    i8 -75, label %.backedge
    i8 -83, label %.backedge
    i8 78, label %.split980.us
    i8 -79, label %.split984.us
    i8 -77, label %.split987.us
    i8 -98, label %.split991.us
    i8 72, label %.split995.us
  ]

.split.us:                                        ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi876 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi877 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ] ; 6 uses
  store i32 %.us-phi876, ptr %i.e, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3973 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 50
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !3495 ; 2 uses
  %i.ae = sext i16 %i.ad to i32                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !3747
  %.not592 = icmp sgt i32 %i.ag, %i.ae
  br i1 %.not592, label %bb.f, label %bb.o

bb.f:                                             ; preds = %.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3757
  %i.aj = sext i16 %i.ad to i64
  %i.ak = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = load i8, ptr %i.ab, align 8, !tbaa !3761
  %.not593 = icmp eq i8 %i.al, 0
  br i1 %.not593, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !3756
  %i.ao = add nsw i32 %i.an, %i.ae
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !3766
  %.not594 = icmp eq i8 %i.aq, 0
  br i1 %.not594, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !3974 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3765
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !3758
  %i.aw = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 95, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %2) ; 0 uses
  %i.ax = icmp eq ptr %i.ar, null
  br i1 %i.ax, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3975 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !882
  %i.bd = zext nneg i32 %i.az to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !905
  %i.bh = icmp eq i8 %i.bg, 69
  br i1 %i.bh, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bi = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %i.h, i32 noundef 88, i32 noundef %2) ; 0 uses
  br label %.critedge

bb.m:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !227
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.n, label %.thread719

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3581
  %i.bo = getelementptr inbounds nuw i8, ptr %.us-phi877, i64 48
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !3487
  %i.bq = sext i16 %i.bp to i32
  %i.br = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 95, i32 noundef %i.bn, i32 noundef %i.bq, i32 noundef %2) ; 0 uses
  br label %.critedge

bb.o:                                             ; preds = %.split.us
  %i.bs = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 76, i32 noundef 0, i32 noundef %2) ; 0 uses
  br label %codeVectorCompare.exit

.thread719.loopexit:                              ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi878 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi879 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  store i32 %.us-phi878, ptr %i.e, align 4
  br label %.thread719

.thread719:                                       ; preds = %.thread719.loopexit, %bb.m
  %.0512774 = phi ptr [ %.us-phi879, %.thread719.loopexit ], [ %.us-phi877, %bb.m ] ; 11 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0512774, i64 44
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3581 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0512774, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !367
  %i.bx = and i32 %i.bw, 32
  %.not595 = icmp eq i32 %i.bx, 0
  br i1 %.not595, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread719
  %i.by = getelementptr inbounds nuw i8, ptr %.0512774, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !371
  %i.ca = tail call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.bz, i32 noundef %2) ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0512774, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !227 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0512774, i64 48
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !3487 ; 3 uses
  %7 = zext nneg i16 %i.ce to i64
  %i.cf = icmp slt i16 %i.ce, 0
  br i1 %i.cf, label %sqlite3TableColumnAffinity.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 54
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !881
  %.not.i = icmp slt i16 %i.ce, %i.ch
  br i1 %.not.i, label %sqlite3TableColumnAffinity.exit, label %sqlite3TableColumnAffinity.exit.thread

sqlite3TableColumnAffinity.exit:                  ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !882
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 9
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !905 ; 2 uses
  %i.cn = icmp sgt i8 %i.cm, 65
  br i1 %i.cn, label %sqlite3TableColumnAffinity.exit.thread, label %.critedge

sqlite3TableColumnAffinity.exit.thread:           ; preds = %bb.p, %bb.q, %sqlite3TableColumnAffinity.exit
  %.0.i723 = phi i8 [ %i.cm, %sqlite3TableColumnAffinity.exit ], [ 68, %bb.q ], [ 68, %bb.p ]
  %i.co = shl nuw i8 %.0.i723, 1
  %i.cp = zext i8 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 4294967164
  %i.cr = and i64 %i.cq, 4294967294
  %i.cs = getelementptr inbounds nuw i8, ptr @sqlite3ExprCodeTarget.zAff, i64 %i.cr
  %i.ct = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %i.h, i32 noundef 97, i32 noundef %i.ca, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.cs, i32 noundef -1) ; 0 uses
  br label %.critedge

bb.r:                                             ; preds = %.thread719
  %i.cu = icmp slt i32 %i.bu, 0
  br i1 %i.cu, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3888 ; 4 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %.0512774, i64 48
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !3487 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0512774, i64 64
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !227 ; 3 uses
  %i.dc = icmp slt i16 %i.cz, 0
  br i1 %i.dc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dd = xor i32 %i.cw, -1
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.de = zext nneg i16 %i.cz to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !882
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.de ; 4 uses
  %i.di = tail call fastcc signext i16 @sqlite3TableColumnToStorage(ptr noundef %i.db, i16 noundef signext %i.cz)
  %i.dj = sext i16 %i.di to i32
  %i.dk = sub nsw i32 %i.dj, %i.cw                ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 14 ; 4 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !883 ; 3 uses
  %i.dn = zext i16 %i.dm to i32                   ; 2 uses
  %i.do = and i32 %i.dn, 96
  %.not598 = icmp eq i32 %i.do, 0
  br i1 %.not598, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = and i32 %i.dn, 256
  %.not599 = icmp eq i32 %i.dp, 0
  br i1 %.not599, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !929
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.669, ptr noundef %i.dq)
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.dr = or i16 %i.dm, 256                       ; 2 uses
  store i16 %i.dr, ptr %i.dl, align 2, !tbaa !883
  %i.ds = and i16 %i.dm, 128
  %.not600 = icmp eq i16 %i.ds, 0
  br i1 %.not600, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @sqlite3ExprCodeGeneratedColumn(ptr noundef nonnull %0, ptr noundef nonnull %i.db, ptr noundef nonnull %i.dh, i32 noundef %i.dk)
  %.pre1215 = load i16, ptr %i.dl, align 2, !tbaa !883
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dt = phi i16 [ %.pre1215, %bb.z ], [ %i.dr, %bb.y ]
  %i.du = and i16 %i.dt, -385
  store i16 %i.du, ptr %i.dl, align 2, !tbaa !883
  br label %.critedge

bb.ab:                                            ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 9
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !905
  %i.dx = icmp eq i8 %i.dw, 69
  br i1 %i.dx, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.dy = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 82, i32 noundef %i.dk, i32 noundef %2) ; 0 uses
  %i.dz = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %i.h, i32 noundef 88, i32 noundef %2) ; 0 uses
  br label %.critedge

bb.ad:                                            ; preds = %bb.s
  %i.ea = add nsw i32 %i.cw, -1
  br label %bb.ag

bb.ae:                                            ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !3976
  %.not596 = icmp eq ptr %i.ec, null
  br i1 %.not596, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = tail call fastcc i32 @exprPartidxExprLookup(ptr noundef nonnull %0, ptr noundef nonnull %.0512774, i32 noundef %2) ; 2 uses
  %.not597 = icmp eq i32 %i.ed, 0
  br i1 %.not597, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.0524 = phi i32 [ %i.ea, %bb.ad ], [ %i.bu, %bb.af ], [ %i.bu, %bb.ae ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0512774, i64 64
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !227
  %i.eg = getelementptr inbounds nuw i8, ptr %.0512774, i64 48
  %i.eh = load i16, ptr %i.eg, align 8, !tbaa !3487
  %i.ei = sext i16 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %.0512774, i64 2
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !3275
  %i.el = tail call fastcc i32 @sqlite3ExprCodeGetColumn(ptr noundef nonnull %0, ptr noundef %i.ef, i32 noundef %i.ei, i32 noundef %.0524, i32 noundef %2, i8 noundef zeroext %i.ek) ; 0 uses
  br label %.critedge

.split881.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi883 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  tail call fastcc void @codeInteger(ptr noundef nonnull %0, ptr noundef nonnull %.us-phi883, i32 noundef 0, i32 noundef %2)
  br label %.critedge

.split885.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi887 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.em = tail call fastcc i32 @sqlite3ExprTruthValue(ptr noundef nonnull %.us-phi887)
  %i.en = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 72, i32 noundef %i.em, i32 noundef %2) ; 0 uses
  br label %.critedge

.split889.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi891 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.us-phi891, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !227
  tail call fastcc void @codeReal(ptr noundef %i.h, ptr noundef %i.ep, i32 noundef 0, i32 noundef %2)
  br label %.critedge

.split893.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi895 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.us-phi895, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !227
  tail call fastcc void @sqlite3VdbeLoadString(ptr noundef %i.h, i32 noundef %2, ptr noundef %i.er)
  br label %.critedge

.split897.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi899 = phi ptr [ %.0512873.us, %.lr.ph.split.us ], [ %.0512873, %bb.e ]
  %i.es = getelementptr inbounds nuw i8, ptr %.us-phi899, i64 64
  %i.et = load i32, ptr %i.es, align 8, !tbaa !227
  %i.eu = add i32 %2, -1
  %i.ev = add i32 %i.eu, %i.et
  %i.ew = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 76, i32 noundef 0, i32 noundef %2, i32 noundef %i.ev) ; 0 uses
  br label %.critedge

.thread:                                          ; preds = %bb.e, %.backedge, %.lr.ph.split.us, %.backedge.us, %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !185 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !943
  %.not.i.i1489 = icmp sgt i32 %i.fa, %i.ey
  br i1 %.not.i.i1489, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %i.fb = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.h, i32 noundef 76, i32 noundef 0, i32 noundef %2, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %.critedge

bb.ai:                                            ; preds = %.thread
  %i.fc = add nsw i32 %i.ey, 1
  store i32 %i.fc, ptr %i.ex, align 8, !tbaa !185
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !184
  %i.ff = sext i32 %i.ey to i64
  %i.fg = getelementptr inbounds [24 x i8], ptr %i.fe, i64 %i.ff ; 7 uses
  store i8 76, ptr %i.fg, align 8, !tbaa !563
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  store i16 0, ptr %i.fh, align 2, !tbaa !587
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 0, ptr %i.fi, align 4, !tbaa !584
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %2, ptr %i.fj, align 8, !tbaa !585
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !586
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store ptr null, ptr %i.fl, align 8, !tbaa !227
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store i8 0, ptr %i.fm, align 1, !tbaa !566
  br label %.critedge

.split901.us:                                     ; preds = %bb.e, %.lr.ph.split.us
end_hunk_3
begin_hunk_4_@sqlite3ExprCompare:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !227
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !227
  %i.br = tail call fastcc i32 @sqlite3WindowCompare(ptr noundef %0, ptr noundef %i.bo, ptr noundef %i.bq, i32 noundef 1)
  %.not105 = icmp eq i32 %i.br, 0
  br i1 %.not105, label %sqlite3_stricmp.exit.thread, label %sqlite3_stricmp.exit.thread130

bb.ab:                                            ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !227 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %sqlite3_stricmp.exit.thread130, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab, %bb.ae
  %.013.i.i = phi ptr [ %i.cg, %bb.ae ], [ %i.bt, %bb.ab ] ; 2 uses
  %.0.i.i = phi ptr [ %i.cf, %bb.ae ], [ %i.au, %bb.ab ] ; 2 uses
  %i.bv = load i8, ptr %.0.i.i, align 1, !tbaa !227 ; 3 uses
  %i.bw = load i8, ptr %.013.i.i, align 1, !tbaa !227 ; 2 uses
  %i.bx = icmp eq i8 %i.bv, %i.bw
  br i1 %i.bx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i
  %i.by = icmp eq i8 %i.bv, 0
  br i1 %i.by, label %sqlite3_stricmp.exit.thread, label %bb.ae

bb.ad:                                            ; preds = %.preheader.i
  %i.bz = zext i8 %i.bv to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !227
  %i.cc = zext i8 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !227
  %.not.i.i = icmp eq i8 %i.cb, %i.ce
  br i1 %.not.i.i, label %bb.ae, label %sqlite3_stricmp.exit.thread130

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  br label %.preheader.i

bb.af:                                            ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !227
  %.fr = freeze ptr %i.ci                         ; 2 uses
  %.not96 = icmp eq ptr %.fr, null
  br i1 %.not96, label %sqlite3_stricmp.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %bb.af
  switch i8 %i.as, label %bb.ag [
    i8 -86, label %sqlite3_stricmp.exit.thread
    i8 -88, label %sqlite3_stricmp.exit.thread
  ]

bb.ag:                                            ; preds = %switch.early.test
  %i.cj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) %.fr) #60
  %.not99 = icmp eq i32 %i.cj, 0
  br i1 %.not99, label %sqlite3_stricmp.exit.thread, label %sqlite3_stricmp.exit.thread130

sqlite3_stricmp.exit.thread:                      ; preds = %bb.ac, %switch.early.test, %switch.early.test, %bb.af, %bb.aa, %bb.z, %bb.ag, %bb.s
  %i.ck = load i32, ptr %i.h, align 4, !tbaa !367
  %i.cl = load i32, ptr %i.j, align 4, !tbaa !367
  %i.cm = xor i32 %i.cl, %i.ck
  %i.cn = and i32 %i.cm, 1028
  %.not106 = icmp eq i32 %i.cn, 0
  br i1 %.not106, label %bb.ah, label %sqlite3_stricmp.exit.thread130

bb.ah:                                            ; preds = %sqlite3_stricmp.exit.thread
  %i.co = and i32 %i.l, 65536
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.cq = and i32 %i.l, 4096
  %.not107 = icmp eq i32 %i.cq, 0
  br i1 %.not107, label %bb.aj, label %sqlite3_stricmp.exit.thread130

bb.aj:                                            ; preds = %bb.ai
  %i.cr = and i32 %i.l, 32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !371
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !371
  %i.cx = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef %0, ptr noundef %i.cu, ptr noundef %i.cw, i32 noundef %3)
  %.not108 = icmp eq i32 %i.cx, 0
  br i1 %.not108, label %bb.al, label %sqlite3_stricmp.exit.thread130

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1157
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1157
  %i.dc = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef %0, ptr noundef %i.cz, ptr noundef %i.db, i32 noundef %3)
  %.not109 = icmp eq i32 %i.dc, 0
  br i1 %.not109, label %bb.am, label %sqlite3_stricmp.exit.thread130

bb.am:                                            ; preds = %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !227
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !227
  %i.dh = tail call fastcc i32 @sqlite3ExprListCompare(ptr noundef %i.de, ptr noundef %i.dg, i32 noundef %3)
  %.not110 = icmp eq i32 %i.dh, 0
  br i1 %.not110, label %bb.an, label %sqlite3_stricmp.exit.thread130

bb.an:                                            ; preds = %bb.am
  %i.di = load i8, ptr %1, align 8, !tbaa !3021   ; 3 uses
  switch i8 %i.di, label %bb.ao [
    i8 118, label %bb.at
    i8 -85, label %bb.at
  ]

bb.ao:                                            ; preds = %bb.an
  %i.dj = and i32 %i.l, 16384
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dm = load i16, ptr %i.dl, align 8, !tbaa !3487
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.do = load i16, ptr %i.dn, align 8, !tbaa !3487
  %.not113 = icmp eq i16 %i.dm, %i.do
  br i1 %.not113, label %bb.aq, label %sqlite3_stricmp.exit.thread130

bb.aq:                                            ; preds = %bb.ap
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !3275
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !3275
  %.not114 = icmp ne i8 %i.dq, %i.ds
  %i.dt = icmp eq i8 %i.di, -81
  %or.cond122 = and i1 %i.dt, %.not114
  br i1 %or.cond122, label %sqlite3_stricmp.exit.thread130, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not115 = icmp eq i8 %i.di, 50
  br i1 %.not115, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3581 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3581
  %.not116 = icmp eq i32 %i.dv, %i.dx
  %.not117 = icmp eq i32 %i.dv, %3
  %or.cond123 = or i1 %.not117, %.not116
  br i1 %or.cond123, label %bb.at, label %sqlite3_stricmp.exit.thread130

bb.at:                                            ; preds = %bb.an, %bb.an, %bb.ao, %bb.as, %bb.ar, %bb.ah
  br label %sqlite3_stricmp.exit.thread130

sqlite3_stricmp.exit.thread130:                   ; preds = %bb.ad, %bb.x, %bb.ab, %bb.as, %bb.aq, %bb.ap, %bb.am, %bb.al, %bb.ak, %bb.ai, %sqlite3_stricmp.exit.thread, %bb.ag, %bb.t, %bb.aa, %sqlite3StrICmp.exit.thread, %bb.o, %bb.p, %bb.q, %bb.r, %bb.n, %bb.l, %bb.h, %bb.at, %bb.i, %bb.e, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.e ], [ 1, %bb.n ], [ 2, %bb.i ], [ 0, %bb.h ], [ 1, %bb.l ], [ 2, %bb.o ], [ 2, %bb.ab ], [ 2, %sqlite3StrICmp.exit.thread ], [ 2, %bb.ag ], [ 2, %sqlite3_stricmp.exit.thread ], [ 2, %bb.ai ], [ 2, %bb.ak ], [ 2, %bb.al ], [ 2, %bb.am ], [ 2, %bb.ap ], [ 2, %bb.aq ], [ 0, %bb.at ], [ 2, %bb.aa ], [ 0, %bb.t ], [ 2, %bb.x ], [ 2, %bb.r ], [ 2, %bb.q ], [ 2, %bb.p ], [ 2, %bb.as ], [ 2, %bb.ad ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i8 @sqlite3ExprAffinity(ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 {
bb.a:
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.024.ph = phi ptr [ %0, %bb.a ], [ %.024.ph.be, %.outer.backedge ] ; 12 uses
  %.0.in.ph = load i8, ptr %.024.ph, align 8, !tbaa !3021
  %i.a = getelementptr inbounds nuw i8, ptr %.024.ph, i64 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.024.ph, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.024.ph, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %.024.ph, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.n
  %.0.in = phi i8 [ %i.ar, %bb.n ], [ %.0.in.ph, %.outer ] ; 2 uses
  switch i8 %.0.in, label %bb.k [
    i8 -88, label %._crit_edge
    i8 -86, label %bb.c
    i8 -117, label %bb.f
    i8 36, label %bb.g
    i8 -78, label %bb.h
    i8 -79, label %bb.j
    i8 -84, label %bb.i
  ]

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !227
  br label %split

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !227  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.k, label %split

split:                                            ; preds = %bb.c, %._crit_edge
  %i.f = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.024.ph, i64 48
  %i.h = load i16, ptr %i.g, align 8, !tbaa !3487 ; 3 uses
  %1 = zext nneg i16 %i.h to i64
  %i.i = icmp slt i16 %i.h, 0
  br i1 %i.i, label %sqlite3TableColumnAffinity.exit, label %bb.d

bb.d:                                             ; preds = %split
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 54
  %i.k = load i16, ptr %i.j, align 2, !tbaa !881
  %.not.i = icmp slt i16 %i.h, %i.k
  br i1 %.not.i, label %bb.e, label %sqlite3TableColumnAffinity.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !882
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %1
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !905
  br label %sqlite3TableColumnAffinity.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.024.ph, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !227
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3035
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %.outer.backedge

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.024.ph, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !227
  %i.x = tail call fastcc signext i8 @sqlite3AffinityType(ptr noundef %i.w, ptr noundef null)
  br label %sqlite3TableColumnAffinity.exit

bb.h:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.024.ph, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !371
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !227
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3035
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.024.ph, i64 48
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !3487
  %i.ah = sext i16 %i.ag to i64
  %i.ai = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.ah
  br label %.outer.backedge

bb.i:                                             ; preds = %bb.b
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !3489
  %i.ak = icmp eq i8 %i.aj, 88
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.024.ph, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !227
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %.outer.backedge

bb.k:                                             ; preds = %bb.c, %bb.b, %bb.i
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !367
  %i.ap = and i32 %i.ao, 270336
  %.not27 = icmp eq i32 %i.ap, 0
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.024.ph, i64 16
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.j, %bb.h, %bb.f, %bb.l
  %.024.ph.be.in = phi ptr [ %i.aq, %bb.l ], [ %i.u, %bb.f ], [ %i.ai, %bb.h ], [ %i.an, %bb.j ]
  %.024.ph.be = load ptr, ptr %.024.ph.be.in, align 8, !tbaa !366
  br label %.outer

bb.m:                                             ; preds = %bb.k
  %.not28 = icmp eq i8 %.0.in, -80
  br i1 %.not28, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = load i8, ptr %i.d, align 2, !tbaa !3275 ; 2 uses
  %i.as = icmp eq i8 %i.ar, -80
  br i1 %i.as, label %bb.o, label %bb.b

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = load i8, ptr %i.a, align 1, !tbaa !3489
  br label %sqlite3TableColumnAffinity.exit

sqlite3TableColumnAffinity.exit:                  ; preds = %bb.e, %bb.d, %split, %bb.o, %bb.g
  %.025 = phi i8 [ %i.at, %bb.o ], [ 68, %split ], [ %i.x, %bb.g ], [ 68, %bb.d ], [ %i.p, %bb.e ]
  ret i8 %.025
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @exprCompareVariable(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store ptr null, ptr %i.a, align 8, !tbaa !288
  %i.b = load i8, ptr %2, align 8, !tbaa !3021
  %i.c = icmp eq i8 %i.b, -99
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i16, ptr %i.d, align 8, !tbaa !3487
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load i16, ptr %i.f, align 8, !tbaa !3487
  %i.h = icmp eq i16 %i.e, %i.g
  br i1 %i.h, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !651    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !545
  %i.l = and i64 %i.k, 8388608
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.m = call fastcc i32 @valueFromExpr(ptr noundef nonnull %i.i, ptr noundef nonnull readonly %2, i8 noundef zeroext 1, i8 noundef zeroext 65, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !288  ; 12 uses
  %.not21 = icmp eq ptr %i.n, null
  br i1 %.not21, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i16, ptr %i.o, align 8, !tbaa !3487 ; 3 uses
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !976
  %i.t = icmp sgt i16 %i.p, 31
  %i.u = add nsw i32 %i.q, -1
  %i.v = shl nuw nsw i32 1, %i.u
  %.sink5.i = select i1 %i.t, i32 -2147483648, i32 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 284 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !803
  %i.y = or i32 %.sink5.i, %i.x
  store i32 %i.y, ptr %i.w, align 4, !tbaa !803
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3230 ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !171
  %i.ad = sext i16 %i.p to i64
  %i.ae = getelementptr [56 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -56
  %i.ag = getelementptr i8, ptr %i.ae, i64 -36
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !162
  %i.ai = and i16 %i.ah, 1
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %.split

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.ak, i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i

sqlite3DbMallocRaw.exit.i.i.i:                    ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.am, %bb.i ] ; 11 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i, label %.split, label %bb.l

.split:                                           ; preds = %sqlite3DbMallocRaw.exit.i.i.i, %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !162
  %i.ap = and i16 %i.ao, -28672
  %.not.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !159
  %.not3.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not3.i.i, label %sqlite3ValueFree.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.split
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.n)
  br label %sqlite3ValueFree.exit

sqlite3ValueFree.exit:                            ; preds = %bb.j, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !157
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.at, ptr noundef nonnull %i.n)
  br label %bb.v

bb.l:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i, i8 0, i64 56, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20 ; 3 uses
  store i16 1, ptr %i.au, align 4, !tbaa !162
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 2 uses
  store ptr %i.ak, ptr %i.av, align 8, !tbaa !157
  %i.aw = tail call fastcc i32 @sqlite3VdbeMemCopy(ptr noundef nonnull %.0.i.i.i.i, ptr noundef %i.af) ; 0 uses
end_hunk_4
begin_hunk_5_@sqlite3FindInIndex:bb.a
bb.aa:                                            ; preds = %bb.aa, %.preheader.i
  %indvars.iv.i212 = phi i64 [ %indvars.iv.next.i213, %bb.aa ], [ 0, %.preheader.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cs, i64 %indvars.iv.i212
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !101
  %i.cw = icmp eq ptr %i.cv, %i.cp
  %indvars.iv.next.i213 = add nuw nsw i64 %indvars.iv.i212, 1
  br i1 %i.cw, label %.loopexit.loopexit.i, label %bb.aa

.loopexit.loopexit.i:                             ; preds = %bb.aa
  %i.cx = trunc nuw nsw i64 %indvars.iv.i212 to i32
  br label %sqlite3SchemaToIndex.exit

sqlite3SchemaToIndex.exit:                        ; preds = %isCandidateForInOpt.exit.thread260, %.loopexit.loopexit.i
  %.1.i = phi i32 [ -32768, %isCandidateForInOpt.exit.thread260 ], [ %i.cx, %.loopexit.loopexit.i ] ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !3544 ; 2 uses
  %.not.i215 = icmp eq ptr %i.cz, null
  %..i = select i1 %.not.i215, ptr %0, ptr %i.cz  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %..i, i64 116 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3521 ; 2 uses
  %i.dc = shl nuw i32 1, %.1.i                    ; 2 uses
  %i.dd = and i32 %i.db, %i.dc
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ab, label %sqlite3CodeVerifySchema.exit

bb.ab:                                            ; preds = %sqlite3SchemaToIndex.exit
  %i.df = or i32 %i.db, %i.dc
  store i32 %i.df, ptr %i.da, align 4, !tbaa !3521
  %i.dg = icmp eq i32 %.1.i, 1
  br i1 %i.dg, label %sqlite3CodeVerifySchema.exit.thread, label %sqlite3CodeVerifySchema.exit.thread264

sqlite3CodeVerifySchema.exit.thread:              ; preds = %bb.ab
  %i.dh = tail call fastcc i32 @sqlite3OpenTempDatabase(ptr noundef nonnull %..i), !inline_history !4033 ; 0 uses
  br label %sqlite3TableLock.exit

sqlite3CodeVerifySchema.exit:                     ; preds = %sqlite3SchemaToIndex.exit
  %i.di = icmp eq i32 %.1.i, 1
  br i1 %i.di, label %sqlite3TableLock.exit, label %sqlite3CodeVerifySchema.exit.thread264

sqlite3CodeVerifySchema.exit.thread264:           ; preds = %bb.ab, %sqlite3CodeVerifySchema.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !651
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !61
  %i.dm = sext i32 %.1.i to i64
  %i.dn = getelementptr inbounds [32 x i8], ptr %i.dl, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !62
  %i.dq = getelementptr i8, ptr %i.dp, i64 17
  %.val.i = load i8, ptr %i.dq, align 1, !tbaa !592
  %.not.i216 = icmp eq i8 %.val.i, 0
  br i1 %.not.i216, label %sqlite3TableLock.exit, label %bb.ac

bb.ac:                                            ; preds = %sqlite3CodeVerifySchema.exit.thread264
  %.in = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.dr = load i32, ptr %.in, align 8, !tbaa !946
  %i.ds = load ptr, ptr %i.cc, align 8, !tbaa !947
  tail call fastcc void @lockTable(ptr noundef nonnull %0, i32 noundef %.1.i, i32 noundef %i.dr, i8 noundef zeroext 0, ptr noundef %i.ds)
  br label %sqlite3TableLock.exit

sqlite3TableLock.exit:                            ; preds = %sqlite3CodeVerifySchema.exit.thread, %sqlite3CodeVerifySchema.exit, %sqlite3CodeVerifySchema.exit.thread264, %bb.ac
  %i.dt = icmp eq i32 %i.cj, 1                    ; 2 uses
  br i1 %i.dt, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %sqlite3TableLock.exit
  %i.du = load ptr, ptr %i.ci, align 8, !tbaa !902
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load i16, ptr %i.dv, align 8, !tbaa !3487
  %i.dx = icmp slt i16 %i.dw, 0
  br i1 %i.dx, label %bb.ae, label %.lr.ph303

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !185 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !943
  %.not.i.i = icmp sgt i32 %i.eb, %i.dz
  br i1 %.not.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ec = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0), !inline_history !977
  br label %sqlite3VdbeAddOp0.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ed = add nsw i32 %i.dz, 1
  store i32 %i.ed, ptr %i.dy, align 8, !tbaa !185
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !184
  %i.eg = sext i32 %i.dz to i64
  %i.eh = getelementptr inbounds [24 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  store i8 15, ptr %i.eh, align 8, !tbaa !563
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ei, i8 0, i64 23, i1 false)
  br label %sqlite3VdbeAddOp0.exit

sqlite3VdbeAddOp0.exit:                           ; preds = %bb.af, %bb.ag
  %.0.i.i = phi i32 [ %i.ec, %bb.af ], [ %i.dz, %bb.ag ]
  tail call fastcc void @sqlite3OpenTable(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %.1.i, ptr noundef nonnull %i.cc, i32 noundef 113)
  %i.ej = load ptr, ptr %i.cc, align 8, !tbaa !947
  tail call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull @.str.686, ptr noundef %i.ej)
  %i.ek = load i32, ptr %i.dy, align 8, !tbaa !185
  %i.el = load ptr, ptr %.0.i, align 8, !tbaa !146
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 103
  %i.en = load i8, ptr %i.em, align 1, !tbaa !550
  %.not.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i, label %bb.ah, label %.thread273

bb.ah:                                            ; preds = %sqlite3VdbeAddOp0.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !184
  %i.eq = sext i32 %.0.i.i to i64
  %i.er = getelementptr inbounds [24 x i8], ptr %i.ep, i64 %i.eq
  br label %.thread273

.thread273:                                       ; preds = %bb.ah, %sqlite3VdbeAddOp0.exit
  %.0.i.i.i = phi ptr [ %i.er, %bb.ah ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeAddOp0.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.ek, ptr %i.es, align 8, !tbaa !585
  br label %bb.da

bb.ai:                                            ; preds = %sqlite3TableLock.exit
  br i1 %i.ck, label %.lr.ph303, label %.critedge

.lr.ph303:                                        ; preds = %bb.ad, %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cc, i64 54
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ew = zext nneg i32 %i.cj to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph303, %sqlite3CompareAffinity.exit
  %indvars.iv338 = phi i64 [ 0, %.lr.ph303 ], [ %indvars.iv.next339, %sqlite3CompareAffinity.exit ] ; 3 uses
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !371 ; 9 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !3021 ; 3 uses
  %i.ez = icmp eq i8 %i.ey, -80
  br i1 %i.ez, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fb = load i8, ptr %i.fa, align 2, !tbaa !3275
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i.i217 = phi i8 [ %i.fb, %bb.ak ], [ %i.ey, %bb.aj ]
  switch i8 %.0.i.i.i217, label %sqlite3VectorFieldSubexpr.exit [
    i8 -79, label %bb.am
    i8 -117, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  br label %sqlite3ExprIsVector.exit.i

bb.an:                                            ; preds = %bb.al
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !227
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  br label %sqlite3ExprIsVector.exit.i

sqlite3ExprIsVector.exit.i:                       ; preds = %bb.an, %bb.am
  %.sink.in.i.i.i = phi ptr [ %i.ff, %bb.an ], [ %i.fc, %bb.am ]
  %.sink.i.i.i = load ptr, ptr %.sink.in.i.i.i, align 8, !tbaa !227
  %i.fg = load i32, ptr %.sink.i.i.i, align 8, !tbaa !5
  %i.fh = icmp slt i32 %i.fg, 2
  br i1 %i.fh, label %sqlite3VectorFieldSubexpr.exit, label %bb.ao

bb.ao:                                            ; preds = %sqlite3ExprIsVector.exit.i
  %i.fi = icmp eq i8 %i.ey, -117
  br i1 %i.fi, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !3275
  %i.fl = icmp eq i8 %i.fk, -117
  br i1 %i.fl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !227
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  br label %sqlite3ExprIsVector.exit.thread.sink.split.i

bb.ar:                                            ; preds = %bb.ap
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  br label %sqlite3ExprIsVector.exit.thread.sink.split.i

sqlite3ExprIsVector.exit.thread.sink.split.i:     ; preds = %bb.ar, %bb.aq
  %.sink.in.i = phi ptr [ %i.fp, %bb.ar ], [ %i.fo, %bb.aq ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !227
  %i.fq = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %indvars.iv338
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !902
  br label %sqlite3VectorFieldSubexpr.exit

sqlite3VectorFieldSubexpr.exit:                   ; preds = %bb.al, %sqlite3ExprIsVector.exit.i, %sqlite3ExprIsVector.exit.thread.sink.split.i
  %.0.i218 = phi ptr [ %i.ex, %sqlite3ExprIsVector.exit.i ], [ %i.ex, %bb.al ], [ %i.fs, %sqlite3ExprIsVector.exit.thread.sink.split.i ]
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %indvars.iv338
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !902
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.fw = load i16, ptr %i.fv, align 8, !tbaa !3487 ; 3 uses
  %7 = zext nneg i16 %i.fw to i64
  %i.fx = icmp slt i16 %i.fw, 0
  br i1 %i.fx, label %sqlite3TableColumnAffinity.exit, label %bb.as

bb.as:                                            ; preds = %sqlite3VectorFieldSubexpr.exit
  %i.fy = load i16, ptr %i.eu, align 2, !tbaa !881
  %.not.i219 = icmp slt i16 %i.fw, %i.fy
  br i1 %.not.i219, label %bb.at, label %sqlite3TableColumnAffinity.exit

bb.at:                                            ; preds = %bb.as
  %i.fz = load ptr, ptr %i.ev, align 8, !tbaa !882
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %7
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 9
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !905
  br label %sqlite3TableColumnAffinity.exit

sqlite3TableColumnAffinity.exit:                  ; preds = %sqlite3VectorFieldSubexpr.exit, %bb.as, %bb.at
  %.0.i220 = phi i8 [ %i.gc, %bb.at ], [ 68, %bb.as ], [ 68, %sqlite3VectorFieldSubexpr.exit ] ; 4 uses
  %i.gd = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef readonly %.0.i218) ; 4 uses
  %i.ge = icmp sgt i8 %i.gd, 64
  %i.gf = icmp sgt i8 %.0.i220, 64
  %or.cond.i221 = and i1 %i.gf, %i.ge
  br i1 %or.cond.i221, label %bb.au, label %bb.av

bb.au:                                            ; preds = %sqlite3TableColumnAffinity.exit
  %i.gg = icmp samesign ugt i8 %i.gd, 66
  %i.gh = icmp samesign ugt i8 %.0.i220, 66
  %or.cond5.i = or i1 %i.gh, %i.gg
  %..i223 = select i1 %or.cond5.i, i8 67, i8 65
  br label %sqlite3CompareAffinity.exit

bb.av:                                            ; preds = %sqlite3TableColumnAffinity.exit
  %i.gi = icmp slt i8 %i.gd, 65
  %i.gj = select i1 %i.gi, i8 %.0.i220, i8 %i.gd
  %i.gk = or i8 %i.gj, 64
  br label %sqlite3CompareAffinity.exit

sqlite3CompareAffinity.exit:                      ; preds = %bb.au, %bb.av
  %.0.i222 = phi i8 [ %..i223, %bb.au ], [ %i.gk, %bb.av ]
  %.off = add i8 %.0.i222, -65
  %switch = icmp ult i8 %.off, 2
  %i.gl = icmp sgt i8 %.0.i220, 66
  %narrow = select i1 %switch, i1 true, i1 %i.gl  ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next339, %i.ew
  %i.gn = and i1 %i.gm, %narrow
  br i1 %i.gn, label %bb.aj, label %._crit_edge, !llvm.loop !4034

._crit_edge:                                      ; preds = %sqlite3CompareAffinity.exit
  br i1 %narrow, label %.critedge, label %.thread271

.critedge:                                        ; preds = %bb.ai, %._crit_edge
  %i.go = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.0171321 = load ptr, ptr %i.go, align 8, !tbaa !935 ; 2 uses
  %.not329 = icmp eq ptr %.0171321, null
  br i1 %.not329, label %.thread271, label %.lr.ph324

.lr.ph324:                                        ; preds = %.critedge
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not198 = icmp eq ptr %4, null
  %i.gq = zext i32 %i.cj to i64                   ; 4 uses
  %notmask = shl nsw i64 -1, %i.gq                ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i, i64 148 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i, i64 136 ; 3 uses
  %.not199 = icmp eq ptr %.1, null
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph324, %bb.cl
  %.0171322 = phi ptr [ %.0171321, %.lr.ph324 ], [ %.0171, %bb.cl ] ; 11 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0171322, i64 96
  %i.gw = load i16, ptr %i.gv, align 8, !tbaa !875 ; 2 uses
  %i.gx = zext i16 %i.gw to i32                   ; 2 uses
  %i.gy = icmp sgt i32 %i.cj, %i.gx
  br i1 %i.gy, label %bb.cl, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gz = getelementptr inbounds nuw i8, ptr %.0171322, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !2797
  %.not192 = icmp ne ptr %i.ha, null
  %i.hb = icmp ugt i16 %i.gw, 62
  %or.cond = or i1 %i.hb, %.not192
  br i1 %or.cond, label %bb.cl, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hc = getelementptr inbounds nuw i8, ptr %.0171322, i64 94
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !936
  %i.he = zext i16 %i.hd to i32
  %i.hf = icmp slt i32 %i.cj, %i.he
  br i1 %i.hf, label %bb.cl, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hg = icmp samesign ult i32 %i.cj, %i.gx
  br i1 %i.hg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hh = getelementptr inbounds nuw i8, ptr %.0171322, i64 98
  %i.hi = load i8, ptr %i.hh, align 2, !tbaa !2990
  %.not193 = icmp eq i8 %i.hi, 0
  br i1 %.not193, label %bb.cl, label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.ay
  br i1 %i.ck, label %.lr.ph315, label %sqlite3StrICmp.exit.thread._crit_edge

.lr.ph315:                                        ; preds = %bb.bc
  %i.hj = getelementptr inbounds nuw i8, ptr %.0171322, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.0171322, i64 64
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph315, %bb.bx
  %indvars.iv351 = phi i64 [ 0, %.lr.ph315 ], [ %indvars.iv.next352, %bb.bx ] ; 4 uses
  %.0177312 = phi i64 [ 0, %.lr.ph315 ], [ %i.js, %bb.bx ] ; 6 uses
  %i.hl = load ptr, ptr %i.gp, align 8, !tbaa !371 ; 9 uses
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !3021 ; 3 uses
  %i.hn = icmp eq i8 %i.hm, -80
  br i1 %i.hn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hp = load i8, ptr %i.ho, align 2, !tbaa !3275
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0.i.i.i224 = phi i8 [ %i.hp, %bb.be ], [ %i.hm, %bb.bd ]
  switch i8 %.0.i.i.i224, label %sqlite3VectorFieldSubexpr.exit232 [
    i8 -79, label %bb.bg
    i8 -117, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  br label %sqlite3ExprIsVector.exit.i225

bb.bh:                                            ; preds = %bb.bf
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !227
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  br label %sqlite3ExprIsVector.exit.i225

sqlite3ExprIsVector.exit.i225:                    ; preds = %bb.bh, %bb.bg
  %.sink.in.i.i.i226 = phi ptr [ %i.ht, %bb.bh ], [ %i.hq, %bb.bg ]
  %.sink.i.i.i227 = load ptr, ptr %.sink.in.i.i.i226, align 8, !tbaa !227
  %i.hu = load i32, ptr %.sink.i.i.i227, align 8, !tbaa !5
  %i.hv = icmp slt i32 %i.hu, 2
  br i1 %i.hv, label %sqlite3VectorFieldSubexpr.exit232, label %bb.bi

bb.bi:                                            ; preds = %sqlite3ExprIsVector.exit.i225
  %i.hw = icmp eq i8 %i.hm, -117
  br i1 %i.hw, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !3275
  %i.hz = icmp eq i8 %i.hy, -117
  br i1 %i.hz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !227
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  br label %sqlite3ExprIsVector.exit.thread.sink.split.i228

bb.bl:                                            ; preds = %bb.bj
  %i.id = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  br label %sqlite3ExprIsVector.exit.thread.sink.split.i228

sqlite3ExprIsVector.exit.thread.sink.split.i228:  ; preds = %bb.bl, %bb.bk
  %.sink.in.i229 = phi ptr [ %i.id, %bb.bl ], [ %i.ic, %bb.bk ]
  %.sink.i230 = load ptr, ptr %.sink.in.i229, align 8, !tbaa !227
  %i.ie = getelementptr inbounds nuw i8, ptr %.sink.i230, i64 8
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %indvars.iv351
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !902
  br label %sqlite3VectorFieldSubexpr.exit232

sqlite3VectorFieldSubexpr.exit232:                ; preds = %bb.bf, %sqlite3ExprIsVector.exit.i225, %sqlite3ExprIsVector.exit.thread.sink.split.i228
  %.0.i231 = phi ptr [ %i.hl, %sqlite3ExprIsVector.exit.i225 ], [ %i.hl, %bb.bf ], [ %i.ig, %sqlite3ExprIsVector.exit.thread.sink.split.i228 ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %indvars.iv351
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !902 ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i231, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !367
  %i.il = and i32 %i.ik, 512
  %.not.i233 = icmp eq i32 %i.il, 0
  br i1 %.not.i233, label %bb.bm, label %.sink.split.i

bb.bm:                                            ; preds = %sqlite3VectorFieldSubexpr.exit232
  %.not15.i = icmp eq ptr %i.ii, null
  br i1 %.not15.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !367
  %i.io = and i32 %i.in, 512
  %.not16.i = icmp eq i32 %i.io, 0
  br i1 %.not16.i, label %bb.bo, label %.sink.split.i

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ip = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef nonnull %0, ptr noundef nonnull readonly %.0.i231) ; 2 uses
end_hunk_5
begin_hunk_6_@convertToWithoutRowidTable:bb.a
  br i1 %.not166, label %.preheader, label %bb.aj, !llvm.loop !4067

bb.bd:                                            ; preds = %.lr.ph287, %hasColumn.exit
  %indvars.iv311 = phi i64 [ 0, %.lr.ph287 ], [ %indvars.iv.next312, %hasColumn.exit ] ; 3 uses
  %.0144286 = phi i32 [ 0, %.lr.ph287 ], [ %.1145, %hasColumn.exit ] ; 2 uses
  br i1 %.not373, label %._crit_edge367, label %.lr.ph366

bb.be:                                            ; preds = %.lr.ph366
  %i.kq = add nsw i32 %.03.i364, -1
  %i.kr = getelementptr inbounds nuw i8, ptr %.04.i363, i64 2
  %i.ks = icmp sgt i32 %.03.i364, 1
  br i1 %i.ks, label %.lr.ph366, label %._crit_edge367, !llvm.loop !4068

.lr.ph366:                                        ; preds = %bb.bd, %bb.be
  %.03.i364 = phi i32 [ %i.kq, %bb.be ], [ %i.fb, %bb.bd ] ; 2 uses
  %.04.i363 = phi ptr [ %i.kr, %bb.be ], [ %i.fw, %bb.bd ] ; 2 uses
  %i.kt = load i16, ptr %.04.i363, align 2, !tbaa !330
  %i.ku = sext i16 %i.kt to i64
  %i.kv = icmp eq i64 %indvars.iv311, %i.ku
  br i1 %i.kv, label %hasColumn.exit, label %bb.be, !llvm.loop !4068

._crit_edge367:                                   ; preds = %bb.be, %bb.bd
  %i.kw = load ptr, ptr %i.fx, align 8, !tbaa !882
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %indvars.iv311
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 14
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !883
  %i.la = and i16 %i.kz, 32
  %i.lb = icmp eq i16 %i.la, 0
  %i.lc = zext i1 %i.lb to i32
  %spec.select174 = add nsw i32 %.0144286, %i.lc
  br label %hasColumn.exit

hasColumn.exit:                                   ; preds = %.lr.ph366, %._crit_edge367
  %.1145 = phi i32 [ %spec.select174, %._crit_edge367 ], [ %.0144286, %.lr.ph366 ] ; 2 uses
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count314
  br i1 %exitcond315.not, label %._crit_edge288, label %bb.bd, !llvm.loop !4069

._crit_edge288:                                   ; preds = %hasColumn.exit, %.preheader
  %.0144.lcssa = phi i32 [ 0, %.preheader ], [ %.1145, %hasColumn.exit ]
  %i.ld = add nsw i32 %.0144.lcssa, %i.fb         ; 3 uses
  %i.le = load i16, ptr %i.fa, align 8, !tbaa !875 ; 2 uses
  %i.lf = zext i16 %i.le to i32
  %.not.i221 = icmp sgt i32 %i.ld, %i.lf
  br i1 %.not.i221, label %bb.bf, label %resizeIndexObject.exit227

bb.bf:                                            ; preds = %._crit_edge288
  %i.lg = load ptr, ptr %0, align 8, !tbaa !651   ; 2 uses
  %i.lh = zext nneg i32 %i.ld to i64              ; 3 uses
  %i.li = mul nuw nsw i64 %i.lh, 13               ; 3 uses
  %.not.i.i.i223 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i223, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lj = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.lg, i64 noundef %i.li), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i224

bb.bh:                                            ; preds = %bb.bf
  %i.lk = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.li), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i224

sqlite3DbMallocRaw.exit.i.i224:                   ; preds = %bb.bh, %bb.bg
  %.0.i.i.i225 = phi ptr [ %i.lj, %bb.bg ], [ %i.lk, %bb.bh ] ; 5 uses
  %.not.i.i226 = icmp eq ptr %.0.i.i.i225, null
  br i1 %.not.i.i226, label %resizeIndexObject.exit, label %bb.bi

bb.bi:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i224
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i.i225, i8 0, i64 %i.li, i1 false)
  %i.ll = getelementptr inbounds nuw i8, ptr %.1143, i64 64 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !2803
  %i.ln = load i16, ptr %i.fa, align 8, !tbaa !875
  %i.lo = zext i16 %i.ln to i64
  %i.lp = shl nuw nsw i64 %i.lo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i225, ptr align 8 %i.lm, i64 %i.lp, i1 false)
  store ptr %.0.i.i.i225, ptr %i.ll, align 8, !tbaa !2803
  %i.lq = shl nuw nsw i64 %i.lh, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i.i.i225, i64 %i.lq ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.1143, i64 16 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !2987
  %i.lu = load i16, ptr %i.ey, align 2, !tbaa !936
  %i.lv = zext i16 %i.lu to i64
  %i.lw = shl nuw nsw i64 %i.lv, 1
  %i.lx = add nuw nsw i64 %i.lw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lr, ptr noundef nonnull align 2 dereferenceable(1) %i.lt, i64 %i.lx, i1 false)
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !2987
  %i.ly = shl nuw nsw i64 %i.lh, 1                ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ly ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.1143, i64 8 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !878
  %i.mc = load i16, ptr %i.fa, align 8, !tbaa !875
  %i.md = zext i16 %i.mc to i64
  %i.me = shl nuw nsw i64 %i.md, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lz, ptr align 2 %i.mb, i64 %i.me, i1 false)
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !878
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ly ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.1143, i64 56 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !3603
  %i.mi = load i16, ptr %i.fa, align 8, !tbaa !875
  %i.mj = zext i16 %i.mi to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mf, ptr align 1 %i.mh, i64 %i.mj, i1 false)
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !3603
  %i.mk = trunc i32 %i.ld to i16                  ; 2 uses
  store i16 %i.mk, ptr %i.fa, align 8, !tbaa !875
  %i.ml = load i16, ptr %i.et, align 1
  %i.mm = or i16 %i.ml, 16
  store i16 %i.mm, ptr %i.et, align 1
  %.pre323 = load i16, ptr %i.fs, align 2, !tbaa !881
  br label %resizeIndexObject.exit227

resizeIndexObject.exit227:                        ; preds = %._crit_edge288, %bb.bi
  %i.mn = phi i16 [ %i.le, %._crit_edge288 ], [ %i.mk, %bb.bi ]
  %i.mo = phi i16 [ %i.ft, %._crit_edge288 ], [ %.pre323, %bb.bi ] ; 2 uses
  %i.mp = icmp sgt i16 %i.mo, 0
  br i1 %i.mp, label %.lr.ph292, label %._crit_edge293

.lr.ph292:                                        ; preds = %resizeIndexObject.exit227
  %i.mq = getelementptr inbounds nuw i8, ptr %.1143, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !878 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.1143, i64 64
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph292, %hasColumn.exit231
  %i.mu = phi i16 [ %i.mo, %.lr.ph292 ], [ %i.no, %hasColumn.exit231 ] ; 2 uses
  %indvars.iv316 = phi i64 [ 0, %.lr.ph292 ], [ %indvars.iv.next317, %hasColumn.exit231 ] ; 4 uses
  %.4291 = phi i32 [ %i.fb, %.lr.ph292 ], [ %.5, %hasColumn.exit231 ] ; 6 uses
  %i.mv = icmp sgt i32 %.4291, 0
  br i1 %i.mv, label %.lr.ph371, label %._crit_edge372

bb.bk:                                            ; preds = %.lr.ph371
  %i.mw = add nsw i32 %.03.i229369, -1
  %i.mx = getelementptr inbounds nuw i8, ptr %.04.i228368, i64 2
  %i.my = icmp sgt i32 %.03.i229369, 1
  br i1 %i.my, label %.lr.ph371, label %._crit_edge372, !llvm.loop !4068

.lr.ph371:                                        ; preds = %bb.bj, %bb.bk
  %.03.i229369 = phi i32 [ %i.mw, %bb.bk ], [ %.4291, %bb.bj ] ; 2 uses
  %.04.i228368 = phi ptr [ %i.mx, %bb.bk ], [ %i.mr, %bb.bj ] ; 2 uses
  %i.mz = load i16, ptr %.04.i228368, align 2, !tbaa !330
  %i.na = sext i16 %i.mz to i64
  %i.nb = icmp eq i64 %indvars.iv316, %i.na
  br i1 %i.nb, label %hasColumn.exit231, label %bb.bk, !llvm.loop !4068

._crit_edge372:                                   ; preds = %bb.bk, %bb.bj
  %i.nc = load ptr, ptr %i.ms, align 8, !tbaa !882
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %indvars.iv316
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 14
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !883
  %i.ng = and i16 %i.nf, 32
  %i.nh = icmp eq i16 %i.ng, 0
  br i1 %i.nh, label %bb.bl, label %hasColumn.exit231

bb.bl:                                            ; preds = %._crit_edge372
  %i.ni = trunc i64 %indvars.iv316 to i16
  %i.nj = sext i32 %.4291 to i64                  ; 2 uses
  %i.nk = getelementptr inbounds [2 x i8], ptr %i.mr, i64 %i.nj
  store i16 %i.ni, ptr %i.nk, align 2, !tbaa !330
  %i.nl = load ptr, ptr %i.mt, align 8, !tbaa !2803
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.nj
  store ptr @.str.136, ptr %i.nm, align 8, !tbaa !251
  %i.nn = add nsw i32 %.4291, 1
  %.pre324 = load i16, ptr %i.fs, align 2, !tbaa !881
  br label %hasColumn.exit231

hasColumn.exit231:                                ; preds = %.lr.ph371, %._crit_edge372, %bb.bl
  %i.no = phi i16 [ %i.mu, %._crit_edge372 ], [ %.pre324, %bb.bl ], [ %i.mu, %.lr.ph371 ] ; 2 uses
  %.5 = phi i32 [ %.4291, %._crit_edge372 ], [ %i.nn, %bb.bl ], [ %.4291, %.lr.ph371 ]
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.np = sext i16 %i.no to i64
  %i.nq = icmp slt i64 %indvars.iv.next317, %i.np
  br i1 %i.nq, label %bb.bj, label %._crit_edge293.loopexit, !llvm.loop !4070

._crit_edge293.loopexit:                          ; preds = %hasColumn.exit231
  %.pre325 = load i16, ptr %i.fa, align 8, !tbaa !875
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %._crit_edge293.loopexit, %resizeIndexObject.exit227
  %i.nr = phi i16 [ %.pre325, %._crit_edge293.loopexit ], [ %i.mn, %resizeIndexObject.exit227 ] ; 2 uses
  %.not.i232 = icmp eq i16 %i.nr, 0
  br i1 %.not.i232, label %recomputeColumnsNotIndexed.exit, label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %._crit_edge293
  %i.ns = getelementptr inbounds nuw i8, ptr %.1143, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !1098
  %i.nu = getelementptr inbounds nuw i8, ptr %.1143, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !878
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nx = zext i16 %i.nr to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bp, %.lr.ph.i233
  %indvars.iv.i234 = phi i64 [ %i.nx, %.lr.ph.i233 ], [ %indvars.iv.next.i235, %bb.bp ] ; 2 uses
  %.017.i = phi i64 [ 0, %.lr.ph.i233 ], [ %.1.i, %bb.bp ] ; 3 uses
  %indvars.iv.next.i235 = add nsw i64 %indvars.iv.i234, -1 ; 2 uses
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %indvars.iv.next.i235
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !330 ; 3 uses
  %i.oa = icmp sgt i16 %i.nz, -1
  br i1 %i.oa, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %2 = load ptr, ptr %i.nw, align 8, !tbaa !882
  %3 = zext nneg i16 %i.nz to i64                 ; 2 uses
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 14
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !883
  %i.oe = and i16 %i.od, 32
  %i.of = icmp eq i16 %i.oe, 0
  %i.og = icmp samesign ult i16 %i.nz, 63
  %or.cond.i = and i1 %i.og, %i.of
  br i1 %or.cond.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.oh = shl nuw nsw i64 1, %3
  %i.oi = or i64 %i.oh, %.017.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %.1.i = phi i64 [ %i.oi, %bb.bo ], [ %.017.i, %bb.bn ], [ %.017.i, %bb.bm ] ; 2 uses
  %i.oj = icmp samesign ugt i64 %indvars.iv.i234, 1
  br i1 %i.oj, label %bb.bm, label %._crit_edge.loopexit.i, !llvm.loop !4071

._crit_edge.loopexit.i:                           ; preds = %bb.bp
  %i.ok = xor i64 %.1.i, -1
  br label %recomputeColumnsNotIndexed.exit

recomputeColumnsNotIndexed.exit:                  ; preds = %._crit_edge293, %._crit_edge.loopexit.i
  %.0.lcssa.i236 = phi i64 [ -1, %._crit_edge293 ], [ %i.ok, %._crit_edge.loopexit.i ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.1143, i64 104
  store i64 %.0.lcssa.i236, ptr %i.ol, align 8, !tbaa !4072
  br label %resizeIndexObject.exit

resizeIndexObject.exit:                           ; preds = %sqlite3DbMallocRaw.exit.i.i, %sqlite3DbMallocRaw.exit.i.i224, %bb.n, %bb.s, %recomputeColumnsNotIndexed.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3ResolveSelfReference(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 33) %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.Walker, align 8             ; 11 uses
  %6 = alloca %struct.NameContext, align 8        ; 9 uses
  %7 = alloca %union.anon.35, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #59
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, i8 0, i64 80, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %7, align 8, !tbaa !5
  %i.b = load ptr, ptr %1, align 8, !tbaa !947
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !384
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !3016
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 -1, ptr %i.e, align 4, !tbaa !3554
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !923
  %i.h = load ptr, ptr %0, align 8, !tbaa !651
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101
  %.not23 = icmp eq ptr %i.g, %i.l
  %i.m = or disjoint i32 %2, 262144
  %spec.select = select i1 %.not23, i32 %2, i32 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.019 = phi i32 [ %2, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  store ptr %0, ptr %6, align 8, !tbaa !3555
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.n, align 8, !tbaa !3558
  %i.o = or disjoint i32 %.019, 65536             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i32 %i.o, ptr %i.p, align 8, !tbaa !3559
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.q = icmp eq ptr %3, null
  br i1 %i.q, label %sqlite3ResolveExprNames.exit.thread28, label %bb.d

sqlite3ResolveExprNames.exit.thread28:            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.o, -134254609
  store i32 %i.r, ptr %i.p, align 8, !tbaa !3559
  store ptr %0, ptr %5, align 8, !tbaa !3506
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @resolveExprStep, ptr %i.s, align 8, !tbaa !3507
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @resolveSelectStep, ptr %i.t, align 8, !tbaa !3508
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.u, align 8, !tbaa !3648
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %6, ptr %i.v, align 8, !tbaa !227
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !3496
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3704
  %i.aa = add nsw i32 %i.z, %i.x                  ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !3704
  %i.ab = load ptr, ptr %0, align 8, !tbaa !651
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 148
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !5  ; 2 uses
  %i.ae = icmp sgt i32 %i.aa, %i.ad
  br i1 %i.ae, label %sqlite3ExprCheckHeight.exit.i, label %bb.e

sqlite3ExprCheckHeight.exit.i:                    ; preds = %bb.d
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.796, i32 noundef %i.ad), !inline_history !3795
  br label %sqlite3ResolveExprNames.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.af = and i32 %.019, 134254608
  %i.ag = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %5, ptr noundef nonnull %3), !inline_history !3795 ; 0 uses
  %i.ah = load i32, ptr %i.w, align 8, !tbaa !3496
  %i.ai = load ptr, ptr %5, align 8, !tbaa !3506  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 308 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3704
  %i.al = sub nsw i32 %i.ak, %i.ah
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !3704
  %i.am = load i32, ptr %i.p, align 8, !tbaa !3559 ; 2 uses
  %i.an = and i32 %i.am, 32784
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !367
  %i.aq = or i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !367
  %i.ar = or i32 %i.am, %i.af
  store i32 %i.ar, ptr %i.p, align 8, !tbaa !3559
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3796
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %sqlite3ResolveExprNames.exit.thread, label %sqlite3ResolveExprNames.exit

sqlite3ResolveExprNames.exit.thread:              ; preds = %sqlite3ExprCheckHeight.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br label %bb.h

sqlite3ResolveExprNames.exit:                     ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !313
  %i.ax = icmp slt i32 %i.aw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br i1 %i.ax, label %bb.f, label %bb.h

bb.f:                                             ; preds = %sqlite3ResolveExprNames.exit.thread28, %sqlite3ResolveExprNames.exit
  %.not25 = icmp eq ptr %4, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = call fastcc i32 @sqlite3ResolveExprListNames(ptr noundef %6, ptr noundef nonnull %4)
  br label %bb.h

bb.h:                                             ; preds = %sqlite3ResolveExprNames.exit.thread, %bb.f, %bb.g, %sqlite3ResolveExprNames.exit
  %.018 = phi i32 [ 1, %sqlite3ResolveExprNames.exit ], [ %i.ay, %bb.g ], [ 0, %bb.f ], [ 1, %sqlite3ResolveExprNames.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  ret i32 %.018
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @estimateIndexWidth(ptr nofree noundef captures(none) %0) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1098
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !882  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i16, ptr %i.e, align 8, !tbaa !875  ; 4 uses
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %sqlite3LogEst.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !878  ; 3 uses
  %wide.trip.count = zext i16 %i.f to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i16 %i.f, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %.019 = phi i32 [ 0, %.lr.ph.new ], [ %i.ad, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !330  ; 2 uses
  %i.l = icmp slt i16 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i16 %i.k to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %i.p = load i8, ptr %i.o, align 2, !tbaa !3285
  %i.q = zext i8 %i.p to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %i.q, %bb.c ], [ 1, %bb.b ]
  %i.s = add i32 %i.r, %.019
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !330  ; 2 uses
  %i.w = icmp slt i16 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_6
begin_hunk_7_@sqlite3VdbeAddParseSchemaOp:bb.a
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.z = icmp eq i32 %i.l, 3
  br i1 %i.z, label %.epil.preheader, label %.peel.next13.new

.peel.next13.new:                                 ; preds = %.peel.next13
  %i.aa = and i64 %wide.trip.count, 2147483646
  %i.ab = add nsw i64 %i.aa, -4
  br label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeUsesBtree.exit.1, %.peel.next13.new
  %indvars.iv = phi i64 [ 2, %.peel.next13.new ], [ %indvars.iv.next.1, %sqlite3VdbeUsesBtree.exit.1 ] ; 4 uses
  %i.ac = phi i32 [ %i.x, %.peel.next13.new ], [ %i.ao, %sqlite3VdbeUsesBtree.exit.1 ]
  %niter = phi i64 [ 0, %.peel.next13.new ], [ %niter.next.1, %sqlite3VdbeUsesBtree.exit.1 ] ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 1, %i.ad                    ; 2 uses
  %i.af = or i32 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr i8, ptr %i.ai, i64 17
  %.val.i = load i8, ptr %i.aj, align 1, !tbaa !592
  %.not6.i = icmp eq i8 %.val.i, 0
  br i1 %.not6.i, label %sqlite3VdbeUsesBtree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !945
  %i.al = or i32 %i.ak, %i.ae
  store i32 %i.al, ptr %i.p, align 8, !tbaa !945
  br label %sqlite3VdbeUsesBtree.exit

sqlite3VdbeUsesBtree.exit:                        ; preds = %bb.e, %bb.f
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.an = shl nuw i32 1, %i.am                    ; 2 uses
  %i.ao = or i32 %i.af, %i.an                     ; 3 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62
  %i.as = getelementptr i8, ptr %i.ar, i64 17
  %.val.i.1 = load i8, ptr %i.as, align 1, !tbaa !592
  %.not6.i.1 = icmp eq i8 %.val.i.1, 0
  br i1 %.not6.i.1, label %sqlite3VdbeUsesBtree.exit.1, label %bb.g

bb.g:                                             ; preds = %sqlite3VdbeUsesBtree.exit
  %i.at = load i32, ptr %i.p, align 8, !tbaa !945
  %i.au = or i32 %i.at, %i.an
  store i32 %i.au, ptr %i.p, align 8, !tbaa !945
  br label %sqlite3VdbeUsesBtree.exit.1

sqlite3VdbeUsesBtree.exit.1:                      ; preds = %bb.g, %sqlite3VdbeUsesBtree.exit
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.ab
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !4079

._crit_edge.loopexit.unr-lcssa:                   ; preds = %sqlite3VdbeUsesBtree.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.peel.next13
  %indvars.iv.epil.init = phi i64 [ 2, %.peel.next13 ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %i.x, %.peel.next13 ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.av = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.aw = shl nuw i32 1, %i.av                    ; 2 uses
  %i.ax = or i32 %.epil.init, %i.aw               ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %indvars.iv.epil.init
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  %i.bb = getelementptr i8, ptr %i.ba, i64 17
  %.val.i.epil = load i8, ptr %i.bb, align 1, !tbaa !592
  %.not6.i.epil = icmp eq i8 %.val.i.epil, 0
  br i1 %.not6.i.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.bc = load i32, ptr %i.p, align 8, !tbaa !945
  %i.bd = or i32 %i.bc, %i.aw
  store i32 %i.bd, ptr %i.p, align 8, !tbaa !945
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %sqlite3VdbeUsesBtree.exit.peel17, %sqlite3VdbeUsesBtree.exit.peel
  %.lcssa = phi i32 [ %i.x, %sqlite3VdbeUsesBtree.exit.peel17 ], [ %i.q, %sqlite3VdbeUsesBtree.exit.peel ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.ax, %bb.h ], [ %i.ax, %.epil.preheader ]
  store i32 %.lcssa, ptr %i.n, align 4, !tbaa !944
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %sqlite3VdbeChangeP5.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !975 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3544 ; 2 uses
  %.not.i10 = icmp eq ptr %i.bh, null
  %..i = select i1 %.not.i10, ptr %i.bf, ptr %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %..i, i64 39 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = or i16 %i.bj, 2
  store i16 %i.bk, ptr %i.bi, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @isDupColumn(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -2147483648, 65535) %3) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !878
  %i.c = sext i32 %3 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !330
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph, label %sqlite3StrICmp.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !878
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3StrICmp.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3StrICmp.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !330
  %i.m = icmp eq i16 %i.l, %i.e
  br i1 %i.m, label %bb.c, label %sqlite3StrICmp.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !2803
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !251
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !2803
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !251
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.013.i = phi ptr [ %i.s, %bb.c ], [ %i.ae, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ %i.p, %bb.c ], [ %i.ad, %bb.g ] ; 2 uses
  %i.t = load i8, ptr %.0.i, align 1, !tbaa !227  ; 3 uses
  %i.u = load i8, ptr %.013.i, align 1, !tbaa !227 ; 2 uses
  %i.v = icmp eq i8 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i8 %i.t, 0
  br i1 %i.w, label %sqlite3StrICmp.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = zext i8 %i.t to i64
  %i.y = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !227
  %i.aa = zext i8 %i.u to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !227
  %.not.i = icmp eq i8 %i.z, %i.ac
  br i1 %.not.i, label %bb.g, label %sqlite3StrICmp.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  br label %bb.d

sqlite3StrICmp.exit:                              ; preds = %bb.f, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %sqlite3StrICmp.exit.thread, label %bb.b, !llvm.loop !4063

sqlite3StrICmp.exit.thread:                       ; preds = %sqlite3StrICmp.exit, %bb.e, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %sqlite3StrICmp.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @recomputeColumnsNotIndexed(ptr nofree noundef captures(none) %0) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i16, ptr %i.a, align 8, !tbaa !875  ; 2 uses
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1098
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !878
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = zext i16 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.017 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.j = load i16, ptr %i.i, align 2, !tbaa !330  ; 3 uses
  %i.k = icmp sgt i16 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %1 = load ptr, ptr %i.g, align 8, !tbaa !882
  %2 = zext nneg i16 %i.j to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.n = load i16, ptr %i.m, align 2, !tbaa !883
  %i.o = and i16 %i.n, 32
  %i.p = icmp eq i16 %i.o, 0
  %i.q = icmp samesign ult i16 %i.j, 63
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl nuw nsw i64 1, %2
  %i.s = or i64 %i.r, %.017
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi i64 [ %i.s, %bb.d ], [ %.017, %bb.c ], [ %.017, %bb.b ] ; 2 uses
  %i.t = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.t, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !4071

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.u = xor i64 %.1, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ -1, %bb.a ], [ %i.u, %._crit_edge.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.0.lcssa, ptr %i.v, align 8, !tbaa !4072
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3ResolveExprNames(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Walker, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3559 ; 3 uses
  %i.d = and i32 %i.c, -134254609
  store i32 %i.d, ptr %i.b, align 8, !tbaa !3559
  %i.e = load ptr, ptr %0, align 8, !tbaa !3555   ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !3506
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @resolveExprStep, ptr %i.f, align 8, !tbaa !3507
  %i.g = and i32 %i.c, 524288
  %.not = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, ptr @resolveSelectStep, ptr null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !3508
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.j, align 8, !tbaa !3648
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %0, ptr %i.k, align 8, !tbaa !227
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3496
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 308 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3704
  %i.p = add nsw i32 %i.o, %i.m                   ; 2 uses
  store i32 %i.p, ptr %i.n, align 4, !tbaa !3704
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !651
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !5    ; 2 uses
  %i.t = icmp sgt i32 %i.p, %i.s
  br i1 %i.t, label %sqlite3ExprCheckHeight.exit, label %bb.c

sqlite3ExprCheckHeight.exit:                      ; preds = %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.796, i32 noundef %i.s)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = and i32 %i.c, 134254608
  %i.v = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %2, ptr noundef nonnull %1) ; 0 uses
  %i.w = load i32, ptr %i.l, align 8, !tbaa !3496
  %i.x = load ptr, ptr %2, align 8, !tbaa !3506   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 308 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3704
  %i.aa = sub nsw i32 %i.z, %i.w
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !3704
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !3559 ; 2 uses
  %i.ac = and i32 %i.ab, 32784
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !367
  %i.af = or i32 %i.ae, %i.ac
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !367
  %i.ag = or i32 %i.ab, %i.u
  store i32 %i.ag, ptr %i.b, align 8, !tbaa !3559
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3796
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !313
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  br label %bb.e

bb.e:                                             ; preds = %sqlite3ExprCheckHeight.exit, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 1, %sqlite3ExprCheckHeight.exit ], [ 0, %bb.a ], [ 1, %bb.c ], [ %i.an, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3ResolveExprListNames(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Walker, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !3555   ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !3506
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @resolveExprStep, ptr %i.c, align 8, !tbaa !3507
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @resolveSelectStep, ptr %i.d, align 8, !tbaa !3508
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !3648
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %0, ptr %i.f, align 8, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3559 ; 2 uses
  %i.i = and i32 %i.h, 134254608                  ; 2 uses
  %i.j = and i32 %i.h, -134254609                 ; 3 uses
  store i32 %i.j, ptr %i.g, align 8, !tbaa !3559
  %i.k = load i32, ptr %1, align 8, !tbaa !5      ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %i.n = phi i32 [ %i.j, %.lr.ph ], [ %i.au, %bb.h ]
  %i.o = phi i32 [ %i.k, %.lr.ph ], [ %i.av, %bb.h ]
  %i.p = phi ptr [ %i.b, %.lr.ph ], [ %i.aw, %bb.h ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.02441 = phi i32 [ %i.i, %.lr.ph ], [ %.226, %bb.h ] ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !902  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !3496
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 308 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3704
  %i.x = add nsw i32 %i.w, %i.u                   ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !3704
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !651
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 148
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !5   ; 2 uses
  %i.ab = icmp sgt i32 %i.x, %i.aa
  br i1 %i.ab, label %sqlite3ExprCheckHeight.exit, label %bb.e

sqlite3ExprCheckHeight.exit:                      ; preds = %bb.d
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.796, i32 noundef %i.aa)
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %2, ptr noundef nonnull %i.r) ; 0 uses
  %i.ad = load i32, ptr %i.t, align 8, !tbaa !3496
  %i.ae = load ptr, ptr %2, align 8, !tbaa !3506  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 308 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3704
  %i.ah = sub nsw i32 %i.ag, %i.ad
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !3704
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !3559 ; 4 uses
  %i.aj = and i32 %i.ai, 134254608                ; 2 uses
  %.not30 = icmp eq i32 %i.aj, 0
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = and i32 %i.ai, 32784
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !367
  %i.an = or i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.al, align 4, !tbaa !367
  %i.ao = or i32 %i.aj, %.02441
  %i.ap = and i32 %i.ai, -134254609               ; 2 uses
  store i32 %i.ap, ptr %i.g, align 8, !tbaa !3559
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = phi i32 [ %i.ap, %bb.f ], [ %i.ai, %bb.e ]
  %.125 = phi i32 [ %i.ao, %bb.f ], [ %.02441, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !313
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.thread, label %._crit_edge46

._crit_edge46:                                    ; preds = %bb.g
  %.pre = load i32, ptr %1, align 8, !tbaa !5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge46, %bb.c
  %i.au = phi i32 [ %i.aq, %._crit_edge46 ], [ %i.n, %bb.c ] ; 2 uses
  %i.av = phi i32 [ %.pre, %._crit_edge46 ], [ %i.o, %bb.c ] ; 2 uses
  %i.aw = phi ptr [ %i.ae, %._crit_edge46 ], [ %i.p, %bb.c ]
  %.226 = phi i32 [ %.125, %._crit_edge46 ], [ %.02441, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = sext i32 %i.av to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
end_hunk_7
begin_hunk_8_@resolveExprStep:bb.a
bb.iu:                                            ; preds = %.critedge.i664.i
  %i.avc = getelementptr inbounds nuw i8, ptr %i.aus, i64 84
  store i32 %i.aux, ptr %i.avc, align 4, !tbaa !373
  br label %.thread903.i

.thread903.i:                                     ; preds = %.critedge2.i.i394, %bb.iu, %.critedge.i664.i, %bb.is
  %i.avd = load i16, ptr %i.hi, align 1
  %i.ave = or i16 %i.avd, 256
  store i16 %i.ave, ptr %i.hi, align 1
  %i.avf = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !3796
  %i.avh = add nsw i32 %i.avg, 1
  store i32 %i.avh, ptr %i.avf, align 4, !tbaa !3796
  br label %.thread897.i

bb.iv:                                            ; preds = %bb.ij, %bb.ii, %bb.ig
  %.14697.i = phi ptr [ %.11695.i, %bb.ig ], [ %.11695.i, %bb.ij ], [ %i.aui, %bb.ii ]
  store i8 -84, ptr %1, align 8, !tbaa !3021
  %i.avi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.739, ptr %i.avi, align 8, !tbaa !227
  %i.avj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.14697.i, ptr %i.avj, align 8, !tbaa !227
  br label %.thread908.i

.thread897.i:                                     ; preds = %sqlite3IsRowid.exit627.i, %.thread903.i, %bb.gg, %bb.gf, %bb.gd, %sqlite3TableColumnToStorage.exit614.i, %sqlite3TableColumnToStorage.exit.i, %bb.fw
  %.1346837866890.i = phi ptr [ %.1346837866889.i, %.thread903.i ], [ %.0345.i, %bb.gg ], [ %.0345.i, %bb.fw ], [ %.0345.i, %sqlite3TableColumnToStorage.exit.i ], [ %.0345.i, %sqlite3TableColumnToStorage.exit614.i ], [ %.0345.i, %bb.gd ], [ %.0345.i, %bb.gf ], [ %.0345.i, %sqlite3IsRowid.exit627.i ]
  %.15410834868887.i = phi ptr [ %.8403.i, %.thread903.i ], [ null, %bb.gg ], [ null, %bb.fw ], [ null, %sqlite3TableColumnToStorage.exit.i ], [ null, %sqlite3TableColumnToStorage.exit614.i ], [ null, %bb.gd ], [ null, %bb.gf ], [ %.8403.i, %sqlite3IsRowid.exit627.i ] ; 3 uses
  %.4393765784832870884.i = phi ptr [ %.4393.i, %.thread903.i ], [ %i.yx, %bb.gg ], [ %i.yx, %bb.fw ], [ %i.yx, %sqlite3TableColumnToStorage.exit.i ], [ %i.yx, %sqlite3TableColumnToStorage.exit614.i ], [ %i.yx, %bb.gd ], [ %i.yx, %bb.gf ], [ %.4393.i, %sqlite3IsRowid.exit627.i ]
  %.4388.i = phi i8 [ 122, %.thread903.i ], [ 78, %bb.gg ], [ -88, %bb.fw ], [ -80, %sqlite3TableColumnToStorage.exit.i ], [ -80, %sqlite3TableColumnToStorage.exit614.i ], [ 78, %bb.gd ], [ 78, %bb.gf ], [ -88, %sqlite3IsRowid.exit627.i ]
  %.21.i = phi i1 [ false, %.thread903.i ], [ true, %bb.gg ], [ true, %bb.fw ], [ true, %sqlite3TableColumnToStorage.exit.i ], [ true, %sqlite3TableColumnToStorage.exit614.i ], [ true, %bb.gd ], [ true, %bb.gf ], [ true, %sqlite3IsRowid.exit627.i ]
  %i.avk = load i32, ptr %i.hf, align 4, !tbaa !367
  %i.avl = and i32 %i.avk, 8454144
  %.not457.i = icmp eq i32 %i.avl, 0
  br i1 %.not457.i, label %bb.iw, label %bb.iz

bb.iw:                                            ; preds = %.thread897.i
  %i.avm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !371 ; 2 uses
  %.not.i665.i = icmp eq ptr %i.avn, null
  br i1 %.not.i665.i, label %sqlite3ExprDelete.exit666.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.gz, ptr noundef %i.avn), !inline_history !4103
  br label %sqlite3ExprDelete.exit666.i

sqlite3ExprDelete.exit666.i:                      ; preds = %bb.ix, %bb.iw
  store ptr null, ptr %i.avm, align 8, !tbaa !371
  %i.avo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !1157 ; 2 uses
  %.not.i667.i = icmp eq ptr %i.avp, null
  br i1 %.not.i667.i, label %sqlite3ExprDelete.exit668.i, label %bb.iy

bb.iy:                                            ; preds = %sqlite3ExprDelete.exit666.i
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.gz, ptr noundef %i.avp), !inline_history !4103
  br label %sqlite3ExprDelete.exit668.i

sqlite3ExprDelete.exit668.i:                      ; preds = %bb.iy, %sqlite3ExprDelete.exit666.i
  store ptr null, ptr %i.avo, align 8, !tbaa !1157
  %i.avq = load i32, ptr %i.hf, align 4, !tbaa !367
  %i.avr = or i32 %i.avq, 8388608
  store i32 %i.avr, ptr %i.hf, align 4, !tbaa !367
  br label %bb.iz

bb.iz:                                            ; preds = %sqlite3ExprDelete.exit668.i, %.thread897.i
  %.not458.i = icmp eq ptr %.15410834868887.i, null
  br i1 %.not458.i, label %bb.jg, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.avs = load i16, ptr %i.ha, align 8, !tbaa !3487 ; 3 uses
  %i.avt = icmp sgt i16 %i.avs, -1
  br i1 %i.avt, label %bb.jb, label %bb.jf

bb.jb:                                            ; preds = %bb.ja
  %.val480.i = load ptr, ptr %i.hd, align 8, !tbaa !227 ; 3 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %.val480.i, i64 48
  %i.avv = load i32, ptr %i.avu, align 8, !tbaa !788
  %i.avw = and i32 %i.avv, 96
  %.not.i669.i = icmp eq i32 %i.avw, 0
  br i1 %.not.i669.i, label %bb.je, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.avx = getelementptr inbounds nuw i8, ptr %.val480.i, i64 8
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !882
  %i.avz = zext nneg i16 %i.avs to i64
  %i.awa = getelementptr inbounds nuw [16 x i8], ptr %i.avy, i64 %i.avz
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 14
  %i.awc = load i16, ptr %i.awb, align 2, !tbaa !883
  %i.awd = and i16 %i.awc, 96
  %.not10.i670.i = icmp eq i16 %i.awd, 0
  br i1 %.not10.i670.i, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.awe = getelementptr inbounds nuw i8, ptr %.val480.i, i64 54
  %i.awf = load i16, ptr %i.awe, align 2, !tbaa !881 ; 2 uses
  %i.awg = icmp sgt i16 %i.awf, 63
  %i.awh = sext i16 %i.awf to i64
  %i.awi = and i64 %i.awh, 4294967295
  %notmask.i.i = shl nsw i64 -1, %i.awi
  %i.awj = xor i64 %notmask.i.i, -1
  %i.awk = select i1 %i.awg, i64 -1, i64 %i.awj
  br label %sqlite3ExprColUsed.exit.i

bb.je:                                            ; preds = %bb.jc, %bb.jb
  %i.awl = tail call i16 @llvm.umin.i16(i16 %i.avs, i16 63)
  %spec.store.select.i.i = zext nneg i16 %i.awl to i64
  %i.awm = shl nuw i64 1, %spec.store.select.i.i
  br label %sqlite3ExprColUsed.exit.i

sqlite3ExprColUsed.exit.i:                        ; preds = %bb.je, %bb.jd
  %.0.i671.i = phi i64 [ %i.awk, %bb.jd ], [ %i.awm, %bb.je ]
  %i.awn = getelementptr inbounds nuw i8, ptr %.15410834868887.i, i64 32 ; 2 uses
  %i.awo = load i64, ptr %i.awn, align 8, !tbaa !3702
  %i.awp = or i64 %i.awo, %.0.i671.i
  store i64 %i.awp, ptr %i.awn, align 8, !tbaa !3702
  br label %bb.jg

bb.jf:                                            ; preds = %bb.ja
  %i.awq = getelementptr inbounds nuw i8, ptr %.15410834868887.i, i64 25 ; 2 uses
  %i.awr = load i16, ptr %i.awq, align 1
  %i.aws = or i16 %i.awr, -32768
  store i16 %i.aws, ptr %i.awq, align 1
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %sqlite3ExprColUsed.exit.i, %bb.iz
  store i8 %.4388.i, ptr %1, align 8, !tbaa !3021
  br i1 %.21.i, label %.thread908.i, label %lookupName.exit

.thread908.i:                                     ; preds = %bb.hl, %bb.jg, %bb.iv, %bb.hk, %bb.hj, %sqlite3ExprVectorSize.exit.thread.i
  %.4393766913.i = phi ptr [ %.4393765784832870884.i, %bb.jg ], [ %.4393.i, %bb.iv ], [ %.4393.i, %sqlite3ExprVectorSize.exit.thread.i ], [ %.4393.i, %bb.hk ], [ %.4393.i, %bb.hj ], [ %.4393.i, %bb.hl ] ; 2 uses
  %.1346836912.i = phi ptr [ %.1346837866890.i, %bb.jg ], [ %.1346837866889.i, %bb.iv ], [ %.0345.i, %sqlite3ExprVectorSize.exit.thread.i ], [ %.0345.i, %bb.hk ], [ %.0345.i, %bb.hj ], [ %.0345.i, %bb.hl ] ; 3 uses
  %i.awt = load ptr, ptr %i.c, align 8, !tbaa !651 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 528
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !1018
  %.not459.i = icmp eq ptr %i.awv, null
  br i1 %.not459.i, label %sqlite3AuthRead.exit.i, label %bb.jh

bb.jh:                                            ; preds = %.thread908.i
  %i.aww = load i8, ptr %1, align 8, !tbaa !3021  ; 2 uses
  switch i8 %i.aww, label %sqlite3AuthRead.exit.i [
    i8 -88, label %bb.ji
    i8 78, label %bb.ji
  ]

bb.ji:                                            ; preds = %bb.jh, %bb.jh
  %i.awx = getelementptr inbounds nuw i8, ptr %.1346836912.i, i64 8
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !3558 ; 2 uses
  %.not.i.i672.i = icmp eq ptr %.4393766913.i, null
  br i1 %.not.i.i672.i, label %sqlite3AuthRead.exit.i, label %.preheader.i.i673.i

.preheader.i.i673.i:                              ; preds = %bb.ji
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awt, i64 32
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !61
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jj, %.preheader.i.i673.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.jj ], [ 0, %.preheader.i.i673.i ] ; 3 uses
  %i.axb = getelementptr inbounds nuw [32 x i8], ptr %i.axa, i64 %indvars.iv.i.i.i
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 24
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !101
  %i.axe = icmp eq ptr %i.axd, %.4393766913.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %i.axe, label %sqlite3SchemaToIndex.exit.i.i, label %bb.jj

sqlite3SchemaToIndex.exit.i.i:                    ; preds = %bb.jj
  %i.axf = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.axg = icmp eq i8 %i.aww, 78
  br i1 %i.axg, label %bb.jn, label %.preheader.i674.i

.preheader.i674.i:                                ; preds = %sqlite3SchemaToIndex.exit.i.i
  %i.axh = load i32, ptr %i.awy, align 8, !tbaa !5 ; 2 uses
  %i.axi = icmp sgt i32 %i.axh, 0
  br i1 %i.axi, label %.lr.ph.i675.i, label %sqlite3AuthRead.exit.i

.lr.ph.i675.i:                                    ; preds = %.preheader.i674.i
  %i.axj = load i32, ptr %i.gx, align 4, !tbaa !3581
  %i.axk = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  %wide.trip.count.i676.i = zext nneg i32 %i.axh to i64
  br label %bb.jl

bb.jk:                                            ; preds = %bb.jl
  %indvars.iv.next.i678.i = add nuw nsw i64 %indvars.iv.i677.i, 1 ; 2 uses
  %exitcond.not.i679.i = icmp eq i64 %indvars.iv.next.i678.i, %wide.trip.count.i676.i
  br i1 %exitcond.not.i679.i, label %sqlite3AuthRead.exit.i, label %bb.jl, !llvm.loop !4104

bb.jl:                                            ; preds = %bb.jk, %.lr.ph.i675.i
  %indvars.iv.i677.i = phi i64 [ 0, %.lr.ph.i675.i ], [ %indvars.iv.next.i678.i, %bb.jk ] ; 2 uses
  %i.axl = getelementptr inbounds nuw [72 x i8], ptr %i.axk, i64 %indvars.iv.i677.i ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 28
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !3554
  %i.axo = icmp eq i32 %i.axj, %i.axn
  br i1 %i.axo, label %bb.jm, label %bb.jk

bb.jm:                                            ; preds = %bb.jl
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axl, i64 16
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %sqlite3SchemaToIndex.exit.i.i
  %.0.in.i.i = phi ptr [ %i.axp, %bb.jm ], [ %i.hg, %sqlite3SchemaToIndex.exit.i.i ]
  %.0.i680.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !3525 ; 5 uses
  %i.axq = load i16, ptr %i.ha, align 8, !tbaa !3487 ; 2 uses
  %4 = zext nneg i16 %i.axq to i64
  %i.axr = icmp eq ptr %.0.i680.i, null
  br i1 %i.axr, label %sqlite3AuthRead.exit.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.axs = icmp sgt i16 %i.axq, -1
  br i1 %i.axs, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.axt = getelementptr inbounds nuw i8, ptr %.0.i680.i, i64 8
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !882
  %i.axv = getelementptr inbounds nuw [16 x i8], ptr %i.axu, i64 %4
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !929
  br label %bb.js

bb.jq:                                            ; preds = %bb.jo
  %i.axx = getelementptr inbounds nuw i8, ptr %.0.i680.i, i64 52
  %i.axy = load i16, ptr %i.axx, align 4, !tbaa !891 ; 2 uses
  %i.axz = icmp sgt i16 %i.axy, -1
  br i1 %i.axz, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.aya = getelementptr inbounds nuw i8, ptr %.0.i680.i, i64 8
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !882
  %i.ayc = zext nneg i16 %i.axy to i64
  %i.ayd = getelementptr inbounds nuw [16 x i8], ptr %i.ayb, i64 %i.ayc
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !929
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq, %bb.jp
  %.025.i.i = phi ptr [ %i.axw, %bb.jp ], [ %i.aye, %bb.jr ], [ @.str.746, %bb.jq ]
  %i.ayf = load ptr, ptr %.0.i680.i, align 8, !tbaa !947
  %i.ayg = tail call fastcc i32 @sqlite3AuthReadCol(ptr noundef nonnull %i.c, ptr noundef %i.ayf, ptr noundef %.025.i.i, i32 noundef %i.axf), !inline_history !4105
  %i.ayh = icmp eq i32 %i.ayg, 2
  br i1 %i.ayh, label %bb.jt, label %sqlite3AuthRead.exit.i

bb.jt:                                            ; preds = %bb.js
  store i8 122, ptr %1, align 8, !tbaa !3021
  br label %sqlite3AuthRead.exit.i

sqlite3AuthRead.exit.i:                           ; preds = %bb.jk, %bb.jt, %bb.js, %bb.jn, %.preheader.i674.i, %bb.ji, %bb.jh, %.thread908.i
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ayj = load i32, ptr %i.ayi, align 8, !tbaa !4081
  %i.ayk = add nsw i32 %i.ayj, 1
  store i32 %i.ayk, ptr %i.ayi, align 8, !tbaa !4081
  %i.ayl = icmp eq ptr %i.b, %.1346836912.i
  br i1 %i.ayl, label %lookupName.exit, label %.lr.ph1062.i

.lr.ph1062.i:                                     ; preds = %sqlite3AuthRead.exit.i, %.lr.ph1062.i
  %.03941061.i = phi ptr [ %i.ayn, %.lr.ph1062.i ], [ %i.b, %sqlite3AuthRead.exit.i ]
  %i.aym = getelementptr inbounds nuw i8, ptr %.03941061.i, i64 24
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !4082 ; 3 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 32 ; 2 uses
  %i.ayp = load i32, ptr %i.ayo, align 8, !tbaa !4081
  %i.ayq = add nsw i32 %i.ayp, 1
  store i32 %i.ayq, ptr %i.ayo, align 8, !tbaa !4081
  %i.ayr = icmp eq ptr %i.ayn, %.1346836912.i
  br i1 %i.ayr, label %lookupName.exit, label %.lr.ph1062.i

bb.ju:                                            ; preds = %bb.a
  %i.ays = load ptr, ptr %i.c, align 8, !tbaa !651 ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 100
  %i.ayu = load i8, ptr %i.ayt, align 4, !tbaa !844 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 10 uses
  %i.ayw = load i32, ptr %i.ayv, align 8, !tbaa !3559
  %i.ayx = and i32 %i.ayw, 16385
  %i.ayy = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 12 uses
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !367
  %i.aza = and i32 %i.ayz, 16777216
  %.not332 = icmp eq i32 %i.aza, 0
  br i1 %.not332, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.azb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !227 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 32
  %i.aze = load i8, ptr %i.azd, align 8, !tbaa !3514
  %.not333 = icmp eq i8 %i.aze, -89
  %spec.select = select i1 %.not333, ptr null, ptr %i.azc
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %i.azf = phi ptr [ null, %bb.ju ], [ %spec.select, %bb.jv ] ; 11 uses
  %i.azg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !227 ; 6 uses
  %.not334 = icmp eq ptr %i.azh, null             ; 2 uses
  br i1 %.not334, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.azi = load i32, ptr %i.azh, align 8, !tbaa !5
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jw, %bb.jx
  %i.azj = phi i32 [ %i.azi, %bb.jx ], [ 0, %bb.jw ] ; 6 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !227 ; 2 uses
  %i.azm = tail call fastcc ptr @sqlite3FindFunction(ptr noundef nonnull %i.ays, ptr noundef %i.azl, i32 noundef %i.azj, i8 noundef zeroext %i.ayu, i8 noundef zeroext 0) ; 9 uses
  %i.azn = icmp eq ptr %i.azm, null
  br i1 %i.azn, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.azo = load ptr, ptr %i.c, align 8, !tbaa !651
  %i.azp = tail call fastcc ptr @sqlite3FindFunction(ptr noundef %i.azo, ptr noundef %i.azl, i32 noundef -2, i8 noundef zeroext %i.ayu, i8 noundef zeroext 0) ; 2 uses
  %i.azq = icmp eq ptr %i.azp, null               ; 2 uses
  %not. = xor i1 %i.azq, true
  br label %bb.ld

bb.ka:                                            ; preds = %bb.jy
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azm, i64 32
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !1264
  %i.azt = icmp ne ptr %i.azs, null               ; 5 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azm, i64 4 ; 3 uses
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !1262
  %i.azw = and i32 %i.azv, 1024
  %.not335 = icmp eq i32 %i.azw, 0
  br i1 %.not335, label %bb.kf, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.azx = load i32, ptr %i.ayy, align 4, !tbaa !367
  %i.azy = or i32 %i.azx, 524288
  store i32 %i.azy, ptr %i.ayy, align 4, !tbaa !367
  %i.azz = icmp eq i32 %i.azj, 2
  br i1 %i.azz, label %bb.kc, label %bb.ke

bb.kc:                                            ; preds = %bb.kb
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azh, i64 32
  %i.bab = load ptr, ptr %i.baa, align 8, !tbaa !902
  %i.bac = tail call fastcc i32 @exprProbability(ptr noundef %i.bab) ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.bac, ptr %i.bad, align 4, !tbaa !3581
  %i.bae = icmp slt i32 %i.bac, 0
  br i1 %i.bae, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.715, ptr noundef nonnull %1)
  %i.baf = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.bag = load i32, ptr %i.baf, align 4, !tbaa !3796
  %i.bah = add nsw i32 %i.bag, 1
  store i32 %i.bah, ptr %i.baf, align 4, !tbaa !3796
  br label %bb.kf

bb.ke:                                            ; preds = %bb.kb
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azm, i64 56
  %i.baj = load ptr, ptr %i.bai, align 8, !tbaa !223
  %i.bak = load i8, ptr %i.baj, align 1, !tbaa !227
  %i.bal = icmp eq i8 %i.bak, 117
  %i.bam = select i1 %i.bal, i32 8388608, i32 125829120
  %i.ban = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.bam, ptr %i.ban, align 4, !tbaa !3581
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %bb.kc, %bb.ka
  %i.bao = getelementptr inbounds nuw i8, ptr %i.azm, i64 56
  %i.bap = load ptr, ptr %i.bao, align 8, !tbaa !223
  %i.baq = load ptr, ptr %i.c, align 8, !tbaa !651 ; 3 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 528
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !1018 ; 2 uses
  %i.bat = icmp eq ptr %i.bas, null
  br i1 %i.bat, label %.critedge366, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bau = getelementptr inbounds nuw i8, ptr %i.baq, i64 197
  %i.bav = load i8, ptr %i.bau, align 1, !tbaa !535
  %.not.i402 = icmp eq i8 %i.bav, 0
  br i1 %.not.i402, label %bb.kh, label %.critedge366

bb.kh:                                            ; preds = %bb.kg
  %i.baw = getelementptr inbounds nuw i8, ptr %i.c, i64 300
  %i.bax = load i8, ptr %i.baw, align 4, !tbaa !1091
  %.not22.i = icmp eq i8 %i.bax, 0
  br i1 %.not22.i, label %bb.ki, label %.critedge366

bb.ki:                                            ; preds = %bb.kh
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baq, i64 536
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !1019
  %i.bba = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !3542
  %i.bbc = tail call i32 %i.bas(ptr noundef %i.baz, i32 noundef 31, ptr noundef null, ptr noundef %i.bap, ptr noundef null, ptr noundef %i.bbb) #59, !inline_history !3543 ; 3 uses
  %i.bbd = icmp eq i32 %i.bbc, 1
  br i1 %i.bbd, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bbe = and i32 %i.bbc, -3
  %or.cond.not.i = icmp eq i32 %i.bbe, 0
  br i1 %or.cond.not.i, label %sqlite3AuthCheck.exit, label %bb.kk

sqlite3AuthCheck.exit:                            ; preds = %bb.kj
  %.not336 = icmp eq i32 %i.bbc, 0
  br i1 %.not336, label %.critedge366, label %bb.kl

bb.kk:                                            ; preds = %bb.ki, %bb.kj
  %.str.649.sink.i = phi ptr [ @.str.649, %bb.ki ], [ @.str.690, %bb.kj ]
  %.sink.i403 = phi i32 [ 23, %bb.ki ], [ 1, %bb.kj ]
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.c, ptr noundef nonnull %.str.649.sink.i)
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.sink.i403, ptr %i.bbf, align 8, !tbaa !302
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.716, ptr noundef nonnull %1)
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.bbh = load i32, ptr %i.bbg, align 4, !tbaa !3796
  %i.bbi = add nsw i32 %i.bbh, 1
  store i32 %i.bbi, ptr %i.bbg, align 4, !tbaa !3796
end_hunk_8
begin_hunk_9_@viewGetColumnNames:bb.a
  br i1 %i.dx, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %sqlite3DbFree.exit.i83
  %i.dy = phi i16 [ %i.ea, %sqlite3DbFree.exit.i83 ], [ %i.dw, %.preheader.i ]
  %.020.i = phi ptr [ %i.ec, %sqlite3DbFree.exit.i83 ], [ %i.dv, %.preheader.i ] ; 2 uses
  %.01619.i = phi i32 [ %i.eb, %sqlite3DbFree.exit.i83 ], [ 0, %.preheader.i ]
  %i.dz = load ptr, ptr %.020.i, align 8, !tbaa !929 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i82, label %sqlite3DbFree.exit.i83, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.b, ptr noundef nonnull %i.dz), !inline_history !3468
  %.pre.i = load i16, ptr %i.bf, align 2, !tbaa !881
  br label %sqlite3DbFree.exit.i83

sqlite3DbFree.exit.i83:                           ; preds = %bb.ag, %.lr.ph.i
  %i.ea = phi i16 [ %i.dy, %.lr.ph.i ], [ %.pre.i, %bb.ag ] ; 2 uses
  %i.eb = add nuw nsw i32 %.01619.i, 1            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  %i.ed = sext i16 %i.ea to i32
  %i.ee = icmp slt i32 %i.eb, %i.ed
  br i1 %i.ee, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !3467

._crit_edge.loopexit.i:                           ; preds = %sqlite3DbFree.exit.i83
  %.pre21.i = load ptr, ptr %i.du, align 8, !tbaa !882
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ef = phi ptr [ %.pre21.i, %._crit_edge.loopexit.i ], [ %i.dv, %.preheader.i ]
  tail call fastcc void @sqlite3DbNNFreeNN(ptr noundef %i.b, ptr noundef %i.ef), !inline_history !3468
  %i.eg = load i8, ptr %i.c, align 1, !tbaa !922
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %bb.ah, label %sqlite3ExprListDelete.exit.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !227 ; 2 uses
  %.not.i18.i = icmp eq ptr %i.ej, null
  br i1 %.not.i18.i, label %sqlite3ExprListDelete.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.b, ptr noundef %i.ej), !inline_history !4182
  br label %sqlite3ExprListDelete.exit.i

sqlite3ExprListDelete.exit.i:                     ; preds = %bb.ai, %bb.ah, %._crit_edge.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 792
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !98
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.aj, label %sqlite3DeleteColumnNames.exit

bb.aj:                                            ; preds = %sqlite3ExprListDelete.exit.i
  store ptr null, ptr %i.du, align 8, !tbaa !882
  store i16 0, ptr %i.bf, align 2, !tbaa !881
  %i.en = load i8, ptr %i.c, align 1, !tbaa !922
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.ak, label %sqlite3DeleteColumnNames.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.ep, align 8, !tbaa !227
  br label %sqlite3DeleteColumnNames.exit

sqlite3DeleteColumnNames.exit:                    ; preds = %bb.ak, %bb.aj, %sqlite3ExprListDelete.exit.i, %bb.af, %bb.ae
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !313
  %i.es = add nsw i32 %i.er, %.1
  br label %bb.al

bb.al:                                            ; preds = %sqlite3DeleteColumnNames.exit, %bb.q, %sqlite3VtabCallConnect.exit
  %.0 = phi i32 [ %.0.i, %sqlite3VtabCallConnect.exit ], [ 1, %bb.q ], [ %i.es, %sqlite3DeleteColumnNames.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3SubqueryColumnTypes(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address) %2, i8 noundef signext range(i8 64, 66) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.NameContext, align 8        ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !651    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 103
  %i.c = load i8, ptr %i.b, align 1, !tbaa !550
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.e = load i8, ptr %i.d, align 4, !tbaa !1091
  %i.f = icmp ugt i8 %i.e, 1
  br i1 %i.f, label %bb.ar, label %.preheader123

.preheader123:                                    ; preds = %bb.b, %.preheader123
  %.0 = phi ptr [ %i.h, %.preheader123 ], [ %2, %bb.b ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3034 ; 2 uses
  %.not94 = icmp eq ptr %i.h, null
  br i1 %.not94, label %bb.c, label %.preheader123, !llvm.loop !4183

bb.c:                                             ; preds = %.preheader123
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3035
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3036
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !3558
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !881
  %i.q = icmp sgt i16 %i.p, 0
  br i1 %i.q, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !882
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 438
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 488 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 792
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph163, %bb.aq
  %indvars.iv = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next, %bb.aq ] ; 5 uses
  %.085160 = phi ptr [ %i.s, %.lr.ph163 ], [ %i.fk, %bb.aq ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.085160, i64 14 ; 6 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !883
  %i.ad = and i16 %i.ac, 98
  %i.ae = zext nneg i16 %i.ad to i32
  %i.af = load i32, ptr %i.t, align 8, !tbaa !788
  %i.ag = or i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.t, align 8, !tbaa !788
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !902 ; 4 uses
  %i.aj = call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef %i.ai) ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.085160, i64 9 ; 7 uses
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !905
  %i.al = icmp slt i8 %i.aj, 65
  br i1 %i.al, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d, %sqlite3ExprAffinity.exit
  %.082150 = phi ptr [ %i.av, %sqlite3ExprAffinity.exit ], [ %.0, %bb.d ] ; 2 uses
  %.083149 = phi i32 [ %i.au, %sqlite3ExprAffinity.exit ], [ 0, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %.082150, i64 80 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3661
  %.not95 = icmp eq ptr %i.an, null
  br i1 %.not95, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.082150, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !3035
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !902
  %i.at = call fastcc i32 @sqlite3ExprDataType(ptr noundef %i.as)
  %i.au = or i32 %i.at, %.083149                  ; 3 uses
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !3661 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3035
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %indvars.iv
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %bb.e
  %.024.ph.i.in = phi ptr [ %i.az, %bb.e ], [ %.024.ph.i.in.be, %.outer.i.backedge ]
  %.024.ph.i = load ptr, ptr %.024.ph.i.in, align 8, !tbaa !366 ; 12 uses
  %.0.in.ph.i = load i8, ptr %.024.ph.i, align 8, !tbaa !3021
  %i.ba = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 1 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.r, %.outer.i
  %.0.in.i = phi i8 [ %i.cq, %bb.r ], [ %.0.in.ph.i, %.outer.i ] ; 2 uses
  switch i8 %.0.in.i, label %bb.o [
    i8 -88, label %._crit_edge.i
    i8 -86, label %bb.g
    i8 -117, label %bb.j
    i8 36, label %bb.k
    i8 -78, label %bb.l
    i8 -79, label %bb.n
    i8 -84, label %bb.m
  ]

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.bb, align 8, !tbaa !227
  br label %split.i

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !227 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %bb.o, label %split.i

split.i:                                          ; preds = %bb.g, %._crit_edge.i
  %i.bf = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.be, %bb.g ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 48
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !3487 ; 3 uses
  %5 = zext nneg i16 %i.bh to i64
  %i.bi = icmp slt i16 %i.bh, 0
  br i1 %i.bi, label %sqlite3ExprAffinity.exit.thread, label %bb.h

bb.h:                                             ; preds = %split.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 54
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !881
  %.not.i.i = icmp slt i16 %i.bh, %i.bk
  br i1 %.not.i.i, label %bb.i, label %sqlite3ExprAffinity.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !882
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  br label %sqlite3ExprAffinity.exit

bb.j:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !227
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !3035
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  br label %.outer.i.backedge

bb.k:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !227
  %i.bw = call fastcc signext i8 @sqlite3AffinityType(ptr noundef %i.bv, ptr noundef null), !inline_history !4184
  br label %sqlite3ExprAffinity.exit.thread

bb.l:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !371
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !227
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !3035
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 48
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !3487
  %i.cg = sext i16 %i.cf to i64
  %i.ch = getelementptr inbounds [24 x i8], ptr %i.cd, i64 %i.cg
  br label %.outer.i.backedge

bb.m:                                             ; preds = %bb.f
  %i.ci = load i8, ptr %i.ba, align 1, !tbaa !3489
  %i.cj = icmp eq i8 %i.ci, 88
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !227
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  br label %.outer.i.backedge

bb.o:                                             ; preds = %bb.m, %bb.g, %bb.f
  %i.cn = load i32, ptr %i.bc, align 4, !tbaa !367
  %i.co = and i32 %i.cn, 270336
  %.not27.i = icmp eq i32 %i.co, 0
  br i1 %.not27.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 16
  br label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.p, %bb.n, %bb.l, %bb.j
  %.024.ph.i.in.be = phi ptr [ %i.cp, %bb.p ], [ %i.bt, %bb.j ], [ %i.ch, %bb.l ], [ %i.cm, %bb.n ]
  br label %.outer.i

bb.q:                                             ; preds = %bb.o
  %.not28.i = icmp eq i8 %.0.in.i, -80
  br i1 %.not28.i, label %bb.r, label %sqlite3ExprAffinity.exit

bb.r:                                             ; preds = %bb.q
  %i.cq = load i8, ptr %i.bd, align 2, !tbaa !3275 ; 2 uses
  %i.cr = icmp eq i8 %i.cq, -80
  br i1 %i.cr, label %sqlite3ExprAffinity.exit, label %bb.f

sqlite3ExprAffinity.exit.thread:                  ; preds = %split.i, %bb.h, %bb.k
  %.025.i.ph = phi i8 [ %i.bw, %bb.k ], [ 68, %bb.h ], [ 68, %split.i ] ; 2 uses
  store i8 %.025.i.ph, ptr %i.ak, align 1, !tbaa !905
  br label %.critedge

sqlite3ExprAffinity.exit:                         ; preds = %bb.q, %bb.r, %bb.i
  %.025.i.in = phi ptr [ %i.bo, %bb.i ], [ %i.ba, %bb.r ], [ %i.ba, %bb.q ]
  %.025.i = load i8, ptr %.025.i.in, align 1, !tbaa !227 ; 3 uses
  store i8 %.025.i, ptr %i.ak, align 1, !tbaa !905
  %i.cs = icmp slt i8 %.025.i, 65
  br i1 %i.cs, label %.lr.ph, label %.critedge, !llvm.loop !4185

.critedge:                                        ; preds = %sqlite3ExprAffinity.exit, %sqlite3ExprAffinity.exit.thread, %bb.d
  %storemerge.lcssa = phi i8 [ %i.aj, %bb.d ], [ %.025.i.ph, %sqlite3ExprAffinity.exit.thread ], [ %.025.i, %sqlite3ExprAffinity.exit ] ; 2 uses
  %.083.lcssa = phi i32 [ 0, %bb.d ], [ %i.au, %sqlite3ExprAffinity.exit.thread ], [ %i.au, %sqlite3ExprAffinity.exit ] ; 2 uses
  %.082.lcssa = phi ptr [ %.0, %bb.d ], [ %i.av, %sqlite3ExprAffinity.exit.thread ], [ %i.av, %sqlite3ExprAffinity.exit ] ; 2 uses
  %.not121 = icmp eq i8 %storemerge.lcssa, 65
  br i1 %.not121, label %.thread, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ct = getelementptr inbounds nuw i8, ptr %.082.lcssa, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !3661 ; 2 uses
  %.not96 = icmp eq ptr %i.cu, null               ; 2 uses
  %.not97 = icmp eq ptr %.082.lcssa, %.0
  %or.cond = and i1 %.not97, %.not96
  br i1 %or.cond, label %.thread, label %.preheader122

.preheader122:                                    ; preds = %bb.s
  br i1 %.not96, label %._crit_edge, label %.lr.ph156

.lr.ph156:                                        ; preds = %.preheader122, %.lr.ph156
  %.184155 = phi i32 [ %i.db, %.lr.ph156 ], [ %.083.lcssa, %.preheader122 ]
  %.1154 = phi ptr [ %.1.pr, %.lr.ph156 ], [ %i.cu, %.preheader122 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1154, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !3035
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %indvars.iv
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !902
  %i.da = call fastcc i32 @sqlite3ExprDataType(ptr noundef %i.cz)
  %i.db = or i32 %i.da, %.184155                  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1154, i64 80
  %.1.pr = load ptr, ptr %i.dc, align 8, !tbaa !3661 ; 2 uses
  %.not98 = icmp eq ptr %.1.pr, null
  br i1 %.not98, label %._crit_edge.loopexit, label %.lr.ph156, !llvm.loop !4186

._crit_edge.loopexit:                             ; preds = %.lr.ph156
  %.pre = load i8, ptr %i.ak, align 1, !tbaa !905
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader122
  %.pr = phi i8 [ %storemerge.lcssa, %.preheader122 ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.184.lcssa = phi i32 [ %.083.lcssa, %.preheader122 ], [ %i.db, %._crit_edge.loopexit ] ; 2 uses
  %i.dd = icmp ne i8 %.pr, 66
  %i.de = and i32 %.184.lcssa, 1
  %.not99 = icmp eq i32 %i.de, 0
  %or.cond105 = select i1 %i.dd, i1 true, i1 %.not99
  br i1 %or.cond105, label %bb.t, label %.thread.sink.split

bb.t:                                             ; preds = %._crit_edge
  %i.df = icmp slt i8 %.pr, 67
  %i.dg = and i32 %.184.lcssa, 2
  %.not100 = icmp eq i32 %i.dg, 0
  %or.cond106 = select i1 %i.df, i1 true, i1 %.not100
  br i1 %or.cond106, label %bb.u, label %.thread.sink.split

bb.u:                                             ; preds = %bb.t
  %i.dh = icmp sgt i8 %.pr, 66
  br i1 %i.dh, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.di = load i8, ptr %i.ai, align 8, !tbaa !3021
  %i.dj = icmp eq i8 %i.di, 36
  br i1 %i.dj, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %.lr.ph, %bb.v, %bb.t, %._crit_edge
  %.sink = phi i8 [ 70, %bb.v ], [ 65, %._crit_edge ], [ 65, %bb.t ], [ %3, %.lr.ph ]
  store i8 %.sink, ptr %i.ak, align 1, !tbaa !905
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.s, %bb.u, %bb.v, %.critedge
  %i.dk = call fastcc ptr @columnTypeImpl(ptr noundef %4, ptr noundef %i.ai, ptr noundef null, ptr noundef null, ptr noundef null) ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.dm = load i8, ptr %i.ak, align 1, !tbaa !905
  %i.dn = call fastcc signext i8 @sqlite3AffinityType(ptr noundef nonnull %i.dk, ptr noundef null)
  %.not101 = icmp eq i8 %i.dm, %i.dn
  br i1 %.not101, label %.thread112, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread
  %i.do = load i8, ptr %i.ak, align 1, !tbaa !905
  switch i8 %i.do, label %.thread116 [
    i8 67, label %.thread112
    i8 70, label %.thread112
    i8 65, label %bb.y
    i8 68, label %.fold.split
    i8 69, label %.fold.split236
    i8 66, label %.fold.split237
  ]

.fold.split:                                      ; preds = %bb.x
  br label %bb.y

.fold.split236:                                   ; preds = %bb.x
  br label %bb.y

.fold.split237:                                   ; preds = %bb.x
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.fold.split237, %.fold.split236, %.fold.split
  %.lcssa189 = phi i64 [ 1, %bb.x ], [ 2, %.fold.split ], [ 4, %.fold.split236 ], [ 5, %.fold.split237 ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @sqlite3StdType, i64 %.lcssa189
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !251 ; 2 uses
  %.not102 = icmp eq ptr %i.dq, null
  br i1 %.not102, label %.thread116, label %.thread112

.thread112:                                       ; preds = %bb.x, %bb.x, %bb.w, %bb.y
  %.086115 = phi ptr [ %i.dq, %bb.y ], [ @.str.776, %bb.x ], [ @.str.776, %bb.x ], [ %i.dk, %bb.w ] ; 2 uses
  %i.dr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.086115) #60 ; 2 uses
  %i.ds = load ptr, ptr %.085160, align 8, !tbaa !929 ; 18 uses
  %i.dt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #60 ; 2 uses
end_hunk_9
begin_hunk_10_@sqlite3WhereBegin:bb.a
  %i.ia = or i16 %i.hz, 4
  store i16 %i.ia, ptr %i.hl, align 2, !tbaa !4283
  br label %bb.bc

bb.bc:                                            ; preds = %bb.aw, %exprIsDeterministic.exit, %bb.ba, %bb.bb, %bb.av
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1 ; 2 uses
  %i.ib = load ptr, ptr %i.bv, align 8, !tbaa !4265 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !4276
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next612, %i.ie
  br i1 %i.if, label %bb.av, label %._crit_edge, !llvm.loop !4285

._crit_edge:                                      ; preds = %bb.bc, %.preheader557
  %i.ig = and i32 %i.k, 256
  %.not404 = icmp eq i32 %i.ig, 0
  br i1 %.not404, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !1328
  %i.ij = and i32 %i.ii, 16
  %.not405 = icmp eq i32 %i.ij, 0
  br i1 %.not405, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ik = and i16 %.0364, 32511
  %i.il = load i16, ptr %i.bh, align 4, !tbaa !330
  %i.im = and i16 %i.il, -257
  store i16 %i.im, ptr %i.bh, align 4, !tbaa !330
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %i.in = call fastcc i32 @isDistinctRedundant(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bu, ptr noundef %4)
  %.not406 = icmp eq i32 %i.in, 0
  br i1 %.not406, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.io = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  store i8 1, ptr %i.io, align 1, !tbaa !227
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.ip = icmp eq ptr %.0363, null
  br i1 %i.ip, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.iq = load i16, ptr %i.bh, align 4, !tbaa !330
  %i.ir = or i16 %i.iq, 128
  store i16 %i.ir, ptr %i.bh, align 4, !tbaa !330
  store ptr %4, ptr %i.aw, align 8, !tbaa !3625
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.bh, %bb.bi, %bb.bg, %._crit_edge
  %.1 = phi i16 [ %i.ik, %bb.be ], [ %.0364, %bb.bg ], [ %.0364, %bb.bi ], [ %.0364, %bb.bh ], [ %.0364, %._crit_edge ] ; 4 uses
  %.not407 = icmp eq i32 %spec.select, 1
  %.pre622 = load ptr, ptr %10, align 8, !tbaa !4262 ; 13 uses
  %.pre624 = load ptr, ptr %i.bx, align 8         ; 17 uses
  br i1 %.not407, label %bb.bk, label %bb.ck

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #59
  %i.is = getelementptr inbounds nuw i8, ptr %.pre622, i64 60 ; 2 uses
  %i.it = load i16, ptr %i.is, align 4, !tbaa !330
  %i.iu = and i16 %i.it, 32
  %.not.i475 = icmp eq i16 %i.iu, 0
  br i1 %.not.i475, label %bb.bl, label %whereShortCut.exit.thread

bb.bl:                                            ; preds = %bb.bk
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre622, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !4154 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !3016 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 63
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !922
  %i.jb = icmp eq i8 %i.ja, 1
  br i1 %i.jb, label %whereShortCut.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 33
  %i.jd = load i16, ptr %i.jc, align 1
  %i.je = and i16 %i.jd, 3
  %or.cond.i = icmp eq i16 %i.je, 0
  br i1 %or.cond.i, label %bb.bn, label %whereShortCut.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 36
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3554 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.pre622, i64 104 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre624, i64 48 ; 7 uses
  store i32 0, ptr %i.ji, align 8, !tbaa !4272
  %i.jj = getelementptr inbounds nuw i8, ptr %.pre624, i64 54
  store i16 0, ptr %i.jj, align 2, !tbaa !4286
  store ptr %i.jh, ptr %8, align 16, !tbaa !4287
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.jh, ptr %i.jk, align 8, !tbaa !4289
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i8 0, ptr %i.jl, align 8, !tbaa !4290
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store i32 130, ptr %i.jn, align 4, !tbaa !4291
  %i.jo = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i32 0, ptr %i.jo, align 16, !tbaa !4292
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  store i32 %i.jg, ptr %i.jp, align 4, !tbaa !5
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 42 ; 2 uses
  store i8 1, ptr %i.jq, align 2, !tbaa !4293
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 41 ; 3 uses
  store i8 1, ptr %i.jr, align 1, !tbaa !4294
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  store i16 -1, ptr %i.js, align 8, !tbaa !330
  %i.jt = call fastcc ptr @whereScanNext(ptr noundef nonnull %8) ; 2 uses
  %.not8210.i = icmp eq ptr %i.jt, null
  br i1 %.not8210.i, label %.critedge95.i, label %.lr.ph.i477

.lr.ph.i477:                                      ; preds = %bb.bn, %bb.bo
  %.07711.i = phi ptr [ %i.jw, %bb.bo ], [ %i.jt, %bb.bn ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.07711.i, i64 40
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !4295
  %.not83.i = icmp eq i64 %i.jv, 0
  br i1 %.not83.i, label %.critedge.i480, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i477
  %i.jw = call fastcc ptr @whereScanNext(ptr noundef %8) ; 2 uses
  %.not82.i = icmp eq ptr %i.jw, null
  br i1 %.not82.i, label %.critedge95.i, label %.lr.ph.i477, !llvm.loop !4296

.critedge.i480:                                   ; preds = %.lr.ph.i477
  store i32 4353, ptr %i.ji, align 8, !tbaa !4272
  %i.jx = getelementptr inbounds nuw i8, ptr %.pre624, i64 64
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !4267
  store ptr %.07711.i, ptr %i.jy, align 8, !tbaa !4297
  %i.jz = getelementptr inbounds nuw i8, ptr %.pre624, i64 52
  store i16 1, ptr %i.jz, align 4, !tbaa !4270
  %i.ka = getelementptr inbounds nuw i8, ptr %.pre624, i64 24
  store i16 1, ptr %i.ka, align 8, !tbaa !227
  br label %.loopexit3.sink.split.i

.critedge95.i:                                    ; preds = %bb.bo, %bb.bn
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %.07619.i = load ptr, ptr %i.kb, align 8, !tbaa !935 ; 2 uses
  %.not8420.i = icmp eq ptr %.07619.i, null
  br i1 %.not8420.i, label %.loopexit3.i, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.critedge95.i
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %.pre624, i64 64
  %i.ke = insertelement <2 x ptr> poison, ptr %i.jh, i64 0
  %i.kf = shufflevector <2 x ptr> %i.ke, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.bp

bb.bp:                                            ; preds = %bb.cd, %.lr.ph22.i
  %.07621.i = phi ptr [ %.07619.i, %.lr.ph22.i ], [ %.076.i, %bb.cd ] ; 12 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.07621.i, i64 98
  %i.kh = load i8, ptr %i.kg, align 2, !tbaa !2990
  %.not85.i = icmp eq i8 %i.kh, 0
  br i1 %.not85.i, label %bb.cd, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ki = getelementptr inbounds nuw i8, ptr %.07621.i, i64 72
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !2797
  %.not86.i = icmp eq ptr %i.kj, null
  br i1 %.not86.i, label %bb.br, label %bb.cd

bb.br:                                            ; preds = %bb.bq
  %i.kk = getelementptr inbounds nuw i8, ptr %.07621.i, i64 94 ; 3 uses
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !936 ; 2 uses
  %i.km = icmp ugt i16 %i.kl, 3
  br i1 %i.km, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kn = getelementptr inbounds nuw i8, ptr %.07621.i, i64 99
  %i.ko = load i16, ptr %i.kn, align 1
  %i.kp = and i16 %i.ko, 8
  %.not87.i = icmp eq i16 %i.kp, 0
  %i.kq = select i1 %.not87.i, i32 2, i32 130
  %.not23.i = icmp eq i16 %i.kl, 0
  br i1 %.not23.i, label %.loopexit.i, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.bs
  %i.kr = getelementptr inbounds nuw i8, ptr %.07621.i, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %.07621.i, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %.07621.i, i64 80
  %i.ku = getelementptr inbounds nuw i8, ptr %.07621.i, i64 64 ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.critedge2.i, %.lr.ph17.i
  %indvars.iv.i478 = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i479, %.critedge2.i ] ; 8 uses
  store <2 x ptr> %i.kf, ptr %8, align 16, !tbaa !1148
  store i8 0, ptr %i.jl, align 8, !tbaa !4290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store i32 %i.kq, ptr %i.jn, align 4, !tbaa !4291
  store i32 0, ptr %i.jo, align 16, !tbaa !4292
  store i32 %i.jg, ptr %i.jp, align 4, !tbaa !5
  store i8 1, ptr %i.jq, align 2, !tbaa !4293
  store i8 1, ptr %i.jr, align 1, !tbaa !4294
  %i.kv = load ptr, ptr %i.kr, align 8, !tbaa !878
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %indvars.iv.i478
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !330 ; 6 uses
  %11 = zext nneg i16 %i.kx to i64
  %i.ky = load ptr, ptr %i.ks, align 8, !tbaa !1098 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 52
  %i.la = load i16, ptr %i.kz, align 4, !tbaa !891
  %i.lb = icmp eq i16 %i.kx, %i.la
  br i1 %i.lb, label %.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lc = icmp sgt i16 %i.kx, -1
  br i1 %i.lc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !882
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %11
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 9
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !905
  store i8 %i.lh, ptr %i.jl, align 8, !tbaa !4290
  %i.li = load ptr, ptr %i.ku, align 8, !tbaa !2803
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.i478
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !251
  store ptr %i.lk, ptr %i.jm, align 16, !tbaa !4298
  br label %.thread.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.ll = icmp eq i16 %i.kx, -2
  br i1 %i.ll, label %bb.bx, label %.thread.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.lm = load ptr, ptr %i.kt, align 8, !tbaa !2799
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %indvars.iv.i478
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !902
  store ptr %i.lp, ptr %i.kc, align 8, !tbaa !4299
  %i.lq = load ptr, ptr %i.ku, align 8, !tbaa !2803
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv.i478
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !251
  store ptr %i.ls, ptr %i.jm, align 16, !tbaa !4298
  store i16 -2, ptr %i.js, align 8, !tbaa !330
  %i.lt = call fastcc ptr @whereScanInitIndexExpr(ptr noundef nonnull %8)
  br label %whereScanInit.exit.i

.thread.i.i:                                      ; preds = %bb.bw, %bb.bv, %bb.bt
  %.2.i.i = phi i16 [ %i.kx, %bb.bw ], [ -1, %bb.bt ], [ %i.kx, %bb.bv ]
  store i16 %.2.i.i, ptr %i.js, align 8, !tbaa !330
  %i.lu = call fastcc ptr @whereScanNext(ptr noundef nonnull %8)
  br label %whereScanInit.exit.i

whereScanInit.exit.i:                             ; preds = %.thread.i.i, %bb.bx
  %.1.i.i = phi ptr [ %i.lu, %.thread.i.i ], [ %i.lt, %bb.bx ] ; 2 uses
  %cond12.i = icmp eq ptr %.1.i.i, null
  br i1 %cond12.i, label %.loopexit.loopexit36.i, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %whereScanInit.exit.i, %bb.by
  %.113.i = phi ptr [ %i.lx, %bb.by ], [ %.1.i.i, %whereScanInit.exit.i ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.113.i, i64 40
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !4295
  %.not89.i = icmp eq i64 %i.lw, 0
  br i1 %.not89.i, label %.critedge2.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph14.i
  %i.lx = call fastcc ptr @whereScanNext(ptr noundef %8) ; 2 uses
  %cond.i = icmp eq ptr %i.lx, null
  br i1 %cond.i, label %.loopexit.loopexit.i, label %.lr.ph14.i, !llvm.loop !4300

.critedge2.i:                                     ; preds = %.lr.ph14.i
  %i.ly = load ptr, ptr %i.kd, align 8, !tbaa !4267
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.i478
  store ptr %.113.i, ptr %i.lz, align 8, !tbaa !4297
  %indvars.iv.next.i479 = add nuw nsw i64 %indvars.iv.i478, 1 ; 3 uses
  %i.ma = load i16, ptr %i.kk, align 2, !tbaa !936
  %i.mb = zext i16 %i.ma to i64
  %i.mc = icmp samesign ult i64 %indvars.iv.next.i479, %i.mb
  br i1 %i.mc, label %bb.bt, label %.loopexit.loopexit36.i, !llvm.loop !4301

.loopexit.loopexit.i:                             ; preds = %bb.by
  %i.md = trunc nuw nsw i64 %indvars.iv.i478 to i32
  br label %.loopexit.i

.loopexit.loopexit36.i:                           ; preds = %.critedge2.i, %whereScanInit.exit.i
  %indvars.iv.next.lcssa.sink.i = phi i64 [ %indvars.iv.i478, %whereScanInit.exit.i ], [ %indvars.iv.next.i479, %.critedge2.i ]
  %indvars.le.i = trunc i64 %indvars.iv.next.lcssa.sink.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit36.i, %.loopexit.loopexit.i, %bb.bs
  %.0786.i = phi i32 [ 0, %bb.bs ], [ %i.md, %.loopexit.loopexit.i ], [ %indvars.le.i, %.loopexit.loopexit36.i ] ; 2 uses
  %i.me = load i16, ptr %i.kk, align 2, !tbaa !936
  %i.mf = zext i16 %i.me to i32
  %.not90.i = icmp eq i32 %.0786.i, %i.mf
  br i1 %.not90.i, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %.loopexit.i
  %i.mg = getelementptr inbounds nuw i8, ptr %.07621.i, i64 99
  store i32 4609, ptr %i.ji, align 8, !tbaa !4272
  %i.mh = load i16, ptr %i.mg, align 1
  %i.mi = and i16 %i.mh, 32
  %.not91.i = icmp eq i16 %i.mi, 0
  br i1 %.not91.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mj = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !3702
  %i.ml = getelementptr inbounds nuw i8, ptr %.07621.i, i64 104
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !4072
  %i.mn = and i64 %i.mm, %i.mk
  %i.mo = icmp eq i64 %i.mn, 0
  br i1 %i.mo, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store i32 4673, ptr %i.ji, align 8, !tbaa !4272
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.mp = trunc nuw i32 %.0786.i to i16           ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.pre624, i64 52
  store i16 %i.mp, ptr %i.mq, align 4, !tbaa !4270
  %i.mr = getelementptr inbounds nuw i8, ptr %.pre624, i64 24
  store i16 %i.mp, ptr %i.mr, align 8, !tbaa !227
  %i.ms = getelementptr inbounds nuw i8, ptr %.pre624, i64 32
  store ptr %.07621.i, ptr %i.ms, align 8, !tbaa !227
  br label %.loopexit3.sink.split.i

bb.cd:                                            ; preds = %.loopexit.i, %bb.br, %bb.bq, %bb.bp
  %i.mt = getelementptr inbounds nuw i8, ptr %.07621.i, i64 40
  %.076.i = load ptr, ptr %i.mt, align 8, !tbaa !935 ; 2 uses
  %.not84.i = icmp eq ptr %.076.i, null
  br i1 %.not84.i, label %.loopexit3.i, label %bb.bp, !llvm.loop !4302

.loopexit3.sink.split.i:                          ; preds = %bb.cc, %.critedge.i480
  %.sink.i = phi i16 [ 39, %bb.cc ], [ 33, %.critedge.i480 ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.pre624, i64 20
  store i16 %.sink.i, ptr %i.mu, align 4, !tbaa !4303
  br label %.loopexit3.i

.loopexit3.i:                                     ; preds = %bb.cd, %.loopexit3.sink.split.i, %.critedge95.i
  %i.mv = load i32, ptr %i.ji, align 8, !tbaa !4272
  %.not92.i = icmp eq i32 %i.mv, 0
  br i1 %.not92.i, label %.loopexit3.i.whereShortCut.exit.thread_crit_edge, label %bb.ce

.loopexit3.i.whereShortCut.exit.thread_crit_edge: ; preds = %.loopexit3.i
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !4262
  %.pre623.pre = load ptr, ptr %i.bx, align 8, !tbaa !4266
  br label %whereShortCut.exit.thread

bb.ce:                                            ; preds = %.loopexit3.i
  %i.mw = getelementptr inbounds nuw i8, ptr %.pre624, i64 22
  store i16 1, ptr %i.mw, align 2, !tbaa !4304
  %i.mx = getelementptr inbounds nuw i8, ptr %.pre622, i64 960
  store ptr %.pre624, ptr %i.mx, align 8, !tbaa !4305
  %i.my = getelementptr inbounds nuw i8, ptr %.pre624, i64 8
  store i64 1, ptr %i.my, align 8, !tbaa !4306
  %i.mz = getelementptr inbounds nuw i8, ptr %.pre622, i64 860
  store i32 %i.jg, ptr %i.mz, align 4, !tbaa !4307
  %i.na = getelementptr inbounds nuw i8, ptr %.pre622, i64 70
  store i16 1, ptr %i.na, align 2, !tbaa !330
  %i.nb = getelementptr inbounds nuw i8, ptr %.pre622, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !3625 ; 2 uses
  %.not93.i = icmp eq ptr %i.nc, null
  br i1 %.not93.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !5
  %i.ne = trunc i32 %i.nd to i8
  %i.nf = getelementptr inbounds nuw i8, ptr %.pre622, i64 65
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !227
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ng = load i16, ptr %i.is, align 4, !tbaa !330
  %i.nh = and i16 %i.ng, 256
  %.not94.i = icmp eq i16 %i.nh, 0
  br i1 %.not94.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ni = getelementptr inbounds nuw i8, ptr %.pre622, i64 67
  store i8 1, ptr %i.ni, align 1, !tbaa !227
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.nj = load i8, ptr %i.jr, align 1, !tbaa !4294
  %i.nk = icmp ugt i8 %i.nj, 1
  br i1 %i.nk, label %bb.cj, label %whereShortCut.exit

bb.cj:                                            ; preds = %bb.ci
  %i.nl = load i32, ptr %i.ji, align 8, !tbaa !4272
  %i.nm = or i32 %i.nl, 2097152
  store i32 %i.nm, ptr %i.ji, align 8, !tbaa !4272
  br label %whereShortCut.exit

whereShortCut.exit.thread:                        ; preds = %.loopexit3.i.whereShortCut.exit.thread_crit_edge, %bb.bk, %bb.bl, %bb.bm
  %.pre623 = phi ptr [ %.pre623.pre, %.loopexit3.i.whereShortCut.exit.thread_crit_edge ], [ %.pre624, %bb.bk ], [ %.pre624, %bb.bl ], [ %.pre624, %bb.bm ]
  %.pre = phi ptr [ %.pre.pre, %.loopexit3.i.whereShortCut.exit.thread_crit_edge ], [ %.pre622, %bb.bk ], [ %.pre622, %bb.bl ], [ %.pre622, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %bb.ck

whereShortCut.exit:                               ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %bb.dk

bb.ck:                                            ; preds = %whereShortCut.exit.thread, %bb.bj
  %i.nn = phi ptr [ %.pre623, %whereShortCut.exit.thread ], [ %.pre624, %bb.bj ] ; 8 uses
end_hunk_10
begin_hunk_11_@selectWindowRewriteExprCb:bb.a
  br i1 %.not77, label %bb.n, label %bb.l

bb.l:                                             ; preds = %sqlite3ExprDup.exit
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !3021
  %i.aq = icmp eq i8 %i.ap, -87
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 -84, ptr %i.ao, align 8, !tbaa !3021
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %sqlite3ExprDup.exit
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !3631 ; 7 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !651
  %i.au = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.at, ptr noundef %i.ao)
  br label %sqlite3ExprListAppend.exit

bb.p:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !5
  %i.ax = load i32, ptr %i.ar, align 8, !tbaa !5  ; 3 uses
  %.not.i80 = icmp sgt i32 %i.aw, %i.ax
  br i1 %.not.i80, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !651
  %i.az = tail call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.ay, ptr noundef %i.ar, ptr noundef %i.ao)
  br label %sqlite3ExprListAppend.exit

bb.r:                                             ; preds = %bb.p
  %i.ba = add nsw i32 %i.ax, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %i.ba, ptr %i.ar, align 8, !tbaa !5
  %i.bc = sext i32 %i.ax to i64
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store ptr %i.ao, ptr %i.bd, align 8, !tbaa !902
  br label %sqlite3ExprListAppend.exit

sqlite3ExprListAppend.exit:                       ; preds = %bb.o, %bb.q, %bb.r
  %.0.i = phi ptr [ %i.au, %bb.o ], [ %i.az, %bb.q ], [ %i.ar, %bb.r ] ; 2 uses
  store ptr %.0.i, ptr %i.aa, align 8, !tbaa !3631
  br label %bb.s

thread-pre-split:                                 ; preds = %.lr.ph100
  %i.bf = trunc nuw nsw i64 %indvars.iv103 to i32
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split, %sqlite3ExprListAppend.exit
  %i.bg = phi ptr [ %.pr, %thread-pre-split ], [ %.0.i, %sqlite3ExprListAppend.exit ]
  %i.bh = phi i1 [ false, %thread-pre-split ], [ true, %sqlite3ExprListAppend.exit ]
  %.16885 = phi i32 [ %i.bf, %thread-pre-split ], [ -1, %sqlite3ExprListAppend.exit ]
  %.not78 = icmp eq ptr %i.bg, null
  br i1 %.not78, label %bb.v, label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !367 ; 2 uses
  %i.bk = and i32 %i.bj, 512
  %i.bl = or i32 %i.bj, 134217728
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !367
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !651
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.bm, ptr noundef nonnull %1), !inline_history !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 72, i1 false)
  store i8 -88, ptr %1, align 8, !tbaa !3021
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %sqlite3ExprDelete.exit
  %i.bn = load ptr, ptr %i.aa, align 8, !tbaa !3631
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !5
  %i.bp = add nsw i32 %i.bo, -1
  br label %bb.u

bb.u:                                             ; preds = %sqlite3ExprDelete.exit, %bb.t
  %i.bq = phi i32 [ %i.bp, %bb.t ], [ %.16885, %sqlite3ExprDelete.exit ]
  %i.br = trunc i32 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i16 %i.br, ptr %i.bs, align 8, !tbaa !3487
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !3633
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !3630
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !3581
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3635
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !227
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !367
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !651
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 103
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !550
  %.not79 = icmp eq i8 %i.cc, 0
  br i1 %.not79, label %bb.w, label %.thread87

bb.w:                                             ; preds = %bb.f, %bb.g, %bb.v
  br label %.thread87

.thread87:                                        ; preds = %bb.e, %bb.i, %.thread, %bb.b, %._crit_edge, %bb.v, %bb.w
  %.5 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.w ], [ 2, %bb.v ], [ 0, %bb.b ], [ 2, %.thread ], [ 1, %bb.i ], [ 0, %bb.e ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @selectWindowRewriteSelectCb(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4417 ; 2 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !4417
  %i.f = tail call fastcc i32 @sqlite3WalkSelect(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !4417
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @compoundHasDifferentAffinities(ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3035 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !5
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !902
  %i.h = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %sqlite3ExprAffinity.exit, %bb.b
  %.pn = phi ptr [ %0, %bb.b ], [ %.013, %sqlite3ExprAffinity.exit ]
  %.013.in = getelementptr inbounds nuw i8, ptr %.pn, i64 72
  %.013 = load ptr, ptr %.013.in, align 8, !tbaa !3034 ; 3 uses
  %.not = icmp eq ptr %.013, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3035
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %bb.d
  %.024.ph.i.in = phi ptr [ %i.l, %bb.d ], [ %.024.ph.i.in.be, %.outer.i.backedge ]
  %.024.ph.i = load ptr, ptr %.024.ph.i.in, align 8, !tbaa !366 ; 12 uses
  %.0.in.ph.i = load i8, ptr %.024.ph.i, align 8, !tbaa !3021
  %i.m = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.q, %.outer.i
  %.0.in.i = phi i8 [ %i.bd, %bb.q ], [ %.0.in.ph.i, %.outer.i ] ; 2 uses
  switch i8 %.0.in.i, label %bb.n [
    i8 -88, label %._crit_edge.i
    i8 -86, label %bb.f
    i8 -117, label %bb.i
    i8 36, label %bb.j
    i8 -78, label %bb.k
    i8 -79, label %bb.m
    i8 -84, label %bb.l
  ]

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !227
  br label %split.i

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !227  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.n, label %split.i

split.i:                                          ; preds = %bb.f, %._crit_edge.i
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 48
  %i.t = load i16, ptr %i.s, align 8, !tbaa !3487 ; 3 uses
  %1 = zext nneg i16 %i.t to i64
  %i.u = icmp slt i16 %i.t, 0
  br i1 %i.u, label %sqlite3ExprAffinity.exit, label %bb.g

bb.g:                                             ; preds = %split.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 54
  %i.w = load i16, ptr %i.v, align 2, !tbaa !881
  %.not.i.i = icmp slt i16 %i.t, %i.w
  br i1 %.not.i.i, label %bb.h, label %sqlite3ExprAffinity.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !882
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !905
  br label %sqlite3ExprAffinity.exit

bb.i:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !227
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3035
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %.outer.i.backedge

bb.j:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !227
  %i.aj = tail call fastcc signext i8 @sqlite3AffinityType(ptr noundef %i.ai, ptr noundef null), !inline_history !4184
  br label %sqlite3ExprAffinity.exit

bb.k:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !371
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !227
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !3035
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 48
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !3487
  %i.at = sext i16 %i.as to i64
  %i.au = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %i.at
  br label %.outer.i.backedge

bb.l:                                             ; preds = %bb.e
  %i.av = load i8, ptr %i.m, align 1, !tbaa !3489
  %i.aw = icmp eq i8 %i.av, 88
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !227
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  br label %.outer.i.backedge

bb.n:                                             ; preds = %bb.l, %bb.f, %bb.e
  %i.ba = load i32, ptr %i.o, align 4, !tbaa !367
  %i.bb = and i32 %i.ba, 270336
  %.not27.i = icmp eq i32 %i.bb, 0
  br i1 %.not27.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.024.ph.i, i64 16
  br label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.o, %bb.m, %bb.k, %bb.i
  %.024.ph.i.in.be = phi ptr [ %i.bc, %bb.o ], [ %i.ag, %bb.i ], [ %i.au, %bb.k ], [ %i.az, %bb.m ]
  br label %.outer.i

bb.p:                                             ; preds = %bb.n
  %.not28.i = icmp eq i8 %.0.in.i, -80
  br i1 %.not28.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = load i8, ptr %i.p, align 2, !tbaa !3275 ; 2 uses
  %i.be = icmp eq i8 %i.bd, -80
  br i1 %i.be, label %bb.r, label %bb.e

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = load i8, ptr %i.m, align 1, !tbaa !3489
  br label %sqlite3ExprAffinity.exit

sqlite3ExprAffinity.exit:                         ; preds = %split.i, %bb.g, %bb.h, %bb.j, %bb.r
  %.025.i = phi i8 [ %i.bf, %bb.r ], [ 68, %split.i ], [ %i.aj, %bb.j ], [ 68, %bb.g ], [ %i.ab, %bb.h ]
  %.not16 = icmp eq i8 %.025.i, %i.h
  br i1 %.not16, label %bb.c, label %.loopexit, !llvm.loop !4421

.critedge:                                        ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !5
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.b, label %.loopexit, !llvm.loop !4422

.loopexit:                                        ; preds = %.critedge, %sqlite3ExprAffinity.exit, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %sqlite3ExprAffinity.exit ], [ 0, %.critedge ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @renumberCursors(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Walker, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3036
  tail call fastcc void @srclistRenumberCursors(ptr noundef %0, ptr noundef %3, ptr noundef %i.b, i32 noundef %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %3, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @renumberCursorsCb, ptr %i.d, align 8, !tbaa !3507
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @sqlite3SelectWalkNoop, ptr %i.e, align 8, !tbaa !3508
  %i.f = call fastcc i32 @sqlite3WalkSelect(ptr noundef nonnull %4, ptr noundef %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3DeleteTableGeneric(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %sqlite3DeleteTable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !118
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !118
  %.not5.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i, label %bb.d, label %sqlite3DeleteTable.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @deleteTable(ptr noundef nonnull %0, ptr noundef %1), !inline_history !124
  br label %sqlite3DeleteTable.exit

sqlite3DeleteTable.exit:                          ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3SrcListEnlarge(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !5      ; 5 uses
  %i.b = add i32 %i.a, %2                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !5
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.b, 199
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.861, i32 noundef 200)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !651    ; 5 uses
  %i.h = sext i32 %i.a to i64
  %i.i = shl nsw i64 %i.h, 1
  %i.j = sext i32 %2 to i64
  %i.k = add nsw i64 %i.i, %i.j
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.k, i64 200) ; 2 uses
  %i.l = mul nsw i64 %spec.store.select, 72
  %i.m = add nsw i64 %i.l, 8                      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.p = icmp ult ptr %1, %i.o
  br i1 %i.p, label %bb.e, label %sqlite3DbRealloc.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174
  %.not.i = icmp ult ptr %1, %i.r
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ult i64 %i.m, 129
  br i1 %i.s, label %sqlite3DbRealloc.exit.thread, label %sqlite3DbRealloc.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  %.not19.i = icmp ult ptr %1, %i.u
  br i1 %.not19.i, label %sqlite3DbRealloc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 438
  %i.w = load i16, ptr %i.v, align 2, !tbaa !353
  %i.x = zext i16 %i.w to i64
end_hunk_11
begin_hunk_12_@whereOmitNoopJoin:bb.a
  br i1 %i.eb, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split._crit_edge, %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %.064103, i64 56 ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.db
  br i1 %i.ed, label %.lr.ph.split, label %.critedge, !llvm.loop !4486

.critedge:                                        ; preds = %bb.y, %bb.u, %bb.r
  %notmask = shl nsw i64 -1, %indvars.iv.next     ; 2 uses
  %i.ee = xor i64 %notmask, -1
  %i.ef = load i64, ptr %i.cb, align 8, !tbaa !18 ; 2 uses
  %i.eg = and i64 %i.ef, %i.ee
  %i.eh = lshr i64 %i.ef, 1
  %i.ei = and i64 %i.eh, %notmask
  %i.ej = or i64 %i.ei, %i.eg
  store i64 %i.ej, ptr %i.cb, align 8, !tbaa !18
  %i.ek = load i64, ptr %i.cv, align 8, !tbaa !4306 ; 2 uses
  %i.el = xor i64 %i.ek, -1
  %i.em = and i64 %.0108, %i.el
  br i1 %i.dc, label %.lr.ph105, label %._crit_edge

.lr.ph105:                                        ; preds = %.critedge, %bb.aa
  %.165104 = phi ptr [ %i.et, %bb.aa ], [ %i.cy, %.critedge ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.165104, i64 48 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !4284
  %i.ep = and i64 %i.eo, %i.ek
  %.not77 = icmp eq i64 %i.ep, 0
  br i1 %.not77, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph105
  %i.eq = getelementptr inbounds nuw i8, ptr %.165104, i64 18 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !4283
  %i.es = or i16 %i.er, 4
  store i16 %i.es, ptr %i.eq, align 2, !tbaa !4283
  store i64 0, ptr %i.en, align 8, !tbaa !4284
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph105, %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %.165104, i64 56 ; 2 uses
  %i.eu = icmp ult ptr %i.et, %i.db
  br i1 %i.eu, label %.lr.ph105, label %._crit_edge.loopexit, !llvm.loop !4487

._crit_edge.loopexit:                             ; preds = %bb.aa
  %.pre122 = load i8, ptr %i.bo, align 8, !tbaa !227
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %i.ev = phi i8 [ %.pre122, %._crit_edge.loopexit ], [ %i.cd, %.critedge ] ; 3 uses
  %i.ew = zext i8 %i.ev to i64
  %.not76 = icmp eq i64 %indvars.iv, %i.ew
  br i1 %.not76, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.ex = zext i8 %i.ev to i64
  %i.ey = sub i64 %i.ex, %indvars.iv
  %i.ez = getelementptr inbounds nuw [120 x i8], ptr %i.bw, i64 %indvars.iv
  %sext = mul i64 %i.ey, 515396075520
  %i.fa = ashr exact i64 %sext, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr nonnull align 8 %i.ez, i64 %i.fa, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %i.fb = add i8 %i.ev, -1                        ; 2 uses
  store i8 %i.fb, ptr %i.bo, align 8, !tbaa !227
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.v, %bb.w, %bb.t, %bb.s, %bb.q, %bb.p, %bb.n, %bb.ac
  %i.fc = phi i8 [ %i.fb, %bb.ac ], [ %i.cd, %bb.n ], [ %i.cd, %bb.p ], [ %i.cd, %bb.q ], [ %i.cd, %bb.t ], [ %i.cd, %bb.s ], [ %i.cd, %bb.w ], [ %i.cd, %bb.v ], [ %i.cd, %bb.x ]
  %.1 = phi i64 [ %i.em, %bb.ac ], [ %.0108, %bb.n ], [ %.0108, %bb.p ], [ %.0108, %bb.q ], [ %.0108, %bb.t ], [ %.0108, %bb.s ], [ %.0108, %bb.w ], [ %.0108, %bb.v ], [ %.0108, %bb.x ] ; 2 uses
  %i.fd = icmp sgt i64 %indvars.iv, 2
  br i1 %i.fd, label %bb.n, label %._crit_edge113, !llvm.loop !4488

._crit_edge113:                                   ; preds = %.loopexit, %sqlite3WhereExprListUsage.exit99
  %.0.lcssa = phi i64 [ -1, %sqlite3WhereExprListUsage.exit99 ], [ %.1, %.loopexit ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @whereCheckIfBloomFilterIsUseful(ptr nofree noundef readonly captures(none) %0) unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !227
  %.not28 = icmp eq i8 %i.b, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4154 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !4305 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !4309
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3016
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !788  ; 2 uses
  %i.o = and i32 %i.n, 16
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = or i32 %i.n, 256
  store i32 %i.q, ptr %i.m, align 8, !tbaa !788
  %i.r = load i8, ptr %i.a, align 8, !tbaa !227
  %i.s = icmp ugt i8 %i.r, 1
  br i1 %i.s, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %i.u = load i16, ptr %i.t, align 2, !tbaa !4304
  br label %bb.c

bb.c:                                             ; preds = %.peel.next, %bb.g
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.02025 = phi i16 [ %i.u, %.peel.next ], [ %i.av, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 960
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4305 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 8, !tbaa !4309
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3016 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !788 ; 2 uses
  %i.ag = and i32 %i.af, 16
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = or i32 %i.af, 256
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !788
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !4272 ; 3 uses
  %i.al = and i32 %i.ak, 8388609
  %i.am = icmp ne i32 %i.al, 8388609
  %i.an = and i32 %i.ak, 768
  %.not21 = icmp eq i32 %i.an, 0
  %or.cond = or i1 %i.am, %.not21
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 58
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !2988
  %i.aq = icmp sgt i16 %.02025, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = and i32 %i.ak, -4194369
  %i.as = or disjoint i32 %i.ar, 4194304
  store i32 %i.as, ptr %i.aj, align 8, !tbaa !4272
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 22
  %i.au = load i16, ptr %i.at, align 2, !tbaa !4304
  %i.av = add i16 %i.au, %.02025
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i8, ptr %i.a, align 8, !tbaa !227
  %i.ax = zext i8 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.c, label %._crit_edge, !llvm.loop !4489

._crit_edge:                                      ; preds = %bb.g, %bb.c, %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @whereAddIndexedExpr(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.Walker, align 8             ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !875
  %.not65 = icmp eq i16 %i.b, 0
  br i1 %.not65, label %sqlite3DbMallocRaw.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1098 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 63
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 5 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !878
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load i16, ptr %i.q, align 2, !tbaa !330  ; 3 uses
  %5 = zext nneg i16 %i.r to i64
  %i.s = icmp eq i16 %i.r, -2
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !2799
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv
  br label %sqlite3ColumnExpr.exit

bb.d:                                             ; preds = %bb.b
  %i.w = icmp sgt i16 %i.r, -1
  br i1 %i.w, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !882
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !883
  %i.ab = and i16 %i.aa, 32
  %.not = icmp eq i16 %i.ab, 0
  br i1 %.not, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.y, i64 12
  %.val = load i16, ptr %i.ac, align 4, !tbaa !900 ; 3 uses
  %i.ad = zext i16 %.val to i32
  %i.ae = icmp eq i16 %.val, 0
  br i1 %i.ae, label %sqlite3ColumnExpr.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.g, align 1, !tbaa !922
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.h, label %sqlite3ColumnExpr.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !227 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %sqlite3ColumnExpr.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !5
  %i.ak = icmp slt i32 %i.aj, %i.ad
  br i1 %i.ak, label %sqlite3ColumnExpr.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = zext i16 %.val to i64
  %i.am = getelementptr [24 x i8], ptr %i.ah, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -16
  br label %sqlite3ColumnExpr.exit

sqlite3ColumnExpr.exit.thread:                    ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  br label %sqlite3ExprIsConstant.exit.thread

sqlite3ColumnExpr.exit:                           ; preds = %bb.j, %bb.c
  %.043.in = phi ptr [ %i.v, %bb.c ], [ %i.an, %bb.j ]
  %.043 = load ptr, ptr %.043.in, align 8, !tbaa !902 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  store i16 1, ptr %i.i, align 4, !tbaa !3504
  store ptr null, ptr %4, align 8, !tbaa !3506
  store <2 x ptr> <ptr @exprNodeIsConstant, ptr @sqlite3SelectWalkFail>, ptr %i.j, align 8, !tbaa !450
  %.not.i.i.i = icmp eq ptr %.043, null
  br i1 %.not.i.i.i, label %sqlite3ExprIsConstant.exit.thread, label %sqlite3ExprIsConstant.exit

sqlite3ExprIsConstant.exit.thread:                ; preds = %sqlite3ColumnExpr.exit, %sqlite3ColumnExpr.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %bb.p

sqlite3ExprIsConstant.exit:                       ; preds = %sqlite3ColumnExpr.exit
  %i.ao = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %4, ptr noundef nonnull %.043) #62, !inline_history !3509 ; 0 uses
  %.pre.i.i = load i16, ptr %i.i, align 4, !tbaa !3504
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  %.not46 = icmp eq i16 %.pre.i.i, 0
  br i1 %.not46, label %bb.k, label %bb.p

bb.k:                                             ; preds = %sqlite3ExprIsConstant.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !651   ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.ap, i64 noundef 32), !inline_history !608
  br label %sqlite3DbMallocRaw.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !608
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.l, %bb.m
  %.0.i48 = phi ptr [ %i.aq, %bb.l ], [ %i.ar, %bb.m ] ; 9 uses
  %i.as = icmp eq ptr %.0.i48, null
  br i1 %i.as, label %sqlite3DbMallocRaw.exit._crit_edge, label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %sqlite3DbMallocRaw.exit
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !3755
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i48, i64 24 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !4490
  %i.av = load ptr, ptr %0, align 8, !tbaa !651
  %i.aw = call fastcc ptr @exprDup(ptr noundef %i.av, ptr noundef readonly %.043, i32 noundef 0, ptr noundef null), !inline_history !3579
  store ptr %i.aw, ptr %.0.i48, align 8, !tbaa !3988
  %i.ax = load i32, ptr %i.m, align 4, !tbaa !3554
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i48, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !3986
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i48, i64 12
  store i32 %2, ptr %i.az, align 4, !tbaa !3991
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i48, i64 16
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bb, ptr %i.ba, align 8, !tbaa !3992
  %i.bc = load i8, ptr %i.n, align 8, !tbaa !3497
  %i.bd = and i8 %i.bc, 88
  %i.be = icmp ne i8 %i.bd, 0
  %i.bf = zext i1 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i48, i64 20
  store i8 %i.bf, ptr %i.bg, align 4, !tbaa !3990
  %i.bh = load ptr, ptr %i.o, align 8, !tbaa !2801 ; 2 uses
  %.not.i50 = icmp eq ptr %i.bh, null
  br i1 %.not.i50, label %sqlite3IndexAffinityStr.exit, label %sqlite3IndexAffinityStr.exit.thread

sqlite3IndexAffinityStr.exit:                     ; preds = %sqlite3ExprDup.exit
  %i.bi = load ptr, ptr %0, align 8, !tbaa !651
  %i.bj = call fastcc ptr @computeIndexAffStr(ptr noundef %i.bi, ptr noundef nonnull %1)
  %.not47 = icmp eq ptr %i.bj, null
  br i1 %.not47, label %bb.n, label %sqlite3IndexAffinityStr.exit.sqlite3IndexAffinityStr.exit.thread_crit_edge

sqlite3IndexAffinityStr.exit.sqlite3IndexAffinityStr.exit.thread_crit_edge: ; preds = %sqlite3IndexAffinityStr.exit
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !2801
  br label %sqlite3IndexAffinityStr.exit.thread

sqlite3IndexAffinityStr.exit.thread:              ; preds = %sqlite3IndexAffinityStr.exit.sqlite3IndexAffinityStr.exit.thread_crit_edge, %sqlite3ExprDup.exit
  %i.bk = phi ptr [ %.pre, %sqlite3IndexAffinityStr.exit.sqlite3IndexAffinityStr.exit.thread_crit_edge ], [ %i.bh, %sqlite3ExprDup.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !227
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i48, i64 21
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !3989
  br label %bb.n

bb.n:                                             ; preds = %sqlite3IndexAffinityStr.exit.thread, %sqlite3IndexAffinityStr.exit
  store ptr %.0.i48, ptr %i.l, align 8, !tbaa !3755
  %i.bo = load ptr, ptr %i.au, align 8, !tbaa !4490
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = call fastcc ptr @sqlite3ParserAddCleanup(ptr noundef nonnull %0, ptr noundef nonnull @whereIndexedExprCleanup, ptr noundef nonnull %i.l) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %sqlite3ExprIsConstant.exit, %bb.e, %bb.o, %bb.n, %sqlite3ExprIsConstant.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = load i16, ptr %i.a, align 8, !tbaa !875
  %i.bs = zext i16 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %bb.b, label %sqlite3DbMallocRaw.exit._crit_edge, !llvm.loop !4491

sqlite3DbMallocRaw.exit._crit_edge:               ; preds = %bb.p, %sqlite3DbMallocRaw.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @wherePartIdxExpr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.Walker, align 8             ; 8 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !3021    ; 2 uses
  %i.b = icmp eq i8 %i.a, 44
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1157
  tail call fastcc void @wherePartIdxExpr(ptr noundef %0, ptr noundef %1, ptr noundef %i.d, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !371  ; 2 uses
  %.pr = load i8, ptr %i.f, align 8, !tbaa !3021
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i8 [ %.pr, %bb.b ], [ %i.a, %bb.a ]
  %.0 = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]    ; 3 uses
  switch i8 %i.g, label %bb.y [
    i8 54, label %bb.d
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !371  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1157 ; 3 uses
  %i.l = load i8, ptr %i.i, align 8, !tbaa !3021
  %.not = icmp eq i8 %i.l, -88
  br i1 %.not, label %bb.e, label %bb.y

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  store i16 1, ptr %i.m, align 4, !tbaa !3504
  store ptr null, ptr %6, align 8, !tbaa !3506
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @exprNodeIsConstant, ptr %i.n, align 8, !tbaa !3507
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @sqlite3SelectWalkFail, ptr %i.o, align 8, !tbaa !3508
end_hunk_12
begin_hunk_13_@whereLoopAddVirtual:bb.a
  %i.lq = load i64, ptr %i.h, align 8, !tbaa !4459
  %i.lr = icmp eq i64 %i.lq, %1
  br i1 %i.lr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ls = load i32, ptr %i.a, align 4, !tbaa !5
  %i.lt = icmp eq i32 %i.ls, 0
  %spec.select110 = select i1 %i.lt, i32 1, i32 %.191152
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %.399 = phi i32 [ %.197151, %bb.bn ], [ 1, %bb.bp ], [ %.197151, %bb.bo ]
  %.393 = phi i32 [ %.191152, %bb.bn ], [ %spec.select110, %bb.bp ], [ %.191152, %bb.bo ]
  %.3 = phi i32 [ 0, %bb.bn ], [ %i.lp, %bb.bp ], [ %i.lp, %bb.bo ] ; 2 uses
  %i.lu = icmp eq i32 %.3, 0
  br i1 %i.lu, label %.preheader, label %.thread134

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.lv = icmp eq i32 %.197151, 0
  br i1 %i.lv, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge.thread
  %i.lw = call fastcc i32 @whereLoopAddVirtualOne(ptr noundef %0, i64 noundef %1, i64 noundef %1, i16 noundef zeroext 0, ptr noundef %.0.i.i221.i, i16 noundef zeroext %.0184.lcssa.i, ptr noundef %i.a, ptr noundef null)
  %i.lx = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ly = icmp eq i32 %i.lx, 0
  %spec.select111 = select i1 %i.ly, i32 1, i32 %.191152
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge.thread
  %.595 = phi i32 [ %.191152, %._crit_edge.thread ], [ %spec.select111, %bb.br ]
  %.5 = phi i32 [ 0, %._crit_edge.thread ], [ %i.lw, %bb.br ] ; 2 uses
  %i.lz = icmp eq i32 %.5, 0
  %i.ma = icmp eq i32 %.595, 0
  %or.cond5 = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond5, label %bb.bt, label %.thread134

bb.bt:                                            ; preds = %bb.bs
  %i.mb = call fastcc i32 @whereLoopAddVirtualOne(ptr noundef %0, i64 noundef %1, i64 noundef %1, i16 noundef zeroext 1, ptr noundef %.0.i.i221.i, i16 noundef zeroext %.0184.lcssa.i, ptr noundef %i.a, ptr noundef null)
  br label %.thread134

.thread134:                                       ; preds = %bb.bq, %bb.bl, %bb.bs, %bb.bt, %bb.bj, %bb.bi
  %.7 = phi i32 [ %.084, %bb.bi ], [ 0, %bb.bj ], [ %i.mb, %bb.bt ], [ %.5, %bb.bs ], [ %i.ki, %bb.bl ], [ %.3, %bb.bq ]
  %i.mc = load ptr, ptr %i.d, align 8, !tbaa !651
  call fastcc void @freeIndexInfo(ptr noundef %i.mc, ptr noundef %.0.i.i221.i)
  br label %bb.bu

bb.bu:                                            ; preds = %allocateIndexInfo.exit.thread, %.thread134, %whereLoopResize.exit
  %.0 = phi i32 [ %.7, %.thread134 ], [ 7, %whereLoopResize.exit ], [ 7, %allocateIndexInfo.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddBtree(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Walker, align 8             ; 8 uses
  %3 = alloca %struct.IdxCover, align 8           ; 6 uses
  %4 = alloca %struct.Index, align 8              ; 14 uses
  %i.a = alloca [2 x i16], align 2                ; 5 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i16 -1, ptr %i.b, align 2, !tbaa !330
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4266 ; 28 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !4262   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4154
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !4309
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.l ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3016 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4265 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 25 ; 4 uses
  %i.t = load i16, ptr %i.s, align 1              ; 3 uses
  %i.u = and i16 %i.t, 2
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !227
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !788
  %i.z = and i32 %i.y, 128
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1097
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 94
  store i16 1, ptr %i.ad, align 2, !tbaa !936
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i16 1, ptr %i.ae, align 8, !tbaa !875
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.af, align 8, !tbaa !878
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !2987
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 98
  store i8 5, ptr %i.ah, align 2, !tbaa !2990
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.o, ptr %i.ai, align 8, !tbaa !1098
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 92
  store i16 3, ptr %i.aj, align 4, !tbaa !3243
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 99
  store i16 3, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.am = load i16, ptr %i.al, align 2, !tbaa !2988
  store i16 %i.am, ptr %i.a, align 2, !tbaa !330
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.an, align 2, !tbaa !330
  %i.ao = and i16 %i.t, 1
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1097
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !2795
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0194 = phi ptr [ %i.w, %bb.b ], [ %i.ac, %bb.d ], [ %4, %bb.f ], [ %4, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.au = load i16, ptr %i.at, align 2, !tbaa !2988 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4599
  %.not211 = icmp eq ptr %i.aw, null
  br i1 %.not211, label %bb.h, label %.loopexit279

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !330
  %i.az = and i16 %i.ay, 4128
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.i, label %.loopexit279

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !820
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !651
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !545
  %i.bf = and i64 %i.be, 32768
  %.not212 = icmp ne i64 %i.bf, 0
  %i.bg = and i16 %i.t, 147
  %or.cond246 = icmp eq i16 %i.bg, 0
  %or.cond345 = and i1 %.not212, %or.cond246
  br i1 %or.cond345, label %bb.j, label %.loopexit279

bb.j:                                             ; preds = %bb.i
  %i.bh = load i8, ptr %i.r, align 8, !tbaa !3497
  %i.bi = and i8 %i.bh, 16
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %.loopexit279

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1154 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !1150 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %.idx = mul nsw i64 %i.bo, 56
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %.idx
  %i.bq = call fastcc signext i16 @estLog(i16 noundef signext %i.au) ; 10 uses
  %i.br = icmp sgt i32 %i.bn, 0
  br i1 %i.br, label %.lr.ph, label %.loopexit279

.lr.ph:                                           ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bz = add i16 %i.bq, %i.au                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 63
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.cd = add i16 %i.bz, 28
  %i.ce = add i16 %i.bz, -25
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %.not.i249 = icmp slt i16 %i.bq, 43
  %i.cg = icmp samesign ult i16 %i.bq, 93
  %i.ch = icmp samesign ugt i16 %i.bq, 74
  %i.ci = zext nneg i16 %i.bq to i64
  %i.cj = getelementptr i8, ptr @sqlite3LogEstAdd.x, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -43
  %i.cl = icmp slt i16 %i.bq, -6
  %i.cm = icmp slt i16 %i.bq, 12
  %narrow = sub nsw i16 43, %i.bq
  %i.cn = sext i16 %narrow to i64
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = getelementptr inbounds nuw i8, ptr @sqlite3LogEstAdd.x, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cs = zext i1 %i.cg to i16
  %.mux303 = add nuw nsw i16 %i.bq, %i.cs
  %.mux = select i1 %i.cl, i16 43, i16 44
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %termCanDriveIndex.exit.thread
  %.0204284 = phi ptr [ %i.bl, %.lr.ph ], [ %i.eq, %termCanDriveIndex.exit.thread ] ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0204284, i64 40 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !4295
  %i.cv = load i64, ptr %i.bs, align 8, !tbaa !4306
  %i.cw = and i64 %i.cv, %i.cu
  %.not217 = icmp eq i64 %i.cw, 0
  br i1 %.not217, label %bb.m, label %termCanDriveIndex.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %.0204284, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4448 ; 2 uses
  %i.cz = load i32, ptr %i.bt, align 4, !tbaa !3554
  %.not.i = icmp eq i32 %i.cy, %i.cz
  br i1 %.not.i, label %bb.n, label %termCanDriveIndex.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %.0204284, i64 20
  %i.db = load i16, ptr %i.da, align 4, !tbaa !4492
  %i.dc = and i16 %i.db, 130
  %i.dd = icmp eq i16 %i.dc, 0
  br i1 %i.dd, label %termCanDriveIndex.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = load i8, ptr %i.r, align 8, !tbaa !3497 ; 2 uses
  %i.df = and i8 %i.de, 88
  %.not17.i = icmp eq i8 %i.df, 0
  br i1 %.not17.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val.i = load ptr, ptr %.0204284, align 8, !tbaa !1155 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !367 ; 2 uses
  %i.di = and i32 %i.dh, 3
  %.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i, label %termCanDriveIndex.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !227
  %.not5.i.i = icmp eq i32 %i.dk, %i.cy
  br i1 %.not5.i.i, label %constraintCompatibleWithOuterJoin.exit.i, label %termCanDriveIndex.exit.thread

constraintCompatibleWithOuterJoin.exit.i:         ; preds = %bb.q
  %i.dl = and i8 %i.de, 24
  %.not6.i.i = icmp ne i8 %i.dl, 0
  %i.dm = and i32 %i.dh, 2
  %.not7.i.i = icmp ne i32 %i.dm, 0
  %or.cond.i.not.i = and i1 %.not6.i.i, %.not7.i.i
  br i1 %or.cond.i.not.i, label %termCanDriveIndex.exit.thread, label %bb.r

bb.r:                                             ; preds = %constraintCompatibleWithOuterJoin.exit.i, %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %.0204284, i64 32
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !227 ; 3 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %termCanDriveIndex.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = load ptr, ptr %i.n, align 8, !tbaa !3016
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !882
  %i.dt = zext nneg i32 %i.do to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 9
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !905
  %i.dx = load ptr, ptr %.0204284, align 8, !tbaa !1155
  %i.dy = call fastcc i32 @sqlite3IndexAffinityOk(ptr noundef %i.dx, i8 noundef signext %i.dw)
  %.not20.i = icmp eq i32 %i.dy, 0
  br i1 %.not20.i, label %termCanDriveIndex.exit.thread, label %termCanDriveIndex.exit

termCanDriveIndex.exit:                           ; preds = %bb.s
  %i.dz = load ptr, ptr %i.n, align 8, !tbaa !3016
  %i.ea = call fastcc i32 @columnIsGoodIndexCandidate(ptr noundef %i.dz, i32 noundef %i.do)
  %.not218 = icmp eq i32 %i.ea, 0
  br i1 %.not218, label %termCanDriveIndex.exit.thread, label %bb.t

bb.t:                                             ; preds = %termCanDriveIndex.exit
  store i16 1, ptr %i.bu, align 8, !tbaa !227
  store i16 0, ptr %i.bv, align 2, !tbaa !4286
  store ptr null, ptr %i.bw, align 8, !tbaa !227
  store i16 1, ptr %i.bx, align 4, !tbaa !4270
  %i.eb = load ptr, ptr %i.by, align 8, !tbaa !4267
  store ptr %.0204284, ptr %i.eb, align 8, !tbaa !4297
  %i.ec = load i8, ptr %i.cb, align 1, !tbaa !922
  %i.ed = icmp eq i8 %i.ec, 2
  br i1 %i.ed, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = load i32, ptr %i.cc, align 8, !tbaa !788
  %i.ef = and i32 %i.ee, 16384
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %storemerge = phi i16 [ %i.ce, %bb.v ], [ %i.cd, %bb.u ]
  %spec.select = call i16 @llvm.smax.i16(i16 %storemerge, i16 0)
  store i16 %spec.select, ptr %i.ca, align 2, !tbaa !4471
  store i16 43, ptr %i.cf, align 2, !tbaa !4304
  br i1 %.not.i249, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.ch, label %sqlite3LogEstAdd.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = load i8, ptr %i.ck, align 1, !tbaa !227
  %i.ei = zext i8 %i.eh to i16
  %i.ej = add nuw nsw i16 %i.bq, %i.ei
  br label %sqlite3LogEstAdd.exit

bb.z:                                             ; preds = %bb.w
  br i1 %i.cm, label %sqlite3LogEstAdd.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = load i8, ptr %i.cp, align 1, !tbaa !227
  %i.el = zext i8 %i.ek to i16
  %i.em = add nuw nsw i16 %i.el, 43
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.x, %bb.z, %bb.y, %bb.aa
  %.0.i250 = phi i16 [ %i.em, %bb.aa ], [ %.mux, %bb.z ], [ %i.ej, %bb.y ], [ %.mux303, %bb.x ]
  store i16 %.0.i250, ptr %i.cq, align 4, !tbaa !4303
  store i32 16384, ptr %i.cr, align 8, !tbaa !4272
  %i.en = load i64, ptr %i.ct, align 8, !tbaa !4295
  %i.eo = or i64 %i.en, %1
  store i64 %i.eo, ptr %i.e, align 8, !tbaa !4459
  %i.ep = call fastcc i32 @whereLoopInsert(ptr noundef %0, ptr noundef nonnull %i.e)
  br label %termCanDriveIndex.exit.thread

termCanDriveIndex.exit.thread:                    ; preds = %bb.p, %bb.s, %bb.r, %bb.q, %constraintCompatibleWithOuterJoin.exit.i, %bb.m, %bb.n, %termCanDriveIndex.exit, %sqlite3LogEstAdd.exit, %bb.l
  %.1197 = phi i32 [ 0, %bb.l ], [ %i.ep, %sqlite3LogEstAdd.exit ], [ 0, %termCanDriveIndex.exit ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %constraintCompatibleWithOuterJoin.exit.i ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.p ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0204284, i64 56 ; 2 uses
  %i.er = icmp eq i32 %.1197, 0
  %i.es = icmp ult ptr %i.eq, %i.bp
  %i.et = select i1 %i.er, i1 %i.es, i1 false
  br i1 %i.et, label %bb.l, label %.loopexit279, !llvm.loop !4600

.loopexit279:                                     ; preds = %termCanDriveIndex.exit.thread, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.2 = phi i32 [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.1197, %termCanDriveIndex.exit.thread ] ; 2 uses
  %i.eu = icmp eq i32 %.2, 0
  %i.ev = icmp ne ptr %.0194, null
  %i.ew = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %i.ew, label %.lr.ph298, label %.loopexit

.lr.ph298:                                        ; preds = %.loopexit279
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 28 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 17 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 22 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 4 uses
  %i.fj = getelementptr i8, ptr %i.f, i64 32      ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.o, i64 60 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 124 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 27 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph298, %bb.cu
  %.1195292 = phi ptr [ %.0194, %.lr.ph298 ], [ %i.oe, %bb.cu ] ; 16 uses
  %.0198290 = phi i32 [ 1, %.lr.ph298 ], [ %i.of, %bb.cu ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.1195292, i64 72 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !2797 ; 2 uses
  %.not220 = icmp eq ptr %i.fw, null
  br i1 %.not220, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fx = load i32, ptr %i.ex, align 4, !tbaa !3554
end_hunk_13
begin_hunk_14_@whereLoopOutputAdjust:bb.a
  %i.fp = zext i1 %i.fo to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  store i32 0, ptr %i.q, align 8, !tbaa !227
  store i16 %i.fp, ptr %i.r, align 4, !tbaa !3504
  store <2 x ptr> <ptr @exprNodePatternLengthEst, ptr @sqlite3SelectWalkFail>, ptr %i.s, align 8, !tbaa !450
  %.not.i.i76 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i76, label %estLikePatternLength.exit.thread, label %estLikePatternLength.exit

estLikePatternLength.exit.thread:                 ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %.thread

estLikePatternLength.exit:                        ; preds = %bb.ap
  %i.fq = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %3, ptr noundef nonnull %i.fn) #62, !inline_history !3509 ; 0 uses
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !227 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  %i.fr = icmp sgt i32 %.pre.i, 0
  br i1 %i.fr, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %estLikePatternLength.exit
  %i.fs = load i16, ptr %i.p, align 2, !tbaa !4304
  %.tr = trunc i32 %.pre.i to i16
  %i.ft = shl i16 %.tr, 1
  %i.fu = sub i16 %i.fs, %i.ft
  store i16 %i.fu, ptr %i.p, align 2, !tbaa !4304
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.am, %estLikePatternLength.exit.thread, %bb.y, %bb.aa, %bb.z, %estLikePatternLength.exit, %bb.aq, %sqlite3ExprIsLikeOperator.exit, %bb.u, %bb.d, %bb.c, %bb.b
  %.3 = phi i16 [ %.06487, %bb.b ], [ %.06487, %bb.c ], [ %.06487, %bb.d ], [ %.06487, %bb.u ], [ %.06487, %estLikePatternLength.exit.thread ], [ %.1, %bb.y ], [ %.06487, %bb.z ], [ %.06487, %bb.aa ], [ %.06487, %estLikePatternLength.exit ], [ %.06487, %bb.aq ], [ %.06487, %sqlite3ExprIsLikeOperator.exit ], [ %.06487, %bb.am ], [ %.06487, %bb.i ], [ %.06487, %bb.g ] ; 2 uses
  %i.fv = add nsw i32 %.06288, -1
  %i.fw = getelementptr inbounds nuw i8, ptr %.089, i64 56
  %i.fx = icmp sgt i32 %.06288, 1
  br i1 %i.fx, label %bb.b, label %._crit_edge92.loopexit, !llvm.loop !4656

._crit_edge92.loopexit:                           ; preds = %.thread
  %i.fy = zext nneg i16 %.3 to i32
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %bb.a
  %.064.lcssa = phi i32 [ 0, %bb.a ], [ %i.fy, %._crit_edge92.loopexit ]
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !4304
  %i.gb = sext i16 %i.ga to i32
  %i.gc = sext i16 %2 to i32
  %i.gd = sub nsw i32 %i.gc, %.064.lcssa          ; 2 uses
  %i.ge = icmp slt i32 %i.gd, %i.gb
  br i1 %i.ge, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge92
  %i.gf = trunc i32 %i.gd to i16
  store i16 %i.gf, ptr %i.fz, align 2, !tbaa !4304
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge92
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 67108865) i32 @whereIsCoveringIndex(ptr %.32.val, ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.CoveringIndexCheck, align 8 ; 7 uses
  %3 = alloca %struct.Walker, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.a = icmp eq ptr %.32.val, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2048
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i16, ptr %i.f, align 8, !tbaa !875  ; 2 uses
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !878
  %wide.trip.count = zext i16 %i.g to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !4657

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !330
  %i.l = icmp sgt i16 %i.k, 62
  br i1 %i.l, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.d, %bb.b
  store ptr %0, ptr %2, align 8, !tbaa !4658
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %1, ptr %i.m, align 8, !tbaa !4660
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i8 0, ptr %i.n, align 4, !tbaa !4661
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 2 uses
  store i8 0, ptr %i.o, align 1, !tbaa !4662
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @whereIsCoveringIndexWalkCallback, ptr %i.p, align 8, !tbaa !3507
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @sqlite3SelectWalkNoop, ptr %i.q, align 8, !tbaa !3508
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.r, align 8, !tbaa !227
  %i.s = call fastcc i32 @sqlite3WalkSelect(ptr noundef nonnull %3, ptr noundef nonnull %.32.val) ; 0 uses
  %i.t = load i8, ptr %i.o, align 1, !tbaa !4662
  %.not15 = icmp eq i8 %i.t, 0
  %i.u = load i8, ptr %i.n, align 4
  %.not16 = icmp eq i8 %i.u, 0
  %. = select i1 %.not16, i32 64, i32 67108864
  %.0 = select i1 %.not15, i32 %., i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a, %.thread
  %.014 = phi i32 [ %.0, %.thread ], [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddBtreeIndex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i16 noundef signext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.WhereScan, align 8          ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4262
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !820  ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !651  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4266 ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !313
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !302
  br label %bb.eo

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 22 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !4272 ; 4 uses
  %i.l = and i32 %i.k, 32
  %.not323 = icmp eq i32 %i.l, 0
  %. = select i1 %.not323, i32 447, i32 24        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 99 ; 6 uses
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, 4
  %.not324 = icmp eq i16 %i.o, 0
  %i.p = and i32 %., 387
  %.1 = select i1 %.not324, i32 %., i32 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 54 ; 3 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !4286 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 13 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !4270 ; 6 uses
  %i.x = load i64, ptr %i.e, align 8, !tbaa !4459 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 22 ; 15 uses
  %i.z = load <4 x i16>, ptr %i.y, align 2, !tbaa !227 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !4265 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3554
  %i.ae = extractelement <4 x i16> %i.z, i64 1    ; 6 uses
  %i.af = zext i16 %i.ae to i32                   ; 4 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !4287
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !4289
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !4290
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store i32 %.1, ptr %i.ak, align 4, !tbaa !4291
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.al, align 8, !tbaa !4292
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.ad, ptr %i.am, align 4, !tbaa !5
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 42
  store i8 1, ptr %i.an, align 2, !tbaa !4293
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 41 ; 2 uses
  store i8 1, ptr %i.ao, align 1, !tbaa !4294
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !878
  %i.ar = zext i16 %i.ae to i64                   ; 11 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !330 ; 6 uses
  %5 = zext nneg i16 %i.at to i64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1098 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 52
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !891
  %i.ay = icmp eq i16 %i.at, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = icmp sgt i16 %i.at, -1
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !882
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !905
  store i8 %i.be, ptr %i.ai, align 8, !tbaa !4290
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2803
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ar
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !251
  store ptr %i.bi, ptr %i.aj, align 8, !tbaa !4298
  br label %.thread.i

bb.f:                                             ; preds = %bb.d
  %i.bj = icmp eq i16 %i.at, -2
  br i1 %i.bj, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2799
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ar
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !902
  store ptr %i.bo, ptr %i.ah, align 8, !tbaa !4299
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2803
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.ar
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !251
  store ptr %i.bs, ptr %i.aj, align 8, !tbaa !4298
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i16 -2, ptr %i.bt, align 8, !tbaa !330
  %i.bu = call fastcc ptr @whereScanInitIndexExpr(ptr noundef nonnull %4)
  br label %whereScanInit.exit

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.c
  %.2.i = phi i16 [ %i.at, %bb.f ], [ -1, %bb.c ], [ %i.at, %bb.e ]
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i16 %.2.i, ptr %i.bv, align 8, !tbaa !330
  %i.bw = call fastcc ptr @whereScanNext(ptr noundef nonnull %4)
  br label %whereScanInit.exit

whereScanInit.exit:                               ; preds = %bb.g, %.thread.i
  %.1.i = phi ptr [ %i.bw, %.thread.i ], [ %i.bu, %bb.g ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i16 0, ptr %i.bx, align 2, !tbaa !4471
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2987
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !330 ; 5 uses
  %i.cb = icmp slt i16 %i.ca, 11
  br i1 %i.cb, label %estLog.exit, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %whereScanInit.exit
  %i.cc = zext nneg i16 %i.ca to i64              ; 3 uses
  %i.cd = icmp samesign ugt i16 %i.ca, 255
  br i1 %i.cd, label %.lr.ph.i.i, label %.preheader21.i.i

.preheader21.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader23.i.i
  %.115.lcssa.i.i = phi i64 [ %i.cc, %.preheader23.i.i ], [ %.lcssa612, %.lr.ph.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i16 [ 40, %.preheader23.i.i ], [ %.lcssa613, %.lr.ph.i.i ] ; 2 uses
  %i.ce = icmp samesign ugt i64 %.115.lcssa.i.i, 15
  br i1 %i.ce, label %.lr.ph29.i.i, label %sqlite3LogEst.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader23.i.i
  %i.cf = lshr i64 %i.cc, 4
  %i.cg = icmp ugt i16 %i.ca, 4095                ; 2 uses
  %i.ch = lshr i64 %i.cc, 8
  %.lcssa613 = select i1 %i.cg, i16 120, i16 80
  %.lcssa612 = select i1 %i.cg, i64 %i.ch, i64 %i.cf
  br label %.preheader21.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader21.i.i, %.lr.ph29.i.i
  %.228.i.i = phi i16 [ %i.ci, %.lr.ph29.i.i ], [ %.1.lcssa.i.i, %.preheader21.i.i ]
  %.21627.i.i = phi i64 [ %i.cj, %.lr.ph29.i.i ], [ %.115.lcssa.i.i, %.preheader21.i.i ] ; 2 uses
  %i.ci = add nuw nsw i16 %.228.i.i, 10           ; 2 uses
  %i.cj = lshr i64 %.21627.i.i, 1                 ; 2 uses
  %i.ck = icmp samesign ugt i64 %.21627.i.i, 31
  br i1 %i.ck, label %.lr.ph29.i.i, label %sqlite3LogEst.exit.i, !llvm.loop !1342

sqlite3LogEst.exit.i:                             ; preds = %.lr.ph29.i.i, %.preheader21.i.i
  %.317.i.i = phi i64 [ %.115.lcssa.i.i, %.preheader21.i.i ], [ %i.cj, %.lr.ph29.i.i ]
  %.3.i.i = phi i16 [ %.1.lcssa.i.i, %.preheader21.i.i ], [ %i.ci, %.lr.ph29.i.i ]
  %i.cl = and i64 %.317.i.i, 7
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !330
  %i.co = add i16 %.3.i.i, -43
  %i.cp = add i16 %i.co, %i.cn
  br label %estLog.exit

estLog.exit:                                      ; preds = %whereScanInit.exit, %sqlite3LogEst.exit.i
  %i.cq = phi i16 [ %i.cp, %sqlite3LogEst.exit.i ], [ 0, %whereScanInit.exit ] ; 7 uses
  %i.cr = zext i16 %i.w to i32                    ; 2 uses
  %i.cs = add nuw nsw i32 %i.cr, 8
  %i.ct = and i32 %i.cs, 131064                   ; 2 uses
  %i.cu = shl nuw nsw i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %.not480 = icmp eq ptr %.1.i, null
  br i1 %.not480, label %whereLoopResize.exit, label %.lr.ph473

.lr.ph473:                                        ; preds = %estLog.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 98 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 94 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.de = trunc i32 %i.ct to i16
  %i.df = icmp sgt i16 %i.cq, 9
  %i.dg = zext nneg i16 %i.cq to i32
  %i.dh = icmp slt i16 %3, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dj = icmp eq i16 %3, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = sext i16 %i.cq to i32                   ; 6 uses
  %invariant.op = add nsw i32 %i.dp, -49
  %invariant.op479 = add nsw i32 %i.dp, -31
  %i.dq = add i16 %i.cq, 1
  %i.dr = add nsw i32 %i.dp, 49
  %i.ds = add nsw i32 %i.dp, 31
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.dx = extractelement <4 x i16> %i.z, i64 0    ; 2 uses
  %i.dy = extractelement <4 x i16> %i.z, i64 3
  %i.dz = shufflevector <4 x i16> %i.z, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph473, %constraintCompatibleWithOuterJoin.exit.thread
  %.0283469 = phi ptr [ %.1.i, %.lr.ph473 ], [ %i.ww, %constraintCompatibleWithOuterJoin.exit.thread ] ; 17 uses
  %.0287468 = phi ptr [ null, %.lr.ph473 ], [ %.4.ph, %constraintCompatibleWithOuterJoin.exit.thread ] ; 14 uses
  %.0291467 = phi ptr [ null, %.lr.ph473 ], [ %.4295.ph, %constraintCompatibleWithOuterJoin.exit.thread ] ; 14 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0283469, i64 20
  %i.eb = load i16, ptr %i.ea, align 4, !tbaa !4492 ; 3 uses
  %i.ec = zext i16 %i.eb to i32                   ; 6 uses
  %i.ed = icmp eq i16 %i.eb, 256
  br i1 %i.ed, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %.0283469, i64 18
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !4283
  %i.eg = and i16 %i.ef, 128
  %.not325 = icmp eq i16 %i.eg, 0
  br i1 %.not325, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eh = load ptr, ptr %i.ap, align 8, !tbaa !878
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.ar
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !330 ; 3 uses
  %i.ek = icmp sgt i16 %i.ej, -1
  br i1 %i.ek, label %bb.k, label %indexColumnNotNull.exit

bb.k:                                             ; preds = %bb.j
  %i.el = load ptr, ptr %i.au, align 8, !tbaa !1098
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !882
  %i.eo = zext nneg i16 %i.ej to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i8, ptr %i.eq, align 8
  %i.es = and i8 %i.er, 15
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.l, label %constraintCompatibleWithOuterJoin.exit.thread

indexColumnNotNull.exit:                          ; preds = %bb.j
  %.not571 = icmp eq i16 %i.ej, -1
  br i1 %.not571, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %indexColumnNotNull.exit, %bb.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.0283469, i64 40 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !4295
  %i.ew = load i64, ptr %i.cw, align 8, !tbaa !4306 ; 2 uses
  %i.ex = and i64 %i.ew, %i.ev
  %.not327 = icmp eq i64 %i.ex, 0
  br i1 %.not327, label %bb.m, label %constraintCompatibleWithOuterJoin.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %.0283469, i64 18 ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !4283
  %i.fa = and i16 %i.ez, 256
  %.not328 = icmp ne i16 %i.fa, 0
  %i.fb = icmp eq i16 %i.eb, 16
  %or.cond439 = and i1 %i.fb, %.not328
end_hunk_14
begin_hunk_15_@whereLoopAddBtreeIndex:bb.a
  %i.kg = or i32 %i.kf, 1                         ; 3 uses
  store i32 %i.kg, ptr %i.j, align 8, !tbaa !4272
  %i.kh = icmp eq i16 %i.ke, -1
  br i1 %i.kh, label %.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ki = icmp sgt i16 %i.ke, -1
  %or.cond8 = and i1 %i.dj, %i.ki
  br i1 %or.cond8, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.kj = load i16, ptr %i.cz, align 2, !tbaa !936 ; 2 uses
  %i.kk = zext i16 %i.kj to i32
  %i.kl = add nsw i32 %i.kk, -1
  %i.km = icmp eq i32 %i.kl, %i.af
  br i1 %i.km, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.kn = load i16, ptr %i.m, align 1
  %i.ko = and i16 %i.kn, 8
  %.not341 = icmp eq i16 %i.ko, 0
  br i1 %.not341, label %bb.aw, label %.sink.split

bb.aw:                                            ; preds = %bb.av
  %i.kp = icmp eq i16 %i.kj, 1
  br i1 %i.kp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kq = load i8, ptr %i.cy, align 2, !tbaa !2990
  %.not342 = icmp eq i8 %i.kq, 0
  %i.kr = and i32 %i.ec, 2
  %.not343 = icmp eq i32 %i.kr, 0
  %or.cond355 = or i1 %.not343, %.not342
  br i1 %or.cond355, label %bb.ay, label %.sink.split

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  br label %.sink.split

.sink.split:                                      ; preds = %bb.av, %bb.ax, %bb.as, %bb.ay
  %.sink567 = phi i32 [ 65537, %bb.ay ], [ 4097, %bb.as ], [ 4097, %bb.ax ], [ 4097, %bb.av ]
  %i.ks = or i32 %i.kf, %.sink567                 ; 2 uses
  store i32 %i.ks, ptr %i.j, align 8, !tbaa !4272
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.au, %bb.at
  %i.kt = phi i32 [ %i.kg, %bb.au ], [ %i.kg, %bb.at ], [ %i.ks, %.sink.split ] ; 2 uses
  %i.ku = load i8, ptr %i.ao, align 1, !tbaa !4294
  %i.kv = icmp ugt i8 %i.ku, 1
  br i1 %i.kv, label %bb.ba, label %.thread404

bb.ba:                                            ; preds = %bb.az
  %i.kw = or i32 %i.kt, 2097152                   ; 2 uses
  store i32 %i.kw, ptr %i.j, align 8, !tbaa !4272
  br label %.thread404

bb.bb:                                            ; preds = %bb.ar
  %i.kx = and i32 %i.ec, 256
  %.not336 = icmp eq i32 %i.kx, 0
  br i1 %.not336, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ky = load i32, ptr %i.j, align 8, !tbaa !4272
  %i.kz = or i32 %i.ky, 8                         ; 2 uses
  store i32 %i.kz, ptr %i.j, align 8, !tbaa !4272
  br label %.thread404

bb.bd:                                            ; preds = %bb.bb
  %i.la = load i32, ptr %i.ac, align 4, !tbaa !3554
  %i.lb = load ptr, ptr %.0283469, align 8, !tbaa !1155
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !371 ; 4 uses
  %i.le = load i8, ptr %i.ld, align 8, !tbaa !3021 ; 2 uses
  %i.lf = icmp eq i8 %i.le, -80
  br i1 %i.lf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.lh = load i8, ptr %i.lg, align 2, !tbaa !3275
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0.i.i = phi i8 [ %i.lh, %bb.be ], [ %i.le, %bb.bd ]
  switch i8 %.0.i.i, label %sqlite3ExprVectorSize.exit.i [
    i8 -79, label %bb.bg
    i8 -117, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  br label %.sink.split.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !227
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bh, %bb.bg
  %.sink.in.i.i = phi ptr [ %i.ll, %bb.bh ], [ %i.li, %bb.bg ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !227
  %i.lm = load i32, ptr %.sink.i.i, align 8, !tbaa !5
  br label %sqlite3ExprVectorSize.exit.i

sqlite3ExprVectorSize.exit.i:                     ; preds = %.sink.split.i.i, %bb.bf
  %.07.i.i = phi i32 [ 1, %bb.bf ], [ %i.lm, %.sink.split.i.i ]
  %i.ln = load i16, ptr %i.dk, align 8, !tbaa !875
  %i.lo = zext i16 %i.ln to i32
  %i.lp = sub nsw i32 %i.lo, %i.af
  %..i375 = tail call i32 @llvm.smin.i32(i32 %.07.i.i, i32 %i.lp) ; 3 uses
  %i.lq = icmp sgt i32 %..i375, 1
  br i1 %i.lq, label %.lr.ph.i377, label %whereRangeVectorLen.exit

.lr.ph.i377:                                      ; preds = %sqlite3ExprVectorSize.exit.i
  %wide.trip.count.i = zext nneg i32 %..i375 to i64
  br label %bb.bi

bb.bi:                                            ; preds = %sqlite3StrICmp.exit.thread.i, %.lr.ph.i377
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i377 ], [ %indvars.iv.next.i, %sqlite3StrICmp.exit.thread.i ] ; 11 uses
  %i.lr = load ptr, ptr %.0283469, align 8, !tbaa !1155 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !371
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !227
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv.i
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !902 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !1157 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !367
  %i.md = and i32 %i.mc, 4096
  %.not.i378 = icmp eq i32 %i.md, 0
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 32 ; 2 uses
  br i1 %.not.i378, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !227
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn49.in.i = phi ptr [ %i.mg, %bb.bj ], [ %i.me, %bb.bi ]
  %.pn49.i = load ptr, ptr %.pn49.in.i, align 8, !tbaa !227
  %.pn.i = getelementptr inbounds nuw i8, ptr %.pn49.i, i64 8
  %.044.in.i = getelementptr inbounds nuw [24 x i8], ptr %.pn.i, i64 %indvars.iv.i
  %.044.i = load ptr, ptr %.044.in.i, align 8, !tbaa !902
  %i.mh = load i8, ptr %i.ly, align 8, !tbaa !3021
  %.not50.i = icmp eq i8 %i.mh, -88
  br i1 %.not50.i, label %bb.bl, label %.thread.loopexit96.split.loop.exit104.i

bb.bl:                                            ; preds = %bb.bk
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 44
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3581
  %.not51.i = icmp eq i32 %i.mj, %i.la
  br i1 %.not51.i, label %bb.bm, label %.thread.loopexit96.split.loop.exit100.i

bb.bm:                                            ; preds = %bb.bl
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 48 ; 2 uses
  %i.ml = load i16, ptr %i.mk, align 8, !tbaa !3487
  %i.mm = load ptr, ptr %i.ap, align 8, !tbaa !878
  %i.mn = add nuw nsw i64 %indvars.iv.i, %i.ar    ; 3 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !330
  %.not52.i = icmp eq i16 %i.ml, %i.mp
  br i1 %.not52.i, label %bb.bn, label %.thread.loopexit96.split.loop.exit.i

bb.bn:                                            ; preds = %bb.bm
  %i.mq = load ptr, ptr %i.dl, align 8, !tbaa !3603 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mn
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !227
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.ar
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !227
  %.not53.i = icmp eq i8 %i.ms, %i.mu
  br i1 %.not53.i, label %bb.bo, label %.thread.loopexit96.split.loop.exit98.i

bb.bo:                                            ; preds = %bb.bn
  %i.mv = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef nonnull %i.ly) ; 3 uses
  %i.mw = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef readonly %.044.i) ; 4 uses
  %i.mx = icmp sgt i8 %i.mw, 64
  %i.my = icmp sgt i8 %i.mv, 64
  %or.cond.i.i = and i1 %i.my, %i.mx
  br i1 %or.cond.i.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.mz = icmp samesign ugt i8 %i.mw, 66
  %i.na = icmp samesign ugt i8 %i.mv, 66
  %or.cond5.i.i = or i1 %i.na, %i.mz
  %..i.i = select i1 %or.cond5.i.i, i8 67, i8 65
  br label %sqlite3CompareAffinity.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.nb = icmp slt i8 %i.mw, 65
  %i.nc = select i1 %i.nb, i8 %i.mv, i8 %i.mw
  %i.nd = or i8 %i.nc, 64
  br label %sqlite3CompareAffinity.exit.i

sqlite3CompareAffinity.exit.i:                    ; preds = %bb.bq, %bb.bp
  %.0.i57.i = phi i8 [ %..i.i, %bb.bp ], [ %i.nd, %bb.bq ]
  %i.ne = load ptr, ptr %i.au, align 8, !tbaa !1098 ; 2 uses
  %i.nf = load i16, ptr %i.mk, align 8, !tbaa !3487 ; 3 uses
  %6 = zext nneg i16 %i.nf to i64
  %i.ng = icmp slt i16 %i.nf, 0
  br i1 %i.ng, label %sqlite3TableColumnAffinity.exit.i, label %bb.br

bb.br:                                            ; preds = %sqlite3CompareAffinity.exit.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 54
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !881
  %.not.i.i = icmp slt i16 %i.nf, %i.ni
  br i1 %.not.i.i, label %bb.bs, label %sqlite3TableColumnAffinity.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !882
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %i.nk, i64 %6
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 9
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !905
  br label %sqlite3TableColumnAffinity.exit.i

sqlite3TableColumnAffinity.exit.i:                ; preds = %bb.bs, %bb.br, %sqlite3CompareAffinity.exit.i
  %.0.i58.i = phi i8 [ %i.nn, %bb.bs ], [ 68, %bb.br ], [ 68, %sqlite3CompareAffinity.exit.i ]
  %.not54.i = icmp eq i8 %.0.i57.i, %.0.i58.i
  br i1 %.not54.i, label %bb.bt, label %.thread.loopexit96.split.loop.exit102.i

bb.bt:                                            ; preds = %sqlite3TableColumnAffinity.exit.i
  %i.no = load ptr, ptr %.0283469, align 8, !tbaa !1155 ; 5 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !367
  %i.nr = and i32 %i.nq, 1024
  %.not.i59.i = icmp eq i32 %i.nr, 0
  br i1 %.not.i59.i, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !1157 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !371 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !367
  %i.ny = and i32 %i.nx, 512
  %.not.i.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i.i.i, label %bb.bv, label %sqlite3ExprCompareCollSeq.exit.i

bb.bv:                                            ; preds = %bb.bu
  %.not15.i.i.i = icmp eq ptr %i.nv, null
  br i1 %.not15.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !367
  %i.ob = and i32 %i.oa, 512
  %.not16.i.i.i = icmp eq i32 %i.ob, 0
  br i1 %.not16.i.i.i, label %bb.bx, label %sqlite3ExprCompareCollSeq.exit.i

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.oc = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.nt) ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not17.i.i.i, label %sqlite3ExprCompareCollSeq.exit.i, label %sqlite3ExprCompareCollSeq.exit.thread.i

bb.by:                                            ; preds = %bb.bt
  %i.od = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !371 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !1157 ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !367
  %i.oj = and i32 %i.oi, 512
  %.not.i8.i.i = icmp eq i32 %i.oj, 0
  br i1 %.not.i8.i.i, label %bb.bz, label %sqlite3ExprCompareCollSeq.exit.i

bb.bz:                                            ; preds = %bb.by
  %.not15.i12.i.i = icmp eq ptr %i.og, null
  br i1 %.not15.i12.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !367
  %i.om = and i32 %i.ol, 512
  %.not16.i13.i.i = icmp eq i32 %i.om, 0
  br i1 %.not16.i13.i.i, label %bb.cb, label %sqlite3ExprCompareCollSeq.exit.i

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.on = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.oe) ; 2 uses
  %.not17.i14.i.i = icmp eq ptr %i.on, null
  br i1 %.not17.i14.i.i, label %sqlite3ExprCompareCollSeq.exit.i, label %sqlite3ExprCompareCollSeq.exit.thread.i

sqlite3ExprCompareCollSeq.exit.i:                 ; preds = %bb.cb, %bb.ca, %bb.by, %bb.bx, %bb.bw, %bb.bu
  %.sink.i10.sink.i.i = phi ptr [ %i.nv, %bb.bx ], [ %i.nt, %bb.bu ], [ %i.nv, %bb.bw ], [ %i.oe, %bb.by ], [ %i.og, %bb.ca ], [ %i.og, %bb.cb ]
  %i.oo = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef nonnull %i.b, ptr noundef %.sink.i10.sink.i.i) ; 2 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %.thread.loopexit96.split.loop.exit106.i, label %sqlite3ExprCompareCollSeq.exit.thread.i

sqlite3ExprCompareCollSeq.exit.thread.i:          ; preds = %sqlite3ExprCompareCollSeq.exit.i, %bb.cb, %bb.bx
  %.0.i6064.i = phi ptr [ %i.oo, %sqlite3ExprCompareCollSeq.exit.i ], [ %i.oc, %bb.bx ], [ %i.on, %bb.cb ]
  %i.oq = load ptr, ptr %.0.i6064.i, align 8, !tbaa !569
  %i.or = load ptr, ptr %i.dm, align 8, !tbaa !2803
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.mn
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !251
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cf, %sqlite3ExprCompareCollSeq.exit.thread.i
  %.013.i.i = phi ptr [ %i.ot, %sqlite3ExprCompareCollSeq.exit.thread.i ], [ %i.pf, %bb.cf ] ; 2 uses
  %.0.i61.i = phi ptr [ %i.oq, %sqlite3ExprCompareCollSeq.exit.thread.i ], [ %i.pe, %bb.cf ] ; 2 uses
  %i.ou = load i8, ptr %.0.i61.i, align 1, !tbaa !227 ; 3 uses
  %i.ov = load i8, ptr %.013.i.i, align 1, !tbaa !227 ; 2 uses
  %i.ow = icmp eq i8 %i.ou, %i.ov
  br i1 %i.ow, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ox = icmp eq i8 %i.ou, 0
  br i1 %i.ox, label %sqlite3StrICmp.exit.thread.i, label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.oy = zext i8 %i.ou to i64
  %i.oz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !227
  %i.pb = zext i8 %i.ov to i64
  %i.pc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !227
  %.not.i62.i = icmp eq i8 %i.pa, %i.pd
  br i1 %.not.i62.i, label %bb.cf, label %.thread.loopexit.i

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.pe = getelementptr inbounds nuw i8, ptr %.0.i61.i, i64 1
  %i.pf = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  br label %bb.cc

sqlite3StrICmp.exit.thread.i:                     ; preds = %bb.cd
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %whereRangeVectorLen.exit, label %bb.bi, !llvm.loop !4664

.thread.loopexit.i:                               ; preds = %bb.ce
  %i.pg = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %whereRangeVectorLen.exit

.thread.loopexit96.split.loop.exit.i:             ; preds = %bb.bm
  %i.ph = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %whereRangeVectorLen.exit

.thread.loopexit96.split.loop.exit98.i:           ; preds = %bb.bn
  %i.pi = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %whereRangeVectorLen.exit

.thread.loopexit96.split.loop.exit100.i:          ; preds = %bb.bl
  %i.pj = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %whereRangeVectorLen.exit

.thread.loopexit96.split.loop.exit102.i:          ; preds = %sqlite3TableColumnAffinity.exit.i
  %i.pk = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %whereRangeVectorLen.exit

.thread.loopexit96.split.loop.exit104.i:          ; preds = %bb.bk
  %i.pl = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %whereRangeVectorLen.exit

.thread.loopexit96.split.loop.exit106.i:          ; preds = %sqlite3ExprCompareCollSeq.exit.i
  %i.pm = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %whereRangeVectorLen.exit

whereRangeVectorLen.exit:                         ; preds = %sqlite3StrICmp.exit.thread.i, %sqlite3ExprVectorSize.exit.i, %.thread.loopexit.i, %.thread.loopexit96.split.loop.exit.i, %.thread.loopexit96.split.loop.exit98.i, %.thread.loopexit96.split.loop.exit100.i, %.thread.loopexit96.split.loop.exit102.i, %.thread.loopexit96.split.loop.exit104.i, %.thread.loopexit96.split.loop.exit106.i
  %.04571.i = phi i32 [ %i.pg, %.thread.loopexit.i ], [ 1, %sqlite3ExprVectorSize.exit.i ], [ %i.pm, %.thread.loopexit96.split.loop.exit106.i ], [ %i.pl, %.thread.loopexit96.split.loop.exit104.i ], [ %i.pk, %.thread.loopexit96.split.loop.exit102.i ], [ %i.pj, %.thread.loopexit96.split.loop.exit100.i ], [ %i.pi, %.thread.loopexit96.split.loop.exit98.i ], [ %i.ph, %.thread.loopexit96.split.loop.exit.i ], [ %..i375, %sqlite3StrICmp.exit.thread.i ]
  %i.pn = and i32 %i.ec, 36
  %.not337 = icmp eq i32 %i.pn, 0
  %i.po = load i32, ptr %i.j, align 8, !tbaa !4272 ; 3 uses
  %i.pp = trunc i32 %.04571.i to i16              ; 2 uses
  br i1 %.not337, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %whereRangeVectorLen.exit
  %i.pq = or i32 %i.po, 34                        ; 2 uses
  store i32 %i.pq, ptr %i.j, align 8, !tbaa !4272
  store i16 %i.pp, ptr %i.r, align 2, !tbaa !227
  %i.pr = load i16, ptr %i.ey, align 2, !tbaa !4283
  %i.ps = and i16 %i.pr, 256
  %.not339 = icmp eq i16 %i.ps, 0
  br i1 %.not339, label %.thread404, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pt = load i16, ptr %i.v, align 4, !tbaa !4270
  %i.pu = zext i16 %i.pt to i32
  %i.pv = add nuw nsw i32 %i.pu, 1
  %i.pw = tail call fastcc i32 @whereLoopResize(ptr noundef %i.c, ptr noundef nonnull %i.e, i32 noundef %i.pv)
  %.not340 = icmp eq i32 %i.pw, 0
  br i1 %.not340, label %bb.ci, label %whereLoopResize.exit

bb.ci:                                            ; preds = %bb.ch
  %i.px = getelementptr inbounds nuw i8, ptr %.0283469, i64 56 ; 2 uses
  %i.py = load ptr, ptr %i.dc, align 8, !tbaa !4267
  %i.pz = load i16, ptr %i.v, align 4, !tbaa !4270 ; 2 uses
  %i.qa = add i16 %i.pz, 1
  store i16 %i.qa, ptr %i.v, align 4, !tbaa !4270
  %i.qb = zext i16 %i.pz to i64
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.qb
  store ptr %i.px, ptr %i.qc, align 8, !tbaa !4297
  %i.qd = load i32, ptr %i.j, align 8, !tbaa !4272
  %i.qe = or i32 %i.qd, 16                        ; 2 uses
  store i32 %i.qe, ptr %i.j, align 8, !tbaa !4272
  store i16 1, ptr %i.s, align 4, !tbaa !227
  br label %.thread404

bb.cj:                                            ; preds = %whereRangeVectorLen.exit
  %i.qf = or i32 %i.po, 18                        ; 3 uses
end_hunk_15
begin_hunk_16_@fts3SnippetFunc:bb.a
bb.ek:                                            ; preds = %bb.ei, %sqlite3_mutex_enter.exit.i.i.i.i
  %i.wi = load ptr, ptr %i.vv, align 8, !tbaa !146 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 80
  store i32 25, ptr %i.wj, align 8, !tbaa !589
  call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.wi, i32 noundef 25), !inline_history !6167
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.012.i.ph.i.i.i = phi ptr [ %i.wh, %bb.ej ], [ @columnNullValue.nullMem, %bb.ek ]
  %i.wk = getelementptr inbounds nuw i8, ptr %.012.i.ph.i.i.i, i64 20
  %i.wl = load i16, ptr %i.wk, align 4, !tbaa !162
  %i.wm = and i16 %i.wl, 63
  %i.wn = zext nneg i16 %i.wm to i64
  %i.wo = load ptr, ptr %i.vv, align 8, !tbaa !146 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vv, i64 52 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !530 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 103
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !550
  %i.wt = icmp ne i8 %i.ws, 0
  %i.wu = icmp ne i32 %i.wq, 0
  %or.cond.i.i.i.i.i = or i1 %i.wu, %i.wt
  br i1 %or.cond.i.i.i.i.i, label %bb.em, label %sqlite3ApiExit.exit.i.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.wv = call fastcc i32 @apiHandleError(ptr noundef nonnull %i.wo, i32 noundef %i.wq), !inline_history !6167
  %.pre.i.i.i.i = load ptr, ptr %i.vv, align 8, !tbaa !146
  br label %sqlite3ApiExit.exit.i.i.i.i

sqlite3ApiExit.exit.i.i.i.i:                      ; preds = %bb.em, %bb.el
  %i.ww = phi ptr [ %.pre.i.i.i.i, %bb.em ], [ %i.wo, %bb.el ]
  %.0.i.i.i.i85.i = phi i32 [ %i.wv, %bb.em ], [ 0, %bb.el ]
  store i32 %.0.i.i.i.i85.i, ptr %i.wp, align 4, !tbaa !530
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !23 ; 2 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.wy, null
  br i1 %.not.i.i4.i.i.i, label %sqlite3_column_type.exit.i.i, label %bb.en

bb.en:                                            ; preds = %sqlite3ApiExit.exit.i.i.i.i
  %i.wz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.wz(ptr noundef nonnull %i.wy) #59, !inline_history !6169
  br label %sqlite3_column_type.exit.i.i

sqlite3_column_type.exit.i.i:                     ; preds = %bb.en, %sqlite3ApiExit.exit.i.i.i.i
  %i.xa = lshr i64 -6148914691236517206, %i.wn
  %.fr.i.i = freeze i64 %i.xa
  %.not90.i.i = trunc i64 %.fr.i.i to i1
  br i1 %.not90.i.i, label %fts3SnippetText.exit.i, label %fts3SnippetText.exit.thread.i

bb.eo:                                            ; preds = %bb.ee
  %i.xb = call i32 @sqlite3_column_bytes(ptr noundef %i.vv, i32 noundef %i.vr), !inline_history !6167 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vl, i64 72 ; 2 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !5514 ; 3 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !5515 ; 6 uses
  %i.xf = load i32, ptr %i.vh, align 8, !tbaa !5526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  store ptr null, ptr %i.g, align 8, !tbaa !5271
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !5737
  %i.xi = call i32 %i.xh(ptr noundef nonnull %i.xd, ptr noundef nonnull %i.vt, i32 noundef %i.xb, ptr noundef nonnull %i.g) #59, !inline_history !6170 ; 2 uses
  %i.xj = icmp eq i32 %i.xi, 0
  %.pre16.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !5271 ; 3 uses
  br i1 %i.xj, label %bb.ep, label %sqlite3Fts3OpenTokenizer.exit.thread.i.i

bb.ep:                                            ; preds = %bb.eo
  store ptr %i.xd, ptr %.pre16.i.i.i, align 8, !tbaa !5463
  %i.xk = load i32, ptr %i.xe, align 8, !tbaa !5739
  %i.xl = icmp sgt i32 %i.xk, 0
  br i1 %i.xl, label %bb.eq, label %sqlite3Fts3OpenTokenizer.exit.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 48
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !5740
  %i.xo = call i32 %i.xn(ptr noundef nonnull %.pre16.i.i.i, i32 noundef %i.xf) #59, !inline_history !6170 ; 2 uses
  %.not.i.i82.i = icmp eq i32 %i.xo, 0
  %.pre.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !5271 ; 2 uses
  br i1 %.not.i.i82.i, label %sqlite3Fts3OpenTokenizer.exit.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !5741
  %i.xr = call i32 %i.xq(ptr noundef %.pre.i.i.i) #59, !inline_history !6170 ; 0 uses
  br label %sqlite3Fts3OpenTokenizer.exit.thread.i.i

sqlite3Fts3OpenTokenizer.exit.thread.i.i:         ; preds = %bb.eo, %bb.er
  %.0.i.ph.i.i = phi i32 [ %i.xo, %bb.er ], [ %i.xi, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  br label %fts3SnippetText.exit.thread.i

sqlite3Fts3OpenTokenizer.exit.i.i:                ; preds = %bb.eq, %bb.ep
  %i.xs = phi ptr [ %.pre16.i.i.i, %bb.ep ], [ %.pre.i.i.i, %bb.eq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xe, i64 40
  %i.xu = icmp ne i64 %indvars.iv339.i, 0
  br label %bb.es

bb.es:                                            ; preds = %fts3StringAppend.exit.i.i, %sqlite3Fts3OpenTokenizer.exit.i.i
  %.sroa.098.2.i = phi ptr [ %.sroa.098.0276.i, %sqlite3Fts3OpenTokenizer.exit.i.i ], [ %.sroa.098.11.i, %fts3StringAppend.exit.i.i ] ; 17 uses
  %.sroa.27.1.i = phi i32 [ %.sroa.27.0277.i, %sqlite3Fts3OpenTokenizer.exit.i.i ], [ %.sroa.27.8.i, %fts3StringAppend.exit.i.i ] ; 19 uses
  %.sroa.55.1.i = phi i32 [ %.sroa.55.0278.i, %sqlite3Fts3OpenTokenizer.exit.i.i ], [ %.sroa.55.10.i, %fts3StringAppend.exit.i.i ] ; 20 uses
  %.070259.i.i = phi i32 [ 0, %sqlite3Fts3OpenTokenizer.exit.i.i ], [ %.171.i.i, %fts3StringAppend.exit.i.i ] ; 5 uses
  %.072258.i.i = phi i32 [ 0, %sqlite3Fts3OpenTokenizer.exit.i.i ], [ %.274.i.i, %fts3StringAppend.exit.i.i ] ; 2 uses
  %.0187256.i.i = phi i32 [ %i.vn, %sqlite3Fts3OpenTokenizer.exit.i.i ], [ %.2189.i.i, %fts3StringAppend.exit.i.i ] ; 6 uses
  %.0191254.i.i = phi i64 [ %i.vp, %sqlite3Fts3OpenTokenizer.exit.i.i ], [ %.2193.i.i, %fts3StringAppend.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #59
  store i32 -1, ptr %i.j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #59
  store i32 0, ptr %i.k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #59
  store i32 0, ptr %i.l, align 4, !tbaa !5
  %i.xv = load ptr, ptr %i.xt, align 8, !tbaa !5742
  %i.xw = call i32 %i.xv(ptr noundef %i.xs, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.h) #59, !inline_history !6167 ; 2 uses
  switch i32 %i.xw, label %.loopexit.sink.split.i.i [
    i32 0, label %bb.ex
    i32 101, label %bb.et
  ]

bb.et:                                            ; preds = %bb.es
  %i.xx = sext i32 %.070259.i.i to i64
  %i.xy = getelementptr inbounds i8, ptr %i.vt, i64 %i.xx ; 2 uses
  %i.xz = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.xy) #60, !inline_history !6171 ; 3 uses
  %i.ya = trunc i64 %i.xz to i32                  ; 2 uses
  %i.yb = add i32 %.sroa.27.1.i, 1
  %i.yc = add i32 %i.yb, %i.ya
  %.not.i92.i.i = icmp slt i32 %i.yc, %.sroa.55.1.i
  br i1 %.not.i92.i.i, label %._crit_edge.i.i76.i, label %bb.eu

._crit_edge.i.i76.i:                              ; preds = %bb.et
  %sext233.i.i = shl i64 %i.xz, 32
  %.pre34.i.i.i = ashr exact i64 %sext233.i.i, 32
  br label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.yd = sext i32 %.sroa.55.1.i to i64
  %sext.i.i = shl i64 %i.xz, 32
  %i.ye = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.yf = add nsw i64 %i.yd, 100
  %i.yg = add nsw i64 %i.yf, %i.ye                ; 2 uses
  %i.yh = call i32 @sqlite3_initialize(), !inline_history !6172
  %.not.i.i94.i.i = icmp eq i32 %i.yh, 0
  br i1 %.not.i.i94.i.i, label %sqlite3_realloc64.exit.i.i.i, label %.loopexit.sink.split.i.i

sqlite3_realloc64.exit.i.i.i:                     ; preds = %bb.eu
  %i.yi = call fastcc ptr @sqlite3Realloc(ptr noundef %.sroa.098.2.i, i64 noundef %i.yg), !inline_history !6172 ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.yi, null
  br i1 %.not28.i.i.i, label %.loopexit.sink.split.i.i, label %bb.ev

bb.ev:                                            ; preds = %sqlite3_realloc64.exit.i.i.i
  %i.yj = trunc i64 %i.yg to i32
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %._crit_edge.i.i76.i
  %.sroa.098.5.i = phi ptr [ %.sroa.098.2.i, %._crit_edge.i.i76.i ], [ %i.yi, %bb.ev ] ; 2 uses
  %.sroa.55.4.i = phi i32 [ %.sroa.55.1.i, %._crit_edge.i.i76.i ], [ %i.yj, %bb.ev ]
  %.pre-phi.i.i.i = phi i64 [ %.pre34.i.i.i, %._crit_edge.i.i76.i ], [ %i.ye, %bb.ev ]
  %i.yk = sext i32 %.sroa.27.1.i to i64
  %i.yl = getelementptr inbounds i8, ptr %.sroa.098.5.i, i64 %i.yk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yl, ptr nonnull readonly align 1 %i.xy, i64 %.pre-phi.i.i.i, i1 false)
  br label %fts3StringAppend.exit.thread.sink.split.i.i

bb.ex:                                            ; preds = %bb.es
  %i.ym = load i32, ptr %i.h, align 4, !tbaa !5   ; 2 uses
  %i.yn = icmp slt i32 %i.ym, %.0187256.i.i
  br i1 %i.yn, label %fts3StringAppend.exit.i.i, label %bb.ey, !llvm.loop !6173

bb.ey:                                            ; preds = %bb.ex
  %.not85.i.i = icmp eq i32 %.072258.i.i, 0
  br i1 %.not85.i.i, label %bb.ez, label %bb.ft

bb.ez:                                            ; preds = %bb.ey
  %i.yo = load i32, ptr %i.k, align 4, !tbaa !5   ; 2 uses
  %i.yp = sub nsw i32 %i.xb, %i.yo
  %i.yq = load i32, ptr %i.vh, align 8, !tbaa !5526
  %i.yr = sext i32 %i.yo to i64
  %i.ys = getelementptr inbounds i8, ptr %i.vt, i64 %i.yr
  %.not.i95.i.i = icmp eq i64 %.0191254.i.i, 0
  br i1 %.not.i95.i.i, label %fts3SnippetShift.exit.thread.i.i, label %.preheader60.i.i.i

.preheader60.i.i.i:                               ; preds = %bb.ez, %.preheader60.i.i.i
  %indvars.iv.i.i77.i = phi i64 [ %indvars.iv.next.i.i78.i, %.preheader60.i.i.i ], [ 0, %bb.ez ] ; 3 uses
  %i.yt = shl nuw i64 1, %indvars.iv.i.i77.i
  %i.yu = and i64 %i.yt, %.0191254.i.i
  %.not49.i.i.i = icmp eq i64 %i.yu, 0
  %indvars.iv.next.i.i78.i = add nuw nsw i64 %indvars.iv.i.i77.i, 1
  br i1 %.not49.i.i.i, label %.preheader60.i.i.i, label %.preheader.i.i79.i, !llvm.loop !6174

.preheader.i.i79.i:                               ; preds = %.preheader60.i.i.i, %.preheader.i.i79.i
  %indvars.iv67.i.i.i = phi i32 [ %indvars.iv.next68.i.i.i, %.preheader.i.i79.i ], [ 0, %.preheader60.i.i.i ] ; 3 uses
  %i.yv = xor i32 %indvars.iv67.i.i.i, -1
  %i.yw = add i32 %.062.i, %i.yv
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = shl nuw i64 1, %i.yx
  %i.yz = and i64 %i.yy, %.0191254.i.i
  %.not50.i.i.i = icmp eq i64 %i.yz, 0
  %indvars.iv.next68.i.i.i = add i32 %indvars.iv67.i.i.i, 1
  br i1 %.not50.i.i.i, label %.preheader.i.i79.i, label %bb.fa, !llvm.loop !6175

bb.fa:                                            ; preds = %.preheader.i.i79.i
  %i.za = trunc nuw nsw i64 %indvars.iv.i.i77.i to i32
  %i.zb = sub nsw i32 %i.za, %indvars.iv67.i.i.i  ; 2 uses
  %6 = lshr i32 %i.zb, 1
  %i.zc = icmp sgt i32 %i.zb, 1
  br i1 %i.zc, label %bb.fb, label %fts3SnippetShift.exit.thread.i.i

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.zd = load ptr, ptr %i.xc, align 8, !tbaa !5514 ; 3 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !5515 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store ptr null, ptr %i.a, align 8, !tbaa !5271
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !5737
  %i.zh = call i32 %i.zg(ptr noundef nonnull %i.zd, ptr noundef nonnull %i.ys, i32 noundef %i.yp, ptr noundef nonnull %i.a) #59, !inline_history !6176 ; 2 uses
  %i.zi = icmp eq i32 %i.zh, 0
  %.pre16.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !5271 ; 3 uses
  br i1 %i.zi, label %bb.fc, label %sqlite3Fts3OpenTokenizer.exit.thread.i.i.i

bb.fc:                                            ; preds = %bb.fb
  store ptr %i.zd, ptr %.pre16.i.i.i.i, align 8, !tbaa !5463
  %i.zj = load i32, ptr %i.ze, align 8, !tbaa !5739
  %i.zk = icmp sgt i32 %i.zj, 0
  br i1 %i.zk, label %bb.fd, label %sqlite3Fts3OpenTokenizer.exit.i.i.i

bb.fd:                                            ; preds = %bb.fc
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ze, i64 48
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !5740
  %i.zn = call i32 %i.zm(ptr noundef nonnull %.pre16.i.i.i.i, i32 noundef %i.yq) #59, !inline_history !6176 ; 2 uses
  %.not.i.i96.i.i = icmp eq i32 %i.zn, 0
  %.pre.i.i97.i.i = load ptr, ptr %i.a, align 8, !tbaa !5271 ; 2 uses
  br i1 %.not.i.i96.i.i, label %sqlite3Fts3OpenTokenizer.exit.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !5741
  %i.zq = call i32 %i.zp(ptr noundef %.pre.i.i97.i.i) #59, !inline_history !6176 ; 0 uses
  br label %sqlite3Fts3OpenTokenizer.exit.thread.i.i.i

sqlite3Fts3OpenTokenizer.exit.thread.i.i.i:       ; preds = %bb.fb, %bb.fe
  %.0.i.ph.i.i.i = phi i32 [ %i.zn, %bb.fe ], [ %i.zh, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %fts3SnippetShift.exit.i.i

sqlite3Fts3OpenTokenizer.exit.i.i.i:              ; preds = %bb.fd, %bb.fc
  %i.zr = phi ptr [ %.pre16.i.i.i.i, %bb.fc ], [ %.pre.i.i97.i.i, %bb.fd ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.zs = add nsw i32 %6, %.062.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.ze, i64 40
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fg, %sqlite3Fts3OpenTokenizer.exit.i.i.i
  %i.zu = load i32, ptr %i.b, align 4, !tbaa !5
  %i.zv = icmp slt i32 %i.zu, %i.zs               ; 2 uses
  br i1 %i.zv, label %bb.fg, label %.critedge.thread.i.i.i

.critedge.thread.i.i.i:                           ; preds = %bb.ff
  %i.zw = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !5741
  %i.zy = call i32 %i.zx(ptr noundef %i.zr) #59, !inline_history !6177 ; 0 uses
  br label %fts3SnippetShift.exit.thread206.i.i

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store i32 0, ptr %i.d, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  store i32 0, ptr %i.e, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  store i32 0, ptr %i.f, align 4, !tbaa !5
  %i.zz = load ptr, ptr %i.zt, align 8, !tbaa !5742
  %i.aaa = call i32 %i.zz(ptr noundef %i.zr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b) #59, !inline_history !6177 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  %i.aab = icmp eq i32 %i.aaa, 0
  br i1 %i.aab, label %bb.ff, label %.critedge.i.i81.i, !llvm.loop !6178

.critedge.i.i81.i:                                ; preds = %bb.fg
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !5741
  %i.aae = call i32 %i.aad(ptr noundef %i.zr) #59, !inline_history !6177 ; 0 uses
  %cond.i.i.i = icmp eq i32 %i.aaa, 101
  br i1 %cond.i.i.i, label %fts3SnippetShift.exit.thread206.i.i, label %fts3SnippetShift.exit.i.i

fts3SnippetShift.exit.thread206.i.i:              ; preds = %.critedge.i.i81.i, %.critedge.thread.i.i.i
  %i.aaf = zext i1 %i.zv to i32
  %i.aag = load i32, ptr %i.b, align 4, !tbaa !5
  %i.aah = sub i32 %i.aaf, %.062.i
  %i.aai = add i32 %i.aah, %i.aag
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.aai, i32 0) ; 2 uses
  %i.aaj = zext nneg i32 %narrow.i.i to i64
  %.3194.ph.i.i = lshr i64 %.0191254.i.i, %i.aaj
  %.3190.ph.i.i = add nsw i32 %narrow.i.i, %.0187256.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %fts3SnippetShift.exit.thread.i.i

fts3SnippetShift.exit.i.i:                        ; preds = %.critedge.i.i81.i, %sqlite3Fts3OpenTokenizer.exit.thread.i.i.i
  %.3.ph.i.i.i = phi i32 [ %.0.i.ph.i.i.i, %sqlite3Fts3OpenTokenizer.exit.thread.i.i.i ], [ %i.aaa, %.critedge.i.i81.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %.loopexit.sink.split.i.i

fts3SnippetShift.exit.thread.i.i:                 ; preds = %fts3SnippetShift.exit.thread206.i.i, %bb.fa, %bb.ez
  %.4203.i.i = phi i32 [ %.3190.ph.i.i, %fts3SnippetShift.exit.thread206.i.i ], [ %.0187256.i.i, %bb.ez ], [ %.0187256.i.i, %bb.fa ] ; 4 uses
  %.4195202.i.i = phi i64 [ %.3194.ph.i.i, %fts3SnippetShift.exit.thread206.i.i ], [ 0, %bb.ez ], [ %.0191254.i.i, %bb.fa ] ; 2 uses
  %i.aak = icmp sgt i32 %.4203.i.i, 0
  %or.cond.i.i = or i1 %i.xu, %i.aak
  br i1 %or.cond.i.i, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %fts3SnippetShift.exit.thread.i.i
  %i.aal = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.2317686) #60, !inline_history !6171 ; 3 uses
  %i.aam = trunc i64 %i.aal to i32                ; 2 uses
  %i.aan = add i32 %.sroa.27.1.i, 1
  %i.aao = add i32 %i.aan, %i.aam
  %.not.i98.i.i = icmp slt i32 %i.aao, %.sroa.55.1.i
  br i1 %.not.i98.i.i, label %._crit_edge.i106.i.i, label %bb.fi

._crit_edge.i106.i.i:                             ; preds = %bb.fh
  %sext235.i.i = shl i64 %i.aal, 32
  %.pre34.i107.i.i = ashr exact i64 %sext235.i.i, 32
  br label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.aap = sext i32 %.sroa.55.1.i to i64
  %sext234.i.i = shl i64 %i.aal, 32
  %i.aaq = ashr exact i64 %sext234.i.i, 32        ; 2 uses
  %i.aar = add nsw i64 %i.aap, 100
  %i.aas = add nsw i64 %i.aar, %i.aaq             ; 2 uses
  %i.aat = call i32 @sqlite3_initialize(), !inline_history !6172
  %.not.i.i100.i.i = icmp eq i32 %i.aat, 0
  br i1 %.not.i.i100.i.i, label %sqlite3_realloc64.exit.i102.i.i, label %.loopexit.sink.split.i.i

sqlite3_realloc64.exit.i102.i.i:                  ; preds = %bb.fi
  %i.aau = call fastcc ptr @sqlite3Realloc(ptr noundef %.sroa.098.2.i, i64 noundef %i.aas), !inline_history !6172 ; 2 uses
  %.not28.i103.i.i = icmp eq ptr %i.aau, null
  br i1 %.not28.i103.i.i, label %.loopexit.sink.split.i.i, label %bb.fj

bb.fj:                                            ; preds = %sqlite3_realloc64.exit.i102.i.i
  %i.aav = trunc i64 %i.aas to i32
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %._crit_edge.i106.i.i
  %.sroa.098.20.i = phi ptr [ %.sroa.098.2.i, %._crit_edge.i106.i.i ], [ %i.aau, %bb.fj ] ; 2 uses
  %.sroa.55.19.i = phi i32 [ %.sroa.55.1.i, %._crit_edge.i106.i.i ], [ %i.aav, %bb.fj ]
  %.pre-phi.i105.i.i = phi i64 [ %.pre34.i107.i.i, %._crit_edge.i106.i.i ], [ %i.aaq, %bb.fj ]
  %i.aaw = sext i32 %.sroa.27.1.i to i64
  %i.aax = getelementptr inbounds i8, ptr %.sroa.098.20.i, i64 %i.aaw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aax, ptr nonnull readonly align 1 %.2317686, i64 %.pre-phi.i105.i.i, i1 false)
  br label %.sink.split.i.i

bb.fl:                                            ; preds = %fts3SnippetShift.exit.thread.i.i
  %i.aay = load i32, ptr %i.k, align 4, !tbaa !5  ; 3 uses
  %.not86.i.i = icmp eq i32 %i.aay, 0
  br i1 %.not86.i.i, label %bb.fs, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aaz = icmp slt i32 %i.aay, 0
  br i1 %i.aaz, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.aba = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.vt) #60, !inline_history !6171
  %i.abb = trunc i64 %i.aba to i32
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.024.i.i.i = phi i32 [ %i.abb, %bb.fn ], [ %i.aay, %bb.fm ] ; 4 uses
  %i.abc = add i32 %.sroa.27.1.i, 1
  %i.abd = add i32 %i.abc, %.024.i.i.i
  %.not.i109.i.i = icmp slt i32 %i.abd, %.sroa.55.1.i
  br i1 %.not.i109.i.i, label %._crit_edge.i117.i.i, label %bb.fp

._crit_edge.i117.i.i:                             ; preds = %bb.fo
  %.pre34.i118.i.i = sext i32 %.024.i.i.i to i64
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.abe = sext i32 %.sroa.55.1.i to i64
  %i.abf = sext i32 %.024.i.i.i to i64            ; 2 uses
  %i.abg = add nsw i64 %i.abe, 100
  %i.abh = add nsw i64 %i.abg, %i.abf             ; 2 uses
  %i.abi = call i32 @sqlite3_initialize(), !inline_history !6172
  %.not.i.i111.i.i = icmp eq i32 %i.abi, 0
  br i1 %.not.i.i111.i.i, label %sqlite3_realloc64.exit.i113.i.i, label %.loopexit.sink.split.i.i

sqlite3_realloc64.exit.i113.i.i:                  ; preds = %bb.fp
  %i.abj = call fastcc ptr @sqlite3Realloc(ptr noundef %.sroa.098.2.i, i64 noundef %i.abh), !inline_history !6172 ; 2 uses
  %.not28.i114.i.i = icmp eq ptr %i.abj, null
  br i1 %.not28.i114.i.i, label %.loopexit.sink.split.i.i, label %bb.fq

bb.fq:                                            ; preds = %sqlite3_realloc64.exit.i113.i.i
  %i.abk = trunc i64 %i.abh to i32
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %._crit_edge.i117.i.i
  %.sroa.098.17.i = phi ptr [ %.sroa.098.2.i, %._crit_edge.i117.i.i ], [ %i.abj, %bb.fq ] ; 2 uses
  %.sroa.55.16.i = phi i32 [ %.sroa.55.1.i, %._crit_edge.i117.i.i ], [ %i.abk, %bb.fq ]
  %.pre-phi.i116.i.i = phi i64 [ %.pre34.i118.i.i, %._crit_edge.i117.i.i ], [ %i.abf, %bb.fq ]
  %i.abl = sext i32 %.sroa.27.1.i to i64
  %i.abm = getelementptr inbounds i8, ptr %.sroa.098.17.i, i64 %i.abl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abm, ptr nonnull readonly align 1 %i.vt, i64 %.pre-phi.i116.i.i, i1 false)
  br label %.sink.split.i.i
end_hunk_16
