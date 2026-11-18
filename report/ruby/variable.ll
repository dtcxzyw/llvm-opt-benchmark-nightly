Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/variable?download=true
inline.NumInlined: 730
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@const_tbl_update:bb.a
bb.aa:                                            ; preds = %RCLASS_EXT_READABLE.exit
  %i.cz = icmp ne i64 %i.d, 0
  %i.da = and i64 %i.d, 7
  %i.db = icmp eq i64 %i.da, 0
  %.not5.i.i.i = and i1 %i.cz, %i.db
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, !prof !180

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i:          ; preds = %bb.aa
  %i.dc = load i64, ptr %i.i, align 8, !tbaa !97
  %i.dd = and i64 %i.dc, 16384
  %.not10.i = icmp eq i64 %i.dd, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %bb.ab, !prof !178

bb.ab:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.de = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, %bb.aa
  %i.df = call ptr @rb_current_box() #25          ; 3 uses
  %.not.i57 = icmp eq ptr %i.df, null
  br i1 %.not.i57, label %.split.i60, label %bb.ac

.split.i60:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.dg = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.d, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit

bb.ac:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.dh = getelementptr i8, ptr %i.df, i64 128
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !109, !range !110, !noundef !111
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %.split7.i59, label %bb.ad

.split7.i59:                                      ; preds = %bb.ac
  %i.dk = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.d, ptr noundef nonnull %i.df)
  br label %RCLASS_EXT_WRITABLE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr i8, ptr %i.i, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %bb.ab, %.split.i60, %.split7.i59, %bb.ad
  %.0.i58 = phi ptr [ %i.de, %bb.ab ], [ %i.dl, %bb.ad ], [ %i.dg, %.split.i60 ], [ %i.dk, %.split7.i59 ]
  %i.dm = getelementptr i8, ptr %.0.i58, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !249
  call void @rb_clear_constant_cache_for_id(i64 noundef %i.h) #25
  %i.do = call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #30 ; 5 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = call i32 @rb_id_table_insert(ptr noundef %i.dn, i64 noundef %i.h, i64 noundef %i.dp) #25 ; 0 uses
  store i32 %i.ag, ptr %i.do, align 8, !tbaa !248
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.f, ptr %i.dr, align 8, !tbaa !93
  %i.ds = icmp eq i64 %i.f, 0
  %i.dt = and i64 %i.f, 7
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %rb_obj_write.exit.i61, label %bb.ae

bb.ae:                                            ; preds = %RCLASS_EXT_WRITABLE.exit
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.f) #25
  br label %rb_obj_write.exit.i61

rb_obj_write.exit.i61:                            ; preds = %bb.ae, %RCLASS_EXT_WRITABLE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dy = call i64 @rb_source_location(ptr noundef nonnull %i.dx) #25 ; 4 uses
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !93
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = and i64 %i.dy, 7
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = or i1 %i.dz, %i.eb
  br i1 %i.ec, label %rb_obj_write.exit53, label %bb.af

bb.af:                                            ; preds = %rb_obj_write.exit.i61
  call void @rb_gc_writebarrier(i64 noundef %i.d, i64 noundef %i.dy) #25
  br label %rb_obj_write.exit53

rb_obj_write.exit53:                              ; preds = %bb.af, %rb_obj_write.exit.i61, %bb.z, %rb_obj_write.exit.i, %bb.n, %rb_obj_write.exit, %rb_obj_write.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void
}

declare i64 @rb_source_location(ptr noundef) local_unnamed_addr #1

declare void @rb_compile_warn(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @rb_feature_provided(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_const_search_from(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 !guid !514 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = and i64 %0, -5
  %.not110115 = icmp eq i64 %i.i, 0
  br i1 %.not110115, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not52 = icmp ne i32 %4, 0                     ; 2 uses
  %.not57 = icmp eq i32 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %RCLASS_EXT_READABLE.exit86
  %.043117 = phi i1 [ true, %.lr.ph ], [ false, %RCLASS_EXT_READABLE.exit86 ]
  %.044116 = phi i64 [ %0, %.lr.ph ], [ %i.ex, %RCLASS_EXT_READABLE.exit86 ] ; 3 uses
  %.pre138 = inttoptr i64 %.044116 to ptr         ; 17 uses
  br i1 %.043117, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.pre138, align 8, !tbaa !97
  %i.k = and i64 %i.j, 65536
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.pre138, i64 160  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.d

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.c
  %i.o = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.p = call ptr @rb_current_box() #25           ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.split.i, label %bb.e

.split.i:                                         ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.p, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !109, !range !110, !noundef !111
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split7.i, label %bb.h

.split7.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.u = load i64, ptr %.pre138, align 8, !tbaa !97
  %i.v = and i64 %i.u, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !107  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.x = load i64, ptr %i.p, align 8, !tbaa !112
  %i.y = call i32 @rb_st_lookup(ptr noundef nonnull %i.w, i64 noundef %i.x, ptr noundef nonnull %i.h) #25
  %.not5.i.i13.i = icmp eq i32 %i.y, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.h, align 8, !tbaa !93
  %i.aa = inttoptr i64 %i.z to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.g, %bb.f, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.aa, %bb.g ], [ null, %bb.f ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ab = getelementptr i8, ptr %.pre138, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ab, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %.pre138, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.h
  %.0.i = phi ptr [ %i.o, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ac, %bb.h ], [ %i.q, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ad = getelementptr i8, ptr %.0.i, i64 96
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !515
  %.not = icmp eq i64 %i.ae, %.044116
  br i1 %.not, label %._crit_edge, label %bb.av

._crit_edge:                                      ; preds = %bb.b, %RCLASS_EXT_READABLE.exit
  %i.af = load i64, ptr %.pre138, align 8, !tbaa !97 ; 2 uses
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 28
  br i1 %i.ah, label %bb.i, label %.peel.begin

bb.i:                                             ; preds = %._crit_edge
  %i.ai = getelementptr i8, ptr %.pre138, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !122 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.aj to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !97
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.i, %._crit_edge
  %.pre-phi = phi ptr [ %.phi.trans.insert, %bb.i ], [ %.pre138, %._crit_edge ] ; 6 uses
  %i.ak = phi i64 [ %.pre, %bb.i ], [ %i.af, %._crit_edge ]
  %.042 = phi i64 [ %i.aj, %bb.i ], [ %.044116, %._crit_edge ] ; 11 uses
  %i.al = icmp eq i64 %.042, 0
  %i.am = getelementptr i8, ptr %.pre-phi, i64 160 ; 5 uses
  %i.an = getelementptr i8, ptr %.pre-phi, i64 24 ; 11 uses
  %i.ao = and i64 %i.ak, 65536
  %.not.i.i.i59.peel = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i59.peel, label %RCLASS_EXT_READABLE.exit.i.peel, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel:   ; preds = %.peel.begin
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !107
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %RCLASS_EXT_READABLE.exit.i.peel, label %bb.j

bb.j:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel
  %i.ar = call ptr @rb_current_box() #25          ; 3 uses
  %.not.i.i60.peel = icmp eq ptr %i.ar, null
  br i1 %.not.i.i60.peel, label %.split.i.i.peel, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.ar, i64 128
  %i.at = load i8, ptr %i.as, align 8, !tbaa !109, !range !110, !noundef !111
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.split7.i.i.peel, label %RCLASS_EXT_READABLE.exit.i.peel

.split7.i.i.peel:                                 ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.av = load i64, ptr %.pre-phi, align 8, !tbaa !97
  %i.aw = and i64 %i.av, 65536
  %.not.i.i.i10.i.i.peel = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i10.i.i.peel, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel:          ; preds = %.split7.i.i.peel
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !107 ; 2 uses
  %.not.i.i12.i.i.peel = icmp eq ptr %i.ax, null
  br i1 %.not.i.i12.i.i.peel, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, label %bb.l

bb.l:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !112
  %i.az = call i32 @rb_st_lookup(ptr noundef nonnull %i.ax, i64 noundef %i.ay, ptr noundef nonnull %i.g) #25
  %.not5.i.i13.i.i.peel = icmp eq i32 %i.az, 0
  br i1 %.not5.i.i13.i.i.peel, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !93
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel:       ; preds = %bb.m, %bb.l, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel, %.split7.i.i.peel
  %.0.i.i14.i.i.peel = phi ptr [ %i.bb, %bb.m ], [ null, %bb.l ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i.peel ], [ null, %.split7.i.i.peel ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %.not.i15.i.i.peel = icmp eq ptr %.0.i.i14.i.i.peel, null
  %.0.i16.i.i.peel = select i1 %.not.i15.i.i.peel, ptr %i.an, ptr %.0.i.i14.i.i.peel
  br label %RCLASS_EXT_READABLE.exit.i.peel

.split.i.i.peel:                                  ; preds = %bb.j
  %6 = load i64, ptr %.pre-phi, align 8, !tbaa !97
  %7 = and i64 %6, 65536
  %.not.i.i.i.i.i.peel = icmp eq i64 %7, 0
  br i1 %.not.i.i.i.i.i.peel, label %RCLASS_EXT_READABLE.exit.i.peel, label %RCLASS_CLASSEXT_TBL.exit.i.i.i.i.peel

RCLASS_CLASSEXT_TBL.exit.i.i.i.i.peel:            ; preds = %.split.i.i.peel
  %8 = load ptr, ptr %i.am, align 8, !tbaa !107
  %.not.i.i.i.i61.peel = icmp eq ptr %8, null
  call void @llvm.assume(i1 %.not.i.i.i.i61.peel)
  br label %RCLASS_EXT_READABLE.exit.i.peel

RCLASS_EXT_READABLE.exit.i.peel:                  ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i.i.i.peel, %.split.i.i.peel, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel, %bb.k, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel, %.peel.begin
  %.0.i.i.peel = phi ptr [ %.0.i16.i.i.peel, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i.peel ], [ %i.an, %.split.i.i.peel ], [ %i.an, %.peel.begin ], [ %i.an, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i.peel ], [ %i.an, %RCLASS_CLASSEXT_TBL.exit.i.i.i.i.peel ], [ %i.an, %bb.k ]
  %i.bc = getelementptr i8, ptr %.0.i.i.peel, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !249 ; 2 uses
  %.not.i2.i.peel = icmp eq ptr %i.bd, null
  br i1 %.not.i2.i.peel, label %rb_const_lookup.exit.thread, label %bb.n

bb.n:                                             ; preds = %RCLASS_EXT_READABLE.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.be = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !114
  %.not.i.i.i3.i.peel = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i3.i.peel, label %bb.o, label %rb_vm_lock_enter.exit.i.i.peel

bb.o:                                             ; preds = %bb.n
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.f) #25
  br label %rb_vm_lock_enter.exit.i.i.peel

rb_vm_lock_enter.exit.i.i.peel:                   ; preds = %bb.o, %bb.n
  %i.bf = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.bd, i64 noundef %1, ptr noundef nonnull %i.e) #25
  %i.bg = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !114
  %.not.i.i11.i.i.peel = icmp eq ptr %i.bg, null
  br i1 %.not.i.i11.i.i.peel, label %bb.p, label %rb_vm_lock_leave.exit.i.i.peel

bb.p:                                             ; preds = %rb_vm_lock_enter.exit.i.i.peel
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.f) #25
  br label %rb_vm_lock_leave.exit.i.i.peel

rb_vm_lock_leave.exit.i.i.peel:                   ; preds = %bb.p, %rb_vm_lock_enter.exit.i.i.peel
  %.not12.i.i.peel = icmp eq i32 %i.bf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.bh = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.not51.peel = icmp eq i64 %i.bh, 0
  %or.cond109.peel = select i1 %.not12.i.i.peel, i1 true, i1 %.not51.peel
  br i1 %or.cond109.peel, label %rb_const_lookup.exit.thread, label %bb.q

bb.q:                                             ; preds = %rb_vm_lock_leave.exit.i.i.peel
  %.pre132 = load i32, ptr %i.bi, align 8, !tbaa !248 ; 2 uses
  %i.bj = and i32 %.pre132, 255
  %i.bk = icmp eq i32 %i.bj, 1
  %or.cond164 = select i1 %.not52, i1 %i.bk, i1 false
  br i1 %or.cond164, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = and i32 %.pre132, 256
  %.not.i62.peel = icmp eq i32 %i.bl, 0
  br i1 %.not.i62.peel, label %rb_const_warn_if_deprecated.exit.peel, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 1) #25
  br i1 %i.bm, label %bb.t, label %rb_const_warn_if_deprecated.exit.peel

bb.t:                                             ; preds = %bb.s
  %i.bn = load i64, ptr @rb_cObject, align 8, !tbaa !93
  %i.bo = icmp eq i64 %.042, %i.bn
  br i1 %i.bo, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = call i64 @rb_class_real(i64 noundef %.042) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bq = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.bp, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4
  br i1 %i.br, label %rb_class_name.exit.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = call i64 @rb_str_dup(i64 noundef %i.bq) #25
  br label %rb_class_name.exit.peel

rb_class_name.exit.peel:                          ; preds = %bb.v, %bb.u
  %.0.i.i88.peel = phi i64 [ 4, %bb.u ], [ %i.bs, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bt = call i64 @rb_id_quote_unprintable(i64 noundef %1) #25
  call void (i32, ptr, ...) @rb_category_warn(i32 noundef 1, ptr noundef nonnull @.str.30, i64 noundef %.0.i.i88.peel, i64 noundef %i.bt) #34
  br label %rb_const_warn_if_deprecated.exit.peel

bb.w:                                             ; preds = %bb.t
  %i.bu = call i64 @rb_id_quote_unprintable(i64 noundef %1) #25
  call void (i32, ptr, ...) @rb_category_warn(i32 noundef 1, ptr noundef nonnull @.str.29, i64 noundef %i.bu) #34
  br label %rb_const_warn_if_deprecated.exit.peel

rb_const_warn_if_deprecated.exit.peel:            ; preds = %bb.w, %rb_class_name.exit.peel, %bb.s, %bb.r
  %i.bv = getelementptr i8, ptr %i.bi, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !218 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 36
  br i1 %i.bx, label %bb.x, label %.loopexit123

bb.x:                                             ; preds = %rb_const_warn_if_deprecated.exit.peel
  br i1 %i.al, label %rb_const_lookup.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = call fastcc i64 @autoload_data(i64 noundef %.042, i64 noundef %1) ; 2 uses
  %.not.i63.peel = icmp eq i64 %i.by, 0
  br i1 %.not.i63.peel, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = call ptr @rb_check_typeddata(i64 noundef %i.by, ptr noundef nonnull @autoload_const_type) #25 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !202
  %i.cc = call ptr @rb_check_typeddata(i64 noundef %i.cb, ptr noundef nonnull @autoload_data_type) #25 ; 3 uses
  %.not.i.i64.peel = icmp eq ptr %i.cc, null
  br i1 %.not.i.i64.peel, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr i8, ptr %i.cc, i64 16     ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !222
  %i.cf = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !216
  %i.cg = getelementptr i8, ptr %i.cf, i64 496
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !239
  %.not12.i.i65.peel = icmp eq i64 %i.ce, %i.ch
  %.phi.trans.insert.i.peel = getelementptr i8, ptr %i.cc, i64 8 ; 2 uses
  br i1 %.not12.i.i65.peel, label %bb.ab, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %bb.aa
  store i64 4, ptr %.phi.trans.insert.i.peel, align 8, !tbaa !93
  store i64 0, ptr %i.cd, align 8, !tbaa !222
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.val.pre.i.peel = load i64, ptr %.phi.trans.insert.i.peel, align 8, !tbaa !240 ; 2 uses
  %.not.i9.i.peel = icmp eq i64 %.val.pre.i.peel, 4
  br i1 %.not.i9.i.peel, label %bb.ad, label %autoload_by_current.exit.i.peel

autoload_by_current.exit.i.peel:                  ; preds = %bb.ab
  %i.ci = call i64 @rb_mutex_owned_p(i64 noundef %.val.pre.i.peel) #25
  %.not11.i.peel = icmp eq i64 %i.ci, 0
  br i1 %.not11.i.peel, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %autoload_by_current.exit.i.peel
  %i.cj = getelementptr i8, ptr %i.bz, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !205 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 36
  br i1 %i.cl, label %bb.ad, label %autoloading_const_entry.exit

bb.ad:                                            ; preds = %bb.y, %bb.z, %.thread.i.peel, %bb.ab, %autoload_by_current.exit.i.peel, %bb.ac
  %i.cm = call i64 @rb_autoload_load(i64 noundef %.042, i64 noundef %1) ; 0 uses
  %.pre136 = load i64, ptr %.pre-phi, align 8, !tbaa !97
  %i.cn = and i64 %.pre136, 65536
  %.not.i.i.i59 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i59, label %RCLASS_EXT_READABLE.exit.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %bb.ad
  %i.co = load ptr, ptr %i.am, align 8, !tbaa !107
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %RCLASS_EXT_READABLE.exit.i, label %bb.ae

bb.ae:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.cq = call ptr @rb_current_box() #25          ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i60, label %RCLASS_EXT_READABLE.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr i8, ptr %i.cq, i64 128
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !109, !range !110, !noundef !111
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.split7.i.i, label %RCLASS_EXT_READABLE.exit.i

.split7.i.i:                                      ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.cu = load i64, ptr %.pre-phi, align 8, !tbaa !97
  %i.cv = and i64 %i.cu, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.cw = load ptr, ptr %i.am, align 8, !tbaa !107 ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.ag

bb.ag:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.cx = load i64, ptr %i.cq, align 8, !tbaa !112
  %i.cy = call i32 @rb_st_lookup(ptr noundef nonnull %i.cw, i64 noundef %i.cx, ptr noundef nonnull %i.g) #25
  %.not5.i.i13.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = load i64, ptr %i.g, align 8, !tbaa !93
  %i.da = inttoptr i64 %i.cz to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.ah, %bb.ag, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.da, %bb.ah ], [ null, %bb.ag ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.an, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.ae, %bb.af, %bb.ad, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i
  %.0.i.i = phi ptr [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ], [ %i.an, %bb.af ], [ %i.an, %bb.ad ], [ %i.an, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i ], [ %i.an, %bb.ae ]
  %i.db = getelementptr i8, ptr %.0.i.i, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !249 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.dc, null
  br i1 %.not.i2.i, label %rb_const_lookup.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %RCLASS_EXT_READABLE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.dd = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !114
  %.not.i.i.i3.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i3.i, label %bb.aj, label %rb_vm_lock_enter.exit.i.i

end_hunk_0
