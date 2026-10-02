Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/dns?download=true
inline.NumInlined: 17
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zif_dns_get_record:bb.a
bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.eo = load ptr, ptr %i.cb, align 8, !tbaa !12 ; 2 uses
  %.not.1.i241 = icmp eq ptr %i.eo, null
  br i1 %.not.1.i241, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.eo) #11
  store ptr null, ptr %i.cb, align 8, !tbaa !12
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ep = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 2 uses
  %.not.2.i242 = icmp eq ptr %i.ep, null
  br i1 %.not.2.i242, label %_php_dns_free_res.exit243, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef nonnull %i.ep) #11
  br label %_php_dns_free_res.exit243

_php_dns_free_res.exit243:                        ; preds = %bb.ba, %bb.bb
  store i32 2, ptr %i.bn, align 8, !tbaa !12
  br label %zend_try_array_init_size.exit

bb.bc:                                            ; preds = %.lr.ph
  %i.eq = add nsw i32 %.in, -1
  %i.er = zext nneg i32 %i.ek to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0175354, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  %i.eu = icmp sgt i32 %.in, 1
  br i1 %i.eu, label %.lr.ph, label %.preheader352, !llvm.loop !41

bb.bd:                                            ; preds = %.lr.ph357, %bb.bf
  %.in371 = phi i32 [ %i.dz, %.lr.ph357 ], [ %i.ev, %bb.bf ]
  %.1176356 = phi ptr [ %.0175.lcssa, %.lr.ph357 ], [ %i.ey, %bb.bf ]
  %i.ev = add nsw i32 %.in371, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ew = load i8, ptr %i.c, align 1, !tbaa !48, !range !50, !noundef !51
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = call fastcc ptr @php_parserr(ptr noundef %.1176356, ptr noundef %i.dt, ptr noundef %3, i32 noundef %.0341, i32 noundef %.0167369, i1 noundef zeroext %i.ex, ptr noundef %4) ; 4 uses
  %i.ez = load i8, ptr %i.bv, align 8, !tbaa !12
  %i.fa = icmp ne i8 %i.ez, 0
  %or.cond7 = select i1 %i.fa, i1 %i.ej, i1 false
  br i1 %or.cond7, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fb = load ptr, ptr %1, align 8, !tbaa !12
  %i.fc = call ptr @zend_hash_next_index_insert(ptr noundef %i.fb, ptr noundef nonnull %4) #11 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.fd = icmp ne i32 %i.ev, 0
  %i.fe = icmp ne ptr %i.ey, null
  %or.cond5 = select i1 %i.fd, i1 %i.fe, i1 false
  %i.ff = icmp ult ptr %i.ey, %i.dt
  %or.cond217 = select i1 %or.cond5, i1 %i.ff, i1 false
  br i1 %or.cond217, label %bb.bd, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %bb.bf, %.preheader352
  %.1176.lcssa = phi ptr [ %.0175.lcssa, %.preheader352 ], [ %i.ey, %bb.bf ] ; 4 uses
  br i1 %or.cond9, label %.preheader351, label %.critedge17

.preheader351:                                    ; preds = %.critedge
  %i.fg = icmp ne i16 %i.eb, 0
  %i.fh = icmp ne ptr %.1176.lcssa, null
  %or.cond11359 = select i1 %i.fg, i1 %i.fh, i1 false
  %i.fi = icmp ult ptr %.1176.lcssa, %i.dt
  %or.cond218360 = select i1 %or.cond11359, i1 %i.fi, i1 false
  br i1 %or.cond218360, label %.lr.ph362, label %.critedge13

.lr.ph362:                                        ; preds = %.preheader351, %bb.bh
  %.in372 = phi i32 [ %i.fj, %bb.bh ], [ %i.ec, %.preheader351 ] ; 2 uses
  %.2177361 = phi ptr [ %i.fm, %bb.bh ], [ %.1176.lcssa, %.preheader351 ]
  %i.fj = add nsw i32 %.in372, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.fk = load i8, ptr %i.c, align 1, !tbaa !48, !range !50, !noundef !51
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = call fastcc ptr @php_parserr(ptr noundef %.2177361, ptr noundef %i.dt, ptr noundef %3, i32 noundef 255, i32 noundef %i.bx, i1 noundef zeroext %i.fl, ptr noundef %5) ; 4 uses
  %i.fn = load i8, ptr %i.by, align 8, !tbaa !12
  %.not210 = icmp eq i8 %i.fn, 0
  br i1 %.not210, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph362
  %i.fo = load ptr, ptr %.2262318, align 8, !tbaa !12
  %i.fp = call ptr @zend_hash_next_index_insert(ptr noundef %i.fo, ptr noundef nonnull %5) #11 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph362
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.fq = icmp sgt i32 %.in372, 1
  %i.fr = icmp ne ptr %i.fm, null
  %or.cond11 = select i1 %i.fq, i1 %i.fr, i1 false
  %i.fs = icmp ult ptr %i.fm, %i.dt
  %or.cond218 = select i1 %or.cond11, i1 %i.fs, i1 false
  br i1 %or.cond218, label %.lr.ph362, label %.critedge13, !llvm.loop !43

.critedge13:                                      ; preds = %bb.bh, %.preheader351
  %.2177.lcssa = phi ptr [ %.1176.lcssa, %.preheader351 ], [ %i.fm, %bb.bh ] ; 3 uses
  br i1 %.not192, label %.preheader, label %.critedge17

.preheader:                                       ; preds = %.critedge13
  %i.ft = icmp ne i32 %i.ed, 0
  %i.fu = icmp ne ptr %.2177.lcssa, null
  %or.cond15364 = select i1 %i.ft, i1 %i.fu, i1 false
  %i.fv = icmp ult ptr %.2177.lcssa, %i.dt
  %or.cond219365 = select i1 %or.cond15364, i1 %i.fv, i1 false
  br i1 %or.cond219365, label %.lr.ph367, label %.critedge17

.lr.ph367:                                        ; preds = %.preheader, %bb.bj
  %.in373 = phi i32 [ %i.fw, %bb.bj ], [ %i.ef, %.preheader ] ; 2 uses
  %.4366 = phi ptr [ %i.fz, %bb.bj ], [ %.2177.lcssa, %.preheader ]
  %i.fw = add nsw i32 %.in373, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.fx = load i8, ptr %i.c, align 1, !tbaa !48, !range !50, !noundef !51
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = call fastcc ptr @php_parserr(ptr noundef %.4366, ptr noundef %i.dt, ptr noundef %3, i32 noundef 255, i32 noundef 1, i1 noundef zeroext %i.fy, ptr noundef %6) ; 3 uses
  %i.ga = load i8, ptr %i.bz, align 8, !tbaa !12
  %.not209 = icmp eq i8 %i.ga, 0
  br i1 %.not209, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph367
  %i.gb = load ptr, ptr %.2259, align 8, !tbaa !12
  %i.gc = call ptr @zend_hash_next_index_insert(ptr noundef %i.gb, ptr noundef nonnull %6) #11 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph367
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.gd = icmp sgt i32 %.in373, 1
  %i.ge = icmp ne ptr %i.fz, null
  %or.cond15 = select i1 %i.gd, i1 %i.ge, i1 false
  %i.gf = icmp ult ptr %i.fz, %i.dt
  %or.cond219 = select i1 %or.cond15, i1 %i.gf, i1 false
  br i1 %or.cond219, label %.lr.ph367, label %.critedge17, !llvm.loop !44

.critedge17:                                      ; preds = %bb.bj, %.preheader, %.critedge, %.critedge13
  call void @__res_nclose(ptr noundef nonnull %2) #11
  %i.gg = load ptr, ptr %i.ca, align 8, !tbaa !12 ; 2 uses
  %.not.i244 = icmp eq ptr %i.gg, null
  br i1 %.not.i244, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.critedge17
  call void @free(ptr noundef nonnull %i.gg) #11
  store ptr null, ptr %i.ca, align 8, !tbaa !12
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.critedge17
  %i.gh = load ptr, ptr %i.cb, align 8, !tbaa !12 ; 2 uses
  %.not.1.i245 = icmp eq ptr %i.gh, null
  br i1 %.not.1.i245, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.gh) #11
  store ptr null, ptr %i.cb, align 8, !tbaa !12
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.gi = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 2 uses
  %.not.2.i246 = icmp eq ptr %i.gi, null
  br i1 %.not.2.i246, label %_php_dns_free_res.exit247, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @free(ptr noundef nonnull %i.gi) #11
  store ptr null, ptr %i.cc, align 8, !tbaa !12
  br label %_php_dns_free_res.exit247

_php_dns_free_res.exit247:                        ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.ak, %bb.bo, %bb.bn, %bb.w, %bb.al, %_php_dns_free_res.exit, %_php_dns_free_res.exit
  %.3 = phi i32 [ %.2340, %_php_dns_free_res.exit ], [ %.2340, %_php_dns_free_res.exit ], [ %.2340, %bb.bo ], [ %.2, %bb.al ], [ %.1170368, %bb.w ], [ %.2340, %bb.bn ], [ 9, %bb.ah ], [ 8, %bb.ag ], [ 6, %bb.ae ], [ 5, %bb.ad ], [ 4, %bb.ac ], [ 3, %bb.ab ], [ 2, %bb.aa ], [ 12, %bb.ak ], [ 10, %bb.ai ], [ 11, %bb.aj ]
  %.1 = phi i32 [ %.0167369, %_php_dns_free_res.exit ], [ %.0167369, %_php_dns_free_res.exit ], [ %.0167369, %bb.bo ], [ %.0167369, %bb.al ], [ 0, %bb.w ], [ %.0167369, %bb.bn ], [ %.0167369, %bb.ah ], [ %.0167369, %bb.ag ], [ %.0167369, %bb.ae ], [ %.0167369, %bb.ad ], [ %.0167369, %bb.ac ], [ %.0167369, %bb.ab ], [ %.0167369, %bb.aa ], [ %.0167369, %bb.ak ], [ %.0167369, %bb.ai ], [ %.0167369, %bb.aj ]
  %i.gj = add nsw i32 %.3, 1                      ; 2 uses
  %i.gk = icmp slt i32 %i.gj, %i.bs
  br i1 %i.gk, label %bb.w, label %zend_try_array_init_size.exit, !llvm.loop !45

zend_try_array_init_size.exit:                    ; preds = %_php_dns_free_res.exit247, %bb.q, %bb.m, %.thread283, %_php_dns_free_res.exit243, %bb.au, %bb.am, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret void
}

declare void @zend_array_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dn_skipname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @php_parserr(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef range(i32 1, 0) %3, i32 noundef range(i32 0, 2) %4, i1 noundef zeroext %5, ptr noundef nonnull initializes((8, 12)) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 39 uses
  %7 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !12
  %i.c = call i32 @dn_expand(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1022) #11 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 50 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10 ; 17 uses
  %i.h = icmp ugt ptr %i.g, %1
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.f, align 1, !tbaa !12
  %i.j = zext i8 %i.i to i16
  %i.k = shl nuw i16 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = zext i8 %i.m to i16
  %i.o = or disjoint i16 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %8 = load i8, ptr %i.p, align 1, !tbaa !12
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 24
  %11 = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %12 = load i8, ptr %11, align 1, !tbaa !12
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 16
  %15 = or disjoint i64 %14, %10
  %16 = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %17 = load i8, ptr %16, align 1, !tbaa !12
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 8
  %20 = or disjoint i64 %15, %19
  %21 = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %22 = load i8, ptr %21, align 1, !tbaa !12
  %i.q = zext i8 %22 to i64
  %23 = or disjoint i64 %20, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = zext i8 %i.s to i16
  %i.u = shl nuw i16 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %i.x = zext i8 %i.w to i16
  %i.y = or disjoint i16 %i.u, %i.x               ; 3 uses
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = zext i16 %i.y to i64                    ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aa ; 7 uses
  %i.ac = icmp ugt ptr %i.ab, %1
  %i.ad = icmp eq i16 %i.y, 0
  %or.cond512 = or i1 %i.ad, %i.ac
  br i1 %or.cond512, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ne i32 %3, 255
  %i.ae = zext i16 %i.o to i32
  %.not495 = icmp ne i32 %3, %i.ae
  %or.cond511.not524 = select i1 %.not, i1 %.not495, i1 false
  %.not496 = icmp eq i32 %4, 0
  %or.cond513 = or i1 %.not496, %or.cond511.not524
  br i1 %or.cond513, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call ptr @_zend_new_array_0() #11
  store ptr %i.af, ptr %6, align 8, !tbaa !12
  store i32 775, ptr %i.b, align 8, !tbaa !12
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.24, i64 noundef 4, ptr noundef nonnull %i.a) #11
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.25, i64 noundef 5, ptr noundef nonnull @.str.26) #11
  call void @add_assoc_long_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.27, i64 noundef 3, i64 noundef range(i64 0, 4294967296) %23) #11
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = zext i16 %i.o to i64
  call void @add_assoc_long_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i64 noundef 4, i64 noundef range(i64 0, 4294967296) %i.ag) #11
  call void @add_assoc_stringl_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.29, i64 noundef 4, ptr noundef nonnull %i.g, i64 noundef range(i64 -255, 65536) %i.aa) #11
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  switch i16 %i.o, label %bb.dt [
    i16 1, label %bb.h
    i16 15, label %bb.j
    i16 5, label %bb.l
    i16 2, label %.thread522
    i16 12, label %bb.m
    i16 13, label %bb.p
    i16 257, label %bb.u
    i16 16, label %.lr.ph547
    i16 6, label %bb.ad
    i16 28, label %bb.ah
    i16 38, label %bb.ch
    i16 33, label %bb.dh
    i16 35, label %bb.dk
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.ai = icmp ugt ptr %i.ah, %1
  br i1 %i.ai, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i64 noundef 4, ptr noundef nonnull @.str.4) #11
  %i.aj = load i8, ptr %i.g, align 1, !tbaa !12
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !12
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = zext i8 %i.as to i32
  %i.au = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.30, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.at) #11 ; 0 uses
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.31, i64 noundef 2, ptr noundef nonnull %i.a) #11
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.aw = icmp ugt ptr %i.av, %1
  br i1 %i.aw, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i64 noundef 4, ptr noundef nonnull @.str.6) #11
  %i.ax = load i8, ptr %i.g, align 1, !tbaa !12
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !12
  %i.bc = zext i8 %i.bb to i64
  %i.bd = or disjoint i64 %i.az, %i.bc
  call void @add_assoc_long_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.32, i64 noundef 3, i64 noundef range(i64 0, 4294967296) %i.bd) #11
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i64 noundef 4, ptr noundef nonnull @.str.12) #11
  br label %bb.n

.thread522:                                       ; preds = %bb.g
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i64 noundef 4, ptr noundef nonnull @.str.5) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i64 noundef 4, ptr noundef nonnull @.str.7) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %.thread522, %bb.m
  %.2520 = phi ptr [ %i.g, %bb.m ], [ %i.g, %.thread522 ], [ %i.av, %bb.k ], [ %i.g, %bb.l ] ; 2 uses
  %i.be = call i32 @dn_expand(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %.2520, ptr noundef nonnull %i.a, i32 noundef 1022) #11 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.2520, i64 %i.bg
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.33, i64 noundef 6, ptr noundef nonnull %i.a) #11
  br label %.loopexit

bb.p:                                             ; preds = %bb.g
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i64 noundef 4, ptr noundef nonnull @.str.34) #11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 11 ; 3 uses
  %i.bj = icmp ugt ptr %i.bi, %1
  br i1 %i.bj, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i8, ptr %i.g, align 1, !tbaa !12
  %i.bl = zext i8 %i.bk to i64                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl ; 3 uses
  %i.bn = icmp ugt ptr %i.bm, %1
  br i1 %i.bn, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @add_assoc_stringl_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.35, i64 noundef 3, ptr noundef nonnull %i.bi, i64 noundef range(i64 -255, 65536) %i.bl) #11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 3 uses
  %i.bp = icmp ugt ptr %i.bo, %1
  br i1 %i.bp, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = icmp ugt ptr %i.bs, %1
  br i1 %i.bt, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @add_assoc_stringl_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef nonnull %i.bo, i64 noundef range(i64 -255, 65536) %i.br) #11
  br label %.loopexit

bb.u:                                             ; preds = %bb.g
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i64 noundef 4, ptr noundef nonnull @.str.10) #11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 11 ; 2 uses
  %i.bv = icmp ugt ptr %i.bu, %1
  br i1 %i.bv, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = load i8, ptr %i.g, align 1, !tbaa !12
  %i.bx = zext i8 %i.bw to i64
  call void @add_assoc_long_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.37, i64 noundef 5, i64 noundef range(i64 0, 4294967296) %i.bx) #11
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  %i.bz = icmp ugt ptr %i.by, %1
  br i1 %i.bz, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = load i8, ptr %i.bu, align 1, !tbaa !12
  %i.cb = zext i8 %i.ca to i64                    ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb ; 3 uses
  %i.cd = icmp ugt ptr %i.cc, %1
  br i1 %i.cd, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @add_assoc_stringl_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.38, i64 noundef 3, ptr noundef nonnull %i.by, i64 noundef range(i64 -255, 65536) %i.cb) #11
  %i.ce = add nuw nsw i64 %i.cb, 2
  %i.cf = icmp samesign ugt i64 %i.ce, %i.aa
  br i1 %i.cf, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = sub nuw nsw i64 %i.aa, %i.cb
  %i.ch = add nsw i64 %i.cg, -2                   ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cc, i64 %i.ch ; 2 uses
  %i.cj = icmp ugt ptr %i.ci, %1
  br i1 %i.cj, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @add_assoc_stringl_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.39, i64 noundef 5, ptr noundef nonnull %i.cc, i64 noundef range(i64 -255, 65536) %i.ch) #11
  br label %.loopexit

.lr.ph547:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @add_assoc_string_ex(ptr noundef nonnull %6, ptr noundef nonnull @.str.28, i64 noundef 4, ptr noundef nonnull @.str.11) #11
  %i.ck = and i64 %i.aa, 65528
  %i.cl = add nuw nsw i64 %i.ck, 32
  %i.cm = call noalias ptr @_emalloc(i64 noundef %i.cl) #14 ; 7 uses
  store i32 1, ptr %i.cm, align 4, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 22, ptr %i.cn, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  store i64 %i.aa, ptr %i.cp, align 8, !tbaa !20
  %i.cq = call ptr @_zend_new_array_0() #11
  store ptr %i.cq, ptr %7, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 775, ptr %i.cr, align 8, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph547, %bb.ac
  %.0462546 = phi i32 [ 0, %.lr.ph547 ], [ %i.dh, %bb.ac ] ; 2 uses
  %.0463545 = phi i32 [ 0, %.lr.ph547 ], [ %i.dg, %bb.ac ] ; 3 uses
  %i.ct = sext i32 %.0463545 to i64               ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.g, i64 %i.ct ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !12
  %i.cw = zext i8 %i.cv to i64                    ; 2 uses
  %i.cx = add nsw i64 %i.cw, %i.ct
  %.not508 = icmp slt i64 %i.cx, %i.aa
  %.neg509 = xor i32 %.0463545, -1
  %i.cy = add i32 %.neg509, %i.z
  %i.cz = sext i32 %i.cy to i64
  %.0435 = select i1 %.not508, i64 %i.cw, i64 %i.cz ; 4 uses
  %.not510 = icmp eq i64 %.0435, 0
  br i1 %.not510, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = sext i32 %.0462546 to i64
  %i.db = getelementptr inbounds i8, ptr %i.cs, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr nonnull align 1 %i.dc, i64 %.0435, i1 false)
  %i.dd = call i32 @add_next_index_stringl(ptr noundef nonnull %7, ptr noundef nonnull %i.dc, i64 noundef %.0435) #11 ; 0 uses
  br label %bb.ac

end_hunk_0
