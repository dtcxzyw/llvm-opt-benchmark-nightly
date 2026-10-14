Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ngsniffer?download=true
inline.NumInlined: 53
inline.NumDeleted: 18
begin_hunk_0_@ng_read_bytes_or_eof:bb.a
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #11 ; 3 uses
  %i.u = getelementptr i8, ptr %i.b, i64 48
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %i.t, align 8
  %i.w = getelementptr i8, ptr %i.b, i64 56
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.t, i64 8
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.b, i64 96       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @g_list_append(ptr noundef %i.aa, ptr noundef %i.t) ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h
  %.sink136 = phi i64 [ 104, %bb.h ], [ 112, %bb.f ]
  %.sink = phi ptr [ %i.ab, %bb.h ], [ %i.r, %bb.f ]
  %i.ac = getelementptr i8, ptr %i.b, i64 %.sink136
  store ptr %.sink, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %i.ad = tail call fastcc zeroext i1 @read_blob(ptr noundef %.0107, ptr noundef %.0106, ptr noundef %4, ptr noundef %5)
  br i1 %i.ad, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.d
  %.not110117 = icmp eq i32 %2, 0
  br i1 %.not110117, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %.0106, i64 8     ; 4 uses
  %i.af = getelementptr i8, ptr %.0106, i64 12    ; 7 uses
  %i.ag = getelementptr i8, ptr %i.b, i64 48
  %i.ah = getelementptr i8, ptr %i.b, i64 56
  %i.ai = getelementptr i8, ptr %i.b, i64 104     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.b, i64 112     ; 2 uses
  %i.ak = getelementptr i8, ptr %.0106, i64 24    ; 4 uses
  %.pre126 = load i32, ptr %i.af, align 4         ; 2 uses
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %i.al = phi i32 [ %i.be, %bb.o ], [ %.pre126, %.lr.ph ] ; 2 uses
  %.0101119.us = phi i32 [ %i.bb, %bb.o ], [ %2, %.lr.ph ] ; 2 uses
  %.0105118.us = phi ptr [ %i.bc, %bb.o ], [ %1, %.lr.ph ] ; 2 uses
  %i.am = load i32, ptr %i.ae, align 8
  %i.an = sub i32 %i.am, %i.al                    ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.ap = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not112.us = icmp eq ptr %i.ap, null
  br i1 %.not112.us, label %.loopexit115, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  store ptr %i.ar, ptr %i.aj, align 8
  %.not113.us = icmp eq ptr %i.ar, null
  br i1 %.not113.us, label %.loopexit115, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = tail call fastcc zeroext i1 @read_blob(ptr noundef %.0107, ptr noundef %.0106, ptr noundef %4, ptr noundef %5)
  br i1 %i.as, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %i.ae, align 8
  %i.au = load i32, ptr %i.af, align 4            ; 2 uses
  %i.av = sub i32 %i.at, %i.au
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.us
  %i.aw = phi i32 [ %i.au, %bb.n ], [ %i.al, %.lr.ph.split.us ]
  %.0103.us = phi i32 [ %i.av, %bb.n ], [ %i.an, %.lr.ph.split.us ]
  %spec.select.us = tail call i32 @llvm.umin.i32(i32 %.0101119.us, i32 %.0103.us) ; 3 uses
  %i.ax = load ptr, ptr %.0106, align 8
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr i8, ptr %i.ax, i64 %i.ay
  %i.ba = zext nneg i32 %spec.select.us to i64    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %.0105118.us, ptr noundef align 1 %i.az, i64 noundef %i.ba, i1 noundef false) #10
  %i.bb = sub nuw nsw i32 %.0101119.us, %spec.select.us ; 2 uses
  %i.bc = getelementptr i8, ptr %.0105118.us, i64 %i.ba
  %i.bd = load i32, ptr %i.af, align 4
  %i.be = add i32 %i.bd, %spec.select.us          ; 2 uses
  store i32 %i.be, ptr %i.af, align 4
  %i.bf = load i64, ptr %i.ak, align 8
  %i.bg = add i64 %i.bf, %i.ba
  store i64 %i.bg, ptr %i.ak, align 8
  %.not110.us = icmp eq i32 %i.bb, 0
  br i1 %.not110.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !13

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %i.bh = phi i32 [ %i.ce, %bb.t ], [ %.pre126, %.lr.ph ] ; 2 uses
  %.0101119 = phi i32 [ %i.cb, %bb.t ], [ %2, %.lr.ph ] ; 2 uses
  %.0105118 = phi ptr [ %i.cc, %bb.t ], [ %1, %.lr.ph ] ; 2 uses
  %i.bi = load i32, ptr %i.ae, align 8
  %i.bj = sub i32 %i.bi, %i.bh                    ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.split
  %i.bl = load ptr, ptr %i.c, align 8
  %.not111 = icmp eq ptr %i.bl, null
  br i1 %.not111, label %bb.r, label %bb.q

.loopexit115:                                     ; preds = %bb.l, %bb.k
  store i32 -18, ptr %4, align 4
  br label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.bm = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #11 ; 3 uses
  %i.bn = load i64, ptr %i.ag, align 8
  store i64 %i.bn, ptr %i.bm, align 8
  %i.bo = load i64, ptr %i.ah, align 8
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.ai, align 8
  %i.br = tail call ptr @g_list_append(ptr noundef %i.bq, ptr noundef %i.bm)
  store ptr %i.br, ptr %i.ai, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bs = tail call fastcc zeroext i1 @read_blob(ptr noundef %.0107, ptr noundef %.0106, ptr noundef %4, ptr noundef %5)
  br i1 %i.bs, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.bt = load i32, ptr %i.ae, align 8
  %i.bu = load i32, ptr %i.af, align 4            ; 2 uses
  %i.bv = sub i32 %i.bt, %i.bu
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split
  %i.bw = phi i32 [ %i.bu, %bb.s ], [ %i.bh, %.lr.ph.split ]
  %.0103 = phi i32 [ %i.bv, %bb.s ], [ %i.bj, %.lr.ph.split ]
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.0101119, i32 %.0103) ; 3 uses
  %i.bx = load ptr, ptr %.0106, align 8
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr i8, ptr %i.bx, i64 %i.by
  %i.ca = zext nneg i32 %spec.select to i64       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %.0105118, ptr noundef align 1 %i.bz, i64 noundef %i.ca, i1 noundef false) #10
  %i.cb = sub nuw nsw i32 %.0101119, %spec.select ; 2 uses
  %i.cc = getelementptr i8, ptr %.0105118, i64 %i.ca
  %i.cd = load i32, ptr %i.af, align 4
  %i.ce = add i32 %i.cd, %spec.select             ; 2 uses
  store i32 %i.ce, ptr %i.af, align 4
  %i.cf = load i64, ptr %i.ak, align 8
  %i.cg = add i64 %i.cf, %i.ca
  store i64 %i.cg, ptr %i.ak, align 8
  %.not110 = icmp eq i32 %i.cb, 0
  br i1 %.not110, label %.loopexit, label %.lr.ph.split, !llvm.loop !13

.loopexit:                                        ; preds = %bb.r, %bb.t, %bb.m, %bb.o, %bb.j, %bb.i, %bb.b, %.loopexit115, %bb.c
  %.0 = phi i1 [ false, %bb.i ], [ false, %.loopexit115 ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.m ], [ true, %bb.j ], [ true, %bb.o ], [ false, %bb.r ], [ true, %bb.t ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @read_blob(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef %2, ptr noundef %3)
  br i1 %i.b, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 2
  store i64 %i.e, ptr %i.c, align 8
  %.val = load i8, ptr %i.a, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.val36 = load i8, ptr %i.f, align 1
  %i.g = zext i8 %.val36 to i16
  %i.h = shl nuw i16 %i.g, 8                      ; 2 uses
  %i.i = zext i8 %.val to i16
  %i.j = or disjoint i16 %i.h, %i.i
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = icmp slt i16 %i.h, 0                     ; 2 uses
  %i.m = sub nsw i32 0, %i.k                      ; 2 uses
  %.032 = select i1 %i.l, i32 %i.m, i32 %i.k      ; 2 uses
  %i.n = call noalias dereferenceable_or_null(65536) ptr @g_malloc(i64 noundef 65536) #11 ; 8 uses
  %i.o = call zeroext i1 @wtap_read_bytes(ptr noundef %0, ptr noundef %i.n, i32 noundef %.032, ptr noundef %2, ptr noundef %3)
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @g_free(ptr noundef %i.n)
  br label %bb.ak

bb.d:                                             ; preds = %bb.b
  %4 = sext i32 %.032 to i64                      ; 3 uses
  %i.p = load i64, ptr %i.c, align 8
  %i.q = add i64 %i.p, %4
  store i64 %i.q, ptr %i.c, align 8
  %i.r = load ptr, ptr %1, align 8                ; 7 uses
  br i1 %i.l, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.r, ptr noundef align 1 %i.n, i64 noundef %4, i1 noundef false) #10
  br label %bb.aj

.preheader.i:                                     ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.n, i64 %4       ; 9 uses
  %i.t = getelementptr i8, ptr %i.r, i64 65536    ; 5 uses
  %i.u = icmp ult ptr %i.n, %i.s
  br i1 %i.u, label %.lr.ph.i, label %SnifferDecompress.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ai
  %.0192.i = phi i32 [ %.1.i, %bb.ai ], [ 0, %.preheader.i ]
  %.0123191.i = phi i32 [ %.1124.i, %bb.ai ], [ 0, %.preheader.i ]
  %.0125190.i = phi ptr [ %.1126.i, %bb.ai ], [ %i.r, %.preheader.i ] ; 14 uses
  %.0127189.i = phi ptr [ %.2.i, %bb.ai ], [ %i.n, %.preheader.i ] ; 3 uses
  %i.v = lshr i32 %.0123191.i, 1                  ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr i8, ptr %.0127189.i, i64 2 ; 2 uses
  %.not.i = icmp ult ptr %i.x, %i.s
  br i1 %.not.i, label %bb.g, label %g_strdup_inline.exit171.i

g_strdup_inline.exit171.i:                        ; preds = %bb.f
  store i32 -20, ptr %2, align 4
  %i.y = call noalias dereferenceable_or_null(74) ptr @g_malloc(i64 noundef 74) #11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(74) %i.y, ptr noundef nonnull align 1 dereferenceable(74) @.str.10, i64 noundef 74, i1 noundef false) #10
  store ptr %i.y, ptr %3, align 8
  br label %SnifferDecompress.exit.thread

bb.g:                                             ; preds = %bb.f
  %.0127.val.i = load i16, ptr %.0127189.i, align 1
  %i.z = zext i16 %.0127.val.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.1128.i = phi ptr [ %i.x, %bb.g ], [ %.0127189.i, %.lr.ph.i ] ; 10 uses
  %.1124.i = phi i32 [ 32768, %bb.g ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ %i.z, %bb.g ], [ %.0192.i, %.lr.ph.i ] ; 2 uses
  %i.aa = and i32 %.1.i, %.1124.i
  %.not145.i = icmp eq i32 %i.aa, 0
  br i1 %.not145.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.0125190.i, i64 1 ; 2 uses
  %i.ac = icmp ugt ptr %i.ab, %i.t
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 -15, ptr %2, align 4
  br label %SnifferDecompress.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %.1128.i, i64 1
  %i.ae = load i8, ptr %.1128.i, align 1
  store i8 %i.ae, ptr %.0125190.i, align 1
  br label %bb.ai

bb.l:                                             ; preds = %bb.h
  %i.af = load i8, ptr %.1128.i, align 1
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = lshr i32 %i.ag, 4                       ; 2 uses
  %i.ai = and i32 %i.ag, 15                       ; 4 uses
  %i.aj = getelementptr i8, ptr %.1128.i, i64 1   ; 8 uses
  switch i32 %i.ah, label %bb.ac [
    i32 0, label %bb.m
    i32 1, label %bb.q
    i32 2, label %bb.v
  ]

bb.m:                                             ; preds = %bb.l
  %i.ak = add nuw nsw i32 %i.ai, 3
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = getelementptr i8, ptr %.0125190.i, i64 %i.al ; 2 uses
  %i.an = icmp ugt ptr %i.am, %i.t
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 -15, ptr %2, align 4
  br label %SnifferDecompress.exit.thread

bb.o:                                             ; preds = %bb.m
  %.not150.i = icmp ult ptr %i.aj, %i.s
  br i1 %.not150.i, label %bb.p, label %g_strdup_inline.exit169.i

g_strdup_inline.exit169.i:                        ; preds = %bb.o
  store i32 -20, ptr %2, align 4
  %i.ao = call noalias dereferenceable_or_null(74) ptr @g_malloc(i64 noundef 74) #11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(74) %i.ao, ptr noundef nonnull align 1 dereferenceable(74) @.str.10, i64 noundef 74, i1 noundef false) #10
  store ptr %i.ao, ptr %3, align 8
  br label %SnifferDecompress.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr i8, ptr %.1128.i, i64 2
  %i.aq = load i8, ptr %i.aj, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 %.0125190.i, i8 noundef %i.aq, i64 noundef range(i64 3, 4115) %i.al, i1 noundef false) #10
  br label %bb.ai

bb.q:                                             ; preds = %bb.l
  %.not148.i = icmp ult ptr %i.aj, %i.s
  br i1 %.not148.i, label %bb.r, label %g_strdup_inline.exit167.i

g_strdup_inline.exit167.i:                        ; preds = %bb.q
  store i32 -20, ptr %2, align 4
  %i.ar = call noalias dereferenceable_or_null(74) ptr @g_malloc(i64 noundef 74) #11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(74) %i.ar, ptr noundef nonnull align 1 dereferenceable(74) @.str.10, i64 noundef 74, i1 noundef false) #10
  store ptr %i.ar, ptr %3, align 8
  br label %SnifferDecompress.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr i8, ptr %.1128.i, i64 2   ; 2 uses
  %i.at = load i8, ptr %i.aj, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 4
  %i.aw = add nuw nsw i32 %i.ai, 19
  %i.ax = add nuw nsw i32 %i.aw, %i.av
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = getelementptr i8, ptr %.0125190.i, i64 %i.ay ; 2 uses
  %i.ba = icmp ugt ptr %i.az, %i.t
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 -15, ptr %2, align 4
  br label %SnifferDecompress.exit.thread

bb.t:                                             ; preds = %bb.r
  %.not149.i = icmp ult ptr %i.as, %i.s
  br i1 %.not149.i, label %bb.u, label %g_strdup_inline.exit165.i

g_strdup_inline.exit165.i:                        ; preds = %bb.t
  store i32 -20, ptr %2, align 4
  %i.bb = call noalias dereferenceable_or_null(74) ptr @g_malloc(i64 noundef 74) #11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(74) %i.bb, ptr noundef nonnull align 1 dereferenceable(74) @.str.10, i64 noundef 74, i1 noundef false) #10
  store ptr %i.bb, ptr %3, align 8
  br label %SnifferDecompress.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr i8, ptr %.1128.i, i64 3
  %i.bd = load i8, ptr %i.as, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 %.0125190.i, i8 noundef %i.bd, i64 noundef range(i64 3, 4115) %i.ay, i1 noundef false) #10
  br label %bb.ai

bb.v:                                             ; preds = %bb.l
  %.not146.i = icmp ult ptr %i.aj, %i.s
  br i1 %.not146.i, label %bb.w, label %g_strdup_inline.exit163.i

g_strdup_inline.exit163.i:                        ; preds = %bb.v
  store i32 -20, ptr %2, align 4
  %i.be = call noalias dereferenceable_or_null(74) ptr @g_malloc(i64 noundef 74) #11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(74) %i.be, ptr noundef nonnull align 1 dereferenceable(74) @.str.10, i64 noundef 74, i1 noundef false) #10
  store ptr %i.be, ptr %3, align 8
  br label %SnifferDecompress.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bf = getelementptr i8, ptr %.1128.i, i64 2   ; 2 uses
  %i.bg = load i8, ptr %i.aj, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 4
  %i.bj = add nuw nsw i32 %i.ai, 3
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %.not147.i = icmp ult ptr %i.bf, %i.s
  br i1 %.not147.i, label %bb.x, label %g_strdup_inline.exit161.i

g_strdup_inline.exit161.i:                        ; preds = %bb.w
  store i32 -20, ptr %2, align 4
  %i.bl = call noalias dereferenceable_or_null(74) ptr @g_malloc(i64 noundef 74) #11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(74) %i.bl, ptr noundef nonnull align 1 dereferenceable(74) @.str.10, i64 noundef 74, i1 noundef false) #10
  store ptr %i.bl, ptr %3, align 8
  br label %SnifferDecompress.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr i8, ptr %.1128.i, i64 3
  %i.bn = load i8, ptr %i.bf, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 16               ; 3 uses
  %i.bq = getelementptr i8, ptr %.0125190.i, i64 %i.bp ; 2 uses
  %i.br = icmp ugt ptr %i.bq, %i.t
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 -15, ptr %2, align 4
  br label %SnifferDecompress.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.bs = zext nneg i32 %i.bk to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr i8, ptr %.0125190.i, i64 %i.bt ; 3 uses
  %i.bv = icmp ult ptr %i.bu, %i.r
  br i1 %i.bv, label %g_strdup_inline.exit159.i, label %bb.aa

g_strdup_inline.exit159.i:                        ; preds = %bb.z
  store i32 -20, ptr %2, align 4
  %i.bw = call noalias dereferenceable_or_null(57) ptr @g_malloc(i64 noundef 57) #11 ; 2 uses
end_hunk_0
