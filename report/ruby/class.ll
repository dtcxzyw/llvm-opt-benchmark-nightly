Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/class?download=true
inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@rb_keyword_error_new:bb.a
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %i.h = icmp sgt i64 %.0.i, 1
  %i.i = zext i1 %i.h to i32
  %i.j = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.25, ptr noundef %0, i32 noundef %i.i, ptr noundef nonnull @.str.26) #18 ; 4 uses
  %i.k = icmp sgt i64 %.0.i, 0
  br i1 %i.k, label %bb.d, label %.thread

bb.d:                                             ; preds = %rb_array_len.exit
  %i.l = tail call i64 @rb_str_cat(i64 noundef %i.j, ptr noundef nonnull @.str.27, i64 noundef 2) #18 ; 0 uses
  %i.m = getelementptr i8, ptr %i.a, i64 16
  %i.n = getelementptr i8, ptr %i.a, i64 32
  %i.o = add nsw i64 %.0.i, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.013 = phi i64 [ 0, %bb.d ], [ %i.w, %bb.g ]   ; 3 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19
  %i.q = and i64 %i.p, 8192
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.f, label %RARRAY_AREF.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !69
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.r, %bb.f ], [ %i.m, %bb.e ]
  %i.s = getelementptr [8 x i8], ptr %.0.i.i, i64 %.013
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = tail call i64 @rb_inspect(i64 noundef %i.t) #18
  %i.v = tail call i64 @rb_str_append(i64 noundef %i.j, i64 noundef %i.u) #18 ; 0 uses
  %exitcond.not = icmp eq i64 %.013, %i.o
  br i1 %exitcond.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %RARRAY_AREF.exit
  %i.w = add nuw nsw i64 %.013, 1
  %i.x = tail call i64 @rb_str_cat(i64 noundef %i.j, ptr noundef nonnull @.str.28, i64 noundef 2) #18 ; 0 uses
  br label %bb.e

.thread:                                          ; preds = %RARRAY_AREF.exit, %rb_array_len.exit
  %i.y = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.z = tail call i64 @rb_exc_new_str(i64 noundef %i.y, i64 noundef %i.j) #18
  ret i64 %i.z
}

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_inspect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_extract_keywords(ptr nofree noundef nonnull captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load i64, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = and i64 %i.d, 32768
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 16
  %i.g = and i64 %i.f, 15
  br label %RHASH_EMPTY_P.exit

bb.c:                                             ; preds = %bb.a
  %i.h = add i64 %i.b, 24
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !140
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  %i.l = icmp eq i64 %.0.i.i, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RHASH_EMPTY_P.exit
  store i64 0, ptr %0, align 8, !tbaa !17
  br label %bb.i

bb.e:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.m = ptrtoint ptr %i.a to i64
  call void @rb_hash_foreach(i64 noundef %i.b, ptr noundef nonnull @separate_symbol, i64 noundef %i.m) #18
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17   ; 4 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !17
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %RBASIC_SET_CLASS.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 5 uses
  %i.r = load i64, ptr @rb_cHash, align 8, !tbaa !17
  %.not10 = icmp eq i64 %i.q, %i.r
  br i1 %.not10, label %RBASIC_SET_CLASS.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = inttoptr i64 %i.o to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 8
  store i64 %i.q, ptr %i.t, align 8, !tbaa !17
  %i.u = icmp eq i64 %i.q, 0
  %i.v = and i64 %i.q, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %RBASIC_SET_CLASS.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @rb_gc_writebarrier(i64 noundef %i.o, i64 noundef %i.q) #18
  br label %RBASIC_SET_CLASS.exit

RBASIC_SET_CLASS.exit:                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.y = load i64, ptr %i.a, align 16, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %RBASIC_SET_CLASS.exit, %bb.d
  %.0 = phi i64 [ %i.b, %bb.d ], [ %i.y, %RBASIC_SET_CLASS.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @separate_symbol(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.b = and i64 %0, 255
  %i.c = icmp eq i64 %i.b, 12
  br i1 %i.c, label %RB_SYMBOL_P.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %RB_SYMBOL_P.exit.thread8, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit.thread8:                         ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.a, i64 8
  br label %bb.c

RB_SYMBOL_P.exit:                                 ; preds = %bb.b
  %i.i = inttoptr i64 %0 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  %.fr10 = freeze i64 %i.j
  %i.k = and i64 %.fr10, 31
  %i.l = icmp eq i64 %i.k, 20
  %i.m = getelementptr i8, ptr %i.a, i64 8
  br i1 %i.l, label %RB_SYMBOL_P.exit.thread, label %bb.c

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.a, %RB_SYMBOL_P.exit
  br label %bb.c

bb.c:                                             ; preds = %RB_SYMBOL_P.exit.thread8, %RB_SYMBOL_P.exit, %RB_SYMBOL_P.exit.thread
  %i.n = phi ptr [ %i.a, %RB_SYMBOL_P.exit.thread ], [ %i.m, %RB_SYMBOL_P.exit ], [ %i.h, %RB_SYMBOL_P.exit.thread8 ] ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i64 @rb_hash_new() #18         ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i64 [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  %i.r = tail call i64 @rb_hash_aset(i64 noundef %i.q, i64 noundef %0, i64 noundef %1) #18 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_get_kwargs(i64 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp eq i64 %0, 4
  %spec.store.select = select i1 %i.b, i64 0, i64 %0 ; 9 uses
  %i.c = icmp sgt i32 %3, -1
  %.lobit = ashr i32 %3, 31
  %spec.select = xor i32 %.lobit, %3              ; 3 uses
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %.not81 = icmp eq i64 %spec.store.select, 0
  br i1 %.not81, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count137 = zext nneg i32 %2 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.thread87.us
  %indvars.iv134 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next135, %.thread87.us ] ; 2 uses
  %.0100.us = phi i64 [ 4, %.lr.ph.split.us.preheader ], [ %.1.us, %.thread87.us ] ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %1, i64 %indvars.iv134
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = tail call i64 @rb_id2sym(i64 noundef %i.f) #18
  %i.h = icmp eq i64 %.0100.us, 4
  br i1 %i.h, label %bb.b, label %.thread87.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #18
  br label %.thread87.us

.thread87.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %.1.us = phi i64 [ %i.i, %bb.b ], [ %.0100.us, %.lr.ph.split.us ] ; 3 uses
  %i.j = tail call i64 @rb_ary_push(i64 noundef %.1.us, i64 noundef %i.g) #18 ; 0 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !145

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not82 = icmp eq ptr %4, null
  %wide.trip.count132 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %.not82, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.thread87.us106
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %.thread87.us106 ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0100.us103 = phi i64 [ %.2.us107, %.thread87.us106 ], [ 4, %.lr.ph.split ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %1, i64 %indvars.iv129
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = tail call i64 @rb_id2sym(i64 noundef %i.l) #18 ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !17
  %i.n = tail call i32 @rb_hash_stlike_lookup(i64 noundef %spec.store.select, i64 noundef %i.m, ptr noundef null) #18
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread87.us106

bb.c:                                             ; preds = %.lr.ph.split.split.us
  %i.p = icmp eq i64 %.0100.us103, 4
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us105 = phi i64 [ %i.q, %bb.d ], [ %.0100.us103, %bb.c ] ; 2 uses
  %i.r = tail call i64 @rb_ary_push(i64 noundef %.1.us105, i64 noundef %i.m) #18 ; 0 uses
  br label %.thread87.us106

.thread87.us106:                                  ; preds = %bb.e, %.lr.ph.split.split.us
  %.2.us107 = phi i64 [ %.1.us105, %bb.e ], [ %.0100.us103, %.lr.ph.split.split.us ] ; 2 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !145

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.thread87
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread87 ], [ 0, %.lr.ph.split ] ; 3 uses
  %.0100 = phi i64 [ %.2, %.thread87 ], [ 4, %.lr.ph.split ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = call i64 @rb_id2sym(i64 noundef %i.t) #18 ; 2 uses
  store i64 %i.u, ptr %i.a, align 8, !tbaa !17
  %i.v = getelementptr [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.w = call i32 @rb_hash_stlike_delete(i64 noundef %spec.store.select, ptr noundef nonnull %i.a, ptr noundef %i.v) #18
  %.not83.not = icmp eq i32 %i.w, 0
  br i1 %.not83.not, label %.thread, label %.thread87

.thread:                                          ; preds = %.lr.ph.split.split
  store i64 36, ptr %i.v, align 8, !tbaa !17
  %i.x = icmp eq i64 %.0100, 4
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.y = call i64 @rb_ary_hidden_new(i64 noundef 1) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.1 = phi i64 [ %i.y, %bb.f ], [ %.0100, %.thread ] ; 2 uses
  %i.z = call i64 @rb_ary_push(i64 noundef %.1, i64 noundef %i.u) #18 ; 0 uses
  br label %.thread87

.thread87:                                        ; preds = %.lr.ph.split.split, %bb.g
  %.2 = phi i64 [ %.1, %bb.g ], [ %.0100, %.lr.ph.split.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count132
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !145

._crit_edge:                                      ; preds = %.thread87, %.thread87.us106, %.thread87.us
  %.0.lcssa = phi i64 [ %.1.us, %.thread87.us ], [ %.2.us107, %.thread87.us106 ], [ %.2, %.thread87 ] ; 2 uses
  %i.aa = icmp eq i64 %.0.lcssa, 4
  br i1 %i.aa, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call fastcc void @rb_keyword_error(ptr noundef nonnull @.str.29, i64 noundef %.0.lcssa) #24
  unreachable

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %.169 = phi i32 [ %2, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ab = icmp ne i64 %spec.store.select, 0       ; 3 uses
  %i.ac = icmp sgt i32 %spec.select, 0
  %or.cond120 = and i1 %i.ab, %i.ac
  br i1 %or.cond120, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %._crit_edge.thread
  %.not78 = icmp eq ptr %4, null
  %wide.trip.count147 = zext nneg i32 %spec.select to i64 ; 2 uses
  br i1 %.not78, label %.lr.ph114.split.us, label %.lr.ph114.split

.lr.ph114.split.us:                               ; preds = %.lr.ph114, %.lr.ph114.split.us
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %.lr.ph114.split.us ], [ 0, %.lr.ph114 ] ; 2 uses
  %.065113.us = phi i32 [ %spec.select119, %.lr.ph114.split.us ], [ %.169, %.lr.ph114 ]
  %i.ad = trunc nuw nsw i64 %indvars.iv144 to i32
  %i.ae = add i32 %2, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.ai = call i64 @rb_id2sym(i64 noundef %i.ah) #18 ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !17
  %i.aj = call i32 @rb_hash_stlike_lookup(i64 noundef %spec.store.select, i64 noundef %i.ai, ptr noundef null) #18
  %.fr.us = freeze i32 %i.aj
  %i.ak = icmp ne i32 %.fr.us, 0
  %i.al = zext i1 %i.ak to i32
  %spec.select119 = add i32 %.065113.us, %i.al    ; 2 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %.loopexit, label %.lr.ph114.split.us, !llvm.loop !146

.lr.ph114.split:                                  ; preds = %.lr.ph114, %bb.i
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %bb.i ], [ 0, %.lr.ph114 ] ; 2 uses
  %.065113 = phi i32 [ %i.av, %bb.i ], [ %.169, %.lr.ph114 ] ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv139 to i32
  %i.an = add i32 %2, %i.am
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !17
  %i.ar = call i64 @rb_id2sym(i64 noundef %i.aq) #18
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !17
  %i.as = getelementptr [8 x i8], ptr %4, i64 %i.ao ; 2 uses
  %i.at = call i32 @rb_hash_stlike_delete(i64 noundef %spec.store.select, ptr noundef nonnull %i.a, ptr noundef %i.as) #18
  %.not79.not = icmp eq i32 %i.at, 0
  br i1 %.not79.not, label %.thread89, label %.thread92

.thread92:                                        ; preds = %.lr.ph114.split
  %i.au = add i32 %.065113, 1
  br label %bb.i

.thread89:                                        ; preds = %.lr.ph114.split
  store i64 36, ptr %i.as, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.thread92, %.thread89
  %i.av = phi i32 [ %.065113, %.thread89 ], [ %i.au, %.thread92 ] ; 2 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count147
  br i1 %exitcond143.not, label %.loopexit, label %.lr.ph114.split, !llvm.loop !146

.loopexit:                                        ; preds = %bb.i, %.lr.ph114.split.us, %._crit_edge.thread
  %.267 = phi i32 [ %.169, %._crit_edge.thread ], [ %spec.select119, %.lr.ph114.split.us ], [ %i.av, %bb.i ] ; 2 uses
  %or.cond3 = and i1 %i.ab, %i.c
  br i1 %or.cond3, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.loopexit
  %i.aw = inttoptr i64 %spec.store.select to ptr
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %i.ay = and i64 %i.ax, 32768
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = lshr i64 %i.ax, 16
  %i.ba = and i64 %i.az, 15
  br label %RHASH_SIZE.exit

bb.l:                                             ; preds = %bb.j
  %i.bb = add i64 %spec.store.select, 24
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !140
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ba, %bb.k ], [ %i.be, %bb.l ]
  %.not77 = icmp eq ptr %4, null
  %i.bf = zext i32 %.267 to i64
  %i.bg = select i1 %.not77, i64 %i.bf, i64 0
  %i.bh = icmp ugt i64 %.0.i, %i.bg
  br i1 %i.bh, label %bb.m, label %.thread95

bb.m:                                             ; preds = %RHASH_SIZE.exit
end_hunk_0
