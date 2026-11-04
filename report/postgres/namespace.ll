Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/namespace?download=true
inline.NumInlined: 225
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@TypenameGetTypidExtended:bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv61
  %i.l = load i32, ptr %i.k, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i32 @GetSysCacheOid(i32 noundef 89, i16 noundef signext 1, i64 noundef %i.c, i64 noundef %i.m, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  %.not19.us = icmp eq i32 %i.n, 0
  br i1 %.not19.us, label %bb.b, label %._crit_edge

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %i.f, label %.lr.ph51.preheader, label %._crit_edge

.lr.ph51.preheader:                               ; preds = %.lr.ph.split.split
  %.pre64 = load i32, ptr @myTempNamespace, align 4
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %select.unfold
  %i.o = phi i32 [ %i.e, %.lr.ph51.preheader ], [ %i.v, %select.unfold ]
  %i.p = phi i32 [ %.pre64, %.lr.ph51.preheader ], [ %i.w, %select.unfold ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph51.preheader ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not57 = icmp eq i32 %i.s, %i.p
  br i1 %.not57, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %.lr.ph51
  %i.t = zext i32 %i.s to i64
  %i.u = tail call i32 @GetSysCacheOid(i32 noundef 89, i16 noundef signext 1, i64 noundef %i.c, i64 noundef %i.t, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  %.not19 = icmp eq i32 %i.u, 0
  br i1 %.not19, label %.select.unfold_crit_edge, label %._crit_edge

.select.unfold_crit_edge:                         ; preds = %bb.c
  %.pre = load i32, ptr @myTempNamespace, align 4
  %.pre65 = load i32, ptr %i.b, align 4
  br label %select.unfold

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %.lr.ph51
  %i.v = phi i32 [ %.pre65, %.select.unfold_crit_edge ], [ %i.o, %.lr.ph51 ] ; 2 uses
  %i.w = phi i32 [ %.pre, %.select.unfold_crit_edge ], [ %i.p, %.lr.ph51 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = sext i32 %i.v to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph51, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %select.unfold, %select.unfold.us, %bb.b, %.lr.ph.split.us.split, %.lr.ph.split.split, %bb.a
  %i.z = phi i32 [ 0, %.lr.ph.split.us.split ], [ 0, %.lr.ph.split.split ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.n, %select.unfold.us ], [ 0, %select.unfold ], [ %i.u, %bb.c ]
  ret i32 %i.z
}

declare i32 @GetSysCacheOid(i32 noundef, i16 noundef signext, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @TypeIsVisible(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @TypeIsVisibleExt(i32 noundef %0, ptr noundef null)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @TypeIsVisibleExt(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = tail call ptr @SearchSysCache1(i32 noundef 90, i64 noundef %i.a) #18 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq ptr %1, null
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 1
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.31, i32 noundef %0) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1068, ptr noundef nonnull @__func__.TypeIsVisibleExt) #18
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.g = load i8, ptr %i.f, align 2
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h ; 2 uses
  tail call fastcc void @recomputeNamespacePath()
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %.not31 = icmp eq i32 %i.k, 11
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @activeSearchPath, align 8
  %i.m = tail call zeroext i1 @list_member_oid(ptr noundef %i.l, i32 noundef %i.k) #18
  br i1 %i.m, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = load ptr, ptr @activeSearchPath, align 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.not32 = icmp eq ptr %i.n, null
  br i1 %.not32, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = load i32, ptr %i.o, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph47, label %.critedge

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.o, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph47, label %.critedge

.lr.ph47:                                         ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq i32 %i.z, %i.k                  ; 4 uses
  br i1 %i.aa, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph47
  %i.ab = zext i32 %i.z to i64
  %i.ac = tail call zeroext i1 @SearchSysCacheExists(i32 noundef 89, i64 noundef %i.r, i64 noundef %i.ab, i64 noundef 0, i64 noundef 0) #18
  br i1 %i.ac, label %.critedge, label %bb.h

.critedge:                                        ; preds = %.lr.ph47, %bb.h, %bb.i, %bb.g, %.lr.ph, %bb.f
  %.3 = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ false, %.lr.ph ], [ %i.aa, %bb.i ], [ %i.aa, %bb.h ], [ %i.aa, %.lr.ph47 ]
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.b) #18
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.c
  %.024 = phi i1 [ %.3, %.critedge ], [ false, %bb.c ]
  ret i1 %.024
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FuncnameGetCandidates(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef captures(none) initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca [100 x i8], align 16              ; 8 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i32 0, ptr %7, align 4
  call void @DeconstructQualifiedName(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not240 = icmp eq ptr %i.i, null
  br i1 %.not240, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %7, align 4
  %i.k = or i32 %i.j, 1
  store i32 %i.k, ptr %7, align 4
  %i.l = tail call i32 @LookupExplicitNamespace(ptr noundef nonnull %i.i, i1 noundef zeroext %6) ; 2 uses
  %.not241 = icmp eq i32 %i.l, 0
  br i1 %.not241, label %bb.bj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %7, align 4
  %i.n = or i32 %i.m, 2
  store i32 %i.n, ptr %7, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @recomputeNamespacePath()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0217 = phi i32 [ %i.l, %bb.c ], [ 0, %bb.d ]  ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = tail call ptr @SearchSysCacheList(i32 noundef 46, i32 noundef 1, i64 noundef %i.p, i64 noundef 0, i64 noundef 0) #18 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph341, label %._crit_edge

.lr.ph341:                                        ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.v = icmp eq i32 %.0217, 0                    ; 2 uses
  %.not249 = icmp eq ptr %2, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = icmp sgt i32 %1, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 61
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph341, %.thread268
  %indvars.iv367 = phi i64 [ 0, %.lr.ph341 ], [ %indvars.iv.next368, %.thread268 ] ; 2 uses
  %.0218336 = phi i1 [ false, %.lr.ph341 ], [ %.4, %.thread268 ] ; 11 uses
  %.0221332 = phi ptr [ null, %.lr.ph341 ], [ %.6, %.thread268 ] ; 26 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv367
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 80     ; 2 uses
  %.val = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.af = load i8, ptr %i.ae, align 2
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ag ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 136 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = load i32, ptr %7, align 4               ; 2 uses
  %i.an = or i32 %i.am, 4
  store i32 %i.an, ptr %7, align 4
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.ap = load i32, ptr %i.ao, align 4
  %.not246 = icmp eq i32 %i.ap, %.0217
  br i1 %.not246, label %.loopexit309, label %.thread268

bb.h:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr @activeSearchPath, align 8 ; 3 uses
  %.not242 = icmp eq ptr %i.aq, null
  br i1 %.not242, label %.thread268, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph323, label %.thread268

.lr.ph323:                                        ; preds = %.lr.ph
  %i.au = load i32, ptr @myTempNamespace, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i32, ptr %i.av, align 4            ; 2 uses
  %.not244 = icmp eq i32 %i.ay, %i.au
  %.not244.fr = freeze i1 %.not244
  br i1 %.not244.fr, label %.thread268, label %.lr.ph323.split.preheader

.lr.ph323.split.preheader:                        ; preds = %.lr.ph323
  %wide.trip.count = zext nneg i32 %i.as to i64
  br label %.lr.ph323.split

.lr.ph323.split:                                  ; preds = %.lr.ph323.split.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph323.split.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 8
  %.not342 = icmp eq i32 %i.ay, %i.ba
  br i1 %.not342, label %.loopexit309.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph323.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread268, label %.lr.ph323.split

.loopexit309.loopexit:                            ; preds = %.lr.ph323.split
  %indvars355 = trunc i64 %indvars.iv to i32
  br label %.loopexit309

.loopexit309:                                     ; preds = %.loopexit309.loopexit, %bb.g
  %.1208 = phi i32 [ 0, %bb.g ], [ %indvars355, %.loopexit309.loopexit ] ; 3 uses
  %i.bb = or i32 %i.am, 12
  store i32 %i.bb, ptr %7, align 4
  br i1 %5, label %bb.j, label %bb.q

bb.j:                                             ; preds = %.loopexit309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.bc = call i64 @SysCacheGetAttr(i32 noundef 46, ptr noundef nonnull %i.ac, i16 noundef signext 21, ptr noundef nonnull %i.h) #18
  %i.bd = load i8, ptr %i.h, align 1, !range !4, !noundef !5
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = inttoptr i64 %i.bc to ptr
  %i.bg = call ptr @pg_detoast_datum(ptr noundef %i.bf) #18 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp ne i32 %i.bk, 1
  %i.bm = icmp slt i32 %i.bi, 0
  %or.cond = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bo = load i32, ptr %i.bn, align 4
  %.not247 = icmp eq i32 %i.bo, 0
  br i1 %.not247, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bq = load i32, ptr %i.bp, align 4
  %.not248 = icmp eq i32 %i.bq, 26
  br i1 %.not248, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.br = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.bs = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.12) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1306, ptr noundef nonnull @__func__.FuncnameGetCandidates) #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.0211 = phi ptr [ %i.ai, %bb.j ], [ %i.bt, %bb.o ]
  %.0209 = phi i32 [ %i.al, %bb.j ], [ %i.bi, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit309
  %.1212 = phi ptr [ %.0211, %bb.p ], [ %i.ai, %.loopexit309 ] ; 6 uses
  %.1210 = phi i32 [ %.0209, %bb.p ], [ %i.al, %.loopexit309 ] ; 19 uses
  br i1 %.not249, label %bb.ak, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp sgt i32 %.1210, %1                 ; 2 uses
  %or.cond5 = and i1 %4, %i.bu
  br i1 %or.cond5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 106
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = sext i16 %i.bw to i32
  %i.by = add i32 %1, %i.bx
  %i.bz = icmp slt i32 %i.by, %.1210
  br i1 %i.bz, label %.thread268, label %.thread271

bb.t:                                             ; preds = %bb.r
  %i.ca = icmp eq i32 %.1210, %1
  br i1 %i.ca, label %.thread271, label %.thread268

.thread271:                                       ; preds = %bb.s, %bb.t
  %.0203274 = phi i8 [ 0, %bb.t ], [ 1, %bb.s ]
  %i.cb = load i32, ptr %7, align 4
  %i.cc = or i32 %i.cb, 16
  store i32 %i.cc, ptr %7, align 4
  %.val.i = load ptr, ptr %i.ad, align 8          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.ce = load i8, ptr %i.cd, align 2
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.cf
  %i.ch = load i32, ptr %i.w, align 4
  %i.ci = sub i32 %1, %i.ch                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.cj = call i64 @SysCacheGetAttr(i32 noundef 47, ptr noundef nonnull %i.ac, i16 noundef signext 23, ptr noundef nonnull %i.e) #18 ; 0 uses
  %i.ck = load i8, ptr %i.e, align 1, !range !4, !noundef !5
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %MatchNamedCall.exit.thread, label %bb.u

bb.u:                                             ; preds = %.thread271
  %i.cm = call i32 @get_func_arg_info(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #18 ; 2 uses
  %i.cn = sext i32 %.1210 to i64                  ; 2 uses
  %i.co = shl nsw i64 %i.cn, 2
  %i.cp = call ptr @palloc(i64 noundef %i.co) #18 ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 0, i64 %i.cn, i1 false)
  %i.cq = icmp sgt i32 %i.ci, 0
  br i1 %i.cq, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.cr = zext nneg i32 %i.ci to i64              ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 1, i64 %i.cr, i1 false)
  %min.iters.check411 = icmp ult i32 %i.ci, 8
  br i1 %min.iters.check411, label %.lr.ph.i.preheader, label %vector.ph412

vector.ph412:                                     ; preds = %.lr.ph.preheader.i
  %n.vec413 = and i64 %i.cr, 2147483640           ; 3 uses
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next416, %vector.body414 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph412 ], [ %vec.ind.next, %vector.body414 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index415 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> %vec.ind, ptr %i.cs, align 4
  store <4 x i32> %step.add, ptr %i.ct, align 4
  %index.next416 = add nuw i64 %index415, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.cu = icmp eq i64 %index.next416, %n.vec413
  br i1 %i.cu, label %middle.block417, label %vector.body414, !llvm.loop !10

middle.block417:                                  ; preds = %vector.body414
  %cmp.n418 = icmp eq i64 %n.vec413, %i.cr
  br i1 %cmp.n418, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block417
end_hunk_0
begin_hunk_1_@FuncnameGetCandidates:bb.a
  %i.dh = getelementptr inbounds i8, ptr %i.d, i64 %i.dg ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !range !4, !noundef !5
  %i.dj = trunc nuw i8 %i.di to i1
  %spec.select.us.i = select i1 %i.dj, i1 true, i1 %.072114.us.i ; 2 uses
  store i8 1, ptr %i.dh, align 1
  %i.dk = sext i32 %.170115.us.i to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dk
  store i32 %indvars155.le.i, ptr %i.dl, align 4
  %i.dm = add nuw i32 %.170115.us.i, 1            ; 2 uses
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1 ; 2 uses
  %i.dn = load i32, ptr %i.w, align 4
  %i.do = sext i32 %i.dn to i64
  %.not88.not.us.i = icmp slt i64 %indvars.iv.next159.i, %i.do
  br i1 %.not88.not.us.i, label %.lr.ph111.us.i, label %.critedge.thread.i, !llvm.loop !12

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.dq = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.dq, ptr %i.dp, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cr
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph111.i:                                      ; preds = %.lr.ph117.split.i, %.split.us.i
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %.split.us.i ], [ 0, %.lr.ph117.split.i ] ; 2 uses
  %.170115.i = phi i32 [ %i.eo, %.split.us.i ], [ %.069.lcssa.i, %.lr.ph117.split.i ] ; 2 uses
  %.072114.i = phi i1 [ %spec.select.i, %.split.us.i ], [ false, %.lr.ph117.split.i ]
  %i.dr = load ptr, ptr %i.x, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv149.i
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  %i.dw = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %i.dv, label %.lr.ph111.split.us.i, label %.lr.ph111.split.i

.lr.ph111.split.us.i:                             ; preds = %.lr.ph111.i, %bb.z
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %bb.z ], [ 0, %.lr.ph111.i ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv142.i
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not92.us.i = icmp eq ptr %i.dy, null
  br i1 %.not92.us.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph111.split.us.i
  %i.dz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) %i.dt) #19
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.split.us.loopexit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph111.split.us.i
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next143.i, %wide.trip.count156.i
  br i1 %exitcond148.not.i, label %MatchNamedCall.exit.thread, label %.lr.ph111.split.us.i, !llvm.loop !11

.lr.ph111.split.i:                                ; preds = %.lr.ph111.i, %bb.ad
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %bb.ad ], [ 0, %.lr.ph111.i ] ; 3 uses
  %.066109.i = phi i32 [ %.167.i, %bb.ad ], [ 0, %.lr.ph111.i ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv137.i
  %i.ec = load i8, ptr %i.eb, align 1
  switch i8 %i.ec, label %bb.ad [
    i8 105, label %bb.aa
    i8 98, label %bb.aa
    i8 118, label %bb.aa
  ]

bb.aa:                                            ; preds = %.lr.ph111.split.i, %.lr.ph111.split.i, %.lr.ph111.split.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv137.i
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %.not92.i = icmp eq ptr %i.ee, null
  br i1 %.not92.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ee, ptr noundef nonnull dereferenceable(1) %i.dt) #19
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %.split.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eh = add i32 %.066109.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph111.split.i
  %.167.i = phi i32 [ %.066109.i, %.lr.ph111.split.i ], [ %i.eh, %bb.ac ]
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count156.i
  br i1 %exitcond141.not.i, label %MatchNamedCall.exit.thread, label %.lr.ph111.split.i, !llvm.loop !11

.split.us.loopexit.i:                             ; preds = %bb.y
  %indvars146.le.i = trunc i64 %indvars.iv142.i to i32
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.ab, %.split.us.loopexit.i
  %.us-phi.i = phi i32 [ %indvars146.le.i, %.split.us.loopexit.i ], [ %.066109.i, %bb.ab ] ; 2 uses
  %i.ei = sext i32 %.us-phi.i to i64
  %i.ej = getelementptr inbounds i8, ptr %i.d, i64 %i.ei ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !range !4, !noundef !5
  %i.el = trunc nuw i8 %i.ek to i1
  %spec.select.i = select i1 %i.el, i1 true, i1 %.072114.i ; 2 uses
  store i8 1, ptr %i.ej, align 1
  %i.em = sext i32 %.170115.i to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.em
  store i32 %.us-phi.i, ptr %i.en, align 4
  %i.eo = add nuw i32 %.170115.i, 1               ; 2 uses
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %i.ep = load i32, ptr %i.w, align 4
  %i.eq = sext i32 %i.ep to i64
  %.not88.not.i = icmp slt i64 %indvars.iv.next150.i, %i.eq
  br i1 %.not88.not.i, label %.lr.ph111.i, label %.critedge.thread.i, !llvm.loop !12

.critedge.thread.i:                               ; preds = %.split.us.i, %.split.us.us.i
  %.072.lcssa.i = phi i1 [ %spec.select.us.i, %.split.us.us.i ], [ %spec.select.i, %.split.us.i ]
  %.170.lcssa.i = phi i32 [ %i.dm, %.split.us.us.i ], [ %i.eo, %.split.us.i ]
  %i.er = load i32, ptr %7, align 4               ; 2 uses
  %i.es = or i32 %i.er, 32
  store i32 %i.es, ptr %7, align 4
  br i1 %.072.lcssa.i, label %MatchNamedCall.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %.critedge.thread.i, %.critedge.thread.thread.i
  %i.et = phi i32 [ %i.cw, %.critedge.thread.thread.i ], [ %i.er, %.critedge.thread.i ]
  %.170.lcssa172.i = phi i32 [ %.069.lcssa.i, %.critedge.thread.thread.i ], [ %.170.lcssa.i, %.critedge.thread.i ]
  %i.eu = or i32 %i.et, 96                        ; 2 uses
  store i32 %i.eu, ptr %7, align 4
  %.not93122.i = icmp slt i32 %i.ci, %.1210
  %or.cond.i = select i1 %i.bu, i1 %.not93122.i, i1 false
  br i1 %or.cond.i, label %.lr.ph125.preheader.i, label %bb.ai

.lr.ph125.preheader.i:                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cg, i64 106
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = sext i16 %i.ew to i32
  %i.ey = sub i32 %.1210, %i.ex
  %i.ez = sext i32 %i.ci to i64
  %i.fa = sext i32 %i.ey to i64
  br label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %bb.ah, %.lr.ph125.preheader.i
  %indvars.iv160.i = phi i64 [ %i.ez, %.lr.ph125.preheader.i ], [ %indvars.iv.next161.i, %bb.ah ] ; 4 uses
  %.4123.i = phi i32 [ %.170.lcssa172.i, %.lr.ph125.preheader.i ], [ %.5.i, %bb.ah ] ; 3 uses
  %i.fb = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv160.i
  %i.fc = load i8, ptr %i.fb, align 1, !range !4, !noundef !5
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.lr.ph125.i
  %i.fe = icmp slt i64 %indvars.iv160.i, %i.fa
  br i1 %i.fe, label %MatchNamedCall.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ff = add i32 %.4123.i, 1
  %i.fg = sext i32 %.4123.i to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.fg
  %i.fi = trunc nsw i64 %indvars.iv160.i to i32
  store i32 %i.fi, ptr %i.fh, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph125.i
  %.5.i = phi i32 [ %.4123.i, %.lr.ph125.i ], [ %i.ff, %bb.ag ]
  %indvars.iv.next161.i = add nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next161.i to i32
  %exitcond163.not.i = icmp eq i32 %.1210, %lftr.wideiv.i
  br i1 %exitcond163.not.i, label %.critedge95.loopexit.i, label %.lr.ph125.i, !llvm.loop !14

.critedge95.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i32, ptr %7, align 4
  br label %bb.ai

MatchNamedCall.exit.thread:                       ; preds = %bb.af, %bb.ad, %bb.z, %bb.x, %.lr.ph117.i, %.thread271, %.critedge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread268

bb.ai:                                            ; preds = %.critedge95.loopexit.i, %bb.ae
  %i.fj = phi i32 [ %.pre.i, %.critedge95.loopexit.i ], [ %i.eu, %bb.ae ] ; 2 uses
  %i.fk = or i32 %i.fj, 128
  store i32 %i.fk, ptr %7, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = icmp ne i32 %i.fm, 0
  %or.cond9 = and i1 %3, %i.fn
  br i1 %or.cond9, label %.thread268, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fo = or i32 %i.fj, 384
  br label %bb.ar

bb.ak:                                            ; preds = %bb.q
  %i.fp = icmp sle i32 %.1210, %1                 ; 2 uses
  %or.cond11 = and i1 %3, %i.fp
  br i1 %or.cond11, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.fr = load i32, ptr %i.fq, align 4            ; 2 uses
  %i.fs = icmp ne i32 %i.fr, 0                    ; 2 uses
  %i.ft = zext i1 %i.fs to i8
  %8 = or i1 %.0218336, %i.fs
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.1219 = phi i1 [ %8, %bb.al ], [ %.0218336, %bb.ak ] ; 2 uses
  %.0205 = phi i8 [ %i.ft, %bb.al ], [ 0, %bb.ak ] ; 2 uses
  %.0201 = phi i32 [ %i.fr, %bb.al ], [ 0, %bb.ak ]
  %.not369 = xor i1 %i.fp, true
  %or.cond13 = and i1 %4, %.not369
  br i1 %or.cond13, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ah, i64 106
  %i.fv = load i16, ptr %i.fu, align 2
  %i.fw = sext i16 %i.fv to i32
  %i.fx = add i32 %1, %i.fw
  %i.fy = icmp slt i32 %i.fx, %.1210
  br i1 %i.fy, label %.thread268, label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.2220 = phi i1 [ true, %bb.an ], [ %.1219, %bb.am ] ; 2 uses
  %.1204 = phi i8 [ 1, %bb.an ], [ 0, %bb.am ]    ; 2 uses
  br i1 %i.y, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fz = icmp eq i32 %.1210, %1
  %i.ga = or i8 %.1204, %.0205
  %9 = icmp ne i8 %i.ga, 0
  %or.cond17 = select i1 %i.fz, i1 true, i1 %9
  br i1 %or.cond17, label %bb.aq, label %.thread268

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gb = load i32, ptr %7, align 4
  %i.gc = or i32 %i.gb, 16
  %i.gd = trunc nuw i8 %.0205 to i1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.aj
  %.0263 = phi ptr [ null, %bb.aq ], [ %i.cp, %bb.aj ] ; 7 uses
  %storemerge = phi i32 [ %i.gc, %bb.aq ], [ %i.fo, %bb.aj ]
  %.3 = phi i1 [ %.2220, %bb.aq ], [ true, %bb.aj ] ; 5 uses
  %.1206 = phi i1 [ %i.gd, %bb.aq ], [ false, %bb.aj ] ; 2 uses
  %.2 = phi i8 [ %.1204, %bb.aq ], [ %.0203274, %bb.aj ]
  %.1202 = phi i32 [ %.0201, %bb.aq ], [ 0, %bb.aj ] ; 2 uses
  store i32 %storemerge, ptr %7, align 4
  %i.ge = call i32 @llvm.smax.i32(i32 %.1210, i32 %1) ; 5 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = shl nsw i64 %i.gf, 2                    ; 2 uses
  %i.gh = add nsw i64 %i.gg, 40
  %i.gi = call ptr @palloc(i64 noundef %i.gh) #18 ; 17 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i32 %.1208, ptr %i.gj, align 8
  %i.gk = load i32, ptr %i.ah, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 %i.gk, ptr %i.gl, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i32 %.1210, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 20 ; 2 uses
  store i32 %i.ge, ptr %i.gn, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store ptr %.0263, ptr %i.go, align 8
  %.not250 = icmp eq ptr %.0263, null
  br i1 %.not250, label %bb.at, label %.preheader305

.preheader305:                                    ; preds = %bb.ar
  %i.gp = icmp sgt i32 %.1210, 0
  br i1 %i.gp, label %.lr.ph326, label %.loopexit306

.lr.ph326:                                        ; preds = %.preheader305
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 5 uses
  %wide.trip.count361 = zext nneg i32 %.1210 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count361, 3      ; 3 uses
  %i.gr = icmp ult i32 %.1210, 4
  br i1 %i.gr, label %.epil.preheader, label %.lr.ph326.new

.lr.ph326.new:                                    ; preds = %.lr.ph326
  %unroll_iter = and i64 %wide.trip.count361, 2147483644
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph326.new
  %indvars.iv358 = phi i64 [ 0, %.lr.ph326.new ], [ %indvars.iv.next359.3, %bb.as ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph326.new ], [ %niter.next.3, %bb.as ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0263, i64 %indvars.iv358
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %.1212, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv358
  store i32 %i.gw, ptr %i.gx, align 4
  %indvars.iv.next359 = or disjoint i64 %indvars.iv358, 1 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.0263, i64 %indvars.iv.next359
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %.1212, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next359
  store i32 %i.hc, ptr %i.hd, align 4
  %indvars.iv.next359.1 = or disjoint i64 %indvars.iv358, 2 ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0263, i64 %indvars.iv.next359.1
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %.1212, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next359.1
  store i32 %i.hi, ptr %i.hj, align 4
  %indvars.iv.next359.2 = or disjoint i64 %indvars.iv358, 3 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.0263, i64 %indvars.iv.next359.2
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %.1212, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next359.2
  store i32 %i.ho, ptr %i.hp, align 4
  %indvars.iv.next359.3 = add nuw nsw i64 %indvars.iv358, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit306.loopexit.unr-lcssa, label %bb.as, !llvm.loop !15

bb.at:                                            ; preds = %bb.ar
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.hr = sext i32 %.1210 to i64
  %i.hs = shl nsw i64 %i.hr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hq, ptr align 4 %.1212, i64 %i.hs, i1 false)
  br label %.loopexit306

.loopexit306.loopexit.unr-lcssa:                  ; preds = %bb.as
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit306, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit306.loopexit.unr-lcssa, %.lr.ph326
  %indvars.iv358.epil.init = phi i64 [ 0, %.lr.ph326 ], [ %indvars.iv.next359.3, %.loopexit306.loopexit.unr-lcssa ]
  %lcmp.mod431 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod431)
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.epil.preheader
  %indvars.iv358.epil = phi i64 [ %indvars.iv358.epil.init, %.epil.preheader ], [ %indvars.iv.next359.epil, %bb.au ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.au ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.0263, i64 %indvars.iv358.epil
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %.1212, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv358.epil
  store i32 %i.hx, ptr %i.hy, align 4
  %indvars.iv.next359.epil = add nuw nsw i64 %indvars.iv358.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit306, label %bb.au, !llvm.loop !16

.loopexit306:                                     ; preds = %.loopexit306.loopexit.unr-lcssa, %bb.au, %.preheader305, %bb.at
  br i1 %.1206, label %.lr.ph328, label %bb.av

.lr.ph328:                                        ; preds = %.loopexit306
  %reass.sub = sub i32 %i.ge, %.1210              ; 3 uses
  %i.hz = add i32 %reass.sub, 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store i32 %i.hz, ptr %i.ia, align 8
  %i.ib = add nsw i32 %.1210, -1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  %i.id = sext i32 %i.ib to i64                   ; 3 uses
  %i.ie = zext i32 %reass.sub to i64
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %reass.sub, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph328
  %n.vec = and i64 %i.if, 8589934584              ; 3 uses
  %i.ig = add nsw i64 %n.vec, %i.id
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1202, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ic, i64 %i.id
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ih, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.if, %n.vec
  br i1 %cmp.n, label %.loopexit304, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph328, %middle.block
  %indvars.iv363.ph = phi i64 [ %i.id, %.lr.ph328 ], [ %i.ig, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv363 = phi i64 [ %indvars.iv.next364, %scalar.ph ], [ %indvars.iv363.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %indvars.iv363
  store i32 %.1202, ptr %i.ij, align 4
  %indvars.iv.next364 = add nsw i64 %indvars.iv363, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next364 to i32
  %exitcond366.not = icmp eq i32 %i.ge, %lftr.wideiv
  br i1 %exitcond366.not, label %.loopexit304, label %scalar.ph, !llvm.loop !18

bb.av:                                            ; preds = %.loopexit306
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store i32 0, ptr %i.ik, align 8
  br label %.loopexit304

.loopexit304:                                     ; preds = %scalar.ph, %middle.block, %bb.av
  %i.il = trunc nuw i8 %.2 to i1
  %i.im = sub i32 %.1210, %1
  %i.in = select i1 %i.il, i32 %i.im, i32 0       ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  store i32 %i.in, ptr %i.io, align 4
  %.not251 = icmp eq ptr %.0221332, null
  br i1 %.not251, label %.thread294, label %bb.aw

bb.aw:                                            ; preds = %.loopexit304
  %or.cond19.not = or i1 %i.v, %.3
  br i1 %or.cond19.not, label %bb.ax, label %.thread294

bb.ax:                                            ; preds = %bb.aw
  %i.ip = load i8, ptr %i.z, align 1, !range !4, !noundef !5
  %i.iq = trunc nuw i8 %i.ip to i1
  %.not20 = xor i1 %i.iq, true
  %or.cond22 = or i1 %.3, %.not20
  br i1 %or.cond22, label %.lr.ph331, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ir = getelementptr inbounds nuw i8, ptr %.0221332, i64 20
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = icmp eq i32 %i.ge, %i.is
  br i1 %i.it, label %bb.az, label %.thread294

bb.az:                                            ; preds = %bb.ay
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.iv = getelementptr inbounds nuw i8, ptr %.0221332, i64 40
  %bcmp = call i32 @bcmp(ptr nonnull %i.iu, ptr nonnull %i.iv, i64 %i.gg)
  %i.iw = icmp eq i32 %bcmp, 0
  br i1 %i.iw, label %.loopexit303, label %.thread294

.lr.ph331:                                        ; preds = %bb.ax
  %i.ix = load i32, ptr %i.gn, align 4
  %i.iy = sub i32 %i.ix, %i.in                    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.ja = sext i32 %i.iy to i64
  %i.jb = shl nsw i64 %i.ja, 2
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph331, %bb.bc
  %.0197330 = phi ptr [ %.0221332, %.lr.ph331 ], [ %i.jk, %bb.bc ] ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0197330, i64 20
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %.0197330, i64 28
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = sub i32 %i.jd, %i.jf
  %i.jh = icmp eq i32 %i.iy, %i.jg
  br i1 %i.jh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ji = getelementptr inbounds nuw i8, ptr %.0197330, i64 40
  %bcmp253 = call i32 @bcmp(ptr nonnull %i.iz, ptr nonnull %i.ji, i64 %i.jb)
  %i.jj = icmp eq i32 %bcmp253, 0
  br i1 %i.jj, label %.loopexit303, label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.jk = load ptr, ptr %.0197330, align 8        ; 2 uses
  %.not = icmp eq ptr %i.jk, null
  br i1 %.not, label %.thread294, label %bb.ba, !llvm.loop !19

.loopexit303:                                     ; preds = %bb.bb, %bb.az
  %.1 = phi ptr [ %.0221332, %bb.az ], [ %.0197330, %bb.bb ] ; 8 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.jm = load i32, ptr %i.jl, align 8            ; 2 uses
  %.not255 = icmp eq i32 %.1208, %i.jm
  br i1 %.not255, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.loopexit303
  %i.jn = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.jo = load i32, ptr %i.jn, align 8            ; 2 uses
  br i1 %.1206, label %bb.be, label %.critedge

bb.be:                                            ; preds = %bb.bd
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %.thread285, label %.thread282.thread299

.critedge:                                        ; preds = %bb.bd
  %i.jq = icmp sgt i32 %i.jo, 0
  br i1 %i.jq, label %.thread282.thread, label %.thread282.thread299

bb.bf:                                            ; preds = %.loopexit303
  %i.jr = sub i32 %.1208, %i.jm                   ; 2 uses
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %.thread285, label %.thread282

.thread285:                                       ; preds = %bb.be, %bb.bf
  call void @pfree(ptr noundef %i.gi) #18
  br label %.thread268

.thread282:                                       ; preds = %bb.bf
  %i.jt = icmp slt i32 %i.jr, 0
  br i1 %i.jt, label %.thread282.thread, label %.thread282.thread299

.thread282.thread:                                ; preds = %.critedge, %.thread282
  %i.ju = icmp eq ptr %.1, %.0221332
  br i1 %i.ju, label %bb.bg, label %.preheader

bb.bg:                                            ; preds = %.thread282.thread
  %i.jv = load ptr, ptr %.1, align 8
  br label %.loopexit

.preheader:                                       ; preds = %.thread282.thread, %bb.bh
  %.0 = phi ptr [ %i.jw, %bb.bh ], [ %.0221332, %.thread282.thread ] ; 3 uses
  %.not256 = icmp eq ptr %.0, null
  br i1 %.not256, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %.preheader
  %i.jw = load ptr, ptr %.0, align 8              ; 2 uses
  %i.jx = icmp eq ptr %.1, %i.jw
  br i1 %i.jx, label %bb.bi, label %.preheader, !llvm.loop !20

bb.bi:                                            ; preds = %bb.bh
  %i.jy = load ptr, ptr %.1, align 8
  store ptr %i.jy, ptr %.0, align 8
  br label %.loopexit

.thread282.thread299:                             ; preds = %bb.be, %.critedge, %.thread282
  %i.jz = getelementptr inbounds nuw i8, ptr %.1, i64 12
  store i32 0, ptr %i.jz, align 4
  call void @pfree(ptr noundef %i.gi) #18
  br label %.thread268

.loopexit:                                        ; preds = %.preheader, %bb.bi, %bb.bg
  %.1222 = phi ptr [ %i.jv, %bb.bg ], [ %.0221332, %bb.bi ], [ %.0221332, %.preheader ]
  call void @pfree(ptr noundef nonnull %.1) #18
  br label %.thread294

.thread294:                                       ; preds = %bb.bc, %bb.ay, %bb.az, %.loopexit, %bb.aw, %.loopexit304
  %.5 = phi ptr [ %.0221332, %bb.aw ], [ null, %.loopexit304 ], [ %.1222, %.loopexit ], [ %.0221332, %bb.ay ], [ %.0221332, %bb.az ], [ %.0221332, %bb.bc ]
  store ptr %.5, ptr %i.gi, align 8
  br label %.thread268

.thread268:                                       ; preds = %bb.i, %.lr.ph323, %bb.h, %.lr.ph, %.thread282.thread299, %.thread285, %MatchNamedCall.exit.thread, %bb.ap, %bb.an, %bb.ai, %bb.t, %bb.s, %bb.g, %.thread294
  %.6 = phi ptr [ %.0221332, %.thread285 ], [ %.0221332, %bb.g ], [ %.0221332, %MatchNamedCall.exit.thread ], [ %i.gi, %.thread294 ], [ %.0221332, %.thread282.thread299 ], [ %.0221332, %bb.t ], [ %.0221332, %bb.s ], [ %.0221332, %bb.ai ], [ %.0221332, %bb.an ], [ %.0221332, %bb.ap ], [ %.0221332, %bb.h ], [ %.0221332, %.lr.ph ], [ %.0221332, %.lr.ph323 ], [ %.0221332, %bb.i ] ; 2 uses
  %.4 = phi i1 [ %.3, %.thread285 ], [ %.0218336, %bb.g ], [ %.0218336, %MatchNamedCall.exit.thread ], [ %.3, %.thread294 ], [ %.3, %.thread282.thread299 ], [ %.0218336, %bb.t ], [ %.0218336, %bb.s ], [ %.0218336, %bb.ai ], [ %.1219, %bb.an ], [ %.2220, %bb.ap ], [ %.0218336, %bb.h ], [ %.0218336, %.lr.ph ], [ %.0218336, %.lr.ph323 ], [ %.0218336, %bb.i ]
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %i.ka = load i32, ptr %i.r, align 8
  %i.kb = sext i32 %i.ka to i64
  %i.kc = icmp slt i64 %indvars.iv.next368, %i.kb
  br i1 %i.kc, label %bb.f, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.thread268, %bb.e
  %.0221.lcssa = phi ptr [ null, %bb.e ], [ %.6, %.thread268 ]
  call void @ReleaseCatCacheList(ptr noundef nonnull %i.q) #18
  br label %bb.bj

bb.bj:                                            ; preds = %bb.b, %._crit_edge
  %.0226 = phi ptr [ %.0221.lcssa, %._crit_edge ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  ret ptr %.0226
}

; Function Attrs: nounwind uwtable
define dso_local void @DeconstructQualifiedName(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %list_length.exit.thread [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %list_length.exit
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val19 = load ptr, ptr %i.c, align 8
  br label %.sink.split

bb.c:                                             ; preds = %list_length.exit
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val18 = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.e = load ptr, ptr %.val18, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  br label %.sink.split

bb.d:                                             ; preds = %list_length.exit
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val16 = load ptr, ptr %i.i, align 8           ; 3 uses
  %i.j = load ptr, ptr %.val16, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.val16, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i32, ptr @MyDatabaseId, align 4
  %i.v = tail call ptr @get_database_name(i32 noundef %i.u) #18
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.v) #19
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.y = tail call i32 @errcode(i32 noundef 1088) #18 ; 0 uses
  %i.z = tail call ptr @NameListToString(ptr noundef nonnull %0)
  %i.aa = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef %i.z) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3402, ptr noundef nonnull @__func__.DeconstructQualifiedName) #18
  unreachable

list_length.exit.thread:                          ; preds = %bb.a, %list_length.exit
  %i.ab = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.ac = tail call i32 @errcode(i32 noundef 16801924) #18 ; 0 uses
  %i.ad = tail call ptr @NameListToString(ptr noundef %0)
  %i.ae = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef %i.ad) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3408, ptr noundef nonnull @__func__.DeconstructQualifiedName) #18
  unreachable

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink21.in = phi ptr [ %i.h, %bb.c ], [ %.val19, %bb.b ]
  %.014.ph = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  %.sink21 = load ptr, ptr %.sink21.in, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sink21, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %.014.ph, %.sink.split ]
  %.0 = phi ptr [ %i.t, %bb.d ], [ %i.ag, %.sink.split ]
  store ptr %.014, ptr %1, align 8
  store ptr %.0, ptr %2, align 8
  ret void
}

declare ptr @SearchSysCacheList(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @SysCacheGetAttr(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #3

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @pfree(ptr noundef) local_unnamed_addr #3

declare void @ReleaseCatCacheList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @FunctionIsVisible(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @FunctionIsVisibleExt(i32 noundef %0, ptr noundef null)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @FunctionIsVisibleExt(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = zext i32 %0 to i64
  %i.c = tail call ptr @SearchSysCache1(i32 noundef 47, i64 noundef %i.b) #18 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp eq ptr %1, null
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %1, align 1
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.32, i32 noundef %0) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1770, ptr noundef nonnull @__func__.FunctionIsVisibleExt) #18
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %.val = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.h = load i8, ptr %i.g, align 2
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i ; 4 uses
  tail call fastcc void @recomputeNamespacePath()
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not28 = icmp eq i32 %i.l, 11
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @activeSearchPath, align 8
  %i.n = tail call zeroext i1 @list_member_oid(ptr noundef %i.m, i32 noundef %i.l) #18
  br i1 %i.n, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.q = load i16, ptr %i.p, align 4              ; 2 uses
  %i.r = sext i16 %i.q to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.s = tail call ptr @makeString(ptr noundef nonnull %i.o) #18
  %i.t = tail call ptr @list_make1_impl(i32 noundef 1, ptr %i.s) #18
  %i.u = call ptr @FuncnameGetCandidates(ptr noundef %i.t, i32 noundef %i.r, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %i.a) ; 2 uses
  %.not2931 = icmp eq ptr %i.u, null
  br i1 %.not2931, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.w = sext i16 %i.q to i64
  %i.x = shl nsw i64 %i.w, 2
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.02232 = phi ptr [ %i.u, %.lr.ph ], [ %i.ad, %bb.j ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02232, i64 40
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %i.v, i64 %i.x)
  %i.z = icmp eq i32 %bcmp, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.02232, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, %0
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %.02232, align 8          ; 2 uses
  %.not29 = icmp eq ptr %i.ad, null
  br i1 %.not29, label %.loopexit, label %bb.h, !llvm.loop !25

end_hunk_1
