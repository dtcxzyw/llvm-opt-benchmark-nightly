Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/x509_oid?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@oid_sig_alg_from_asn1:bb.a
    i64 7, label %bb.i
    i64 8, label %bb.j
  ]

bb.b:                                             ; preds = %.preheader
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
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
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
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
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
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
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
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
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
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
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
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
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
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
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
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
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.co = load i64, ptr %i.cn, align 1
  %i.cp = icmp ne i64 72906682468435498, %i.co
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ct = load i64, ptr %i.cs, align 1
  %i.cu = icmp ne i64 144964276506363434, %i.ct
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cy = load i64, ptr %i.cx, align 1
  %i.cz = icmp ne i64 217021870544291370, %i.cy
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.dd = load i64, ptr %i.dc, align 1
  %i.de = icmp ne i64 289079464582219306, %i.dd
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.loopexit, label %.thread34

bb.n:                                             ; preds = %bb.g
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
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
define hidden range(i32 -8448, 1) i32 @mbedtls_x509_oid_get_sig_alg(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @oid_sig_alg_from_asn1(ptr noundef %0) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  store i32 %i.d, ptr %1, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  store i32 %i.f, ptr %2, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -8448, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -8448, 1) i32 @mbedtls_x509_oid_get_oid_by_sig_alg(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  switch i32 %0, label %.loopexit [
    i32 1, label %bb.b
    i32 3, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %1, -3               ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 9
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 485, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup43, label %.loopexit

switch.lookup43:                                  ; preds = %bb.d, %bb.b
  %switch.tableidx41.sink52 = phi i32 [ %switch.tableidx, %bb.b ], [ %switch.tableidx41, %bb.d ] ; 2 uses
  %switch.table.mbedtls_x509_oid_get_oid_by_sig_alg.2.sink = phi ptr [ @switch.table.mbedtls_x509_oid_get_oid_by_sig_alg, %bb.b ], [ @switch.table.mbedtls_x509_oid_get_oid_by_sig_alg.2, %bb.d ]
  %switch.table.mbedtls_x509_oid_get_oid_by_sig_alg.3.sink = phi ptr [ @switch.table.mbedtls_x509_oid_get_oid_by_sig_alg.1, %bb.b ], [ @switch.table.mbedtls_x509_oid_get_oid_by_sig_alg.3, %bb.d ]
  %i.b = zext nneg i32 %switch.tableidx41.sink52 to i64
  %switch.gep47 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.mbedtls_x509_oid_get_oid_by_sig_alg.2.sink, i64 %i.b
  %switch.load48 = load ptr, ptr %switch.gep47, align 8
  %i.c = zext nneg i32 %switch.tableidx41.sink52 to i64
  %switch.gep49 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.mbedtls_x509_oid_get_oid_by_sig_alg.3.sink, i64 %i.c
  %switch.load50 = load ptr, ptr %switch.gep49, align 8
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup43, %bb.e
  %.lcssa = phi ptr [ @.str.162, %bb.e ], [ %switch.load48, %switch.lookup43 ]
  %.014.lcssa = phi ptr [ getelementptr inbounds nuw (i8, ptr @oid_sig_alg, i64 480), %bb.e ], [ %switch.load50, %switch.lookup43 ]
  store ptr %.lcssa, ptr %2, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %.014.lcssa, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  store i64 %i.e, ptr %3, align 8, !tbaa !27
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %switch.tableidx41 = add i32 %1, -5             ; 3 uses
  %i.f = icmp ult i32 %switch.tableidx41, 7
  %switch.maskindex44 = trunc i32 %switch.tableidx41 to i8
  %switch.shifted45 = lshr i8 121, %switch.maskindex44
  %switch.lobit46 = trunc i8 %switch.shifted45 to i1
  %or.cond51 = select i1 %i.f, i1 %switch.lobit46, i1 false
  br i1 %or.cond51, label %switch.lookup43, label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a, %bb.e, %bb.c
  %.010 = phi i32 [ 0, %bb.c ], [ -8448, %bb.a ], [ -8448, %bb.d ], [ -8448, %bb.e ], [ -8448, %bb.b ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -8448, 1) i32 @mbedtls_x509_oid_get_md_alg(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %oid_md_alg_from_asn1.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12
  switch i64 %i.d, label %oid_md_alg_from_asn1.exit [
    i64 8, label %bb.b
    i64 5, label %bb.c
    i64 9, label %bb.d
  ]

bb.b:                                             ; preds = %.preheader.i
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.f = load i64, ptr %i.e, align 1
  %i.g = icmp ne i64 360866276904044074, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.m, label %oid_md_alg_from_asn1.exit

bb.c:                                             ; preds = %.preheader.i
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 33754667, %i.k
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = xor i32 26, %i.o
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.h

bb.d:                                             ; preds = %.preheader.i
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !13   ; 16 uses
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 145244820330808928, %i.v
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = xor i64 4, %i.z
  %i.ab = or i64 %i.w, %i.aa
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i64, ptr %i.u, align 1
  %i.ag = xor i64 145244820330808928, %i.af
  %i.ah = getelementptr i8, ptr %i.u, i64 8
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = xor i64 1, %i.aj
  %i.al = or i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i64, ptr %i.u, align 1
  %i.aq = xor i64 145244820330808928, %i.ap
  %i.ar = getelementptr i8, ptr %i.u, i64 8
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i64
  %i.au = xor i64 2, %i.at
  %i.av = or i64 %i.aq, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i64, ptr %i.u, align 1
  %i.ba = xor i64 145244820330808928, %i.az
  %i.bb = getelementptr i8, ptr %i.u, i64 8
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = xor i64 3, %i.bd
  %i.bf = or i64 %i.ba, %i.be
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.bj = load i32, ptr %i.j, align 1
  %i.bk = xor i32 33760299, %i.bj
  %i.bl = getelementptr i8, ptr %i.j, i64 4
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i32
  %i.bo = xor i32 1, %i.bn
  %i.bp = or i32 %i.bk, %i.bo
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.m, label %oid_md_alg_from_asn1.exit

bb.i:                                             ; preds = %bb.g
  %i.bt = load i64, ptr %i.u, align 1
  %i.bu = xor i64 145244820330808928, %i.bt
  %i.bv = getelementptr i8, ptr %i.u, i64 8
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i64
  %i.by = xor i64 7, %i.bx
  %i.bz = or i64 %i.bu, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = load i64, ptr %i.u, align 1
  %i.ce = xor i64 145244820330808928, %i.cd
  %i.cf = getelementptr i8, ptr %i.u, i64 8
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i64
  %i.ci = xor i64 8, %i.ch
  %i.cj = or i64 %i.ce, %i.ci
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = load i64, ptr %i.u, align 1
  %i.co = xor i64 145244820330808928, %i.cn
  %i.cp = getelementptr i8, ptr %i.u, i64 8
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i64
  %i.cs = xor i64 9, %i.cr
  %i.ct = or i64 %i.co, %i.cs
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = load i64, ptr %i.u, align 1
  %i.cy = xor i64 145244820330808928, %i.cx
  %i.cz = getelementptr i8, ptr %i.u, i64 8
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i64
  %i.dc = xor i64 10, %i.db
  %i.dd = or i64 %i.cy, %i.dc
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.m, label %oid_md_alg_from_asn1.exit

bb.m:                                             ; preds = %bb.b, %bb.c, %bb.l, %bb.d, %bb.h, %bb.e, %bb.k, %bb.f, %bb.i, %bb.g, %bb.j
  %.015.i.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 320), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 200), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 280), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 160), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 360), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 120), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 240), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 80), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 400), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @oid_md_alg, i64 40), %bb.c ], [ @oid_md_alg, %bb.b ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.015.i.ph, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !17
  store i32 %i.di, ptr %1, align 4, !tbaa !18
  br label %oid_md_alg_from_asn1.exit

oid_md_alg_from_asn1.exit:                        ; preds = %.preheader.i, %bb.b, %bb.h, %bb.l, %bb.a, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ -8448, %bb.a ], [ -8448, %bb.l ], [ -8448, %bb.h ], [ -8448, %bb.b ], [ -8448, %.preheader.i ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
end_hunk_0
