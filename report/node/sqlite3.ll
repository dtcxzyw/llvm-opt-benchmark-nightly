Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@fts5VocabInstanceNewTerm:bb.a

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !6643 ; 3 uses
  %.not14.i.i = icmp ugt i32 %i.p, %i.ag
  br i1 %.not14.i.i, label %bb.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !6445
  %.pre.i = zext i32 %i.p to i64
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  %narrow.i.i.i = select i1 %.not.i.i.i, i32 64, i32 %i.ag
  %spec.select.i.i.i = sext i32 %narrow.i.i.i to i64
  %i.ah = zext i32 %i.p to i64                    ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.016.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.i ], [ %i.aj, %bb.j ] ; 4 uses
  %i.ai = icmp ult i64 %.016.i.i.i, %i.ah
  %i.aj = shl nuw nsw i64 %.016.i.i.i, 1
  br i1 %i.ai, label %bb.j, label %bb.k, !llvm.loop !6441

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !6445
  %i.al = tail call i32 @sqlite3_initialize(), !inline_history !7244
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i, label %sqlite3_realloc64.exit.i.i.i, label %sqlite3Fts5BufferSet.exit

sqlite3_realloc64.exit.i.i.i:                     ; preds = %bb.k
  %i.am = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.ak, i64 noundef %.016.i.i.i), !inline_history !7244 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %sqlite3Fts5BufferSet.exit, label %sqlite3Fts5BufferSize.exit.thread.i.i

sqlite3Fts5BufferSize.exit.thread.i.i:            ; preds = %sqlite3_realloc64.exit.i.i.i
  %i.ao = trunc i64 %.016.i.i.i to i32
  store i32 %i.ao, ptr %i.af, align 4, !tbaa !6643
  store ptr %i.am, ptr %i.ad, align 8, !tbaa !6445
  %.pre18.i.i = load i32, ptr %i.ae, align 8, !tbaa !6439
  %i.ap = sext i32 %.pre18.i.i to i64
  br label %bb.l

bb.l:                                             ; preds = %sqlite3Fts5BufferSize.exit.thread.i.i, %._crit_edge.i.i
  %.pre-phi.i = phi i64 [ %i.ah, %sqlite3Fts5BufferSize.exit.thread.i.i ], [ %.pre.i, %._crit_edge.i.i ]
  %i.aq = phi i64 [ %i.ap, %sqlite3Fts5BufferSize.exit.thread.i.i ], [ 0, %._crit_edge.i.i ]
  %i.ar = phi ptr [ %i.am, %sqlite3Fts5BufferSize.exit.thread.i.i ], [ %.pre.i.i, %._crit_edge.i.i ]
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr readonly align 1 %i.r, i64 %.pre-phi.i, i1 false)
  %i.at = load i32, ptr %i.ae, align 8, !tbaa !6439
  %i.au = add i32 %i.at, %i.p
  store i32 %i.au, ptr %i.ae, align 8, !tbaa !6439
  br label %sqlite3Fts5BufferSet.exit

sqlite3Fts5BufferSet.exit:                        ; preds = %bb.l, %bb.g, %sqlite3_realloc64.exit.i.i.i, %bb.k, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.l ], [ 7, %sqlite3_realloc64.exit.i.i.i ], [ 7, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Fts5IterNextScan(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6426 ; 2 uses
  tail call fastcc void @fts5MultiIterNext(ptr noundef %i.b, ptr noundef %0, i32 noundef 0, i64 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !6358
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !6892
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i16, ptr %i.i, align 2, !tbaa !6894
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !6769 ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7269
  %i.q = load i8, ptr %i.p, align 1, !tbaa !229
  %.not13 = icmp eq i8 %i.q, 48
  br i1 %.not13, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.t(ptr noundef nonnull %i.s) #59, !inline_history !6799
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.f, %bb.e
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.v = tail call i32 %i.u(ptr noundef nonnull %i.n) #59, !inline_history !6800
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ab(ptr noundef nonnull %i.n) #59, !inline_history !6801
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i.i, label %fts5DataRelease.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.ad(ptr noundef nonnull %i.ac) #59, !inline_history !6802
  br label %fts5DataRelease.exit

bb.h:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ae(ptr noundef nonnull %i.n) #59, !inline_history !6801
  br label %fts5DataRelease.exit

fts5DataRelease.exit:                             ; preds = %sqlite3_mutex_enter.exit.i.i, %bb.g, %bb.h
  store ptr null, ptr %i.m, align 8, !tbaa !6769
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.af, align 4, !tbaa !6891
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %fts5DataRelease.exit, %bb.a
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !6426
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !6358
  store i32 0, ptr %i.ah, align 4, !tbaa !6358
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define internal void @rtreenode(ptr nofree noundef captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.RtreeCell, align 8          ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !290    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i16, ptr %i.b, align 4, !tbaa !164
  %i.d = zext i16 %i.c to i32                     ; 3 uses
  %i.e = and i32 %i.d, 36
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !229
  br label %sqlite3_value_int.exit

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %i.d, 8
  %.not8.i.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load double, ptr %i.a, align 8, !tbaa !229 ; 3 uses
  %i.i = fcmp olt double %i.h, f0xC3DFFFFFFFFFFFFF
  %i.j = fcmp ogt double %i.h, f0x43DFFFFFFFFFFFFF
  %i.k = fptosi double %i.h to i64
  %spec.select.i.i.i = select i1 %i.j, i64 9223372036854775807, i64 %i.k
  %.0.i.i.i = select i1 %i.i, i64 -9223372036854775808, i64 %spec.select.i.i.i
  br label %sqlite3_value_int.exit

bb.e:                                             ; preds = %bb.c
  %i.l = and i32 %i.d, 18
  %.not9.i.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i.i, label %sqlite3_value_int.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !291
  %.not10.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i, label %sqlite3_value_int.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call fastcc i64 @memIntValue(ptr noundef nonnull readonly %i.a)
  br label %sqlite3_value_int.exit

sqlite3_value_int.exit:                           ; preds = %bb.b, %bb.d, %bb.g
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ %.0.i.i.i, %bb.d ], [ %i.o, %bb.g ] ; 2 uses
  %i.p = trunc i64 %.0.i.i to i32
  %i.q = and i32 %i.p, 255
  %i.r = add nsw i32 %i.q, -6
  %or.cond = icmp ult i32 %i.r, -5
  br i1 %or.cond, label %sqlite3_value_int.exit.thread, label %bb.h

bb.h:                                             ; preds = %sqlite3_value_int.exit
  %i.s = trunc i64 %.0.i.i to i8                  ; 3 uses
  %i.t = shl i8 %i.s, 1                           ; 2 uses
  %i.u = shl i8 %i.s, 3
  %i.v = add i8 %i.u, 8                           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !290
  %i.y = tail call ptr @sqlite3_value_blob(ptr noundef %i.x) ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %sqlite3_value_int.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !290 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !164 ; 2 uses
  %i.ad = and i16 %i.ac, 2
  %.not.i.i30 = icmp eq i16 %i.ad, 0
  br i1 %.not.i.i30, label %.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 22
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !351
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !560
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.j, %bb.i
  %i.aj = zext i16 %i.ac to i32                   ; 3 uses
  %i.ak = and i32 %i.aj, 16
  %.not20.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not20.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread.i.i
  %i.al = and i32 %i.aj, 1024
  %.not22.i.i = icmp eq i32 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !560 ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.aa, align 8, !tbaa !229
  %i.ap = add nsw i32 %i.ao, %i.an
  br label %sqlite3_value_bytes.exit

bb.n:                                             ; preds = %.thread.i.i
  %i.aq = and i32 %i.aj, 1
  %.not21.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not21.i.i, label %bb.o, label %sqlite3_value_int.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call fastcc i32 @valueBytes(ptr noundef nonnull %i.aa, i8 noundef zeroext 1)
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.k, %bb.l, %bb.m, %bb.o
  %.0.i.i31 = phi i32 [ %i.ai, %bb.k ], [ %i.an, %bb.l ], [ %i.ap, %bb.m ], [ %i.ar, %bb.o ] ; 2 uses
  %i.as = icmp slt i32 %.0.i.i31, 4
  br i1 %i.as, label %sqlite3_value_int.exit.thread, label %bb.p

bb.p:                                             ; preds = %sqlite3_value_bytes.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 3 uses
  %.val27 = load i8, ptr %i.at, align 1, !tbaa !229
  %i.au = getelementptr i8, ptr %i.y, i64 3       ; 3 uses
  %.val28 = load i8, ptr %i.au, align 1, !tbaa !229
  %i.av = zext i8 %.val27 to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = zext i8 %.val28 to i32
  %i.ay = or disjoint i32 %i.aw, %i.ax
  %i.az = zext i8 %i.v to i32
  %i.ba = mul nuw nsw i32 %i.ay, %i.az
  %i.bb = or disjoint i32 %i.ba, 4
  %i.bc = icmp samesign ult i32 %.0.i.i31, %i.bb
  br i1 %i.bc, label %sqlite3_value_int.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = tail call i32 @sqlite3_initialize(), !inline_history !7874
  %.not.i.i32 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i32, label %sqlite3_malloc64.exit.i, label %sqlite3_str_new.exit

sqlite3_malloc64.exit.i:                          ; preds = %bb.q
  %i.be = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !7874 ; 7 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %sqlite3_str_new.exit, label %bb.r

bb.r:                                             ; preds = %sqlite3_malloc64.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.be, i8 0, i64 20, i1 false)
  store i32 1000000000, ptr %i.bf, align 4, !tbaa !301
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 0, ptr %i.bg, align 8, !tbaa !281
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  store i8 0, ptr %i.bh, align 4, !tbaa !300
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 29
  store i8 0, ptr %i.bi, align 1, !tbaa !277
  br label %sqlite3_str_new.exit

sqlite3_str_new.exit:                             ; preds = %bb.q, %sqlite3_malloc64.exit.i, %bb.r
  %.0.i = phi ptr [ %i.be, %bb.r ], [ @sqlite3OomStr, %sqlite3_malloc64.exit.i ], [ @sqlite3OomStr, %bb.q ] ; 17 uses
  %.val56 = load i8, ptr %i.at, align 1, !tbaa !229
  %.val2657 = load i8, ptr %i.au, align 1, !tbaa !229
  %i.bj = zext i8 %.val56 to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = zext i8 %.val2657 to i32
  %i.bm = or disjoint i32 %i.bk, %i.bl
  %.not61 = icmp eq i32 %i.bm, 0
  br i1 %.not61, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %sqlite3_str_new.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bo = zext nneg i8 %i.t to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %.not62 = icmp eq i8 %i.s, 0
  %4 = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.bs = zext i8 %i.v to i64
  %wide.trip.count = zext i8 %4 to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph59, %sqlite3_str_append.exit35
  %indvars.iv64 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next65, %sqlite3_str_append.exit35 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.bt = mul nuw nsw i64 %indvars.iv64, %i.bs
  %i.bu = getelementptr i8, ptr %i.y, i64 %i.bt   ; 9 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !229
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw i64 %i.bx, 56
  %i.bz = getelementptr i8, ptr %i.bu, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !229
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 48
  %i.cd = or disjoint i64 %i.cc, %i.by
  %i.ce = getelementptr i8, ptr %i.bu, i64 6
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !229
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 40
  %i.ci = or disjoint i64 %i.cd, %i.ch
  %i.cj = getelementptr i8, ptr %i.bu, i64 7
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !229
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 32
  %i.cn = or disjoint i64 %i.ci, %i.cm
  %i.co = getelementptr i8, ptr %i.bu, i64 8
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !229
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 24
  %i.cs = or disjoint i64 %i.cn, %i.cr
  %i.ct = getelementptr i8, ptr %i.bu, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !229
  %i.cv = zext i8 %i.cu to i64
  %i.cw = shl nuw nsw i64 %i.cv, 16
  %i.cx = or disjoint i64 %i.cs, %i.cw
  %i.cy = getelementptr i8, ptr %i.bu, i64 10
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !229
  %i.da = zext i8 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 8
  %i.dc = or disjoint i64 %i.cx, %i.db
  %i.dd = getelementptr i8, ptr %i.bu, i64 11
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !229
  %i.df = zext i8 %i.de to i64
  %i.dg = add nuw i64 %i.dc, %i.df
  %i.dh = getelementptr i8, ptr %i.bu, i64 12
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %.017.i = phi ptr [ %i.et, %bb.t ], [ %i.dh, %bb.s ] ; 9 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i ; 2 uses
  %i.dj = load i8, ptr %.017.i, align 1, !tbaa !229
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw i32 %i.dk, 24
  %i.dm = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !229
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 16
  %i.dq = or disjoint i32 %i.dp, %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %.017.i, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !229
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 8
  %i.dv = or disjoint i32 %i.dq, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.017.i, i64 3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !229
  %i.dy = zext i8 %i.dx to i32
  %i.dz = or disjoint i32 %i.dv, %i.dy
  store i32 %i.dz, ptr %i.di, align 8, !tbaa !229
  %i.ea = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !229
  %i.ed = zext i8 %i.ec to i32
  %i.ee = shl nuw i32 %i.ed, 24
  %i.ef = getelementptr inbounds nuw i8, ptr %.017.i, i64 5
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !229
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 16
  %i.ej = or disjoint i32 %i.ei, %i.ee
  %i.ek = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !229
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 8
  %i.eo = or disjoint i32 %i.ej, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !229
  %i.er = zext i8 %i.eq to i32
  %i.es = or disjoint i32 %i.eo, %i.er
  store i32 %i.es, ptr %i.eb, align 4, !tbaa !229
  %i.et = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.eu = icmp samesign ult i64 %indvars.iv.next.i, %i.bo
  br i1 %i.eu, label %bb.t, label %nodeGetCell.exit, !llvm.loop !7875

nodeGetCell.exit:                                 ; preds = %bb.t
  %.not = icmp eq i64 %indvars.iv64, 0
  br i1 %.not, label %sqlite3_str_append.exit, label %bb.u

bb.u:                                             ; preds = %nodeGetCell.exit
  %i.ev = load i32, ptr %i.bp, align 8, !tbaa !281 ; 2 uses
  %i.ew = add i32 %i.ev, 1                        ; 2 uses
  %i.ex = load i32, ptr %i.bq, align 8, !tbaa !282
  %.not.i33 = icmp ult i32 %i.ew, %i.ex
  br i1 %.not.i33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @enlargeAndAppend(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.941, i32 noundef 1), !inline_history !283
  br label %sqlite3_str_append.exit

bb.w:                                             ; preds = %bb.u
  store i32 %i.ew, ptr %i.bp, align 8, !tbaa !281
  %i.ey = load ptr, ptr %i.br, align 8, !tbaa !284
  %i.ez = zext i32 %i.ev to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  store i8 32, ptr %i.fa, align 1
  br label %sqlite3_str_append.exit

sqlite3_str_append.exit:                          ; preds = %bb.w, %bb.v, %nodeGetCell.exit
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.1822, i64 noundef %i.dg)
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3_str_append.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %sqlite3_str_append.exit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !229
  %i.fd = fpext float %i.fc to double
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.1823, double noundef %i.fd)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7876

._crit_edge:                                      ; preds = %.lr.ph, %sqlite3_str_append.exit
  %i.fe = load i32, ptr %i.bp, align 8, !tbaa !281 ; 2 uses
  %i.ff = add i32 %i.fe, 1                        ; 2 uses
  %i.fg = load i32, ptr %i.bq, align 8, !tbaa !282
  %.not.i34 = icmp ult i32 %i.ff, %i.fg
  br i1 %.not.i34, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  tail call fastcc void @enlargeAndAppend(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.1824, i32 noundef 1), !inline_history !283
  br label %sqlite3_str_append.exit35

bb.y:                                             ; preds = %._crit_edge
  store i32 %i.ff, ptr %i.bp, align 8, !tbaa !281
  %i.fh = load ptr, ptr %i.br, align 8, !tbaa !284
  %i.fi = zext i32 %i.fe to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  store i8 125, ptr %i.fj, align 1
  br label %sqlite3_str_append.exit35

sqlite3_str_append.exit35:                        ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %.val = load i8, ptr %i.at, align 1, !tbaa !229
  %.val26 = load i8, ptr %i.au, align 1, !tbaa !229
  %i.fk = zext i8 %.val to i64
  %i.fl = shl nuw nsw i64 %i.fk, 8
  %i.fm = zext i8 %.val26 to i64
  %i.fn = or disjoint i64 %i.fl, %i.fm
  %i.fo = icmp samesign ult i64 %indvars.iv.next65, %i.fn
  br i1 %i.fo, label %bb.s, label %._crit_edge60, !llvm.loop !7877

._crit_edge60:                                    ; preds = %sqlite3_str_append.exit35, %sqlite3_str_new.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.fq = load i8, ptr %i.fp, align 4, !tbaa !300 ; 5 uses
  %i.fr = zext i8 %i.fq to i32
  %.not.i37 = icmp eq i8 %i.fq, 0
  %i.fs = select i1 %.not.i37, i32 -1, i32 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !24
  %i.fu = load ptr, ptr %0, align 8, !tbaa !290
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  %i.fw = load i16, ptr %i.fv, align 4, !tbaa !164
  %i.fx = and i16 %i.fw, 1
  %.not5.i = icmp eq i16 %i.fx, 0
  br i1 %.not5.i, label %sqlite3_result_error_code.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge60
  switch i8 %i.fq, label %bb.ab [
    i8 101, label %bb.aa
    i8 100, label %sqlite3ErrStr.exit.i
  ]

bb.aa:                                            ; preds = %bb.z
  br label %sqlite3ErrStr.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.fy = icmp ult i8 %i.fq, 29
  br i1 %i.fy, label %bb.ac, label %sqlite3ErrStr.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.fz = zext nneg i8 %i.fq to i64               ; 2 uses
  %i.ga = shl nuw nsw i64 1, %i.fz
  %i.gb = and i64 %i.ga, 21037060
  %.not.not.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.not.i.i, label %bb.ad, label %sqlite3ErrStr.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr @sqlite3ErrStr.aMsg, i64 %i.fz
end_hunk_0
