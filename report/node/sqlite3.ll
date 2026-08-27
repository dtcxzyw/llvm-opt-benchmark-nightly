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
  br i1 %.not8.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load double, ptr %i.a, align 8, !tbaa !229 ; 2 uses
  %i.i = tail call double @llvm.fabs.f64(double %i.h)
  %or.cond54 = fcmp ogt double %i.i, f0x43DFFFFFFFFFFFFF
  br i1 %or.cond54, label %sqlite3_value_int.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = fptosi double %i.h to i64
  br label %sqlite3_value_int.exit

bb.f:                                             ; preds = %bb.c
  %i.k = and i32 %i.d, 18
  %.not9.i.i = icmp eq i32 %i.k, 0
  br i1 %.not9.i.i, label %sqlite3_value_int.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !291
  %.not10.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i, label %sqlite3_value_int.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call fastcc i64 @memIntValue(ptr noundef nonnull readonly %i.a)
  br label %sqlite3_value_int.exit

sqlite3_value_int.exit:                           ; preds = %bb.b, %bb.e, %bb.h
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.j, %bb.e ], [ %i.n, %bb.h ] ; 2 uses
  %i.o = trunc i64 %.0.i.i to i32
  %i.p = and i32 %i.o, 255
  %i.q = add nsw i32 %i.p, -6
  %or.cond = icmp ult i32 %i.q, -5
  br i1 %or.cond, label %sqlite3_value_int.exit.thread, label %bb.i

bb.i:                                             ; preds = %sqlite3_value_int.exit
  %i.r = trunc i64 %.0.i.i to i8                  ; 2 uses
  %i.s = shl i8 %i.r, 1                           ; 3 uses
  %i.t = shl i8 %i.r, 3
  %i.u = add i8 %i.t, 8                           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !290
  %i.x = tail call ptr @sqlite3_value_blob(ptr noundef %i.w) ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %sqlite3_value_int.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !290  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !164 ; 2 uses
  %i.ac = and i16 %i.ab, 2
  %.not.i.i30 = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i30, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 22
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !351
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !560
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.k, %bb.j
  %i.ai = zext i16 %i.ab to i32                   ; 3 uses
  %i.aj = and i32 %i.ai, 16
  %.not20.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not20.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread.i.i
  %i.ak = and i32 %i.ai, 1024
  %.not22.i.i = icmp eq i32 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !560 ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.z, align 8, !tbaa !229
  %i.ao = add nsw i32 %i.an, %i.am
  br label %sqlite3_value_bytes.exit

bb.o:                                             ; preds = %.thread.i.i
  %i.ap = and i32 %i.ai, 1
  %.not21.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not21.i.i, label %bb.p, label %sqlite3_value_int.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.aq = tail call fastcc i32 @valueBytes(ptr noundef nonnull %i.z, i8 noundef zeroext 1)
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.l, %bb.m, %bb.n, %bb.p
  %.0.i.i31 = phi i32 [ %i.ah, %bb.l ], [ %i.am, %bb.m ], [ %i.ao, %bb.n ], [ %i.aq, %bb.p ] ; 2 uses
  %i.ar = icmp slt i32 %.0.i.i31, 4
  br i1 %i.ar, label %sqlite3_value_int.exit.thread, label %bb.q

bb.q:                                             ; preds = %sqlite3_value_bytes.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 3 uses
  %.val27 = load i8, ptr %i.as, align 1, !tbaa !229
  %i.at = getelementptr i8, ptr %i.x, i64 3       ; 3 uses
  %.val28 = load i8, ptr %i.at, align 1, !tbaa !229
  %i.au = zext i8 %.val27 to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val28 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = zext i8 %i.u to i32
  %i.az = mul nuw nsw i32 %i.ax, %i.ay
  %i.ba = or disjoint i32 %i.az, 4
  %i.bb = icmp samesign ult i32 %.0.i.i31, %i.ba
  br i1 %i.bb, label %sqlite3_value_int.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = tail call i32 @sqlite3_initialize(), !inline_history !7874
  %.not.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i32, label %sqlite3_malloc64.exit.i, label %sqlite3_str_new.exit

sqlite3_malloc64.exit.i:                          ; preds = %bb.r
  %i.bd = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !7874 ; 7 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %sqlite3_str_new.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3_malloc64.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, i8 0, i64 20, i1 false)
  store i32 1000000000, ptr %i.be, align 4, !tbaa !301
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i32 0, ptr %i.bf, align 8, !tbaa !281
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  store i8 0, ptr %i.bg, align 4, !tbaa !300
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 29
  store i8 0, ptr %i.bh, align 1, !tbaa !277
  br label %sqlite3_str_new.exit

sqlite3_str_new.exit:                             ; preds = %bb.r, %sqlite3_malloc64.exit.i, %bb.s
  %.0.i = phi ptr [ %i.bd, %bb.s ], [ @sqlite3OomStr, %sqlite3_malloc64.exit.i ], [ @sqlite3OomStr, %bb.r ] ; 17 uses
  %.val57 = load i8, ptr %i.as, align 1, !tbaa !229
  %.val2658 = load i8, ptr %i.at, align 1, !tbaa !229
  %i.bi = zext i8 %.val57 to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = zext i8 %.val2658 to i32
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %.not62 = icmp eq i32 %i.bl, 0
  br i1 %.not62, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %sqlite3_str_new.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bn = zext i8 %i.s to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %.not63 = icmp eq i8 %i.s, 0
  %i.br = zext i8 %i.u to i64
  %wide.trip.count = zext i8 %i.s to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph60, %sqlite3_str_append.exit35
  %indvars.iv65 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next66, %sqlite3_str_append.exit35 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.bs = mul nuw nsw i64 %indvars.iv65, %i.br
  %i.bt = getelementptr i8, ptr %i.x, i64 %i.bs   ; 9 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !229
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw i64 %i.bw, 56
  %i.by = getelementptr i8, ptr %i.bt, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !229
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 48
  %i.cc = or disjoint i64 %i.cb, %i.bx
  %i.cd = getelementptr i8, ptr %i.bt, i64 6
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !229
  %i.cf = zext i8 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 40
  %i.ch = or disjoint i64 %i.cc, %i.cg
  %i.ci = getelementptr i8, ptr %i.bt, i64 7
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !229
  %i.ck = zext i8 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 32
  %i.cm = or disjoint i64 %i.ch, %i.cl
  %i.cn = getelementptr i8, ptr %i.bt, i64 8
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !229
  %i.cp = zext i8 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 24
  %i.cr = or disjoint i64 %i.cm, %i.cq
  %i.cs = getelementptr i8, ptr %i.bt, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !229
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 16
  %i.cw = or disjoint i64 %i.cr, %i.cv
  %i.cx = getelementptr i8, ptr %i.bt, i64 10
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !229
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 8
  %i.db = or disjoint i64 %i.cw, %i.da
  %i.dc = getelementptr i8, ptr %i.bt, i64 11
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !229
  %i.de = zext i8 %i.dd to i64
  %i.df = add nuw i64 %i.db, %i.de
  %i.dg = getelementptr i8, ptr %i.bt, i64 12
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %.017.i = phi ptr [ %i.es, %bb.u ], [ %i.dg, %bb.t ] ; 9 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i ; 2 uses
  %i.di = load i8, ptr %.017.i, align 1, !tbaa !229
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw i32 %i.dj, 24
  %i.dl = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !229
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 16
  %i.dp = or disjoint i32 %i.do, %i.dk
  %i.dq = getelementptr inbounds nuw i8, ptr %.017.i, i64 2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !229
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 8
  %i.du = or disjoint i32 %i.dp, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.017.i, i64 3
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !229
  %i.dx = zext i8 %i.dw to i32
  %i.dy = or disjoint i32 %i.du, %i.dx
  store i32 %i.dy, ptr %i.dh, align 8, !tbaa !229
  %i.dz = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.eb = load i8, ptr %i.dz, align 1, !tbaa !229
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw i32 %i.ec, 24
  %i.ee = getelementptr inbounds nuw i8, ptr %.017.i, i64 5
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !229
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 16
  %i.ei = or disjoint i32 %i.eh, %i.ed
  %i.ej = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !229
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 8
  %i.en = or disjoint i32 %i.ei, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !229
  %i.eq = zext i8 %i.ep to i32
  %i.er = or disjoint i32 %i.en, %i.eq
  store i32 %i.er, ptr %i.ea, align 4, !tbaa !229
  %i.es = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.et = icmp samesign ult i64 %indvars.iv.next.i, %i.bn
  br i1 %i.et, label %bb.u, label %nodeGetCell.exit, !llvm.loop !7875

nodeGetCell.exit:                                 ; preds = %bb.u
  %.not = icmp eq i64 %indvars.iv65, 0
  br i1 %.not, label %sqlite3_str_append.exit, label %bb.v

bb.v:                                             ; preds = %nodeGetCell.exit
  %i.eu = load i32, ptr %i.bo, align 8, !tbaa !281 ; 2 uses
  %i.ev = add i32 %i.eu, 1                        ; 2 uses
  %i.ew = load i32, ptr %i.bp, align 8, !tbaa !282
  %.not.i33 = icmp ult i32 %i.ev, %i.ew
  br i1 %.not.i33, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @enlargeAndAppend(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.941, i32 noundef 1), !inline_history !283
  br label %sqlite3_str_append.exit

bb.x:                                             ; preds = %bb.v
  store i32 %i.ev, ptr %i.bo, align 8, !tbaa !281
  %i.ex = load ptr, ptr %i.bq, align 8, !tbaa !284
  %i.ey = zext i32 %i.eu to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  store i8 32, ptr %i.ez, align 1
  br label %sqlite3_str_append.exit

sqlite3_str_append.exit:                          ; preds = %bb.x, %bb.w, %nodeGetCell.exit
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.1822, i64 noundef %i.df)
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3_str_append.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %sqlite3_str_append.exit ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !229
  %i.fc = fpext float %i.fb to double
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.1823, double noundef %i.fc)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7876

._crit_edge:                                      ; preds = %.lr.ph, %sqlite3_str_append.exit
  %i.fd = load i32, ptr %i.bo, align 8, !tbaa !281 ; 2 uses
  %i.fe = add i32 %i.fd, 1                        ; 2 uses
  %i.ff = load i32, ptr %i.bp, align 8, !tbaa !282
  %.not.i34 = icmp ult i32 %i.fe, %i.ff
  br i1 %.not.i34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  tail call fastcc void @enlargeAndAppend(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.1824, i32 noundef 1), !inline_history !283
  br label %sqlite3_str_append.exit35

bb.z:                                             ; preds = %._crit_edge
  store i32 %i.fe, ptr %i.bo, align 8, !tbaa !281
  %i.fg = load ptr, ptr %i.bq, align 8, !tbaa !284
  %i.fh = zext i32 %i.fd to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  store i8 125, ptr %i.fi, align 1
  br label %sqlite3_str_append.exit35

sqlite3_str_append.exit35:                        ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %.val = load i8, ptr %i.as, align 1, !tbaa !229
  %.val26 = load i8, ptr %i.at, align 1, !tbaa !229
  %i.fj = zext i8 %.val to i64
  %i.fk = shl nuw nsw i64 %i.fj, 8
  %i.fl = zext i8 %.val26 to i64
  %i.fm = or disjoint i64 %i.fk, %i.fl
  %i.fn = icmp samesign ult i64 %indvars.iv.next66, %i.fm
  br i1 %i.fn, label %bb.t, label %._crit_edge61, !llvm.loop !7877

._crit_edge61:                                    ; preds = %sqlite3_str_append.exit35, %sqlite3_str_new.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.fp = load i8, ptr %i.fo, align 4, !tbaa !300 ; 5 uses
  %i.fq = zext i8 %i.fp to i32
  %.not.i37 = icmp eq i8 %i.fp, 0
  %i.fr = select i1 %.not.i37, i32 -1, i32 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !24
  %i.ft = load ptr, ptr %0, align 8, !tbaa !290
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  %i.fv = load i16, ptr %i.fu, align 4, !tbaa !164
  %i.fw = and i16 %i.fv, 1
  %.not5.i = icmp eq i16 %i.fw, 0
  br i1 %.not5.i, label %sqlite3_result_error_code.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge61
  switch i8 %i.fp, label %bb.ac [
    i8 101, label %bb.ab
    i8 100, label %sqlite3ErrStr.exit.i
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %sqlite3ErrStr.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.fx = icmp ult i8 %i.fp, 29
  br i1 %i.fx, label %bb.ad, label %sqlite3ErrStr.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.fy = zext nneg i8 %i.fp to i64               ; 2 uses
  %i.fz = shl nuw nsw i64 1, %i.fy
  %i.ga = and i64 %i.fz, 21037060
  %.not.not.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not.not.i.i, label %bb.ae, label %sqlite3ErrStr.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr @sqlite3ErrStr.aMsg, i64 %i.fy
end_hunk_0
