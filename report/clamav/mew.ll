Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/mew?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lzma_upack_esi_00:bb.a
  %i.aj = sub i32 %i.ai, %i.ah
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge = phi i32 [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]        ; 2 uses
  store i32 %storemerge, ptr %1, align 1, !tbaa !8
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 16777216
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.x, align 4, !tbaa !14
  %i.an = shl i32 %i.am, 8
  store i32 %i.an, ptr %i.x, align 4, !tbaa !14
  %i.ao = shl nuw i32 %i.ak, 8
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !13
  %i.ap = load ptr, ptr %0, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %0, align 8, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.critedge, %bb.f
  %.089 = phi i32 [ -1, %.critedge ], [ -1, %bb.f ], [ %.0, %bb.k ], [ %.0, %bb.j ]
  ret i32 %.089
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @lzma_upack_esi_50(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %i.g, %bb.c ]    ; 2 uses
  %i.a = shl i32 %.0, 2
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 %i.b ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !16
  %i.d = tail call i32 @lzma_upack_esi_00(ptr noundef %0, ptr noundef %i.c, ptr noundef %6, i32 noundef %7) ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i32 %.0, 1
  %i.g = add nuw i32 %i.d, %i.f                   ; 3 uses
  %i.h = icmp ult i32 %i.g, %2
  br i1 %i.h, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sub nuw i32 %i.g, %2
  store i32 %i.i, ptr %5, align 4, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.017 = phi i32 [ 0, %bb.d ], [ -1, %bb.b ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @lzma_upack_esi_54(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !15
  %i.b = and i32 %i.a, -256
  %i.c = or disjoint i32 %i.b, 8
  store i32 %i.c, ptr %2, align 4, !tbaa !15
  %i.d = load ptr, ptr %3, align 8, !tbaa !16
  %i.e = tail call i32 @lzma_upack_esi_00(ptr noundef %0, ptr noundef %i.d, ptr noundef %5, i32 noundef %6)
  %i.f = load ptr, ptr %3, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !16
  %i.h = and i32 %1, -256                         ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.i = or disjoint i32 %i.h, 1
  %.pre = load i32, ptr %2, align 4, !tbaa !15
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @lzma_upack_esi_00(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %5, i32 noundef %6)
  %i.k = or disjoint i32 %i.h, 9
  %.not24 = icmp eq i32 %i.j, 0
  %.pre31 = load i32, ptr %2, align 4, !tbaa !15  ; 2 uses
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = shl i32 %.pre31, 5                       ; 2 uses
  store i32 %i.l, ptr %2, align 4, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b, %bb.c
  %i.m = phi i32 [ %.pre, %._crit_edge ], [ %.pre31, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.028 = phi i32 [ %i.i, %._crit_edge ], [ %i.k, %bb.b ], [ 17, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !16
  %i.o = shl i32 %.028, 2
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i = phi i32 [ 1, %bb.d ], [ %i.x, %bb.f ]   ; 2 uses
  %i.r = shl i32 %.0.i, 2
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !16
  %i.u = tail call i32 @lzma_upack_esi_00(ptr noundef %0, ptr noundef %i.t, ptr noundef %5, i32 noundef %6) ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %lzma_upack_esi_50.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = shl i32 %.0.i, 1
  %i.x = add nuw i32 %i.u, %i.w                   ; 3 uses
  %i.y = icmp ult i32 %i.x, %i.m
  br i1 %i.y, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = sub i32 %.028, %i.m
  %i.aa = add i32 %i.z, %i.x
  store i32 %i.aa, ptr %4, align 4, !tbaa !15
  br label %lzma_upack_esi_50.exit.thread

lzma_upack_esi_50.exit.thread:                    ; preds = %bb.e, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @unmew11(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = add i32 %5, %4                           ; 5 uses
  %i.d = add i32 %3, %2                           ; 14 uses
  %i.e = icmp ult i32 %i.c, %4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, i32 noundef %4, i32 noundef %5, i32 noundef -1) #7
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.d, %2
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %2, i32 noundef %3, i32 noundef -1) #7
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.g = zext i32 %1 to i64                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = ptrtoint ptr %0 to i64                   ; 16 uses
  %i.k = icmp ult i64 %i.i, %i.g
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i64 noundef %i.j, i64 noundef %i.g, i64 noundef -1) #7
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.l = icmp ugt i32 %i.d, 11
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = zext i32 %i.d to i64
  %i.n = add i64 %i.i, 12                         ; 2 uses
  %i.o = add i64 %i.m, %i.j                       ; 24 uses
  %.not = icmp ule i64 %i.n, %i.o
  %i.p = icmp ugt i64 %i.n, %i.j
  %or.cond = and i1 %i.p, %.not
  %i.q = icmp ugt i64 %i.o, %i.i
  %or.cond294 = and i1 %i.q, %or.cond
  br i1 %or.cond294, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #7
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.r = zext i32 %3 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.g ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load i32, ptr %i.x, align 1, !tbaa !8    ; 2 uses
  %reass.sub = sub i32 %2, %1                     ; 2 uses
  %i.z = add i32 %reass.sub, -12                  ; 4 uses
  %.not283 = icmp eq i32 %6, 0
  br i1 %.not283, label %.outer.us.preheader, label %.outer.split

.outer.us.preheader:                              ; preds = %bb.j
  %.pn.us.us.peel = sub i32 %i.y, %i.c            ; 3 uses
  %.pn270.us.us.peel = zext i32 %.pn.us.us.peel to i64
  %.0233.us.us.peel = getelementptr inbounds nuw i8, ptr %0, i64 %.pn270.us.us.peel ; 3 uses
  %.0236.us.us.peel = sub nuw i32 %i.d, %.pn.us.us.peel ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull %i.u, ptr noundef %.0233.us.us.peel) #7
  %i.aa = add i32 %reass.sub, -13
  %or.cond295.not.us.us.peel = icmp ult i32 %i.aa, %i.d
  br i1 %or.cond295.not.us.us.peel, label %bb.k, label %.split.us.thread

bb.k:                                             ; preds = %.outer.us.preheader
  %i.ab = zext i32 %i.z to i64
  %i.ac = ptrtoint ptr %i.u to i64                ; 3 uses
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %.not275.us.us.peel = icmp ule i64 %i.ad, %i.o
  %i.ae = icmp ugt i64 %i.ad, %i.j
  %or.cond296.us.us.peel = and i1 %.not275.us.us.peel, %i.ae
  br i1 %or.cond296.us.us.peel, label %bb.l, label %.split.us.thread

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ule i64 %i.o, %i.ac
  %i.ag = icmp ule i32 %i.d, %.pn.us.us.peel
  %or.cond297.us.us.peel = or i1 %i.ag, %i.af
  br i1 %or.cond297.us.us.peel, label %.split.us.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = zext i32 %.0236.us.us.peel to i64
  %i.ai = ptrtoint ptr %.0233.us.us.peel to i64   ; 2 uses
  %i.aj = add i64 %i.ai, %i.ah                    ; 2 uses
  %.not278.us.us.peel = icmp ule i64 %i.aj, %i.o
  %i.ak = icmp ugt i64 %i.aj, %i.j
  %or.cond298.us.us.peel = and i1 %.not278.us.us.peel, %i.ak
  %i.al = icmp ugt i64 %i.o, %i.ai
  %or.cond299.us.us.peel = and i1 %i.al, %or.cond298.us.us.peel
  br i1 %or.cond299.us.us.peel, label %bb.n, label %.split.us.thread

bb.n:                                             ; preds = %bb.m
  %i.am = call i32 @unmew(ptr noundef nonnull %i.u, ptr noundef nonnull %.0233.us.us.peel, i32 noundef %i.z, i32 noundef %.0236.us.us.peel, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not280.us.us.peel = icmp eq i32 %i.am, 0
  br i1 %.not280.us.us.peel, label %bb.o, label %.split344.us

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !16  ; 4 uses
  %.not281.us.us.peel = icmp ult ptr %i.an, %0
  br i1 %.not281.us.us.peel, label %.split347.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = add i64 %i.ao, 4                        ; 2 uses
  %.not282.us.us.peel = icmp ule i64 %i.ap, %i.o
  %i.aq = icmp ugt i64 %i.ap, %i.j
  %or.cond300.us.us.peel = and i1 %.not282.us.us.peel, %i.aq
  %i.ar = icmp ugt i64 %i.o, %i.ao
  %or.cond301.us.us.peel = and i1 %i.ar, %or.cond300.us.us.peel
  br i1 %or.cond301.us.us.peel, label %bb.q, label %.split347.us

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %.neg.us.us.peel = sub i64 %i.ac, %i.at
  %i.au = trunc i64 %.neg.us.us.peel to i32
  %i.av = add i32 %i.z, %i.au
  %i.aw = load i32, ptr %i.an, align 1, !tbaa !8
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.ay = call ptr @cli_max_realloc(ptr noundef null, i64 noundef 72) #7 ; 10 uses
  %.not285.us.peel = icmp eq ptr %i.ay, null
  br i1 %.not285.us.peel, label %.split396.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.az, %i.j                     ; 2 uses
  %i.bb = sdiv i64 %i.ba, 4096
  %i.bc = and i64 %i.ba, 4095
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i64
  %i.bf = add nsw i64 %i.bb, %i.be
  %.tr.us.peel = trunc i64 %i.bf to i32
  %i.bg = shl i32 %.tr.us.peel, 12                ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 0, ptr %i.bh, align 4, !tbaa !23
  store i32 %5, ptr %i.ay, align 4, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  store i32 %i.bg, ptr %i.bj, align 4, !tbaa !23
  %i.bk = add i32 %i.bg, %5
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.bg, ptr %i.bl, align 4, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %i.bg, ptr %i.bm, align 4, !tbaa !27
  %i.bn = icmp ugt i32 %i.bg, %3
  br i1 %i.bn, label %.split399.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.bp = load i32, ptr %i.bo, align 1, !tbaa !8
  %.not286.us.peel = icmp eq i32 %i.bp, 0
  br i1 %.not286.us.peel, label %.loopexit, label %.outer.us

.outer.us:                                        ; preds = %bb.s, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 1, %bb.s ] ; 6 uses
  %.pn271.ph.us = phi i32 [ %i.bx, %bb.w ], [ %i.aw, %bb.s ]
  %.0235.ph.us = phi i32 [ %i.bw, %bb.w ], [ %i.av, %bb.s ] ; 4 uses
  %.0234.ph.us = phi ptr [ %i.bt, %bb.w ], [ %i.as, %bb.s ] ; 4 uses
  %.0230.ph.us = phi ptr [ %i.cn, %bb.w ], [ %i.ay, %bb.s ] ; 8 uses
  %.pn.us.us = sub i32 %.pn271.ph.us, %i.c        ; 3 uses
  %.pn270.us.us = zext i32 %.pn.us.us to i64
  %.0233.us.us = getelementptr inbounds nuw i8, ptr %0, i64 %.pn270.us.us ; 3 uses
  %.0236.us.us = sub nuw i32 %i.d, %.pn.us.us     ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, i32 noundef %i.bq, ptr noundef nonnull %.0234.ph.us, ptr noundef %.0233.us.us) #7
  %i.br = zext i32 %.0235.ph.us to i64
  %i.bs = add i32 %.0235.ph.us, -1
  %or.cond295.not.us.us = icmp ult i32 %i.bs, %i.d
  br i1 %or.cond295.not.us.us, label %bb.x, label %bb.ai

bb.t:                                             ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %.neg.us.us = sub i64 %i.db, %i.bu
  %i.bv = trunc i64 %.neg.us.us to i32
  %i.bw = add i32 %.0235.ph.us, %i.bv
  %i.bx = load i32, ptr %i.dm, align 1, !tbaa !8
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.j                     ; 2 uses
  %i.cb = sdiv i64 %i.ca, 4096
  %i.cc = and i64 %i.ca, 4095
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i64
  %i.cf = add nsw i64 %i.cb, %i.ce
  %.tr.us = trunc i64 %i.cf to i32
  %i.cg = shl i32 %.tr.us, 12                     ; 6 uses
  %i.ch = getelementptr inbounds nuw [36 x i8], ptr %.0230.ph.us, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !23
  %i.ck = icmp ult i32 %i.cg, %i.cj
  br i1 %i.ck, label %.split393.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = mul nuw i64 %indvars.iv, 36
  %i.cm = add nuw i64 %i.cl, 72
  %i.cn = call ptr @cli_max_realloc(ptr noundef nonnull %.0230.ph.us, i64 noundef %i.cm) #7 ; 7 uses
  %.not285.us = icmp eq ptr %i.cn, null
  br i1 %.not285.us, label %.split396.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i32 0, ptr %i.co, align 4, !tbaa !23
  store i32 %5, ptr %i.cn, align 4, !tbaa !25
  %i.cp = getelementptr inbounds nuw [36 x i8], ptr %i.cn, i64 %indvars.iv ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 44
  store i32 %i.cg, ptr %i.cr, align 4, !tbaa !23
  %i.cs = add i32 %i.cg, %5
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !25
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !23 ; 2 uses
  %i.cv = sub i32 %i.cg, %i.cu                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 %i.cv, ptr %i.cx, align 4, !tbaa !27
  %i.cy = icmp ugt i32 %i.cg, %3
  br i1 %i.cy, label %.split399.us.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !8
  %.not286.us = icmp eq i32 %i.da, 0
  br i1 %.not286.us, label %.loopexit.loopexit.loopexit, label %.outer.us, !llvm.loop !28

bb.x:                                             ; preds = %.outer.us
  %i.db = ptrtoint ptr %.0234.ph.us to i64        ; 3 uses
  %.not274.us.us = icmp ult ptr %.0234.ph.us, %0
  br i1 %.not274.us.us, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = add i64 %i.db, %i.br                    ; 2 uses
  %.not275.us.us = icmp ule i64 %i.dc, %i.o
  %i.dd = icmp ugt i64 %i.dc, %i.j
  %or.cond296.us.us = and i1 %.not275.us.us, %i.dd
  br i1 %or.cond296.us.us, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.de = icmp ule i64 %i.o, %i.db
  %i.df = icmp ule i32 %i.d, %.pn.us.us
  %or.cond297.us.us = or i1 %i.df, %i.de
  br i1 %or.cond297.us.us, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = zext i32 %.0236.us.us to i64
  %i.dh = ptrtoint ptr %.0233.us.us to i64        ; 2 uses
  %i.di = add i64 %i.dh, %i.dg                    ; 2 uses
  %.not278.us.us = icmp ule i64 %i.di, %i.o
  %i.dj = icmp ugt i64 %i.di, %i.j
  %or.cond298.us.us = and i1 %.not278.us.us, %i.dj
  %i.dk = icmp ugt i64 %i.o, %i.dh
  %or.cond299.us.us = and i1 %i.dk, %or.cond298.us.us
  br i1 %or.cond299.us.us, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.dl = call i32 @unmew(ptr noundef nonnull %.0234.ph.us, ptr noundef %.0233.us.us, i32 noundef %.0235.ph.us, i32 noundef %.0236.us.us, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not280.us.us = icmp eq i32 %i.dl, 0
  br i1 %.not280.us.us, label %bb.ac, label %.split344.us

bb.ac:                                            ; preds = %bb.ab
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !16  ; 4 uses
  %.not281.us.us = icmp ult ptr %i.dm, %0
  br i1 %.not281.us.us, label %.split347.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = add i64 %i.dn, 4                        ; 2 uses
  %.not282.us.us = icmp ule i64 %i.do, %i.o
  %i.dp = icmp ugt i64 %i.do, %i.j
  %or.cond300.us.us = and i1 %.not282.us.us, %i.dp
  %i.dq = icmp ugt i64 %i.o, %i.dn
  %or.cond301.us.us = and i1 %i.dq, %or.cond300.us.us
  br i1 %or.cond301.us.us, label %bb.t, label %.split347.us

.outer.split:                                     ; preds = %bb.j, %.thread
  %.pn271 = phi i32 [ %i.en, %.thread ], [ %i.y, %bb.j ]
  %.0235 = phi i32 [ %i.em, %.thread ], [ %i.z, %bb.j ] ; 4 uses
  %.0234 = phi ptr [ %i.ej, %.thread ], [ %i.u, %bb.j ] ; 4 uses
  %.0231 = phi i32 [ %i.eo, %.thread ], [ 0, %bb.j ] ; 2 uses
  %.pn = sub i32 %.pn271, %i.c                    ; 3 uses
  %.pn270 = zext i32 %.pn to i64
  %.0233 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn270 ; 3 uses
  %.0236 = sub nuw i32 %i.d, %.pn                 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, i32 noundef %.0231, ptr noundef nonnull %.0234, ptr noundef %.0233) #7
  %i.dr = zext i32 %.0235 to i64
  %i.ds = add i32 %.0235, -1
  %or.cond295.not = icmp ult i32 %i.ds, %i.d
  br i1 %or.cond295.not, label %bb.ae, label %.split.us.thread

bb.ae:                                            ; preds = %.outer.split
  %i.dt = ptrtoint ptr %.0234 to i64              ; 3 uses
  %.not274 = icmp ult ptr %.0234, %0
  br i1 %.not274, label %.split.us.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = add i64 %i.dt, %i.dr                    ; 2 uses
  %.not275 = icmp ule i64 %i.du, %i.o
  %i.dv = icmp ugt i64 %i.du, %i.j
  %or.cond296 = and i1 %.not275, %i.dv
  br i1 %or.cond296, label %bb.ag, label %.split.us.thread

bb.ag:                                            ; preds = %bb.af
  %i.dw = icmp ule i64 %i.o, %i.dt
  %i.dx = icmp ule i32 %i.d, %.pn
  %or.cond297 = or i1 %i.dx, %i.dw
  br i1 %or.cond297, label %.split.us.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = zext i32 %.0236 to i64
  %i.dz = ptrtoint ptr %.0233 to i64              ; 2 uses
  %i.ea = add i64 %i.dz, %i.dy                    ; 2 uses
  %.not278 = icmp ule i64 %i.ea, %i.o
  %i.eb = icmp ugt i64 %i.ea, %i.j
  %or.cond298 = and i1 %.not278, %i.eb
  %i.ec = icmp ugt i64 %i.o, %i.dz
  %or.cond299 = and i1 %i.ec, %or.cond298
  br i1 %or.cond299, label %bb.aj, label %.split.us.thread

.split.us.thread:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %.outer.split, %.outer.us.preheader, %bb.m, %bb.k, %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #7
  br label %.critedge

bb.ai:                                            ; preds = %.outer.us, %bb.x, %bb.y, %bb.z, %bb.aa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #7
  call void @free(ptr noundef nonnull %.0230.ph.us) #7
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah
  %i.ed = call i32 @unmew(ptr noundef nonnull %.0234, ptr noundef %.0233, i32 noundef %.0235, i32 noundef %.0236, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not280 = icmp eq i32 %i.ed, 0
  br i1 %.not280, label %bb.ak, label %.split344.us

.split344.us:                                     ; preds = %bb.aj, %bb.ab, %bb.n
  %.us-phi345 = phi ptr [ %.0230.ph.us, %bb.ab ], [ null, %bb.n ], [ null, %bb.aj ]
  call void @free(ptr noundef %.us-phi345) #7
  br label %.critedge

bb.ak:                                            ; preds = %bb.aj
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !16  ; 4 uses
  %.not281 = icmp ult ptr %i.ee, %0
  br i1 %.not281, label %.split347.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ef = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eg = add i64 %i.ef, 4                        ; 2 uses
  %.not282 = icmp ule i64 %i.eg, %i.o
  %i.eh = icmp ugt i64 %i.eg, %i.j
  %or.cond300 = and i1 %.not282, %i.eh
  %i.ei = icmp ugt i64 %i.o, %i.ef
  %or.cond301 = and i1 %i.ei, %or.cond300
  br i1 %or.cond301, label %.thread, label %.split347.us

.split347.us:                                     ; preds = %bb.ak, %bb.al, %bb.ad, %bb.ac, %bb.o, %bb.p
  %.us-phi348 = phi ptr [ %.0230.ph.us, %bb.ad ], [ null, %bb.o ], [ null, %bb.p ], [ %.0230.ph.us, %bb.ac ], [ null, %bb.al ], [ null, %bb.ak ]
  call void @free(ptr noundef %.us-phi348) #7
  br label %.critedge

.thread:                                          ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %.neg = sub i64 %i.dt, %i.ek
  %i.el = trunc i64 %.neg to i32
  %i.em = add i32 %.0235, %i.el
  %i.en = load i32, ptr %i.ee, align 1, !tbaa !8  ; 2 uses
  %i.eo = add nuw nsw i32 %.0231, 1
  %.not286307 = icmp eq i32 %i.en, 0
  br i1 %.not286307, label %.thread309, label %.outer.split

.split393.us:                                     ; preds = %bb.t
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #7
  call void @free(ptr noundef nonnull %.0230.ph.us) #7
  br label %.critedge

.split396.us:                                     ; preds = %bb.u, %bb.q
  %.0230.ph.us.lcssa415 = phi ptr [ null, %bb.q ], [ %.0230.ph.us, %bb.u ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #7
  call void @free(ptr noundef %.0230.ph.us.lcssa415) #7
  br label %.critedge

.split399.us.loopexit:                            ; preds = %bb.v
  %i.ep = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split399.us

.split399.us:                                     ; preds = %bb.r, %.split399.us.loopexit
  %.lcssa428 = phi i32 [ %i.cu, %.split399.us.loopexit ], [ 0, %bb.r ]
  %.lcssa426 = phi i32 [ %i.cg, %.split399.us.loopexit ], [ %i.bg, %bb.r ]
  %.lcssa424 = phi ptr [ %i.cn, %.split399.us.loopexit ], [ %i.ay, %bb.r ]
  %.0231.ph.us.lcssa422.wide = phi i32 [ %i.ep, %.split399.us.loopexit ], [ 0, %bb.r ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12, i32 noundef %.0231.ph.us.lcssa422.wide, i32 noundef %.lcssa428, i32 noundef %.lcssa426, i32 noundef %3) #7
  call void @free(ptr noundef nonnull %.lcssa424) #7
  br label %.critedge

.thread309:                                       ; preds = %.thread
  %i.eq = sext i32 %6 to i64
  %i.er = getelementptr i8, ptr %0, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 8      ; 3 uses
  %.not287 = icmp slt i32 %6, -8
  br i1 %.not287, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread309
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = add i64 %i.et, 1                        ; 2 uses
  %.not288 = icmp ule i64 %i.eu, %i.o
  %i.ev = icmp ugt i64 %i.eu, %i.j
  %or.cond302 = and i1 %.not288, %i.ev
  %i.ew = icmp ugt i64 %i.o, %i.et
  %or.cond303 = and i1 %i.ew, %or.cond302
  br i1 %or.cond303, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread309
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #7
  br label %.critedge

bb.ao:                                            ; preds = %bb.am
  %i.ex = load i8, ptr %i.es, align 1, !tbaa !8
  %i.ey = icmp eq i8 %i.ex, 80
  %i.ez = select i1 %i.ey, ptr @.str.15, ptr @.str.16
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ez) #7
  %i.fa = icmp ugt i32 %i.d, 28
  br i1 %i.fa, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 3 uses
  %.not289 = icmp ult ptr %i.fc, %0
  br i1 %.not289, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fd = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fe = add i64 %i.fd, 29                       ; 2 uses
  %.not290 = icmp ule i64 %i.fe, %i.o
  %i.ff = icmp ugt i64 %i.fe, %i.j
  %or.cond304 = and i1 %.not290, %i.ff
  %i.fg = icmp ugt i64 %i.o, %i.fd
  %or.cond305 = and i1 %i.fg, %or.cond304
  br i1 %or.cond305, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17) #7
  br label %.critedge

bb.as:                                            ; preds = %bb.aq
  %i.fh = load i8, ptr %i.es, align 1, !tbaa !8
  %i.fi = icmp eq i8 %i.fh, 80
  %i.fj = zext i1 %i.fi to i32
  %i.fk = call i32 @mew_lzma(ptr noundef nonnull %0, ptr noundef nonnull %i.fc, i32 noundef %i.d, i32 noundef %i.c, i32 noundef %i.fj)
  %.not291 = icmp eq i32 %i.fk, 0
  br i1 %.not291, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.fl = call noalias dereferenceable_or_null(36) ptr @calloc(i64 noundef 1, i64 noundef 36) #8 ; 5 uses
  %.not292 = icmp eq ptr %i.fl, null
  br i1 %.not292, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #7
  br label %.critedge

bb.av:                                            ; preds = %bb.at
  store i32 %5, ptr %i.fl, align 4, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %3, ptr %i.fm, align 4, !tbaa !26
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 %3, ptr %i.fn, align 4, !tbaa !27
  br label %.loopexit

.loopexit.loopexit.loopexit:                      ; preds = %bb.w
  %i.fo = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.loopexit.loopexit.loopexit, %bb.av
  %.1232 = phi i32 [ 1, %bb.av ], [ 1, %bb.s ], [ %i.fo, %.loopexit.loopexit.loopexit ]
  %.3 = phi ptr [ %i.fl, %bb.av ], [ %i.ay, %bb.s ], [ %i.cn, %.loopexit.loopexit.loopexit ] ; 3 uses
  %i.fp = sub i32 %i.w, %4
  %i.fq = call i32 @cli_rebuildpe_align(ptr noundef %0, ptr noundef nonnull %.3, i32 noundef %.1232, i32 noundef %4, i32 noundef %i.fp, i32 noundef 0, i32 noundef 0, i32 noundef %7, i32 noundef 4096) #7
  %.not293 = icmp eq i32 %i.fq, 0
  br i1 %.not293, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.loopexit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #7
  call void @free(ptr noundef nonnull %.3) #7
  br label %.critedge

end_hunk_0
