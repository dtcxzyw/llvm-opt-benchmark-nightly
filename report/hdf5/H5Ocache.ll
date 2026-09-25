Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Ocache?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@H5O__cache_verify_chksum:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.k = call i32 @H5F_get_checksums(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.n = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.o = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__cache_verify_chksum, i32 noundef 235, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.a, align 4, !tbaa !38
  %i.q = load i32, ptr %i.b, align 4, !tbaa !38
  %.not10 = icmp eq i32 %i.p, %i.q
  %spec.select = zext i1 %.not10 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ -1, %bb.d ], [ %spec.select, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f
  %.2 = phi i32 [ 1, %bb.a ], [ %.1, %bb.f ], [ 1, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @H5O__cache_deserialize(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @H5O__prefix_deserialize(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.j = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__cache_deserialize, i32 noundef 282, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.4) #7 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = tail call i32 @H5F_get_intent(ptr noundef %i.o) #7
  %i.q = and i32 %i.p, 32                         ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %.lobit = lshr exact i32 %i.q, 5
  %i.s = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !40
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @H5AC_proxy_entry_create() #7 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  store ptr %i.t, ptr %i.u, align 8, !tbaa !41
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.x = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !14
  %i.y = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__cache_deserialize, i32 noundef 294, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.17) #7 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  store ptr null, ptr %i.z, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ae = tail call fastcc i32 @H5O__chunk_deserialize(ptr noundef nonnull %i.m, i64 noundef %i.ab, i64 noundef %i.ad, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.n, ptr noundef %3)
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ah = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.ai = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__cache_deserialize, i32 noundef 302, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !35
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !42
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !43
  %i.ar = icmp ugt i64 %i.aq, %i.ao
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.at = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.au = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__cache_deserialize, i32 noundef 306, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.19) #7 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  store i8 1, ptr %2, align 8, !tbaa !79
  br label %.thread

bb.n:                                             ; preds = %bb.f, %bb.i, %bb.l
  %i.av = tail call i32 @H5O__free(ptr noundef nonnull %i.m, i1 noundef zeroext false) #7
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ay = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !14
  %i.az = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__cache_deserialize, i32 noundef 318, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.15) #7 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.m, %bb.o, %bb.n, %bb.a
  %.1 = phi ptr [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.m ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5O__cache_image_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  store i64 %i.j, ptr %1, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5O__cache_serialize(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.x, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 32 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 6 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !35    ; 3 uses
  %i.m = icmp ugt i8 %i.l, 1
  br i1 %i.m, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 289 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = and i32 %i.s, 16
  %i.u = lshr i32 %i.r, 2
  %i.v = and i32 %i.u, 4
  %i.w = and i32 %i.r, 3
  %i.x = shl nuw nsw i32 1, %i.w
  %i.y = or disjoint i32 %i.t, %i.v
  %i.z = or disjoint i32 %i.y, 10
  %i.aa = add nuw nsw i32 %i.z, %i.x
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = sub i64 %i.o, %i.ab                     ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %i.l, ptr %i.ad, align 1, !tbaa !50
  %i.af = load i8, ptr %i.p, align 1, !tbaa !36   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 6 ; 2 uses
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !50
  %i.ah = and i8 %i.af, 32
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.ak = trunc i64 %i.aj to i8
  store i8 %i.ak, ptr %i.ag, align 1, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.an = lshr i64 %i.am, 8
  %i.ao = trunc i64 %i.an to i8
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.ar = lshr i64 %i.aq, 16
  %i.as = trunc i64 %i.ar to i8
  store i8 %i.as, ptr %i.ap, align 1, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.av = lshr i64 %i.au, 24
  %i.aw = trunc i64 %i.av to i8
  store i8 %i.aw, ptr %i.at, align 1, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.ba = trunc i64 %i.az to i8
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.bd = lshr i64 %i.bc, 8
  %i.be = trunc i64 %i.bd to i8
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.bh = lshr i64 %i.bg, 16
  %i.bi = trunc i64 %i.bh to i8
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.bk = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.bl = lshr i64 %i.bk, 24
  %i.bm = trunc i64 %i.bl to i8
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 312 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.bq = trunc i64 %i.bp to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.bs = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.bt = lshr i64 %i.bs, 8
  %i.bu = trunc i64 %i.bt to i8
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bw = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.bx = lshr i64 %i.bw, 16
  %i.by = trunc i64 %i.bx to i8
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %i.ca = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.cb = lshr i64 %i.ca, 24
  %i.cc = trunc i64 %i.cb to i8
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cg = trunc i64 %i.cf to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !50
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 19
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cj = lshr i64 %i.ci, 8
  %i.ck = trunc i64 %i.cj to i8
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !50
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.cm = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cn = lshr i64 %i.cm, 16
  %i.co = trunc i64 %i.cn to i8
  store i8 %i.co, ptr %i.cl, align 1, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 21
  %i.cq = load i64, ptr %i.ce, align 8, !tbaa !82
  %i.cr = lshr i64 %i.cq, 24
  %i.cs = trunc i64 %i.cr to i8
  store i8 %i.cs, ptr %i.cp, align 1, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 22
  %.pre = load i8, ptr %i.p, align 1, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cu = phi i8 [ %.pre, %bb.d ], [ %i.af, %bb.c ] ; 2 uses
  %.0178 = phi ptr [ %i.ct, %bb.d ], [ %i.ag, %bb.c ] ; 6 uses
  %i.cv = and i8 %i.cu, 16
  %.not181 = icmp eq i8 %i.cv, 0
  br i1 %.not181, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 328 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !52
  %i.cy = trunc i32 %i.cx to i8
  store i8 %i.cy, ptr %.0178, align 1, !tbaa !50
  %i.cz = getelementptr inbounds nuw i8, ptr %.0178, i64 1
  %i.da = load i32, ptr %i.cw, align 8, !tbaa !52
  %i.db = lshr i32 %i.da, 8
  %i.dc = trunc i32 %i.db to i8
  store i8 %i.dc, ptr %i.cz, align 1, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %.0178, i64 2
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 332 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !53
  %i.dg = trunc i32 %i.df to i8
  store i8 %i.dg, ptr %i.dd, align 1, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %.0178, i64 3
  %i.di = load i32, ptr %i.de, align 4, !tbaa !53
  %i.dj = lshr i32 %i.di, 8
  %i.dk = trunc i32 %i.dj to i8
  store i8 %i.dk, ptr %i.dh, align 1, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %.0178, i64 4
  %.pre185 = load i8, ptr %i.p, align 1, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dm = phi i8 [ %.pre185, %bb.f ], [ %i.cu, %bb.e ]
  %.1179 = phi ptr [ %i.dl, %bb.f ], [ %.0178, %bb.e ] ; 11 uses
  %i.dn = and i8 %i.dm, 3
  switch i8 %i.dn, label %default.unreachable186 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.g
  %4 = trunc i64 %i.ac to i8
  %5 = getelementptr inbounds nuw i8, ptr %.1179, i64 1
  store i8 %4, ptr %.1179, align 1, !tbaa !50
  %6 = lshr i64 %i.ac, 8
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %.1179, i64 2
  store i8 %7, ptr %5, align 1, !tbaa !50
  %9 = lshr i64 %i.ac, 16
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %.1179, i64 3
  store i8 %10, ptr %8, align 1, !tbaa !50
  %12 = lshr i64 %i.ac, 24
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %.1179, i64 4
  store i8 %13, ptr %11, align 1, !tbaa !50
  %15 = lshr i64 %i.ac, 32
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %.1179, i64 5
  store i8 %16, ptr %14, align 1, !tbaa !50
  %18 = lshr i64 %i.ac, 40
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %.1179, i64 6
  store i8 %19, ptr %17, align 1, !tbaa !50
  %21 = lshr i64 %i.ac, 48
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %.1179, i64 7
  store i8 %22, ptr %20, align 1, !tbaa !50
  %24 = lshr i64 %i.ac, 56
  %25 = trunc nuw i64 %24 to i8
  store i8 %25, ptr %23, align 1, !tbaa !50
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.do = trunc i64 %i.ac to i8
  store i8 %i.do, ptr %.1179, align 1, !tbaa !50
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.dp = trunc i64 %i.ac to i16
  store i16 %i.dp, ptr %.1179, align 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.dq = trunc i64 %i.ac to i32
  store i32 %i.dq, ptr %.1179, align 1
  br label %.loopexit

default.unreachable186:                           ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.l, ptr %i.j, align 1, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 0, ptr %i.dr, align 1, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !43
  %i.dv = trunc i64 %i.du to i8
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.dx = load i64, ptr %i.dt, align 8, !tbaa !43
  %i.dy = lshr i64 %i.dx, 8
  %i.dz = trunc i64 %i.dy to i8
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 284 ; 4 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !54
  %i.ed = trunc i32 %i.ec to i8
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !50
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.ef = load i32, ptr %i.eb, align 4, !tbaa !54
  %i.eg = lshr i32 %i.ef, 8
  %i.eh = trunc i32 %i.eg to i8
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !50
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.ej = load i32, ptr %i.eb, align 4, !tbaa !54
  %i.ek = lshr i32 %i.ej, 16
  %i.el = trunc i32 %i.ek to i8
  store i8 %i.el, ptr %i.ei, align 1, !tbaa !50
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.en = load i32, ptr %i.eb, align 4, !tbaa !54
  %i.eo = lshr i32 %i.en, 24
  %i.ep = trunc nuw i32 %i.eo to i8
  store i8 %i.ep, ptr %i.em, align 1, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !48
  %i.eu = load i8, ptr %i.k, align 8, !tbaa !35
  %i.ev = icmp eq i8 %i.eu, 1
  br i1 %i.ev, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !36
  %i.ey = zext i8 %i.ex to i32                    ; 3 uses
  %i.ez = lshr i32 %i.ey, 1
  %i.fa = and i32 %i.ez, 16
  %i.fb = lshr i32 %i.ey, 2
  %i.fc = and i32 %i.fb, 4
  %i.fd = and i32 %i.ey, 3
  %i.fe = shl nuw nsw i32 1, %i.fd
  %i.ff = or disjoint i32 %i.fa, %i.fc
  %i.fg = or disjoint i32 %i.ff, 10
  %i.fh = add nuw nsw i32 %i.fg, %i.fe
  %i.fi = zext nneg i32 %i.fh to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.fj = phi i64 [ %i.fi, %bb.l ], [ 16, %bb.k ]
  %i.fk = sub i64 %i.et, %i.fj
  %i.fl = trunc i64 %i.fk to i8
  store i8 %i.fl, ptr %i.eq, align 1, !tbaa !50
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.fn = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !48
  %i.fq = load i8, ptr %i.k, align 8, !tbaa !35
  %i.fr = icmp eq i8 %i.fq, 1
  br i1 %i.fr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !36
  %i.fu = zext i8 %i.ft to i32                    ; 3 uses
  %i.fv = lshr i32 %i.fu, 1
  %i.fw = and i32 %i.fv, 16
  %i.fx = lshr i32 %i.fu, 2
  %i.fy = and i32 %i.fx, 4
  %i.fz = and i32 %i.fu, 3
  %i.ga = shl nuw nsw i32 1, %i.fz
  %i.gb = or disjoint i32 %i.fw, %i.fy
  %i.gc = or disjoint i32 %i.gb, 10
  %i.gd = add nuw nsw i32 %i.gc, %i.ga
  %i.ge = zext nneg i32 %i.gd to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.gf = phi i64 [ %i.ge, %bb.n ], [ 16, %bb.m ]
  %i.gg = sub i64 %i.fp, %i.gf
  %i.gh = lshr i64 %i.gg, 8
  %i.gi = trunc i64 %i.gh to i8
  store i8 %i.gi, ptr %i.fm, align 1, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.gk = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !48
  %i.gn = load i8, ptr %i.k, align 8, !tbaa !35
  %i.go = icmp eq i8 %i.gn, 1
  br i1 %i.go, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !36
  %i.gr = zext i8 %i.gq to i32                    ; 3 uses
  %i.gs = lshr i32 %i.gr, 1
  %i.gt = and i32 %i.gs, 16
  %i.gu = lshr i32 %i.gr, 2
  %i.gv = and i32 %i.gu, 4
  %i.gw = and i32 %i.gr, 3
  %i.gx = shl nuw nsw i32 1, %i.gw
  %i.gy = or disjoint i32 %i.gt, %i.gv
  %i.gz = or disjoint i32 %i.gy, 10
  %i.ha = add nuw nsw i32 %i.gz, %i.gx
  %i.hb = zext nneg i32 %i.ha to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.hc = phi i64 [ %i.hb, %bb.p ], [ 16, %bb.o ]
  %i.hd = sub i64 %i.gm, %i.hc
  %i.he = lshr i64 %i.hd, 16
  %i.hf = trunc i64 %i.he to i8
  store i8 %i.hf, ptr %i.gj, align 1, !tbaa !50
  %i.hg = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !48
  %i.hk = load i8, ptr %i.k, align 8, !tbaa !35
  %i.hl = icmp eq i8 %i.hk, 1
  br i1 %i.hl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !36
  %i.ho = zext i8 %i.hn to i32                    ; 3 uses
  %i.hp = lshr i32 %i.ho, 1
  %i.hq = and i32 %i.hp, 16
  %i.hr = lshr i32 %i.ho, 2
  %i.hs = and i32 %i.hr, 4
  %i.ht = and i32 %i.ho, 3
  %i.hu = shl nuw nsw i32 1, %i.ht
  %i.hv = or disjoint i32 %i.hq, %i.hs
  %i.hw = or disjoint i32 %i.hv, 10
  %i.hx = add nuw nsw i32 %i.hw, %i.hu
  %i.hy = zext nneg i32 %i.hx to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.hz = phi i64 [ %i.hy, %bb.r ], [ 16, %bb.q ]
  %i.ia = sub i64 %i.hj, %i.hz
  %i.ib = lshr i64 %i.ia, 24
  %i.ic = trunc i64 %i.ib to i8
  store i8 %i.ic, ptr %i.hg, align 1, !tbaa !50
  %i.id = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ie = load i8, ptr %i.k, align 8, !tbaa !35
  %i.if = icmp eq i8 %i.ie, 1
  br i1 %i.if, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 289
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !36
  %i.ii = zext i8 %i.ih to i32                    ; 3 uses
  %i.ij = lshr i32 %i.ii, 1
  %i.ik = and i32 %i.ij, 16
  %i.il = lshr i32 %i.ii, 2
  %i.im = and i32 %i.il, 4
  %i.in = and i32 %i.ii, 3
  %i.io = shl nuw nsw i32 1, %i.in
  %i.ip = add nsw i32 %i.ik, -2
  %i.iq = add nsw i32 %i.ip, %i.im
  %i.ir = add nsw i32 %i.iq, %i.io
  %i.is = sext i32 %i.ir to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.it = phi i64 [ %i.is, %bb.t ], [ 4, %bb.s ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.id, i8 0, i64 %i.it, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.h, %bb.i, %bb.j, %bb.u
end_hunk_0
