Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/enum?download=true
inline.NumInlined: 672
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@nmin_block_cmp:bb.a

cmpint_reenter_check.exit:                        ; preds = %bb.a
  %i.o = tail call i32 @rb_cmpint(i64 noundef %i.c, i64 noundef %i.a, i64 noundef %i.b) #13
  ret i32 %i.o
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @nmin_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = tail call i64 @rb_ary_new_from_values(i64 noundef %i.d, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ 4, %bb.a ] ; 4 uses
  %i.f = getelementptr i8, ptr %i.b, i64 48       ; 3 uses
  %i.g = load i8, ptr %i.f, align 8
  %.mask = and i8 %i.g, 2
  %.not = icmp eq i8 %.mask, 0
  br i1 %.not, label %enum_yield.exit, label %bb.d

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.h = icmp sgt i32 %2, 1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i64 @rb_yield_force_blockarg(i64 noundef %.0.i) #13
  br label %enum_yield.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i64 @rb_yield(i64 noundef %.0.i) #13
  br label %enum_yield.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13
  br label %enum_yield.exit

enum_yield.exit:                                  ; preds = %bb.h, %bb.g, %bb.e, %rb_enum_values_pack.exit
  %storemerge = phi i64 [ %.0.i, %rb_enum_values_pack.exit ], [ %i.i, %bb.e ], [ %i.k, %bb.g ], [ %i.l, %bb.h ]
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !13
  %i.m = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp eq i64 %i.n, 36
  br i1 %i.o, label %enum_yield.exit._crit_edge, label %bb.i

enum_yield.exit._crit_edge:                       ; preds = %enum_yield.exit
  %.pre = load i8, ptr %i.f, align 8
  br label %bb.j

bb.i:                                             ; preds = %enum_yield.exit
  %i.p = getelementptr i8, ptr %i.b, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = call i32 %i.q(ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.s = load i8, ptr %i.f, align 8               ; 2 uses
  %i.t = and i8 %i.s, 1
  %.not25 = icmp eq i8 %i.t, 0
  %i.u = sub i32 0, %i.r
  %spec.select = select i1 %.not25, i32 %i.r, i32 %i.u
  %i.v = icmp slt i32 %spec.select, 0
  br i1 %i.v, label %bb.j, label %bb.n

bb.j:                                             ; preds = %enum_yield.exit._crit_edge, %bb.i
  %i.w = phi i8 [ %.pre, %enum_yield.exit._crit_edge ], [ %i.s, %bb.i ]
  %.mask28 = and i8 %i.w, 2
  %.not26 = icmp eq i8 %.mask28, 0
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr i8, ptr %i.b, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19
  %i.z = load i64, ptr %i.a, align 8, !tbaa !13
  %i.aa = call i64 @rb_ary_push(i64 noundef %i.y, i64 noundef %i.z) #13 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = getelementptr i8, ptr %i.b, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ad = call i64 @rb_ary_push(i64 noundef %i.ac, i64 noundef %.0.i) #13 ; 0 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 16      ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !18
  %i.ah = getelementptr i8, ptr %i.b, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !17
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @nmin_filter(ptr noundef nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @rb_block_call(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @nmin_filter(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 4 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %i.d = alloca [2 x i64], align 16               ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = load i64, ptr %0, align 8, !tbaa !16     ; 3 uses
  %.not = icmp sgt i64 %i.f, %i.g
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  tail call void @rb_gc_writebarrier_unprotect(i64 noundef %i.i) #13
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = and i64 %i.k, 8192
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.j, i64 16
  br label %RARRAY_PTR.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.j, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  br label %RARRAY_PTR.exit

RARRAY_PTR.exit:                                  ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.m, %bb.c ], [ %i.o, %bb.d ] ; 7 uses
  %i.p = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %.mask = and i8 %i.q, 2                         ; 2 uses
  %.not138.not.not.not.not.not.not.not.not.not = icmp eq i8 %.mask, 0
  %i.r = load i64, ptr %i.e, align 8, !tbaa !18
  %i.s = add i64 %i.r, -1
  %i.t = select i1 %.not138.not.not.not.not.not.not.not.not.not, i64 8, i64 16 ; 12 uses
  %.mask.lobit = lshr exact i8 %.mask, 1
  %i.u = zext nneg i8 %.mask.lobit to i64         ; 9 uses
  %i.v = getelementptr i8, ptr %0, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %RARRAY_PTR.exit
  %.0132 = phi i64 [ 0, %RARRAY_PTR.exit ], [ %.1133, %bb.k ] ; 7 uses
  %.0129 = phi i64 [ %i.s, %RARRAY_PTR.exit ], [ %.1130, %bb.k ] ; 8 uses
  %i.w = sub i64 %.0129, %.0132
  %i.x = sdiv i64 %i.w, 2
  %i.y = add i64 %i.x, %.0132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.z = shl i64 %i.y, %i.u
  %i.aa = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.z ; 2 uses
  %i.ab = call nonnull ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.aa, i64 noundef range(i64 8, 17) %i.t, i64 noundef 16) #13, !alias.scope !108 ; 0 uses
  %i.ac = shl i64 %.0129, %i.u
  %i.ad = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ac ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.aa, ptr noundef nonnull readonly align 1 dereferenceable(8) %i.ad, i64 noundef range(i64 8, 17) %i.t, i1 noundef false) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ad, ptr noundef nonnull readonly align 16 dereferenceable(8) %i.a, i64 noundef range(i64 8, 17) %i.t, i1 noundef false) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ae = add i64 %.0129, -1                      ; 3 uses
  %.not140159 = icmp sgt i64 %.0132, %i.ae
  br i1 %.not140159, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.j, %bb.e
  %.0126.lcssa = phi i64 [ %.0132, %bb.e ], [ %.2128, %bb.j ] ; 6 uses
  %.0121.lcssa = phi i64 [ 1, %bb.e ], [ %.1, %bb.j ]
  %.lcssa = phi i64 [ %i.ae, %bb.e ], [ %i.aw, %bb.j ] ; 2 uses
  %i.af = icmp slt i64 %.lcssa, %.0129
  %.not141165 = icmp sgt i64 %.0129, %.0126.lcssa
  %or.cond166 = select i1 %i.af, i1 %.not141165, i1 false
  br i1 %or.cond166, label %.lr.ph169, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %i.ag = phi i64 [ %i.aw, %bb.j ], [ %i.ae, %bb.e ]
  %.0121162 = phi i64 [ %.1, %bb.j ], [ 1, %bb.e ] ; 2 uses
  %.0124161 = phi i64 [ %.1125, %bb.j ], [ %.0132, %bb.e ] ; 3 uses
  %.0126160 = phi i64 [ %.2128, %bb.j ], [ %.0132, %bb.e ] ; 4 uses
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.ai = shl i64 %.0124161, %i.u
  %i.aj = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ai ; 5 uses
  %i.ak = call i32 %i.ah(ptr noundef %i.aj, ptr noundef nonnull %i.ad, ptr noundef nonnull %0) #13 ; 2 uses
  %1 = load i8, ptr %i.p, align 8
  %2 = and i8 %1, 1
  %.not149 = icmp eq i8 %2, 0
  %3 = sub i32 0, %i.ak
  %spec.select = select i1 %.not149, i32 %i.ak, i32 %3 ; 2 uses
  %i.al = icmp eq i32 %spec.select, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.am = call nonnull ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.aj, i64 noundef range(i64 8, 17) %i.t, i64 noundef 16) #13, !alias.scope !109 ; 0 uses
  %i.an = shl i64 %i.ag, %i.u
  %i.ao = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.an ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(8) %i.ao, i64 noundef range(i64 8, 17) %i.t, i1 noundef false) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ao, ptr noundef nonnull readonly align 16 dereferenceable(8) %i.b, i64 noundef range(i64 8, 17) %i.t, i1 noundef false) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ap = add i64 %.0121162, 1
  br label %bb.j, !llvm.loop !100

bb.g:                                             ; preds = %.lr.ph
  %i.aq = icmp slt i32 %spec.select, 0
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ar = call nonnull ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.aj, i64 noundef range(i64 8, 17) %i.t, i64 noundef 16) #13, !alias.scope !110 ; 0 uses
  %i.as = shl i64 %.0126160, %i.u
  %i.at = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.as ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(8) %i.at, i64 noundef range(i64 8, 17) %i.t, i1 noundef false) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.at, ptr noundef nonnull readonly align 16 dereferenceable(8) %i.c, i64 noundef range(i64 8, 17) %i.t, i1 noundef false) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.au = add i64 %.0126160, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1127 = phi i64 [ %i.au, %bb.h ], [ %.0126160, %bb.g ]
  %i.av = add i64 %.0124161, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.2128 = phi i64 [ %.0126160, %bb.f ], [ %.1127, %bb.i ] ; 2 uses
  %.1125 = phi i64 [ %.0124161, %bb.f ], [ %i.av, %bb.i ] ; 2 uses
  %.1 = phi i64 [ %i.ap, %bb.f ], [ %.0121162, %bb.i ] ; 3 uses
  %i.aw = sub i64 %.0129, %.1                     ; 3 uses
  %.not140 = icmp sgt i64 %.1125, %i.aw
  br i1 %.not140, label %.preheader, label %.lr.ph

.lr.ph169:                                        ; preds = %.preheader, %.lr.ph169
  %.0123168 = phi i64 [ %i.bc, %.lr.ph169 ], [ %.0126.lcssa, %.preheader ] ; 2 uses
  %.2167 = phi i64 [ %i.bd, %.lr.ph169 ], [ %.0129, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ax = shl i64 %.0123168, %i.u
  %i.ay = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ax ; 2 uses
  %i.az = call nonnull ptr @__memcpy_chk(ptr noundef nonnull %i.d, ptr noundef nonnull readonly %i.ay, i64 noundef range(i64 8, 17) %i.t, i64 noundef 16) #13, !alias.scope !111 ; 0 uses
  %i.ba = shl i64 %.2167, %i.u
  %i.bb = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ba ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ay, ptr noundef nonnull readonly align 1 dereferenceable(8) %i.bb, i64 noundef range(i64 8, 17) %i.t, i1 noundef false) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.bb, ptr noundef nonnull readonly align 16 dereferenceable(8) %i.d, i64 noundef range(i64 8, 17) %i.t, i1 noundef false) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.bc = add nsw i64 %.0123168, 1                ; 2 uses
  %i.bd = add nsw i64 %.2167, -1                  ; 3 uses
  %i.be = icmp slt i64 %.lcssa, %i.bd
  %.not141 = icmp sgt i64 %i.bd, %i.bc
  %or.cond = select i1 %i.be, i1 %.not141, i1 false
  br i1 %or.cond, label %.lr.ph169, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph169, %.preheader
  %.not144 = icmp sgt i64 %.0126.lcssa, %i.g      ; 3 uses
  %i.bf = add i64 %.0121.lcssa, %.0126.lcssa      ; 2 uses
  %.not145 = icmp sgt i64 %i.g, %i.bf
  %or.cond152 = or i1 %.not144, %.not145
  br i1 %or.cond152, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bg = add i64 %.0126.lcssa, -1
  %.1133 = select i1 %.not144, i64 %.0132, i64 %i.bf
  %.1130 = select i1 %.not144, i64 %i.bg, i64 %.0129
  br label %bb.e

bb.l:                                             ; preds = %._crit_edge
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !19  ; 2 uses
  %i.bi = shl i64 %.0126.lcssa, %i.u
  %i.bj = inttoptr i64 %i.bh to ptr               ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !23
  %i.bl = and i64 %i.bk, 8192
  %.not.i.i153 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i153, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr i8, ptr %i.bj, i64 16
  br label %RARRAY_AREF.exit

bb.n:                                             ; preds = %bb.l
  %i.bn = getelementptr i8, ptr %i.bj, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.m, %bb.n
  %.0.i.i154 = phi ptr [ %i.bm, %bb.m ], [ %i.bo, %bb.n ]
  %i.bp = getelementptr [8 x i8], ptr %.0.i.i154, i64 %i.bi
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !13
  %i.br = getelementptr i8, ptr %0, i64 32
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !20
  %i.bs = load i64, ptr %0, align 8, !tbaa !16    ; 2 uses
  store i64 %i.bs, ptr %i.e, align 8, !tbaa !18
  %i.bt = shl i64 %i.bs, %i.u
  %i.bu = call i64 @rb_ary_resize(i64 noundef %i.bh, i64 noundef %i.bt) #13 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %RARRAY_AREF.exit
  ret void
}

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #1

declare void @qsort_r(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_resize(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_reverse(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Enumerable() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_define_module(ptr noundef nonnull @.str.2) #13 ; 2 uses
  store i64 %i.a, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.a, ptr noundef nonnull @.str.3, ptr noundef nonnull @enum_to_a, i32 noundef -1) #13
  %i.b = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @enum_to_a, i32 noundef -1) #13
  %i.c = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.5, ptr noundef nonnull @enum_to_h, i32 noundef -1) #13
  %i.d = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.d, ptr noundef nonnull @.str.6, ptr noundef nonnull @enum_sort, i32 noundef 0) #13
  %i.e = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.7, ptr noundef nonnull @enum_sort_by, i32 noundef 0) #13
  %i.f = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.8, ptr noundef nonnull @enum_grep, i32 noundef 1) #13
  %i.g = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.9, ptr noundef nonnull @enum_grep_v, i32 noundef 1) #13
  %i.h = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.10, ptr noundef nonnull @enum_count, i32 noundef -1) #13
  %i.i = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @enum_find, i32 noundef -1) #13
  %i.j = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.j, ptr noundef nonnull @.str.12, ptr noundef nonnull @enum_find, i32 noundef -1) #13
  %i.k = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.k, ptr noundef nonnull @.str.13, ptr noundef nonnull @enum_find_index, i32 noundef -1) #13
  %i.l = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.14, ptr noundef nonnull @enum_find_all, i32 noundef 0) #13
  %i.m = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.15, ptr noundef nonnull @enum_find_all, i32 noundef 0) #13
  %i.n = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.16, ptr noundef nonnull @enum_find_all, i32 noundef 0) #13
  %i.o = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.o, ptr noundef nonnull @.str.17, ptr noundef nonnull @enum_filter_map, i32 noundef 0) #13
  %i.p = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.18, ptr noundef nonnull @enum_reject, i32 noundef 0) #13
  %i.q = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.q, ptr noundef nonnull @.str.19, ptr noundef nonnull @enum_collect, i32 noundef 0) #13
  %i.r = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.20, ptr noundef nonnull @enum_collect, i32 noundef 0) #13
  %i.s = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.s, ptr noundef nonnull @.str.21, ptr noundef nonnull @enum_flat_map, i32 noundef 0) #13
  %i.t = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.t, ptr noundef nonnull @.str.22, ptr noundef nonnull @enum_flat_map, i32 noundef 0) #13
  %i.u = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.u, ptr noundef nonnull @.str.23, ptr noundef nonnull @enum_inject, i32 noundef -1) #13
  %i.v = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.v, ptr noundef nonnull @.str.24, ptr noundef nonnull @enum_inject, i32 noundef -1) #13
  %i.w = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.w, ptr noundef nonnull @.str.25, ptr noundef nonnull @enum_partition, i32 noundef 0) #13
  %i.x = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.x, ptr noundef nonnull @.str.26, ptr noundef nonnull @enum_group_by, i32 noundef 0) #13
  %i.y = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.y, ptr noundef nonnull @.str.27, ptr noundef nonnull @enum_tally, i32 noundef -1) #13
  %i.z = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.z, ptr noundef nonnull @.str.28, ptr noundef nonnull @enum_first, i32 noundef -1) #13
  %i.aa = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.aa, ptr noundef nonnull @.str.29, ptr noundef nonnull @enum_all, i32 noundef -1) #13
  %i.ab = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ab, ptr noundef nonnull @.str.30, ptr noundef nonnull @enum_any, i32 noundef -1) #13
  %i.ac = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.31, ptr noundef nonnull @enum_one, i32 noundef -1) #13
  %i.ad = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.32, ptr noundef nonnull @enum_none, i32 noundef -1) #13
  %i.ae = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.33, ptr noundef nonnull @enum_min, i32 noundef -1) #13
  %i.af = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.af, ptr noundef nonnull @.str.34, ptr noundef nonnull @enum_max, i32 noundef -1) #13
  %i.ag = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ag, ptr noundef nonnull @.str.35, ptr noundef nonnull @enum_minmax, i32 noundef 0) #13
  %i.ah = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ah, ptr noundef nonnull @.str.36, ptr noundef nonnull @enum_min_by, i32 noundef -1) #13
  %i.ai = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ai, ptr noundef nonnull @.str.37, ptr noundef nonnull @enum_max_by, i32 noundef -1) #13
  %i.aj = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.aj, ptr noundef nonnull @.str.38, ptr noundef nonnull @enum_minmax_by, i32 noundef 0) #13
  %i.ak = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ak, ptr noundef nonnull @.str.39, ptr noundef nonnull @enum_member, i32 noundef 1) #13
  %i.al = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.al, ptr noundef nonnull @.str.40, ptr noundef nonnull @enum_member, i32 noundef 1) #13
  %i.am = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.am, ptr noundef nonnull @.str.41, ptr noundef nonnull @enum_each_with_index, i32 noundef -1) #13
  %i.an = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.an, ptr noundef nonnull @.str.42, ptr noundef nonnull @enum_reverse_each, i32 noundef -1) #13
  %i.ao = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ao, ptr noundef nonnull @.str.43, ptr noundef nonnull @enum_each_entry, i32 noundef -1) #13
  %i.ap = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ap, ptr noundef nonnull @.str.44, ptr noundef nonnull @enum_each_slice, i32 noundef 1) #13
  %i.aq = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.aq, ptr noundef nonnull @.str.45, ptr noundef nonnull @enum_each_cons, i32 noundef 1) #13
  %i.ar = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.ar, ptr noundef nonnull @.str.46, ptr noundef nonnull @enum_each_with_object, i32 noundef 1) #13
  %i.as = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.as, ptr noundef nonnull @.str.47, ptr noundef nonnull @enum_zip, i32 noundef -1) #13
  %i.at = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
  tail call void @rb_define_method(i64 noundef %i.at, ptr noundef nonnull @.str.48, ptr noundef nonnull @enum_take, i32 noundef 1) #13
  %i.au = load i64, ptr @rb_mEnumerable, align 8, !tbaa !13
end_hunk_0
