Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/acl?download=true
inline.NumInlined: 621
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@aclitemin:bb.a
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 19 uses
  %i.h = tail call ptr @palloc(i64 noundef 16) #12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.i = call fastcc ptr @getid(ptr noundef readonly %i.e, ptr noundef %i.a, ptr noundef %i.g) ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.i, align 1
  %.not.i = icmp eq i8 %i.k, 61
  br i1 %.not.i, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.a, align 16
  %i.m = xor i32 %i.l, 1970238055
  %i.n = getelementptr i8, ptr %i.a, i64 4
  %i.o = load i16, ptr %i.n, align 4
  %i.p = zext i16 %i.o to i32
  %i.q = xor i32 %i.p, 112
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not63.i = icmp eq i32 %i.t, 0
  br i1 %.not63.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.a, align 16
  %i.v = xor i32 %i.u, 1919251317
  %i.w = getelementptr i8, ptr %i.a, i64 4
  %i.x = load i8, ptr %i.w, align 4
  %i.y = zext i8 %i.x to i32
  %i.z = or i32 %i.v, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not65.i = icmp eq i32 %i.ab, 0
  br i1 %.not65.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call zeroext i1 @errsave_start(ptr noundef %i.g, ptr noundef null) #12
  br i1 %i.ac, label %bb.f, label %bb.ba

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.ae = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.af = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.42) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef 299, ptr noundef nonnull @__func__.aclparse) #12
  br label %bb.ba

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.ag = call fastcc ptr @getid(ptr noundef nonnull %i.i, ptr noundef %i.a, ptr noundef %i.g) ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.ba, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.a, align 16
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call zeroext i1 @errsave_start(ptr noundef %i.g, ptr noundef null) #12
  br i1 %i.ak, label %bb.j, label %bb.ba

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.am = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43) #12 ; 0 uses
  %i.an = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.44) #12 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__func__.aclparse) #12
  br label %bb.ba

bb.k:                                             ; preds = %bb.h
  %.pr.i = load i8, ptr %i.ag, align 1
  %i.ao = icmp eq i8 %.pr.i, 61
  br i1 %i.ao, label %.preheader.i, label %bb.l

.preheader.i:                                     ; preds = %bb.k, %bb.b
  %.05890.i = phi ptr [ %i.ag, %bb.k ], [ %i.i, %bb.b ] ; 2 uses
  %i.ap = tail call ptr @__ctype_b_loc() #14      ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.15974.i = getelementptr inbounds nuw i8, ptr %.05890.i, i64 1 ; 3 uses
  %i.ar = load i8, ptr %.15974.i, align 1         ; 3 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  %i.av = and i16 %i.au, 1024
  %.not6775.i = icmp ne i16 %i.av, 0
  %i.aw = icmp eq i8 %i.ar, 42
  %or.cond76.i = or i1 %i.aw, %.not6775.i
  br i1 %or.cond76.i, label %.critedge.i, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call zeroext i1 @errsave_start(ptr noundef %i.g, ptr noundef null) #12
  br i1 %i.ax, label %bb.m, label %bb.ba

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.az = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.45) #12 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef 314, ptr noundef nonnull @__func__.aclparse) #12
  br label %bb.ba

.critedge.i:                                      ; preds = %.preheader.i, %bb.ae
  %i.ba = phi i8 [ %i.bg, %bb.ae ], [ %i.ar, %.preheader.i ]
  %.15980.i = phi ptr [ %.159.i, %bb.ae ], [ %.15974.i, %.preheader.i ] ; 2 uses
  %.079.i = phi i64 [ %.1.i, %bb.ae ], [ 0, %.preheader.i ] ; 2 uses
  %.05478.i = phi i64 [ %.155.i, %bb.ae ], [ 0, %.preheader.i ] ; 16 uses
  %.05677.i = phi i64 [ %i.bf, %bb.ae ], [ 0, %.preheader.i ]
  switch i8 %i.ba, label %bb.ac [
    i8 42, label %bb.n
    i8 97, label %bb.ae
    i8 114, label %bb.o
    i8 119, label %bb.p
    i8 100, label %bb.q
    i8 68, label %bb.r
    i8 120, label %bb.s
    i8 116, label %bb.t
    i8 88, label %bb.u
    i8 85, label %bb.v
    i8 67, label %bb.w
    i8 84, label %bb.x
    i8 99, label %bb.y
    i8 115, label %bb.z
    i8 65, label %bb.aa
    i8 109, label %bb.ab
  ]

bb.n:                                             ; preds = %.critedge.i
  %i.bb = or i64 %.05478.i, %.079.i
  br label %bb.ae

bb.o:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.p:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.q:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.r:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.s:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.t:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.u:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.v:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.w:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.x:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.y:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.z:                                             ; preds = %.critedge.i
  br label %bb.ae

bb.aa:                                            ; preds = %.critedge.i
  br label %bb.ae

bb.ab:                                            ; preds = %.critedge.i
  br label %bb.ae

bb.ac:                                            ; preds = %.critedge.i
  %i.bc = tail call zeroext i1 @errsave_start(ptr noundef %i.g, ptr noundef null) #12
  br i1 %i.bc, label %bb.ad, label %bb.ba

bb.ad:                                            ; preds = %bb.ac
  %i.bd = tail call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.be = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3) #12 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef 374, ptr noundef nonnull @__func__.aclparse) #12
  br label %bb.ba

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %.critedge.i
  %.155.i = phi i64 [ %i.bb, %bb.n ], [ %.05478.i, %bb.ab ], [ %.05478.i, %bb.o ], [ %.05478.i, %bb.p ], [ %.05478.i, %bb.q ], [ %.05478.i, %bb.r ], [ %.05478.i, %bb.s ], [ %.05478.i, %bb.t ], [ %.05478.i, %bb.u ], [ %.05478.i, %bb.v ], [ %.05478.i, %bb.w ], [ %.05478.i, %bb.x ], [ %.05478.i, %bb.y ], [ %.05478.i, %bb.z ], [ %.05478.i, %bb.aa ], [ %.05478.i, %.critedge.i ] ; 2 uses
  %.1.i = phi i64 [ %.079.i, %bb.n ], [ 16384, %bb.ab ], [ 2, %bb.o ], [ 4, %bb.p ], [ 8, %bb.q ], [ 16, %bb.r ], [ 32, %bb.s ], [ 64, %bb.t ], [ 128, %bb.u ], [ 256, %bb.v ], [ 512, %bb.w ], [ 1024, %bb.x ], [ 2048, %bb.y ], [ 4096, %bb.z ], [ 8192, %bb.aa ], [ 1, %.critedge.i ] ; 2 uses
  %i.bf = or i64 %.1.i, %.05677.i                 ; 2 uses
  %.159.i = getelementptr inbounds nuw i8, ptr %.15980.i, i64 1 ; 3 uses
  %i.bg = load i8, ptr %.159.i, align 1           ; 3 uses
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = and i16 %i.bj, 1024
  %.not67.i = icmp ne i16 %i.bk, 0
  %i.bl = icmp eq i8 %i.bg, 42
  %or.cond.i = or i1 %i.bl, %.not67.i
  br i1 %or.cond.i, label %.critedge.i, label %._crit_edge.loopexit.i, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %bb.ae
  %i.bm = shl i64 %.155.i, 32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.058.pn.lcssa.i = phi ptr [ %.05890.i, %.preheader.i ], [ %.15980.i, %._crit_edge.loopexit.i ]
  %.056.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.bf, %._crit_edge.loopexit.i ]
  %.054.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.bm, %._crit_edge.loopexit.i ]
  %.159.lcssa.i = phi ptr [ %.15974.i, %.preheader.i ], [ %.159.i, %._crit_edge.loopexit.i ] ; 4 uses
  %i.bn = load i8, ptr %i.a, align 16
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i
  store i32 0, ptr %i.h, align 8
  br label %bb.am

bb.ag:                                            ; preds = %._crit_edge.i
  %i.bp = load i32, ptr @Mode, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.br = call i32 @boot_get_role_oid(ptr noundef nonnull %i.a) #12
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bs = ptrtoint ptr %i.a to i64
  %i.bt = call i32 @GetSysCacheOid(i32 noundef 10, i16 noundef signext 1, i64 noundef %i.bs, i64 noundef 0, i64 noundef 0, i64 noundef 0) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %storemerge.i = phi i32 [ %i.bt, %bb.ai ], [ %i.br, %bb.ah ] ; 2 uses
  store i32 %storemerge.i, ptr %i.h, align 8
  %.not68.i = icmp eq i32 %storemerge.i, 0
  br i1 %.not68.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.bu = call zeroext i1 @errsave_start(ptr noundef %i.g, ptr noundef null) #12
  br i1 %i.bu, label %bb.al, label %bb.ba

bb.al:                                            ; preds = %bb.ak
  %i.bv = call i32 @errcode(i32 noundef 67137668) #12 ; 0 uses
  %i.bw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, ptr noundef nonnull %i.a) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef 391, ptr noundef nonnull @__func__.aclparse) #12
  br label %bb.ba

bb.am:                                            ; preds = %bb.aj, %bb.af
  %i.bx = load i8, ptr %.159.lcssa.i, align 1
  %i.by = icmp eq i8 %i.bx, 47
  br i1 %i.by, label %bb.an, label %bb.ax

bb.an:                                            ; preds = %bb.am
  %i.bz = getelementptr inbounds nuw i8, ptr %.058.pn.lcssa.i, i64 2
  %i.ca = call fastcc ptr @getid(ptr noundef nonnull %i.bz, ptr noundef %i.b, ptr noundef %i.g) ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ba, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cc = load i8, ptr %i.b, align 16
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ce = call zeroext i1 @errsave_start(ptr noundef %i.g, ptr noundef null) #12
  br i1 %i.ce, label %bb.aq, label %bb.ba

bb.aq:                                            ; preds = %bb.ap
  %i.cf = call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.cg = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.47) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef 407, ptr noundef nonnull @__func__.aclparse) #12
  br label %bb.ba

bb.ar:                                            ; preds = %bb.ao
  %i.ch = load i32, ptr @Mode, align 4
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cj = call i32 @boot_get_role_oid(ptr noundef nonnull %i.b) #12
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ck = ptrtoint ptr %i.b to i64
  %i.cl = call i32 @GetSysCacheOid(i32 noundef 10, i16 noundef signext 1, i64 noundef %i.ck, i64 noundef 0, i64 noundef 0, i64 noundef 0) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink.i = phi i32 [ %i.cj, %bb.as ], [ %i.cl, %bb.at ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %.sink.i, ptr %i.cm, align 4
  %.not69.i = icmp eq i32 %.sink.i, 0
  br i1 %.not69.i, label %bb.av, label %aclparse.exit

bb.av:                                            ; preds = %bb.au
  %i.cn = call zeroext i1 @errsave_start(ptr noundef %i.g, ptr noundef null) #12
  br i1 %i.cn, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.co = call i32 @errcode(i32 noundef 67137668) #12 ; 0 uses
  %i.cp = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, ptr noundef nonnull %i.b) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef 415, ptr noundef nonnull @__func__.aclparse) #12
  br label %bb.ba

bb.ax:                                            ; preds = %bb.am
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 10, ptr %i.cq, align 4
  %i.cr = load i32, ptr @Mode, align 4
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %aclparse.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ct = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #12
  br i1 %i.ct, label %bb.az, label %aclparse.exit

bb.az:                                            ; preds = %bb.ay
  %i.cu = call i32 @errcode(i32 noundef 1792) #12 ; 0 uses
  %i.cv = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.48, i32 noundef 10) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 424, ptr noundef nonnull @__func__.aclparse) #12
  br label %aclparse.exit

aclparse.exit:                                    ; preds = %bb.au, %bb.ax, %bb.ay, %bb.az
  %.2.i = phi ptr [ %i.ca, %bb.au ], [ %.159.lcssa.i, %bb.ax ], [ %.159.lcssa.i, %bb.az ], [ %.159.lcssa.i, %bb.ay ]
  %1 = add nuw nsw i64 %.054.lcssa.i, %.056.lcssa.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %i.cw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cx = load ptr, ptr %i.ap, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ac, %bb.a, %bb.e, %bb.g, %bb.i, %bb.l, %bb.ak, %bb.an, %bb.ap, %bb.f, %bb.j, %bb.m, %bb.ad, %bb.al, %bb.aq, %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.cy, align 4
  br label %bb.bg

bb.bb:                                            ; preds = %bb.bb, %aclparse.exit
  %.0 = phi ptr [ %.2.i, %aclparse.exit ], [ %i.de, %bb.bb ] ; 2 uses
  %i.cz = load i8, ptr %.0, align 1               ; 2 uses
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = and i16 %i.dc, 8192
  %.not = icmp eq i16 %i.dd, 0
  %i.de = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %.not, label %bb.bc, label %bb.bb, !llvm.loop !14

bb.bc:                                            ; preds = %bb.bb
  %.not16 = icmp eq i8 %i.cz, 0
  br i1 %.not16, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.df = call zeroext i1 @errsave_start(ptr noundef %i.g, ptr noundef null) #12
  br i1 %i.df, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.dg = call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.dh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %i.g, ptr noundef nonnull @.str.1, i32 noundef 646, ptr noundef nonnull @__func__.aclitemin) #12
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.di = ptrtoint ptr %i.h to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bf, %bb.ba
  %.014 = phi i64 [ 0, %bb.ba ], [ %i.di, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bd ]
  ret i64 %.014
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare zeroext i1 @errsave_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errsave_finish(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @aclitemout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = tail call ptr @palloc(i64 noundef 293) #12 ; 9 uses
  store i8 0, ptr %i.d, align 1
  %i.e = load i32, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @Mode, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %i.e to i64
  %i.i = tail call ptr @SearchSysCache1(i32 noundef 11, i64 noundef %i.h) #12 ; 3 uses
  %.not36 = icmp eq ptr %i.i, null
  br i1 %.not36, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i32, ptr %i.c, align 8
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.032.val = load ptr, ptr %i.j, align 8         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.032.val, i64 22
  %i.l = load i8, ptr %i.k, align 2
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.032.val, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %.not24.i = icmp eq i8 %i.p, 0
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i

bb.e:                                             ; preds = %is_safe_acl_char.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.01525.i, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !15

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.s = phi i8 [ %i.r, %bb.e ], [ %i.p, %bb.d ]  ; 3 uses
  %.01525.i = phi ptr [ %i.q, %bb.e ], [ %i.o, %bb.d ]
  %.not.i.i = icmp sgt i8 %i.s, -1
  br i1 %.not.i.i, label %is_safe_acl_char.exit.i, label %is_safe_acl_char.exit.thread.i

is_safe_acl_char.exit.i:                          ; preds = %.lr.ph.i
  %i.t = tail call ptr @__ctype_b_loc() #14
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = zext nneg i8 %i.s to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  %i.y = and i16 %i.x, 8
  %i.z = icmp ne i16 %i.y, 0
  %i.aa = icmp eq i8 %i.s, 95
  %i.ab = or i1 %i.aa, %i.z
  br i1 %i.ab, label %bb.e, label %is_safe_acl_char.exit.thread.i

is_safe_acl_char.exit.thread.i:                   ; preds = %is_safe_acl_char.exit.i, %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 34, ptr %i.d, align 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %is_safe_acl_char.exit.thread.i, %bb.d
  %.not23.i = phi i1 [ false, %is_safe_acl_char.exit.thread.i ], [ true, %bb.d ], [ true, %bb.e ]
  %.016.i = phi ptr [ %i.ac, %is_safe_acl_char.exit.thread.i ], [ %i.d, %bb.d ], [ %i.d, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.critedge.i
  %.117.i = phi ptr [ %.016.i, %.critedge.i ], [ %i.ag, %bb.h ] ; 6 uses
  %.1.i = phi ptr [ %i.o, %.critedge.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ad = load i8, ptr %.1.i, align 1             ; 2 uses
  switch i8 %i.ad, label %bb.h [
    i8 0, label %bb.i
    i8 34, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.117.i, i64 1
  store i8 34, ptr %.117.i, align 1
  %.pre.i = load i8, ptr %.1.i, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = phi i8 [ %.pre.i, %bb.g ], [ %i.ad, %bb.f ]
  %.2.i = phi ptr [ %i.ae, %bb.g ], [ %.117.i, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.af, ptr %.2.i, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %bb.f, !llvm.loop !16

bb.i:                                             ; preds = %bb.f
  br i1 %.not23.i, label %putid.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.117.i, i64 1
  store i8 34, ptr %.117.i, align 1
  br label %putid.exit

putid.exit:                                       ; preds = %bb.i, %bb.j
  %.3.i = phi ptr [ %.117.i, %bb.i ], [ %i.ai, %bb.j ]
  store i8 0, ptr %.3.i, align 1
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.i) #12
  br label %bb.k

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.aj = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.e, %bb.b ]
  %i.ak = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.2, i32 noundef %i.aj) #12 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %putid.exit, %.thread, %bb.a
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.d)
  %scevgep = getelementptr i8, ptr %i.d, i64 %strlen ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %scevgep, i64 1 ; 2 uses
  store i8 61, ptr %scevgep, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 30 uses
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = and i64 %i.an, 1
  %.not39 = icmp eq i64 %i.ao, 0
  br i1 %.not39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %scevgep, i64 2
  store i8 97, ptr %i.al, align 1
  %.pre65 = load i64, ptr %i.am, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = phi i64 [ %.pre65, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %.2 = phi ptr [ %i.ap, %bb.l ], [ %i.al, %bb.k ] ; 3 uses
  %i.ar = and i64 %i.aq, 4294967296
  %.not40 = icmp eq i64 %i.ar, 0
  br i1 %.not40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %.2, i64 1
end_hunk_0
