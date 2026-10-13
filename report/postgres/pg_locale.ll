Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_locale?download=true
inline.NumInlined: 54
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pg_newlocale_from_collation:bb.a
  %i.cr = fdiv double %i.co, %i.cq
  %i.cs = fcmp ult double %i.cr, 1.000000e-01
  br i1 %i.cs, label %bb.s, label %.loopexit.loopexit.i.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %.089.i.i = and i32 %i.bj, %.val96.i.i          ; 2 uses
  %i.ct = zext i32 %.089.i.i to i64
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %._crit_edge.i, label %.lr.ph.i

collation_cache_insert.exit.thread:               ; preds = %._crit_edge.i, %._crit_edge.i.i
  %.ph = phi ptr [ %.lcssa27.i, %._crit_edge.i ], [ %i.ay, %._crit_edge.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  store ptr null, ptr %i.cy, align 8
  br label %bb.t

collation_cache_insert.exit:                      ; preds = %bb.m
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert83, align 8 ; 2 uses
  %i.cz = icmp eq ptr %.pre, null
  br i1 %i.cz, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %collation_cache_insert.exit.thread, %collation_cache_insert.exit
  %.ph.pn = phi ptr [ %.ph, %collation_cache_insert.exit.thread ], [ %i.ay, %collation_cache_insert.exit ]
  %i.da = getelementptr inbounds nuw i8, ptr %.ph.pn, i64 8
  %i.db = load ptr, ptr @CollationCacheContext, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.dc = zext i32 %0 to i64
  %i.dd = tail call ptr @SearchSysCache1(i32 noundef 16, i64 noundef %i.dc) #19 ; 5 uses
  %.not.i = icmp eq ptr %i.dd, null
  br i1 %.not.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.de = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.df = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.21, i32 noundef range(i32 101, 100) %0) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 1059, ptr noundef nonnull @__func__.create_pg_locale) #19
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dg = getelementptr i8, ptr %i.dd, i64 16
  %.val.i = load ptr, ptr %i.dg, align 8          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.di = load i8, ptr %i.dh, align 2
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dj ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 76 ; 4 uses
  %i.dm = load i8, ptr %i.dl, align 4
  switch i8 %i.dm, label %bb.z [
    i8 98, label %bb.w
    i8 105, label %bb.x
    i8 99, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.dn = tail call ptr @create_pg_locale_builtin(i32 noundef range(i32 101, 100) %0, ptr noundef %i.db) #19
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.do = tail call ptr @create_pg_locale_icu(i32 noundef range(i32 101, 100) %0, ptr noundef %i.db) #19
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.dp = tail call ptr @create_pg_locale_libc(i32 noundef range(i32 101, 100) %0, ptr noundef %i.db) #19
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.dq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.dr = load i8, ptr %i.dl, align 4
  %i.ds = sext i8 %i.dr to i32
  %i.dt = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.create_pg_locale, i32 noundef %i.ds) #19 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 1070, ptr noundef nonnull @__func__.create_pg_locale) #19
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.w
  %.032.i = phi ptr [ %i.dn, %bb.w ], [ %i.do, %bb.x ], [ %i.dp, %bb.y ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.032.i, i64 3
  store i8 0, ptr %i.du, align 1
  %i.dv = call i64 @SysCacheGetAttr(i32 noundef 16, ptr noundef nonnull %i.dd, i16 noundef signext 12, ptr noundef nonnull %i.a) #19
  %i.dw = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %create_pg_locale.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = inttoptr i64 %i.dv to ptr
  %i.dz = call ptr @text_to_cstring(ptr noundef %i.dy) #19 ; 2 uses
  %i.ea = load i8, ptr %i.dl, align 4
  %i.eb = icmp eq i8 %i.ea, 99
  %..i = select i1 %i.eb, i16 8, i16 10
  %i.ec = call i64 @SysCacheGetAttrNotNull(i32 noundef 16, ptr noundef nonnull %i.dd, i16 noundef signext %..i) #19
  %i.ed = load i8, ptr %i.dl, align 4
  %i.ee = inttoptr i64 %i.ec to ptr
  %i.ef = call ptr @text_to_cstring(ptr noundef %i.ee) #19 ; 3 uses
  switch i8 %i.ed, label %get_collation_actual_version.exit.thread.i [
    i8 98, label %bb.ac
    i8 105, label %bb.ad
    i8 99, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.eg = call ptr @get_collation_actual_version_builtin(ptr noundef %i.ef) #19
  br label %get_collation_actual_version.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.eh = call ptr @get_collation_actual_version_icu(ptr noundef %i.ef) #19
  br label %get_collation_actual_version.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.ei = call ptr @get_collation_actual_version_libc(ptr noundef %i.ef) #19
  br label %get_collation_actual_version.exit.i

get_collation_actual_version.exit.i:              ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i.i = phi ptr [ %i.eg, %bb.ac ], [ %i.eh, %bb.ad ], [ %i.ei, %bb.ae ] ; 3 uses
  %.not36.i = icmp eq ptr %.0.i.i, null
  br i1 %.not36.i, label %get_collation_actual_version.exit.thread.i, label %bb.af

get_collation_actual_version.exit.thread.i:       ; preds = %get_collation_actual_version.exit.i, %bb.ab
  %i.ej = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #20 ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.el = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.ek) #19 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 1105, ptr noundef nonnull @__func__.create_pg_locale) #19
  unreachable

bb.af:                                            ; preds = %get_collation_actual_version.exit.i
  %i.em = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) %i.dz) #23
  %.not37.i = icmp eq i32 %i.em, 0
  br i1 %.not37.i, label %create_pg_locale.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #19
  br i1 %i.en, label %bb.ah, label %create_pg_locale.exit

bb.ah:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 2 uses
  %i.ep = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.44, ptr noundef nonnull %i.eo) #19 ; 0 uses
  %i.eq = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.45, ptr noundef nonnull %i.dz, ptr noundef nonnull %.0.i.i) #19 ; 0 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dk, i64 68
  %i.es = load i32, ptr %i.er, align 4
  %i.et = call ptr @get_namespace_name(i32 noundef %i.es) #19
  %i.eu = call ptr @quote_qualified_identifier(ptr noundef %i.et, ptr noundef nonnull %i.eo) #19
  %i.ev = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.46, ptr noundef %i.eu) #19 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.7, i32 noundef 1119, ptr noundef nonnull @__func__.create_pg_locale) #19
  br label %create_pg_locale.exit

create_pg_locale.exit:                            ; preds = %bb.aa, %bb.af, %bb.ag, %bb.ah
  call void @ReleaseSysCache(ptr noundef nonnull %i.dd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %.032.i, ptr %i.da, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %create_pg_locale.exit, %collation_cache_insert.exit
  %i.ew = phi ptr [ %.032.i, %create_pg_locale.exit ], [ %.pre, %collation_cache_insert.exit ] ; 2 uses
  store i32 %0, ptr @last_collation_cache_oid, align 4
  store ptr %i.ew, ptr @last_collation_cache_locale, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.b, %bb.ai, %bb.f
  %.0 = phi ptr [ %i.ew, %bb.ai ], [ %i.b, %bb.b ], [ %i.j, %bb.f ], [ @c_locale, %bb.a ]
  ret ptr %.0
}

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @get_collation_actual_version(i8 noundef signext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i8 %0, label %bb.e [
    i8 98, label %bb.b
    i8 105, label %bb.c
    i8 99, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @get_collation_actual_version_builtin(ptr noundef %1) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @get_collation_actual_version_icu(ptr noundef %1) #19
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = tail call ptr @get_collation_actual_version_libc(ptr noundef %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @get_collation_actual_version_builtin(ptr noundef) local_unnamed_addr #4

declare ptr @get_collation_actual_version_icu(ptr noundef) local_unnamed_addr #4

declare ptr @get_collation_actual_version_libc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strlower(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i64 %3, 0
  %i.g = icmp ne i64 %1, 0                        ; 2 uses
  %i.h = and i1 %i.g, %i.f
  br i1 %i.h, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.b
  %i.i = add i64 %3, -1
  %i.j = add i64 %1, -1
  %umin19 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.k = add i64 %umin19, 1                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.l = add i64 %3, -1
  %i.m = add i64 %1, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.n = trunc i64 %umin to i32
  %i.o = icmp ugt i32 %i.n, 2147483646
  %i.p = icmp ugt i64 %umin, 4294967295
  %i.q = or i1 %i.o, %i.p
  %i.r = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = or i1 %i.q, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check20 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 6 uses
  %i.t = trunc i64 %n.vec to i32                  ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %2, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1  ; 3 uses
  %wide.load21 = load <16 x i8>, ptr %i.v, align 1 ; 3 uses
  %i.w = add <16 x i8> %wide.load, splat (i8 -65)
  %i.x = add <16 x i8> %wide.load21, splat (i8 -65)
  %i.y = icmp ult <16 x i8> %i.w, splat (i8 26)
  %i.z = icmp ult <16 x i8> %i.x, splat (i8 26)
  %i.aa = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.ab = or disjoint <16 x i8> %wide.load21, splat (i8 32)
  %i.ac = select <16 x i1> %i.y, <16 x i8> %i.aa, <16 x i8> %wide.load
  %i.ad = select <16 x i1> %i.z, <16 x i8> %i.ab, <16 x i8> %wide.load21
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> %i.ac, ptr %i.ae, align 1
  store <16 x i8> %i.ad, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 32)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %i.ah = add <16 x i32> %vec.ind, splat (i32 17)
  %i.ai = sext <16 x i32> %i.ah to <16 x i64>
  %i.aj = icmp ugt <16 x i64> %broadcast.splat, %i.ai
  %i.ak = extractelement <16 x i1> %i.aj, i64 15
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.t, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.k, -4                     ; 5 uses
  %i.al = trunc i64 %n.vec22 to i32
  %broadcast.splatinsert23 = insertelement <4 x i64> poison, i64 %1, i64 0
  %broadcast.splat24 = shufflevector <4 x i64> %broadcast.splatinsert23, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert25 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat26 = shufflevector <4 x i32> %broadcast.splatinsert25, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat26, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind28 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next31, %vec.epilog.vector.body ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %2, i64 %index27
  %wide.load29 = load <4 x i8>, ptr %i.am, align 1 ; 3 uses
  %i.an = add <4 x i8> %wide.load29, splat (i8 -65)
  %i.ao = icmp ult <4 x i8> %i.an, splat (i8 26)
  %i.ap = or disjoint <4 x i8> %wide.load29, splat (i8 32)
  %i.aq = select <4 x i1> %i.ao, <4 x i8> %i.ap, <4 x i8> %wide.load29
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %index27
  store <4 x i8> %i.aq, ptr %i.ar, align 1
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %vec.ind.next31 = add <4 x i32> %vec.ind28, splat (i32 4)
  %i.as = icmp eq i64 %index.next30, %n.vec22
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.at = add <4 x i32> %vec.ind28, splat (i32 1)
  %i.au = sext <4 x i32> %i.at to <4 x i64>
  %i.av = icmp ugt <4 x i64> %broadcast.splat24, %i.au
  %i.aw = extractelement <4 x i1> %i.av, i64 3
  %cmp.n32 = icmp eq i64 %i.k, %n.vec22
  br i1 %cmp.n32, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ]
  %.015.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ax = phi i64 [ %i.be, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.015.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ]
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1             ; 3 uses
  %i.ba = add i8 %i.az, -65
  %or.cond.i.i = icmp ult i8 %i.ba, 26
  %i.bb = or disjoint i8 %i.az, 32
  %spec.select.i.i = select i1 %or.cond.i.i, i8 %i.bb, i8 %i.az
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %i.ax
  store i8 %spec.select.i.i, ptr %i.bc, align 1
  %i.bd = add i32 %.015.i, 1                      ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 4 uses
  %i.bf = icmp ugt i64 %3, %i.be
  %i.bg = icmp ugt i64 %1, %i.be                  ; 2 uses
  %i.bh = and i1 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.lcssa14.i = phi i64 [ 0, %bb.b ], [ %n.vec22, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.be, %.lr.ph.i ]
  %.lcssa.i = phi i1 [ %i.g, %bb.b ], [ %i.aw, %vec.epilog.middle.block ], [ %i.ak, %middle.block ], [ %i.bg, %.lr.ph.i ]
  br i1 %.lcssa.i, label %bb.c, label %strlower_c.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %.lcssa14.i
  store i8 0, ptr %i.bi, align 1
  br label %strlower_c.exit

bb.d:                                             ; preds = %bb.a
  %i.bj = load ptr, ptr %i.d, align 8
  %i.bk = tail call i64 %i.bj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4) #19
  br label %strlower_c.exit

strlower_c.exit:                                  ; preds = %bb.c, %._crit_edge.i, %bb.d
  %.0 = phi i64 [ %i.bk, %bb.d ], [ %3, %._crit_edge.i ], [ %3, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strtitle(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %3, 0
  %i.e = icmp ne i64 %1, 0                        ; 2 uses
  %i.f = and i1 %i.e, %i.d
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %i.g = phi i64 [ %i.s, %bb.e ], [ 0, %bb.b ]    ; 2 uses
  %.036.i = phi i32 [ %i.r, %bb.e ], [ 0, %bb.b ]
  %.02935.i = phi i1 [ %i.q, %bb.e ], [ false, %bb.b ]
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1               ; 9 uses
  br i1 %.02935.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = add i8 %i.i, -65                         ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.j, 26
  %i.k = or disjoint i8 %i.i, 32
  %spec.select.i.i = select i1 %or.cond.i.i, i8 %i.k, i8 %i.i
  %.pre40.i = add i8 %i.i, -97
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = add i8 %i.i, -97                         ; 2 uses
  %or.cond.i32.i = icmp ult i8 %i.l, 26
  %i.m = add nsw i8 %i.i, -32
  %spec.select.i33.i = select i1 %or.cond.i32.i, i8 %i.m, i8 %i.i
  %.pre.i = add i8 %i.i, -65
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi41.i = phi i8 [ %i.l, %bb.d ], [ %.pre40.i, %bb.c ]
  %.pre-phi.i = phi i8 [ %.pre.i, %bb.d ], [ %i.j, %bb.c ]
  %spec.select.i33.sink.i = phi i8 [ %spec.select.i33.i, %bb.d ], [ %spec.select.i.i, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.g
  store i8 %spec.select.i33.sink.i, ptr %i.n, align 1
  %i.o = add i8 %i.i, -48
  %or.cond.i = icmp ult i8 %i.o, 10
  %or.cond5.i = icmp ult i8 %.pre-phi.i, 26
  %or.cond31.i = or i1 %or.cond.i, %or.cond5.i
  %i.p = icmp ult i8 %.pre-phi41.i, 26
  %i.q = select i1 %or.cond31.i, i1 true, i1 %i.p
  %i.r = add i32 %.036.i, 1                       ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 4 uses
  %i.t = icmp ugt i64 %3, %i.s
  %i.u = icmp ugt i64 %1, %i.s                    ; 2 uses
  %i.v = and i1 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.lcssa34.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.e ]
  %.lcssa.i = phi i1 [ %i.e, %bb.b ], [ %i.u, %bb.e ]
  br i1 %.lcssa.i, label %bb.f, label %strtitle_c.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.lcssa34.i
  store i8 0, ptr %i.w, align 1
  br label %strtitle_c.exit

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i64 %i.y(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4) #19
  br label %strtitle_c.exit

strtitle_c.exit:                                  ; preds = %bb.f, %._crit_edge.i, %bb.g
  %.0 = phi i64 [ %i.z, %bb.g ], [ %3, %._crit_edge.i ], [ %3, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strupper(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i64 %3, 0
  %i.g = icmp ne i64 %1, 0                        ; 2 uses
  %i.h = and i1 %i.g, %i.f
  br i1 %i.h, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.b
  %i.i = add i64 %3, -1
  %i.j = add i64 %1, -1
  %umin19 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.k = add i64 %umin19, 1                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.l = add i64 %3, -1
  %i.m = add i64 %1, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.n = trunc i64 %umin to i32
  %i.o = icmp ugt i32 %i.n, 2147483646
  %i.p = icmp ugt i64 %umin, 4294967295
  %i.q = or i1 %i.o, %i.p
  %i.r = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = or i1 %i.q, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check20 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 6 uses
  %i.t = trunc i64 %n.vec to i32                  ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %2, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1  ; 3 uses
  %wide.load21 = load <16 x i8>, ptr %i.v, align 1 ; 3 uses
  %i.w = add <16 x i8> %wide.load, splat (i8 -97)
  %i.x = add <16 x i8> %wide.load21, splat (i8 -97)
  %i.y = icmp ult <16 x i8> %i.w, splat (i8 26)
  %i.z = icmp ult <16 x i8> %i.x, splat (i8 26)
  %i.aa = add nsw <16 x i8> %wide.load, splat (i8 -32)
  %i.ab = add nsw <16 x i8> %wide.load21, splat (i8 -32)
  %i.ac = select <16 x i1> %i.y, <16 x i8> %i.aa, <16 x i8> %wide.load
  %i.ad = select <16 x i1> %i.z, <16 x i8> %i.ab, <16 x i8> %wide.load21
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> %i.ac, ptr %i.ae, align 1
  store <16 x i8> %i.ad, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 32)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %i.ah = add <16 x i32> %vec.ind, splat (i32 17)
  %i.ai = sext <16 x i32> %i.ah to <16 x i64>
  %i.aj = icmp ugt <16 x i64> %broadcast.splat, %i.ai
  %i.ak = extractelement <16 x i1> %i.aj, i64 15
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.t, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.k, -4                     ; 5 uses
  %i.al = trunc i64 %n.vec22 to i32
  %broadcast.splatinsert23 = insertelement <4 x i64> poison, i64 %1, i64 0
  %broadcast.splat24 = shufflevector <4 x i64> %broadcast.splatinsert23, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert25 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat26 = shufflevector <4 x i32> %broadcast.splatinsert25, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat26, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind28 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next31, %vec.epilog.vector.body ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %2, i64 %index27
  %wide.load29 = load <4 x i8>, ptr %i.am, align 1 ; 3 uses
  %i.an = add <4 x i8> %wide.load29, splat (i8 -97)
  %i.ao = icmp ult <4 x i8> %i.an, splat (i8 26)
  %i.ap = add nsw <4 x i8> %wide.load29, splat (i8 -32)
  %i.aq = select <4 x i1> %i.ao, <4 x i8> %i.ap, <4 x i8> %wide.load29
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %index27
  store <4 x i8> %i.aq, ptr %i.ar, align 1
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %vec.ind.next31 = add <4 x i32> %vec.ind28, splat (i32 4)
  %i.as = icmp eq i64 %index.next30, %n.vec22
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.at = add <4 x i32> %vec.ind28, splat (i32 1)
  %i.au = sext <4 x i32> %i.at to <4 x i64>
  %i.av = icmp ugt <4 x i64> %broadcast.splat24, %i.au
  %i.aw = extractelement <4 x i1> %i.av, i64 3
  %cmp.n32 = icmp eq i64 %i.k, %n.vec22
  br i1 %cmp.n32, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ]
  %.015.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ax = phi i64 [ %i.be, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.015.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ]
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1             ; 3 uses
  %i.ba = add i8 %i.az, -97
  %or.cond.i.i = icmp ult i8 %i.ba, 26
  %i.bb = add nsw i8 %i.az, -32
  %spec.select.i.i = select i1 %or.cond.i.i, i8 %i.bb, i8 %i.az
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %i.ax
  store i8 %spec.select.i.i, ptr %i.bc, align 1
  %i.bd = add i32 %.015.i, 1                      ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 4 uses
  %i.bf = icmp ugt i64 %3, %i.be
  %i.bg = icmp ugt i64 %1, %i.be                  ; 2 uses
  %i.bh = and i1 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.lcssa14.i = phi i64 [ 0, %bb.b ], [ %n.vec22, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.be, %.lr.ph.i ]
  %.lcssa.i = phi i1 [ %i.g, %bb.b ], [ %i.aw, %vec.epilog.middle.block ], [ %i.ak, %middle.block ], [ %i.bg, %.lr.ph.i ]
  br i1 %.lcssa.i, label %bb.c, label %strupper_c.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %.lcssa14.i
  store i8 0, ptr %i.bi, align 1
  br label %strupper_c.exit

bb.d:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i64 %i.bk(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4) #19
  br label %strupper_c.exit

strupper_c.exit:                                  ; preds = %bb.c, %._crit_edge.i, %bb.d
  %.0 = phi i64 [ %i.bl, %bb.d ], [ %3, %._crit_edge.i ], [ %3, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strfold(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i64 %3, 0
  %i.g = icmp ne i64 %1, 0                        ; 2 uses
  %i.h = and i1 %i.g, %i.f
  br i1 %i.h, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.b
  %i.i = add i64 %3, -1
  %i.j = add i64 %1, -1
  %umin19 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.k = add i64 %umin19, 1                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.l = add i64 %3, -1
  %i.m = add i64 %1, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.n = trunc i64 %umin to i32
  %i.o = icmp ugt i32 %i.n, 2147483646
  %i.p = icmp ugt i64 %umin, 4294967295
  %i.q = or i1 %i.o, %i.p
  %i.r = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = or i1 %i.q, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check20 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.k, 28
  %n.vec = and i64 %i.k, -32                      ; 6 uses
  %i.t = trunc i64 %n.vec to i32                  ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %2, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1  ; 3 uses
  %wide.load21 = load <16 x i8>, ptr %i.v, align 1 ; 3 uses
  %i.w = add <16 x i8> %wide.load, splat (i8 -65)
  %i.x = add <16 x i8> %wide.load21, splat (i8 -65)
  %i.y = icmp ult <16 x i8> %i.w, splat (i8 26)
  %i.z = icmp ult <16 x i8> %i.x, splat (i8 26)
  %i.aa = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.ab = or disjoint <16 x i8> %wide.load21, splat (i8 32)
  %i.ac = select <16 x i1> %i.y, <16 x i8> %i.aa, <16 x i8> %wide.load
  %i.ad = select <16 x i1> %i.z, <16 x i8> %i.ab, <16 x i8> %wide.load21
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> %i.ac, ptr %i.ae, align 1
  store <16 x i8> %i.ad, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 32)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %i.ah = add <16 x i32> %vec.ind, splat (i32 17)
  %i.ai = sext <16 x i32> %i.ah to <16 x i64>
  %i.aj = icmp ugt <16 x i64> %broadcast.splat, %i.ai
  %i.ak = extractelement <16 x i1> %i.aj, i64 15
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.t, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.k, -4                     ; 5 uses
  %i.al = trunc i64 %n.vec22 to i32
  %broadcast.splatinsert23 = insertelement <4 x i64> poison, i64 %1, i64 0
  %broadcast.splat24 = shufflevector <4 x i64> %broadcast.splatinsert23, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert25 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat26 = shufflevector <4 x i32> %broadcast.splatinsert25, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat26, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind28 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next31, %vec.epilog.vector.body ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %2, i64 %index27
  %wide.load29 = load <4 x i8>, ptr %i.am, align 1 ; 3 uses
  %i.an = add <4 x i8> %wide.load29, splat (i8 -65)
  %i.ao = icmp ult <4 x i8> %i.an, splat (i8 26)
  %i.ap = or disjoint <4 x i8> %wide.load29, splat (i8 32)
  %i.aq = select <4 x i1> %i.ao, <4 x i8> %i.ap, <4 x i8> %wide.load29
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %index27
  store <4 x i8> %i.aq, ptr %i.ar, align 1
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %vec.ind.next31 = add <4 x i32> %vec.ind28, splat (i32 4)
  %i.as = icmp eq i64 %index.next30, %n.vec22
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.at = add <4 x i32> %vec.ind28, splat (i32 1)
  %i.au = sext <4 x i32> %i.at to <4 x i64>
  %i.av = icmp ugt <4 x i64> %broadcast.splat24, %i.au
  %i.aw = extractelement <4 x i1> %i.av, i64 3
  %cmp.n32 = icmp eq i64 %i.k, %n.vec22
  br i1 %cmp.n32, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ]
  %.015.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ax = phi i64 [ %i.be, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.015.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ]
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1             ; 3 uses
  %i.ba = add i8 %i.az, -65
  %or.cond.i.i = icmp ult i8 %i.ba, 26
  %i.bb = or disjoint i8 %i.az, 32
  %spec.select.i.i = select i1 %or.cond.i.i, i8 %i.bb, i8 %i.az
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %i.ax
  store i8 %spec.select.i.i, ptr %i.bc, align 1
  %i.bd = add i32 %.015.i, 1                      ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 4 uses
  %i.bf = icmp ugt i64 %3, %i.be
  %i.bg = icmp ugt i64 %1, %i.be                  ; 2 uses
  %i.bh = and i1 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.b
  %.lcssa14.i = phi i64 [ 0, %bb.b ], [ %n.vec22, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.be, %.lr.ph.i ]
  %.lcssa.i = phi i1 [ %i.g, %bb.b ], [ %i.aw, %vec.epilog.middle.block ], [ %i.ak, %middle.block ], [ %i.bg, %.lr.ph.i ]
  br i1 %.lcssa.i, label %bb.c, label %strlower_c.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %.lcssa14.i
  store i8 0, ptr %i.bi, align 1
  br label %strlower_c.exit

bb.d:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i64 %i.bk(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4) #19
  br label %strlower_c.exit

strlower_c.exit:                                  ; preds = %bb.c, %._crit_edge.i, %bb.d
  %.0 = phi i64 [ %i.bl, %bb.d ], [ %3, %._crit_edge.i ], [ %3, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_downcase_ident(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load ptr, ptr @default_locale, align 8   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = icmp ne i64 %3, 0
  %i.l = icmp ne i64 %1, 0                        ; 2 uses
  %i.m = and i1 %i.l, %i.k
  br i1 %i.m, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.d
  %i.n = add i64 %3, -1
  %i.o = add i64 %1, -1
  %umin25 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.o)
  %i.p = add i64 %umin25, 1                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.q = add i64 %3, -1
  %i.r = add i64 %1, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.r) ; 2 uses
  %i.s = trunc i64 %umin to i32
  %i.t = icmp ugt i32 %i.s, 2147483646
  %i.u = icmp ugt i64 %umin, 4294967295
  %i.v = or i1 %i.t, %i.u
  %i.w = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %i.v, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check26 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.p, 28
  %n.vec = and i64 %i.p, -32                      ; 6 uses
  %i.y = trunc i64 %n.vec to i32                  ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1  ; 3 uses
  %wide.load27 = load <16 x i8>, ptr %i.aa, align 1 ; 3 uses
  %i.ab = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ac = add <16 x i8> %wide.load27, splat (i8 -65)
  %i.ad = icmp ult <16 x i8> %i.ab, splat (i8 26)
  %i.ae = icmp ult <16 x i8> %i.ac, splat (i8 26)
  %i.af = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.ag = or disjoint <16 x i8> %wide.load27, splat (i8 32)
  %i.ah = select <16 x i1> %i.ad, <16 x i8> %i.af, <16 x i8> %wide.load
  %i.ai = select <16 x i1> %i.ae, <16 x i8> %i.ag, <16 x i8> %wide.load27
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %i.ah, ptr %i.aj, align 1
  store <16 x i8> %i.ai, ptr %i.ak, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 32)
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %i.am = add <16 x i32> %vec.ind, splat (i32 17)
  %i.an = sext <16 x i32> %i.am to <16 x i64>
  %i.ao = icmp ugt <16 x i64> %broadcast.splat, %i.an
  %i.ap = extractelement <16 x i1> %i.ao, i64 15
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.y, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.p, -4                     ; 5 uses
  %i.aq = trunc i64 %n.vec28 to i32
  %broadcast.splatinsert29 = insertelement <4 x i64> poison, i64 %1, i64 0
  %broadcast.splat30 = shufflevector <4 x i64> %broadcast.splatinsert29, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat32 = shufflevector <4 x i32> %broadcast.splatinsert31, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat32, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind34 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next37, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %index33
  %wide.load35 = load <4 x i8>, ptr %i.ar, align 1 ; 3 uses
  %i.as = add <4 x i8> %wide.load35, splat (i8 -65)
  %i.at = icmp ult <4 x i8> %i.as, splat (i8 26)
  %i.au = or disjoint <4 x i8> %wide.load35, splat (i8 32)
  %i.av = select <4 x i1> %i.at, <4 x i8> %i.au, <4 x i8> %wide.load35
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %index33
  store <4 x i8> %i.av, ptr %i.aw, align 1
  %index.next36 = add nuw i64 %index33, 4         ; 2 uses
  %vec.ind.next37 = add <4 x i32> %vec.ind34, splat (i32 4)
  %i.ax = icmp eq i64 %index.next36, %n.vec28
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ay = add <4 x i32> %vec.ind34, splat (i32 1)
  %i.az = sext <4 x i32> %i.ay to <4 x i64>
  %i.ba = icmp ugt <4 x i64> %broadcast.splat30, %i.az
  %i.bb = extractelement <4 x i1> %i.ba, i64 3
  %cmp.n38 = icmp eq i64 %i.p, %n.vec28
  br i1 %cmp.n38, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ]
  %.015.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bc = phi i64 [ %i.bj, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.015.i = phi i32 [ %i.bi, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ]
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1             ; 3 uses
  %i.bf = add i8 %i.be, -65
  %or.cond.i.i = icmp ult i8 %i.bf, 26
  %i.bg = or disjoint i8 %i.be, 32
  %spec.select.i.i = select i1 %or.cond.i.i, i8 %i.bg, i8 %i.be
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bc
  store i8 %spec.select.i.i, ptr %i.bh, align 1
  %i.bi = add i32 %.015.i, 1                      ; 2 uses
  %i.bj = sext i32 %i.bi to i64                   ; 4 uses
  %i.bk = icmp ugt i64 %3, %i.bj
  %i.bl = icmp ugt i64 %1, %i.bj                  ; 2 uses
  %i.bm = and i1 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.d
  %.lcssa14.i = phi i64 [ 0, %bb.d ], [ %n.vec28, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.bj, %.lr.ph.i ]
  %.lcssa.i = phi i1 [ %i.l, %bb.d ], [ %i.bb, %vec.epilog.middle.block ], [ %i.ap, %middle.block ], [ %i.bl, %.lr.ph.i ]
  br i1 %.lcssa.i, label %bb.e, label %strlower_c.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %.lcssa14.i
  store i8 0, ptr %i.bn, align 1
  br label %strlower_c.exit

bb.f:                                             ; preds = %bb.c
  %i.bo = tail call i64 %i.i(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %i.c) #19
  br label %strlower_c.exit

strlower_c.exit:                                  ; preds = %bb.e, %._crit_edge.i, %bb.f
  %.0 = phi i64 [ %i.bo, %bb.f ], [ %3, %._crit_edge.i ], [ %3, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pg_strcoll(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pg_strncoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #19
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @pg_strxfrm_enabled(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strxfrm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef %0, i64 noundef %2, ptr noundef %1, ptr noundef %3) #19
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strnxfrm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #19
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @pg_strxfrm_prefix_enabled(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.d, null
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strxfrm_prefix(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8
end_hunk_0
