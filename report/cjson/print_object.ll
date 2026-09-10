Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/print_object?download=true
inline.NumInlined: 125
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@parse_value:bb.a
  %i.gr = add nuw nsw i64 %i.gp, 1
  store i64 %i.gr, ptr %i.go, align 8, !tbaa !53
  %i.gs = load i8, ptr %i.y, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.gs, 91
  br i1 %.not.i, label %bb.aa, label %parse_array.exit

bb.aa:                                            ; preds = %bb.z
  %i.gt = add nuw i64 %i.f, 1
  store i64 %i.gt, ptr %i.e, align 8, !tbaa !43
  tail call fastcc void @buffer_skip_whitespace(ptr noundef nonnull %1)
  %i.gu = load i64, ptr %i.e, align 8, !tbaa !43  ; 5 uses
  %i.gv = load i64, ptr %i.h, align 8, !tbaa !40
  %i.gw = icmp ult i64 %i.gu, %i.gv
  br i1 %i.gw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gx = load ptr, ptr %1, align 8, !tbaa !39
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gu
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !44
  %i.ha = icmp eq i8 %i.gz, 93
  br i1 %i.ha, label %.thread74, label %bb.ad

.thread74:                                        ; preds = %bb.ab
  %i.hb = load i64, ptr %i.go, align 8, !tbaa !53
  %i.hc = add i64 %i.hb, -1
  store i64 %i.hc, ptr %i.go, align 8, !tbaa !53
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa
  %i.hd = add i64 %i.gu, -1
  store i64 %i.hd, ptr %i.e, align 8, !tbaa !43
  br label %parse_array.exit

bb.ad:                                            ; preds = %bb.ab
  %i.he = add i64 %i.gu, -1
  store i64 %i.he, ptr %i.e, align 8, !tbaa !43
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %bb.ad
  %.052.i = phi ptr [ null, %bb.ad ], [ %.153.i, %bb.aj ] ; 4 uses
  %.051.i65 = phi ptr [ null, %bb.ad ], [ %i.hg, %bb.aj ] ; 2 uses
  %.val.i = load ptr, ptr %i.hf, align 8, !tbaa !31
  %i.hg = tail call ptr %.val.i(i64 noundef 64) #28, !inline_history !79 ; 8 uses
  %.not.i67 = icmp eq ptr %i.hg, null
  br i1 %.not.i67, label %.critedge.i66, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hg, i8 0, i64 64, i1 false)
  %i.hh = icmp eq ptr %.052.i, null
  br i1 %i.hh, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.hg, ptr %.051.i65, align 8, !tbaa !33
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %.051.i65, ptr %i.hi, align 8, !tbaa !54
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.153.i = phi ptr [ %.052.i, %bb.ag ], [ %i.hg, %bb.af ] ; 6 uses
  %i.hj = load i64, ptr %i.e, align 8, !tbaa !43
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.e, align 8, !tbaa !43
  tail call fastcc void @buffer_skip_whitespace(ptr noundef nonnull %1)
  %i.hl = tail call fastcc i32 @parse_value(ptr noundef %i.hg, ptr noundef nonnull %1), !inline_history !80
  %.not63.i = icmp eq i32 %i.hl, 0
  br i1 %.not63.i, label %.critedge.i66.thread87, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @buffer_skip_whitespace(ptr noundef nonnull %1)
  %i.hm = load i64, ptr %i.e, align 8, !tbaa !43  ; 3 uses
  %i.hn = load i64, ptr %i.h, align 8, !tbaa !40
  %i.ho = icmp ult i64 %i.hm, %i.hn
  br i1 %i.ho, label %bb.aj, label %.critedge.i66.thread87

bb.aj:                                            ; preds = %bb.ai
  %i.hp = load ptr, ptr %1, align 8, !tbaa !39
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hm
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !44
  switch i8 %i.hr, label %.critedge.i66.thread87 [
    i8 44, label %bb.ae
    i8 93, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.hs = load i64, ptr %i.go, align 8, !tbaa !53
  %i.ht = add i64 %i.hs, -1
  store i64 %i.ht, ptr %i.go, align 8, !tbaa !53
  %i.hu = getelementptr inbounds nuw i8, ptr %.153.i, i64 8
  store ptr %i.hg, ptr %i.hu, align 8, !tbaa !54
  br label %bb.al

bb.al:                                            ; preds = %.thread74, %bb.ak
  %i.hv = phi i64 [ %i.gu, %.thread74 ], [ %i.hm, %bb.ak ]
  %.355.i78 = phi ptr [ null, %.thread74 ], [ %.153.i, %bb.ak ]
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 32, ptr %i.hw, align 8, !tbaa !27
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.355.i78, ptr %i.hx, align 8, !tbaa !34
  %i.hy = add nuw i64 %i.hv, 1
  store i64 %i.hy, ptr %i.e, align 8, !tbaa !43
  br label %parse_array.exit

.critedge.i66:                                    ; preds = %bb.ae
  %.not66.i = icmp eq ptr %.052.i, null
  br i1 %.not66.i, label %parse_array.exit, label %.critedge.i66.thread87

.critedge.i66.thread87:                           ; preds = %bb.ai, %bb.ah, %bb.aj, %.critedge.i66
  %.4.i86 = phi ptr [ %.052.i, %.critedge.i66 ], [ %.153.i, %bb.aj ], [ %.153.i, %bb.ah ], [ %.153.i, %bb.ai ]
  tail call void @cJSON_Delete(ptr noundef nonnull %.4.i86), !inline_history !80
  br label %parse_array.exit

bb.am:                                            ; preds = %bb.x
  %i.hz = tail call fastcc i32 @parse_object(ptr noundef %0, ptr noundef %1)
  br label %parse_array.exit

parse_array.exit:                                 ; preds = %bb.x, %bb.ac, %bb.z, %bb.l, %.critedge.i66.thread87, %.critedge.i66, %bb.al, %bb.y, %bb.a, %bb.b, %bb.am, %parse_number.exit, %bb.n, %bb.k, %bb.h, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %bb.h ], [ 1, %bb.k ], [ %i.ab, %bb.n ], [ %.051.i, %parse_number.exit ], [ 0, %bb.l ], [ %i.hz, %bb.am ], [ 0, %bb.b ], [ 0, %bb.x ], [ 0, %bb.y ], [ 1, %bb.al ], [ 0, %.critedge.i66.thread87 ], [ 0, %.critedge.i66 ], [ 0, %bb.z ], [ 0, %bb.ac ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @buffer_skip_whitespace(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 4 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.i = phi i64 [ %i.m, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !44
  %i.l = icmp ult i8 %i.k, 33
  br i1 %i.l, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.m = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !43
  %exitcond.not = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.i, %i.g
  br i1 %i.n, label %.critedge.thread, label %bb.e

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %i.o = add i64 %i.g, -1
  store i64 %i.o, ptr %i.d, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.critedge.thread, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_Parse(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %cJSON_ParseWithOpts.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef null, i32 noundef 0)
  br label %cJSON_ParseWithOpts.exit

cJSON_ParseWithOpts.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_ParseWithLength(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef %0, i64 noundef %1, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_Print(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @print(ptr noundef %0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @print(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.printbuffer], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = load ptr, ptr @global_hooks, align 8, !tbaa !31
  %i.c = tail call ptr %i.b(i64 noundef 256) #28  ; 2 uses
  store ptr %i.c, ptr %2, align 16, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 256, ptr %i.d, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %1, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !42
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %2)
  %.not = icmp eq i32 %i.h, 0
  %.pre = load ptr, ptr %2, align 16, !tbaa !56   ; 6 uses
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %.pre, null
  br i1 %i.i, label %update_offset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 16, !tbaa !59  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.k
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #29
  %i.m = add i64 %3, %i.k
  store i64 %i.m, ptr %i.j, align 16, !tbaa !59
  br label %update_offset.exit

update_offset.exit:                               ; preds = %bb.c, %bb.d
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !82 ; 2 uses
  %.not24 = icmp eq ptr %i.n, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %update_offset.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 16, !tbaa !59
  %i.q = add i64 %i.p, 1
  %4 = tail call ptr %i.n(ptr noundef %.pre, i64 noundef %i.q) #28 ; 2 uses
  %i.r = icmp eq ptr %4, null
  br i1 %i.r, label %bb.h, label %bb.j

bb.f:                                             ; preds = %update_offset.exit
  %i.s = load ptr, ptr @global_hooks, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 16, !tbaa !59  ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %5 = tail call ptr %i.s(i64 noundef %i.v) #28   ; 4 uses
  %i.w = icmp eq ptr %5, null
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.d, align 8, !tbaa !57
  %6 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %.pre, i64 %6, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %i.u
  store i8 0, ptr %i.y, align 1, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.e
  %.not25 = icmp eq ptr %.pre, null
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.017.ph = phi ptr [ %5, %bb.g ], [ null, %bb.h ]
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !32
  tail call void %i.z(ptr noundef %.pre) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.a, %bb.h
  %.017 = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ %4, %bb.e ], [ %.017.ph, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %.017
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_PrintUnformatted(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @print(ptr noundef %0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @cJSON_PrintBuffered(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.printbuffer, align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.a, align 8
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @global_hooks, align 8, !tbaa !31
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = tail call ptr %i.c(i64 noundef %i.d) #28 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !56
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.h, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %2, ptr %i.i, align 4, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !42
  %i.k = call fastcc i32 @print_value(ptr noundef %0, ptr noundef %3)
  %.not6 = icmp eq i32 %i.k, 0
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !32
  %i.m = load ptr, ptr %3, align 8, !tbaa !56
  tail call void %i.l(ptr noundef %i.m) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.n, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @print_value(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 12 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %print_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %i.f = and i32 %i.e, 255                        ; 2 uses
  %i.g = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.f)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.split, label %print_array.exit

.split:                                           ; preds = %bb.b
  %i.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.f, i1 true)
  switch i32 %i.i, label %default.unreachable99 [
    i32 2, label %bb.c
    i32 0, label %bb.r
    i32 1, label %bb.ag
    i32 3, label %bb.av
    i32 7, label %bb.bd
    i32 4, label %bb.bg
    i32 5, label %bb.bh
    i32 6, label %bb.bs
  ]

bb.c:                                             ; preds = %.split
  %i.j = load ptr, ptr %1, align 8, !tbaa !56     ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %print_array.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  %i.n = freeze i64 %.pre.i                       ; 3 uses
  %i.o = add i64 %i.m, -1
  %or.cond.not = icmp ult i64 %i.o, %i.n
  br i1 %or.cond.not, label %print_array.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = add i64 %i.n, 6                          ; 4 uses
  %.not53.i = icmp ugt i64 %i.q, %i.m
  br i1 %.not53.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  br label %ensure.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !60
  %.not54.i = icmp eq i32 %i.t, 0
  br i1 %.not54.i, label %bb.h, label %print_array.exit

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ugt i64 %i.q, 1073741823
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = icmp ult i64 %i.q, 2147483648
  br i1 %i.v, label %bb.k, label %print_array.exit

bb.j:                                             ; preds = %bb.h
  %i.w = shl nuw nsw i64 %i.q, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi i64 [ %i.w, %bb.j ], [ 2147483647, %bb.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61   ; 2 uses
  %.not55.i = icmp eq ptr %i.y, null
  br i1 %.not55.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr %i.y(ptr noundef nonnull %i.j, i64 noundef %.0.i) #28, !inline_history !62 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = load ptr, ptr %1, align 8, !tbaa !56
  tail call void %i.ac(ptr noundef %i.ad) #28, !inline_history !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %print_array.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ag = tail call ptr %i.af(i64 noundef %.0.i) #28, !inline_history !62 ; 3 uses
  %.not56.i = icmp eq ptr %i.ag, null
  br i1 %.not56.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.aj = load ptr, ptr %1, align 8, !tbaa !56
  tail call void %i.ai(ptr noundef %i.aj) #28, !inline_history !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %print_array.exit

bb.p:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %1, align 8, !tbaa !56
  %i.al = load i64, ptr %i.p, align 8, !tbaa !59
  %i.am = add i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.ak, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ap = load ptr, ptr %1, align 8, !tbaa !56
  tail call void %i.ao(ptr noundef %i.ap) #28, !inline_history !62
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.043.i = phi ptr [ %i.z, %bb.l ], [ %i.ag, %bb.p ] ; 2 uses
  store i64 %.0.i, ptr %i.l, align 8, !tbaa !57
  store ptr %.043.i, ptr %1, align 8, !tbaa !56
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !59
  %i.ar = getelementptr inbounds nuw i8, ptr %.043.i, i64 %i.aq
  br label %ensure.exit

ensure.exit:                                      ; preds = %bb.q, %bb.f
  %.044.i = phi ptr [ %i.ar, %bb.q ], [ %i.r, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.044.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false) #28
  br label %print_array.exit

bb.r:                                             ; preds = %.split
  %i.as = load ptr, ptr %1, align 8, !tbaa !56    ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %print_array.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i45 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i46 = load i64, ptr %.phi.trans.insert.i45, align 8, !tbaa !59
  %i.aw = freeze i64 %.pre.i46                    ; 3 uses
  %i.ax = add i64 %i.av, -1
  %or.cond101.not = icmp ult i64 %i.ax, %i.aw
  br i1 %or.cond101.not, label %print_array.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = add i64 %i.aw, 7                        ; 4 uses
  %.not53.i38 = icmp ugt i64 %i.az, %i.av
  br i1 %.not53.i38, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  br label %ensure.exit47

bb.v:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !60
  %.not54.i40 = icmp eq i32 %i.bc, 0
  br i1 %.not54.i40, label %bb.w, label %print_array.exit

bb.w:                                             ; preds = %bb.v
  %i.bd = icmp ugt i64 %i.az, 1073741823
  br i1 %i.bd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.be = icmp ult i64 %i.az, 2147483648
  br i1 %i.be, label %bb.z, label %print_array.exit

bb.y:                                             ; preds = %bb.w
  %i.bf = shl nuw nsw i64 %i.az, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i41 = phi i64 [ %i.bf, %bb.y ], [ 2147483647, %bb.x ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61 ; 2 uses
  %.not55.i42 = icmp eq ptr %i.bh, null
  br i1 %.not55.i42, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = tail call ptr %i.bh(ptr noundef nonnull %i.as, i64 noundef %.0.i41) #28, !inline_history !62 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.bm = load ptr, ptr %1, align 8, !tbaa !56
  tail call void %i.bl(ptr noundef %i.bm) #28, !inline_history !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %print_array.exit

bb.ac:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !64
  %i.bp = tail call ptr %i.bo(i64 noundef %.0.i41) #28, !inline_history !62 ; 3 uses
  %.not56.i44 = icmp eq ptr %i.bp, null
  br i1 %.not56.i44, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@parse_hex4:bb.a
  %i.f = add nsw i32 %.sink, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !44    ; 4 uses
  %i.i = zext i8 %i.h to i32
  %i.j = add i8 %i.h, -48
  %or.cond.1 = icmp ult i8 %i.j, 10
  br i1 %or.cond.1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i8 %i.h, -65
  %or.cond31.1 = icmp ult i8 %i.k, 6
  br i1 %or.cond31.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i8 %i.h, -97
  %or.cond32.1 = icmp ult i8 %i.l, 6
  br i1 %or.cond32.1, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink35 = phi i32 [ -55, %bb.e ], [ -87, %bb.f ], [ -48, %bb.d ]
  %i.m = add nsw i32 %.sink35, %i.i
  %i.n = shl nuw nsw i32 %i.f, 8
  %i.o = shl nuw nsw i32 %i.m, 4
  %i.p = add nuw nsw i32 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !44    ; 4 uses
  %i.s = zext i8 %i.r to i32
  %i.t = add i8 %i.r, -48
  %or.cond.2 = icmp ult i8 %i.t, 10
  br i1 %or.cond.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i8 %i.r, -65
  %or.cond31.2 = icmp ult i8 %i.u, 6
  br i1 %or.cond31.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i8 %i.r, -97
  %or.cond32.2 = icmp ult i8 %i.v, 6
  br i1 %or.cond32.2, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink36 = phi i32 [ -55, %bb.h ], [ -87, %bb.i ], [ -48, %bb.g ]
  %i.w = add nsw i32 %.sink36, %i.s
  %.1.2 = add nuw nsw i32 %i.w, %i.p
  %i.x = shl nuw nsw i32 %.1.2, 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !44    ; 4 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = add i8 %i.z, -48
  %or.cond.3 = icmp ult i8 %i.ab, 10
  br i1 %or.cond.3, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = add i8 %i.z, -65
  %or.cond31.3 = icmp ult i8 %i.ac, 6
  br i1 %or.cond31.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add i8 %i.z, -97
  %or.cond32.3 = icmp ult i8 %i.ad, 6
  br i1 %or.cond32.3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink37 = phi i32 [ -55, %bb.k ], [ -87, %bb.l ], [ -48, %bb.j ]
  %i.ae = add nsw i32 %.sink37, %i.aa
  %.1.3 = add nuw nsw i32 %i.ae, %i.x
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.f, %bb.c
  %.027 = phi i32 [ 0, %bb.c ], [ %.1.3, %bb.m ], [ 0, %bb.f ], [ 0, %bb.l ], [ 0, %bb.i ]
  ret i32 %.027
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @ensure(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %.not52 = icmp uge i64 %i.f, %i.d
  %i.g = icmp ugt i64 %1, 2147483647
  %or.cond = or i1 %i.g, %.not52
  br i1 %or.cond, label %bb.r, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old = icmp ugt i64 %1, 2147483647
  br i1 %.old, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.f, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = add nuw nsw i64 %1, 1
  %i.k = add i64 %i.j, %i.h                       ; 4 uses
  %.not53 = icmp ugt i64 %i.k, %i.d
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !60
  %.not54 = icmp eq i32 %i.n, 0
  br i1 %.not54, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ugt i64 %i.k, 1073741823
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.k, 2147483648
  br i1 %i.p, label %bb.k, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.k, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i64 [ %i.q, %bb.j ], [ 2147483647, %bb.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61   ; 2 uses
  %.not55 = icmp eq ptr %i.s, null
  br i1 %.not55, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = tail call ptr %i.s(ptr noundef nonnull %i.a, i64 noundef %.0) #28 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = load ptr, ptr %0, align 8, !tbaa !56
  tail call void %i.w(ptr noundef %i.x) #28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = tail call ptr %i.z(i64 noundef %.0) #28 ; 3 uses
  %.not56 = icmp eq ptr %i.aa, null
  br i1 %.not56, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = load ptr, ptr %0, align 8, !tbaa !56
  tail call void %i.ac(ptr noundef %i.ad) #28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %0, align 8, !tbaa !56
  %i.af = load i64, ptr %i.i, align 8, !tbaa !59
  %i.ag = add i64 %i.af, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.aj = load ptr, ptr %0, align 8, !tbaa !56
  tail call void %i.ai(ptr noundef %i.aj) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p
  %.043 = phi ptr [ %i.t, %bb.l ], [ %i.aa, %bb.p ] ; 2 uses
  store i64 %.0, ptr %i.c, align 8, !tbaa !57
  store ptr %.043, ptr %0, align 8, !tbaa !56
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %.043, i64 %i.ak
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.c, %bb.a, %bb.q, %bb.o, %bb.m, %bb.f
  %.044 = phi ptr [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.c ], [ %i.l, %bb.f ], [ null, %bb.d ], [ null, %bb.m ], [ %i.al, %bb.q ], [ null, %bb.o ], [ null, %bb.i ]
  ret ptr %.044
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 0, 2) i32 @print_object(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp ugt i64 %i.d, 999
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !58
  %.not = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, i64 1, i64 2            ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1
  %i.j = tail call fastcc ptr @ensure(ptr noundef %1, i64 noundef %i.i) ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 123, ptr %i.j, align 1, !tbaa !44
  %i.l = load i64, ptr %i.c, align 8, !tbaa !66
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !66
  %i.n = load i32, ptr %i.f, align 4, !tbaa !58
  %.not80 = icmp eq i32 %i.n, 0
  br i1 %.not80, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 10, ptr %i.o, align 1, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59
  %i.r = add i64 %i.q, %i.h
  store i64 %i.r, ptr %i.p, align 8, !tbaa !59
  %.not8198 = icmp eq ptr %i.b, null
  br i1 %.not8198, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.e, %bb.s
  %.06799 = phi ptr [ %i.bo, %bb.s ], [ %i.b, %bb.e ] ; 5 uses
  %i.s = load i32, ptr %i.f, align 4, !tbaa !58
  %.not84 = icmp eq i32 %i.s, 0
  br i1 %.not84, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph101
  %i.t = load i64, ptr %i.c, align 8, !tbaa !66
  %i.u = tail call fastcc ptr @ensure(ptr noundef %1, i64 noundef %i.t) ; 2 uses
  %.not85 = icmp eq ptr %i.u, null
  br i1 %.not85, label %.critedge, label %.preheader95

.preheader95:                                     ; preds = %bb.f
  %i.v = load i64, ptr %i.c, align 8, !tbaa !66
  %.not107 = icmp eq i64 %i.v, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader95, %.lr.ph
  %.06597 = phi i64 [ %i.x, %.lr.ph ], [ 0, %.preheader95 ]
  %.06896 = phi ptr [ %i.w, %.lr.ph ], [ %i.u, %.preheader95 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06896, i64 1
  store i8 9, ptr %.06896, align 1, !tbaa !44
  %i.x = add nuw i64 %.06597, 1                   ; 2 uses
  %i.y = load i64, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader95
  %.lcssa = phi i64 [ 0, %.preheader95 ], [ %i.y, %.lr.ph ]
  %i.aa = load i64, ptr %i.p, align 8, !tbaa !59
  %i.ab = add i64 %i.aa, %.lcssa
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.lr.ph101
  %i.ac = getelementptr inbounds nuw i8, ptr %.06799, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = tail call fastcc i32 @print_string_ptr(ptr noundef %i.ad, ptr noundef %1)
  %.not86 = icmp eq i32 %i.ae, 0
  br i1 %.not86, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %update_offset.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !59  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #29
  %i.ak = add i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.p, align 8, !tbaa !59
  br label %update_offset.exit

update_offset.exit:                               ; preds = %bb.h, %bb.i
  %i.al = load i32, ptr %i.f, align 4, !tbaa !58
  %.not87 = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not87, i64 1, i64 2         ; 2 uses
  %i.an = tail call fastcc ptr @ensure(ptr noundef %1, i64 noundef %i.am) ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.critedge, label %bb.j

bb.j:                                             ; preds = %update_offset.exit
  store i8 58, ptr %i.an, align 1, !tbaa !44
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !58
  %.not88 = icmp eq i32 %i.ap, 0
  br i1 %.not88, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 9, ptr %i.aq, align 1, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = load i64, ptr %i.p, align 8, !tbaa !59
  %i.as = add i64 %i.ar, %i.am
  store i64 %i.as, ptr %i.p, align 8, !tbaa !59
  %i.at = tail call fastcc i32 @print_value(ptr noundef nonnull %.06799, ptr noundef %1)
  %.not89 = icmp eq i32 %i.at, 0
  br i1 %.not89, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %1, align 8, !tbaa !56    ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %update_offset.exit94, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load i64, ptr %i.p, align 8, !tbaa !59  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #29
  %i.az = add i64 %i.ay, %i.aw
  store i64 %i.az, ptr %i.p, align 8, !tbaa !59
  br label %update_offset.exit94

update_offset.exit94:                             ; preds = %bb.m, %bb.n
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !58
  %.not90 = icmp ne i32 %i.ba, 0
  %i.bb = zext i1 %.not90 to i64
  %i.bc = load ptr, ptr %.06799, align 8, !tbaa !33
  %.not91 = icmp ne ptr %i.bc, null
  %i.bd = zext i1 %.not91 to i64
  %i.be = add nuw nsw i64 %i.bd, %i.bb            ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 1
  %i.bg = tail call fastcc ptr @ensure(ptr noundef %1, i64 noundef %i.bf) ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.critedge, label %bb.o

bb.o:                                             ; preds = %update_offset.exit94
  %i.bi = load ptr, ptr %.06799, align 8, !tbaa !33
  %.not92 = icmp eq ptr %i.bi, null
  br i1 %.not92, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 44, ptr %i.bg, align 1, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1 = phi ptr [ %i.bj, %bb.p ], [ %i.bg, %bb.o ] ; 3 uses
  %i.bk = load i32, ptr %i.f, align 4, !tbaa !58
  %.not93 = icmp eq i32 %i.bk, 0
  br i1 %.not93, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 10, ptr %.1, align 1, !tbaa !44
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2 = phi ptr [ %i.bl, %bb.r ], [ %.1, %bb.q ]
  store i8 0, ptr %.2, align 1, !tbaa !44
  %i.bm = load i64, ptr %i.p, align 8, !tbaa !59
  %i.bn = add i64 %i.bm, %i.be
  store i64 %i.bn, ptr %i.p, align 8, !tbaa !59
  %i.bo = load ptr, ptr %.06799, align 8, !tbaa !33 ; 2 uses
  %.not81 = icmp eq ptr %i.bo, null
  br i1 %.not81, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %bb.s, %bb.e
  %i.bp = load i32, ptr %i.f, align 4, !tbaa !58
  %.not82 = icmp eq i32 %i.bp, 0
  br i1 %.not82, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge102
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !66
  %i.br = add i64 %i.bq, 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge102, %bb.t
  %i.bs = phi i64 [ %i.br, %bb.t ], [ 2, %._crit_edge102 ]
  %i.bt = tail call fastcc ptr @ensure(ptr noundef %1, i64 noundef %i.bs) ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = load i32, ptr %i.f, align 4, !tbaa !58
  %.not83 = icmp eq i32 %i.bv, 0
  br i1 %.not83, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.v
end_hunk_1
