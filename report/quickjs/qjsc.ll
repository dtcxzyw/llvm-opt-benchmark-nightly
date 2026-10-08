Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/qjsc?download=true
inline.NumInlined: 38
inline.NumDeleted: 8
begin_hunk_0_@namelist_find:bb.a
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden ptr @jsc_module_loader(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #8 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [1000 x i8], align 16             ; 13 uses
  %i.d = load i32, ptr @cmodule_list.1, align 8, !tbaa !13 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr @cmodule_list.0, align 8, !tbaa !15
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c, !llvm.loop !1

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %1) #21
  %.not.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.not.i, label %namelist_find.exit, label %bb.b

namelist_find.exit:                               ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %i.l = load i32, ptr @init_module_list.1, align 8, !tbaa !13 ; 4 uses
  %i.m = load i32, ptr @init_module_list.2, align 4, !tbaa !14
  %i.n = icmp eq i32 %i.l, %i.m
  %.pre.i = load ptr, ptr @init_module_list.0, align 8, !tbaa !15 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %namelist_find.exit
  %i.o = ashr i32 %i.l, 1
  %i.p = add i32 %i.l, 4
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 24
  %i.t = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.s) #19 ; 2 uses
  store ptr %i.t, ptr @init_module_list.0, align 8, !tbaa !15
  store i32 %i.q, ptr @init_module_list.2, align 4, !tbaa !14
  %.pre20.i = load i32, ptr @init_module_list.1, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %namelist_find.exit
  %i.u = phi i32 [ %.pre20.i, %bb.d ], [ %i.l, %namelist_find.exit ] ; 2 uses
  %i.v = phi ptr [ %i.t, %bb.d ], [ %.pre.i, %namelist_find.exit ]
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr @init_module_list.1, align 8, !tbaa !13
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %i.z = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.h) #20
  store ptr %i.z, ptr %i.y, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %namelist_add.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.k) #20
  br label %namelist_add.exit

namelist_add.exit:                                ; preds = %bb.e, %bb.f
  %.sink.i = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !20
  %i.ad = tail call ptr @JS_NewCModule(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @js_module_dummy_init) #20
  br label %bb.q

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.ae = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #21 ; 2 uses
  %.not.i39 = icmp ult i64 %i.ae, 3
  br i1 %.not.i39, label %js__has_suffix.exit.thread, label %js__has_suffix.exit

js__has_suffix.exit:                              ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -3 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = xor i16 %i.ah, 29486
  %i.aj = getelementptr i8, ptr %i.ag, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 %i.al, 111
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not9.i.not = icmp eq i32 %i.ap, 0
  br i1 %.not9.i.not, label %bb.g, label %js__has_suffix.exit.thread

bb.g:                                             ; preds = %js__has_suffix.exit
  %i.aq = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #20 ; 0 uses
  br label %bb.q

js__has_suffix.exit.thread:                       ; preds = %.loopexit, %js__has_suffix.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ar = call ptr @js_load_file(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #20 ; 3 uses
  %.not37 = icmp eq ptr %i.ar, null
  br i1 %.not37, label %bb.h, label %bb.i

bb.h:                                             ; preds = %js__has_suffix.exit.thread
  %i.as = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #20 ; 0 uses
  br label %.critedge

bb.i:                                             ; preds = %js__has_suffix.exit.thread
  %i.at = load i64, ptr %i.b, align 8, !tbaa !23
  %i.au = call { i64, i64 } @JS_Eval(ptr noundef %0, ptr noundef nonnull %i.ar, i64 noundef %i.at, ptr noundef nonnull %1, i32 noundef 33) #20 ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0      ; 3 uses
  %i.aw = extractvalue { i64, i64 } %i.au, 1      ; 3 uses
  call void @js_free(ptr noundef %0, ptr noundef nonnull %i.ar) #20
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = icmp eq i64 %i.ax, 6
  br i1 %i.ay, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @get_c_name(ptr noundef %i.c, i64 noundef 1000, ptr noundef nonnull %1)
  %i.az = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i41, label %namelist_find.exit47.thread

.lr.ph.i41:                                       ; preds = %bb.j
  %i.bb = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  %wide.trip.count.i42 = zext nneg i32 %i.az to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %indvars.iv.next.i45, %wide.trip.count.i42
  br i1 %exitcond.not.i46, label %namelist_find.exit47.thread, label %bb.l, !llvm.loop !1

bb.l:                                             ; preds = %bb.k, %.lr.ph.i41
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i45, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %indvars.iv.i43
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.be = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull readonly dereferenceable(1) %i.c) #21
  %.not.not.i44 = icmp eq i32 %i.be, 0
  br i1 %.not.not.i44, label %namelist_find.exit47, label %bb.k

namelist_find.exit47:                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.bg = icmp ugt i64 %i.bf, 984
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %namelist_find.exit47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 984
  store i8 0, ptr %i.bh, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %namelist_find.exit47
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c, i32 noundef 1) #20 ; 0 uses
  %i.bj = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.n, %namelist_find.exit.i
  %i.bl = phi i32 [ %i.bs, %namelist_find.exit.i ], [ %i.bj, %bb.n ]
  %.015.i = phi i32 [ %i.bq, %namelist_find.exit.i ], [ 1, %bb.n ]
  %i.bm = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  %wide.trip.count.i.i = zext nneg i32 %i.bl to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.p, !llvm.loop !1

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !18
  %i.bp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bo, ptr noundef nonnull readonly dereferenceable(1) %i.a) #21
  %.not.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.not.i.i, label %namelist_find.exit.i, label %bb.o

namelist_find.exit.i:                             ; preds = %bb.p
  %i.bq = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c, i32 noundef %i.bq) #20 ; 0 uses
  %i.bs = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %namelist_find.exit.i, %bb.o, %bb.n
  %i.bu = load i8, ptr %i.a, align 16, !tbaa !24  ; 2 uses
  %.not16.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not16.i.i, label %find_unique_cname.exit, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.loopexit.i, %.lr.ph.i11.i
  %i.bv = phi i8 [ %i.bx, %.lr.ph.i11.i ], [ %i.bu, %.loopexit.i ]
  %.015.i.i.idx = phi i64 [ %.015.i.i.add, %.lr.ph.i11.i ], [ 0, %.loopexit.i ] ; 3 uses
  %.0914.i.i = phi ptr [ %i.bw, %.lr.ph.i11.i ], [ %i.a, %.loopexit.i ]
  %.015.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.015.i.i.idx
  %i.bw = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 1 ; 2 uses
  %.015.i.i.add = add nuw nsw i64 %.015.i.i.idx, 1 ; 2 uses
  store i8 %i.bv, ptr %.015.i.i.ptr, align 1, !tbaa !24
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24  ; 2 uses
  %i.by = icmp ne i8 %i.bx, 0
  %.not.i.i = icmp samesign ult i64 %.015.i.i.idx, 998
  %or.cond.i.i = select i1 %i.by, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i11.i, label %find_unique_cname.exit.loopexit

find_unique_cname.exit.loopexit:                  ; preds = %.lr.ph.i11.i
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.c, i64 %.015.i.i.add
  br label %find_unique_cname.exit

find_unique_cname.exit:                           ; preds = %find_unique_cname.exit.loopexit, %.loopexit.i
  %.0.lcssa.i.i = phi ptr [ %i.c, %.loopexit.i ], [ %.ptr.le, %find_unique_cname.exit.loopexit ]
  store i8 0, ptr %.0.lcssa.i.i, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %namelist_find.exit47.thread

namelist_find.exit47.thread:                      ; preds = %bb.k, %bb.j, %find_unique_cname.exit
  %i.bz = load ptr, ptr @outfile, align 8, !tbaa !26
  call fastcc void @output_object_code(ptr noundef %0, ptr noundef %i.bz, i64 %i.av, i64 %i.aw, ptr noundef %i.c, i1 noundef zeroext true)
  %i.ca = inttoptr i64 %i.av to ptr
  call void @JS_FreeValue(ptr noundef %0, i64 %i.av, i64 %i.aw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.q

.critedge:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.q

bb.q:                                             ; preds = %namelist_add.exit, %namelist_find.exit47.thread, %.critedge, %bb.g
  %.1 = phi ptr [ null, %.critedge ], [ null, %bb.g ], [ %i.ad, %namelist_add.exit ], [ %i.ca, %namelist_find.exit47.thread ]
  ret ptr %.1
}

declare ptr @JS_NewCModule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal noundef i32 @js_module_dummy_init(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #10 {
bb.a:
  tail call void @abort() #22
  unreachable
}

declare { i64, i64 } @JS_ThrowReferenceError(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @js_load_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare { i64, i64 } @JS_Eval(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @js_free(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @get_c_name(ptr noundef nonnull %0, i64 noundef range(i64 1000, 1025) %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.037 = select i1 %.not, ptr %2, ptr %i.b       ; 4 uses
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.037, i32 noundef 46) #21 ; 2 uses
  %.not41 = icmp eq ptr %i.c, null
  br i1 %.not41, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.037) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %.037 to i64
  %i.g = sub i64 %i.e, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.036 = phi i64 [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr @c_ident_prefix, align 8, !tbaa !27 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 %1
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.h, align 1, !tbaa !24    ; 2 uses
  %.not16.i = icmp eq i8 %i.k, 0
  br i1 %.not16.i, label %js__pstrcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.l = phi i8 [ %i.o, %.lr.ph.i ], [ %i.k, %bb.d ]
  %.015.i = phi ptr [ %i.n, %.lr.ph.i ], [ %0, %bb.d ] ; 2 uses
  %.0914.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.h, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0914.i, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 3 uses
  store i8 %i.l, ptr %.015.i, align 1, !tbaa !24
  %i.o = load i8, ptr %i.m, align 1, !tbaa !24    ; 2 uses
  %i.p = icmp ne i8 %i.o, 0
  %.not.i = icmp ult ptr %i.n, %i.j
  %or.cond.i = select i1 %i.p, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %js__pstrcpy.exit

js__pstrcpy.exit:                                 ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi ptr [ %0, %bb.d ], [ %i.n, %.lr.ph.i ]
  store i8 0, ptr %.0.lcssa.i, align 1, !tbaa !24
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %.not45 = icmp eq i64 %.036, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %js__pstrcpy.exit
  %i.s = ptrtoint ptr %0 to i64
  %i.t = add nsw i64 %1, -1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.044 = phi ptr [ %i.r, %.lr.ph ], [ %.1, %bb.g ] ; 4 uses
  %.03543 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.g ] ; 2 uses
  %i.u = ptrtoint ptr %.044 to i64
  %i.v = sub i64 %i.u, %i.s
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.037, i64 %.03543
  %i.y = load i8, ptr %i.x, align 1, !tbaa !24    ; 4 uses
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  %i.aa = add i8 %i.y, -65
  %or.cond3 = icmp ult i8 %i.aa, 26
  %or.cond42 = or i1 %or.cond, %or.cond3
  %i.ab = add i8 %i.y, -97
  %or.cond5 = icmp ult i8 %i.ab, 26
  %i.ac = select i1 %or.cond42, i1 true, i1 %or.cond5
  %.034 = select i1 %i.ac, i8 %i.y, i8 95
  %i.ad = getelementptr inbounds nuw i8, ptr %.044, i64 1
  store i8 %.034, ptr %.044, align 1, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi ptr [ %i.ad, %bb.f ], [ %.044, %bb.e ] ; 2 uses
  %i.ae = add nuw i64 %.03543, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %.036
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.g, %js__pstrcpy.exit
  %.0.lcssa = phi ptr [ %i.r, %js__pstrcpy.exit ], [ %.1, %bb.g ]
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_object_code(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 %2, i64 %3, ptr noundef nonnull %4, i1 noundef zeroext %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load i32, ptr @strip, align 4, !tbaa !28 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = icmp sgt i32 %i.b, 1
  %spec.select = select i1 %i.c, i32 49, i32 17
  %.0 = select i1 %.not, i32 1, i32 %spec.select
  %i.d = call ptr @JS_WriteObject(ptr noundef %0, ptr noundef nonnull %i.a, i64 %2, i64 %3, i32 noundef %.0) #20 ; 4 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @js_std_dump_error(ptr noundef %0) #20
  call void @exit(i32 noundef 1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = zext i1 %5 to i32
  %i.f = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 4 uses
  %i.g = load i32, ptr @cname_list.2, align 4, !tbaa !14
  %i.h = icmp eq i32 %i.f, %i.g
  %.pre.i = load ptr, ptr @cname_list.0, align 8, !tbaa !15 ; 2 uses
  br i1 %i.h, label %bb.d, label %namelist_add.exit

bb.d:                                             ; preds = %bb.c
  %i.i = ashr i32 %i.f, 1
  %i.j = add i32 %i.f, 4
  %i.k = add i32 %i.j, %i.i                       ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, 24
  %i.n = call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.m) #19 ; 2 uses
  store ptr %i.n, ptr @cname_list.0, align 8, !tbaa !15
  store i32 %i.k, ptr @cname_list.2, align 4, !tbaa !14
  %.pre20.i = load i32, ptr @cname_list.1, align 8, !tbaa !13
  br label %namelist_add.exit

namelist_add.exit:                                ; preds = %bb.c, %bb.d
  %i.o = phi i32 [ %.pre20.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %i.n, %bb.d ], [ %.pre.i, %bb.c ]
  %i.q = add nsw i32 %i.o, 1
  store i32 %i.q, ptr @cname_list.1, align 8, !tbaa !13
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [24 x i8], ptr %i.p, i64 %i.r ; 3 uses
  %i.t = call noalias ptr @strdup(ptr noundef nonnull readonly %4) #20
  store ptr %i.t, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %i.e, ptr %i.v, align 8, !tbaa !20
  %i.w = load i32, ptr @output_type, align 4, !tbaa !28
  %i.x = icmp eq i32 %i.w, 2
  %i.y = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %namelist_add.exit
  %i.z = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef %i.y, ptr noundef %1) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %namelist_add.exit
  %i.aa = trunc i64 %i.y to i32
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %4, i32 noundef %i.aa) #20 ; 0 uses
end_hunk_0
begin_hunk_1_@main:bb.a
  %.not222 = icmp eq i8 %i.w, 0
  br i1 %.not222, label %.critedge, label %.preheader931

.preheader931:                                    ; preds = %bb.f, %bb.c
  %.1175.ph = phi ptr [ %i.v, %bb.f ], [ %i.n, %bb.c ]
  %.1173.ph = phi ptr [ %i.r, %bb.f ], [ @.str.4, %bb.c ]
  %.2162.ph = phi ptr [ %.0160, %bb.f ], [ null, %bb.c ]
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader931
  %.sroa.0.1 = phi ptr [ %.sroa.0.0501, %.preheader931 ], [ %.sroa.0.1.be, %.backedge ] ; 19 uses
  %.sroa.7.1 = phi i32 [ %.sroa.7.0502, %.preheader931 ], [ %.sroa.7.1.be, %.backedge ] ; 22 uses
  %.sroa.11.1 = phi i32 [ %.sroa.11.0503, %.preheader931 ], [ %.sroa.11.1.be, %.backedge ] ; 18 uses
  %.1205 = phi ptr [ %.0204504, %.preheader931 ], [ %.1205.be, %.backedge ] ; 16 uses
  %.1199 = phi ptr [ %.0198505, %.preheader931 ], [ %.1199.be, %.backedge ] ; 16 uses
  %.1194 = phi ptr [ %.0193506, %.preheader931 ], [ %.1194.be, %.backedge ] ; 16 uses
  %.1188 = phi i32 [ %.0187507, %.preheader931 ], [ %.1188.be, %.backedge ] ; 16 uses
  %.1183 = phi i64 [ %.0182508, %.preheader931 ], [ %.1183.be, %.backedge ] ; 17 uses
  %.1178 = phi i1 [ %.0177509, %.preheader931 ], [ %.1178.be, %.backedge ] ; 17 uses
  %.1175 = phi ptr [ %.1175.ph, %.preheader931 ], [ %.2176319, %.backedge ] ; 3 uses
  %.1173 = phi ptr [ %.1173.ph, %.preheader931 ], [ @.str.4, %.backedge ] ; 2 uses
  %.2162 = phi ptr [ %.2162.ph, %.preheader931 ], [ %.2162.be, %.backedge ] ; 3 uses
  %.1 = phi i32 [ %i.p, %.preheader931 ], [ %.1.be, %.backedge ] ; 37 uses
  %i.x = load i8, ptr %.1175, align 1, !tbaa !24  ; 3 uses
  %.not223 = icmp eq i8 %i.x, 0
  br i1 %.not223, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %.1173, align 1, !tbaa !24
  %.not224 = icmp eq i8 %i.y, 0
  br i1 %.not224, label %.loopexit, label %.thread

.critedge2:                                       ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.1175, i64 1 ; 3 uses
  %.not242 = icmp eq ptr %.2162, null
  br i1 %.not242, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %.not243 = icmp eq i8 %i.aa, 0
  %spec.select = select i1 %.not243, ptr null, ptr %i.z
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge2
  %.3163 = phi ptr [ %.2162, %.critedge2 ], [ %spec.select, %bb.i ]
  switch i8 %i.x, label %.thread [
    i8 104, label %bb.k
    i8 63, label %bb.k
  ]

.thread:                                          ; preds = %bb.h, %bb.j
  %.3163320 = phi ptr [ %.3163, %bb.j ], [ %.2162, %bb.h ] ; 23 uses
  %.2176319 = phi ptr [ %i.z, %bb.j ], [ %.1175, %bb.h ]
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1173, ptr noundef nonnull dereferenceable(5) @.str.5) #21
  %.not244 = icmp eq i32 %i.ab, 0
  br i1 %.not244, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.j, %.thread
  %i.ac = call ptr @JS_GetVersion() #20
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.ac, i32 noundef 1048576) ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.l:                                             ; preds = %.thread
  switch i8 %i.x, label %bb.bb [
    i8 98, label %bb.m
    i8 111, label %bb.n
    i8 101, label %bb.q
    i8 110, label %bb.r
    i8 78, label %bb.u
    i8 67, label %.backedge
    i8 109, label %bb.x
    i8 77, label %bb.y
    i8 68, label %bb.ag
    i8 80, label %bb.al
    i8 115, label %bb.am
    i8 112, label %bb.an
    i8 83, label %bb.ar
  ]

.backedge:                                        ; preds = %bb.l, %bb.u, %check_hasarg.exit256, %bb.r, %check_hasarg.exit254, %bb.n, %check_hasarg.exit, %parse_limit.exit, %bb.aq, %bb.am, %bb.al, %namelist_add.exit273, %namelist_add.exit, %bb.x, %bb.q, %bb.m
  %.sroa.0.1.be = phi ptr [ %.sroa.0.1, %bb.am ], [ %.sroa.0.1, %bb.aq ], [ %.sroa.0.1, %parse_limit.exit ], [ %.sroa.0.1, %bb.m ], [ %.sroa.0.1, %check_hasarg.exit ], [ %.sroa.0.1, %bb.n ], [ %.sroa.0.1, %bb.q ], [ %.sroa.0.1, %check_hasarg.exit254 ], [ %.sroa.0.1, %bb.r ], [ %.sroa.0.1, %check_hasarg.exit256 ], [ %.sroa.0.1, %bb.u ], [ %.sroa.0.1, %bb.l ], [ %.sroa.0.1, %bb.x ], [ %.sroa.0.1, %namelist_add.exit ], [ %.sroa.0.5, %namelist_add.exit273 ], [ %.sroa.0.1, %bb.al ]
  %.sroa.7.1.be = phi i32 [ %.sroa.7.1, %bb.am ], [ %.sroa.7.1, %bb.aq ], [ %.sroa.7.1, %parse_limit.exit ], [ %.sroa.7.1, %bb.m ], [ %.sroa.7.1, %check_hasarg.exit ], [ %.sroa.7.1, %bb.n ], [ %.sroa.7.1, %bb.q ], [ %.sroa.7.1, %check_hasarg.exit254 ], [ %.sroa.7.1, %bb.r ], [ %.sroa.7.1, %check_hasarg.exit256 ], [ %.sroa.7.1, %bb.u ], [ %.sroa.7.1, %bb.l ], [ %.sroa.7.1, %bb.x ], [ %.sroa.7.1, %namelist_add.exit ], [ %i.ct, %namelist_add.exit273 ], [ %.sroa.7.1, %bb.al ]
  %.sroa.11.1.be = phi i32 [ %.sroa.11.1, %bb.am ], [ %.sroa.11.1, %bb.aq ], [ %.sroa.11.1, %parse_limit.exit ], [ %.sroa.11.1, %bb.m ], [ %.sroa.11.1, %check_hasarg.exit ], [ %.sroa.11.1, %bb.n ], [ %.sroa.11.1, %bb.q ], [ %.sroa.11.1, %check_hasarg.exit254 ], [ %.sroa.11.1, %bb.r ], [ %.sroa.11.1, %check_hasarg.exit256 ], [ %.sroa.11.1, %bb.u ], [ %.sroa.11.1, %bb.l ], [ %.sroa.11.1, %bb.x ], [ %.sroa.11.1, %namelist_add.exit ], [ %.sroa.11.4, %namelist_add.exit273 ], [ %.sroa.11.1, %bb.al ]
  %.1205.be = phi ptr [ %.1205, %bb.am ], [ %.1205, %bb.aq ], [ %.1205, %parse_limit.exit ], [ %.1205, %bb.m ], [ %i.aj, %check_hasarg.exit ], [ %.3163320, %bb.n ], [ %.1205, %bb.q ], [ %.1205, %check_hasarg.exit254 ], [ %.1205, %bb.r ], [ %.1205, %check_hasarg.exit256 ], [ %.1205, %bb.u ], [ %.1205, %bb.l ], [ %.1205, %bb.x ], [ %.1205, %namelist_add.exit ], [ %.1205, %namelist_add.exit273 ], [ %.1205, %bb.al ]
  %.1199.be = phi ptr [ %.1199, %bb.am ], [ %.1199, %bb.aq ], [ %.1199, %parse_limit.exit ], [ %.1199, %bb.m ], [ %.1199, %check_hasarg.exit ], [ %.1199, %bb.n ], [ %.1199, %bb.q ], [ %.1199, %check_hasarg.exit254 ], [ %.1199, %bb.r ], [ %i.av, %check_hasarg.exit256 ], [ %.3163320, %bb.u ], [ %.1199, %bb.l ], [ %.1199, %bb.x ], [ %.1199, %namelist_add.exit ], [ %.1199, %namelist_add.exit273 ], [ %.1199, %bb.al ]
  %.1194.be = phi ptr [ %.1194, %bb.am ], [ %.1194, %bb.aq ], [ %.1194, %parse_limit.exit ], [ %.1194, %bb.m ], [ %.1194, %check_hasarg.exit ], [ %.1194, %bb.n ], [ %.1194, %bb.q ], [ %i.ap, %check_hasarg.exit254 ], [ %.3163320, %bb.r ], [ %.1194, %check_hasarg.exit256 ], [ %.1194, %bb.u ], [ %.1194, %bb.l ], [ %.1194, %bb.x ], [ %.1194, %namelist_add.exit ], [ %.1194, %namelist_add.exit273 ], [ %.1194, %bb.al ]
  %.1188.be = phi i32 [ %.1188, %bb.am ], [ %.1188, %bb.aq ], [ %.1188, %parse_limit.exit ], [ %.1188, %bb.m ], [ %.1188, %check_hasarg.exit ], [ %.1188, %bb.n ], [ %.1188, %bb.q ], [ %.1188, %check_hasarg.exit254 ], [ %.1188, %bb.r ], [ %.1188, %check_hasarg.exit256 ], [ %.1188, %bb.u ], [ 0, %bb.l ], [ 1, %bb.x ], [ %.1188, %namelist_add.exit ], [ %.1188, %namelist_add.exit273 ], [ %.1188, %bb.al ]
  %.1183.be = phi i64 [ %.1183, %bb.am ], [ %.1183, %bb.aq ], [ %.07.i, %parse_limit.exit ], [ %.1183, %bb.m ], [ %.1183, %check_hasarg.exit ], [ %.1183, %bb.n ], [ %.1183, %bb.q ], [ %.1183, %check_hasarg.exit254 ], [ %.1183, %bb.r ], [ %.1183, %check_hasarg.exit256 ], [ %.1183, %bb.u ], [ %.1183, %bb.l ], [ %.1183, %bb.x ], [ %.1183, %namelist_add.exit ], [ %.1183, %namelist_add.exit273 ], [ %.1183, %bb.al ]
  %.1178.be = phi i1 [ %.1178, %bb.am ], [ %.1178, %bb.aq ], [ %.1178, %parse_limit.exit ], [ %.1178, %bb.m ], [ %.1178, %check_hasarg.exit ], [ %.1178, %bb.n ], [ %.1178, %bb.q ], [ %.1178, %check_hasarg.exit254 ], [ %.1178, %bb.r ], [ %.1178, %check_hasarg.exit256 ], [ %.1178, %bb.u ], [ %.1178, %bb.l ], [ %.1178, %bb.x ], [ %.1178, %namelist_add.exit ], [ %.1178, %namelist_add.exit273 ], [ false, %bb.al ]
  %.2162.be = phi ptr [ %.3163320, %bb.am ], [ %.9169, %bb.aq ], [ %.10170, %parse_limit.exit ], [ %.3163320, %bb.m ], [ %i.aj, %check_hasarg.exit ], [ %.3163320, %bb.n ], [ %.3163320, %bb.q ], [ %i.ap, %check_hasarg.exit254 ], [ %.3163320, %bb.r ], [ %i.av, %check_hasarg.exit256 ], [ %.3163320, %bb.u ], [ %.3163320, %bb.l ], [ %.3163320, %bb.x ], [ %.7167, %namelist_add.exit ], [ %.8168, %namelist_add.exit273 ], [ %.3163320, %bb.al ]
  %.1.be = phi i32 [ %.1, %bb.am ], [ %.7, %bb.aq ], [ %.8, %parse_limit.exit ], [ %.1, %bb.m ], [ %i.ag, %check_hasarg.exit ], [ %.1, %bb.n ], [ %.1, %bb.q ], [ %i.am, %check_hasarg.exit254 ], [ %.1, %bb.r ], [ %i.as, %check_hasarg.exit256 ], [ %.1, %bb.u ], [ %.1, %bb.l ], [ %.1, %bb.x ], [ %.5, %namelist_add.exit ], [ %.6, %namelist_add.exit273 ], [ %.1, %bb.al ]
  br label %bb.g, !llvm.loop !31

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr @output_type, align 4, !tbaa !28
  br label %.backedge

bb.n:                                             ; preds = %bb.l
  %.not252 = icmp eq ptr %.3163320, null
  br i1 %.not252, label %bb.o, label %.backedge

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp slt i32 %.1, %0
  br i1 %.not.i, label %check_hasarg.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.33, i32 noundef 111) #24 ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

check_hasarg.exit:                                ; preds = %bb.o
  %i.ag = add nsw i32 %.1, 1
  %i.ah = sext i32 %.1 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27 ; 2 uses
  br label %.backedge

bb.q:                                             ; preds = %bb.l
  store i32 1, ptr @output_type, align 4, !tbaa !28
  br label %.backedge

bb.r:                                             ; preds = %bb.l
  %.not251 = icmp eq ptr %.3163320, null
  br i1 %.not251, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r
  %.not.i253 = icmp slt i32 %.1, %0
  br i1 %.not.i253, label %check_hasarg.exit254, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.33, i32 noundef 110) #24 ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

check_hasarg.exit254:                             ; preds = %bb.s
  %i.am = add nsw i32 %.1, 1
  %i.an = sext i32 %.1 to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %1, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27 ; 2 uses
  br label %.backedge

bb.u:                                             ; preds = %bb.l
  %.not250 = icmp eq ptr %.3163320, null
  br i1 %.not250, label %bb.v, label %.backedge

bb.v:                                             ; preds = %bb.u
  %.not.i255 = icmp slt i32 %.1, %0
  br i1 %.not.i255, label %check_hasarg.exit256, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.33, i32 noundef 78) #24 ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

check_hasarg.exit256:                             ; preds = %bb.v
  %i.as = add nsw i32 %.1, 1
  %i.at = sext i32 %.1 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  br label %.backedge

bb.x:                                             ; preds = %bb.l
  br label %.backedge

bb.y:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %.not248 = icmp eq ptr %.3163320, null
  br i1 %.not248, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not.i257 = icmp slt i32 %.1, %0
  br i1 %.not.i257, label %check_hasarg.exit258, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.33, i32 noundef 77) #24 ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

check_hasarg.exit258:                             ; preds = %bb.z
  %i.ay = add nsw i32 %.1, 1
  %i.az = sext i32 %.1 to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %1, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27
  br label %bb.ab

bb.ab:                                            ; preds = %check_hasarg.exit258, %bb.y
  %.7167 = phi ptr [ %.3163320, %bb.y ], [ %i.bb, %check_hasarg.exit258 ] ; 3 uses
  %.5 = phi i32 [ %.1, %bb.y ], [ %i.ay, %check_hasarg.exit258 ]
  %i.bc = load i8, ptr %.7167, align 1, !tbaa !24 ; 2 uses
  %.not16.i = icmp eq i8 %i.bc, 0
  br i1 %.not16.i, label %js__pstrcpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.i
  %i.bd = phi i8 [ %i.bf, %.lr.ph.i ], [ %i.bc, %bb.ab ]
  %.015.i.idx = phi i64 [ %.015.i.add, %.lr.ph.i ], [ 0, %bb.ab ] ; 3 uses
  %.0914.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.7167, %bb.ab ]
  %.015.i.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.015.i.idx
  %i.be = getelementptr inbounds nuw i8, ptr %.0914.i, i64 1 ; 2 uses
  %.015.i.add = add nuw nsw i64 %.015.i.idx, 1    ; 2 uses
  store i8 %i.bd, ptr %.015.i.ptr, align 1, !tbaa !24
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !24  ; 2 uses
  %i.bg = icmp ne i8 %i.bf, 0
  %.not.i259 = icmp samesign ult i64 %.015.i.idx, 1022
  %or.cond.i = select i1 %i.bg, i1 %.not.i259, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %js__pstrcpy.exit.loopexit

js__pstrcpy.exit.loopexit:                        ; preds = %.lr.ph.i
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.e, i64 %.015.i.add
  br label %js__pstrcpy.exit

js__pstrcpy.exit:                                 ; preds = %js__pstrcpy.exit.loopexit, %bb.ab
  %.0.lcssa.i = phi ptr [ %i.e, %bb.ab ], [ %.ptr.le, %js__pstrcpy.exit.loopexit ]
  store i8 0, ptr %.0.lcssa.i, align 1, !tbaa !24
  %i.bh = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 44) #21 ; 3 uses
  %.not249 = icmp eq ptr %i.bh, null
  br i1 %.not249, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %js__pstrcpy.exit
  store i8 0, ptr %i.bh, align 1, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !24  ; 2 uses
  %.not16.i260 = icmp eq i8 %i.bj, 0
  br i1 %.not16.i260, label %js__pstrcpy.exit267, label %.lr.ph.i261

.lr.ph.i261:                                      ; preds = %bb.ac, %.lr.ph.i261
  %i.bk = phi i8 [ %i.bm, %.lr.ph.i261 ], [ %i.bj, %bb.ac ]
  %.015.i262.idx = phi i64 [ %.015.i262.add, %.lr.ph.i261 ], [ 0, %bb.ac ] ; 3 uses
  %.0914.i263 = phi ptr [ %i.bl, %.lr.ph.i261 ], [ %i.bi, %bb.ac ]
  %.015.i262.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.015.i262.idx
  %i.bl = getelementptr inbounds nuw i8, ptr %.0914.i263, i64 1 ; 2 uses
  %.015.i262.add = add nuw nsw i64 %.015.i262.idx, 1 ; 2 uses
  store i8 %i.bk, ptr %.015.i262.ptr, align 1, !tbaa !24
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !24  ; 2 uses
  %i.bn = icmp ne i8 %i.bm, 0
  %.not.i264 = icmp samesign ult i64 %.015.i262.idx, 1022
  %or.cond.i265 = select i1 %i.bn, i1 %.not.i264, i1 false
  br i1 %or.cond.i265, label %.lr.ph.i261, label %js__pstrcpy.exit267.loopexit

js__pstrcpy.exit267.loopexit:                     ; preds = %.lr.ph.i261
  %.ptr334.le = getelementptr inbounds nuw i8, ptr %i.f, i64 %.015.i262.add
  br label %js__pstrcpy.exit267

js__pstrcpy.exit267:                              ; preds = %js__pstrcpy.exit267.loopexit, %bb.ac
  %.0.lcssa.i266 = phi ptr [ %i.f, %bb.ac ], [ %.ptr334.le, %js__pstrcpy.exit267.loopexit ]
  store i8 0, ptr %.0.lcssa.i266, align 1, !tbaa !24
  br label %bb.ae

bb.ad:                                            ; preds = %js__pstrcpy.exit
  call fastcc void @get_c_name(ptr noundef %i.f, i64 noundef 1024, ptr noundef nonnull %i.e)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %js__pstrcpy.exit267
  %i.bo = load i32, ptr @cmodule_list.1, align 8, !tbaa !13 ; 4 uses
  %i.bp = load i32, ptr @cmodule_list.2, align 4, !tbaa !14
  %i.bq = icmp eq i32 %i.bo, %i.bp
  %.pre.i = load ptr, ptr @cmodule_list.0, align 8, !tbaa !15 ; 2 uses
  br i1 %i.bq, label %bb.af, label %namelist_add.exit

bb.af:                                            ; preds = %bb.ae
  %i.br = ashr i32 %i.bo, 1
  %i.bs = add i32 %i.bo, 4
  %i.bt = add i32 %i.bs, %i.br                    ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.bu, 24
  %i.bw = call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.bv) #19 ; 2 uses
  store ptr %i.bw, ptr @cmodule_list.0, align 8, !tbaa !15
  store i32 %i.bt, ptr @cmodule_list.2, align 4, !tbaa !14
  %.pre20.i = load i32, ptr @cmodule_list.1, align 8, !tbaa !13
  br label %namelist_add.exit

namelist_add.exit:                                ; preds = %bb.ae, %bb.af
  %i.bx = phi i32 [ %.pre20.i, %bb.af ], [ %i.bo, %bb.ae ] ; 2 uses
  %i.by = phi ptr [ %i.bw, %bb.af ], [ %.pre.i, %bb.ae ]
  %i.bz = add nsw i32 %i.bx, 1
  store i32 %i.bz, ptr @cmodule_list.1, align 8, !tbaa !13
  %i.ca = sext i32 %i.bx to i64
  %i.cb = getelementptr inbounds [24 x i8], ptr %i.by, i64 %i.ca ; 3 uses
  %i.cc = call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #20
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !18
  %i.cd = call noalias ptr @strdup(ptr noundef nonnull readonly %i.f) #20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i32 0, ptr %i.cf, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.backedge

bb.ag:                                            ; preds = %bb.l
  %.not247 = icmp eq ptr %.3163320, null
  br i1 %.not247, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %.not.i269 = icmp slt i32 %.1, %0
  br i1 %.not.i269, label %check_hasarg.exit270, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ch = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.33, i32 noundef 68) #24 ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

check_hasarg.exit270:                             ; preds = %bb.ah
  %i.ci = add nsw i32 %.1, 1
  %i.cj = sext i32 %.1 to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !27
  br label %bb.aj

bb.aj:                                            ; preds = %check_hasarg.exit270, %bb.ag
  %.8168 = phi ptr [ %.3163320, %bb.ag ], [ %i.cl, %check_hasarg.exit270 ] ; 2 uses
  %.6 = phi i32 [ %.1, %bb.ag ], [ %i.ci, %check_hasarg.exit270 ]
  %i.cm = icmp eq i32 %.sroa.7.1, %.sroa.11.1
  br i1 %i.cm, label %bb.ak, label %namelist_add.exit273

bb.ak:                                            ; preds = %bb.aj
  %i.cn = ashr i32 %.sroa.7.1, 1
  %i.co = add i32 %.sroa.7.1, 4
  %i.cp = add i32 %i.co, %i.cn                    ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.cq, 24
  %i.cs = call ptr @realloc(ptr noundef %.sroa.0.1, i64 noundef %i.cr) #19
  br label %namelist_add.exit273

namelist_add.exit273:                             ; preds = %bb.aj, %bb.ak
  %.sroa.0.5 = phi ptr [ %i.cs, %bb.ak ], [ %.sroa.0.1, %bb.aj ] ; 2 uses
  %.sroa.11.4 = phi i32 [ %i.cp, %bb.ak ], [ %.sroa.11.1, %bb.aj ]
  %i.ct = add nsw i32 %.sroa.7.1, 1
  %i.cu = sext i32 %.sroa.7.1 to i64
  %i.cv = getelementptr inbounds [24 x i8], ptr %.sroa.0.5, i64 %i.cu ; 3 uses
  %i.cw = call noalias ptr @strdup(ptr noundef readonly %.8168) #20
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 0, ptr %i.cy, align 8, !tbaa !20
  br label %.backedge

bb.al:                                            ; preds = %bb.l
  br label %.backedge

bb.am:                                            ; preds = %bb.l
  %i.cz = load i32, ptr @strip, align 4, !tbaa !28
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr @strip, align 4, !tbaa !28
  br label %.backedge

bb.an:                                            ; preds = %bb.l
  %.not246 = icmp eq ptr %.3163320, null
  br i1 %.not246, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %.not.i274 = icmp slt i32 %.1, %0
  br i1 %.not.i274, label %check_hasarg.exit275, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.33, i32 noundef 112) #24 ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

check_hasarg.exit275:                             ; preds = %bb.ao
  %i.dd = add nsw i32 %.1, 1
  %i.de = sext i32 %.1 to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %1, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !27
  br label %bb.aq

bb.aq:                                            ; preds = %check_hasarg.exit275, %bb.an
  %.9169 = phi ptr [ %.3163320, %bb.an ], [ %i.dg, %check_hasarg.exit275 ] ; 2 uses
  %.7 = phi i32 [ %.1, %bb.an ], [ %i.dd, %check_hasarg.exit275 ]
  store ptr %.9169, ptr @c_ident_prefix, align 8, !tbaa !27
  br label %.backedge

bb.ar:                                            ; preds = %bb.l
  %.not245 = icmp eq ptr %.3163320, null
  br i1 %.not245, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.not.i276 = icmp slt i32 %.1, %0
  br i1 %.not.i276, label %check_hasarg.exit277, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.di = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dh, ptr noundef nonnull @.str.33, i32 noundef 83) #24 ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

check_hasarg.exit277:                             ; preds = %bb.as
  %i.dj = add nsw i32 %.1, 1
  %i.dk = sext i32 %.1 to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !27
  br label %bb.au

bb.au:                                            ; preds = %check_hasarg.exit277, %bb.ar
  %.10170 = phi ptr [ %.3163320, %bb.ar ], [ %i.dm, %check_hasarg.exit277 ] ; 6 uses
  %.8 = phi i32 [ %.1, %bb.ar ], [ %i.dj, %check_hasarg.exit277 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.dn = call double @strtod(ptr noundef %.10170, ptr noundef nonnull %i.c) #20
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !27  ; 3 uses
  %i.dp = icmp eq ptr %i.do, %.10170
  br i1 %i.dp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.dr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.35, ptr noundef %.10170) #24 ; 0 uses
  br label %parse_limit.exit

bb.aw:                                            ; preds = %bb.au
  %i.ds = load i8, ptr %i.do, align 1, !tbaa !24  ; 2 uses
  %.not.i278 = icmp eq i8 %i.ds, 0
  br i1 %.not.i278, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %switch.tableidx = add i8 %i.ds, -66            ; 3 uses
  %i.du = icmp ult i8 %switch.tableidx, 44
  br i1 %i.du, label %switch.hole_check, label %bb.ay

bb.ay:                                            ; preds = %switch.hole_check, %bb.ax
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.36, ptr noundef %.10170) #24 ; 0 uses
  br label %parse_limit.exit

switch.hole_check:                                ; preds = %bb.ax
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 11136850201121, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ay

switch.lookup:                                    ; preds = %switch.hole_check
  %i.dx = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.main, i64 %i.dx
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  %i.dy = load i8, ptr %i.dt, align 1, !tbaa !24
  %.not11.i = icmp eq i8 %i.dy, 0
  br i1 %.not11.i, label %bb.ba, label %bb.az

end_hunk_1
begin_hunk_2_@main:bb.a
  %i.ej = add i32 %i.ei, %i.eh                    ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul nsw i64 %i.ek, 24
  %i.em = call ptr @realloc(ptr noundef %.pre.i279, i64 noundef %i.el) #19 ; 2 uses
  store ptr %i.em, ptr @cmodule_list.0, align 8, !tbaa !15
  store i32 %i.ej, ptr @cmodule_list.2, align 4, !tbaa !14
  %.pre20.i280 = load i32, ptr @cmodule_list.1, align 8, !tbaa !13
  br label %namelist_add.exit281

namelist_add.exit281:                             ; preds = %.critedge.thread, %bb.bc
  %i.en = phi i32 [ %i.ej, %bb.bc ], [ %i.ef, %.critedge.thread ] ; 3 uses
  %i.eo = phi i32 [ %.pre20.i280, %bb.bc ], [ %i.ee, %.critedge.thread ] ; 3 uses
  %.pre.i282 = phi ptr [ %i.em, %bb.bc ], [ %.pre.i279, %.critedge.thread ] ; 3 uses
  %i.ep = add nsw i32 %i.eo, 1                    ; 3 uses
  store i32 %i.ep, ptr @cmodule_list.1, align 8, !tbaa !13
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds [24 x i8], ptr %.pre.i282, i64 %i.eq ; 3 uses
  %i.es = call noalias dereferenceable_or_null(8) ptr @strdup(ptr noundef nonnull @.str.6) #20
  store ptr %i.es, ptr %i.er, align 8, !tbaa !18
  %i.et = call noalias dereferenceable_or_null(4) ptr @strdup(ptr noundef nonnull @.str.7) #20
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i32 0, ptr %i.ev, align 8, !tbaa !20
  %i.ew = icmp eq i32 %i.ep, %i.en
  br i1 %i.ew, label %bb.bd, label %namelist_add.exit284

bb.bd:                                            ; preds = %namelist_add.exit281
  %i.ex = ashr i32 %i.en, 1
  %i.ey = add i32 %i.eo, 5
  %i.ez = add i32 %i.ey, %i.ex                    ; 3 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul nsw i64 %i.fa, 24
  %i.fc = call ptr @realloc(ptr noundef nonnull %.pre.i282, i64 noundef %i.fb) #19 ; 2 uses
  store ptr %i.fc, ptr @cmodule_list.0, align 8, !tbaa !15
  store i32 %i.ez, ptr @cmodule_list.2, align 4, !tbaa !14
  %.pre20.i283 = load i32, ptr @cmodule_list.1, align 8, !tbaa !13
  br label %namelist_add.exit284

namelist_add.exit284:                             ; preds = %namelist_add.exit281, %bb.bd
  %i.fd = phi i32 [ %i.ez, %bb.bd ], [ %i.en, %namelist_add.exit281 ] ; 3 uses
  %i.fe = phi i32 [ %.pre20.i283, %bb.bd ], [ %i.ep, %namelist_add.exit281 ] ; 3 uses
  %.pre.i285 = phi ptr [ %i.fc, %bb.bd ], [ %.pre.i282, %namelist_add.exit281 ] ; 3 uses
  %i.ff = add nsw i32 %i.fe, 1                    ; 3 uses
  store i32 %i.ff, ptr @cmodule_list.1, align 8, !tbaa !13
  %i.fg = sext i32 %i.fe to i64
  %i.fh = getelementptr inbounds [24 x i8], ptr %.pre.i285, i64 %i.fg ; 3 uses
  %i.fi = call noalias dereferenceable_or_null(7) ptr @strdup(ptr noundef nonnull @.str.8) #20
  store ptr %i.fi, ptr %i.fh, align 8, !tbaa !18
  %i.fj = call noalias dereferenceable_or_null(3) ptr @strdup(ptr noundef nonnull @.str.9) #20
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !19
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i32 0, ptr %i.fl, align 8, !tbaa !20
  %i.fm = icmp eq i32 %i.ff, %i.fd
  br i1 %i.fm, label %bb.be, label %namelist_add.exit287

bb.be:                                            ; preds = %namelist_add.exit284
  %i.fn = ashr i32 %i.fd, 1
  %i.fo = add i32 %i.fe, 5
  %i.fp = add i32 %i.fo, %i.fn                    ; 3 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = mul nsw i64 %i.fq, 24
  %i.fs = call ptr @realloc(ptr noundef nonnull %.pre.i285, i64 noundef %i.fr) #19 ; 2 uses
  store ptr %i.fs, ptr @cmodule_list.0, align 8, !tbaa !15
  store i32 %i.fp, ptr @cmodule_list.2, align 4, !tbaa !14
  %.pre20.i286 = load i32, ptr @cmodule_list.1, align 8, !tbaa !13
  br label %namelist_add.exit287

namelist_add.exit287:                             ; preds = %namelist_add.exit284, %bb.be
  %i.ft = phi i32 [ %i.fp, %bb.be ], [ %i.fd, %namelist_add.exit284 ] ; 3 uses
  %i.fu = phi i32 [ %.pre20.i286, %bb.be ], [ %i.ff, %namelist_add.exit284 ] ; 3 uses
  %.pre.i288 = phi ptr [ %i.fs, %bb.be ], [ %.pre.i285, %namelist_add.exit284 ] ; 3 uses
  %i.fv = add nsw i32 %i.fu, 1                    ; 3 uses
  store i32 %i.fv, ptr @cmodule_list.1, align 8, !tbaa !13
  %i.fw = sext i32 %i.fu to i64
  %i.fx = getelementptr inbounds [24 x i8], ptr %.pre.i288, i64 %i.fw ; 3 uses
  %i.fy = call noalias dereferenceable_or_null(10) ptr @strdup(ptr noundef nonnull @.str.10) #20
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !18
  %i.fz = call noalias dereferenceable_or_null(6) ptr @strdup(ptr noundef nonnull @.str.11) #20
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !19
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i32 0, ptr %i.gb, align 8, !tbaa !20
  %i.gc = icmp eq i32 %i.fv, %i.ft
  br i1 %i.gc, label %bb.bf, label %namelist_add.exit290

bb.bf:                                            ; preds = %namelist_add.exit287
  %i.gd = ashr i32 %i.ft, 1
  %i.ge = add i32 %i.fu, 5
  %i.gf = add i32 %i.ge, %i.gd                    ; 3 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul nsw i64 %i.gg, 24
  %i.gi = call ptr @realloc(ptr noundef nonnull %.pre.i288, i64 noundef %i.gh) #19 ; 2 uses
  store ptr %i.gi, ptr @cmodule_list.0, align 8, !tbaa !15
  store i32 %i.gf, ptr @cmodule_list.2, align 4, !tbaa !14
  %.pre20.i289 = load i32, ptr @cmodule_list.1, align 8, !tbaa !13
  br label %namelist_add.exit290

namelist_add.exit290:                             ; preds = %namelist_add.exit287, %bb.bf
  %i.gj = phi i32 [ %i.gf, %bb.bf ], [ %i.ft, %namelist_add.exit287 ] ; 3 uses
  %i.gk = phi i32 [ %.pre20.i289, %bb.bf ], [ %i.fv, %namelist_add.exit287 ] ; 3 uses
  %.pre.i291 = phi ptr [ %i.gi, %bb.bf ], [ %.pre.i288, %namelist_add.exit287 ] ; 3 uses
  %i.gl = add nsw i32 %i.gk, 1                    ; 3 uses
  store i32 %i.gl, ptr @cmodule_list.1, align 8, !tbaa !13
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr inbounds [24 x i8], ptr %.pre.i291, i64 %i.gm ; 3 uses
  %i.go = call noalias dereferenceable_or_null(4) ptr @strdup(ptr noundef nonnull @.str.7) #20
  store ptr %i.go, ptr %i.gn, align 8, !tbaa !18
  %i.gp = call noalias dereferenceable_or_null(4) ptr @strdup(ptr noundef nonnull @.str.7) #20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i32 0, ptr %i.gr, align 8, !tbaa !20
  %i.gs = icmp eq i32 %i.gl, %i.gj
  br i1 %i.gs, label %bb.bg, label %namelist_add.exit293

bb.bg:                                            ; preds = %namelist_add.exit290
  %i.gt = ashr i32 %i.gj, 1
  %i.gu = add i32 %i.gk, 5
  %i.gv = add i32 %i.gu, %i.gt                    ; 3 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = mul nsw i64 %i.gw, 24
  %i.gy = call ptr @realloc(ptr noundef nonnull %.pre.i291, i64 noundef %i.gx) #19 ; 2 uses
  store ptr %i.gy, ptr @cmodule_list.0, align 8, !tbaa !15
  store i32 %i.gv, ptr @cmodule_list.2, align 4, !tbaa !14
  %.pre20.i292 = load i32, ptr @cmodule_list.1, align 8, !tbaa !13
  br label %namelist_add.exit293

namelist_add.exit293:                             ; preds = %namelist_add.exit290, %bb.bg
  %i.gz = phi i32 [ %i.gv, %bb.bg ], [ %i.gj, %namelist_add.exit290 ] ; 2 uses
  %i.ha = phi i32 [ %.pre20.i292, %bb.bg ], [ %i.gl, %namelist_add.exit290 ] ; 3 uses
  %.pre.i294 = phi ptr [ %i.gy, %bb.bg ], [ %.pre.i291, %namelist_add.exit290 ] ; 3 uses
  %i.hb = add nsw i32 %i.ha, 1                    ; 3 uses
  store i32 %i.hb, ptr @cmodule_list.1, align 8, !tbaa !13
  %i.hc = sext i32 %i.ha to i64
  %i.hd = getelementptr inbounds [24 x i8], ptr %.pre.i294, i64 %i.hc ; 3 uses
  %i.he = call noalias dereferenceable_or_null(3) ptr @strdup(ptr noundef nonnull @.str.9) #20
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !18
  %i.hf = call noalias dereferenceable_or_null(3) ptr @strdup(ptr noundef nonnull @.str.9) #20
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !19
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store i32 0, ptr %i.hh, align 8, !tbaa !20
  %i.hi = icmp eq i32 %i.hb, %i.gz
  br i1 %i.hi, label %bb.bh, label %namelist_add.exit296

bb.bh:                                            ; preds = %namelist_add.exit293
  %i.hj = ashr i32 %i.gz, 1
  %i.hk = add i32 %i.ha, 5
  %i.hl = add i32 %i.hk, %i.hj                    ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = mul nsw i64 %i.hm, 24
  %i.ho = call ptr @realloc(ptr noundef nonnull %.pre.i294, i64 noundef %i.hn) #19 ; 2 uses
  store ptr %i.ho, ptr @cmodule_list.0, align 8, !tbaa !15
  store i32 %i.hl, ptr @cmodule_list.2, align 4, !tbaa !14
  %.pre20.i295 = load i32, ptr @cmodule_list.1, align 8, !tbaa !13
  br label %namelist_add.exit296

namelist_add.exit296:                             ; preds = %namelist_add.exit293, %bb.bh
  %i.hp = phi i32 [ %.pre20.i295, %bb.bh ], [ %i.hb, %namelist_add.exit293 ] ; 2 uses
  %i.hq = phi ptr [ %i.ho, %bb.bh ], [ %.pre.i294, %namelist_add.exit293 ]
  %i.hr = add nsw i32 %i.hp, 1
  store i32 %i.hr, ptr @cmodule_list.1, align 8, !tbaa !13
  %i.hs = sext i32 %i.hp to i64
  %i.ht = getelementptr inbounds [24 x i8], ptr %i.hq, i64 %i.hs ; 3 uses
  %i.hu = call noalias dereferenceable_or_null(6) ptr @strdup(ptr noundef nonnull @.str.11) #20
  store ptr %i.hu, ptr %i.ht, align 8, !tbaa !18
  %i.hv = call noalias dereferenceable_or_null(6) ptr @strdup(ptr noundef nonnull @.str.11) #20
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !19
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store i32 0, ptr %i.hx, align 8, !tbaa !20
  br label %bb.bi

bb.bi:                                            ; preds = %namelist_add.exit296, %.critedge
  %.11737 = phi i32 [ %.11738, %namelist_add.exit296 ], [ %.11, %.critedge ] ; 2 uses
  %.0182.lcssa735 = phi i64 [ %.0182.lcssa736, %namelist_add.exit296 ], [ %.0182.lcssa, %.critedge ] ; 2 uses
  %.0187.lcssa733 = phi i32 [ %.0187.lcssa734, %namelist_add.exit296 ], [ %.0187.lcssa, %.critedge ] ; 2 uses
  %.0193.lcssa731 = phi ptr [ %.0193.lcssa732, %namelist_add.exit296 ], [ %.0193.lcssa, %.critedge ] ; 2 uses
  %.0198.lcssa729 = phi ptr [ %.0198.lcssa730, %namelist_add.exit296 ], [ %.0198.lcssa, %.critedge ]
  %.0204.lcssa727 = phi ptr [ %.0204.lcssa728, %namelist_add.exit296 ], [ %.0204.lcssa, %.critedge ] ; 2 uses
  %.sroa.7.0.lcssa725 = phi i32 [ %.sroa.7.0.lcssa726, %namelist_add.exit296 ], [ %.sroa.7.0.lcssa, %.critedge ] ; 2 uses
  %.sroa.0.0.lcssa723 = phi ptr [ %.sroa.0.0.lcssa724, %namelist_add.exit296 ], [ %.sroa.0.0.lcssa, %.critedge ]
  %.not225 = icmp slt i32 %.11737, %0
  br i1 %.not225, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @help()
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %.not226 = icmp eq ptr %.0204.lcssa727, null
  %spec.store.select = select i1 %.not226, ptr @.str.12, ptr %.0204.lcssa727 ; 2 uses
  %i.hy = load i8, ptr %spec.store.select, align 1, !tbaa !24 ; 2 uses
  %.not16.i297 = icmp eq i8 %i.hy, 0
  br i1 %.not16.i297, label %js__pstrcpy.exit304, label %.lr.ph.i298

.lr.ph.i298:                                      ; preds = %bb.bk, %.lr.ph.i298
  %i.hz = phi i8 [ %i.ib, %.lr.ph.i298 ], [ %i.hy, %bb.bk ]
  %.015.i299.idx = phi i64 [ %.015.i299.add, %.lr.ph.i298 ], [ 0, %bb.bk ] ; 3 uses
  %.0914.i300 = phi ptr [ %i.ia, %.lr.ph.i298 ], [ %spec.store.select, %bb.bk ]
  %.015.i299.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.015.i299.idx
  %i.ia = getelementptr inbounds nuw i8, ptr %.0914.i300, i64 1 ; 2 uses
  %.015.i299.add = add nuw nsw i64 %.015.i299.idx, 1 ; 2 uses
  store i8 %i.hz, ptr %.015.i299.ptr, align 1, !tbaa !24
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !24  ; 2 uses
  %i.ic = icmp ne i8 %i.ib, 0
  %.not.i301 = icmp samesign ult i64 %.015.i299.idx, 1022
  %or.cond.i302 = select i1 %i.ic, i1 %.not.i301, i1 false
  br i1 %or.cond.i302, label %.lr.ph.i298, label %js__pstrcpy.exit304.loopexit

js__pstrcpy.exit304.loopexit:                     ; preds = %.lr.ph.i298
  %.ptr335.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.015.i299.add
  br label %js__pstrcpy.exit304

js__pstrcpy.exit304:                              ; preds = %js__pstrcpy.exit304.loopexit, %bb.bk
  %.0.lcssa.i303 = phi ptr [ %i.d, %bb.bk ], [ %.ptr335.le, %js__pstrcpy.exit304.loopexit ]
  store i8 0, ptr %.0.lcssa.i303, align 1, !tbaa !24
  %i.id = load i32, ptr @output_type, align 4, !tbaa !28
  %i.ie = icmp eq i32 %i.id, 2
  %.str.13..str.14 = select i1 %i.ie, ptr @.str.13, ptr @.str.14
  %i.if = call noalias ptr @fopen(ptr noundef nonnull %i.d, ptr noundef nonnull %.str.13..str.14) ; 17 uses
  %.not227 = icmp eq ptr %i.if, null
  br i1 %.not227, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %js__pstrcpy.exit304
  call void @perror(ptr noundef nonnull %i.d) #25
  call void @exit(i32 noundef 1) #23
  unreachable

bb.bm:                                            ; preds = %js__pstrcpy.exit304
  store ptr %i.if, ptr @outfile, align 8, !tbaa !26
  %i.ig = call ptr @JS_NewRuntime() #20           ; 3 uses
  %i.ih = call ptr @JS_NewContext(ptr noundef %i.ig) #20 ; 8 uses
  call void @JS_SetModuleLoaderFunc(ptr noundef %i.ig, ptr noundef null, ptr noundef nonnull @jsc_module_loader, ptr noundef null) #20
  %i.ii = load i32, ptr @output_type, align 4, !tbaa !28
  %.not228 = icmp eq i32 %i.ii, 2
  br i1 %.not228, label %.lr.ph551, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %fwrite = call i64 @fwrite(ptr nonnull @.str.15, i64 64, i64 1, ptr nonnull %i.if) ; 0 uses
  %.pr = load i32, ptr @output_type, align 4, !tbaa !28
  switch i32 %.pr, label %.lr.ph551 [
    i32 1, label %bb.bo
    i32 0, label %bb.bp
  ]

bb.bo:                                            ; preds = %bb.bn
  %fwrite230 = call i64 @fwrite(ptr nonnull @.str.16, i64 27, i64 1, ptr nonnull %i.if) ; 0 uses
  br label %.lr.ph551

bb.bp:                                            ; preds = %bb.bn
  %fwrite229 = call i64 @fwrite(ptr nonnull @.str.17, i64 23, i64 1, ptr nonnull %i.if) ; 0 uses
  br label %.lr.ph551

.lr.ph551:                                        ; preds = %bb.bo, %bb.bp, %bb.bn, %bb.bm
  %i.ij = icmp slt i32 %.0187.lcssa733, 0
  %.not35.i = icmp eq ptr %.0193.lcssa731, null
  %i.ik = sext i32 %.11737 to i64
  br label %bb.bq

.preheader336:                                    ; preds = %compile_file.exit
  %i.il = icmp sgt i32 %.sroa.7.0.lcssa725, 0
  br i1 %i.il, label %.lr.ph553.preheader, label %._crit_edge

.lr.ph553.preheader:                              ; preds = %.preheader336
  %wide.trip.count = zext nneg i32 %.sroa.7.0.lcssa725 to i64
  br label %.lr.ph553

bb.bq:                                            ; preds = %.lr.ph551, %compile_file.exit
  %indvars.iv = phi i64 [ %i.ik, %.lr.ph551 ], [ %indvars.iv.next, %compile_file.exit ] ; 2 uses
  %.5203550 = phi ptr [ %.0198.lcssa729, %.lr.ph551 ], [ null, %compile_file.exit ] ; 3 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !27 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.io = call ptr @js_load_file(ptr noundef %i.ih, ptr noundef nonnull %i.b, ptr noundef %i.in) #20 ; 4 uses
  %.not.i305 = icmp eq ptr %i.io, null
  br i1 %.not.i305, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ip = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.iq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ip, ptr noundef nonnull @.str.38, ptr noundef %i.in) #24 ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

bb.bs:                                            ; preds = %bb.bq
  br i1 %i.ij, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ir = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.in) #21 ; 2 uses
  %.not.i.i = icmp ult i64 %i.ir, 4
  br i1 %.not.i.i, label %js__has_suffix.exit.thread.i, label %js__has_suffix.exit.i

js__has_suffix.exit.i:                            ; preds = %bb.bt
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -4
  %i.iu = load i32, ptr %i.it, align 1
  %i.iv = icmp ne i32 %i.iu, 1936354606
  %i.iw = zext i1 %i.iv to i32
  %.not9.i.not.i = icmp eq i32 %i.iw, 0
  br i1 %.not9.i.not.i, label %.thread.i, label %js__has_suffix.exit.thread.i

js__has_suffix.exit.thread.i:                     ; preds = %js__has_suffix.exit.i, %bb.bt
  %i.ix = load i64, ptr %i.b, align 8, !tbaa !23
  %i.iy = call zeroext i1 @JS_DetectModule(ptr noundef nonnull %i.io, i64 noundef %i.ix) #20
  %.fr.i = freeze i1 %i.iy
  %i.iz = zext i1 %.fr.i to i32
  br label %bb.bu

bb.bu:                                            ; preds = %js__has_suffix.exit.thread.i, %bb.bs
  %.0.i306 = phi i32 [ %.0187.lcssa733, %bb.bs ], [ %i.iz, %js__has_suffix.exit.thread.i ]
  %.not34.i = icmp eq i32 %.0.i306, 0
  %spec.select.i = select i1 %.not34.i, i32 32, i32 33
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bu, %js__has_suffix.exit.i
  %i.ja = phi i32 [ 33, %js__has_suffix.exit.i ], [ %spec.select.i, %bb.bu ]
  %i.jb = load i64, ptr %i.b, align 8, !tbaa !23
  %i.jc = select i1 %.not35.i, ptr %i.in, ptr %.0193.lcssa731
  %i.jd = call { i64, i64 } @JS_Eval(ptr noundef %i.ih, ptr noundef nonnull %i.io, i64 noundef %i.jb, ptr noundef %i.jc, i32 noundef %i.ja) #20 ; 2 uses
  %i.je = extractvalue { i64, i64 } %i.jd, 1      ; 3 uses
  %i.jf = and i64 %i.je, 4294967295
  %i.jg = icmp eq i64 %i.jf, 6
  br i1 %i.jg, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.thread.i
  call void @js_std_dump_error(ptr noundef %i.ih) #20
  call void @exit(i32 noundef 1) #23
  unreachable

bb.bw:                                            ; preds = %.thread.i
  call void @js_free(ptr noundef %i.ih, ptr noundef nonnull %i.io) #20
  %.not36.i = icmp eq ptr %.5203550, null
  br i1 %.not36.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jh = load i8, ptr %.5203550, align 1, !tbaa !24 ; 2 uses
  %.not16.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not16.i.i, label %js__pstrcpy.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bx, %.lr.ph.i.i
  %i.ji = phi i8 [ %i.jk, %.lr.ph.i.i ], [ %i.jh, %bb.bx ]
  %.015.i.idx.i = phi i64 [ %.015.i.add.i, %.lr.ph.i.i ], [ 0, %bb.bx ] ; 3 uses
  %.0914.i.i = phi ptr [ %i.jj, %.lr.ph.i.i ], [ %.5203550, %bb.bx ]
  %.015.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.i.idx.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 1 ; 2 uses
  %.015.i.add.i = add nuw nsw i64 %.015.i.idx.i, 1 ; 2 uses
  store i8 %i.ji, ptr %.015.i.ptr.i, align 1, !tbaa !24
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !24  ; 2 uses
  %i.jl = icmp ne i8 %i.jk, 0
  %.not.i37.i = icmp samesign ult i64 %.015.i.idx.i, 1022
  %or.cond.i.i = select i1 %i.jl, i1 %.not.i37.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %js__pstrcpy.exit.loopexit.i

js__pstrcpy.exit.loopexit.i:                      ; preds = %.lr.ph.i.i
  %.ptr.le.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.i.add.i
  br label %js__pstrcpy.exit.i

js__pstrcpy.exit.i:                               ; preds = %js__pstrcpy.exit.loopexit.i, %bb.bx
  %.0.lcssa.i.i = phi ptr [ %i.a, %bb.bx ], [ %.ptr.le.i, %js__pstrcpy.exit.loopexit.i ]
  store i8 0, ptr %.0.lcssa.i.i, align 1, !tbaa !24
  br label %compile_file.exit

bb.by:                                            ; preds = %bb.bw
  call fastcc void @get_c_name(ptr noundef %i.a, i64 noundef 1024, ptr noundef %i.in)
  br label %compile_file.exit

compile_file.exit:                                ; preds = %js__pstrcpy.exit.i, %bb.by
  %i.jm = extractvalue { i64, i64 } %i.jd, 0      ; 2 uses
  call fastcc void @output_object_code(ptr noundef %i.ih, ptr noundef nonnull %i.if, i64 %i.jm, i64 %i.je, ptr noundef %i.a, i1 noundef zeroext false)
  call void @JS_FreeValue(ptr noundef %i.ih, i64 %i.jm, i64 %i.je) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond.not, label %.preheader336, label %bb.bq, !llvm.loop !32

bb.bz:                                            ; preds = %.lr.ph553
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond662.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count
  br i1 %exitcond662.not, label %._crit_edge, label %.lr.ph553, !llvm.loop !33

.lr.ph553:                                        ; preds = %.lr.ph553.preheader, %bb.bz
  %indvars.iv659 = phi i64 [ 0, %.lr.ph553.preheader ], [ %indvars.iv.next660, %bb.bz ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.lcssa723, i64 %indvars.iv659 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !18
  %i.jp = call ptr @jsc_module_loader(ptr noundef %i.ih, ptr noundef %i.jo, ptr poison)
  %.not240 = icmp eq ptr %i.jp, null
  br i1 %.not240, label %bb.ca, label %bb.bz

bb.ca:                                            ; preds = %.lr.ph553
  %i.jq = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.jr = load ptr, ptr %i.jn, align 8, !tbaa !18
  %i.js = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jq, ptr noundef nonnull @.str.18, ptr noundef %i.jr) #24 ; 0 uses
  call void @exit(i32 noundef 1) #23
  unreachable

._crit_edge:                                      ; preds = %bb.bz, %.preheader336
  %i.jt = load i32, ptr @output_type, align 4, !tbaa !28
  %i.ju = icmp eq i32 %i.jt, 1
  br i1 %i.ju, label %bb.cb, label %bb.ci

bb.cb:                                            ; preds = %._crit_edge
  %fwrite231 = call i64 @fwrite(ptr nonnull @.str.19, i64 122, i64 1, ptr nonnull %i.if) ; 0 uses
  %i.jv = load i32, ptr @init_module_list.1, align 8, !tbaa !13
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph556, label %.preheader

.preheader:                                       ; preds = %.lr.ph556, %bb.cb
  %i.jx = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 2 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %.lr.ph558.preheader, label %._crit_edge559

.lr.ph558.preheader:                              ; preds = %.preheader
  %.pre672 = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  br label %.lr.ph558

.lr.ph556:                                        ; preds = %bb.cb, %.lr.ph556
  %indvars.iv663 = phi i64 [ %indvars.iv.next664, %.lr.ph556 ], [ 0, %bb.cb ] ; 2 uses
  %i.jz = load ptr, ptr @init_module_list.0, align 8, !tbaa !15
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %indvars.iv663 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !19 ; 2 uses
  %i.kd = load ptr, ptr %i.ka, align 8, !tbaa !18
  %i.ke = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.if, ptr noundef nonnull @.str.20, ptr noundef %i.kc, ptr noundef %i.kc, ptr noundef %i.kd) #20 ; 0 uses
  %indvars.iv.next664 = add nuw nsw i64 %indvars.iv663, 1 ; 2 uses
  %i.kf = load i32, ptr @init_module_list.1, align 8, !tbaa !13
  %i.kg = sext i32 %i.kf to i64
  %i.kh = icmp slt i64 %indvars.iv.next664, %i.kg
  br i1 %i.kh, label %.lr.ph556, label %.preheader, !llvm.loop !34

.lr.ph558:                                        ; preds = %.lr.ph558.preheader, %bb.cd
  %i.ki = phi i32 [ %i.jx, %.lr.ph558.preheader ], [ %i.kp, %bb.cd ]
  %i.kj = phi ptr [ %.pre672, %.lr.ph558.preheader ], [ %i.kq, %bb.cd ] ; 2 uses
  %indvars.iv666 = phi i64 [ 0, %.lr.ph558.preheader ], [ %indvars.iv.next667, %bb.cd ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.kj, i64 %indvars.iv666 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !20
  %.not239 = icmp eq i32 %i.km, 0
  br i1 %.not239, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph558
  %i.kn = load ptr, ptr %i.kk, align 8, !tbaa !18 ; 2 uses
  %i.ko = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.if, ptr noundef nonnull @.str.21, ptr noundef %i.kn, ptr noundef %i.kn) #20 ; 0 uses
  %.pre = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  %.pre673 = load i32, ptr @cname_list.1, align 8, !tbaa !13
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph558
  %i.kp = phi i32 [ %.pre673, %bb.cc ], [ %i.ki, %.lr.ph558 ] ; 2 uses
  %i.kq = phi ptr [ %.pre, %bb.cc ], [ %i.kj, %.lr.ph558 ]
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1 ; 2 uses
  %i.kr = sext i32 %i.kp to i64
  %i.ks = icmp slt i64 %indvars.iv.next667, %i.kr
  br i1 %i.ks, label %.lr.ph558, label %._crit_edge559, !llvm.loop !35

._crit_edge559:                                   ; preds = %bb.cd, %.preheader
  %fwrite232 = call i64 @fwrite(ptr nonnull @.str.22, i64 17, i64 1, ptr nonnull %i.if) ; 0 uses
  %fwrite233 = call i64 @fwrite(ptr nonnull @main_c_template1, i64 198, i64 1, ptr nonnull %i.if) ; 0 uses
  %.not234 = icmp eq i64 %.0182.lcssa735, 0
  br i1 %.not234, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge559
  %i.kt = trunc i64 %.0182.lcssa735 to i32
  %i.ku = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.if, ptr noundef nonnull @.str.23, i32 noundef %i.kt) #20 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge559
  %fwrite235 = call i64 @fwrite(ptr nonnull @.str.24, i64 89, i64 1, ptr nonnull %i.if) ; 0 uses
  %fwrite236 = call i64 @fwrite(ptr nonnull @.str.25, i64 72, i64 1, ptr nonnull %i.if) ; 0 uses
  %i.kv = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 2 uses
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph562.preheader, label %._crit_edge563

.lr.ph562.preheader:                              ; preds = %bb.cf
  %.pre675 = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  br label %.lr.ph562

.lr.ph562:                                        ; preds = %.lr.ph562.preheader, %bb.ch
  %i.kx = phi i32 [ %i.kv, %.lr.ph562.preheader ], [ %i.le, %bb.ch ]
  %i.ky = phi ptr [ %.pre675, %.lr.ph562.preheader ], [ %i.lf, %bb.ch ] ; 2 uses
  %indvars.iv669 = phi i64 [ 0, %.lr.ph562.preheader ], [ %indvars.iv.next670, %bb.ch ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %indvars.iv669 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !20
  %.not238 = icmp eq i32 %i.lb, 0
  br i1 %.not238, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph562
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !18 ; 2 uses
  %i.ld = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.if, ptr noundef nonnull @.str.26, ptr noundef %i.lc, ptr noundef %i.lc) #20 ; 0 uses
  %.pre674 = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  %.pre676 = load i32, ptr @cname_list.1, align 8, !tbaa !13
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph562
  %i.le = phi i32 [ %.pre676, %bb.cg ], [ %i.kx, %.lr.ph562 ] ; 2 uses
  %i.lf = phi ptr [ %.pre674, %bb.cg ], [ %i.ky, %.lr.ph562 ]
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %i.lg = sext i32 %i.le to i64
  %i.lh = icmp slt i64 %indvars.iv.next670, %i.lg
  br i1 %i.lh, label %.lr.ph562, label %._crit_edge563, !llvm.loop !36

._crit_edge563:                                   ; preds = %bb.ch, %bb.cf
  %fwrite237 = call i64 @fwrite(ptr nonnull @main_c_template2, i64 154, i64 1, ptr nonnull %i.if) ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge563, %._crit_edge
  call void @JS_FreeContext(ptr noundef %i.ih) #20
  call void @JS_FreeRuntime(ptr noundef %i.ig) #20
  %i.li = call i32 @fclose(ptr noundef nonnull %i.if) ; 0 uses
  %i.lj = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph.i307.preheader, label %namelist_free.exit

.lr.ph.i307.preheader:                            ; preds = %bb.ci
  %i.ll = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  br label %.lr.ph.i307

.lr.ph.i307:                                      ; preds = %.lr.ph.i307.preheader, %.lr.ph.i307
  %i.lm = phi i32 [ %i.ln, %.lr.ph.i307 ], [ %i.lj, %.lr.ph.i307.preheader ]
  %i.ln = add nsw i32 %i.lm, -1                   ; 4 uses
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %i.ll, i64 %i.lo ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !18
  call void @free(ptr noundef %i.lq) #20
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !19
  call void @free(ptr noundef %i.ls) #20
  %i.lt = icmp sgt i32 %i.ln, 0
  br i1 %i.lt, label %.lr.ph.i307, label %namelist_free.exit.loopexit, !llvm.loop !0

namelist_free.exit.loopexit:                      ; preds = %.lr.ph.i307
  store i32 %i.ln, ptr @cname_list.1, align 8, !tbaa !13
  br label %namelist_free.exit

namelist_free.exit:                               ; preds = %namelist_free.exit.loopexit, %bb.ci
  %i.lu = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  call void @free(ptr noundef %i.lu) #20
  store ptr null, ptr @cname_list.0, align 8, !tbaa !15
  store i32 0, ptr @cname_list.2, align 4, !tbaa !14
  %i.lv = load i32, ptr @cmodule_list.1, align 8, !tbaa !13 ; 2 uses
  %i.lw = icmp sgt i32 %i.lv, 0
  br i1 %i.lw, label %.lr.ph.i308.preheader, label %namelist_free.exit309

.lr.ph.i308.preheader:                            ; preds = %namelist_free.exit
  %i.lx = load ptr, ptr @cmodule_list.0, align 8, !tbaa !15
  br label %.lr.ph.i308

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.preheader, %.lr.ph.i308
  %i.ly = phi i32 [ %i.lz, %.lr.ph.i308 ], [ %i.lv, %.lr.ph.i308.preheader ]
  %i.lz = add nsw i32 %i.ly, -1                   ; 4 uses
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [24 x i8], ptr %i.lx, i64 %i.ma ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !18
end_hunk_2
