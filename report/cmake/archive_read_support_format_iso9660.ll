Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_iso9660?download=true
inline.NumInlined: 95
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@parse_file_info:bb.a
  %.not235282 = icmp eq i64 %i.gb, 0
  br i1 %.not235282, label %bb.bs, label %.thread283

bb.bj:                                            ; preds = %.critedge
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !102
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.thread283, label %bb.bk

.thread283:                                       ; preds = %.critedge.thread, %bb.bj
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.34) #17
  br label %.thread258

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not221, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.34) #17
  br label %.thread258

bb.bm:                                            ; preds = %bb.bk
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !95
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %i.gf, align 8, !tbaa !95
  %i.gi = add i64 %i.fz, 1                        ; 2 uses
  store i64 %i.gi, ptr %i.dg, align 8, !tbaa !78
  store i64 %i.gi, ptr %i.ar, align 8, !tbaa !59
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bp
  %.0263 = phi ptr [ %1, %bb.bm ], [ %i.gn, %bb.bp ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0263, i64 48
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !59
  %i.gl = icmp eq i64 %i.gk, %i.fz
  br i1 %i.gl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.34) #17
  br label %.thread258

bb.bp:                                            ; preds = %bb.bn
  %i.gm = getelementptr inbounds nuw i8, ptr %.0263, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !102 ; 2 uses
  %.not236 = icmp eq ptr %i.gn, null
  br i1 %.not236, label %bb.bq, label %bb.bn, !llvm.loop !176

bb.bq:                                            ; preds = %bb.bp
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !113
  %.not237 = icmp eq i8 %i.gp, 0
  br i1 %.not237, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.34) #17
  br label %.thread258

bb.bs:                                            ; preds = %.critedge.thread, %bb.bq, %.critedge, %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !98
  store ptr %i.gr, ptr %i.ao, align 8, !tbaa !99
  store ptr %i.ao, ptr %i.gq, align 8, !tbaa !98
  br label %bb.bt

.thread258:                                       ; preds = %bb.br, %bb.bo, %bb.bl, %.thread283, %bb.aj, %bb.bc, %bb.ba, %.thread255, %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  tail call void @archive_string_free(ptr noundef nonnull %i.gs) #17
  tail call void @free(ptr noundef %i.ao) #17
  br label %bb.bt

bb.bt:                                            ; preds = %.thread258, %bb.bs, %bb.l, %bb.j, %bb.i, %bb.g, %bb.d, %.thread
  %.0205 = phi ptr [ null, %.thread ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.l ], [ null, %.thread258 ], [ %i.ao, %bb.bs ]
  ret ptr %.0205
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @heap_add_entry(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %3, 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !118  ; 3 uses
  %i.d = and i32 %i.c, 65535
  %i.e = zext nneg i32 %i.d to i64
  %i.f = or disjoint i64 %i.a, %i.e               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !179  ; 6 uses
  %.not = icmp slt i32 %i.c, %i.h
  br i1 %.not, label %._crit_edge56, label %bb.b

._crit_edge56:                                    ; preds = %bb.a
  %.pre55.pre = load ptr, ptr %1, align 8, !tbaa !119
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = shl nsw i32 %i.h, 1
  %i.j = icmp slt i32 %i.h, 1024
  %spec.store.select = select i1 %i.j, i32 1024, i32 %i.i ; 3 uses
  %.not47 = icmp sgt i32 %spec.store.select, %i.h
  br i1 %.not47, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.37) #17
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.k = sext i32 %spec.store.select to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 8) #18 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.37) #17
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %.not48 = icmp eq i32 %i.h, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !119   ; 2 uses
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = sext i32 %i.h to i64
  %i.o = shl nsw i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %.pre, i64 %i.o, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @free(ptr noundef %.pre) #17
  store ptr %i.l, ptr %1, align 8, !tbaa !119
  store i32 %spec.store.select, ptr %i.g, align 8, !tbaa !179
  %.pre54 = load i32, ptr %i.b, align 4, !tbaa !118
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge56, %bb.h
  %.pre55 = phi ptr [ %i.l, %bb.h ], [ %.pre55.pre, %._crit_edge56 ] ; 3 uses
  %i.p = phi i32 [ %.pre54, %bb.h ], [ %i.c, %._crit_edge56 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.f, ptr %i.q, align 8, !tbaa !120
  %i.r = add nsw i32 %i.p, 1
  store i32 %i.r, ptr %i.b, align 4, !tbaa !118
  %i.s = icmp sgt i32 %i.p, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %.04251 = phi i32 [ %i.u, %bb.k ], [ %i.p, %bb.i ] ; 2 uses
  %i.t = add nsw i32 %.04251, -1
  %i.u = lshr i32 %i.t, 1                         ; 3 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre55, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !120
  %.not49 = icmp ult i64 %i.f, %i.z
  %i.aa = zext nneg i32 %.04251 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.pre55, i64 %i.aa ; 2 uses
  br i1 %.not49, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  store ptr %2, ptr %i.ab, align 8, !tbaa !60
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !60
  %.not52 = icmp eq i32 %i.u, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph, !llvm.loop !178

._crit_edge:                                      ; preds = %bb.k, %bb.i
  store ptr %2, ptr %.pre55, align 8, !tbaa !60
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e, %._crit_edge, %bb.j
  %.1 = phi i32 [ 0, %bb.j ], [ 0, %._crit_edge ], [ -30, %bb.e ], [ -30, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @toi(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 5) %1) unnamed_addr #12 {
bb.a:
  %i.a = icmp samesign ugt i32 %1, 1
  %i.b = load i8, ptr %0, align 1, !tbaa !47
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  br i1 %i.a, label %bb.b, label %common.ret8

common.ret8:                                      ; preds = %bb.a, %bb.b
  %common.ret8.op = phi i32 [ %i.h, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %common.ret8.op

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = add nsw i32 %1, -1
  %i.f = tail call fastcc i32 @toi(ptr noundef nonnull %i.d, i32 noundef %i.e)
  %i.g = shl i32 %i.f, 8
  %i.h = or disjoint i32 %i.g, %i.c
  br label %common.ret8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @isodate7_valid(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i8, ptr %i.b, align 1, !tbaa !47    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !47    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !47    ; 2 uses
  %i.h = load <4 x i8>, ptr %0, align 1, !tbaa !47
  %.fr = freeze <4 x i8> %i.h                     ; 3 uses
  %i.i = load i8, ptr %i.a, align 1, !tbaa !47
  %i.j = icmp ne i8 %i.c, 0
  %1 = icmp ne i8 %i.e, 0
  %i.k = icmp ne i8 %i.g, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.l = icmp ne i32 %.fr.scalar, 0
  %op.rdx = select i1 %i.l, i1 true, i1 %i.j
  %2 = select i1 %op.rdx, i1 true, i1 %1
  %op.rdx57 = select i1 %2, i1 true, i1 %i.k
  %i.m = add i8 %i.i, -1
  %or.cond13 = icmp ult i8 %i.m, 12
  %or.cond40 = select i1 %op.rdx57, i1 %or.cond13, i1 false
  %i.n = extractelement <4 x i8> %.fr, i64 2
  %i.o = add i8 %i.n, -1
  %or.cond15 = icmp ult i8 %i.o, 31
  %or.cond41 = and i1 %or.cond40, %or.cond15
  %i.p = extractelement <4 x i8> %.fr, i64 3
  %i.q = icmp ult i8 %i.p, 24
  %or.cond42 = and i1 %or.cond41, %i.q
  %i.r = icmp ult i8 %i.c, 60
  %or.cond43 = select i1 %or.cond42, i1 %i.r, i1 false
  %i.s = icmp ult i8 %i.e, 62
  %or.cond44 = select i1 %or.cond43, i1 %i.s, i1 false
  %i.t = add i8 %i.g, 48
  %or.cond17 = icmp ult i8 %i.t, 101
  %narrow = select i1 %or.cond44, i1 %or.cond17, i1 false
  %.0 = zext i1 %narrow to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, -1) i64 @isodate7(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.tm, align 16                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = load i8, ptr %0, align 1, !tbaa !47
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.c, ptr %i.d, align 4, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !47
  %i.g = zext i8 %i.f to i32
  %i.h = add nsw i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.h, ptr %i.i, align 16, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load <4 x i8>, ptr %i.j, align 1, !tbaa !47
  %i.n = load i8, ptr %i.k, align 1, !tbaa !47
  %i.o = load i8, ptr %i.l, align 1, !tbaa !47
  %i.p = zext <4 x i8> %i.m to <4 x i32>
  %i.q = shufflevector <4 x i32> %i.p, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.q, ptr %1, align 16, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !47    ; 3 uses
  %i.t = add i8 %i.s, 47
  %or.cond = icmp ult i8 %i.t, 99
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = zext i8 %i.o to i32
  %i.v = zext i8 %i.n to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.neg17 = sdiv i8 %i.s, -4
  %.neg.sext = sext i8 %.neg17 to i32
  %i.y = add nsw i32 %.neg.sext, %i.v
  store i32 %i.y, ptr %i.x, align 8, !tbaa !124
  %i.z = srem i8 %i.s, 4
  %narrow = mul nsw i8 %i.z, -15
  %.neg16 = sext i8 %narrow to i32
  %i.aa = add nsw i32 %.neg16, %i.u
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !125
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = call i64 @timegm(ptr noundef nonnull %1) #17 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, -1
  %. = select i1 %i.ac, i64 0, i64 %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i64 %.
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @parse_rockridge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tm, align 8                 ; 10 uses
  %5 = alloca %struct.tm, align 8                 ; 10 uses
  %6 = alloca %struct.tm, align 16                ; 9 uses
  %7 = alloca %struct.tm, align 16                ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not168 = icmp ugt ptr %i.d, %3
  br i1 %.not168, label %.critedge180, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load i8, ptr %2, align 1, !tbaa !47     ; 2 uses
  %i.bc = add i8 %i.bb, -65
  %or.cond136219 = icmp ult i8 %i.bc, 26
  br i1 %or.cond136219, label %.lr.ph222, label %.critedge180

bb.b:                                             ; preds = %register_CE.exit
  %i.bd = load i8, ptr %i.qt, align 1, !tbaa !47  ; 2 uses
  %i.be = add i8 %i.bd, -65
  %or.cond136 = icmp ult i8 %i.be, 26
  br i1 %or.cond136, label %.lr.ph222, label %.thread157, !llvm.loop !180

.lr.ph222:                                        ; preds = %.lr.ph, %bb.b
  %i.bf = phi i8 [ %i.bd, %bb.b ], [ %i.bb, %.lr.ph ]
  %.0126169221 = phi ptr [ %i.qt, %bb.b ], [ %2, %.lr.ph ] ; 27 uses
  %.not134173220 = phi i1 [ false, %bb.b ], [ true, %.lr.ph ]
  %i.bg = phi ptr [ %i.qu, %bb.b ], [ %i.d, %.lr.ph ] ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0126169221, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !47  ; 10 uses
  %i.bj = add i8 %i.bi, -65
  %or.cond137 = icmp ult i8 %i.bj, 26
  br i1 %or.cond137, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph222
  %i.bk = getelementptr inbounds nuw i8, ptr %.0126169221, i64 2 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !47  ; 11 uses
  %i.bm = icmp ult i8 %i.bl, 4
  %i.bn = zext i8 %i.bl to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.0126169221, i64 %i.bn
  %.not133 = icmp ugt ptr %i.bo, %3
  %or.cond139 = select i1 %i.bm, i1 true, i1 %.not133
  br i1 %or.cond139, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = zext i8 %i.bl to i32                    ; 7 uses
  %i.bq = add nsw i32 %i.bp, -4                   ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0126169221, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !47  ; 10 uses
  switch i8 %i.bf, label %register_CE.exit [
    i8 67, label %bb.e
    i8 78, label %bb.z
    i8 80, label %bb.ak
    i8 82, label %bb.au
    i8 83, label %bb.aw
    i8 84, label %bb.bs
    i8 90, label %bb.dd
  ]

bb.e:                                             ; preds = %bb.d
  switch i8 %i.bi, label %register_CE.exit [
    i8 69, label %bb.f
    i8 76, label %bb.x
  ]

bb.f:                                             ; preds = %bb.e
  %i.bt = icmp eq i8 %i.bs, 1
  %i.bu = icmp eq i32 %i.bq, 24
  %or.cond = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond, label %bb.g, label %register_CE.exit

bb.g:                                             ; preds = %bb.f
  %i.bv = load i32, ptr %i.bg, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.0126169221, i64 12
  %i.bx = load i32, ptr %i.bw, align 1            ; 2 uses
  store i32 %i.bx, ptr %i.ay, align 8, !tbaa !126
  %i.by = getelementptr inbounds nuw i8, ptr %.0126169221, i64 20
  %i.bz = load i32, ptr %i.by, align 1            ; 2 uses
  store i32 %i.bz, ptr %i.az, align 4, !tbaa !127
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !45 ; 6 uses
  %i.cc = sext i32 %i.bv to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 168
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !48 ; 2 uses
  %i.cf = mul i64 %i.ce, %i.cc                    ; 6 uses
end_hunk_0
begin_hunk_1_@parse_rockridge:bb.a
    i8 1, label %bb.bi
    i8 2, label %bb.bk
    i8 4, label %bb.bl
    i8 8, label %bb.bm
    i8 16, label %bb.bn
    i8 32, label %bb.bo
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.gm = zext i8 %i.gj to i32
  %i.gn = icmp samesign ult i32 %i.gk, %i.gm
  br i1 %i.gn, label %parse_rockridge_SL1.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.go = zext i8 %i.gj to i64
  %i.gp = call ptr @archive_strncat(ptr noundef nonnull %i.al, ptr noundef nonnull %i.gi, i64 noundef %i.go) #17 ; 0 uses
  br label %bb.bp

bb.bi:                                            ; preds = %bb.bf
  %i.gq = zext i8 %i.gj to i32
  %i.gr = icmp samesign ult i32 %i.gk, %i.gq
  br i1 %i.gr, label %parse_rockridge_SL1.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gs = zext i8 %i.gj to i64
  %i.gt = call ptr @archive_strncat(ptr noundef nonnull %i.al, ptr noundef nonnull %i.gi, i64 noundef %i.gs) #17 ; 0 uses
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bf
  %i.gu = call ptr @archive_strcat(ptr noundef nonnull %i.al, ptr noundef nonnull @.str.38) #17 ; 0 uses
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bf
  %i.gv = call ptr @archive_strcat(ptr noundef nonnull %i.al, ptr noundef nonnull @.str.39) #17 ; 0 uses
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bf
  %i.gw = call ptr @archive_strcat(ptr noundef nonnull %i.al, ptr noundef nonnull @.str.41) #17 ; 0 uses
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bf
  store i64 0, ptr %i.ak, align 8, !tbaa !184
  %i.gx = call ptr @archive_strcat(ptr noundef nonnull %i.al, ptr noundef nonnull @.str.42) #17 ; 0 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bf
  %i.gy = call ptr @archive_strcat(ptr noundef nonnull %i.al, ptr noundef nonnull @.str.43) #17 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bh
  %.1.i143 = phi ptr [ @.str.41, %bb.bh ], [ @.str.40, %bb.bj ], [ @.str.41, %bb.bk ], [ @.str.41, %bb.bl ], [ @.str.40, %bb.bm ], [ @.str.41, %bb.bn ], [ @.str.41, %bb.bo ]
  %i.gz = zext i8 %i.gj to i32
  %i.ha = zext i8 %i.gj to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ha
  %i.hc = sub nsw i32 %i.gk, %i.gz                ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, 1
  br i1 %i.hd, label %bb.bf, label %parse_rockridge_SL1.exit, !llvm.loop !182

parse_rockridge_SL1.exit:                         ; preds = %bb.bf, %bb.bg, %bb.bi, %bb.bp, %bb.bb, %bb.bc, %bb.be
  store i8 1, ptr %i.ai, align 8, !tbaa !55
  br label %register_CE.exit

bb.bq:                                            ; preds = %bb.aw
  %i.he = icmp eq i8 %i.bi, 84
  %i.hf = icmp eq i32 %i.bq, 0
  %or.cond12 = select i1 %i.he, i1 %i.hf, i1 false
  %i.hg = icmp eq i8 %i.bs, 1
  %or.cond14 = select i1 %or.cond12, i1 %i.hg, i1 false
  br i1 %or.cond14, label %bb.br, label %register_CE.exit

bb.br:                                            ; preds = %bb.bq
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  store i8 0, ptr %i.hh, align 1, !tbaa !108
  store i8 0, ptr %i.ai, align 8, !tbaa !55
  br label %.thread157

bb.bs:                                            ; preds = %bb.d
  %i.hi = icmp eq i8 %i.bi, 70
  %i.hj = icmp eq i8 %i.bs, 1
  %or.cond20 = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %or.cond20, label %bb.bt, label %register_CE.exit

bb.bt:                                            ; preds = %bb.bs
  %i.hk = icmp eq i32 %i.bq, 0
  br i1 %i.hk, label %parse_rockridge_TF1.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hl = load i8, ptr %i.bg, align 1, !tbaa !47  ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.0126169221, i64 5 ; 6 uses
  %i.hn = add nsw i32 %i.bp, -5                   ; 2 uses
  %.not.i144 = icmp sgt i8 %i.hl, -1
  %i.ho = trunc i8 %i.hl to i1                    ; 2 uses
  br i1 %.not.i144, label %bb.ck, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hp = icmp ugt i8 %i.bl, 21
  %or.cond.i = and i1 %i.hp, %i.ho
  br i1 %or.cond.i, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.hq = call fastcc i32 @isodate17_valid(ptr noundef nonnull readonly %i.hm)
  %.not92.i = icmp eq i32 %i.hq, 0
  br i1 %.not92.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hr = load i32, ptr %i.h, align 8, !tbaa !72
  %i.hs = or i32 %i.hr, 1
  store i32 %i.hs, ptr %i.h, align 8, !tbaa !72
  %i.ht = call fastcc i64 @isodate17(ptr noundef nonnull readonly %i.hm)
  store i64 %i.ht, ptr %i.i, align 8, !tbaa !73
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.hu = getelementptr inbounds nuw i8, ptr %.0126169221, i64 22
  %i.hv = add nsw i32 %i.bp, -22
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %.079.i = phi ptr [ %i.hu, %bb.by ], [ %i.hm, %bb.bv ] ; 4 uses
  %.0.i145 = phi i32 [ %i.hv, %bb.by ], [ %i.hn, %bb.bv ] ; 3 uses
  %i.hw = and i8 %i.hl, 2
  %i.hx = icmp ne i8 %i.hw, 0
  %i.hy = icmp samesign ugt i32 %.0.i145, 16
  %or.cond3.i = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %or.cond3.i, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.hz = call fastcc i32 @isodate17_valid(ptr noundef nonnull %.079.i)
  %.not93.i = icmp eq i32 %i.hz, 0
  br i1 %.not93.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ia = load i32, ptr %i.h, align 8, !tbaa !72
  %i.ib = or i32 %i.ia, 2
  store i32 %i.ib, ptr %i.h, align 8, !tbaa !72
  %i.ic = call fastcc i64 @isodate17(ptr noundef nonnull %.079.i)
  store i64 %i.ic, ptr %i.j, align 8, !tbaa !74
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.id = getelementptr inbounds nuw i8, ptr %.079.i, i64 17
  %i.ie = add nsw i32 %.0.i145, -17
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bz
  %.180.i = phi ptr [ %i.id, %bb.cc ], [ %.079.i, %bb.bz ] ; 4 uses
  %.1.i146 = phi i32 [ %i.ie, %bb.cc ], [ %.0.i145, %bb.bz ] ; 3 uses
  %i.if = and i8 %i.hl, 4
  %i.ig = icmp ne i8 %i.if, 0
  %i.ih = icmp samesign ugt i32 %.1.i146, 16
  %or.cond5.i = select i1 %i.ig, i1 %i.ih, i1 false
  br i1 %or.cond5.i, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.ii = call fastcc i32 @isodate17_valid(ptr noundef nonnull %.180.i)
  %.not94.i = icmp eq i32 %i.ii, 0
  br i1 %.not94.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ij = load i32, ptr %i.h, align 8, !tbaa !72
  %i.ik = or i32 %i.ij, 4
  store i32 %i.ik, ptr %i.h, align 8, !tbaa !72
  %i.il = call fastcc i64 @isodate17(ptr noundef nonnull %.180.i)
  store i64 %i.il, ptr %i.k, align 8, !tbaa !76
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.im = getelementptr inbounds nuw i8, ptr %.180.i, i64 17
  %i.in = add nsw i32 %.1.i146, -17
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cd
  %.281.i = phi ptr [ %i.im, %bb.cg ], [ %.180.i, %bb.cd ] ; 2 uses
  %.2.i = phi i32 [ %i.in, %bb.cg ], [ %.1.i146, %bb.cd ]
  %i.io = and i8 %i.hl, 8
  %i.ip = icmp ne i8 %i.io, 0
  %i.iq = icmp samesign ugt i32 %.2.i, 16
  %or.cond7.i = select i1 %i.ip, i1 %i.iq, i1 false
  br i1 %or.cond7.i, label %bb.ci, label %parse_rockridge_TF1.exit

bb.ci:                                            ; preds = %bb.ch
  %i.ir = call fastcc i32 @isodate17_valid(ptr noundef nonnull %.281.i)
  %.not95.i = icmp eq i32 %i.ir, 0
  br i1 %.not95.i, label %parse_rockridge_TF1.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.is = load i32, ptr %i.h, align 8, !tbaa !72
  %i.it = or i32 %i.is, 8
  store i32 %i.it, ptr %i.h, align 8, !tbaa !72
  %i.iu = call fastcc i64 @isodate17(ptr noundef nonnull %.281.i)
  br label %.sink.split.i

bb.ck:                                            ; preds = %bb.bu
  %i.iv = icmp ugt i8 %i.bl, 11
  %or.cond9.i = and i1 %i.iv, %i.ho
  br i1 %or.cond9.i, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.iw = getelementptr inbounds nuw i8, ptr %.0126169221, i64 6 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0126169221, i64 9 ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !47  ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0126169221, i64 10
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !47  ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0126169221, i64 11 ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !47  ; 2 uses
  %i.jd = load <4 x i8>, ptr %i.hm, align 1, !tbaa !47
  %.fr = freeze <4 x i8> %i.jd                    ; 3 uses
  %i.je = load i8, ptr %i.iw, align 1, !tbaa !47
  %i.jf = icmp eq i8 %i.iy, 0
  %8 = icmp eq i8 %i.ja, 0
  %i.jg = icmp eq i8 %i.jc, 0
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.jh = icmp eq i32 %.fr.scalar, 0
  %op.rdx235 = select i1 %i.jh, i1 %i.jf, i1 false
  %9 = select i1 %op.rdx235, i1 %8, i1 false
  %op.rdx237 = select i1 %9, i1 %i.jg, i1 false
  %i.ji = add i8 %i.je, -13
  %or.cond13.i.i = icmp ult i8 %i.ji, -12
  %or.cond40.i.i = select i1 %op.rdx237, i1 true, i1 %or.cond13.i.i
  %i.jj = extractelement <4 x i8> %.fr, i64 2
  %i.jk = add i8 %i.jj, -32
  %or.cond15.i.i = icmp ult i8 %i.jk, -31
  %or.cond41.i.i = or i1 %or.cond40.i.i, %or.cond15.i.i
  %i.jl = extractelement <4 x i8> %.fr, i64 3
  %i.jm = icmp ugt i8 %i.jl, 23
  %or.cond42.i.i = or i1 %or.cond41.i.i, %i.jm
  %i.jn = icmp ugt i8 %i.iy, 59
  %or.cond43.i.i = select i1 %or.cond42.i.i, i1 true, i1 %i.jn
  %i.jo = icmp ugt i8 %i.ja, 61
  %or.cond44.i.i = select i1 %or.cond43.i.i, i1 true, i1 %i.jo
  %i.jp = add i8 %i.jc, -53
  %or.cond17.i.i = icmp ult i8 %i.jp, -101
  %narrow.i.i = select i1 %or.cond44.i.i, i1 true, i1 %or.cond17.i.i
  br i1 %narrow.i.i, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jq = getelementptr inbounds nuw i8, ptr %.0126169221, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %.0126169221, i64 7
  %i.js = load i32, ptr %i.h, align 8, !tbaa !72
  %i.jt = or i32 %i.js, 1
  store i32 %i.jt, ptr %i.h, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.ju = load i8, ptr %i.hm, align 1, !tbaa !47
  %i.jv = zext i8 %i.ju to i32
  store i32 %i.jv, ptr %i.m, align 4, !tbaa !122
  %i.jw = load i8, ptr %i.iw, align 1, !tbaa !47
  %i.jx = zext i8 %i.jw to i32
  %i.jy = add nsw i32 %i.jx, -1
  store i32 %i.jy, ptr %i.n, align 16, !tbaa !123
  %i.jz = load <4 x i8>, ptr %i.jr, align 1, !tbaa !47
  %i.ka = load i8, ptr %i.jq, align 1, !tbaa !47
  %i.kb = load i8, ptr %i.ix, align 1, !tbaa !47
  %i.kc = zext <4 x i8> %i.jz to <4 x i32>
  %i.kd = shufflevector <4 x i32> %i.kc, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.kd, ptr %7, align 16, !tbaa !65
  %i.ke = load i8, ptr %i.jb, align 1, !tbaa !47  ; 3 uses
  %i.kf = add i8 %i.ke, 47
  %or.cond.i.i = icmp ult i8 %i.kf, 99
  br i1 %or.cond.i.i, label %bb.cn, label %isodate7.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.kg = zext i8 %i.kb to i32
  %i.kh = zext i8 %i.ka to i32
  %.neg17.i.i = sdiv i8 %i.ke, -4
  %.neg.sext.i.i = sext i8 %.neg17.i.i to i32
  %i.ki = add nsw i32 %.neg.sext.i.i, %i.kh
  store i32 %i.ki, ptr %i.o, align 8, !tbaa !124
  %i.kj = srem i8 %i.ke, 4
  %narrow.i96.i = mul nsw i8 %i.kj, -15
  %.neg16.i.i = sext i8 %narrow.i96.i to i32
  %i.kk = add nsw i32 %.neg16.i.i, %i.kg
  store i32 %i.kk, ptr %i.p, align 4, !tbaa !125
  br label %isodate7.exit.i

isodate7.exit.i:                                  ; preds = %bb.cn, %bb.cm
  %i.kl = call i64 @timegm(ptr noundef nonnull %7) #17 ; 2 uses
  %i.km = icmp eq i64 %i.kl, -1
  %..i.i = select i1 %i.km, i64 0, i64 %i.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  store i64 %..i.i, ptr %i.i, align 8, !tbaa !73
  br label %bb.co

bb.co:                                            ; preds = %isodate7.exit.i, %bb.cl
  %i.kn = getelementptr inbounds nuw i8, ptr %.0126169221, i64 12
  %i.ko = add nsw i32 %i.bp, -12
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.ck
  %.382.i = phi ptr [ %i.kn, %bb.co ], [ %i.hm, %bb.ck ] ; 10 uses
  %.3.i = phi i32 [ %i.ko, %bb.co ], [ %i.hn, %bb.ck ] ; 3 uses
  %i.kp = and i8 %i.hl, 2
  %i.kq = icmp ne i8 %i.kp, 0
  %i.kr = icmp samesign ugt i32 %.3.i, 6
  %or.cond11.i = select i1 %i.kq, i1 %i.kr, i1 false
  br i1 %or.cond11.i, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.ks = getelementptr inbounds nuw i8, ptr %.382.i, i64 1 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.382.i, i64 4 ; 2 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !47  ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.382.i, i64 5
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !47  ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.382.i, i64 6 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !47  ; 2 uses
  %i.kz = load <4 x i8>, ptr %.382.i, align 1, !tbaa !47
  %.fr241 = freeze <4 x i8> %i.kz                 ; 3 uses
  %i.la = load i8, ptr %i.ks, align 1, !tbaa !47
  %i.lb = icmp eq i8 %i.ku, 0
  %10 = icmp eq i8 %i.kw, 0
  %i.lc = icmp eq i8 %i.ky, 0
  %.fr238.scalar = bitcast <4 x i8> %.fr241 to i32
  %i.ld = icmp eq i32 %.fr238.scalar, 0
  %op.rdx232 = select i1 %i.ld, i1 %i.lb, i1 false
  %11 = select i1 %op.rdx232, i1 %10, i1 false
  %op.rdx234 = select i1 %11, i1 %i.lc, i1 false
  %i.le = add i8 %i.la, -13
  %or.cond13.i103.i = icmp ult i8 %i.le, -12
  %or.cond40.i104.i = select i1 %op.rdx234, i1 true, i1 %or.cond13.i103.i
  %i.lf = extractelement <4 x i8> %.fr241, i64 2
  %i.lg = add i8 %i.lf, -32
  %or.cond15.i105.i = icmp ult i8 %i.lg, -31
  %or.cond41.i106.i = or i1 %or.cond40.i104.i, %or.cond15.i105.i
  %i.lh = extractelement <4 x i8> %.fr241, i64 3
  %i.li = icmp ugt i8 %i.lh, 23
  %or.cond42.i107.i = or i1 %or.cond41.i106.i, %i.li
  %i.lj = icmp ugt i8 %i.ku, 59
  %or.cond43.i108.i = select i1 %or.cond42.i107.i, i1 true, i1 %i.lj
  %i.lk = icmp ugt i8 %i.kw, 61
  %or.cond44.i109.i = select i1 %or.cond43.i108.i, i1 true, i1 %i.lk
  %i.ll = add i8 %i.ky, -53
  %or.cond17.i110.i = icmp ult i8 %i.ll, -101
  %narrow.i111.i = select i1 %or.cond44.i109.i, i1 true, i1 %or.cond17.i110.i
  br i1 %narrow.i111.i, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lm = getelementptr inbounds nuw i8, ptr %.382.i, i64 3
  %i.ln = getelementptr inbounds nuw i8, ptr %.382.i, i64 2
  %i.lo = load i32, ptr %i.h, align 8, !tbaa !72
  %i.lp = or i32 %i.lo, 2
  store i32 %i.lp, ptr %i.h, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  %i.lq = load i8, ptr %.382.i, align 1, !tbaa !47
  %i.lr = zext i8 %i.lq to i32
  store i32 %i.lr, ptr %i.r, align 4, !tbaa !122
  %i.ls = load i8, ptr %i.ks, align 1, !tbaa !47
  %i.lt = zext i8 %i.ls to i32
  %i.lu = add nsw i32 %i.lt, -1
  store i32 %i.lu, ptr %i.s, align 16, !tbaa !123
  %i.lv = load <4 x i8>, ptr %i.ln, align 1, !tbaa !47
  %i.lw = load i8, ptr %i.lm, align 1, !tbaa !47
  %i.lx = load i8, ptr %i.kt, align 1, !tbaa !47
  %i.ly = zext <4 x i8> %i.lv to <4 x i32>
  %i.lz = shufflevector <4 x i32> %i.ly, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.lz, ptr %6, align 16, !tbaa !65
  %i.ma = load i8, ptr %i.kx, align 1, !tbaa !47  ; 3 uses
  %i.mb = add i8 %i.ma, 47
  %or.cond.i113.i = icmp ult i8 %i.mb, 99
  br i1 %or.cond.i113.i, label %bb.cs, label %isodate7.exit119.i

bb.cs:                                            ; preds = %bb.cr
  %i.mc = zext i8 %i.lx to i32
  %i.md = zext i8 %i.lw to i32
  %.neg17.i115.i = sdiv i8 %i.ma, -4
  %.neg.sext.i116.i = sext i8 %.neg17.i115.i to i32
  %i.me = add nsw i32 %.neg.sext.i116.i, %i.md
  store i32 %i.me, ptr %i.t, align 8, !tbaa !124
  %i.mf = srem i8 %i.ma, 4
  %narrow.i117.i = mul nsw i8 %i.mf, -15
  %.neg16.i118.i = sext i8 %narrow.i117.i to i32
  %i.mg = add nsw i32 %.neg16.i118.i, %i.mc
  store i32 %i.mg, ptr %i.u, align 4, !tbaa !125
  br label %isodate7.exit119.i

isodate7.exit119.i:                               ; preds = %bb.cs, %bb.cr
  %i.mh = call i64 @timegm(ptr noundef nonnull %6) #17 ; 2 uses
  %i.mi = icmp eq i64 %i.mh, -1
  %..i114.i = select i1 %i.mi, i64 0, i64 %i.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  store i64 %..i114.i, ptr %i.j, align 8, !tbaa !74
  br label %bb.ct

bb.ct:                                            ; preds = %isodate7.exit119.i, %bb.cq
  %i.mj = getelementptr inbounds nuw i8, ptr %.382.i, i64 7
  %i.mk = add nsw i32 %.3.i, -7
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cp
  %.483.i = phi ptr [ %i.mj, %bb.ct ], [ %.382.i, %bb.cp ] ; 10 uses
  %.4.i = phi i32 [ %i.mk, %bb.ct ], [ %.3.i, %bb.cp ] ; 3 uses
  %i.ml = and i8 %i.hl, 4
  %i.mm = icmp ne i8 %i.ml, 0
  %i.mn = icmp samesign ugt i32 %.4.i, 6
  %or.cond13.i = select i1 %i.mm, i1 %i.mn, i1 false
  br i1 %or.cond13.i, label %bb.cv, label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  %i.mo = getelementptr inbounds nuw i8, ptr %.483.i, i64 1 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.483.i, i64 4 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !47  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.483.i, i64 5 ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !47  ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.483.i, i64 6 ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !47  ; 2 uses
  %i.mv = load <4 x i8>, ptr %.483.i, align 1, !tbaa !47
  %.fr245 = freeze <4 x i8> %i.mv                 ; 3 uses
  %i.mw = load i8, ptr %i.mo, align 1, !tbaa !47
  %i.mx = icmp eq i8 %i.mq, 0
  %12 = icmp eq i8 %i.ms, 0
  %i.my = icmp eq i8 %i.mu, 0
  %.fr239.scalar = bitcast <4 x i8> %.fr245 to i32
  %i.mz = icmp eq i32 %.fr239.scalar, 0
  %op.rdx229 = select i1 %i.mz, i1 %i.mx, i1 false
  %13 = select i1 %op.rdx229, i1 %12, i1 false
  %op.rdx231 = select i1 %13, i1 %i.my, i1 false
  %i.na = add i8 %i.mw, -13
  %or.cond13.i126.i = icmp ult i8 %i.na, -12
  %or.cond40.i127.i = select i1 %op.rdx231, i1 true, i1 %or.cond13.i126.i
  %i.nb = extractelement <4 x i8> %.fr245, i64 2
  %i.nc = add i8 %i.nb, -32
  %or.cond15.i128.i = icmp ult i8 %i.nc, -31
  %or.cond41.i129.i = or i1 %or.cond40.i127.i, %or.cond15.i128.i
  %i.nd = extractelement <4 x i8> %.fr245, i64 3
  %i.ne = icmp ugt i8 %i.nd, 23
  %or.cond42.i130.i = or i1 %or.cond41.i129.i, %i.ne
  %i.nf = icmp ugt i8 %i.mq, 59
  %or.cond43.i131.i = select i1 %or.cond42.i130.i, i1 true, i1 %i.nf
  %i.ng = icmp ugt i8 %i.ms, 61
  %or.cond44.i132.i = select i1 %or.cond43.i131.i, i1 true, i1 %i.ng
  %i.nh = add i8 %i.mu, -53
  %or.cond17.i133.i = icmp ult i8 %i.nh, -101
  %narrow.i134.i = select i1 %or.cond44.i132.i, i1 true, i1 %or.cond17.i133.i
  br i1 %narrow.i134.i, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ni = getelementptr inbounds nuw i8, ptr %.483.i, i64 3
  %i.nj = getelementptr inbounds nuw i8, ptr %.483.i, i64 2
  %i.nk = load i32, ptr %i.h, align 8, !tbaa !72
  %i.nl = or i32 %i.nk, 4
  store i32 %i.nl, ptr %i.h, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.nm = load i8, ptr %.483.i, align 1, !tbaa !47
  %i.nn = zext i8 %i.nm to i32
  store i32 %i.nn, ptr %i.w, align 4, !tbaa !122
  %i.no = load i8, ptr %i.mo, align 1, !tbaa !47
  %i.np = zext i8 %i.no to i32
  %i.nq = add nsw i32 %i.np, -1
  store i32 %i.nq, ptr %i.x, align 8, !tbaa !123
  %i.nr = load i8, ptr %i.nj, align 1, !tbaa !47
  %i.ns = zext i8 %i.nr to i32
  store i32 %i.ns, ptr %i.y, align 4, !tbaa !134
  %i.nt = load i8, ptr %i.ni, align 1, !tbaa !47
  %i.nu = zext i8 %i.nt to i32                    ; 2 uses
  store i32 %i.nu, ptr %i.z, align 8, !tbaa !124
  %i.nv = load i8, ptr %i.mp, align 1, !tbaa !47
  %i.nw = zext i8 %i.nv to i32                    ; 2 uses
  store i32 %i.nw, ptr %i.aa, align 4, !tbaa !125
  %i.nx = load i8, ptr %i.mr, align 1, !tbaa !47
  %i.ny = zext i8 %i.nx to i32
  store i32 %i.ny, ptr %5, align 8, !tbaa !135
  %i.nz = load i8, ptr %i.mt, align 1, !tbaa !47  ; 3 uses
  %i.oa = add i8 %i.nz, 47
  %or.cond.i136.i = icmp ult i8 %i.oa, 99
  br i1 %or.cond.i136.i, label %bb.cx, label %isodate7.exit142.i

bb.cx:                                            ; preds = %bb.cw
  %.neg17.i138.i = sdiv i8 %i.nz, -4
  %.neg.sext.i139.i = sext i8 %.neg17.i138.i to i32
  %i.ob = add nsw i32 %.neg.sext.i139.i, %i.nu
  store i32 %i.ob, ptr %i.z, align 8, !tbaa !124
  %i.oc = srem i8 %i.nz, 4
  %narrow.i140.i = mul nsw i8 %i.oc, -15
  %.neg16.i141.i = sext i8 %narrow.i140.i to i32
  %i.od = add nsw i32 %.neg16.i141.i, %i.nw
  store i32 %i.od, ptr %i.aa, align 4, !tbaa !125
  br label %isodate7.exit142.i

isodate7.exit142.i:                               ; preds = %bb.cx, %bb.cw
  %i.oe = call i64 @timegm(ptr noundef nonnull %5) #17 ; 2 uses
  %i.of = icmp eq i64 %i.oe, -1
  %..i137.i = select i1 %i.of, i64 0, i64 %i.oe
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  store i64 %..i137.i, ptr %i.k, align 8, !tbaa !76
  br label %bb.cy

bb.cy:                                            ; preds = %isodate7.exit142.i, %bb.cv
  %i.og = getelementptr inbounds nuw i8, ptr %.483.i, i64 7
  %i.oh = add nsw i32 %.4.i, -7
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cu
  %.584.i = phi ptr [ %i.og, %bb.cy ], [ %.483.i, %bb.cu ] ; 8 uses
  %.5.i = phi i32 [ %i.oh, %bb.cy ], [ %.4.i, %bb.cu ]
  %i.oi = and i8 %i.hl, 8
  %i.oj = icmp ne i8 %i.oi, 0
  %i.ok = icmp samesign ugt i32 %.5.i, 6
  %or.cond15.i = select i1 %i.oj, i1 %i.ok, i1 false
  br i1 %or.cond15.i, label %bb.da, label %parse_rockridge_TF1.exit

bb.da:                                            ; preds = %bb.cz
  %i.ol = getelementptr inbounds nuw i8, ptr %.584.i, i64 1 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.584.i, i64 4 ; 2 uses
  %i.on = load i8, ptr %i.om, align 1, !tbaa !47  ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.584.i, i64 5 ; 2 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !47  ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.584.i, i64 6 ; 2 uses
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !47  ; 2 uses
  %i.os = load <4 x i8>, ptr %.584.i, align 1, !tbaa !47
  %.fr249 = freeze <4 x i8> %i.os                 ; 3 uses
  %i.ot = load i8, ptr %i.ol, align 1, !tbaa !47
  %i.ou = icmp eq i8 %i.on, 0
  %14 = icmp eq i8 %i.op, 0
  %i.ov = icmp eq i8 %i.or, 0
  %.fr240.scalar = bitcast <4 x i8> %.fr249 to i32
  %i.ow = icmp eq i32 %.fr240.scalar, 0
  %op.rdx = select i1 %i.ow, i1 %i.ou, i1 false
  %15 = select i1 %op.rdx, i1 %14, i1 false
  %op.rdx228 = select i1 %15, i1 %i.ov, i1 false
  %i.ox = add i8 %i.ot, -13
  %or.cond13.i149.i = icmp ult i8 %i.ox, -12
  %or.cond40.i150.i = select i1 %op.rdx228, i1 true, i1 %or.cond13.i149.i
  %i.oy = extractelement <4 x i8> %.fr249, i64 2
  %i.oz = add i8 %i.oy, -32
  %or.cond15.i151.i = icmp ult i8 %i.oz, -31
  %or.cond41.i152.i = or i1 %or.cond40.i150.i, %or.cond15.i151.i
  %i.pa = extractelement <4 x i8> %.fr249, i64 3
  %i.pb = icmp ugt i8 %i.pa, 23
  %or.cond42.i153.i = or i1 %or.cond41.i152.i, %i.pb
  %i.pc = icmp ugt i8 %i.on, 59
  %or.cond43.i154.i = select i1 %or.cond42.i153.i, i1 true, i1 %i.pc
  %i.pd = icmp ugt i8 %i.op, 61
  %or.cond44.i155.i = select i1 %or.cond43.i154.i, i1 true, i1 %i.pd
  %i.pe = add i8 %i.or, -53
  %or.cond17.i156.i = icmp ult i8 %i.pe, -101
  %narrow.i157.i = select i1 %or.cond44.i155.i, i1 true, i1 %or.cond17.i156.i
  br i1 %narrow.i157.i, label %parse_rockridge_TF1.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pf = getelementptr inbounds nuw i8, ptr %.584.i, i64 3
  %i.pg = getelementptr inbounds nuw i8, ptr %.584.i, i64 2
  %i.ph = load i32, ptr %i.h, align 8, !tbaa !72
  %i.pi = or i32 %i.ph, 8
  store i32 %i.pi, ptr %i.h, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  %i.pj = load i8, ptr %.584.i, align 1, !tbaa !47
  %i.pk = zext i8 %i.pj to i32
  store i32 %i.pk, ptr %i.ac, align 4, !tbaa !122
  %i.pl = load i8, ptr %i.ol, align 1, !tbaa !47
  %i.pm = zext i8 %i.pl to i32
  %i.pn = add nsw i32 %i.pm, -1
  store i32 %i.pn, ptr %i.ad, align 8, !tbaa !123
  %i.po = load i8, ptr %i.pg, align 1, !tbaa !47
  %i.pp = zext i8 %i.po to i32
  store i32 %i.pp, ptr %i.ae, align 4, !tbaa !134
  %i.pq = load i8, ptr %i.pf, align 1, !tbaa !47
  %i.pr = zext i8 %i.pq to i32                    ; 2 uses
  store i32 %i.pr, ptr %i.af, align 8, !tbaa !124
  %i.ps = load i8, ptr %i.om, align 1, !tbaa !47
  %i.pt = zext i8 %i.ps to i32                    ; 2 uses
  store i32 %i.pt, ptr %i.ag, align 4, !tbaa !125
  %i.pu = load i8, ptr %i.oo, align 1, !tbaa !47
  %i.pv = zext i8 %i.pu to i32
  store i32 %i.pv, ptr %4, align 8, !tbaa !135
  %i.pw = load i8, ptr %i.oq, align 1, !tbaa !47  ; 3 uses
  %i.px = add i8 %i.pw, 47
  %or.cond.i159.i = icmp ult i8 %i.px, 99
  br i1 %or.cond.i159.i, label %bb.dc, label %isodate7.exit165.i

bb.dc:                                            ; preds = %bb.db
  %.neg17.i161.i = sdiv i8 %i.pw, -4
  %.neg.sext.i162.i = sext i8 %.neg17.i161.i to i32
  %i.py = add nsw i32 %.neg.sext.i162.i, %i.pr
  store i32 %i.py, ptr %i.af, align 8, !tbaa !124
  %i.pz = srem i8 %i.pw, 4
  %narrow.i163.i = mul nsw i8 %i.pz, -15
  %.neg16.i164.i = sext i8 %narrow.i163.i to i32
  %i.qa = add nsw i32 %.neg16.i164.i, %i.pt
  store i32 %i.qa, ptr %i.ag, align 4, !tbaa !125
  br label %isodate7.exit165.i

isodate7.exit165.i:                               ; preds = %bb.dc, %bb.db
  %i.qb = call i64 @timegm(ptr noundef nonnull %4) #17 ; 2 uses
  %i.qc = icmp eq i64 %i.qb, -1
  %..i160.i = select i1 %i.qc, i64 0, i64 %i.qb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %isodate7.exit165.i, %bb.cj
  %.sink.i = phi i64 [ %i.iu, %bb.cj ], [ %..i160.i, %isodate7.exit165.i ]
  store i64 %.sink.i, ptr %i.ah, align 8, !tbaa !75
  br label %parse_rockridge_TF1.exit

parse_rockridge_TF1.exit:                         ; preds = %bb.bt, %bb.ch, %bb.ci, %bb.cz, %bb.da, %.sink.split.i
  store i8 1, ptr %i.ai, align 8, !tbaa !55
  br label %register_CE.exit

bb.dd:                                            ; preds = %bb.d
  %i.qd = icmp eq i8 %i.bi, 70
  %i.qe = icmp eq i8 %i.bs, 1
  %or.cond22 = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %or.cond22, label %bb.de, label %register_CE.exit

bb.de:                                            ; preds = %bb.dd
  %i.qf = load i8, ptr %i.bg, align 1, !tbaa !47
  %i.qg = icmp eq i8 %i.qf, 112
  br i1 %i.qg, label %bb.df, label %register_CE.exit

bb.df:                                            ; preds = %bb.de
  %i.qh = getelementptr inbounds nuw i8, ptr %.0126169221, i64 5
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !47
  %i.qj = icmp eq i8 %i.qi, 122
  %i.qk = icmp eq i32 %i.bq, 12
  %or.cond.i147 = and i1 %i.qk, %i.qj
  br i1 %or.cond.i147, label %bb.dg, label %register_CE.exit

bb.dg:                                            ; preds = %bb.df
  store i32 1, ptr %i.e, align 4, !tbaa !80
  %i.ql = getelementptr inbounds nuw i8, ptr %.0126169221, i64 7
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !47
  %i.qn = zext i8 %i.qm to i32
  store i32 %i.qn, ptr %i.f, align 8, !tbaa !83
  %i.qo = getelementptr inbounds nuw i8, ptr %.0126169221, i64 8
  %i.qp = load i32, ptr %i.qo, align 1
  %i.qq = zext i32 %i.qp to i64
  store i64 %i.qq, ptr %i.g, align 8, !tbaa !85
  br label %register_CE.exit

register_CE.exit:                                 ; preds = %._crit_edge.i, %bb.v, %bb.y, %bb.x, %bb.f, %parse_rockridge_NM1.exit, %bb.z, %bb.an, %.thread155, %bb.al, %bb.am, %bb.av, %bb.bq, %bb.ax, %parse_rockridge_SL1.exit, %parse_rockridge_TF1.exit, %bb.bs, %bb.dd, %bb.d, %bb.e, %bb.au, %bb.de, %bb.df, %bb.dg
  %i.qr = load i8, ptr %i.bk, align 1, !tbaa !47
  %i.qs = zext i8 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %.0126169221, i64 %i.qs ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 4 ; 2 uses
  %.not = icmp ugt ptr %i.qu, %3
  br i1 %.not, label %.thread157, label %bb.b, !llvm.loop !180

.critedge:                                        ; preds = %bb.c, %.lr.ph222
  br i1 %.not134173220, label %.critedge180, label %.thread157

.critedge180:                                     ; preds = %.lr.ph, %bb.a, %.critedge
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.35) #17
  br label %.thread157

.thread157:                                       ; preds = %bb.b, %register_CE.exit, %bb.o, %bb.q, %bb.l, %bb.br, %.critedge, %.critedge180
  %.4 = phi i32 [ 0, %.critedge ], [ -20, %.critedge180 ], [ 0, %bb.br ], [ -30, %bb.l ], [ -30, %bb.q ], [ -30, %bb.o ], [ 0, %register_CE.exit ], [ 0, %bb.b ]
  ret i32 %.4
}

declare void @archive_string_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare i64 @timegm(ptr noundef) local_unnamed_addr #14

declare ptr @archive_strcat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @isodate17_valid(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !47      ; 2 uses
  %i.b = add i8 %i.a, -58
  %or.cond68 = icmp ult i8 %i.b, -10
  br i1 %or.cond68, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !47    ; 2 uses
  %i.e = add i8 %i.d, -58
  %or.cond68.1 = icmp ult i8 %i.e, -10
  br i1 %or.cond68.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !47    ; 2 uses
  %i.h = add i8 %i.g, -58
  %or.cond68.2 = icmp ult i8 %i.h, -10
  br i1 %or.cond68.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !47    ; 2 uses
  %i.k = add i8 %i.j, -58
  %or.cond68.3 = icmp ult i8 %i.k, -10
  br i1 %or.cond68.3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !47    ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond68.4 = icmp ult i8 %i.n, -10
  br i1 %or.cond68.4, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !47    ; 2 uses
  %i.q = add i8 %i.p, -58
  %or.cond68.5 = icmp ult i8 %i.q, -10
  br i1 %or.cond68.5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !47    ; 2 uses
  %i.t = add i8 %i.s, -58
  %or.cond68.6 = icmp ult i8 %i.t, -10
  br i1 %or.cond68.6, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !47    ; 2 uses
  %i.w = add i8 %i.v, -58
  %or.cond68.7 = icmp ult i8 %i.w, -10
  br i1 %or.cond68.7, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !47    ; 2 uses
  %i.z = add i8 %i.y, -58
  %or.cond68.8 = icmp ult i8 %i.z, -10
  br i1 %or.cond68.8, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !47  ; 2 uses
  %i.ac = add i8 %i.ab, -58
  %or.cond68.9 = icmp ult i8 %i.ac, -10
  br i1 %or.cond68.9, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !47  ; 2 uses
end_hunk_1
