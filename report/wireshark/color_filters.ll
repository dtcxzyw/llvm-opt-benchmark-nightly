inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@read_filters_file:bb.a
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, 256
  %.not90 = icmp eq i16 %i.ag, 0
  br i1 %.not90, label %.critedge, label %bb.d, !llvm.loop !17

.critedge:                                        ; preds = %bb.e
  switch i32 %i.ab, label %bb.f [
    i32 64, label %.preheader105
    i32 33, label %.backedge.backedge
  ]

bb.f:                                             ; preds = %.critedge
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.f, %.critedge
  %.068.be = phi i8 [ 1, %.critedge ], [ %.169, %bb.f ]
  %.066.be = phi i1 [ false, %.critedge ], [ true, %bb.f ]
  br label %.backedge

.preheader105:                                    ; preds = %.critedge, %bb.k
  %.178 = phi i32 [ %.279, %bb.k ], [ %.077.ph152, %.critedge ] ; 5 uses
  %.072 = phi i32 [ %i.at, %bb.k ], [ 0, %.critedge ] ; 5 uses
  %.1 = phi ptr [ %.2, %bb.k ], [ %.0.ph156, %.critedge ] ; 9 uses
  %i.ah = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.ai = load ptr, ptr %i.l, align 8
  %.not.i97 = icmp ult ptr %i.ah, %i.ai
  br i1 %.not.i97, label %bb.h, label %bb.g, !prof !15

bb.g:                                             ; preds = %.preheader105
  %i.aj = call i32 @__uflow(ptr noundef nonnull %1), !inline_history !16
  br label %getc_unlocked.exit98

bb.h:                                             ; preds = %.preheader105
  %i.ak = getelementptr i8, ptr %i.ah, i64 1
  store ptr %i.ak, ptr %i.k, align 8
  %i.al = load i8, ptr %i.ah, align 1
  %i.am = zext i8 %i.al to i32
  br label %getc_unlocked.exit98

getc_unlocked.exit98:                             ; preds = %bb.g, %bb.h
  %i.an = phi i32 [ %i.aj, %bb.g ], [ %i.am, %bb.h ] ; 3 uses
  switch i32 %i.an, label %bb.i [
    i32 -1, label %bb.l
    i32 64, label %bb.l
  ]

bb.i:                                             ; preds = %getc_unlocked.exit98
  %.not92 = icmp ult i32 %.072, %.178
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = shl i32 %.178, 1                        ; 2 uses
  %i.ap = or disjoint i32 %i.ao, 1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = call ptr @g_realloc(ptr noundef %.1, i64 noundef %i.aq)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.279 = phi i32 [ %i.ao, %bb.j ], [ %.178, %bb.i ]
  %.2 = phi ptr [ %i.ar, %bb.j ], [ %.1, %bb.i ]  ; 2 uses
  %i.as = trunc i32 %i.an to i8
  %i.at = add i32 %.072, 1
  %i.au = zext i32 %.072 to i64
  %i.av = getelementptr i8, ptr %.2, i64 %i.au
  store i8 %i.as, ptr %i.av, align 1
  br label %.preheader105

bb.l:                                             ; preds = %getc_unlocked.exit98, %getc_unlocked.exit98
  %i.aw = icmp eq i32 %i.an, -1
  %i.ax = zext i32 %.072 to i64
  %i.ay = getelementptr i8, ptr %.1, i64 %i.ax
  store i8 0, ptr %i.ay, align 1
  br i1 %i.aw, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = icmp eq i32 %.072, 0
  br i1 %i.az, label %.backedge.outer151, label %.preheader

.preheader:                                       ; preds = %bb.m, %bb.r
  %.181 = phi ptr [ %.282, %bb.r ], [ %.080.ph, %bb.m ] ; 7 uses
  %.175 = phi i32 [ %.276, %bb.r ], [ %.074.ph, %bb.m ] ; 4 uses
  %.173 = phi i32 [ %i.bm, %bb.r ], [ 0, %bb.m ]  ; 5 uses
  %i.ba = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.bb = load ptr, ptr %i.l, align 8
  %.not.i99 = icmp ult ptr %i.ba, %i.bb
  br i1 %.not.i99, label %bb.o, label %bb.n, !prof !15

bb.n:                                             ; preds = %.preheader
  %i.bc = call i32 @__uflow(ptr noundef nonnull %1), !inline_history !16
  br label %getc_unlocked.exit100

bb.o:                                             ; preds = %.preheader
  %i.bd = getelementptr i8, ptr %i.ba, i64 1
  store ptr %i.bd, ptr %i.k, align 8
  %i.be = load i8, ptr %i.ba, align 1
  %i.bf = zext i8 %i.be to i32
  br label %getc_unlocked.exit100

getc_unlocked.exit100:                            ; preds = %bb.n, %bb.o
  %i.bg = phi i32 [ %i.bc, %bb.n ], [ %i.bf, %bb.o ] ; 3 uses
  switch i32 %i.bg, label %bb.p [
    i32 -1, label %bb.s
    i32 64, label %bb.s
  ]

bb.p:                                             ; preds = %getc_unlocked.exit100
  %.not93 = icmp ult i32 %.173, %.175
  br i1 %.not93, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = shl i32 %.175, 1                        ; 2 uses
  %i.bi = or disjoint i32 %i.bh, 1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = call ptr @g_realloc(ptr noundef %.181, i64 noundef %i.bj)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.282 = phi ptr [ %i.bk, %bb.q ], [ %.181, %bb.p ] ; 2 uses
  %.276 = phi i32 [ %i.bh, %bb.q ], [ %.175, %bb.p ]
  %i.bl = trunc i32 %i.bg to i8
  %i.bm = add i32 %.173, 1
  %i.bn = zext i32 %.173 to i64
  %i.bo = getelementptr i8, ptr %.282, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1
  br label %.preheader

bb.s:                                             ; preds = %getc_unlocked.exit100, %getc_unlocked.exit100
  %i.bp = icmp eq i32 %i.bg, -1
  %i.bq = zext i32 %.173 to i64
  %i.br = getelementptr i8, ptr %.181, i64 %i.bq
  store i8 0, ptr %i.br, align 1
  br i1 %i.bp, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = icmp eq i32 %.173, 0
  br i1 %i.bs, label %.backedge.outer.backedge, label %bb.u

.backedge.outer.backedge:                         ; preds = %bb.t, %bb.aa, %bb.u
  %.068.ph.be = phi i8 [ %.169, %bb.u ], [ %.270, %bb.aa ], [ %.169, %bb.t ]
  br label %.backedge.outer

bb.u:                                             ; preds = %bb.t
  %i.bt = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.bu = icmp eq i32 %i.bt, 6
  br i1 %i.bu, label %bb.v, label %.backedge.outer.backedge

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store ptr null, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store ptr null, ptr %i.h, align 8
  %i.bv = trunc nuw i8 %.169 to i1
  br i1 %i.bv, label %g_strdup_inline.exit26.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = call zeroext i1 @dfilter_compile_full(ptr noundef %.181, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i32 noundef 6, ptr noundef nonnull @__func__.read_filters_file)
  br i1 %i.bw, label %g_strdup_inline.exit26.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = load ptr, ptr %i.h, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void (ptr, ...) @report_warning(ptr noundef nonnull @.str.21, ptr noundef %.1, ptr noundef %0, ptr noundef %i.bz)
  call void @df_error_free(ptr noundef nonnull %i.h)
  br label %g_strdup_inline.exit26.i

g_strdup_inline.exit26.i:                         ; preds = %bb.x, %bb.w, %bb.v
  %.270 = phi i8 [ 1, %bb.v ], [ 0, %bb.w ], [ 1, %bb.x ] ; 2 uses
  %i.ca = load i16, ptr %i.a, align 2
  %i.cb = load i16, ptr %i.b, align 2
  %i.cc = load i16, ptr %i.c, align 2
  %i.cd = load i16, ptr %i.d, align 2
  %i.ce = load i16, ptr %i.e, align 2
  %i.cf = load i16, ptr %i.f, align 2
  %i.cg = call noalias dereferenceable_or_null(40) ptr @g_malloc0(i64 noundef 40) #11 ; 12 uses
  %i.ch = call noalias ptr @g_strdup(ptr noundef %.1)
  store ptr %i.ch, ptr %i.cg, align 8
  %i.ci = call noalias ptr @g_strdup(ptr noundef %.181)
  %i.cj = getelementptr i8, ptr %i.cg, i64 8
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %i.cg, i64 16
  store i16 %i.cd, ptr %i.ck, align 8
  %.sroa.4102.0..sroa_idx = getelementptr i8, ptr %i.cg, i64 18
  store i16 %i.ce, ptr %.sroa.4102.0..sroa_idx, align 2
  %.sroa.5103.0..sroa_idx = getelementptr i8, ptr %i.cg, i64 20
  store i16 %i.cf, ptr %.sroa.5103.0..sroa_idx, align 4
  %i.cl = getelementptr i8, ptr %i.cg, i64 22
  store i16 %i.ca, ptr %i.cl, align 2
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.cg, i64 24
  store i16 %i.cb, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.cg, i64 26
  store i16 %i.cc, ptr %.sroa.5.0..sroa_idx, align 2
  %i.cm = getelementptr i8, ptr %i.cg, i64 28
  store i8 %.270, ptr %i.cm, align 4
  %i.cn = load ptr, ptr %i.g, align 8             ; 2 uses
  br i1 %i.n, label %bb.y, label %bb.z

bb.y:                                             ; preds = %g_strdup_inline.exit26.i
  %i.co = getelementptr i8, ptr %i.cg, i64 32
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = load ptr, ptr @color_filter_list, align 8
  %i.cq = call ptr @g_slist_append(ptr noundef %i.cp, ptr noundef %i.cg)
  store ptr %i.cq, ptr @color_filter_list, align 8
  br label %bb.aa

bb.z:                                             ; preds = %g_strdup_inline.exit26.i
  call void @dfilter_free(ptr noundef %i.cn)
  call void %3(ptr noundef %i.cg, ptr noundef %2)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %.backedge.outer.backedge

.loopexit:                                        ; preds = %bb.l, %bb.s, %getc_unlocked.exit, %getc_unlocked.exit96
  %.383 = phi ptr [ %.080.ph, %getc_unlocked.exit ], [ %.080.ph, %getc_unlocked.exit96 ], [ %.080.ph, %bb.l ], [ %.181, %bb.s ]
  %.3 = phi ptr [ %.0.ph156, %getc_unlocked.exit ], [ %.0.ph156, %getc_unlocked.exit96 ], [ %.1, %bb.s ], [ %.1, %bb.l ]
  %i.cr = call i32 @ferror(ptr noundef nonnull %1) #13
  %.not94 = icmp eq i32 %i.cr, 0
  br i1 %.not94, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.cs = tail call ptr @__errno_location() #14
  %i.ct = load i32, ptr %i.cs, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit
  %.065 = phi i32 [ %i.ct, %bb.ab ], [ 0, %.loopexit ]
  call void @g_free(ptr noundef %.3)
  call void @g_free(ptr noundef %.383)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.065
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @color_filters_import(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.6) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #14
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call ptr @g_strerror(i32 noundef %i.d) #14
  %i.f = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef %0, ptr noundef %i.e)
  store ptr %i.f, ptr %2, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @read_filters_file(ptr noundef %0, ptr noundef %i.a, ptr noundef %1, ptr noundef %3)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #14
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call ptr @g_strerror(i32 noundef %i.i) #14
  %i.k = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef %i.j)
  store ptr %i.k, ptr %2, align 8
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @color_filters_write(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.write_filter_data, align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @create_persconffile_dir(ptr noundef %2, ptr noundef nonnull %i.a)
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call ptr @__errno_location() #14
  %i.f = load i32, ptr %i.e, align 4
  %i.g = call ptr @g_strerror(i32 noundef %i.f) #14
  %i.h = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef %i.d, ptr noundef %i.g)
  store ptr %i.h, ptr %3, align 8
  %i.i = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %i.i)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = call ptr @get_persconffile_path(ptr noundef nonnull @.str.8, i1 noundef zeroext true, ptr noundef %2) ; 4 uses
  %i.k = call noalias ptr @fopen(ptr noundef %i.j, ptr noundef nonnull @.str.14) ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__errno_location() #14
  %i.n = load i32, ptr %i.m, align 4
  %i.o = call ptr @g_strerror(i32 noundef %i.n) #14
  %i.p = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef %i.j, ptr noundef %i.o)
  store ptr %i.p, ptr %3, align 8
  call void @g_free(ptr noundef %i.j)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @g_free(ptr noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.k, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.q, align 8
  %i.r = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.k, i32 noundef 2, ptr noundef nonnull @.str.22, ptr noundef %1) ; 0 uses
  call void @g_slist_foreach(ptr noundef %0, ptr noundef nonnull @write_filter, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.s = call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @create_persconffile_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @get_persconffile_path(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @color_filters_export(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.write_filter_data, align 8  ; 5 uses
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.14) ; 4 uses
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #14
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call ptr @g_strerror(i32 noundef %i.d) #14
  %i.f = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef %0, ptr noundef %i.e)
  store ptr %i.f, ptr %4, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %i.a, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %i.g, ptr %i.h, align 8
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull @.str.22, ptr noundef %3) ; 0 uses
  call void @g_slist_foreach(ptr noundef %1, ptr noundef nonnull @write_filter, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.j = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i1 %i.b
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @g_strsplit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare ptr @g_slist_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @g_strfreev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @color_filter_list_clone_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
g_strdup_inline.exit27.i:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #11 ; 7 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call noalias ptr @g_strdup(ptr noundef %i.b)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noalias ptr @g_strdup(ptr noundef %i.e)
  %i.g = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.a, i64 16
  %i.i = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(6) %i.h, ptr noundef readonly align 8 dereferenceable(6) %i.i, i64 6, i1 false)
end_hunk_0
