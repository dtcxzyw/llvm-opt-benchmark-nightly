Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ecp_curves?download=true
inline.NumInlined: 176
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mbedtls_ecp_group_load:bb.a
  store ptr @brainpoolP512r1_gx, ptr %i.ft, align 8, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 1, ptr %i.fx, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i16 8, ptr %i.fy, align 2, !tbaa !14
  store ptr @brainpoolP512r1_gy, ptr %i.fw, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 1, ptr %i.ga, align 8, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i16 1, ptr %i.gb, align 2, !tbaa !14
  store ptr @mpi_one, ptr %i.fz, align 8, !tbaa !15
  %i.gc = tail call i64 @mbedtls_mpi_bitlen(ptr noundef nonnull %i.fh) #5
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !23
  %i.ge = tail call i64 @mbedtls_mpi_bitlen(ptr noundef nonnull %i.fq) #5
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !24
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.gg, align 8, !tbaa !25
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @brainpoolP512r1_T, ptr %i.gh, align 8, !tbaa !26
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.gi, align 8, !tbaa !27
  br label %ecp_use_curve25519.exit

bb.i:                                             ; preds = %bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @ecp_mod_p255, ptr %i.gj, align 8, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gl = tail call i32 @mbedtls_mpi_lset(ptr noundef nonnull %i.gk, i64 noundef 121666) #5 ; 2 uses
  %.not.i = icmp eq i32 %i.gl, 0
  br i1 %.not.i, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.gn = tail call i32 @mbedtls_mpi_lset(ptr noundef nonnull %i.gm, i64 noundef 1) #5 ; 2 uses
  %.not23.i = icmp eq i32 %i.gn, 0
  br i1 %.not23.i, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.go = tail call i32 @mbedtls_mpi_shift_l(ptr noundef nonnull %i.gm, i64 noundef 255) #5 ; 2 uses
  %.not24.i = icmp eq i32 %i.go, 0
  br i1 %.not24.i, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.gp = tail call i32 @mbedtls_mpi_sub_int(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gm, i64 noundef 19) #5 ; 2 uses
  %.not25.i = icmp eq i32 %i.gp, 0
  br i1 %.not25.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.gq = tail call i64 @mbedtls_mpi_bitlen(ptr noundef nonnull %i.gm) #5
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !23
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gt = tail call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %i.gs, ptr noundef nonnull @curve25519_part_of_n, i64 noundef 16) #5 ; 2 uses
  %.not26.i = icmp eq i32 %i.gt, 0
  br i1 %.not26.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.gu = tail call i32 @mbedtls_mpi_set_bit(ptr noundef nonnull %i.gs, i64 noundef 252, i8 noundef zeroext 1) #5 ; 2 uses
  %.not27.i = icmp eq i32 %i.gu, 0
  br i1 %.not27.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gw = tail call i32 @mbedtls_mpi_lset(ptr noundef nonnull %i.gv, i64 noundef 9) #5 ; 2 uses
  %.not28.i = icmp eq i32 %i.gw, 0
  br i1 %.not28.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gy = tail call i32 @mbedtls_mpi_lset(ptr noundef nonnull %i.gx, i64 noundef 1) #5 ; 2 uses
  %.not29.i = icmp eq i32 %i.gy, 0
  br i1 %.not29.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @mbedtls_mpi_free(ptr noundef nonnull %i.gz) #5
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 254, ptr %i.ha, align 8, !tbaa !24
  br label %ecp_use_curve25519.exit

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.0.ph.i = phi i32 [ %i.gy, %bb.p ], [ %i.gw, %bb.o ], [ %i.gu, %bb.n ], [ %i.gt, %bb.m ], [ %i.gp, %bb.l ], [ %i.go, %bb.k ], [ %i.gn, %bb.j ], [ %i.gl, %bb.i ]
  tail call void @mbedtls_ecp_group_free(ptr noundef nonnull %0) #5
  br label %ecp_use_curve25519.exit

bb.s:                                             ; preds = %bb.a
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @ecp_mod_p448, ptr %i.hb, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @mbedtls_mpi_init(ptr noundef nonnull %2) #5
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hd = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %i.hc, i64 noundef 39082) #5 ; 2 uses
  %.not.i21 = icmp eq i32 %i.hd, 0
  br i1 %.not.i21, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.hf = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %i.he, i64 noundef 1) #5 ; 2 uses
  %.not30.i = icmp eq i32 %i.hf, 0
  br i1 %.not30.i, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.hg = call i32 @mbedtls_mpi_shift_l(ptr noundef nonnull %i.he, i64 noundef 224) #5 ; 2 uses
  %.not31.i = icmp eq i32 %i.hg, 0
  br i1 %.not31.i, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.hh = call i32 @mbedtls_mpi_sub_int(ptr noundef nonnull %i.he, ptr noundef nonnull %i.he, i64 noundef 1) #5 ; 2 uses
  %.not32.i = icmp eq i32 %i.hh, 0
  br i1 %.not32.i, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.hi = call i32 @mbedtls_mpi_shift_l(ptr noundef nonnull %i.he, i64 noundef 224) #5 ; 2 uses
  %.not33.i = icmp eq i32 %i.hi, 0
  br i1 %.not33.i, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.hj = call i32 @mbedtls_mpi_sub_int(ptr noundef nonnull %i.he, ptr noundef nonnull %i.he, i64 noundef 1) #5 ; 2 uses
  %.not34.i = icmp eq i32 %i.hj, 0
  br i1 %.not34.i, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.hk = call i64 @mbedtls_mpi_bitlen(ptr noundef nonnull %i.he) #5
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !23
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hn = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %i.hm, i64 noundef 5) #5 ; 2 uses
  %.not35.i = icmp eq i32 %i.hn, 0
  br i1 %.not35.i, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hp = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %i.ho, i64 noundef 1) #5 ; 2 uses
  %.not36.i = icmp eq i32 %i.hp, 0
  br i1 %.not36.i, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @mbedtls_mpi_free(ptr noundef nonnull %i.hq) #5
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.hs = call i32 @mbedtls_mpi_set_bit(ptr noundef nonnull %i.hr, i64 noundef 446, i8 noundef zeroext 1) #5 ; 2 uses
  %.not37.i = icmp eq i32 %i.hs, 0
  br i1 %.not37.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ht = call i32 @mbedtls_mpi_read_binary(ptr noundef nonnull %2, ptr noundef nonnull @curve448_part_of_n, i64 noundef 28) #5 ; 2 uses
  %.not38.i = icmp eq i32 %i.ht, 0
  br i1 %.not38.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.hu = call i32 @mbedtls_mpi_sub_mpi(ptr noundef nonnull %i.hr, ptr noundef nonnull %i.hr, ptr noundef nonnull %2) #5 ; 2 uses
  %.not39.i = icmp eq i32 %i.hu, 0
  br i1 %.not39.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 447, ptr %i.hv, align 8, !tbaa !24
  call void @mbedtls_mpi_free(ptr noundef nonnull %2) #5
  br label %ecp_use_curve448.exit

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.0.ph.i22 = phi i32 [ %i.hu, %bb.ac ], [ %i.ht, %bb.ab ], [ %i.hs, %bb.aa ], [ %i.hp, %bb.z ], [ %i.hn, %bb.y ], [ %i.hj, %bb.x ], [ %i.hi, %bb.w ], [ %i.hh, %bb.v ], [ %i.hg, %bb.u ], [ %i.hf, %bb.t ], [ %i.hd, %bb.s ]
  call void @mbedtls_mpi_free(ptr noundef nonnull %2) #5
  call void @mbedtls_ecp_group_free(ptr noundef nonnull %0) #5
  br label %ecp_use_curve448.exit

ecp_use_curve448.exit:                            ; preds = %bb.ad, %bb.ae
  %.044.i = phi i32 [ %.0.ph.i22, %bb.ae ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %ecp_use_curve25519.exit

bb.af:                                            ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !21
  br label %ecp_use_curve25519.exit

ecp_use_curve25519.exit:                          ; preds = %bb.r, %bb.q, %bb.af, %ecp_use_curve448.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -20096, %bb.af ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.044.i, %ecp_use_curve448.exit ], [ %.0.ph.i, %bb.r ], [ 0, %bb.q ]
  ret i32 %.0
}

declare void @mbedtls_ecp_group_free(ptr noundef) local_unnamed_addr #1

declare void @mbedtls_ecp_group_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ecp_mod_p256(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @mbedtls_mpi_grow(ptr noundef %0, i64 noundef 9) #5 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 20 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 6 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %2 = load i64, ptr %i.e, align 8, !tbaa !16     ; 3 uses
  %i.h = trunc i64 %2 to i32                      ; 8 uses
  %i.i = add i32 %i.h, %i.d                       ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.h
  %i.k = zext i1 %i.j to i8
  %i.l = lshr i64 %2, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 10 uses
  %i.n = add i32 %i.i, %i.m                       ; 3 uses
  %i.o = icmp ult i32 %i.n, %i.m
  %i.p = zext i1 %i.o to i8
  %i.q = add nuw nsw i8 %i.p, %i.k
  %i.r = load i64, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.s = lshr i64 %i.r, 32
  %i.t = trunc nuw i64 %i.s to i32                ; 12 uses
  %i.u = icmp ult i32 %i.n, %i.t
  %.neg.i = sext i1 %i.u to i8
  %i.v = add nsw i8 %i.q, %.neg.i
  %i.w = sub i32 %i.n, %i.t                       ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.y = trunc i64 %i.x to i32                    ; 14 uses
  %i.z = icmp ult i32 %i.w, %i.y
  %.neg.i234 = sext i1 %i.z to i8
  %i.aa = add nsw i8 %i.v, %.neg.i234
  %i.ab = sub i32 %i.w, %i.y                      ; 2 uses
  %i.ac = lshr i64 %i.x, 32
  %i.ad = trunc nuw i64 %i.ac to i32              ; 20 uses
  %i.ae = icmp ult i32 %i.ab, %i.ad
  %.neg.i235 = sext i1 %i.ae to i8
  %i.af = add nsw i8 %i.aa, %.neg.i235
  %i.ag = sub i32 %i.ab, %i.ad                    ; 2 uses
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.ai = trunc i64 %i.ah to i32                  ; 18 uses
  %i.aj = icmp ult i32 %i.ag, %i.ai
  %.neg.i236 = sext i1 %i.aj to i8
  %i.ak = add nsw i8 %i.af, %.neg.i236            ; 2 uses
  %i.al = sub i32 %i.ag, %i.ai
  %i.am = zext i32 %i.al to i64
  %i.an = lshr i64 %i.c, 32
  %i.ao = trunc nuw i64 %i.an to i32              ; 3 uses
  %i.ap = sext i8 %i.ak to i32                    ; 4 uses
  %i.aq = icmp slt i8 %i.ak, 0
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = sub nsw i32 0, %i.ap
  %i.as = icmp ult i32 %i.ao, %i.ar
  %.neg.i237 = sext i1 %i.as to i8
  %i.at = add i32 %i.ap, %i.ao
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.au = add i32 %i.ap, %i.ao                    ; 2 uses
  %i.av = icmp ult i32 %i.au, %i.ap
  %i.aw = zext i1 %i.av to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0453 = phi i8 [ %.neg.i237, %bb.c ], [ %i.aw, %bb.d ]
  %.0452 = phi i32 [ %i.at, %bb.c ], [ %i.au, %bb.d ]
  %i.ax = add i32 %.0452, %i.m                    ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %i.m
  %i.az = zext i1 %i.ay to i8
  %i.ba = add nsw i8 %.0453, %i.az
  %i.bb = trunc i64 %i.r to i32                   ; 10 uses
  %i.bc = add i32 %i.ax, %i.bb                    ; 3 uses
  %i.bd = icmp ult i32 %i.bc, %i.bb
  %i.be = zext i1 %i.bd to i8
  %i.bf = add nsw i8 %i.ba, %i.be
  %i.bg = icmp ult i32 %i.bc, %i.y
  %.neg.i238 = sext i1 %i.bg to i8
  %i.bh = add nsw i8 %i.bf, %.neg.i238
  %i.bi = sub i32 %i.bc, %i.y                     ; 2 uses
  %i.bj = icmp ult i32 %i.bi, %i.ad
  %.neg.i239 = sext i1 %i.bj to i8
  %i.bk = add nsw i8 %i.bh, %.neg.i239
  %i.bl = sub i32 %i.bi, %i.ad                    ; 2 uses
  %i.bm = icmp ult i32 %i.bl, %i.ai
  %.neg.i240 = sext i1 %i.bm to i8
  %i.bn = add nsw i8 %i.bk, %.neg.i240
  %i.bo = sub i32 %i.bl, %i.ai                    ; 2 uses
  %i.bp = lshr i64 %i.ah, 32
  %i.bq = trunc nuw i64 %i.bp to i32              ; 18 uses
  %i.br = icmp ult i32 %i.bo, %i.bq
  %.neg.i241 = sext i1 %i.br to i8
  %i.bs = add nsw i8 %i.bn, %.neg.i241            ; 2 uses
  %i.bt = sub i32 %i.bo, %i.bq
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw i64 %i.bu, 32
  %i.bw = or disjoint i64 %i.bv, %i.am
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !16 ; 2 uses
  %i.bz = trunc i64 %i.by to i32                  ; 3 uses
  %i.ca = sext i8 %i.bs to i32                    ; 4 uses
  %i.cb = icmp slt i8 %i.bs, 0
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cc = sub nsw i32 0, %i.ca
  %i.cd = icmp ult i32 %i.bz, %i.cc
  %.neg.i242 = sext i1 %i.cd to i8
  %i.ce = add i32 %i.ca, %i.bz
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cf = add i32 %i.ca, %i.bz                    ; 2 uses
  %i.cg = icmp ult i32 %i.cf, %i.ca
  %i.ch = zext i1 %i.cg to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1454 = phi i8 [ %.neg.i242, %bb.f ], [ %i.ch, %bb.g ]
  %.1 = phi i32 [ %i.ce, %bb.f ], [ %i.cf, %bb.g ]
  %i.ci = add i32 %.1, %i.bb                      ; 2 uses
  %i.cj = icmp ult i32 %i.ci, %i.bb
  %i.ck = zext i1 %i.cj to i8
  %i.cl = add nsw i8 %.1454, %i.ck
  %i.cm = add i32 %i.ci, %i.t                     ; 3 uses
  %i.cn = icmp ult i32 %i.cm, %i.t
  %i.co = zext i1 %i.cn to i8
  %i.cp = add nsw i8 %i.cl, %i.co
  %i.cq = icmp ult i32 %i.cm, %i.ad
  %.neg.i243 = sext i1 %i.cq to i8
  %i.cr = add nsw i8 %i.cp, %.neg.i243
  %i.cs = sub i32 %i.cm, %i.ad                    ; 2 uses
  %i.ct = icmp ult i32 %i.cs, %i.ai
  %.neg.i244 = sext i1 %i.ct to i8
  %i.cu = add nsw i8 %i.cr, %.neg.i244
  %i.cv = sub i32 %i.cs, %i.ai                    ; 2 uses
  %i.cw = icmp ult i32 %i.cv, %i.bq
  %.neg.i245 = sext i1 %i.cw to i8
  %i.cx = add nsw i8 %i.cu, %.neg.i245            ; 2 uses
  %i.cy = sub i32 %i.cv, %i.bq
  %i.cz = zext i32 %i.cy to i64
  %i.da = lshr i64 %i.by, 32
  %i.db = trunc nuw i64 %i.da to i32              ; 3 uses
  %i.dc = sext i8 %i.cx to i32                    ; 4 uses
  %i.dd = icmp slt i8 %i.cx, 0
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = sub nsw i32 0, %i.dc
  %i.df = icmp ult i32 %i.db, %i.de
  %.neg.i246 = sext i1 %i.df to i8
  %i.dg = add i32 %i.dc, %i.db
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dh = add i32 %i.dc, %i.db                    ; 2 uses
  %i.di = icmp ult i32 %i.dh, %i.dc
  %i.dj = zext i1 %i.di to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2455 = phi i8 [ %.neg.i246, %bb.i ], [ %i.dj, %bb.j ]
  %.2 = phi i32 [ %i.dg, %bb.i ], [ %i.dh, %bb.j ]
  %i.dk = add i32 %.2, %i.t                       ; 2 uses
  %i.dl = add i32 %i.dk, %i.t                     ; 2 uses
  %i.dm = add i32 %i.dl, %i.y                     ; 2 uses
  %i.dn = add i32 %i.dm, %i.y                     ; 2 uses
  %i.do = add i32 %i.dn, %i.ad                    ; 3 uses
  %i.dp = sub i32 %i.do, %i.bq                    ; 2 uses
  %i.dq = sub i32 %i.dp, %i.h                     ; 2 uses
  %i.dr = icmp ult i32 %i.dk, %i.t
  %i.ds = icmp ult i32 %i.dl, %i.t
  %i.dt = icmp ult i32 %i.dm, %i.y
  %i.du = icmp ult i32 %i.dn, %i.y
  %i.dv = icmp ult i32 %i.do, %i.ad
  %i.dw = icmp ult i32 %i.do, %i.bq
  %i.dx = icmp ult i32 %i.dp, %i.h
  %i.dy = icmp ult i32 %i.dq, %i.m
  %i.dz = insertelement <8 x i1> poison, i1 %i.dr, i64 0
  %i.ea = insertelement <8 x i1> %i.dz, i1 %i.ds, i64 1
  %i.eb = insertelement <8 x i1> %i.ea, i1 %i.dt, i64 2
  %i.ec = insertelement <8 x i1> %i.eb, i1 %i.du, i64 3
  %i.ed = insertelement <8 x i1> %i.ec, i1 %i.dv, i64 4
  %i.ee = insertelement <8 x i1> %i.ed, i1 %i.dw, i64 5
  %i.ef = insertelement <8 x i1> %i.ee, i1 %i.dx, i64 6
  %i.eg = insertelement <8 x i1> %i.ef, i1 %i.dy, i64 7 ; 2 uses
  %i.eh = zext <8 x i1> %i.eg to <8 x i8>
  %i.ei = sext <8 x i1> %i.eg to <8 x i8>
  %i.ej = shufflevector <8 x i8> %i.eh, <8 x i8> %i.ei, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.ek = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.ej)
  %op.rdx463 = add i8 %i.ek, %.2455               ; 2 uses
  %i.el = sub i32 %i.dq, %i.m
  %i.em = zext i32 %i.el to i64
  %i.en = shl nuw i64 %i.em, 32
  %i.eo = or disjoint i64 %i.en, %i.cz
  store i64 %i.eo, ptr %i.bx, align 8, !tbaa !16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !16 ; 2 uses
  %i.er = trunc i64 %i.eq to i32                  ; 3 uses
  %i.es = sext i8 %op.rdx463 to i32               ; 4 uses
  %i.et = icmp slt i8 %op.rdx463, 0
  br i1 %i.et, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eu = sub nsw i32 0, %i.es
  %i.ev = icmp ult i32 %i.er, %i.eu
  %.neg.i250 = sext i1 %i.ev to i8
  %i.ew = add i32 %i.es, %i.er
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ex = add i32 %i.es, %i.er                    ; 2 uses
  %i.ey = icmp ult i32 %i.ex, %i.es
  %i.ez = zext i1 %i.ey to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3456 = phi i8 [ %.neg.i250, %bb.l ], [ %i.ez, %bb.m ]
  %.3 = phi i32 [ %i.ew, %bb.l ], [ %i.ex, %bb.m ]
  %i.fa = add i32 %.3, %i.y                       ; 2 uses
  %i.fb = icmp ult i32 %i.fa, %i.y
  %i.fc = zext i1 %i.fb to i8
  %i.fd = add nsw i8 %.3456, %i.fc
  %i.fe = add i32 %i.fa, %i.y                     ; 2 uses
  %i.ff = icmp ult i32 %i.fe, %i.y
  %i.fg = zext i1 %i.ff to i8
  %i.fh = add nsw i8 %i.fd, %i.fg
  %i.fi = add i32 %i.fe, %i.ad                    ; 2 uses
  %i.fj = icmp ult i32 %i.fi, %i.ad
  %i.fk = zext i1 %i.fj to i8
  %i.fl = add nsw i8 %i.fh, %i.fk
  %i.fm = add i32 %i.fi, %i.ad                    ; 2 uses
  %i.fn = icmp ult i32 %i.fm, %i.ad
  %i.fo = zext i1 %i.fn to i8
  %i.fp = add nsw i8 %i.fl, %i.fo
  %i.fq = add i32 %i.fm, %i.ai                    ; 3 uses
  %i.fr = icmp ult i32 %i.fq, %i.ai
  %i.fs = zext i1 %i.fr to i8
  %i.ft = add nsw i8 %i.fp, %i.fs
  %i.fu = icmp ult i32 %i.fq, %i.m
  %.neg.i251 = sext i1 %i.fu to i8
  %i.fv = add nsw i8 %i.ft, %.neg.i251
  %i.fw = sub i32 %i.fq, %i.m                     ; 2 uses
  %i.fx = icmp ult i32 %i.fw, %i.bb
  %.neg.i252 = sext i1 %i.fx to i8
  %i.fy = add nsw i8 %i.fv, %.neg.i252            ; 2 uses
  %i.fz = sub i32 %i.fw, %i.bb
  %i.ga = zext i32 %i.fz to i64
  %i.gb = lshr i64 %i.eq, 32
  %i.gc = trunc nuw i64 %i.gb to i32              ; 3 uses
  %i.gd = sext i8 %i.fy to i32                    ; 4 uses
  %i.ge = icmp slt i8 %i.fy, 0
  br i1 %i.ge, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gf = sub nsw i32 0, %i.gd
  %i.gg = icmp ult i32 %i.gc, %i.gf
  %.neg.i253 = sext i1 %i.gg to i8
  %i.gh = add i32 %i.gd, %i.gc
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.gi = add i32 %i.gd, %i.gc                    ; 2 uses
  %i.gj = icmp ult i32 %i.gi, %i.gd
  %i.gk = zext i1 %i.gj to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4457 = phi i8 [ %.neg.i253, %bb.o ], [ %i.gk, %bb.p ]
  %.4 = phi i32 [ %i.gh, %bb.o ], [ %i.gi, %bb.p ]
  %i.gl = add i32 %.4, %i.ad                      ; 2 uses
  %i.gm = icmp ult i32 %i.gl, %i.ad
  %i.gn = zext i1 %i.gm to i8
  %i.go = add nsw i8 %.4457, %i.gn
  %i.gp = add i32 %i.gl, %i.ad                    ; 2 uses
  %i.gq = icmp ult i32 %i.gp, %i.ad
  %i.gr = zext i1 %i.gq to i8
  %i.gs = add nsw i8 %i.go, %i.gr
  %i.gt = add i32 %i.gp, %i.ai                    ; 2 uses
  %i.gu = icmp ult i32 %i.gt, %i.ai
  %i.gv = zext i1 %i.gu to i8
  %i.gw = add nsw i8 %i.gs, %i.gv
  %i.gx = add i32 %i.gt, %i.ai                    ; 2 uses
  %i.gy = icmp ult i32 %i.gx, %i.ai
  %i.gz = zext i1 %i.gy to i8
  %i.ha = add nsw i8 %i.gw, %i.gz
  %i.hb = add i32 %i.gx, %i.bq                    ; 3 uses
  %i.hc = icmp ult i32 %i.hb, %i.bq
  %i.hd = zext i1 %i.hc to i8
  %i.he = add nsw i8 %i.ha, %i.hd
  %i.hf = icmp ult i32 %i.hb, %i.bb
  %.neg.i254 = sext i1 %i.hf to i8
  %i.hg = add nsw i8 %i.he, %.neg.i254
  %i.hh = sub i32 %i.hb, %i.bb                    ; 2 uses
  %i.hi = icmp ult i32 %i.hh, %i.t
  %.neg.i255 = sext i1 %i.hi to i8
  %i.hj = add nsw i8 %i.hg, %.neg.i255            ; 2 uses
  %i.hk = sub i32 %i.hh, %i.t
  %i.hl = zext i32 %i.hk to i64
  %i.hm = shl nuw i64 %i.hl, 32
  %i.hn = or disjoint i64 %i.hm, %i.ga
  store i64 %i.hn, ptr %i.ep, align 8, !tbaa !16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !16 ; 2 uses
  %i.hq = trunc i64 %i.hp to i32                  ; 3 uses
  %i.hr = sext i8 %i.hj to i32                    ; 4 uses
  %i.hs = icmp slt i8 %i.hj, 0
  br i1 %i.hs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ht = sub nsw i32 0, %i.hr
  %i.hu = icmp ult i32 %i.hq, %i.ht
  %.neg.i256 = sext i1 %i.hu to i8
  %i.hv = add i32 %i.hr, %i.hq
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.hw = add i32 %i.hr, %i.hq                    ; 2 uses
  %i.hx = icmp ult i32 %i.hw, %i.hr
  %i.hy = zext i1 %i.hx to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.5458 = phi i8 [ %.neg.i256, %bb.r ], [ %i.hy, %bb.s ]
  %.5 = phi i32 [ %i.hv, %bb.r ], [ %i.hw, %bb.s ]
  %i.hz = add i32 %.5, %i.ai                      ; 2 uses
  %i.ia = add i32 %i.hz, %i.ai                    ; 2 uses
  %i.ib = add i32 %i.ia, %i.bq                    ; 2 uses
  %i.ic = add i32 %i.ib, %i.bq                    ; 2 uses
  %i.id = add i32 %i.ic, %i.ai                    ; 2 uses
  %i.ie = add i32 %i.id, %i.ad                    ; 3 uses
  %i.if = sub i32 %i.ie, %i.h                     ; 2 uses
  %i.ig = icmp ult i32 %i.hz, %i.ai
  %i.ih = icmp ult i32 %i.ia, %i.ai
  %i.ii = icmp ult i32 %i.ib, %i.bq
  %i.ij = icmp ult i32 %i.ic, %i.bq
  %i.ik = icmp ult i32 %i.id, %i.ai
  %i.il = icmp ult i32 %i.ie, %i.ad
  %i.im = icmp ult i32 %i.ie, %i.h
  %i.in = icmp ult i32 %i.if, %i.m
  %i.io = insertelement <8 x i1> poison, i1 %i.ig, i64 0
  %i.ip = insertelement <8 x i1> %i.io, i1 %i.ih, i64 1
  %i.iq = insertelement <8 x i1> %i.ip, i1 %i.ii, i64 2
  %i.ir = insertelement <8 x i1> %i.iq, i1 %i.ij, i64 3
  %i.is = insertelement <8 x i1> %i.ir, i1 %i.ik, i64 4
  %i.it = insertelement <8 x i1> %i.is, i1 %i.il, i64 5
  %i.iu = insertelement <8 x i1> %i.it, i1 %i.im, i64 6
  %i.iv = insertelement <8 x i1> %i.iu, i1 %i.in, i64 7 ; 2 uses
  %i.iw = zext <8 x i1> %i.iv to <8 x i8>
  %i.ix = sext <8 x i1> %i.iv to <8 x i8>
  %i.iy = shufflevector <8 x i8> %i.iw, <8 x i8> %i.ix, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.iz = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.iy)
  %op.rdx = add i8 %i.iz, %.5458                  ; 2 uses
  %i.ja = sub i32 %i.if, %i.m
  %i.jb = zext i32 %i.ja to i64
  %i.jc = lshr i64 %i.hp, 32
  %i.jd = trunc nuw i64 %i.jc to i32              ; 3 uses
  %i.je = sext i8 %op.rdx to i32                  ; 4 uses
  %i.jf = icmp slt i8 %op.rdx, 0
  br i1 %i.jf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jg = sub nsw i32 0, %i.je
  %i.jh = icmp ult i32 %i.jd, %i.jg
  %.neg.i259 = sext i1 %i.jh to i8
  %i.ji = add i32 %i.je, %i.jd
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.jj = add i32 %i.je, %i.jd                    ; 2 uses
  %i.jk = icmp ult i32 %i.jj, %i.je
  %i.jl = zext i1 %i.jk to i8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.6459 = phi i8 [ %.neg.i259, %bb.u ], [ %i.jl, %bb.v ]
  %.6 = phi i32 [ %i.ji, %bb.u ], [ %i.jj, %bb.v ]
  %i.jm = add i32 %.6, %i.bq                      ; 2 uses
  %i.jn = icmp ult i32 %i.jm, %i.bq
  %i.jo = zext i1 %i.jn to i8
  %i.jp = add nsw i8 %.6459, %i.jo
  %i.jq = add i32 %i.jm, %i.bq                    ; 2 uses
  %i.jr = icmp ult i32 %i.jq, %i.bq
  %i.js = zext i1 %i.jr to i8
  %i.jt = add nsw i8 %i.jp, %i.js
  %i.ju = add i32 %i.jq, %i.bq                    ; 2 uses
  %i.jv = icmp ult i32 %i.ju, %i.bq
  %i.jw = zext i1 %i.jv to i8
  %i.jx = add nsw i8 %i.jt, %i.jw
  %i.jy = add i32 %i.ju, %i.h                     ; 3 uses
  %i.jz = icmp ult i32 %i.jy, %i.h
  %i.ka = zext i1 %i.jz to i8
  %i.kb = add nsw i8 %i.jx, %i.ka
  %i.kc = icmp ult i32 %i.jy, %i.bb
  %.neg.i260 = sext i1 %i.kc to i8
  %i.kd = add nsw i8 %i.kb, %.neg.i260
  %i.ke = sub i32 %i.jy, %i.bb                    ; 2 uses
  %i.kf = icmp ult i32 %i.ke, %i.t
  %.neg.i261 = sext i1 %i.kf to i8
  %i.kg = add nsw i8 %i.kd, %.neg.i261
  %i.kh = sub i32 %i.ke, %i.t                     ; 2 uses
  %i.ki = icmp ult i32 %i.kh, %i.y
  %.neg.i262 = sext i1 %i.ki to i8
  %i.kj = add nsw i8 %i.kg, %.neg.i262
  %i.kk = sub i32 %i.kh, %i.y                     ; 2 uses
  %i.kl = icmp ult i32 %i.kk, %i.ad
  %.neg.i263 = sext i1 %i.kl to i8
  %i.km = add nsw i8 %i.kj, %.neg.i263            ; 3 uses
  %i.kn = sub i32 %i.kk, %i.ad
  %i.ko = zext i32 %i.kn to i64
  %i.kp = shl nuw i64 %i.ko, 32
  %i.kq = or disjoint i64 %i.kp, %i.jb
  store i64 %i.kq, ptr %i.ho, align 8, !tbaa !16
  %i.kr = tail call i8 @llvm.smax.i8(i8 %i.km, i8 0)
  %i.ks = and i64 %2, -4294967296
  %i.kt = zext nneg i8 %i.kr to i64
  %i.ku = or disjoint i64 %i.ks, %i.kt
  store i64 %i.ku, ptr %i.e, align 8, !tbaa !16
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !14 ; 3 uses
  %i.kx = icmp ugt i16 %i.kw, 4
  br i1 %i.kx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.ky = icmp eq i16 %i.kw, 5
  br i1 %i.ky, label %.lr.ph.epil, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %i.kz = zext i16 %i.kw to i64
  %i.la = shl nuw nsw i64 %i.kz, 1
  %i.lb = add nsw i64 %i.la, -12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.lc = phi i64 [ 9, %.lr.ph.preheader.new ], [ %i.lm, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ] ; 2 uses
  %i.ld = lshr i64 %i.lc, 1
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ld ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !16
  %i.lg = and i64 %i.lf, 4294967295
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !16
  %i.lh = add nuw nsw i64 %i.lc, 1                ; 2 uses
  %i.li = lshr i64 %i.lh, 1
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.li ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !16
  %i.ll = and i64 %i.lk, -4294967296
  store i64 %i.ll, ptr %i.lj, align 8, !tbaa !16
  %i.lm = add nuw nsw i64 %i.lc, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.lb
  br i1 %niter.ncmp.1, label %.lr.ph.epil, label %.lr.ph, !llvm.loop !28

.lr.ph.epil:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %.epil.init = phi i64 [ 9, %.lr.ph.preheader ], [ %i.lm, %.lr.ph ]
  %.0460.epil.init = phi i64 [ 8, %.lr.ph.preheader ], [ %i.lh, %.lr.ph ]
  %i.ln = and i64 %.0460.epil.init, 1
  %.not233.not.epil = icmp eq i64 %i.ln, 0
  %i.lo = lshr i64 %.epil.init, 1
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lo ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !16
  %..epil = select i1 %.not233.not.epil, i64 4294967295, i64 -4294967296
  %i.lr = and i64 %i.lq, %..epil
  store i64 %i.lr, ptr %i.lp, align 8, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil, %bb.w
  %i.ls = icmp slt i8 %i.km, 0
  br i1 %i.ls, label %.preheader.preheader, label %bb.x

.preheader.preheader:                             ; preds = %._crit_edge
  %i.lt = load <2 x i64>, ptr %i.b, align 8, !tbaa !16
  %i.lu = xor <2 x i64> %i.lt, splat (i64 -1)
  store <2 x i64> %i.lu, ptr %i.b, align 8, !tbaa !16
  %i.lv = load <2 x i64>, ptr %i.ep, align 8, !tbaa !16
  %i.lw = xor <2 x i64> %i.lv, splat (i64 -1)
  store <2 x i64> %i.lw, ptr %i.ep, align 8, !tbaa !16
  %i.lx = load i64, ptr %i.e, align 8, !tbaa !16
  %i.ly = xor i64 %i.lx, -1
  store i64 %i.ly, ptr %i.e, align 8, !tbaa !16
  %i.lz = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ma = add i64 %i.lz, 1                        ; 2 uses
  store i64 %i.ma, ptr %i.b, align 8, !tbaa !16
  %.not465 = icmp eq i64 %i.ma, 0
  br i1 %.not465, label %.preheader.i.1, label %mbedtls_ecp_fix_negative.exit

.preheader.i.1:                                   ; preds = %.preheader.preheader
  %i.mb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !16
  %i.md = add i64 %i.mc, 1                        ; 2 uses
  store i64 %i.md, ptr %i.mb, align 8, !tbaa !16
  %.not466 = icmp eq i64 %i.md, 0
  br i1 %.not466, label %.preheader.i.2, label %mbedtls_ecp_fix_negative.exit

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.me = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !16
  %i.mg = add i64 %i.mf, 1                        ; 2 uses
  store i64 %i.mg, ptr %i.me, align 8, !tbaa !16
  %.not467 = icmp eq i64 %i.mg, 0
  br i1 %.not467, label %.preheader.i.3, label %mbedtls_ecp_fix_negative.exit

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !16
  %i.mj = add i64 %i.mi, 1                        ; 2 uses
  store i64 %i.mj, ptr %i.mh, align 8, !tbaa !16
  %.not468 = icmp eq i64 %i.mj, 0
  br i1 %.not468, label %.preheader.i.4, label %mbedtls_ecp_fix_negative.exit

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !16
  %i.mm = add i64 %i.ml, 1
  store i64 %i.mm, ptr %i.mk, align 8, !tbaa !16
  br label %mbedtls_ecp_fix_negative.exit

mbedtls_ecp_fix_negative.exit:                    ; preds = %.preheader.i.4, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1, %.preheader.preheader
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 -1, ptr %i.mn, align 8, !tbaa !13
  %i.mo = sext i8 %i.km to i64
  %i.mp = load i64, ptr %i.e, align 8, !tbaa !16
  %i.mq = sub i64 %i.mp, %i.mo
  store i64 %i.mq, ptr %i.e, align 8, !tbaa !16
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %mbedtls_ecp_fix_negative.exit, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @ecp_mod_p384(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @mbedtls_mpi_grow(ptr noundef %0, i64 noundef 13) #5 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 26 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 8 uses
  %i.h = add i32 %i.g, %i.d                       ; 2 uses
  %i.i = icmp ult i32 %i.h, %i.g
  %i.j = zext i1 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32                ; 16 uses
  %i.o = add i32 %i.h, %i.n                       ; 2 uses
  %i.p = icmp ult i32 %i.o, %i.n
  %i.q = zext i1 %i.p to i8
  %i.r = add nuw nsw i8 %i.q, %i.j
  %i.s = trunc i64 %i.l to i32                    ; 14 uses
  %i.t = add i32 %i.o, %i.s                       ; 3 uses
  %i.u = icmp ult i32 %i.t, %i.s
  %i.v = zext i1 %i.u to i8
  %i.w = add nuw nsw i8 %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16   ; 2 uses
  %i.z = lshr i64 %i.y, 32
  %i.aa = trunc nuw i64 %i.z to i32               ; 22 uses
  %i.ab = icmp ult i32 %i.t, %i.aa
  %.neg.i = sext i1 %i.ab to i8
  %i.ac = add nsw i8 %i.w, %.neg.i                ; 2 uses
  %i.ad = sub i32 %i.t, %i.aa
  %i.ae = zext i32 %i.ad to i64
  %i.af = lshr i64 %i.c, 32
  %i.ag = trunc nuw i64 %i.af to i32              ; 3 uses
  %i.ah = sext i8 %i.ac to i32                    ; 4 uses
  %i.ai = icmp slt i8 %i.ac, 0
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = sub nsw i32 0, %i.ah
  %i.ak = icmp ult i32 %i.ag, %i.aj
  %.neg.i325 = sext i1 %i.ak to i8
  %i.al = add i32 %i.ah, %i.ag
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.am = add i32 %i.ah, %i.ag                    ; 2 uses
  %i.an = icmp ult i32 %i.am, %i.ah
  %i.ao = zext i1 %i.an to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0586 = phi i8 [ %.neg.i325, %bb.c ], [ %i.ao, %bb.d ]
  %.0585 = phi i32 [ %i.al, %bb.c ], [ %i.am, %bb.d ]
  %i.ap = lshr i64 %i.f, 32
  %i.aq = trunc nuw i64 %i.ap to i32              ; 8 uses
  %i.ar = add i32 %.0585, %i.aq                   ; 2 uses
  %i.as = icmp ult i32 %i.ar, %i.aq
  %i.at = zext i1 %i.as to i8
  %i.au = add nsw i8 %.0586, %i.at
  %i.av = trunc i64 %i.y to i32                   ; 16 uses
  %i.aw = add i32 %i.ar, %i.av                    ; 2 uses
  %i.ax = icmp ult i32 %i.aw, %i.av
  %i.ay = zext i1 %i.ax to i8
  %i.az = add nsw i8 %i.au, %i.ay
  %i.ba = add i32 %i.aw, %i.aa                    ; 3 uses
  %i.bb = icmp ult i32 %i.ba, %i.aa
  %i.bc = zext i1 %i.bb to i8
  %i.bd = add nsw i8 %i.az, %i.bc
  %i.be = icmp ult i32 %i.ba, %i.g
  %.neg.i326 = sext i1 %i.be to i8
  %i.bf = add nsw i8 %i.bd, %.neg.i326
  %i.bg = sub i32 %i.ba, %i.g                     ; 2 uses
  %i.bh = icmp ult i32 %i.bg, %i.s
  %.neg.i327 = sext i1 %i.bh to i8
  %i.bi = add nsw i8 %i.bf, %.neg.i327            ; 2 uses
  %i.bj = sub i32 %i.bg, %i.s
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw i64 %i.bk, 32
end_hunk_0
