Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmscgats?download=true
inline.NumInlined: 222
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@WriteDataFormat:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %1, ptr noundef nonnull @.str.83, i32 noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %GetTable.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [1064 x i8], ptr %i.e, i64 %i.f
  br label %GetTable.exit

GetTable.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 1048 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %WriteStr.exit37, label %bb.d

bb.d:                                             ; preds = %GetTable.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !82
  %i.l = add i32 %i.k, 18                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !82
  %i.m = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %.not.i18 = icmp eq ptr %i.m, null
  br i1 %.not.i18, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i64 @fwrite(ptr noundef nonnull @.str.101, i64 noundef 1, i64 noundef 18, ptr noundef nonnull %i.m)
  %.not17.i = icmp eq i64 %i.n, 18
  br i1 %.not17.i, label %WriteStr.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83
  %.not16.i = icmp eq ptr %i.p, null
  br i1 %.not16.i, label %WriteStr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !84
  %i.s = icmp ugt i32 %i.l, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.u, ptr noundef nonnull align 1 dereferenceable(18) @.str.101, i64 18, i1 false)
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  store ptr %i.w, ptr %i.t, align 8, !tbaa !85
  br label %WriteStr.exit

WriteStr.exit:                                    ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.j
  %i.x = load i32, ptr %i.j, align 8, !tbaa !82
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %i.j, align 8, !tbaa !82
  %i.z = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %.not.i19 = icmp eq ptr %i.z, null
  br i1 %.not.i19, label %bb.m, label %bb.k

bb.k:                                             ; preds = %WriteStr.exit
  %i.aa = tail call i64 @fwrite(ptr noundef nonnull @.str.97, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.z)
  %.not17.i20 = icmp eq i64 %i.aa, 1
  br i1 %.not17.i20, label %WriteStr.exit22, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit22

bb.m:                                             ; preds = %WriteStr.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83
  %.not16.i21 = icmp eq ptr %i.ac, null
  br i1 %.not16.i21, label %WriteStr.exit22, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !84
  %i.af = icmp ugt i32 %i.y, %i.ae
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit22

bb.p:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  store i8 32, ptr %i.ah, align 1
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !85
  br label %WriteStr.exit22

WriteStr.exit22:                                  ; preds = %bb.k, %bb.l, %bb.m, %bb.o, %bb.p
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !32  ; 3 uses
  %i.al = load i32, ptr %1, align 8, !tbaa !31
  %.not.i.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %WriteStr.exit22
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %1, ptr noundef nonnull @.str.83, i32 noundef %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %GetTable.exit.i

bb.r:                                             ; preds = %WriteStr.exit22
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = zext i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [1064 x i8], ptr %i.an, i64 %i.ao
  br label %GetTable.exit.i

GetTable.exit.i:                                  ; preds = %bb.r, %bb.q
  %.0.i.i = phi ptr [ %i.am, %bb.q ], [ %i.ap, %bb.r ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1040
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %cond2950.i.i = icmp eq ptr %i.ar, null
  br i1 %cond2950.i.i, label %.loopexit, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %GetTable.exit.i, %bb.s
  %.02130.i.i = phi ptr [ %i.aw, %bb.s ], [ %i.ar, %GetTable.exit.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02130.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %i.au = tail call i32 @cmsstrcasecmp(ptr noundef nonnull @.str.16, ptr noundef %i.at) #18
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %cmsIT8GetProperty.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.i.i
  %i.aw = load ptr, ptr %.02130.i.i, align 8, !tbaa !58 ; 2 uses
  %cond.i.i = icmp eq ptr %i.aw, null
  br i1 %cond.i.i, label %.loopexit, label %.lr.ph.split.i.i, !llvm.loop !2

cmsIT8GetProperty.exit:                           ; preds = %.lr.ph.split.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.02130.i.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.loopexit, label %satoi.exit

satoi.exit:                                       ; preds = %cmsIT8GetProperty.exit
  %i.ba = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.ay, ptr noundef null, i32 noundef 10) #18, !inline_history !3
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 -2147483632)
  %.0.i24 = tail call i32 @llvm.smin.i32(i32 %..i, i32 2147483632) ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 1024
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !77
  %.not17 = icmp sle i32 %.0.i24, %i.bd
  %i.be = icmp sgt i32 %i.bb, 0
  %or.cond = and i1 %.not17, %i.be
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %satoi.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bi = add nsw i32 %.0.i24, -1
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %.0.i24 to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %WriteStr.exit33
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %WriteStr.exit33 ] ; 4 uses
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !49 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  %spec.store.select.i = select i1 %i.bn, ptr @.str.97, ptr %i.bm ; 3 uses
  %i.bo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select.i) #20 ; 3 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !82
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  store i32 %i.br, ptr %i.j, align 8, !tbaa !82
  %i.bs = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.i25 = icmp eq ptr %i.bs, null
  br i1 %.not.i25, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = and i64 %i.bo, 4294967295               ; 2 uses
  %i.bu = tail call i64 @fwrite(ptr noundef nonnull %spec.store.select.i, i64 noundef 1, i64 noundef %i.bt, ptr noundef nonnull %i.bs)
  %.not17.i26 = icmp eq i64 %i.bu, %i.bt
  br i1 %.not17.i26, label %WriteStr.exit28, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit28

bb.w:                                             ; preds = %bb.t
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !83
  %.not16.i27 = icmp eq ptr %i.bv, null
  br i1 %.not16.i27, label %WriteStr.exit28.thread, label %bb.x

WriteStr.exit28.thread:                           ; preds = %bb.w
  %i.bw = icmp eq i64 %indvars.iv, %i.bj
  %i.bx = load i32, ptr %i.j, align 8, !tbaa !82
  %i.by = add i32 %i.bx, 1                        ; 2 uses
  store i32 %i.by, ptr %i.j, align 8, !tbaa !82
  br label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bz = load i32, ptr %i.bg, align 4, !tbaa !84
  %i.ca = icmp ugt i32 %i.br, %i.bz
  br i1 %i.ca, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit28

bb.z:                                             ; preds = %bb.x
  %i.cb = load ptr, ptr %i.bh, align 8, !tbaa !85
  %i.cc = and i64 %i.bo, 4294967295               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %spec.store.select.i, i64 %i.cc, i1 false)
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !85
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store ptr %i.ce, ptr %i.bh, align 8, !tbaa !85
  br label %WriteStr.exit28

WriteStr.exit28:                                  ; preds = %bb.u, %bb.v, %bb.y, %bb.z
  %.pr = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %i.cf = icmp eq i64 %indvars.iv, %i.bj          ; 2 uses
  %i.cg = load i32, ptr %i.j, align 8, !tbaa !82
  %i.ch = add i32 %i.cg, 1                        ; 2 uses
  store i32 %i.ch, ptr %i.j, align 8, !tbaa !82
  %.not.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i30, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %WriteStr.exit28
  %2 = select i1 %i.cf, ptr @.str.87, ptr @.str.102
  %i.ci = tail call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %.pr)
  %.not17.i31 = icmp eq i64 %i.ci, 1
  br i1 %.not17.i31, label %WriteStr.exit33, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit33

bb.ac:                                            ; preds = %WriteStr.exit28.thread, %WriteStr.exit28
  %i.cj = phi i32 [ %i.by, %WriteStr.exit28.thread ], [ %i.ch, %WriteStr.exit28 ]
  %3 = phi i1 [ %i.bw, %WriteStr.exit28.thread ], [ %i.cf, %WriteStr.exit28 ]
  %i.ck = load ptr, ptr %i.bf, align 8, !tbaa !83
  %.not16.i32 = icmp eq ptr %i.ck, null
  br i1 %.not16.i32, label %WriteStr.exit33, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load i32, ptr %i.bg, align 4, !tbaa !84
  %i.cm = icmp ugt i32 %i.cj, %i.cl
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit33

bb.af:                                            ; preds = %bb.ad
  %i.cn = load ptr, ptr %i.bh, align 8, !tbaa !85
  %4 = select i1 %3, i8 10, i8 9
  store i8 %4, ptr %i.cn, align 1
  %i.co = load ptr, ptr %i.bh, align 8, !tbaa !85
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store ptr %i.cp, ptr %i.bh, align 8, !tbaa !85
  br label %WriteStr.exit33

WriteStr.exit33:                                  ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !105

.loopexit:                                        ; preds = %bb.s, %WriteStr.exit33, %GetTable.exit.i, %cmsIT8GetProperty.exit, %satoi.exit
  %i.cq = load i32, ptr %i.j, align 8, !tbaa !82
  %i.cr = add i32 %i.cq, 16                       ; 2 uses
  store i32 %i.cr, ptr %i.j, align 8, !tbaa !82
  %i.cs = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.i34 = icmp eq ptr %i.cs, null
  br i1 %.not.i34, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.ct = tail call i64 @fwrite(ptr noundef nonnull @.str.103, i64 noundef 1, i64 noundef 16, ptr noundef nonnull %i.cs)
  %.not17.i35 = icmp eq i64 %i.ct, 16
  br i1 %.not17.i35, label %WriteStr.exit37, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit37

bb.ai:                                            ; preds = %.loopexit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !83
  %.not16.i36 = icmp eq ptr %i.cv, null
  br i1 %.not16.i36, label %WriteStr.exit37, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !84
  %i.cy = icmp ugt i32 %i.cr, %i.cx
  br i1 %i.cy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit37

bb.al:                                            ; preds = %bb.aj
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.da, ptr noundef nonnull align 1 dereferenceable(16) @.str.103, i64 16, i1 false)
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !85
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !85
  br label %WriteStr.exit37

WriteStr.exit37:                                  ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %GetTable.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @WriteData(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !31
  %.not.i = icmp ult i32 %i.b, %i.c
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %1, ptr noundef nonnull @.str.83, i32 noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %GetTable.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [1064 x i8], ptr %i.e, i64 %i.f
  br label %GetTable.exit

GetTable.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 1056 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %WriteStr.exit71, label %bb.d

bb.d:                                             ; preds = %GetTable.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 18 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !82
  %i.l = add i32 %i.k, 11                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !82
  %i.m = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %.not.i35 = icmp eq ptr %i.m, null
  br i1 %.not.i35, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i64 @fwrite(ptr noundef nonnull @.str.104, i64 noundef 1, i64 noundef 11, ptr noundef nonnull %i.m)
  %.not17.i = icmp eq i64 %i.n, 11
  br i1 %.not17.i, label %WriteStr.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83
  %.not16.i = icmp eq ptr %i.p, null
  br i1 %.not16.i, label %WriteStr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !84
  %i.s = icmp ugt i32 %i.l, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.u, ptr noundef nonnull align 1 dereferenceable(11) @.str.104, i64 11, i1 false)
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  store ptr %i.w, ptr %i.t, align 8, !tbaa !85
  br label %WriteStr.exit

WriteStr.exit:                                    ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.j
  %i.x = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.y = load i32, ptr %1, align 8, !tbaa !31
  %.not.i.i = icmp ult i32 %i.x, %i.y
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %WriteStr.exit
  tail call void (ptr, ptr, ...) @SynError(ptr noundef nonnull %1, ptr noundef nonnull @.str.83, i32 noundef %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %GetTable.exit.i

bb.l:                                             ; preds = %WriteStr.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = zext i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [1064 x i8], ptr %i.aa, i64 %i.ab
  br label %GetTable.exit.i

GetTable.exit.i:                                  ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.z, %bb.k ], [ %i.ac, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1040
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68 ; 2 uses
  %cond2950.i.i = icmp eq ptr %i.ae, null
  br i1 %cond2950.i.i, label %.loopexit, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %GetTable.exit.i, %bb.m
  %.02130.i.i = phi ptr [ %i.aj, %bb.m ], [ %i.ae, %GetTable.exit.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02130.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59
  %i.ah = tail call i32 @cmsstrcasecmp(ptr noundef nonnull @.str.17, ptr noundef %i.ag) #18
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %cmsIT8GetProperty.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.i.i
  %i.aj = load ptr, ptr %.02130.i.i, align 8, !tbaa !58 ; 2 uses
  %cond.i.i = icmp eq ptr %i.aj, null
  br i1 %cond.i.i, label %.loopexit, label %.lr.ph.split.i.i, !llvm.loop !2

cmsIT8GetProperty.exit:                           ; preds = %.lr.ph.split.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.02130.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.loopexit, label %satoi.exit

satoi.exit:                                       ; preds = %cmsIT8GetProperty.exit
  %i.an = tail call i64 @strtol(ptr noundef nonnull readonly captures(none) %i.al, ptr noundef null, i32 noundef 10) #18, !inline_history !3
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 -2147483632)
  %.0.i37 = tail call i32 @llvm.smin.i32(i32 %..i, i32 2147483632) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 1028
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !87
  %.not33 = icmp sle i32 %.0.i37, %i.aq
  %i.ar = icmp sgt i32 %i.ao, 0
  %or.cond = and i1 %.not33, %i.ar
  br i1 %or.cond, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %satoi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 21 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 1024 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph76, %._crit_edge
  %.02975 = phi i32 [ 0, %.lr.ph76 ], [ %i.em, %._crit_edge ] ; 2 uses
  %i.aw = load i32, ptr %i.j, align 8, !tbaa !82
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ax, ptr %i.j, align 8, !tbaa !82
  %i.ay = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.i38 = icmp eq ptr %i.ay, null
  br i1 %.not.i38, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = tail call i64 @fwrite(ptr noundef nonnull @.str.97, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.ay)
  %.not17.i39 = icmp eq i64 %i.az, 1
  br i1 %.not17.i39, label %WriteStr.exit41, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit41

bb.q:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !83
  %.not16.i40 = icmp eq ptr %i.ba, null
  br i1 %.not16.i40, label %WriteStr.exit41, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load i32, ptr %i.at, align 4, !tbaa !84
  %i.bc = icmp ugt i32 %i.ax, %i.bb
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit41

bb.t:                                             ; preds = %bb.r
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !85
  store i8 32, ptr %i.bd, align 1
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !85
  br label %WriteStr.exit41

WriteStr.exit41:                                  ; preds = %bb.o, %bb.p, %bb.q, %bb.s, %bb.t
  %i.bg = load i32, ptr %i.av, align 8, !tbaa !77 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %WriteStr.exit41, %WriteStr.exit67
  %i.bi = phi i32 [ %i.ek, %WriteStr.exit67 ], [ %i.bg, %WriteStr.exit41 ]
  %.074 = phi i32 [ %i.ej, %WriteStr.exit67 ], [ 0, %WriteStr.exit41 ] ; 3 uses
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.bk = mul nuw nsw i32 %i.bi, %.02975
  %i.bl = add nsw i32 %i.bk, %.074
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49 ; 8 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !82
  %i.br = add i32 %i.bq, 2                        ; 2 uses
  store i32 %i.br, ptr %i.j, align 8, !tbaa !82
  %i.bs = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.i42 = icmp eq ptr %i.bs, null
  br i1 %.not.i42, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = tail call i64 @fwrite(ptr noundef nonnull @.str.105, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.bs)
  %.not17.i43 = icmp eq i64 %i.bt, 2
  br i1 %.not17.i43, label %WriteStr.exit45thread-pre-split, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit45thread-pre-split

bb.x:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %i.as, align 8, !tbaa !83
  %.not16.i44 = icmp eq ptr %i.bu, null
  br i1 %.not16.i44, label %WriteStr.exit45, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load i32, ptr %i.at, align 4, !tbaa !84
  %i.bw = icmp ugt i32 %i.br, %i.bv
  br i1 %i.bw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit45thread-pre-split

bb.aa:                                            ; preds = %bb.y
  %i.bx = load ptr, ptr %i.au, align 8, !tbaa !85
  store i16 8738, ptr %i.bx, align 1
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store ptr %i.bz, ptr %i.au, align 8, !tbaa !85
  br label %WriteStr.exit45thread-pre-split

bb.ab:                                            ; preds = %.lr.ph
  %i.ca = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bo, i32 noundef 32) #20
  %.not34 = icmp eq ptr %i.ca, null
  br i1 %.not34, label %bb.av, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load i32, ptr %i.j, align 8, !tbaa !82
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cc, ptr %i.j, align 8, !tbaa !82
  %i.cd = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.i46 = icmp eq ptr %i.cd, null
  br i1 %.not.i46, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = tail call i64 @fwrite(ptr noundef nonnull @.str.106, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.cd)
  %.not17.i47 = icmp eq i64 %i.ce, 1
  br i1 %.not17.i47, label %WriteStr.exit49thread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit49thread-pre-split

bb.af:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr %i.as, align 8, !tbaa !83
  %.not16.i48 = icmp eq ptr %i.cf, null
  br i1 %.not16.i48, label %WriteStr.exit49, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = load i32, ptr %i.at, align 4, !tbaa !84
  %i.ch = icmp ugt i32 %i.cc, %i.cg
  br i1 %i.ch, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit49thread-pre-split

bb.ai:                                            ; preds = %bb.ag
  %i.ci = load ptr, ptr %i.au, align 8, !tbaa !85
  store i8 34, ptr %i.ci, align 1
  %i.cj = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store ptr %i.ck, ptr %i.au, align 8, !tbaa !85
  br label %WriteStr.exit49thread-pre-split

WriteStr.exit49thread-pre-split:                  ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.ad
  %.pr = load ptr, ptr %0, align 8, !tbaa !80
  br label %WriteStr.exit49

WriteStr.exit49:                                  ; preds = %WriteStr.exit49thread-pre-split, %bb.af
  %i.cl = phi ptr [ %.pr, %WriteStr.exit49thread-pre-split ], [ null, %bb.af ] ; 2 uses
  %i.cm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #20 ; 3 uses
  %i.cn = trunc i64 %i.cm to i32
  %i.co = load i32, ptr %i.j, align 8, !tbaa !82
  %i.cp = add i32 %i.co, %i.cn                    ; 2 uses
  store i32 %i.cp, ptr %i.j, align 8, !tbaa !82
  %.not.i50 = icmp eq ptr %i.cl, null
  br i1 %.not.i50, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %WriteStr.exit49
  %i.cq = and i64 %i.cm, 4294967295               ; 2 uses
  %i.cr = tail call i64 @fwrite(ptr noundef nonnull %i.bo, i64 noundef 1, i64 noundef %i.cq, ptr noundef nonnull %i.cl)
  %.not17.i51 = icmp eq i64 %i.cr, %i.cq
  br i1 %.not17.i51, label %WriteStr.exit53, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit53

bb.al:                                            ; preds = %WriteStr.exit49
  %i.cs = load ptr, ptr %i.as, align 8, !tbaa !83
  %.not16.i52 = icmp eq ptr %i.cs, null
  br i1 %.not16.i52, label %WriteStr.exit53, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ct = load i32, ptr %i.at, align 4, !tbaa !84
  %i.cu = icmp ugt i32 %i.cp, %i.ct
  br i1 %i.cu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit53

bb.ao:                                            ; preds = %bb.am
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.cw = and i64 %i.cm, 4294967295               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cv, ptr nonnull align 1 %i.bo, i64 %i.cw, i1 false)
  %i.cx = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store ptr %i.cy, ptr %i.au, align 8, !tbaa !85
  br label %WriteStr.exit53

WriteStr.exit53:                                  ; preds = %bb.aj, %bb.ak, %bb.al, %bb.an, %bb.ao
  %i.cz = load i32, ptr %i.j, align 8, !tbaa !82
  %i.da = add i32 %i.cz, 1                        ; 2 uses
  store i32 %i.da, ptr %i.j, align 8, !tbaa !82
  %i.db = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.i54 = icmp eq ptr %i.db, null
  br i1 %.not.i54, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %WriteStr.exit53
  %i.dc = tail call i64 @fwrite(ptr noundef nonnull @.str.106, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.db)
  %.not17.i55 = icmp eq i64 %i.dc, 1
  br i1 %.not17.i55, label %WriteStr.exit45thread-pre-split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit45thread-pre-split

bb.ar:                                            ; preds = %WriteStr.exit53
  %i.dd = load ptr, ptr %i.as, align 8, !tbaa !83
  %.not16.i56 = icmp eq ptr %i.dd, null
  br i1 %.not16.i56, label %WriteStr.exit45, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.de = load i32, ptr %i.at, align 4, !tbaa !84
  %i.df = icmp ugt i32 %i.da, %i.de
  br i1 %i.df, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit45thread-pre-split

bb.au:                                            ; preds = %bb.as
  %i.dg = load ptr, ptr %i.au, align 8, !tbaa !85
  store i8 34, ptr %i.dg, align 1
  %i.dh = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store ptr %i.di, ptr %i.au, align 8, !tbaa !85
  br label %WriteStr.exit45thread-pre-split

bb.av:                                            ; preds = %bb.ab
  %i.dj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #20 ; 3 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = load i32, ptr %i.j, align 8, !tbaa !82
  %i.dm = add i32 %i.dl, %i.dk                    ; 2 uses
  store i32 %i.dm, ptr %i.j, align 8, !tbaa !82
  %i.dn = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.i59 = icmp eq ptr %i.dn, null
  br i1 %.not.i59, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.do = and i64 %i.dj, 4294967295               ; 2 uses
  %i.dp = tail call i64 @fwrite(ptr noundef nonnull %i.bo, i64 noundef 1, i64 noundef %i.do, ptr noundef nonnull %i.dn)
  %.not17.i60 = icmp eq i64 %i.dp, %i.do
  br i1 %.not17.i60, label %WriteStr.exit45thread-pre-split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit45thread-pre-split

bb.ay:                                            ; preds = %bb.av
  %i.dq = load ptr, ptr %i.as, align 8, !tbaa !83
  %.not16.i61 = icmp eq ptr %i.dq, null
  br i1 %.not16.i61, label %WriteStr.exit45, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dr = load i32, ptr %i.at, align 4, !tbaa !84
  %i.ds = icmp ugt i32 %i.dm, %i.dr
  br i1 %i.ds, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit45thread-pre-split

bb.bb:                                            ; preds = %bb.az
  %i.dt = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.du = and i64 %i.dj, 4294967295               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dt, ptr nonnull align 1 %i.bo, i64 %i.du, i1 false)
  %i.dv = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  store ptr %i.dw, ptr %i.au, align 8, !tbaa !85
  br label %WriteStr.exit45thread-pre-split

WriteStr.exit45thread-pre-split:                  ; preds = %bb.v, %bb.w, %bb.z, %bb.aa, %bb.ap, %bb.aq, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.ba, %bb.bb
  %.pr101 = load ptr, ptr %0, align 8, !tbaa !80
  br label %WriteStr.exit45

WriteStr.exit45:                                  ; preds = %WriteStr.exit45thread-pre-split, %bb.ay, %bb.ar, %bb.x
  %2 = phi ptr [ %.pr101, %WriteStr.exit45thread-pre-split ], [ null, %bb.ay ], [ null, %bb.ar ], [ null, %bb.x ] ; 2 uses
  %i.dx = load i32, ptr %i.av, align 8, !tbaa !77
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = icmp eq i32 %.074, %i.dy                ; 2 uses
  %i.ea = load i32, ptr %i.j, align 8, !tbaa !82
  %i.eb = add i32 %i.ea, 1                        ; 2 uses
  store i32 %i.eb, ptr %i.j, align 8, !tbaa !82
  %.not.i64 = icmp eq ptr %2, null
  br i1 %.not.i64, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %WriteStr.exit45
  %3 = select i1 %i.dz, ptr @.str.87, ptr @.str.102
  %i.ec = tail call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %2)
  %.not17.i65 = icmp eq i64 %i.ec, 1
  br i1 %.not17.i65, label %WriteStr.exit67, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit67

bb.be:                                            ; preds = %WriteStr.exit45
  %i.ed = load ptr, ptr %i.as, align 8, !tbaa !83
  %.not16.i66 = icmp eq ptr %i.ed, null
  br i1 %.not16.i66, label %WriteStr.exit67, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ee = load i32, ptr %i.at, align 4, !tbaa !84
  %i.ef = icmp ugt i32 %i.eb, %i.ee
  br i1 %i.ef, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit67

bb.bh:                                            ; preds = %bb.bf
  %i.eg = load ptr, ptr %i.au, align 8, !tbaa !85
  %4 = select i1 %i.dz, i8 10, i8 9
  store i8 %4, ptr %i.eg, align 1
  %i.eh = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store ptr %i.ei, ptr %i.au, align 8, !tbaa !85
  br label %WriteStr.exit67

WriteStr.exit67:                                  ; preds = %bb.bc, %bb.bd, %bb.be, %bb.bg, %bb.bh
  %i.ej = add nuw nsw i32 %.074, 1                ; 2 uses
  %i.ek = load i32, ptr %i.av, align 8, !tbaa !77 ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %WriteStr.exit67, %WriteStr.exit41
  %i.em = add nuw nsw i32 %.02975, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.em, %.0.i37
  br i1 %exitcond.not, label %.loopexit, label %bb.n, !llvm.loop !107

.loopexit:                                        ; preds = %bb.m, %._crit_edge, %GetTable.exit.i, %cmsIT8GetProperty.exit, %satoi.exit
  %i.en = load i32, ptr %i.j, align 8, !tbaa !82
  %i.eo = add i32 %i.en, 9                        ; 2 uses
  store i32 %i.eo, ptr %i.j, align 8, !tbaa !82
  %i.ep = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not.i68 = icmp eq ptr %i.ep, null
  br i1 %.not.i68, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.loopexit
  %i.eq = tail call i64 @fwrite(ptr noundef nonnull @.str.107, i64 noundef 1, i64 noundef 9, ptr noundef nonnull %i.ep)
  %.not17.i69 = icmp eq i64 %i.eq, 9
  br i1 %.not17.i69, label %WriteStr.exit71, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.98) #18
  br label %WriteStr.exit71

bb.bk:                                            ; preds = %.loopexit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !83
  %.not16.i70 = icmp eq ptr %i.es, null
  br i1 %.not16.i70, label %WriteStr.exit71, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !84
  %i.ev = icmp ugt i32 %i.eo, %i.eu
  br i1 %i.ev, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef null, i32 noundef 7, ptr noundef nonnull @.str.99) #18
  br label %WriteStr.exit71

bb.bn:                                            ; preds = %bb.bl
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ex, ptr noundef nonnull align 1 dereferenceable(9) @.str.107, i64 9, i1 false)
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !85
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 9
  store ptr %i.ez, ptr %i.ew, align 8, !tbaa !85
  br label %WriteStr.exit71

WriteStr.exit71:                                  ; preds = %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi, %GetTable.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @cmsIT8SaveToMem(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.SAVESTREAM, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !75     ; 2 uses
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.e, ptr %i.f, align 4, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !31
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %._crit_edge, label %cmsIT8SetTable.exit.lr.ph

cmsIT8SetTable.exit.lr.ph:                        ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %cmsIT8SetTable.exit

cmsIT8SetTable.exit:                              ; preds = %cmsIT8SetTable.exit.lr.ph, %cmsIT8SetTable.exit
  %.015 = phi i32 [ 0, %cmsIT8SetTable.exit.lr.ph ], [ %i.i, %cmsIT8SetTable.exit ] ; 2 uses
  store i32 %.015, ptr %i.h, align 4, !tbaa !32
  call fastcc void @WriteHeader(ptr noundef nonnull %0, ptr noundef %3)
  call fastcc void @WriteDataFormat(ptr noundef %3, ptr noundef nonnull %0)
  call fastcc void @WriteData(ptr noundef %3, ptr noundef nonnull %0)
  %i.i = add nuw i32 %.015, 1                     ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !31
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %cmsIT8SetTable.exit, label %._crit_edge.loopexit, !llvm.loop !108

._crit_edge.loopexit:                             ; preds = %cmsIT8SetTable.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !82
  %.pre17 = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.l = add i32 %.pre, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.m = phi ptr [ %.pre17, %._crit_edge.loopexit ], [ %1, %bb.d ]
  %i.n = phi i32 [ %i.l, %._crit_edge.loopexit ], [ 1, %bb.d ]
  %.not14 = icmp eq ptr %i.m, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !85
  store i8 0, ptr %i.o, align 1, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  store i32 %i.n, ptr %2, align 4, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @cmsIT8LoadFromMem(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %2, 10
  br i1 %i.a, label %IsMyBlock.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %2, i32 132)
  %wide.trip.count.i = zext nneg i32 %spec.store.select.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.02336.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.g ] ; 5 uses
  %.02435.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.125.i, %bb.g ] ; 4 uses
  %.02634.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.127.i, %bb.g ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !33    ; 2 uses
  switch i8 %i.c, label %bb.e [
    i8 10, label %bb.b
    i8 13, label %bb.b
    i8 9, label %bb.c
    i8 32, label %bb.c
    i8 34, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.d = icmp eq i32 %.02336.i, 1
  %i.e = icmp sgt i32 %.02634.i, 2
  %i.f = icmp eq i32 %.02634.i, 0
  %i.g = or i1 %i.e, %i.f
  %or.cond = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond, label %IsMyBlock.exit.thread, label %bb.h

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.h = icmp ne i32 %.02336.i, 0
  %i.i = icmp ne i32 %.02435.i, 0
  %or.cond3.i = select i1 %i.h, i1 true, i1 %i.i
  %spec.store.select4.i = select i1 %or.cond3.i, i32 %.02435.i, i32 1
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %.02336.i, 0
  %i.j = zext i1 %.not.i to i32
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %or.cond31.i = icmp slt i8 %i.c, 32
  br i1 %or.cond31.i, label %IsMyBlock.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %.02634.i, %.02435.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %.127.i = phi i32 [ %i.k, %bb.f ], [ %.02634.i, %bb.c ], [ %.02634.i, %bb.d ]
  %.125.i = phi i32 [ 0, %bb.f ], [ %spec.store.select4.i, %bb.c ], [ %.02435.i, %bb.d ]
  %.1.i = phi i32 [ %.02336.i, %bb.f ], [ %.02336.i, %bb.c ], [ %i.j, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %IsMyBlock.exit.thread, label %.lr.ph.i, !llvm.loop !4

bb.h:                                             ; preds = %bb.b
  %i.l = tail call ptr @cmsIT8Alloc(ptr noundef %0) ; 18 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %IsMyBlock.exit.thread, label %bb.i
end_hunk_0
