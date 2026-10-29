Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@mod_exp:bb.a

bb.s:                                             ; preds = %bb.r
  %i.dt = tail call i32 @BN_num_bytes(ptr noundef nonnull %i.ai) ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !93
  %i.dw = sext i32 %i.dv to i64
  %i.dx = tail call i32 @bn_resize_words(ptr noundef nonnull %0, i64 noundef %i.dw)
  br label %mod_montgomery.exit.thread

mod_montgomery.exit.thread:                       ; preds = %bn_less_than_montgomery_R.exit.thread.i92, %bn_less_than_montgomery_R.exit.thread2.i94, %bn_less_than_montgomery_R.exit.thread.i80, %bn_less_than_montgomery_R.exit.thread2.i82, %bn_less_than_montgomery_R.exit.thread.i, %bn_less_than_montgomery_R.exit.thread2.i, %bb.s, %mod_montgomery.exit, %mod_montgomery.exit90, %bb.l, %mod_montgomery.exit102, %bb.o, %bb.p, %bb.q, %bb.r, %bb.g, %BN_CTX_start.exit
  %.0 = phi i32 [ 0, %BN_CTX_start.exit ], [ 0, %bb.g ], [ %i.dx, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %mod_montgomery.exit102 ], [ 0, %bb.l ], [ 0, %mod_montgomery.exit90 ], [ 0, %mod_montgomery.exit ], [ 0, %bn_less_than_montgomery_R.exit.thread.i80 ], [ 0, %bn_less_than_montgomery_R.exit.thread.i ], [ 0, %bn_less_than_montgomery_R.exit.thread2.i ], [ 0, %bn_less_than_montgomery_R.exit.thread2.i82 ], [ 0, %bn_less_than_montgomery_R.exit.thread2.i94 ], [ 0, %bn_less_than_montgomery_R.exit.thread.i92 ]
  %i.dy = load i8, ptr %i.a, align 8, !tbaa !110
  %.not.i103 = icmp eq i8 %i.dy, 0
  br i1 %.not.i103, label %bb.t, label %BN_CTX_end.exit

bb.t:                                             ; preds = %mod_montgomery.exit.thread
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !112
  %i.ec = add i64 %i.eb, -1                       ; 2 uses
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !112
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !109
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !80
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !111
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %mod_montgomery.exit.thread, %bb.t
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_generate_key_ex(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @RSA_generate_key_ex_maybe_fips(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @RSA_generate_key_ex_maybe_fips(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = and i32 %1, -128                         ; 4 uses
  %i.c = icmp slt i32 %i.b, 256
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = lshr exact i32 %i.b, 1                   ; 8 uses
  %i.f = add nsw i32 %i.e, -100
  %i.g = icmp ult i32 %1, 4096
  %i.h = icmp ugt i32 %i.b, 4096
  %i.i = add nsw i32 %i.e, -2048
  %i.j = sub nuw nsw i32 2048, %i.e
  br i1 %i.c, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %rsa_generate_key_impl.exit.thread.us
  %.0.us = phi i32 [ %i.n, %rsa_generate_key_impl.exit.thread.us ], [ 0, %bb.a ] ; 2 uses
  tail call void @ERR_clear_error() #46
  %i.k = tail call ptr @RSA_new_method(ptr noundef null) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge.thread, label %rsa_generate_key_impl.exit.thread.us

rsa_generate_key_impl.exit.thread.us:             ; preds = %.split.us
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str.52, i32 noundef 974) #46
  %i.m = tail call i32 @ERR_peek_error() #46
  tail call void @RSA_free(ptr noundef nonnull %i.k)
  %i.n = add nuw nsw i32 %.0.us, 1
  %i.o = icmp samesign ult i32 %.0.us, 3
  %i.p = and i32 %i.m, -16773121
  %i.q = icmp eq i32 %i.p, 67109005
  %or.cond126.us = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond126.us, label %.split.us, label %.critedge.thread, !llvm.loop !2381

.split:                                           ; preds = %bb.a, %rsa_generate_key_impl.exit.thread
  %.0 = phi i32 [ %i.gz, %rsa_generate_key_impl.exit.thread ], [ 0, %bb.a ] ; 2 uses
  tail call void @ERR_clear_error() #46
  %i.r = tail call ptr @RSA_new_method(ptr noundef null) ; 30 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %.split
  %i.t = load i32, ptr %i.d, align 8, !tbaa !93   ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.v = load ptr, ptr %2, align 8, !tbaa !92     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.t, %.lr.ph.i.i.i ], [ %i.ab, %bb.d ] ; 4 uses
  %i.w = zext nneg i32 %.05.i.i.i to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !80
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %BN_num_bits.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ab = add nsw i32 %.05.i.i.i, -1
  %i.ac = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.ac, label %bb.c, label %BN_num_bits.exit.thread.i, !llvm.loop !10

bn_minimal_width.exit.i.i:                        ; preds = %bb.b
  %i.ad = icmp eq i32 %i.t, 0
  br i1 %i.ad, label %BN_num_bits.exit.thread.i, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !92
  br label %BN_num_bits.exit.i

BN_num_bits.exit.i:                               ; preds = %bb.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.ae = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.v, %bb.c ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.t, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.c ]
  %i.af = add nsw i32 %.0.lcssa.i9.i.i, -1        ; 2 uses
  %i.ag = shl nsw i32 %i.af, 6
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !80 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = lshr i64 %i.aj, 32                      ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.al, 0              ; 2 uses
  %i.am = select i1 %.not.i.i.i, i32 0, i32 32
  %i.an = zext i1 %i.ak to i32
  %i.ao = select i1 %.not.i.i.i, i64 %i.aj, i64 %i.al ; 2 uses
  %i.ap = lshr i64 %i.ao, 16                      ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.ap, 0            ; 2 uses
  %i.aq = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.ar = select i1 %.not52.i.i.i, i64 %i.ao, i64 %i.ap ; 2 uses
  %i.as = lshr i64 %i.ar, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.as, 0            ; 2 uses
  %i.at = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.au = select i1 %.not53.i.i.i, i64 %i.ar, i64 %i.as ; 2 uses
  %i.av = lshr i64 %i.au, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.av, 0            ; 2 uses
  %i.aw = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.ax = select i1 %.not54.i.i.i, i64 %i.au, i64 %i.av ; 2 uses
  %i.ay = lshr i64 %i.ax, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ay, 0            ; 2 uses
  %i.az = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.ba = select i1 %.not55.i.i.i, i64 %i.ax, i64 %i.ay
  %i.bb = icmp samesign ugt i64 %i.ba, 1
  %.neg.i.i.i = zext i1 %i.bb to i32
  %i.bc = or disjoint i32 %i.ag, %i.an
  %i.bd = or disjoint i32 %i.bc, %i.am
  %i.be = or disjoint i32 %i.bd, %i.aq
  %i.bf = or disjoint i32 %i.be, %i.at
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.az
  %i.bi = add i32 %i.bh, %.neg.i.i.i
  %i.bj = icmp ugt i32 %i.bi, 32
  br i1 %i.bj, label %bb.e, label %BN_num_bits.exit.thread.i

bb.e:                                             ; preds = %BN_num_bits.exit.i
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.52, i32 noundef 985) #46
  br label %rsa_generate_key_impl.exit.thread

BN_num_bits.exit.thread.i:                        ; preds = %bb.d, %BN_num_bits.exit.i, %bn_minimal_width.exit.i.i
  %i.bk = tail call ptr @OPENSSL_zalloc(i64 noundef 48) #46 ; 28 uses
  %.not.i.i = icmp eq ptr %i.bk, null             ; 2 uses
  br i1 %.not.i.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %BN_num_bits.exit.thread.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !110
  %.not.i160.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i160.i, label %bb.g, label %BN_CTX_start.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !111
  %i.bq = tail call ptr @OPENSSL_realloc(ptr noundef null, i64 noundef 256) #46 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.h, label %BN_STACK_push.exit.i.i

BN_STACK_push.exit.i.i:                           ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !109
  store i64 32, ptr %i.bs, align 8, !tbaa !113
  %.pre26.i.i.i = load i64, ptr %i.bt, align 8, !tbaa !112
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.pre26.i.i.i
  store i64 %i.bp, ptr %i.bu, align 8, !tbaa !80
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !112
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !112
  br label %BN_CTX_start.exit.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.bm, align 8, !tbaa !110
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 41
  store i8 1, ptr %i.bx, align 1, !tbaa !114
  br label %BN_CTX_start.exit.i

BN_CTX_start.exit.i:                              ; preds = %bb.h, %BN_STACK_push.exit.i.i, %bb.f
  %i.by = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.bk) ; 3 uses
  %i.bz = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.bk) ; 4 uses
  %i.ca = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.bk) ; 4 uses
  %i.cb = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.bk) ; 9 uses
  %i.cc = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.bk)
  %.fr175 = freeze ptr %i.cc                      ; 4 uses
  %i.cd = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.bk) ; 3 uses
  %i.ce = insertelement <4 x ptr> poison, ptr %i.by, i64 0
  %i.cf = insertelement <4 x ptr> %i.ce, ptr %i.bz, i64 1
  %i.cg = insertelement <4 x ptr> %i.cf, ptr %i.ca, i64 2
  %i.ch = insertelement <4 x ptr> %i.cg, ptr %i.cb, i64 3
  %.fr = freeze <4 x ptr> %i.ch
  %i.ci = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.cj = icmp eq ptr %.fr175, null
  %i.ck = icmp eq ptr %i.cd, null
  %i.cl = bitcast <4 x i1> %i.ci to i4
  %i.cm = icmp ne i4 %i.cl, 0
  %op.rdx = or i1 %i.cm, %i.cj
  %op.rdx173 = select i1 %op.rdx, i1 true, i1 %i.ck
  br i1 %op.rdx173, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %BN_CTX_start.exit.i
  %i.cn = tail call i32 @BN_set_bit(ptr noundef nonnull %.fr175, i32 noundef %i.f)
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = tail call i32 @BN_set_bit(ptr noundef nonnull %i.cd, i32 noundef %i.e)
  %.not130.i = icmp eq i32 %i.co, 0
  br i1 %.not130.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !119
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.l, label %ensure_bignum.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.cs = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %ensure_bignum.exit.thread168.i, label %ensure_bignum.exit.i

ensure_bignum.exit.thread168.i:                   ; preds = %bb.l
  store ptr null, ptr %i.cp, align 8, !tbaa !119
  br label %.critedge.i

ensure_bignum.exit.i:                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  store i32 1, ptr %i.cu, align 4, !tbaa !95
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !119
  br label %ensure_bignum.exit.thread.i

ensure_bignum.exit.thread.i:                      ; preds = %ensure_bignum.exit.i, %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 7 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !119
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.m, label %ensure_bignum.exit102.thread

bb.m:                                             ; preds = %ensure_bignum.exit.thread.i
  %i.cy = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %ensure_bignum.exit102.thread104, label %ensure_bignum.exit102

ensure_bignum.exit102.thread104:                  ; preds = %bb.m
  store ptr null, ptr %i.cv, align 8, !tbaa !119
  br label %.critedge.i

ensure_bignum.exit102:                            ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i32 1, ptr %i.da, align 4, !tbaa !95
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !119
  br label %ensure_bignum.exit102.thread

ensure_bignum.exit102.thread:                     ; preds = %ensure_bignum.exit.thread.i, %ensure_bignum.exit102
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 7 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !119
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.n, label %ensure_bignum.exit100.thread

bb.n:                                             ; preds = %ensure_bignum.exit102.thread
  %i.de = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %ensure_bignum.exit100.thread107, label %ensure_bignum.exit100

ensure_bignum.exit100.thread107:                  ; preds = %bb.n
  store ptr null, ptr %i.db, align 8, !tbaa !119
  br label %.critedge.i

ensure_bignum.exit100:                            ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 1, ptr %i.dg, align 4, !tbaa !95
  store ptr %i.de, ptr %i.db, align 8, !tbaa !119
  br label %ensure_bignum.exit100.thread

ensure_bignum.exit100.thread:                     ; preds = %ensure_bignum.exit102.thread, %ensure_bignum.exit100
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 8 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !119
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.o, label %ensure_bignum.exit98.thread

bb.o:                                             ; preds = %ensure_bignum.exit100.thread
  %i.dk = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %ensure_bignum.exit98.thread110, label %ensure_bignum.exit98

ensure_bignum.exit98.thread110:                   ; preds = %bb.o
  store ptr null, ptr %i.dh, align 8, !tbaa !119
  br label %.critedge.i

ensure_bignum.exit98:                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  store i32 1, ptr %i.dm, align 4, !tbaa !95
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !119
  br label %ensure_bignum.exit98.thread

ensure_bignum.exit98.thread:                      ; preds = %ensure_bignum.exit100.thread, %ensure_bignum.exit98
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 8 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !119
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.p, label %ensure_bignum.exit96.thread

bb.p:                                             ; preds = %ensure_bignum.exit98.thread
  %i.dq = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %ensure_bignum.exit96.thread113, label %ensure_bignum.exit96

ensure_bignum.exit96.thread113:                   ; preds = %bb.p
  store ptr null, ptr %i.dn, align 8, !tbaa !119
  br label %.critedge.i

ensure_bignum.exit96:                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  store i32 1, ptr %i.ds, align 4, !tbaa !95
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !119
  br label %ensure_bignum.exit96.thread

ensure_bignum.exit96.thread:                      ; preds = %ensure_bignum.exit98.thread, %ensure_bignum.exit96
  %i.dt = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !119
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.q, label %ensure_bignum.exit94.thread

bb.q:                                             ; preds = %ensure_bignum.exit96.thread
  %i.dw = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %ensure_bignum.exit94.thread116, label %ensure_bignum.exit94

ensure_bignum.exit94.thread116:                   ; preds = %bb.q
  store ptr null, ptr %i.dt, align 8, !tbaa !119
  br label %.critedge.i

ensure_bignum.exit94:                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  store i32 1, ptr %i.dy, align 4, !tbaa !95
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !119
  br label %ensure_bignum.exit94.thread

ensure_bignum.exit94.thread:                      ; preds = %ensure_bignum.exit96.thread, %ensure_bignum.exit94
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !119
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.r, label %ensure_bignum.exit.thread

bb.r:                                             ; preds = %ensure_bignum.exit94.thread
  %i.ec = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %ensure_bignum.exit.thread119, label %ensure_bignum.exit

ensure_bignum.exit.thread119:                     ; preds = %bb.r
  store ptr null, ptr %i.dz, align 8, !tbaa !119
  br label %.critedge.i

ensure_bignum.exit:                               ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  store i32 1, ptr %i.ee, align 4, !tbaa !95
  store ptr %i.ec, ptr %i.dz, align 8, !tbaa !119
  br label %ensure_bignum.exit.thread

ensure_bignum.exit.thread:                        ; preds = %ensure_bignum.exit94.thread, %ensure_bignum.exit
  %i.ef = load ptr, ptr %i.db, align 8, !tbaa !527
  %i.eg = tail call ptr @BN_copy(ptr noundef %i.ef, ptr noundef readonly %2)
  %.not138.i = icmp eq ptr %i.eg, null
  br i1 %.not138.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %ensure_bignum.exit.thread
  %i.eh = tail call i32 @bn_set_words(ptr noundef nonnull %i.cb, ptr noundef nonnull @kBoringSSLRSASqrtTwo, i64 noundef 32)
  %.not139.i = icmp eq i32 %i.eh, 0
  br i1 %.not139.i, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.g, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ei = tail call i32 @BN_rshift(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cb, i32 noundef %i.j)
  %.not142.i = icmp eq i32 %i.ei, 0
  br i1 %.not142.i, label %.critedge.i, label %.preheader

bb.v:                                             ; preds = %bb.t
  br i1 %i.h, label %bb.w, label %.preheader

bb.w:                                             ; preds = %bb.v
  %i.ej = tail call i32 @BN_add_word(ptr noundef nonnull %i.cb, i64 noundef 1)
  %.not140.i = icmp eq i32 %i.ej, 0
  br i1 %.not140.i, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = tail call i32 @BN_lshift(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cb, i32 noundef %i.i)
  %.not141.i = icmp eq i32 %i.ek, 0
  br i1 %.not141.i, label %.critedge.i, label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.v, %bb.u
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %bb.ai
  %i.el = load ptr, ptr %i.dh, align 8, !tbaa !524
  %i.em = load ptr, ptr %i.db, align 8, !tbaa !527
  %i.en = tail call fastcc i32 @generate_prime(ptr noundef %i.el, i32 noundef %i.e, ptr noundef %i.em, ptr noundef null, ptr noundef nonnull %i.cb, ptr noundef nonnull %.fr175, ptr noundef %i.bk, ptr noundef %3)
  %.not143.i = icmp eq i32 %i.en, 0
  br i1 %.not143.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = tail call i32 @BN_GENCB_call(ptr noundef %3, i32 noundef 3, i32 noundef 0)
  %.not144.i = icmp eq i32 %i.eo, 0
  br i1 %.not144.i, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ep = load ptr, ptr %i.dn, align 8, !tbaa !525
  %i.eq = load ptr, ptr %i.db, align 8, !tbaa !527
  %i.er = load ptr, ptr %i.dh, align 8, !tbaa !524
  %i.es = tail call fastcc i32 @generate_prime(ptr noundef %i.ep, i32 noundef %i.e, ptr noundef %i.eq, ptr noundef %i.er, ptr noundef nonnull %i.cb, ptr noundef nonnull %.fr175, ptr noundef %i.bk, ptr noundef %3)
  %.not145.i = icmp eq i32 %i.es, 0
  br i1 %.not145.i, label %.critedge.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = tail call i32 @BN_GENCB_call(ptr noundef %3, i32 noundef 3, i32 noundef 1)
  %.not146.i = icmp eq i32 %i.et, 0
  br i1 %.not146.i, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = load ptr, ptr %i.dh, align 8, !tbaa !524 ; 3 uses
  %i.ev = load ptr, ptr %i.dn, align 8, !tbaa !525 ; 3 uses
  %i.ew = tail call i32 @BN_cmp(ptr noundef %i.eu, ptr noundef %i.ev)
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.ev, ptr %i.dh, align 8, !tbaa !524
  store ptr %i.eu, ptr %i.dn, align 8, !tbaa !525
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ey = phi ptr [ %i.ev, %bb.ad ], [ %i.eu, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  tail call void @CRYPTO_once(ptr noundef nonnull @BN_value_one_once, ptr noundef nonnull @BN_value_one_init) #46
  %i.ez = tail call i32 @bn_usub_consttime(ptr noundef %i.bz, ptr noundef %i.ey, ptr noundef nonnull @BN_value_one_storage)
  %.not147.i = icmp eq i32 %i.ez, 0
  br i1 %.not147.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fa = load ptr, ptr %i.dn, align 8, !tbaa !525
  tail call void @CRYPTO_once(ptr noundef nonnull @BN_value_one_once, ptr noundef nonnull @BN_value_one_init) #46
  %i.fb = tail call i32 @bn_usub_consttime(ptr noundef %i.ca, ptr noundef %i.fa, ptr noundef nonnull @BN_value_one_storage)
  %.not148.i = icmp eq i32 %i.fb, 0
  br i1 %.not148.i, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = tail call i32 @bn_lcm_consttime(ptr noundef %i.by, ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef nonnull %i.bk)
  %.not149.i = icmp eq i32 %i.fc, 0
  br i1 %.not149.i, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load ptr, ptr %i.cv, align 8, !tbaa !526
  %i.fe = load ptr, ptr %i.db, align 8, !tbaa !527
  %i.ff = call i32 @bn_mod_inverse_consttime(ptr noundef %i.fd, ptr noundef nonnull %i.a, ptr noundef %i.fe, ptr noundef %i.by, ptr noundef nonnull %i.bk)
  %.not150.i = icmp eq i32 %i.ff, 0
  br i1 %.not150.i, label %.thread.i, label %bb.ai

.thread.i:                                        ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.fg = load ptr, ptr %i.cv, align 8, !tbaa !526
  %i.fh = tail call i32 @BN_cmp(ptr noundef %i.fg, ptr noundef nonnull %i.cd)
  %i.fi = icmp slt i32 %i.fh, 1
  %i.fj = zext i1 %i.fi to i32
  %i.fk = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fj) #47, !srcloc !120
  %.not151.i = icmp eq i32 %i.fk, 0
  br i1 %.not151.i, label %bb.aj, label %bb.y, !llvm.loop !2382

bb.aj:                                            ; preds = %bb.ai
  %i.fl = load ptr, ptr %i.cp, align 8, !tbaa !521
  %i.fm = load ptr, ptr %i.dh, align 8, !tbaa !524
  %i.fn = load ptr, ptr %i.dn, align 8, !tbaa !525
  %i.fo = tail call i32 @bn_mul_consttime(ptr noundef %i.fl, ptr noundef %i.fm, ptr noundef %i.fn, ptr noundef nonnull %i.bk)
  %.not152.i = icmp eq i32 %i.fo, 0
  br i1 %.not152.i, label %.critedge.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fp = load ptr, ptr %i.dt, align 8, !tbaa !528
  %i.fq = load ptr, ptr %i.cv, align 8, !tbaa !526
  %i.fr = tail call i32 @bn_div_consttime(ptr noundef null, ptr noundef %i.fp, ptr noundef %i.fq, ptr noundef %i.bz, i32 noundef %i.e, ptr noundef nonnull %i.bk)
  %.not153.i = icmp eq i32 %i.fr, 0
  br i1 %.not153.i, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fs = load ptr, ptr %i.dz, align 8, !tbaa !529
  %i.ft = load ptr, ptr %i.cv, align 8, !tbaa !526
  %i.fu = tail call i32 @bn_div_consttime(ptr noundef null, ptr noundef %i.fs, ptr noundef %i.ft, ptr noundef %i.ca, i32 noundef %i.e, ptr noundef nonnull %i.bk)
  %.not154.i = icmp eq i32 %i.fu, 0
  br i1 %.not154.i, label %.critedge.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = load ptr, ptr %i.cp, align 8, !tbaa !521 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !93 ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph.i.i163.i, label %bn_minimal_width.exit.i162.i

.lr.ph.i.i163.i:                                  ; preds = %bb.am
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !92
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i.i163.i
  %.05.i.i164.i = phi i32 [ %i.fx, %.lr.ph.i.i163.i ], [ %i.gf, %bb.ao ] ; 4 uses
  %i.ga = zext nneg i32 %.05.i.i164.i to i64
  %i.gb = getelementptr [8 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 -8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !80
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.ao, label %bn_minimal_width.exit.thread5.i.i

bn_minimal_width.exit.thread5.i.i:                ; preds = %bb.an
  store i32 %.05.i.i164.i, ptr %i.fw, align 8, !tbaa !93
  br label %bn_set_minimal_width.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.gf = add nsw i32 %.05.i.i164.i, -1
  %i.gg = icmp sgt i32 %.05.i.i164.i, 1
  br i1 %i.gg, label %bb.an, label %bn_minimal_width.exit.thread.i.i, !llvm.loop !10

bn_minimal_width.exit.thread.i.i:                 ; preds = %bb.ao
  store i32 0, ptr %i.fw, align 8, !tbaa !93
  br label %bb.ap

bn_minimal_width.exit.i162.i:                     ; preds = %bb.am
  %i.gh = icmp eq i32 %i.fx, 0
  br i1 %i.gh, label %bb.ap, label %bn_set_minimal_width.exit.i

bb.ap:                                            ; preds = %bn_minimal_width.exit.i162.i, %bn_minimal_width.exit.thread.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store i32 0, ptr %i.gi, align 8, !tbaa !91
  br label %bn_set_minimal_width.exit.i

bn_set_minimal_width.exit.i:                      ; preds = %bb.ap, %bn_minimal_width.exit.i162.i, %bn_minimal_width.exit.thread5.i.i
  %i.gj = tail call i32 @BN_num_bits(ptr noundef nonnull %i.fv)
  %.not155.i = icmp eq i32 %i.gj, %i.b
  br i1 %.not155.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bn_set_minimal_width.exit.i
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.52, i32 noundef 1105) #46
  br label %bb.au

bb.ar:                                            ; preds = %bn_set_minimal_width.exit.i
  %i.gk = tail call fastcc i32 @freeze_private_key(ptr noundef nonnull %i.r, ptr noundef %i.bk)
  %.not156.i = icmp eq i32 %i.gk, 0
  br i1 %.not156.i, label %.critedge.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = tail call i32 @RSA_check_key(ptr noundef nonnull %i.r)
  %.not157.i = icmp eq i32 %i.gl, 0
  br i1 %.not157.i, label %bb.at, label %.thread172.i

bb.at:                                            ; preds = %bb.as
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 124, ptr noundef nonnull @.str.52, i32 noundef 1119) #46
  br label %.thread172.i

.critedge.i:                                      ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %ensure_bignum.exit.thread119, %ensure_bignum.exit94.thread116, %ensure_bignum.exit96.thread113, %ensure_bignum.exit98.thread110, %ensure_bignum.exit100.thread107, %ensure_bignum.exit102.thread104, %bb.ar, %bb.al, %bb.ak, %bb.aj, %.thread.i, %bb.x, %bb.w, %bb.u, %bb.s, %ensure_bignum.exit.thread, %ensure_bignum.exit.thread168.i, %bb.j, %bb.i, %BN_CTX_start.exit.i, %BN_num_bits.exit.thread.i
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 3, ptr noundef nonnull @.str.52, i32 noundef 1127) #46
  br label %bb.au

bb.au:                                            ; preds = %.critedge.i, %bb.aq
  br i1 %.not.i.i, label %rsa_generate_key_impl.exit.thread, label %.thread172.i

.thread172.i:                                     ; preds = %bb.au, %bb.at, %bb.as
  %.not = phi i1 [ true, %bb.au ], [ false, %bb.as ], [ true, %bb.at ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !110
  %.not.i165.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i165.i, label %bb.av, label %rsa_generate_key_impl.exit

bb.av:                                            ; preds = %.thread172.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !112
  %i.gr = add i64 %i.gq, -1                       ; 2 uses
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !112
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !109
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !80
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !111
  br label %rsa_generate_key_impl.exit

rsa_generate_key_impl.exit:                       ; preds = %.thread172.i, %bb.av
  %i.gw = load ptr, ptr %i.bk, align 8, !tbaa !108
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.gw, ptr noundef nonnull @sk_BIGNUM_call_free_func, ptr noundef nonnull @BN_free) #46
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val.i.i = load ptr, ptr %i.gx, align 8, !tbaa !109
  tail call void @OPENSSL_free(ptr noundef %.val.i.i) #46
  tail call void @OPENSSL_free(ptr noundef nonnull %i.bk) #46
  br i1 %.not, label %rsa_generate_key_impl.exit.thread, label %.critedge

rsa_generate_key_impl.exit.thread:                ; preds = %bb.au, %bb.e, %rsa_generate_key_impl.exit
  %i.gy = tail call i32 @ERR_peek_error() #46
  tail call void @RSA_free(ptr noundef nonnull %i.r)
  %i.gz = add nuw nsw i32 %.0, 1
  %i.ha = icmp samesign ult i32 %.0, 3
  %i.hb = and i32 %i.gy, -16773121
  %i.hc = icmp eq i32 %i.hb, 67109005
  %or.cond126 = select i1 %i.ha, i1 %i.hc, i1 false
  br i1 %or.cond126, label %.split, label %.critedge.thread, !llvm.loop !2381

.critedge:                                        ; preds = %rsa_generate_key_impl.exit
  %.not56 = icmp eq i32 %4, 0
  br i1 %.not56, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge
  %i.hd = tail call i32 @RSA_check_fips(ptr noundef nonnull %i.r)
end_hunk_0
