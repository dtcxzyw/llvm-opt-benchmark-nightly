inline.NumInlined: 261
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@is_consistent:bb.a
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @stderr, align 8
  %i.u = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.t, i32 noundef 1, ptr noundef nonnull @.str.77) #22 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 33024 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not51 = icmp eq ptr %i.w, null
  br i1 %.not51, label %bb.f, label %.preheader63

.preheader63:                                     ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32940 ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 32924      ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 32956      ; 3 uses
  %i.aa = load i32, ptr %i.x, align 4
  %i.ab = zext i32 %i.aa to i64
  %.val5767 = load i32, ptr %i.y, align 4
  %.val5868 = load i32, ptr %i.z, align 4
  %i.ac = zext i32 %.val5868 to i64
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = zext i32 %.val5767 to i64
  %i.af = sdiv i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.14, i32 noundef 2169, ptr noundef nonnull @__PRETTY_FUNCTION__.is_consistent) #24
  unreachable

.lr.ph:                                           ; preds = %.preheader63, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader63 ] ; 2 uses
  %i.ai = load ptr, ptr %i.v, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = and i8 %i.ak, -4
  store i8 %i.al, ptr %i.aj, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.x, align 4
  %i.an = zext i32 %i.am to i64
  %.val57 = load i32, ptr %i.y, align 4
  %.val58 = load i32, ptr %i.z, align 4
  %i.ao = zext i32 %.val58 to i64
  %i.ap = sub nsw i64 %i.an, %i.ao
  %i.aq = zext i32 %.val57 to i64
  %i.ar = sdiv i64 %i.ap, %i.aq
  %sext.a = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext.a, 32
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %.preheader63
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 33044 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %.not23.i = icmp eq i32 %i.av, 0
  br i1 %.not23.i, label %clear_commits.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 33032
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 33048
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph.i
  %i.ay = phi i32 [ %i.av, %.lr.ph.i ], [ %i.bj, %bb.o ] ; 2 uses
  %.022.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bk, %bb.o ] ; 3 uses
  %i.az = icmp ult i32 %.022.i, %i.ay
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %bb.j, label %array_get.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i:                                 ; preds = %bb.i
  %i.bb = load i32, ptr %i.ax, align 8
  %i.bc = mul i32 %i.bb, %.022.i
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = icmp eq i32 %i.bh, 1                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %array_get.exit.i
  br i1 %i.bi, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.14, i32 noundef 1607, ptr noundef nonnull @__PRETTY_FUNCTION__.clear_commits) #24
  unreachable

.thread.i:                                        ; preds = %array_get.exit.i
  br i1 %i.bi, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread.i
  tail call void @g_free(ptr noundef nonnull %i.bf) #22
  %.pre.i = load i32, ptr %i.au, align 4
  br label %bb.o

bb.n:                                             ; preds = %.thread.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.14, i32 noundef 1612, ptr noundef nonnull @__PRETTY_FUNCTION__.clear_commits) #24
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.bj = phi i32 [ %.pre.i, %bb.m ], [ %i.ay, %bb.k ] ; 2 uses
  %i.bk = add nuw i32 %.022.i, 1                  ; 2 uses
  %i.bl = icmp ult i32 %i.bk, %i.bj
  br i1 %i.bl, label %bb.g, label %clear_commits.exit, !llvm.loop !25

clear_commits.exit:                               ; preds = %bb.o, %._crit_edge
  store i32 0, ptr %i.au, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 33008
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not52 = icmp eq ptr %i.bn, null
  br i1 %.not52, label %.loopexit62, label %.preheader

.preheader:                                       ; preds = %clear_commits.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32892 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %.not79 = icmp eq i32 %i.bp, 0
  br i1 %.not79, label %.loopexit62, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32880
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32896
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph71, %bb.u
  %i.bs = phi i32 [ %i.bp, %.lr.ph71 ], [ %i.cf, %bb.u ] ; 2 uses
  %.14970 = phi i32 [ 0, %.lr.ph71 ], [ %i.cg, %bb.u ] ; 3 uses
  %i.bt = icmp ult i32 %.14970, %i.bs
  br i1 %i.bt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i59 = icmp eq ptr %i.bu, null
  br i1 %.not.i59, label %bb.s, label %array_get.exit

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit:                                   ; preds = %bb.r
  %i.bv = load i32, ptr %i.br, align 8
  %i.bw = mul i32 %i.bv, %.14970
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %array_get.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = or i32 %i.cd, 8
  store i32 %i.ce, ptr %i.cc, align 8
  %.pre = load i32, ptr %i.bo, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %array_get.exit
  %i.cf = phi i32 [ %.pre, %bb.t ], [ %i.bs, %array_get.exit ] ; 2 uses
  %i.cg = add nuw i32 %.14970, 1                  ; 2 uses
  %i.ch = icmp ult i32 %i.cg, %i.cf
  br i1 %i.ch, label %bb.p, label %.loopexit62, !llvm.loop !26

.loopexit62:                                      ; preds = %bb.u, %.preheader, %clear_commits.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 33056
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call i32 @check_directory_consistency(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.cj) ; 3 uses
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.loopexit62
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32932
  %i.cn = load i32, ptr %i.cm, align 4            ; 6 uses
  %i.co = load i32, ptr %i.x, align 4
  %i.cp = zext i32 %i.co to i64
  %.val = load i32, ptr %i.y, align 4
  %.val56 = load i32, ptr %i.z, align 4
  %i.cq = zext i32 %.val56 to i64
  %i.cr = sub nsw i64 %i.cp, %i.cq
  %i.cs = zext i32 %.val to i64
  %i.ct = sdiv i64 %i.cr, %i.cs                   ; 2 uses
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = icmp slt i32 %i.cn, %i.cu
  br i1 %i.cv, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %bb.v
  %invariant.op = add i32 %i.cn, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32824
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32948
  %1 = sext i32 %i.cn to i64
  %sext = sext i32 %invariant.op to i64
  %sext107 = shl i64 %i.ct, 32
  %wide.trip.count = ashr exact i64 %sext107, 32
  br label %bb.x

bb.w:                                             ; preds = %bb.af
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge78, label %bb.x, !llvm.loop !27

bb.x:                                             ; preds = %.lr.ph77, %bb.w
  %indvars.iv81 = phi i64 [ %1, %.lr.ph77 ], [ %indvars.iv.next82, %bb.w ] ; 8 uses
  %.04775 = phi i32 [ %i.cn, %.lr.ph77 ], [ %.1, %bb.w ] ; 2 uses
  %2 = trunc nsw i64 %indvars.iv81 to i32         ; 2 uses
  %3 = icmp ugt i32 %i.cn, %2
  br i1 %3, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cy = icmp eq i64 %indvars.iv81, %sext
  br i1 %i.cy, label %bb.z, label %.modified_fat_get.exit.thread_crit_edge

.modified_fat_get.exit.thread_crit_edge:          ; preds = %bb.y
  %.pre83 = load ptr, ptr %i.v, align 8
  br label %modified_fat_get.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.cz = load i32, ptr %i.cx, align 4
  br label %modified_fat_get.exit

bb.aa:                                            ; preds = %bb.x
  %i.da = load i32, ptr %i.cw, align 8
  %i.db = load ptr, ptr %i.a, align 8             ; 3 uses
  switch i32 %i.da, label %bb.ad [
    i32 32, label %bb.ab
    i32 16, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %4 = and i64 %indvars.iv81, 4294967295
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %4
  %i.dd = load i32, ptr %i.dc, align 4
  br label %modified_fat_get.exit

bb.ac:                                            ; preds = %bb.aa
  %5 = and i64 %indvars.iv81, 4294967295
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %5
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = zext i16 %i.df to i32
  br label %modified_fat_get.exit

bb.ad:                                            ; preds = %bb.aa
  %6 = mul i64 %indvars.iv81, 3
  %7 = lshr i64 %6, 1
  %8 = and i64 %7, 2147483647
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %8
  %i.di = load i16, ptr %i.dh, align 1
  %i.dj = zext i16 %i.di to i32
  %i.dk = shl i32 %2, 2
  %i.dl = and i32 %i.dk, 4
  %i.dm = lshr i32 %i.dj, %i.dl
  %i.dn = and i32 %i.dm, 4095
  br label %modified_fat_get.exit

modified_fat_get.exit:                            ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ad
  %.0.i = phi i32 [ %i.cz, %bb.z ], [ %i.dn, %bb.ad ], [ %i.dd, %bb.ab ], [ %i.dg, %bb.ac ]
  %.not54 = icmp eq i32 %.0.i, 0
  %.pre84 = load ptr, ptr %i.v, align 8           ; 2 uses
  br i1 %.not54, label %modified_fat_get.exit._crit_edge, label %modified_fat_get.exit.thread

modified_fat_get.exit._crit_edge:                 ; preds = %modified_fat_get.exit
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre84, i64 %indvars.iv81
  %.pre85 = load i8, ptr %.phi.trans.insert, align 1
  br label %bb.af

modified_fat_get.exit.thread:                     ; preds = %.modified_fat_get.exit.thread_crit_edge, %modified_fat_get.exit
  %i.do = phi ptr [ %.pre83, %.modified_fat_get.exit.thread_crit_edge ], [ %.pre84, %modified_fat_get.exit ]
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %indvars.iv81
  %i.dq = load i8, ptr %i.dp, align 1             ; 2 uses
  %.not55 = icmp eq i8 %i.dq, 0
  br i1 %.not55, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %modified_fat_get.exit.thread
  %i.dr = add i32 %.04775, 1
  br label %bb.af

bb.af:                                            ; preds = %modified_fat_get.exit._crit_edge, %bb.ae
  %i.ds = phi i8 [ %i.dq, %bb.ae ], [ %.pre85, %modified_fat_get.exit._crit_edge ]
  %.1 = phi i32 [ %i.dr, %bb.ae ], [ %.04775, %modified_fat_get.exit._crit_edge ] ; 2 uses
  %i.dt = icmp eq i8 %i.ds, 4
  br i1 %i.dt, label %.loopexit, label %bb.w

._crit_edge78:                                    ; preds = %bb.w, %bb.v
  %.047.lcssa = phi i32 [ %i.cn, %bb.v ], [ %.1, %bb.w ]
  %.not53 = icmp eq i32 %.047.lcssa, %i.ck
  %. = select i1 %.not53, i32 %i.ck, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %modified_fat_get.exit.thread, %._crit_edge78, %.loopexit62, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %.loopexit62 ], [ %., %._crit_edge78 ], [ 0, %modified_fat_get.exit.thread ], [ 0, %bb.af ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @do_commit(ptr nofree noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33044 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.bz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32968 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %vvfat_close_current_file.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32960 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %vvfat_close_current_file.exit.thread, label %vvfat_close_current_file.exit

vvfat_close_current_file.exit.thread:             ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32992
  store i32 -1, ptr %i.h, align 8
  br label %.lr.ph208.i

vvfat_close_current_file.exit:                    ; preds = %bb.c
  %i.i = tail call i32 @qemu_close(i32 noundef %i.g) #22 ; 0 uses
  store i32 0, ptr %i.f, align 8
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32992
  store i32 -1, ptr %i.j, align 8
  %.not218.i = icmp eq i32 %.pre, 0
  br i1 %.not218.i, label %handle_renames_and_mkdirs.exit, label %.lr.ph208.i

.lr.ph208.i:                                      ; preds = %vvfat_close_current_file.exit.thread, %vvfat_close_current_file.exit
  %i.k = phi i32 [ %i.b, %vvfat_close_current_file.exit.thread ], [ %.pre, %vvfat_close_current_file.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 33032 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 33048 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32868 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32924 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32892 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32880 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32896 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32856
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32872
  %i.u = getelementptr i8, ptr %0, i64 32948      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32824
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32844 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32832 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32848 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.bc, %.lr.ph208.i
  %i.z = phi i32 [ %i.k, %.lr.ph208.i ], [ %i.hv, %bb.bc ] ; 2 uses
  %.0111206.i = phi i32 [ 0, %.lr.ph208.i ], [ %.1112.i, %bb.bc ] ; 13 uses
  %i.aa = icmp ult i32 %.0111206.i, %i.z
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.g, label %array_get.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i:                                 ; preds = %bb.f
  %i.ac = load i32, ptr %i.m, align 8
  %i.ad = mul i32 %i.ac, %.0111206.i
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8
  switch i32 %i.ah, label %bb.bb [
    i32 0, label %bb.h
    i32 3, label %bb.ao
  ]

bb.h:                                             ; preds = %array_get.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8            ; 3 uses
  %i.ak = load i32, ptr %i.p, align 4
  %i.al = tail call fastcc i32 @find_mapping_for_cluster_aux(ptr noundef nonnull readonly %0, i32 noundef %i.aj, i32 noundef %i.ak) ; 2 uses
  %i.am = load i32, ptr %i.p, align 4
  %.not.i144.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i144.i, label %bb.i, label %.loopexit40

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %bb.j, label %array_get.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i.i:                               ; preds = %bb.i
  %i.ao = load i32, ptr %i.r, align 8
  %i.ap = mul i32 %i.ao, %i.al
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq ; 6 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp ugt i32 %i.as, %i.aj
  br i1 %i.at, label %.loopexit40, label %bb.k

bb.k:                                             ; preds = %array_get.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp ugt i32 %i.av, %i.aj
  br i1 %i.aw, label %find_mapping_for_cluster.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.14, i32 noundef 1354, ptr noundef nonnull @__PRETTY_FUNCTION__.find_mapping_for_cluster) #24
  unreachable

find_mapping_for_cluster.exit.i:                  ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not130.i = icmp eq ptr %i.az, null
  br i1 %.not130.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %find_mapping_for_cluster.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.14, i32 noundef 2680, ptr noundef nonnull @__PRETTY_FUNCTION__.handle_renames_and_mkdirs) #24
  unreachable

bb.n:                                             ; preds = %find_mapping_for_cluster.exit.i
  store ptr %i.az, ptr %i.ax, align 8
  %i.ba = tail call i32 @rename(ptr noundef %i.ay, ptr noundef nonnull %i.az) #22
  %.not131.i = icmp eq i32 %i.ba, 0
  br i1 %.not131.i, label %bb.o, label %.loopexit40

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = and i32 %i.bc, 4
  %.not132.i = icmp eq i32 %i.bd, 0
  br i1 %.not132.i, label %.thread182.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.ax, align 8
  %i.bf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #23 ; 2 uses
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #23 ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = load i32, ptr %i.n, align 4
  %i.bm = icmp ult i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i145.i = icmp eq ptr %i.bn, null
  br i1 %.not.i145.i, label %bb.s, label %array_get.exit146.i

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit146.i:                              ; preds = %bb.r
  %i.bo = load i32, ptr %i.t, align 8
  %i.bp = mul i32 %i.bo, %i.bk
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  %i.bs = load i32, ptr %i.ar, align 8            ; 2 uses
  %.val143202.i = load i32, ptr %i.u, align 4
  %i.bt = add i32 %.val143202.i, -8
  %.not191203.i = icmp ugt i32 %i.bs, %i.bt
  br i1 %.not191203.i, label %.thread182.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %array_get.exit146.i
  %i.bu = add i32 %i.bg, 1
  %i.bv = sub i32 %i.bu, %i.bi
  %sext137.i = shl i64 %i.bh, 32
  %i.bw = ashr exact i64 %sext137.i, 32           ; 2 uses
end_hunk_0
