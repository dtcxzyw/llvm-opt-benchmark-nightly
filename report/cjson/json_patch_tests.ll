Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/json_patch_tests?download=true
inline.NumInlined: 147
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@print_value:bb.a
  %i.jn = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.jo = add i64 %i.jn, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge78
  %i.jp = phi i64 [ %i.jo, %bb.cl ], [ 2, %._crit_edge78 ]
  %i.jq = tail call fastcc ptr @ensure(ptr noundef nonnull %1, i64 noundef %i.jp), !inline_history !73 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %print_array.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.js = load i32, ptr %i.hc, align 4, !tbaa !61
  %.not83.i = icmp eq i32 %i.js, 0
  br i1 %.not83.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.cn
  %i.jt = load i64, ptr %i.gz, align 8, !tbaa !71
  %.not88 = icmp eq i64 %i.jt, 1
  br i1 %.not88, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.preheader, %.lr.ph81
  %.0.i6480 = phi i64 [ %i.jv, %.lr.ph81 ], [ 0, %.preheader ]
  %.3.i79 = phi ptr [ %i.ju, %.lr.ph81 ], [ %i.jq, %.preheader ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.3.i79, i64 1 ; 2 uses
  store i8 9, ptr %.3.i79, align 1, !tbaa !40
  %i.jv = add nuw i64 %.0.i6480, 1                ; 2 uses
  %i.jw = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.jx = add i64 %i.jw, -1
  %i.jy = icmp ult i64 %i.jv, %i.jx
  br i1 %i.jy, label %.lr.ph81, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph81, %.preheader, %bb.cn
  %.4.i = phi ptr [ %i.jq, %bb.cn ], [ %i.jq, %.preheader ], [ %i.ju, %.lr.ph81 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 125, ptr %.4.i, align 1, !tbaa !40
  store i8 0, ptr %i.jz, align 1, !tbaa !40
  %i.ka = load i64, ptr %i.gz, align 8, !tbaa !71
  %i.kb = add i64 %i.ka, -1
  store i64 %i.kb, ptr %i.gz, align 8, !tbaa !71
  br label %print_array.exit

default.unreachable133:                           ; preds = %.split
  unreachable

print_array.exit:                                 ; preds = %update_offset.exit65, %bb.cd, %update_offset.exit66, %bb.by, %bb.bx, %bb.bn, %bb.bk, %bb.ah, %bb.s, %bb.d, %bb.as, %bb.aq, %bb.am, %bb.ag, %bb.ak, %bb.ad, %bb.ab, %bb.x, %bb.r, %bb.v, %bb.o, %bb.m, %bb.i, %bb.c, %bb.g, %.loopexit, %bb.cm, %bb.bt, %bb.bs, %bb.br, %._crit_edge87, %bb.bi, %bb.bh, %bb.b, %bb.bf, %bb.bd, %bb.be, %bb.a, %bb.bg, %print_number.exit, %ensure.exit59, %ensure.exit47, %ensure.exit
  %.1 = phi i32 [ 0, %._crit_edge87 ], [ 0, %bb.be ], [ 0, %bb.a ], [ 1, %ensure.exit ], [ 0, %bb.ah ], [ 1, %ensure.exit47 ], [ 0, %bb.am ], [ 1, %ensure.exit59 ], [ %.037.i, %print_number.exit ], [ 0, %bb.aq ], [ %i.fo, %bb.bg ], [ 0, %bb.ad ], [ 1, %bb.bf ], [ 0, %bb.bd ], [ 0, %bb.b ], [ 0, %bb.r ], [ 0, %bb.o ], [ 1, %bb.br ], [ 0, %bb.ak ], [ 0, %bb.bh ], [ 0, %bb.ag ], [ 0, %bb.bi ], [ 1, %.loopexit ], [ 0, %bb.s ], [ 0, %bb.bs ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.bn ], [ 0, %bb.cm ], [ 0, %bb.as ], [ 0, %bb.bt ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.v ], [ 0, %bb.bk ], [ 0, %bb.bx ], [ 0, %bb.by ], [ 0, %update_offset.exit66 ], [ 0, %bb.cd ], [ 0, %update_offset.exit65 ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_PrintPreallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.printbuffer, align 8        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.a, align 8
  %i.b = icmp slt i32 %2, 0
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !58
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.g, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %3, ptr %i.h, align 4, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !36
  %i.j = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @cJSON_GetArraySize(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.06.in = phi ptr [ %i.b, %bb.b ], [ %.06, %bb.c ]
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]     ; 2 uses
  %.06 = load ptr, ptr %.06.in, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq ptr %.06, null
  %i.c = add i32 %.0, 1
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ %.0, %bb.c ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_GetArrayItem(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %get_array_item.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i64 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.0.in.i = phi ptr [ %i.d, %bb.b ], [ %.0.i, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !74 ; 3 uses
  %i.e = icmp ne ptr %.0.i, null
  %i.f = icmp ne i64 %.07.i, 0
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  %i.h = add nsw i64 %.07.i, -1
  br i1 %i.g, label %bb.c, label %get_array_item.exit

get_array_item.exit:                              ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_GetObjectItem(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %get_object_item.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not2349.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i, label %get_object_item.exit, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i
  %.150.i = phi ptr [ %i.ag, %case_insensitive_strcmp.exit.thread30.i ], [ %i.d, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.150.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %get_object_item.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #31
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !40      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !77
  %i.o = load i8, ptr %i.f, align 1, !tbaa !40
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %case_insensitive_strcmp.exit.thread30.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.d
  %i.t = phi i8 [ %i.x, %bb.d ], [ %i.k, %.preheader.i.i ]
  %.02030.i.i = phi ptr [ %i.v, %bb.d ], [ %1, %.preheader.i.i ]
  %.02129.i.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %.preheader.i.i ]
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %get_object_item.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.02030.i.i, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02129.i.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.v, align 1, !tbaa !40    ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !77
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !40
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !77
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i, label %case_insensitive_strcmp.exit.thread30.i

case_insensitive_strcmp.exit.thread30.i:          ; preds = %bb.d, %.preheader.i.i, %.lr.ph51.i
  %i.ag = load ptr, ptr %.150.i, align 8, !tbaa !27 ; 2 uses
  %.not23.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i, label %get_object_item.exit, label %.lr.ph51.i

get_object_item.exit:                             ; preds = %case_insensitive_strcmp.exit.thread30.i, %bb.c, %.lr.ph.i.i, %bb.a, %bb.b
  %.019.i = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %.150.i, %.lr.ph.i.i ], [ %.150.i, %bb.c ], [ null, %case_insensitive_strcmp.exit.thread30.i ]
  ret ptr %.019.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_GetObjectItemCaseSensitive(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %get_object_item.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not2349.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i, label %get_object_item.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.048.i = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.048.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not26.i = icmp eq ptr %i.f, null
  br i1 %.not26.i, label %get_object_item.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.f) #30
  %.not27.i = icmp eq i32 %i.g, 0
  br i1 %.not27.i, label %get_object_item.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.048.i, align 8, !tbaa !27 ; 2 uses
  %.not25.i = icmp eq ptr %i.h, null
  br i1 %.not25.i, label %get_object_item.exit, label %.lr.ph.i

get_object_item.exit:                             ; preds = %bb.d, %.lr.ph.i, %bb.c, %bb.a, %bb.b
  %.019.i = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.d ], [ %.048.i, %bb.c ], [ null, %.lr.ph.i ]
  ret ptr %.019.i
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_HasObjectItem(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %cJSON_GetObjectItem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i, label %cJSON_GetObjectItem.exit, label %.lr.ph51.i.i

.lr.ph51.i.i:                                     ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i.i
  %.150.i.i = phi ptr [ %i.ag, %case_insensitive_strcmp.exit.thread30.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %cJSON_GetObjectItem.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #31
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !40      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !77
  %i.o = load i8, ptr %i.f, align 1, !tbaa !40
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %i.t = phi i8 [ %i.x, %bb.d ], [ %i.k, %.preheader.i.i.i ]
  %.02030.i.i.i = phi ptr [ %i.v, %bb.d ], [ %1, %.preheader.i.i.i ]
  %.02129.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %.preheader.i.i.i ]
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %cJSON_GetObjectItem.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.02030.i.i.i, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02129.i.i.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.v, align 1, !tbaa !40    ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !77
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !40
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !77
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i

case_insensitive_strcmp.exit.thread30.i.i:        ; preds = %bb.d, %.preheader.i.i.i, %.lr.ph51.i.i
  %i.ag = load ptr, ptr %.150.i.i, align 8, !tbaa !27 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i.i, label %cJSON_GetObjectItem.exit, label %.lr.ph51.i.i

cJSON_GetObjectItem.exit:                         ; preds = %bb.c, %case_insensitive_strcmp.exit.thread30.i.i, %.lr.ph.i.i.i, %bb.a, %bb.b
  %.019.i.i = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %.lr.ph.i.i.i ], [ 1, %bb.c ], [ 0, %case_insensitive_strcmp.exit.thread30.i.i ]
  ret i32 %.019.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @cJSON_AddItemToArray(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %0, null
  %or.cond.i = or i1 %i.b, %i.a
  %i.c = icmp eq ptr %0, %1
  %or.cond21.i = or i1 %i.c, %or.cond.i
  br i1 %or.cond21.i, label %add_item_to_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.d, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !56
  store ptr null, ptr %1, align 8, !tbaa !27
  br label %add_item_to_array.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %add_item_to_array.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !56
  store ptr %1, ptr %i.h, align 8, !tbaa !56
  br label %add_item_to_array.exit

add_item_to_array.exit:                           ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_AddItemToObject(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  %i.d = icmp eq ptr %0, %2
  %or.cond34.i = or i1 %i.d, %or.cond3.i
  br i1 %or.cond34.i, label %add_item_to_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #30
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.h = tail call ptr %i.g(i64 noundef %i.f) #29, !inline_history !78 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %add_item_to_object.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %i.l = and i32 %i.k, -513
  %i.m = and i32 %i.k, 512
  %.not32.i = icmp eq i32 %i.m, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.p(ptr noundef nonnull %i.o) #29, !inline_history !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.q, align 8, !tbaa !29
  store i32 %i.l, ptr %i.j, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %i.r, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !56
  store ptr null, ptr %2, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56   ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %2, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !56
  store ptr %2, ptr %i.v, align 8, !tbaa !56
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %bb.i
  %.026.i = phi i32 [ 0, %bb.a ], [ 1, %bb.i ], [ 1, %bb.g ], [ 1, %bb.h ], [ 0, %bb.b ]
  ret i32 %.026.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_AddItemToObjectCS(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  %i.d = icmp eq ptr %0, %2
  %or.cond34.i = or i1 %i.d, %or.cond3.i
  br i1 %or.cond34.i, label %add_item_to_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = or i32 %i.f, 512
  %i.h = and i32 %i.f, 512
  %.not32.i = icmp eq i32 %i.h, 0
  br i1 %.not32.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not33.i = icmp eq ptr %i.j, null
  br i1 %.not33.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.k(ptr noundef nonnull %i.j) #29, !inline_history !79
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %1, ptr %i.l, align 8, !tbaa !29
  store i32 %i.g, ptr %i.e, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %2, ptr %i.m, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !56
  store ptr null, ptr %2, align 8, !tbaa !27
  br label %add_item_to_object.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %add_item_to_object.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !56
  store ptr %2, ptr %i.q, align 8, !tbaa !56
  br label %add_item_to_object.exit

add_item_to_object.exit:                          ; preds = %bb.a, %bb.f, %bb.g, %bb.h
  %.026.i = phi i32 [ 0, %bb.a ], [ 1, %bb.h ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %.026.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @cJSON_AddItemReferenceToArray(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %add_item_to_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.c = tail call ptr %global_hooks.val.i(i64 noundef 64) #29, !inline_history !80 ; 12 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %add_item_to_array.exit, label %create_reference.exit

create_reference.exit:                            ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 56, i1 false)
end_hunk_0
begin_hunk_1_@cJSON_DeleteItemFromArray:bb.a

cJSON_DetachItemFromArray.exit:                   ; preds = %bb.a, %get_array_item.exit.i, %bb.e, %bb.h
  %.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.h ], [ null, %bb.e ], [ null, %get_array_item.exit.i ]
  tail call void @cJSON_Delete(ptr noundef %.0.i)
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_DetachItemFromObject(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %cJSON_DetachItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %.not2349.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i, label %cJSON_DetachItemViaPointer.exit, label %.lr.ph51.i.i

.lr.ph51.i.i:                                     ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i.i
  %.150.i.i = phi ptr [ %i.ag, %case_insensitive_strcmp.exit.thread30.i.i ], [ %i.d, %bb.b ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %cJSON_GetObjectItem.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #31
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !40      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !77
  %i.o = load i8, ptr %i.f, align 1, !tbaa !40
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %i.t = phi i8 [ %i.x, %bb.d ], [ %i.k, %.preheader.i.i.i ]
  %.02030.i.i.i = phi ptr [ %i.v, %bb.d ], [ %1, %.preheader.i.i.i ]
  %.02129.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %.preheader.i.i.i ]
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %cJSON_GetObjectItem.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.02030.i.i.i, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02129.i.i.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.v, align 1, !tbaa !40    ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !77
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !40
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !77
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i

case_insensitive_strcmp.exit.thread30.i.i:        ; preds = %bb.d, %.preheader.i.i.i, %.lr.ph51.i.i
  %i.ag = load ptr, ptr %.150.i.i, align 8, !tbaa !27 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i.i, label %cJSON_DetachItemViaPointer.exit, label %.lr.ph51.i.i

cJSON_GetObjectItem.exit:                         ; preds = %bb.c, %.lr.ph.i.i.i
  %.not.i = icmp eq ptr %.150.i.i, %i.d
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %cJSON_GetObjectItem.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %cJSON_DetachItemViaPointer.exit, label %.thread.thread.i

.thread.i:                                        ; preds = %cJSON_GetObjectItem.exit
  %i.ak = load ptr, ptr %.150.i.i, align 8, !tbaa !27 ; 3 uses
  %.not29.i = icmp eq ptr %i.ak, null
  br i1 %.not29.i, label %bb.f, label %.thread30.i

.thread.thread.i:                                 ; preds = %bb.e
  %i.al = load ptr, ptr %.150.i.i, align 8, !tbaa !27 ; 3 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !27
  %.not2932.i = icmp eq ptr %i.al, null
  br i1 %.not2932.i, label %bb.g, label %.thread31.i

.thread30.i:                                      ; preds = %.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !56
  br label %bb.f

.thread31.i:                                      ; preds = %.thread.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !56
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i, %.thread.i
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ai, ptr %i.aq, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.150.i.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemViaPointer.exit

cJSON_DetachItemViaPointer.exit:                  ; preds = %case_insensitive_strcmp.exit.thread30.i.i, %bb.a, %bb.b, %bb.e, %bb.h
  %.0.i = phi ptr [ %.150.i.i, %bb.h ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %case_insensitive_strcmp.exit.thread30.i.i ]
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cJSON_DetachItemFromObjectCaseSensitive(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %cJSON_DetachItemViaPointer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %.not2349.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i, label %cJSON_DetachItemViaPointer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.048.i.i = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.b ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.f, null
  br i1 %.not26.i.i, label %cJSON_DetachItemViaPointer.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.f) #30
  %.not27.i.i = icmp eq i32 %i.g, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.048.i.i, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.h, null
  br i1 %.not25.i.i, label %cJSON_DetachItemViaPointer.exit, label %.lr.ph.i.i

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.c
  %.not.i = icmp eq ptr %.048.i.i, %i.d
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %cJSON_GetObjectItemCaseSensitive.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %cJSON_DetachItemViaPointer.exit, label %.thread.thread.i

.thread.i:                                        ; preds = %cJSON_GetObjectItemCaseSensitive.exit
  %i.l = load ptr, ptr %.048.i.i, align 8, !tbaa !27 ; 3 uses
  %.not29.i = icmp eq ptr %i.l, null
  br i1 %.not29.i, label %bb.f, label %.thread30.i

.thread.thread.i:                                 ; preds = %bb.e
  %i.m = load ptr, ptr %.048.i.i, align 8, !tbaa !27 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !27
  %.not2932.i = icmp eq ptr %i.m, null
  br i1 %.not2932.i, label %bb.g, label %.thread31.i

.thread30.i:                                      ; preds = %.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !56
  br label %bb.f

.thread31.i:                                      ; preds = %.thread.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.j, ptr %i.q, align 8, !tbaa !56
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i, %.thread.i
  store ptr %i.l, ptr %i.c, align 8, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.r, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.048.i.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemViaPointer.exit

cJSON_DetachItemViaPointer.exit:                  ; preds = %.lr.ph.i.i, %bb.d, %bb.a, %bb.b, %bb.e, %bb.h
  %.0.i = phi ptr [ %.048.i.i, %bb.h ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ null, %.lr.ph.i.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cJSON_DeleteItemFromObject(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i.i, label %cJSON_DetachItemFromObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %.not2349.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i.i, label %cJSON_DetachItemFromObject.exit, label %.lr.ph51.i.i.i

.lr.ph51.i.i.i:                                   ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i.i.i
  %.150.i.i.i = phi ptr [ %i.ag, %case_insensitive_strcmp.exit.thread30.i.i.i ], [ %i.d, %bb.b ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.150.i.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i.i.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %cJSON_GetObjectItem.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #31
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !40      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !77
  %i.o = load i8, ptr %i.f, align 1, !tbaa !40
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %i.t = phi i8 [ %i.x, %bb.d ], [ %i.k, %.preheader.i.i.i.i ]
  %.02030.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %1, %.preheader.i.i.i.i ]
  %.02129.i.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %.preheader.i.i.i.i ]
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %cJSON_GetObjectItem.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.02030.i.i.i.i, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02129.i.i.i.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.v, align 1, !tbaa !40    ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !77
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !40
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !77
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i.i

case_insensitive_strcmp.exit.thread30.i.i.i:      ; preds = %bb.d, %.preheader.i.i.i.i, %.lr.ph51.i.i.i
  %i.ag = load ptr, ptr %.150.i.i.i, align 8, !tbaa !27 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i.i.i, label %cJSON_DetachItemFromObject.exit, label %.lr.ph51.i.i.i

cJSON_GetObjectItem.exit.i:                       ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.not.i.i = icmp eq ptr %.150.i.i.i, %i.d
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %cJSON_GetObjectItem.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.150.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %cJSON_DetachItemFromObject.exit, label %.thread.thread.i.i

.thread.i.i:                                      ; preds = %cJSON_GetObjectItem.exit.i
  %i.ak = load ptr, ptr %.150.i.i.i, align 8, !tbaa !27 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.ak, null
  br i1 %.not29.i.i, label %bb.f, label %.thread30.i.i

.thread.thread.i.i:                               ; preds = %bb.e
  %i.al = load ptr, ptr %.150.i.i.i, align 8, !tbaa !27 ; 3 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !27
  %.not2932.i.i = icmp eq ptr %i.al, null
  br i1 %.not2932.i.i, label %bb.g, label %.thread31.i.i

.thread30.i.i:                                    ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.150.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !56
  br label %bb.f

.thread31.i.i:                                    ; preds = %.thread.thread.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !56
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i.i, %.thread.i.i
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ai, ptr %i.aq, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.150.i.i.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemFromObject.exit

cJSON_DetachItemFromObject.exit:                  ; preds = %case_insensitive_strcmp.exit.thread30.i.i.i, %bb.a, %bb.b, %bb.e, %bb.h
  %.0.i.i = phi ptr [ %.150.i.i.i, %bb.h ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %case_insensitive_strcmp.exit.thread30.i.i.i ]
  tail call void @cJSON_Delete(ptr noundef %.0.i.i)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cJSON_DeleteItemFromObjectCaseSensitive(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i.i, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %.not2349.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i.i, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.d
  %.048.i.i.i = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.b ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not26.i.i.i, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.f) #30
  %.not27.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not27.i.i.i, label %cJSON_GetObjectItemCaseSensitive.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.048.i.i.i, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not25.i.i.i, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %.lr.ph.i.i.i

cJSON_GetObjectItemCaseSensitive.exit.i:          ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.048.i.i.i, %i.d
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %cJSON_GetObjectItemCaseSensitive.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %cJSON_DetachItemFromObjectCaseSensitive.exit, label %.thread.thread.i.i

.thread.i.i:                                      ; preds = %cJSON_GetObjectItemCaseSensitive.exit.i
  %i.l = load ptr, ptr %.048.i.i.i, align 8, !tbaa !27 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.l, null
  br i1 %.not29.i.i, label %bb.f, label %.thread30.i.i

.thread.thread.i.i:                               ; preds = %bb.e
  %i.m = load ptr, ptr %.048.i.i.i, align 8, !tbaa !27 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !27
  %.not2932.i.i = icmp eq ptr %i.m, null
  br i1 %.not2932.i.i, label %bb.g, label %.thread31.i.i

.thread30.i.i:                                    ; preds = %.thread.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !56
  br label %bb.f

.thread31.i.i:                                    ; preds = %.thread.thread.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.j, ptr %i.q, align 8, !tbaa !56
  br label %bb.h

bb.f:                                             ; preds = %.thread30.i.i, %.thread.i.i
  store ptr %i.l, ptr %i.c, align 8, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %.thread.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.r, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread31.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.048.i.i.i, i8 0, i64 16, i1 false)
  br label %cJSON_DetachItemFromObjectCaseSensitive.exit

cJSON_DetachItemFromObjectCaseSensitive.exit:     ; preds = %.lr.ph.i.i.i, %bb.d, %bb.a, %bb.b, %bb.e, %bb.h
  %.0.i.i = phi ptr [ %.048.i.i.i, %bb.h ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ null, %.lr.ph.i.i.i ]
  tail call void @cJSON_Delete(ptr noundef %.0.i.i)
end_hunk_1
begin_hunk_2_@cJSON_Compare:bb.a
  %i.ax = load i8, ptr %i.ao, align 1, !tbaa !40  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !77
  %i.bb = load i8, ptr %i.as, align 1, !tbaa !40
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !77
  %i.bf = icmp eq i32 %i.ba, %i.be
  br i1 %i.bf, label %.lr.ph.i.i.us, label %case_insensitive_strcmp.exit.thread30.i.us

.lr.ph.i.i.us:                                    ; preds = %.preheader.i.i.us, %bb.n
  %i.bg = phi i8 [ %i.bk, %bb.n ], [ %i.ax, %.preheader.i.i.us ]
  %.02030.i.i.us = phi ptr [ %i.bi, %bb.n ], [ %i.ao, %.preheader.i.i.us ]
  %.02129.i.i.us = phi ptr [ %i.bj, %bb.n ], [ %i.as, %.preheader.i.i.us ]
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %get_object_item.exit.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.us
  %i.bi = getelementptr inbounds nuw i8, ptr %.02030.i.i.us, i64 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02129.i.i.us, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !40  ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !77
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !40
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !77
  %i.bs = icmp eq i32 %i.bn, %i.br
  br i1 %i.bs, label %.lr.ph.i.i.us, label %case_insensitive_strcmp.exit.thread30.i.us

case_insensitive_strcmp.exit.thread30.i.us:       ; preds = %bb.n, %.preheader.i.i.us, %.lr.ph51.i.us
  %i.bt = load ptr, ptr %.150.i.us, align 8, !tbaa !27 ; 2 uses
  %.not23.i.us = icmp eq ptr %i.bt, null
  br i1 %.not23.i.us, label %get_object_item.exit.thread, label %.lr.ph51.i.us

get_object_item.exit.us:                          ; preds = %bb.m, %.lr.ph.i.i.us
  %i.bu = tail call i32 @cJSON_Compare(ptr noundef nonnull %.049.us, ptr noundef nonnull %.150.i.us, i32 noundef 0)
  %.not63.us = icmp eq i32 %i.bu, 0
  br i1 %.not63.us, label %get_object_item.exit.thread, label %.split121.us

.split121:                                        ; preds = %bb.k, %get_object_item.exit.loopexit111
  %.049.in = phi ptr [ %.049, %get_object_item.exit.loopexit111 ], [ %i.al, %bb.k ]
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !74 ; 4 uses
  %.not60 = icmp eq ptr %.049, null
  br i1 %.not60, label %.split123.us, label %bb.o

bb.o:                                             ; preds = %.split121
  %i.bv = getelementptr inbounds nuw i8, ptr %.049, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %get_object_item.exit.thread, label %.preheader41.i

.preheader41.i:                                   ; preds = %bb.o
  %i.by = load ptr, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %.not2349.i = icmp eq ptr %i.by, null
  br i1 %.not2349.i, label %get_object_item.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.q
  %.048.i = phi ptr [ %i.cc, %bb.q ], [ %i.by, %.preheader41.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.048.i, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29 ; 2 uses
  %.not26.i = icmp eq ptr %i.ca, null
  br i1 %.not26.i, label %get_object_item.exit.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.cb = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(1) %i.ca) #30
  %.not27.i = icmp eq i32 %i.cb, 0
  br i1 %.not27.i, label %get_object_item.exit.loopexit111, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %.048.i, align 8, !tbaa !27 ; 2 uses
  %.not25.i = icmp eq ptr %i.cc, null
  br i1 %.not25.i, label %get_object_item.exit.thread, label %.lr.ph.i

get_object_item.exit.loopexit111:                 ; preds = %bb.p
  %i.cd = tail call i32 @cJSON_Compare(ptr noundef nonnull %.049, ptr noundef nonnull %.048.i, i32 noundef %2)
  %.not63 = icmp eq i32 %i.cd, 0
  br i1 %.not63, label %get_object_item.exit.thread, label %.split121

.split123.us:                                     ; preds = %.split121, %.split121.us
  br i1 %.not.i, label %.split124.us, label %.split124

.split124.us:                                     ; preds = %.split123.us, %get_object_item.exit93.us
  %.0.in.us = phi ptr [ %.0.us, %get_object_item.exit93.us ], [ %i.am, %.split123.us ]
  %.0.us = load ptr, ptr %.0.in.us, align 8, !tbaa !74 ; 4 uses
  %.not61.us = icmp eq ptr %.0.us, null           ; 5 uses
  br i1 %.not61.us, label %get_object_item.exit.thread, label %bb.r

bb.r:                                             ; preds = %.split124.us
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.us, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %get_object_item.exit.thread, label %.preheader.i84.us

.preheader.i84.us:                                ; preds = %bb.r
  %i.ch = load ptr, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not2349.i73.us = icmp eq ptr %i.ch, null
  br i1 %.not2349.i73.us, label %get_object_item.exit.thread, label %.lr.ph51.i85.us

.lr.ph51.i85.us:                                  ; preds = %.preheader.i84.us, %case_insensitive_strcmp.exit.thread30.i88.us
  %.150.i86.us = phi ptr [ %i.dk, %case_insensitive_strcmp.exit.thread30.i88.us ], [ %i.ch, %.preheader.i84.us ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.150.i86.us, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !29 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %case_insensitive_strcmp.exit.thread30.i88.us, label %bb.s

bb.s:                                             ; preds = %.lr.ph51.i85.us
  %i.cl = icmp eq ptr %i.cf, %i.cj
  br i1 %i.cl, label %get_object_item.exit93.us, label %.preheader.i.i87.us

.preheader.i.i87.us:                              ; preds = %bb.s
  %i.cm = tail call ptr @__ctype_tolower_loc() #31
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !75 ; 4 uses
  %i.co = load i8, ptr %i.cf, align 1, !tbaa !40  ; 2 uses
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !77
  %i.cs = load i8, ptr %i.cj, align 1, !tbaa !40
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !77
  %i.cw = icmp eq i32 %i.cr, %i.cv
  br i1 %i.cw, label %.lr.ph.i.i90.us, label %case_insensitive_strcmp.exit.thread30.i88.us

.lr.ph.i.i90.us:                                  ; preds = %.preheader.i.i87.us, %bb.t
  %i.cx = phi i8 [ %i.db, %bb.t ], [ %i.co, %.preheader.i.i87.us ]
  %.02030.i.i91.us = phi ptr [ %i.cz, %bb.t ], [ %i.cf, %.preheader.i.i87.us ]
  %.02129.i.i92.us = phi ptr [ %i.da, %bb.t ], [ %i.cj, %.preheader.i.i87.us ]
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %get_object_item.exit93.us, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i90.us
  %i.cz = getelementptr inbounds nuw i8, ptr %.02030.i.i91.us, i64 1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02129.i.i92.us, i64 1 ; 2 uses
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !40  ; 2 uses
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !77
  %i.df = load i8, ptr %i.da, align 1, !tbaa !40
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !77
  %i.dj = icmp eq i32 %i.de, %i.di
  br i1 %i.dj, label %.lr.ph.i.i90.us, label %case_insensitive_strcmp.exit.thread30.i88.us

case_insensitive_strcmp.exit.thread30.i88.us:     ; preds = %bb.t, %.preheader.i.i87.us, %.lr.ph51.i85.us
  %i.dk = load ptr, ptr %.150.i86.us, align 8, !tbaa !27 ; 2 uses
  %.not23.i89.us = icmp eq ptr %i.dk, null
  br i1 %.not23.i89.us, label %get_object_item.exit.thread, label %.lr.ph51.i85.us

get_object_item.exit93.us:                        ; preds = %bb.s, %.lr.ph.i.i90.us
  %i.dl = tail call i32 @cJSON_Compare(ptr noundef nonnull %.0.us, ptr noundef nonnull %.150.i86.us, i32 noundef 0)
  %.not62.us = icmp eq i32 %i.dl, 0
  br i1 %.not62.us, label %get_object_item.exit.thread, label %.split124.us

.split124:                                        ; preds = %.split123.us, %get_object_item.exit93.loopexit106
  %.0.in = phi ptr [ %.0, %get_object_item.exit93.loopexit106 ], [ %i.am, %.split123.us ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !74  ; 4 uses
  %.not61 = icmp eq ptr %.0, null                 ; 5 uses
  br i1 %.not61, label %get_object_item.exit.thread, label %bb.u

bb.u:                                             ; preds = %.split124
  %i.dm = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %get_object_item.exit.thread, label %.preheader41.i74

.preheader41.i74:                                 ; preds = %bb.u
  %i.dp = load ptr, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not2349.i73 = icmp eq ptr %i.dp, null
  br i1 %.not2349.i73, label %get_object_item.exit.thread, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %.preheader41.i74, %bb.w
  %.048.i76 = phi ptr [ %i.dt, %bb.w ], [ %i.dp, %.preheader41.i74 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i76, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !29 ; 2 uses
  %.not26.i77 = icmp eq ptr %i.dr, null
  br i1 %.not26.i77, label %get_object_item.exit.thread, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i75
  %i.ds = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dn, ptr noundef nonnull dereferenceable(1) %i.dr) #30
  %.not27.i78 = icmp eq i32 %i.ds, 0
  br i1 %.not27.i78, label %get_object_item.exit93.loopexit106, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = load ptr, ptr %.048.i76, align 8, !tbaa !27 ; 2 uses
  %.not25.i79 = icmp eq ptr %i.dt, null
  br i1 %.not25.i79, label %get_object_item.exit.thread, label %.lr.ph.i75

get_object_item.exit93.loopexit106:               ; preds = %bb.v
  %i.du = tail call i32 @cJSON_Compare(ptr noundef nonnull %.0, ptr noundef nonnull %.048.i76, i32 noundef %2)
  %.not62 = icmp eq i32 %i.du, 0
  br i1 %.not62, label %get_object_item.exit.thread, label %.split124

default.unreachable169:                           ; preds = %.split2
  unreachable

get_object_item.exit.thread:                      ; preds = %get_object_item.exit.loopexit111, %bb.o, %.preheader41.i, %.lr.ph.i, %bb.q, %get_object_item.exit.us, %.preheader.i.us, %bb.l, %case_insensitive_strcmp.exit.thread30.i.us, %.split124, %get_object_item.exit93.loopexit106, %bb.u, %.preheader41.i74, %.lr.ph.i75, %bb.w, %get_object_item.exit93.us, %.preheader.i84.us, %bb.r, %.split124.us, %case_insensitive_strcmp.exit.thread30.i88.us, %bb.i, %bb.j, %bb.f, %bb.d, %bb.e, %bb.c, %.split2, %.split2, %.split2, %.split, %bb.a, %bb.b
  %.2.shrunk = phi i1 [ %.not64, %bb.j ], [ false, %bb.a ], [ false, %.lr.ph.i ], [ false, %case_insensitive_strcmp.exit.thread30.i88.us ], [ true, %.split ], [ %i.w, %bb.c ], [ true, %.split2 ], [ true, %.split2 ], [ %i.ae, %bb.f ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.b ], [ true, %.split2 ], [ false, %bb.i ], [ %.not61.us, %get_object_item.exit93.us ], [ false, %case_insensitive_strcmp.exit.thread30.i.us ], [ false, %get_object_item.exit.us ], [ false, %.lr.ph.i75 ], [ %.not61, %.split124 ], [ %.not61.us, %.split124.us ], [ %.not61.us, %bb.r ], [ %.not61.us, %.preheader.i84.us ], [ false, %bb.w ], [ %.not61, %.preheader41.i74 ], [ %.not61, %bb.u ], [ %.not61, %get_object_item.exit93.loopexit106 ], [ false, %bb.l ], [ false, %.preheader.i.us ], [ false, %bb.q ], [ false, %.preheader41.i ], [ false, %bb.o ], [ false, %get_object_item.exit.loopexit111 ]
  %.2 = zext i1 %.2.shrunk to i32
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_malloc(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %i.b = tail call ptr %i.a(i64 noundef %0) #29
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @reset(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @cJSON_Delete(ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  %i.g = and i32 %i.f, 256
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.h(ptr noundef nonnull %i.d) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !15
  %i.m = and i32 %i.l, 512
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !25
  tail call void %i.n(ptr noundef nonnull %i.j) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef ptr @read_file(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1) ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 0)
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.g = add nuw i64 %i.d, 1
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #32 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i64 @fread(ptr noundef nonnull %i.h, i64 noundef 1, i64 noundef %i.d, ptr noundef nonnull %i.a)
  %.not24 = icmp eq i64 %i.j, %i.d
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.h) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  store i8 0, ptr %i.k, align 1, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.h, %bb.g
  %.0.ph = phi ptr [ %i.h, %bb.h ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.028 = phi ptr [ %.0.ph, %bb.i ], [ null, %bb.a ]
  ret ptr %.028
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @main() local_unnamed_addr #8 {
bb.a:
  tail call void @UnityBegin(ptr noundef nonnull @.str.2) #29
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @cjson_utils_should_pass_json_patch_test_tests, ptr noundef nonnull @.str.3, i32 noundef 238) #29
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @cjson_utils_should_pass_json_patch_test_spec_tests, ptr noundef nonnull @.str.4, i32 noundef 239) #29
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @cjson_utils_should_pass_json_patch_test_cjson_utils_tests, ptr noundef nonnull @.str.5, i32 noundef 240) #29
  %i.a = tail call i32 @UnityEnd() #29
  ret i32 %i.a
}

declare void @UnityBegin(ptr noundef) local_unnamed_addr #22

declare void @UnityDefaultTestRun(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_utils_should_pass_json_patch_test_tests() #8 {
bb.a:
  %i.a = tail call fastcc ptr @parse_test_file(ptr noundef nonnull @.str.16) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not1115 = icmp eq ptr %i.c, null
  br i1 %.not1115, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.017 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.b ]
  %.0916 = phi ptr [ %i.j, %.lr.ph ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = tail call fastcc i32 @test_apply_patch(ptr noundef %.0916)
  %i.e = xor i32 %i.d, 1
  %i.f = tail call fastcc i32 @test_generate_test(ptr noundef %.0916)
  %i.g = xor i32 %i.f, 1
  %i.h = or i32 %i.e, %.017
  %i.i = or i32 %i.h, %i.g                        ; 2 uses
  %i.j = load ptr, ptr %.0916, align 8, !tbaa !27 ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b, %bb.a
  tail call void @cJSON_Delete(ptr noundef %i.a)
  br label %bb.d

._crit_edge:                                      ; preds = %.lr.ph
  %i.k = icmp eq i32 %i.i, 0
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @UnityFail(ptr noundef nonnull @.str.17, i64 noundef 197) #29
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_utils_should_pass_json_patch_test_spec_tests() #8 {
bb.a:
end_hunk_2
begin_hunk_3_@print_string_ptr:bb.a
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = add i64 %i.ar, %.0                      ; 4 uses
  %i.at = add i64 %i.as, 3
  %i.au = tail call fastcc ptr @ensure(ptr noundef %1, i64 noundef %i.at) ; 6 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %ensure.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = icmp eq i64 %.0, 0
  store i8 34, ptr %i.au, align 1, !tbaa !40
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %0, i64 %i.as, i1 false)
  %i.ay = getelementptr i8, ptr %i.au, i64 %i.as  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 1
  store i8 34, ptr %i.az, align 1, !tbaa !40
  %i.ba = getelementptr i8, ptr %i.ay, i64 2
  store i8 0, ptr %i.ba, align 1, !tbaa !40
  br label %ensure.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.bb = load i8, ptr %0, align 1, !tbaa !40
  %.fr71 = freeze i8 %i.bb                        ; 2 uses
  %.not6572 = icmp eq i8 %.fr71, 0
  br i1 %.not6572, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %bb.ah
  %.fr76 = phi i8 [ %.fr, %bb.ah ], [ %.fr71, %bb.w ] ; 3 uses
  %.pn74 = phi ptr [ %.155, %bb.ah ], [ %i.au, %bb.w ] ; 3 uses
  %.15773 = phi ptr [ %i.bi, %bb.ah ], [ %0, %bb.w ] ; 2 uses
  %.05475 = getelementptr inbounds nuw i8, ptr %.pn74, i64 1 ; 3 uses
  %i.bc = icmp ult i8 %.fr76, 32
  br i1 %i.bc, label %bb.y, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph
  switch i8 %.fr76, label %bb.x [
    i8 92, label %bb.y
    i8 34, label %bb.y
  ]

bb.x:                                             ; preds = %switch.early.test
  store i8 %.fr76, ptr %.05475, align 1, !tbaa !40
  br label %bb.ah

bb.y:                                             ; preds = %switch.early.test, %switch.early.test, %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn74, i64 2 ; 15 uses
  store i8 92, ptr %.05475, align 1, !tbaa !40
  %i.be = load i8, ptr %.15773, align 1, !tbaa !40 ; 2 uses
  switch i8 %i.be, label %bb.ag [
    i8 92, label %bb.z
    i8 34, label %bb.aa
    i8 8, label %bb.ab
    i8 12, label %bb.ac
    i8 10, label %bb.ad
    i8 13, label %bb.ae
    i8 9, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  store i8 92, ptr %i.bd, align 1, !tbaa !40
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  store i8 34, ptr %i.bd, align 1, !tbaa !40
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y
  store i8 98, ptr %i.bd, align 1, !tbaa !40
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y
  store i8 102, ptr %i.bd, align 1, !tbaa !40
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  store i8 110, ptr %i.bd, align 1, !tbaa !40
  br label %bb.ah

bb.ae:                                            ; preds = %bb.y
  store i8 114, ptr %i.bd, align 1, !tbaa !40
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  store i8 116, ptr %i.bd, align 1, !tbaa !40
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.bf) #29 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn74, i64 6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.x, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.155 = phi ptr [ %.05475, %bb.x ], [ %i.bh, %bb.ag ], [ %i.bd, %bb.z ], [ %i.bd, %bb.aa ], [ %i.bd, %bb.ab ], [ %i.bd, %bb.ac ], [ %i.bd, %bb.ad ], [ %i.bd, %bb.ae ], [ %i.bd, %bb.af ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.15773, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !40
  %.fr = freeze i8 %i.bj                          ; 2 uses
  %.not65 = icmp eq i8 %.fr, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ah, %bb.w
  %i.bk = getelementptr i8, ptr %i.au, i64 %i.as  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  store i8 34, ptr %i.bl, align 1, !tbaa !40
  %i.bm = getelementptr i8, ptr %i.bk, i64 2
  store i8 0, ptr %i.bm, align 1, !tbaa !40
  br label %ensure.exit.thread

ensure.exit.thread:                               ; preds = %bb.c, %bb.n, %bb.l, %bb.h, %bb.b, %bb.f, %bb.t, %._crit_edge, %bb.v, %ensure.exit
  %.058 = phi i32 [ 1, %._crit_edge ], [ 1, %bb.v ], [ 1, %ensure.exit ], [ 0, %bb.n ], [ 0, %bb.t ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.l ]
  ret i32 %.058
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #26

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @parse_test_file(ptr nofree noundef readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @read_file(ptr noundef %0) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @UnityFail(ptr noundef nonnull @.str.18, i64 noundef 38) #29
  br label %.thread20

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef null, i32 noundef 0) ; 4 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %.thread20, label %bb.c

.thread20:                                        ; preds = %bb.b, %.thread
  tail call void @UnityFail(ptr noundef nonnull @.str.19, i64 noundef 41) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  %i.g = and i32 %i.f, 255
  %.not26 = icmp eq i32 %i.g, 32
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread20, %bb.c
  %phi.call1825 = phi ptr [ null, %.thread20 ], [ %i.d, %bb.c ]
  tail call void @UnityFail(ptr noundef nonnull @.str.20, i64 noundef 42) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %phi.call1824 = phi ptr [ %i.d, %bb.c ], [ %phi.call1825, %bb.d ]
  tail call void @free(ptr noundef %i.a) #29
  ret ptr %phi.call1824
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @test_apply_patch(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.b, null
  br i1 %.not2349.i.i, label %cJSON_IsString.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %.048.i.i = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.d, null
  br i1 %.not26.i.i, label %cJSON_IsString.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(8) @.str.21, ptr noundef nonnull dereferenceable(1) %i.d) #30
  %.not27.i.i = icmp eq i32 %i.e, 0
  br i1 %.not27.i.i, label %cJSON_IsString.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.048.i.i, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.f, null
  br i1 %.not25.i.i, label %cJSON_IsString.exit.thread, label %.lr.ph.i.i

cJSON_IsString.exit:                              ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15
  %i.i = and i32 %i.h, 255
  %.not = icmp eq i32 %i.i, 16
  br i1 %.not, label %bb.d, label %cJSON_IsString.exit.thread

bb.d:                                             ; preds = %cJSON_IsString.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %i.k) ; 0 uses
  br label %bb.e

cJSON_IsString.exit.thread:                       ; preds = %.lr.ph.i.i, %bb.c, %bb.a, %cJSON_IsString.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %cJSON_IsString.exit.thread, %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %.not2349.i.i37 = icmp eq ptr %i.m, null
  br i1 %.not2349.i.i37, label %cJSON_IsTrue.exit.thread.thread, label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %bb.e, %bb.g
  %.048.i.i39 = phi ptr [ %i.q, %bb.g ], [ %i.m, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.048.i.i39, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not26.i.i40 = icmp eq ptr %i.o, null
  br i1 %.not26.i.i40, label %.lr.ph.i.i47.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i38
  %i.p = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(9) @.str.24, ptr noundef nonnull dereferenceable(1) %i.o) #30
  %.not27.i.i41 = icmp eq i32 %i.p, 0
  br i1 %.not27.i.i41, label %cJSON_IsTrue.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %.048.i.i39, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i42 = icmp eq ptr %i.q, null
  br i1 %.not25.i.i42, label %.lr.ph.i.i47.preheader, label %.lr.ph.i.i38

cJSON_IsTrue.exit:                                ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.048.i.i39, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !15
  %i.t = and i32 %i.s, 255
  %.not103 = icmp eq i32 %i.t, 2
  br i1 %.not103, label %bb.t, label %.lr.ph.i.i47.preheader

.lr.ph.i.i47.preheader:                           ; preds = %.lr.ph.i.i38, %bb.g, %cJSON_IsTrue.exit
  br label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %.lr.ph.i.i47.preheader, %bb.i
  %.048.i.i48 = phi ptr [ %i.x, %bb.i ], [ %i.m, %.lr.ph.i.i47.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.048.i.i48, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.not26.i.i49 = icmp eq ptr %i.v, null
  br i1 %.not26.i.i49, label %cJSON_IsTrue.exit.thread.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i47
  %i.w = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(4) @.str.26, ptr noundef nonnull dereferenceable(1) %i.v) #30
  %.not27.i.i50 = icmp eq i32 %i.w, 0
  br i1 %.not27.i.i50, label %cJSON_GetObjectItemCaseSensitive.exit53, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %.048.i.i48, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i51 = icmp eq ptr %i.x, null
  br i1 %.not25.i.i51, label %cJSON_IsTrue.exit.thread.thread, label %.lr.ph.i.i47

cJSON_IsTrue.exit.thread.thread:                  ; preds = %.lr.ph.i.i47, %bb.i, %bb.e
  tail call void @UnityFail(ptr noundef nonnull @.str.27, i64 noundef 80) #29
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %cJSON_GetObjectItemCaseSensitive.exit53

cJSON_GetObjectItemCaseSensitive.exit53:          ; preds = %bb.h, %cJSON_IsTrue.exit.thread.thread
  %i.y = phi ptr [ %.pre, %cJSON_IsTrue.exit.thread.thread ], [ %i.m, %bb.h ] ; 2 uses
  %.019.i.i5288 = phi ptr [ null, %cJSON_IsTrue.exit.thread.thread ], [ %.048.i.i48, %bb.h ]
  %.not2349.i.i54 = icmp eq ptr %i.y, null
  br i1 %.not2349.i.i54, label %.loopexit, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %cJSON_GetObjectItemCaseSensitive.exit53, %bb.k
  %.048.i.i56 = phi ptr [ %i.ac, %bb.k ], [ %i.y, %cJSON_GetObjectItemCaseSensitive.exit53 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.048.i.i56, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %.not26.i.i57 = icmp eq ptr %i.aa, null
  br i1 %.not26.i.i57, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i55
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(6) @.str.28, ptr noundef nonnull dereferenceable(1) %i.aa) #30
  %.not27.i.i58 = icmp eq i32 %i.ab, 0
  br i1 %.not27.i.i58, label %cJSON_GetObjectItemCaseSensitive.exit61, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %.048.i.i56, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i59 = icmp eq ptr %i.ac, null
  br i1 %.not25.i.i59, label %.loopexit, label %.lr.ph.i.i55

.loopexit:                                        ; preds = %.lr.ph.i.i55, %bb.k, %cJSON_GetObjectItemCaseSensitive.exit53
  tail call void @UnityFail(ptr noundef nonnull @.str.29, i64 noundef 82) #29
  br label %cJSON_GetObjectItemCaseSensitive.exit61

cJSON_GetObjectItemCaseSensitive.exit61:          ; preds = %bb.j, %.loopexit
  %.019.i.i6092 = phi ptr [ null, %.loopexit ], [ %.048.i.i56, %bb.j ] ; 2 uses
  %i.ad = tail call ptr @cJSON_Duplicate_rec(ptr noundef readonly %.019.i.i5288, i64 noundef 0, i32 noundef 1) ; 6 uses
  %.not29 = icmp eq ptr %i.ad, null
  br i1 %.not29, label %bb.l, label %bb.m

bb.l:                                             ; preds = %cJSON_GetObjectItemCaseSensitive.exit61
  tail call void @UnityFail(ptr noundef nonnull @.str.30, i64 noundef 85) #29
  br label %bb.m

bb.m:                                             ; preds = %cJSON_GetObjectItemCaseSensitive.exit61, %bb.l
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !28  ; 3 uses
  %.not2349.i.i62 = icmp eq ptr %i.ae, null
  br i1 %.not2349.i.i62, label %cJSON_GetObjectItemCaseSensitive.exit69.thread, label %.lr.ph.i.i63

.lr.ph.i.i63:                                     ; preds = %bb.m, %bb.o
  %.048.i.i64 = phi ptr [ %i.ai, %bb.o ], [ %i.ae, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.048.i.i64, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %.not26.i.i65 = icmp eq ptr %i.ag, null
  br i1 %.not26.i.i65, label %cJSON_GetObjectItemCaseSensitive.exit69, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i63
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(9) @.str.31, ptr noundef nonnull dereferenceable(1) %i.ag) #30
  %.not27.i.i66 = icmp eq i32 %i.ah, 0
  br i1 %.not27.i.i66, label %cJSON_GetObjectItemCaseSensitive.exit69, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %.048.i.i64, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i67 = icmp eq ptr %i.ai, null
  br i1 %.not25.i.i67, label %cJSON_GetObjectItemCaseSensitive.exit69, label %.lr.ph.i.i63

cJSON_GetObjectItemCaseSensitive.exit69:          ; preds = %.lr.ph.i.i63, %bb.n, %bb.o
  %.019.i.i68 = phi ptr [ %.048.i.i64, %bb.n ], [ null, %.lr.ph.i.i63 ], [ null, %bb.o ] ; 2 uses
  br label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %cJSON_GetObjectItemCaseSensitive.exit69, %bb.q
  %.048.i.i72 = phi ptr [ %i.am, %bb.q ], [ %i.ae, %cJSON_GetObjectItemCaseSensitive.exit69 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.048.i.i72, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %.not26.i.i73 = icmp eq ptr %i.ak, null
  br i1 %.not26.i.i73, label %cJSON_GetObjectItemCaseSensitive.exit69.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i71
  %i.al = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(6) @.str.32, ptr noundef nonnull dereferenceable(1) %i.ak) #30
  %.not27.i.i74 = icmp eq i32 %i.al, 0
  br i1 %.not27.i.i74, label %cJSON_GetObjectItemCaseSensitive.exit77, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %.048.i.i72, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i75 = icmp eq ptr %i.am, null
  br i1 %.not25.i.i75, label %cJSON_GetObjectItemCaseSensitive.exit69.thread, label %.lr.ph.i.i71

cJSON_GetObjectItemCaseSensitive.exit77:          ; preds = %bb.p
  %i.an = tail call i32 @cJSONUtils_ApplyPatchesCaseSensitive(ptr noundef %i.ad, ptr noundef %.019.i.i6092) #29
  %.not32 = icmp eq i32 %i.an, 0
  br i1 %.not32, label %bb.r, label %.thread

bb.r:                                             ; preds = %cJSON_GetObjectItemCaseSensitive.exit77
  tail call void @UnityFail(ptr noundef nonnull @.str.33, i64 noundef 92) #29
  br label %.thread

cJSON_GetObjectItemCaseSensitive.exit69.thread:   ; preds = %.lr.ph.i.i71, %bb.q, %bb.m
  %.019.i.i6895.ph = phi ptr [ null, %bb.m ], [ %.019.i.i68, %bb.q ], [ %.019.i.i68, %.lr.ph.i.i71 ] ; 2 uses
  %i.ao = tail call i32 @cJSONUtils_ApplyPatchesCaseSensitive(ptr noundef %i.ad, ptr noundef %.019.i.i6092) #29
  %i.ap = sext i32 %i.ao to i64
  tail call void @UnityAssertEqualNumber(i64 noundef 0, i64 noundef %i.ap, ptr noundef nonnull @.str.34, i64 noundef 99, i32 noundef 20) #29
  %.not31 = icmp eq ptr %.019.i.i6895.ph, null
  br i1 %.not31, label %.thread, label %bb.s

.thread:                                          ; preds = %cJSON_GetObjectItemCaseSensitive.exit69.thread, %cJSON_GetObjectItemCaseSensitive.exit77, %bb.r
  tail call void @cJSON_Delete(ptr noundef %i.ad)
  br label %bb.t

bb.s:                                             ; preds = %cJSON_GetObjectItemCaseSensitive.exit69.thread
  %i.aq = tail call i32 @cJSON_Compare(ptr noundef %i.ad, ptr noundef nonnull %.019.i.i6895.ph, i32 noundef 1) ; 2 uses
  tail call void @cJSON_Delete(ptr noundef %i.ad)
  %.not33.not = icmp eq i32 %i.aq, 0
  %spec.select = select i1 %.not33.not, ptr @str.1, ptr @str.2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread, %cJSON_IsTrue.exit
  %str.2.sink = phi ptr [ @str.6, %cJSON_IsTrue.exit ], [ %spec.select, %bb.s ], [ @str.2, %.thread ]
  %.024 = phi i32 [ 1, %cJSON_IsTrue.exit ], [ %i.aq, %bb.s ], [ 1, %.thread ]
  %puts35 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink) ; 0 uses
  ret i32 %.024
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @test_generate_test(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not2349.i.i = icmp eq ptr %i.b, null
  br i1 %.not2349.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %.048.i.i = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.d, null
  br i1 %.not26.i.i, label %.lr.ph.i.i39.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(9) @.str.24, ptr noundef nonnull dereferenceable(1) %i.d) #30
  %.not27.i.i = icmp eq i32 %i.e, 0
  br i1 %.not27.i.i, label %cJSON_IsTrue.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.048.i.i, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.f, null
  br i1 %.not25.i.i, label %.lr.ph.i.i39.preheader, label %.lr.ph.i.i

cJSON_IsTrue.exit:                                ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15
  %i.i = and i32 %i.h, 255
  %.not = icmp eq i32 %i.i, 2
  br i1 %.not, label %bb.d, label %.lr.ph.i.i39.preheader

.lr.ph.i.i39.preheader:                           ; preds = %.lr.ph.i.i, %bb.c, %cJSON_IsTrue.exit
  br label %.lr.ph.i.i39

bb.d:                                             ; preds = %cJSON_IsTrue.exit
  %puts37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %bb.n

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39.preheader, %bb.f
  %.048.i.i40 = phi ptr [ %i.m, %bb.f ], [ %i.b, %.lr.ph.i.i39.preheader ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.048.i.i40, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %.not26.i.i41 = icmp eq ptr %i.k, null
  br i1 %.not26.i.i41, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i39
  %i.l = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(4) @.str.26, ptr noundef nonnull dereferenceable(1) %i.k) #30
  %.not27.i.i42 = icmp eq i32 %i.l, 0
  br i1 %.not27.i.i42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %.048.i.i40, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i43 = icmp eq ptr %i.m, null
  br i1 %.not25.i.i43, label %.thread, label %.lr.ph.i.i39

.thread:                                          ; preds = %bb.f, %.lr.ph.i.i39, %bb.a
  tail call void @UnityFail(ptr noundef nonnull @.str.27, i64 noundef 142) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = tail call ptr @cJSON_Duplicate_rec(ptr noundef nonnull readonly %.048.i.i40, i64 noundef 0, i32 noundef 1) ; 2 uses
  %.not32 = icmp eq ptr %i.n, null
  br i1 %.not32, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %.019.i.i445965 = phi ptr [ null, %.thread ], [ %.048.i.i40, %bb.g ]
  tail call void @UnityFail(ptr noundef nonnull @.str.30, i64 noundef 146) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %phi.call66 = phi ptr [ %i.n, %bb.g ], [ null, %bb.h ] ; 4 uses
  %.019.i.i445964 = phi ptr [ %.048.i.i40, %bb.g ], [ %.019.i.i445965, %bb.h ]
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not2349.i.i46 = icmp eq ptr %i.o, null
  br i1 %.not2349.i.i46, label %.loopexit, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.i, %bb.k
  %.048.i.i48 = phi ptr [ %i.s, %bb.k ], [ %i.o, %bb.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.048.i.i48, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.not26.i.i49 = icmp eq ptr %i.q, null
  br i1 %.not26.i.i49, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i47
  %i.r = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(9) @.str.31, ptr noundef nonnull dereferenceable(1) %i.q) #30
  %.not27.i.i50 = icmp eq i32 %i.r, 0
  br i1 %.not27.i.i50, label %cJSON_GetObjectItemCaseSensitive.exit53, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %.048.i.i48, align 8, !tbaa !27 ; 2 uses
  %.not25.i.i51 = icmp eq ptr %i.s, null
  br i1 %.not25.i.i51, label %.loopexit, label %.lr.ph.i.i47

.loopexit:                                        ; preds = %.lr.ph.i.i47, %bb.k, %bb.i
  tail call void @cJSON_Delete(ptr noundef %phi.call66)
  br label %bb.n

cJSON_GetObjectItemCaseSensitive.exit53:          ; preds = %bb.j
  %i.t = tail call ptr @cJSONUtils_GeneratePatchesCaseSensitive(ptr noundef %.019.i.i445964, ptr noundef nonnull %.048.i.i48) #29 ; 4 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %.split25, label %.split26

.split25:                                         ; preds = %cJSON_GetObjectItemCaseSensitive.exit53
  tail call void @UnityFail(ptr noundef nonnull @.str.37, i64 noundef 157) #29
  br label %.split26

.split26:                                         ; preds = %cJSON_GetObjectItemCaseSensitive.exit53, %.split25
  %.sink = phi ptr [ null, %.split25 ], [ %i.t, %cJSON_GetObjectItemCaseSensitive.exit53 ]
  %i.u = tail call fastcc ptr @print(ptr noundef %.sink, i32 noundef 1) ; 2 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.u) ; 0 uses
  tail call void @free(ptr noundef %i.u) #29
  %i.v = tail call i32 @cJSONUtils_ApplyPatchesCaseSensitive(ptr noundef %phi.call66, ptr noundef %i.t) #29
  %i.w = sext i32 %i.v to i64
  tail call void @UnityAssertEqualNumber(i64 noundef 0, i64 noundef %i.w, ptr noundef nonnull @.str.39, i64 noundef 164, i32 noundef 20) #29
  %i.x = tail call i32 @cJSON_Compare(ptr noundef %phi.call66, ptr noundef nonnull %.048.i.i48, i32 noundef 1)
  tail call void @cJSON_Delete(ptr noundef %i.t)
  tail call void @cJSON_Delete(ptr noundef %phi.call66)
  %.not34 = icmp eq i32 %i.x, 0
  br i1 %.not34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split26
  %puts36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.split26
  %puts35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %.loopexit, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %.loopexit ], [ 0, %bb.m ], [ 1, %bb.l ]
  ret i32 %.0
}

declare void @UnityFail(ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @cJSONUtils_ApplyPatchesCaseSensitive(ptr noundef, ptr noundef) local_unnamed_addr #22

declare void @UnityAssertEqualNumber(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #22

declare ptr @cJSONUtils_GeneratePatchesCaseSensitive(ptr noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nofree nounwind }
attributes #29 = { nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0, !13, i64 8}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !13, i64 8}
!15 = !{!16, !6, i64 24}
!16 = !{!"cJSON", !17, i64 0, !17, i64 8, !17, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !18, i64 48, !11, i64 56}
!17 = !{!"p1 _ZTS5cJSON", !12, i64 0}
!18 = !{!"double", !7, i64 0}
!19 = !{!16, !11, i64 32}
!20 = !{!16, !18, i64 48}
!21 = !{!22, !12, i64 0}
!22 = !{!"internal_hooks", !12, i64 0, !12, i64 8, !12, i64 16}
!23 = !{!24, !12, i64 0}
!24 = !{!"cJSON_Hooks", !12, i64 0, !12, i64 8}
!25 = !{!22, !12, i64 8}
!26 = !{!24, !12, i64 8}
!27 = !{!16, !17, i64 0}
!28 = !{!16, !17, i64 16}
!29 = !{!16, !11, i64 56}
!30 = !{!16, !6, i64 40}
!31 = distinct !{null}
!32 = !{ptr @cJSON_free}
!33 = !{!34, !11, i64 0}
!34 = !{!"", !11, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !22, i64 32}
!35 = !{!34, !13, i64 8}
!36 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37}
!37 = !{!12, !12, i64 0}
!38 = distinct !{null}
!39 = !{!34, !13, i64 16}
!40 = !{!7, !7, i64 0}
!41 = !{!11, !11, i64 0}
!42 = !{!13, !13, i64 0}
!43 = !{!44, !11, i64 0}
!44 = !{!"lconv", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !7, i64 80, !7, i64 81, !7, i64 82, !7, i64 83, !7, i64 84, !7, i64 85, !7, i64 86, !7, i64 87, !7, i64 88, !7, i64 89, !7, i64 90, !7, i64 91, !7, i64 92, !7, i64 93}
!45 = !{!34, !12, i64 32}
!46 = distinct !{null}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"branch_weights", i32 8, i32 24}
!51 = distinct !{!51, !48, !49}
!52 = distinct !{!52, !49, !48}
!53 = !{!34, !12, i64 40}
!54 = !{!34, !13, i64 24}
!55 = distinct !{null, null}
!56 = !{!16, !17, i64 8}
!57 = distinct !{null}
!58 = !{!59, !11, i64 0}
!59 = !{!"", !11, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !22, i64 40}
!60 = !{!59, !13, i64 8}
!61 = !{!59, !6, i64 36}
!62 = !{!59, !13, i64 16}
!63 = !{!22, !12, i64 16}
!64 = !{!59, !6, i64 32}
!65 = !{!59, !12, i64 56}
!66 = !{ptr @ensure}
!67 = !{!59, !12, i64 48}
!68 = !{!59, !12, i64 40}
!69 = !{!18, !18, i64 0}
!70 = distinct !{!70, !49, !48}
!71 = !{!59, !13, i64 24}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = !{!17, !17, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 int", !12, i64 0}
!77 = !{!6, !6, i64 0}
!78 = distinct !{null, null}
!79 = distinct !{null}
!80 = distinct !{null, null}
!81 = distinct !{ptr @cJSON_CreateNull, null}
!82 = distinct !{ptr @cJSON_CreateTrue, null}
!83 = distinct !{ptr @cJSON_CreateFalse, null}
!84 = distinct !{ptr @cJSON_CreateBool, null}
!85 = distinct !{ptr @cJSON_CreateNumber, null}
!86 = distinct !{ptr @cJSON_CreateString, null}
!87 = distinct !{ptr @cJSON_CreateString, null}
!88 = distinct !{ptr @cJSON_CreateRaw, null}
!89 = distinct !{ptr @cJSON_CreateRaw, null}
!90 = distinct !{ptr @cJSON_CreateObject, null}
!91 = distinct !{ptr @cJSON_CreateArray, null}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = !{!95, !95, i64 0}
!95 = !{!"float", !7, i64 0}
!96 = distinct !{!96, !93}
end_hunk_3
