Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/oid?download=true
inline.NumInlined: 13
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@oid_sig_alg_from_asn1:bb.a
    i64 7, label %bb.i
    i64 8, label %bb.j
  ]

bb.b:                                             ; preds = %.preheader
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !310  ; 2 uses
  %i.f = load i64, ptr %i.e, align 1
  %i.g = xor i64 72354425775621674, %i.f
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = xor i64 4, %i.j
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !310  ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = xor i64 72354425775621674, %i.q
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = xor i64 5, %i.u
  %i.w = or i64 %i.r, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !310 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = xor i64 72354425775621674, %i.ab
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = xor i64 14, %i.af
  %i.ah = or i64 %i.ac, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !310 ; 2 uses
  %i.am = load i64, ptr %i.al, align 1
  %i.an = xor i64 72354425775621674, %i.am
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = xor i64 11, %i.aq
  %i.as = or i64 %i.an, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !310 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = xor i64 72354425775621674, %i.ax
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = xor i64 12, %i.bb
  %i.bd = or i64 %i.ay, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !310 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = xor i64 72354425775621674, %i.bi
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = xor i64 13, %i.bm
  %i.bo = or i64 %i.bj, %i.bn
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.loopexit, label %bb.n

bb.h:                                             ; preds = %.preheader
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !310 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 1
  %i.bu = xor i32 33754667, %i.bt
  %i.bv = getelementptr i8, ptr %i.bs, i64 4
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = xor i32 29, %i.bx
  %i.bz = or i32 %i.bu, %i.by
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.loopexit, label %.thread34

bb.i:                                             ; preds = %.preheader
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !310 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 1
  %i.cf = xor i32 -834107862, %i.ce
  %i.cg = getelementptr i8, ptr %i.cd, i64 3
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = xor i32 17055182, %i.ch
  %i.cj = or i32 %i.cf, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit, label %.thread34

bb.j:                                             ; preds = %.preheader
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !310
  %i.co = load i64, ptr %i.cn, align 1
  %i.cp = icmp ne i64 72906682468435498, %i.co
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !310
  %i.ct = load i64, ptr %i.cs, align 1
  %i.cu = icmp ne i64 144964276506363434, %i.ct
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !310
  %i.cy = load i64, ptr %i.cx, align 1
  %i.cz = icmp ne i64 217021870544291370, %i.cy
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !310
  %i.dd = load i64, ptr %i.dc, align 1
  %i.de = icmp ne i64 289079464582219306, %i.dd
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.loopexit, label %.thread34

bb.n:                                             ; preds = %bb.g
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !310 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 1
  %i.dj = xor i64 72354425775621674, %i.di
  %i.dk = getelementptr i8, ptr %i.dh, i64 8
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i64
  %i.dn = xor i64 10, %i.dm
  %i.do = or i64 %i.dj, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.loopexit, label %.thread34

.thread34:                                        ; preds = %.preheader, %bb.h, %bb.m, %bb.i, %bb.n
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %.thread34, %bb.a
  %.015 = phi ptr [ null, %bb.a ], [ @oid_sig_alg, %bb.b ], [ null, %.thread34 ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 40), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 480), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 80), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 280), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 120), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 440), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 160), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 360), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 200), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 400), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 240), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 320), %bb.j ]
  ret ptr %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -46, 1) i32 @mbedtls_oid_get_sig_alg(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 !guid !333 {
bb.a:
  %i.a = tail call fastcc ptr @oid_sig_alg_from_asn1(ptr noundef %0) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !316
  store i32 %i.d, ptr %1, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !317
  store i32 %i.f, ptr %2, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -46, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -46, 1) i32 @mbedtls_oid_get_oid_by_sig_alg(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 !guid !334 {
bb.a:
  switch i32 %0, label %.loopexit [
    i32 1, label %bb.b
    i32 4, label %bb.d
    i32 6, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %1, -3               ; 4 uses
  %i.a = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 485, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %bb.b
  %4 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_oid_get_oid_by_sig_alg, i64 %4
  %switch.load = load ptr, ptr %switch.gep, align 8
  %5 = zext nneg i32 %switch.tableidx to i64
  %switch.gep39 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_oid_get_oid_by_sig_alg.1, i64 %5
  %switch.load40 = load ptr, ptr %switch.gep39, align 8
  br label %bb.c

.sink.split:                                      ; preds = %bb.d
  %i.b = zext nneg i32 %switch.tableidx41 to i64
  %switch.gep47 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_oid_get_oid_by_sig_alg.2, i64 %i.b
  %switch.load48 = load ptr, ptr %switch.gep47, align 8
  %i.c = zext nneg i32 %switch.tableidx41 to i64
  %switch.gep49 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_oid_get_oid_by_sig_alg.3, i64 %i.c
  %switch.load50 = load ptr, ptr %switch.gep49, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %switch.lookup, %bb.e
  %.lcssa = phi ptr [ %switch.load, %switch.lookup ], [ @.str.164, %bb.e ], [ %switch.load48, %.sink.split ]
  %.014.lcssa = phi ptr [ %switch.load40, %switch.lookup ], [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 480), %bb.e ], [ %switch.load50, %.sink.split ]
  store ptr %.lcssa, ptr %2, align 8, !tbaa !312
  %i.d = getelementptr inbounds nuw i8, ptr %.014.lcssa, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !335
  store i64 %i.e, ptr %3, align 8, !tbaa !318
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %switch.tableidx41 = add i32 %1, -5             ; 4 uses
  %i.f = icmp ult i32 %switch.tableidx41, 7
  %switch.maskindex44 = trunc i32 %switch.tableidx41 to i8
  %switch.shifted45 = lshr i8 121, %switch.maskindex44
  %switch.lobit46 = trunc i8 %switch.shifted45 to i1
  %or.cond51 = select i1 %i.f, i1 %switch.lobit46, i1 false
  br i1 %or.cond51, label %.sink.split, label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a, %bb.e, %bb.c
  %.010 = phi i32 [ 0, %bb.c ], [ -46, %bb.a ], [ -46, %bb.d ], [ -46, %bb.e ], [ -46, %bb.b ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -46, 1) i32 @mbedtls_oid_get_pk_alg(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 !guid !336 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %oid_pk_alg_from_asn1.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !309
  switch i64 %i.d, label %oid_pk_alg_from_asn1.exit [
    i64 9, label %bb.b
    i64 7, label %bb.c
    i64 5, label %bb.d
  ]

bb.b:                                             ; preds = %.preheader.i
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !310  ; 2 uses
  %i.f = load i64, ptr %i.e, align 1
  %i.g = xor i64 72354425775621674, %i.f
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = xor i64 1, %i.j
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %oid_pk_alg_from_asn1.exit

bb.c:                                             ; preds = %.preheader.i
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !310  ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 -834107862, %i.q
  %i.s = getelementptr i8, ptr %i.p, i64 3
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 16924110, %i.t
  %i.v = or i32 %i.r, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %oid_pk_alg_from_asn1.exit

bb.d:                                             ; preds = %.preheader.i
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !310  ; 2 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 17072427, %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 4
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = xor i32 12, %i.ae
  %i.ag = or i32 %i.ab, %i.af
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %oid_pk_alg_from_asn1.exit

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.015.i.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @oid_pk_alg, i64 80), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @oid_pk_alg, i64 40), %bb.c ], [ @oid_pk_alg, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.ph, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !314
  store i32 %i.al, ptr %1, align 4, !tbaa !8
  br label %oid_pk_alg_from_asn1.exit

oid_pk_alg_from_asn1.exit:                        ; preds = %.preheader.i, %bb.b, %bb.c, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -46, %bb.a ], [ -46, %bb.d ], [ -46, %bb.c ], [ -46, %bb.b ], [ -46, %.preheader.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -46, 1) i32 @mbedtls_oid_get_oid_by_pk_alg(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 !guid !337 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_oid_get_oid_by_pk_alg, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep16 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_oid_get_oid_by_pk_alg.4, i64 %i.c
  %switch.load17 = load ptr, ptr %switch.gep16, align 8
  store ptr %switch.load, ptr %1, align 8, !tbaa !312
  %i.d = getelementptr inbounds nuw i8, ptr %switch.load17, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !319
  store i64 %i.e, ptr %2, align 8, !tbaa !318
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %switch.lookup
  %.08 = phi i32 [ 0, %switch.lookup ], [ -46, %bb.a ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -46, 1) i32 @mbedtls_oid_get_ec_grp(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 !guid !338 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %oid_grp_id_from_asn1.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !309
  switch i64 %i.d, label %oid_grp_id_from_asn1.exit [
    i64 8, label %bb.b
    i64 5, label %bb.c
    i64 9, label %bb.i
  ]

bb.b:                                             ; preds = %.preheader.i
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !310  ; 2 uses
  %i.f = load i64, ptr %i.e, align 1
  %i.g = icmp ne i64 72342633003386410, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.l, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !310  ; 12 uses
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 295211, %i.k
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = xor i32 33, %i.o
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.l, label %.thread19.thread.i

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.e, align 1
  %i.v = icmp ne i64 504688197230954026, %i.u
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %oid_grp_id_from_asn1.exit

.thread19.thread.i:                               ; preds = %bb.c
  %i.y = load i32, ptr %i.j, align 1
  %i.z = xor i32 295211, %i.y
  %i.aa = getelementptr i8, ptr %i.j, i64 4
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = xor i32 34, %i.ac
  %i.ae = or i32 %i.z, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.thread19.thread.i
  %i.ai = load i32, ptr %i.j, align 1
  %i.aj = xor i32 295211, %i.ai
  %i.ak = getelementptr i8, ptr %i.j, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = xor i32 35, %i.am
  %i.ao = or i32 %i.aj, %i.an
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.j, align 1
  %i.at = xor i32 295211, %i.as
  %i.au = getelementptr i8, ptr %i.j, i64 4
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 31, %i.aw
  %i.ay = or i32 %i.at, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %i.j, align 1
  %i.bd = xor i32 295211, %i.bc
  %i.be = getelementptr i8, ptr %i.j, i64 4
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
end_hunk_0
