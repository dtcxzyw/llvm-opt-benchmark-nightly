Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pm_constant_path_node_create:bb.a
  %i.ag = getelementptr i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !127
  store i16 37, ptr %i.f, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.u, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink50 = phi i64 [ 16, %bb.g ], [ 8, %bb.f ]
  %.sink49 = phi ptr [ %i.w, %bb.g ], [ %i.z, %bb.f ]
  %.sink48 = phi i64 [ 24, %bb.g ], [ 16, %bb.f ]
  %.sink47 = phi ptr [ %1, %bb.g ], [ %i.w, %bb.f ]
  %.sink41 = phi ptr [ %i.ah, %bb.g ], [ %i.ab, %bb.f ]
  %i.ai = phi <2 x ptr> [ %i.af, %bb.g ], [ %i.y, %bb.f ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink50
  store ptr %.sink49, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink48
  store ptr %.sink47, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %.0, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store <2 x ptr> %i.ai, ptr %i.al, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %.sink41, ptr %i.am, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.w, ptr %i.an, align 8, !tbaa !36
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_range_node_create(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %i.f = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly %3) ; 3 uses
  %.not.i37 = icmp eq ptr %i.f, null
  br i1 %.not.i37, label %pm_assert_value_expression.exit40, label %bb.c

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val.i38 = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val5.i39 = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.i = getelementptr i8, ptr %0, i64 472
  %i.j = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.i, ptr noundef %.val.i38, ptr noundef %.val5.i39, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit40

pm_assert_value_expression.exit40:                ; preds = %pm_assert_value_expression.exit, %bb.c
  %i.k = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %pm_assert_value_expression.exit40
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.n = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %pm_assert_value_expression.exit40
  %i.o = load i32, ptr %2, align 8, !tbaa !126    ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.o, 44
  %switch.selectcmp.case2 = icmp eq i32 %i.o, 155
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.p = select i1 %switch.selectcmp, i16 4, i16 0 ; 3 uses
  %i.q = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.r = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.r, label %bb.i [
    i16 108, label %bb.f
    i16 82, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %pm_node_alloc.exit
  %i.s = icmp eq ptr %3, null
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i16, ptr %3, align 8, !tbaa !115
  switch i16 %i.t, label %bb.i [
    i16 108, label %bb.h
    i16 82, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.f
  %i.u = or disjoint i16 %i.p, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h
  %.1 = phi i16 [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ %i.p, %bb.e ]
  %i.v = load i32, ptr %0, align 8, !tbaa !109
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %0, align 8, !tbaa !109
  %. = select i1 %i.q, ptr %2, ptr %1
  %.in = getelementptr i8, ptr %., i64 8
  %i.x = load ptr, ptr %.in, align 8, !tbaa !36
  %i.y = icmp eq ptr %3, null
  %.pn36 = select i1 %i.y, ptr %2, ptr %3
  %.in35 = getelementptr i8, ptr %.pn36, i64 16
  %i.z = load ptr, ptr %.in35, align 8, !tbaa !36
  %i.aa = getelementptr i8, ptr %2, i64 8
  store i16 122, ptr %i.k, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 %.1, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.w, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !106
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !106
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !36
  store <2 x ptr> %i.ab, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !36
  ret ptr %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_float_node_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !126
  %i.c = icmp eq i32 %i.b, 55
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.2, i32 noundef 3895, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_float_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !109
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128  ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o                       ; 12 uses
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %pm_double_parse.exit, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.r = add nuw i64 %i.p, 1
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #28 ; 46 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.s, ptr noundef nonnull align 1 %i.k, i64 noundef %i.p, i1 noundef false) #27
  %i.t = tail call ptr @localeconv() #27
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !533
  %i.v = load i8, ptr %i.u, align 1, !tbaa !83    ; 42 uses
  %.not.i = icmp eq i8 %i.v, 46
  br i1 %.not.i, label %.loopexit.i.preheader, label %iter.check

.loopexit.i.preheader:                            ; preds = %bb.g, %middle.block, %vec.epilog.middle.block, %bb.e
  br label %.loopexit.i

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.p, 24
  %n.vec = and i64 %i.p, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue76, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue76 ] ; 33 uses
  %i.x = getelementptr i8, ptr %i.s, i64 %index   ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %wide.load = load <16 x i8>, ptr %i.x, align 1, !tbaa !83
  %wide.load14 = load <16 x i8>, ptr %i.y, align 1, !tbaa !83
  %i.z = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.aa = icmp eq <16 x i8> %wide.load14, splat (i8 46) ; 16 uses
  %i.ab = extractelement <16 x i1> %i.z, i64 0
  br i1 %i.ab, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %i.v, ptr %i.x, align 1, !tbaa !83
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ac = extractelement <16 x i1> %i.z, i64 1
  br i1 %i.ac, label %pred.store.if15, label %pred.store.continue16

pred.store.if15:                                  ; preds = %pred.store.continue
  %i.ad = getelementptr i8, ptr %i.s, i64 %index
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  store i8 %i.v, ptr %i.ae, align 1, !tbaa !83
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue
  %i.af = extractelement <16 x i1> %i.z, i64 2
  br i1 %i.af, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue16
  %i.ag = getelementptr i8, ptr %i.s, i64 %index
  %i.ah = getelementptr i8, ptr %i.ag, i64 2
  store i8 %i.v, ptr %i.ah, align 1, !tbaa !83
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue16
  %i.ai = extractelement <16 x i1> %i.z, i64 3
  br i1 %i.ai, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.aj = getelementptr i8, ptr %i.s, i64 %index
  %i.ak = getelementptr i8, ptr %i.aj, i64 3
  store i8 %i.v, ptr %i.ak, align 1, !tbaa !83
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.al = extractelement <16 x i1> %i.z, i64 4
  br i1 %i.al, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.am = getelementptr i8, ptr %i.s, i64 %index
  %i.an = getelementptr i8, ptr %i.am, i64 4
  store i8 %i.v, ptr %i.an, align 1, !tbaa !83
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %i.ao = extractelement <16 x i1> %i.z, i64 5
  br i1 %i.ao, label %pred.store.if23, label %pred.store.continue24

pred.store.if23:                                  ; preds = %pred.store.continue22
  %i.ap = getelementptr i8, ptr %i.s, i64 %index
  %i.aq = getelementptr i8, ptr %i.ap, i64 5
  store i8 %i.v, ptr %i.aq, align 1, !tbaa !83
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %i.ar = extractelement <16 x i1> %i.z, i64 6
  br i1 %i.ar, label %pred.store.if25, label %pred.store.continue26

pred.store.if25:                                  ; preds = %pred.store.continue24
  %i.as = getelementptr i8, ptr %i.s, i64 %index
  %i.at = getelementptr i8, ptr %i.as, i64 6
  store i8 %i.v, ptr %i.at, align 1, !tbaa !83
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %i.au = extractelement <16 x i1> %i.z, i64 7
  br i1 %i.au, label %pred.store.if27, label %pred.store.continue28

pred.store.if27:                                  ; preds = %pred.store.continue26
  %i.av = getelementptr i8, ptr %i.s, i64 %index
  %i.aw = getelementptr i8, ptr %i.av, i64 7
  store i8 %i.v, ptr %i.aw, align 1, !tbaa !83
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue26
  %i.ax = extractelement <16 x i1> %i.z, i64 8
  br i1 %i.ax, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue28
  %i.ay = getelementptr i8, ptr %i.s, i64 %index
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  store i8 %i.v, ptr %i.az, align 1, !tbaa !83
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %i.ba = extractelement <16 x i1> %i.z, i64 9
  br i1 %i.ba, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.bb = getelementptr i8, ptr %i.s, i64 %index
  %i.bc = getelementptr i8, ptr %i.bb, i64 9
  store i8 %i.v, ptr %i.bc, align 1, !tbaa !83
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.bd = extractelement <16 x i1> %i.z, i64 10
  br i1 %i.bd, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.be = getelementptr i8, ptr %i.s, i64 %index
  %i.bf = getelementptr i8, ptr %i.be, i64 10
  store i8 %i.v, ptr %i.bf, align 1, !tbaa !83
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.bg = extractelement <16 x i1> %i.z, i64 11
  br i1 %i.bg, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  %i.bh = getelementptr i8, ptr %i.s, i64 %index
  %i.bi = getelementptr i8, ptr %i.bh, i64 11
  store i8 %i.v, ptr %i.bi, align 1, !tbaa !83
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.bj = extractelement <16 x i1> %i.z, i64 12
  br i1 %i.bj, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.bk = getelementptr i8, ptr %i.s, i64 %index
  %i.bl = getelementptr i8, ptr %i.bk, i64 12
  store i8 %i.v, ptr %i.bl, align 1, !tbaa !83
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.bm = extractelement <16 x i1> %i.z, i64 13
  br i1 %i.bm, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.bn = getelementptr i8, ptr %i.s, i64 %index
  %i.bo = getelementptr i8, ptr %i.bn, i64 13
  store i8 %i.v, ptr %i.bo, align 1, !tbaa !83
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.bp = extractelement <16 x i1> %i.z, i64 14
  br i1 %i.bp, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.bq = getelementptr i8, ptr %i.s, i64 %index
  %i.br = getelementptr i8, ptr %i.bq, i64 14
  store i8 %i.v, ptr %i.br, align 1, !tbaa !83
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.bs = extractelement <16 x i1> %i.z, i64 15
  br i1 %i.bs, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.bt = getelementptr i8, ptr %i.s, i64 %index
  %i.bu = getelementptr i8, ptr %i.bt, i64 15
  store i8 %i.v, ptr %i.bu, align 1, !tbaa !83
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.bv = extractelement <16 x i1> %i.aa, i64 0
  br i1 %i.bv, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.bw = getelementptr i8, ptr %i.s, i64 %index
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store i8 %i.v, ptr %i.bx, align 1, !tbaa !83
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.by = extractelement <16 x i1> %i.aa, i64 1
  br i1 %i.by, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.bz = getelementptr i8, ptr %i.s, i64 %index
  %i.ca = getelementptr i8, ptr %i.bz, i64 17
  store i8 %i.v, ptr %i.ca, align 1, !tbaa !83
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.cb = extractelement <16 x i1> %i.aa, i64 2
  br i1 %i.cb, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.cc = getelementptr i8, ptr %i.s, i64 %index
  %i.cd = getelementptr i8, ptr %i.cc, i64 18
  store i8 %i.v, ptr %i.cd, align 1, !tbaa !83
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.ce = extractelement <16 x i1> %i.aa, i64 3
  br i1 %i.ce, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.cf = getelementptr i8, ptr %i.s, i64 %index
end_hunk_0
