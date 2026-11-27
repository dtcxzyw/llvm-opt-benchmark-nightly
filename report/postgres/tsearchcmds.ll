Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tsearchcmds?download=true
inline.NumInlined: 83
inline.NumDeleted: 23
begin_hunk_0_@deserialize_deflist:bb.a
  tail call void @pfree(ptr noundef %i.u) #9
  ret ptr %.2
}

declare ptr @list_delete_nth_cell(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @heap_modify_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CatalogTupleUpdate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RunObjectPostAlterHook(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { i64, i32 } @DefineTSTemplate(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ObjectAddress, align 8      ; 8 uses
  %3 = alloca %struct.ObjectAddress, align 4      ; 9 uses
  %i.a = alloca [5 x i64], align 16               ; 8 uses
  %i.b = alloca [5 x i8], align 1                 ; 6 uses
  %4 = alloca %struct.nameData, align 1           ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = tail call zeroext i1 @superuser() #9
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 16797828) #9 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 707, ptr noundef nonnull @__func__.DefineTSTemplate) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call i32 @QualifiedNameGetCreationNamespace(ptr noundef %0, ptr noundef nonnull %i.c) #9
  %i.i = call ptr @table_open(i32 noundef 3764, i32 noundef 3) #9 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, i8 0, i64 3, i1 false)
  %i.j = call i32 @GetNewOidWithIndex(ptr noundef %i.i, i32 noundef 3767, i16 noundef signext 1) #9 ; 2 uses
  %i.k = zext i32 %i.j to i64
  store i64 %i.k, ptr %i.a, align 16
  %i.l = load ptr, ptr %i.c, align 8
  call void @namestrcpy(ptr noundef nonnull %4, ptr noundef %i.l) #9
  %i.m = ptrtoint ptr %4 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = zext i32 %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.o, ptr %i.p, align 16
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.w = load i32, ptr %i.q, align 4
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph67, label %.critedge.thread

.lr.ph67:                                         ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %i.y = phi i64 [ %i.as, %bb.g ], [ 0, %.lr.ph ]
  %i.z = phi i64 [ %i.ar, %bb.g ], [ 0, %.lr.ph ]
  %i.aa = load ptr, ptr %i.r, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(5) @.str.16) #11
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.e

.critedge:                                        ; preds = %bb.g
  store i64 %i.as, ptr %i.s, align 16
  store i8 0, ptr %i.t, align 1
  store i64 %i.ar, ptr %i.u, align 8
  store i8 0, ptr %i.v, align 1
  %i.ah = icmp eq i64 %i.as, 0
  br i1 %i.ah, label %.critedge.thread, label %bb.h

bb.d:                                             ; preds = %.lr.ph67
  %i.ai = call fastcc i64 @get_ts_template_func(ptr noundef nonnull %i.ac, i32 noundef 4)
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph67
  %i.aj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(7) @.str.17) #11
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %.split

bb.f:                                             ; preds = %bb.e
  %i.al = call fastcc i64 @get_ts_template_func(ptr noundef nonnull %i.ac, i32 noundef 5)
  br label %bb.g

.split:                                           ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.an = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ao = call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.ap = load ptr, ptr %i.am, align 8
  %i.aq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef %i.ap) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 750, ptr noundef nonnull @__func__.DefineTSTemplate) #9
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ar = phi i64 [ %i.z, %bb.f ], [ %i.ai, %bb.d ] ; 2 uses
  %i.as = phi i64 [ %i.al, %bb.f ], [ %i.y, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i32, ptr %i.q, align 4
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %.lr.ph67, label %.critedge

.critedge.thread:                                 ; preds = %.lr.ph, %bb.c, %.critedge
  %i.aw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ax = call i32 @errcode(i32 noundef 117833860) #9 ; 0 uses
  %i.ay = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 759, ptr noundef nonnull @__func__.DefineTSTemplate) #9
  unreachable

bb.h:                                             ; preds = %.critedge
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call ptr @heap_form_tuple(ptr noundef %i.ba, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 3 uses
  call void @CatalogTupleInsert(ptr noundef %i.i, ptr noundef %i.bb) #9
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.val = load ptr, ptr %i.bc, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.be = load i8, ptr %i.bd, align 2
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bf ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i32 3764, ptr %2, align 8
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bh, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.bj, align 8
  call void @recordDependencyOnCurrentExtension(ptr noundef nonnull %2, i1 noundef zeroext false) #9
  %i.bk = call ptr @new_object_addresses() #9     ; 5 uses
  store i32 2615, ptr %3, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.bo, align 4
  call void @add_exact_object_address(ptr noundef nonnull %3, ptr noundef %i.bk) #9
  store i32 1255, ptr %3, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 76
  %i.bq = load i32, ptr %i.bp, align 4
  store i32 %i.bq, ptr %i.bn, align 4
  store i32 0, ptr %i.bo, align 4
  call void @add_exact_object_address(ptr noundef nonnull %3, ptr noundef %i.bk) #9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %makeTSTemplateDependencies.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bs, ptr %i.bn, align 4
  call void @add_exact_object_address(ptr noundef nonnull %3, ptr noundef %i.bk) #9
  br label %makeTSTemplateDependencies.exit

makeTSTemplateDependencies.exit:                  ; preds = %bb.h, %bb.i
  call void @record_object_address_dependencies(ptr noundef nonnull %2, ptr noundef %i.bk, i32 noundef 110) #9
  call void @free_object_addresses(ptr noundef %i.bk) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8
  %.sroa.2.0.copyload.i = load i32, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bt = load ptr, ptr @object_access_hook, align 8
  %.not35 = icmp eq ptr %i.bt, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %makeTSTemplateDependencies.exit
  call void @RunObjectPostCreateHook(i32 noundef 3764, i32 noundef %i.j, i32 noundef 0, i1 noundef zeroext false) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %makeTSTemplateDependencies.exit
  %.fca.0.insert.i = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { i64, i32 } %.fca.0.insert.i, i32 %.sroa.2.0.copyload.i, 1
  call void @heap_freetuple(ptr noundef nonnull %i.bb) #9
  call void @table_close(ptr noundef nonnull %i.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret { i64, i32 } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i64 0, 4294967296) i64 @get_ts_template_func(ptr noundef %0, i32 noundef range(i32 4, 6) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 6 uses
  %i.b = tail call ptr @defGetQualifiedName(ptr noundef %0) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 9796820404457, ptr %i.a, align 16
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 9796820404457, ptr %2, align 8
  %i.c = icmp eq i32 %1, 4
  %. = select i1 %i.c, i32 1, i32 4               ; 2 uses
  %i.d = call i32 @LookupFuncName(ptr noundef %i.b, i32 noundef %., ptr noundef nonnull %i.a, i1 noundef zeroext false) #9 ; 2 uses
  %i.e = call i32 @get_func_rettype(i32 noundef %i.d) #9
  %.not = icmp eq i32 %i.e, 2281
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.g = call i32 @errcode(i32 noundef 117833860) #9 ; 0 uses
  %i.h = call ptr @func_signature_string(ptr noundef %i.b, i32 noundef %., ptr noundef null, ptr noundef nonnull %i.a) #9
  %i.i = call ptr @format_type_be(i32 noundef 2281) #9
  %i.j = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32, ptr noundef %i.h, ptr noundef %i.i) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 643, ptr noundef nonnull @__func__.get_ts_template_func) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.d to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i32 } @DefineTSConfiguration(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 8 uses
  %i.b = alloca [5 x i8], align 1                 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.nameData, align 1           ; 4 uses
  %4 = alloca %struct.ScanKeyData, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.d = call i32 @QualifiedNameGetCreationNamespace(ptr noundef %0, ptr noundef nonnull %i.c) #9 ; 3 uses
  %i.e = call i32 @GetUserId() #9
  %i.f = call i32 @object_aclcheck(i32 noundef 2615, i32 noundef %i.d, i32 noundef %i.e, i64 noundef 512) #9 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @get_namespace_name(i32 noundef %i.d) #9
  call void @aclcheck_error(i32 noundef %i.f, i32 noundef 37, ptr noundef %i.g) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not123 = icmp eq ptr %1, null
  br i1 %.not123, label %.thread190, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.h, align 4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph149, label %.thread190

.lr.ph149:                                        ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.0114135148 = phi i32 [ %.1115, %bb.g ], [ 0, %.lr.ph ]
  %.0107137146 = phi i32 [ %.1, %bb.g ], [ 0, %.lr.ph ]
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(7) @.str.20) #11
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

.critedge:                                        ; preds = %bb.g
  %i.s = icmp ne i32 %.1, 0                       ; 4 uses
  %i.t = icmp ne i32 %.1115, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.d:                                             ; preds = %.lr.ph149
  %i.u = call ptr @defGetQualifiedName(ptr noundef nonnull %i.n) #9
  %i.v = call i32 @get_ts_parser_oid(ptr noundef %i.u, i1 noundef zeroext false) #9
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph149
  %i.w = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(5) @.str.21) #11
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %.split

bb.f:                                             ; preds = %bb.e
  %i.y = call ptr @defGetQualifiedName(ptr noundef nonnull %i.n) #9
  %i.z = call i32 @get_ts_config_oid(ptr noundef %i.y, i1 noundef zeroext false) #9
  br label %bb.g

.split:                                           ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ab = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ac = call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.ad = load ptr, ptr %i.aa, align 8
  %i.ae = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22, ptr noundef %i.ad) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 940, ptr noundef nonnull @__func__.DefineTSConfiguration) #9
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1115 = phi i32 [ %i.v, %bb.d ], [ %.0114135148, %bb.f ] ; 3 uses
  %.1 = phi i32 [ %.0107137146, %bb.d ], [ %i.z, %bb.f ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %i.h, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph149, label %.critedge

bb.h:                                             ; preds = %.critedge
  %i.ai = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.aj = call i32 @errcode(i32 noundef 16801924) #9 ; 0 uses
  %i.ak = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 946, ptr noundef nonnull @__func__.DefineTSConfiguration) #9
  unreachable

bb.i:                                             ; preds = %.critedge
  %i.al = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.al, %i.s
  br i1 %or.cond3, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  store i32 3602, ptr %2, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.1, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.an, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.s, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread, %bb.j
  %i.ao = phi i1 [ %i.s, %.thread ], [ true, %bb.j ]
  %i.ap = zext i32 %.1 to i64
  %i.aq = call ptr @SearchSysCache1(i32 noundef 82, i64 noundef %i.ap) #9 ; 3 uses
  %.not125 = icmp eq ptr %i.aq, null
  br i1 %.not125, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.as = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.24, i32 noundef %.1) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 966, ptr noundef nonnull @__func__.DefineTSConfiguration) #9
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.at = getelementptr i8, ptr %i.aq, i64 16
  %.val130 = load ptr, ptr %i.at, align 8         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val130, i64 22
  %i.av = load i8, ptr %i.au, align 2
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.val130, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 76
  %i.az = load i32, ptr %i.ay, align 4
  call void @ReleaseSysCache(ptr noundef nonnull %i.aq) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.ba = phi i1 [ %i.ao, %bb.m ], [ false, %bb.j ]
  %.2 = phi i32 [ %i.az, %bb.m ], [ %.1115, %bb.j ] ; 2 uses
  %.not126 = icmp eq i32 %.2, 0
  br i1 %.not126, label %.thread190, label %bb.o

.thread190:                                       ; preds = %bb.c, %.lr.ph, %bb.n
  %i.bb = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.bc = call i32 @errcode(i32 noundef 117833860) #9 ; 0 uses
  %i.bd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 982, ptr noundef nonnull @__func__.DefineTSConfiguration) #9
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.be = call ptr @table_open(i32 noundef 3602, i32 noundef 3) #9 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, i8 0, i64 5, i1 false)
  %i.bf = call i32 @GetNewOidWithIndex(ptr noundef %i.be, i32 noundef 3712, i16 noundef signext 1) #9 ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  store i64 %i.bg, ptr %i.a, align 16
  %i.bh = load ptr, ptr %i.c, align 8
  call void @namestrcpy(ptr noundef nonnull %3, ptr noundef %i.bh) #9
  %i.bi = ptrtoint ptr %3 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = zext i32 %i.d to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bk, ptr %i.bl, align 16
  %i.bm = call i32 @GetUserId() #9
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bn, ptr %i.bo, align 8
  %i.bp = zext i32 %.2 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.bp, ptr %i.bq, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call ptr @heap_form_tuple(ptr noundef %i.bs, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 3 uses
  call void @CatalogTupleInsert(ptr noundef %i.be, ptr noundef %i.bt) #9
  br i1 %i.ba, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.bu = call ptr @table_open(i32 noundef 3603, i32 noundef 3) #9 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
end_hunk_0
