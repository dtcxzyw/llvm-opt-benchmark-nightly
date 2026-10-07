Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/old_utils_tests?download=true
inline.NumInlined: 158
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@print_value:bb.a
  %.0.i6480 = phi i64 [ %i.jv, %.lr.ph81 ], [ 0, %.preheader ]
  %.3.i79 = phi ptr [ %i.ju, %.lr.ph81 ], [ %i.jq, %.preheader ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.3.i79, i64 1 ; 2 uses
  store i8 9, ptr %.3.i79, align 1, !tbaa !48
  %i.jv = add nuw i64 %.0.i6480, 1                ; 2 uses
  %i.jw = load i64, ptr %i.gz, align 8, !tbaa !88
  %i.jx = add i64 %i.jw, -1
  %i.jy = icmp ult i64 %i.jv, %i.jx
  br i1 %i.jy, label %.lr.ph81, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph81, %.preheader, %bb.cn
  %.4.i = phi ptr [ %i.jq, %bb.cn ], [ %i.jq, %.preheader ], [ %i.ju, %.lr.ph81 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 125, ptr %.4.i, align 1, !tbaa !48
  store i8 0, ptr %i.jz, align 1, !tbaa !48
  %i.ka = load i64, ptr %i.gz, align 8, !tbaa !88
  %i.kb = add i64 %i.ka, -1
  store i64 %i.kb, ptr %i.gz, align 8, !tbaa !88
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.a, align 8
  %i.b = icmp slt i32 %2, 0
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !60
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.g, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %3, ptr %i.h, align 4, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !46
  %i.j = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
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
  %.06 = load ptr, ptr %.06.in, align 8, !tbaa !70 ; 2 uses
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
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !70 ; 3 uses
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not2349.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i, label %get_object_item.exit, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i
  %.150.i = phi ptr [ %i.ag, %case_insensitive_strcmp.exit.thread30.i ], [ %i.d, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.150.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %get_object_item.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !48      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !73
  %i.o = load i8, ptr %i.f, align 1, !tbaa !48
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !73
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
  %i.x = load i8, ptr %i.v, align 1, !tbaa !48    ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !73
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !48
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i, label %case_insensitive_strcmp.exit.thread30.i

case_insensitive_strcmp.exit.thread30.i:          ; preds = %bb.d, %.preheader.i.i, %.lr.ph51.i
  %i.ag = load ptr, ptr %.150.i, align 8, !tbaa !37 ; 2 uses
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not2349.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i, label %get_object_item.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.048.i = phi ptr [ %i.h, %bb.d ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.048.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %.not26.i = icmp eq ptr %i.f, null
  br i1 %.not26.i, label %get_object_item.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.f) #31
  %.not27.i = icmp eq i32 %i.g, 0
  br i1 %.not27.i, label %get_object_item.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.048.i, align 8, !tbaa !37 ; 2 uses
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.d, null
  br i1 %.not2349.i.i, label %cJSON_GetObjectItem.exit, label %.lr.ph51.i.i

.lr.ph51.i.i:                                     ; preds = %bb.b, %case_insensitive_strcmp.exit.thread30.i.i
  %.150.i.i = phi ptr [ %i.ag, %case_insensitive_strcmp.exit.thread30.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.150.i.i, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %case_insensitive_strcmp.exit.thread30.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph51.i.i
  %i.h = icmp eq ptr %1, %i.f
  br i1 %i.h, label %cJSON_GetObjectItem.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.i = tail call ptr @__ctype_tolower_loc() #32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 4 uses
  %i.k = load i8, ptr %1, align 1, !tbaa !48      ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !73
  %i.o = load i8, ptr %i.f, align 1, !tbaa !48
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !73
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
  %i.x = load i8, ptr %i.v, align 1, !tbaa !48    ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !73
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !48
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.af = icmp eq i32 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i, label %case_insensitive_strcmp.exit.thread30.i.i

case_insensitive_strcmp.exit.thread30.i.i:        ; preds = %bb.d, %.preheader.i.i.i, %.lr.ph51.i.i
  %i.ag = load ptr, ptr %.150.i.i, align 8, !tbaa !37 ; 2 uses
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.d, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !58
  store ptr null, ptr %1, align 8, !tbaa !37
  br label %add_item_to_array.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %add_item_to_array.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !58
  store ptr %1, ptr %i.h, align 8, !tbaa !58
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
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load ptr, ptr @global_hooks, align 8, !tbaa !34
  %i.h = tail call ptr %i.g(i64 noundef %i.f) #30, !inline_history !2 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %add_item_to_object.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = and i32 %i.k, -513
  %i.m = and i32 %i.k, 512
  %.not32.i = icmp eq i32 %i.m, 0
  br i1 %.not32.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %.not33.i = icmp eq ptr %i.o, null
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !35
  tail call void %i.p(ptr noundef nonnull %i.o) #30, !inline_history !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.q, align 8, !tbaa !39
  store i32 %i.l, ptr %i.j, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %i.r, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !58
  store ptr null, ptr %2, align 8, !tbaa !37
  br label %add_item_to_object.exit

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58   ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %add_item_to_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %2, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !58
  store ptr %2, ptr %i.v, align 8, !tbaa !58
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

end_hunk_0
