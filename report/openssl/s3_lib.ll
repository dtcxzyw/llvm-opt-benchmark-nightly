Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/s3_lib?download=true
inline.NumInlined: 39
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ssl3_get_cipher_by_std_name:.lr.ph.preheader
  %.013 = phi ptr [ @ssl3_scsvs, %bb.c ], [ null, %.lr.ph.1.1 ], [ %spec.select, %bb.d ], [ %.01217, %bb.a ]
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define ptr @ssl3_get_cipher_by_char(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.ssl_cipher_st, align 8      ; 6 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !209
  %i.b = zext i8 %i.a to i32
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !209
  %i.f = zext i8 %i.e to i32
  %i.g = or disjoint i32 %i.c, %i.f
  %i.h = or disjoint i32 %i.g, 50331648
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.h, ptr %i.i, align 8, !tbaa !8
  %i.j = call ptr @OBJ_bsearch_ssl_cipher_id(ptr noundef nonnull %1, ptr noundef nonnull @tls13_ciphers, i32 noundef 9) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.b, label %ssl3_get_cipher_by_id.exit

bb.b:                                             ; preds = %bb.a
  %i.k = call ptr @OBJ_bsearch_ssl_cipher_id(ptr noundef nonnull %1, ptr noundef nonnull @ssl3_ciphers, i32 noundef 167) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.k, null
  br i1 %.not7.i, label %bb.c, label %ssl3_get_cipher_by_id.exit

bb.c:                                             ; preds = %bb.b
  %i.l = call ptr @OBJ_bsearch_ssl_cipher_id(ptr noundef nonnull %1, ptr noundef nonnull @ssl3_scsvs, i32 noundef 2) #17
  br label %ssl3_get_cipher_by_id.exit

ssl3_get_cipher_by_id.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.a ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ssl3_put_cipher_by_char(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = and i32 %i.b, -16777216
  %.not = icmp eq i32 %i.c, 50331648
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 65535
  %i.e = zext nneg i32 %i.d to i64
  %i.f = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef %i.e, i64 noundef 2) #17
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 0, %bb.a ], [ 2, %bb.b ]
  store i64 %.sink, ptr %2, align 8, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @ssl3_choose_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !211
  %i.e = and i32 %i.d, 196608
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.critedge187

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 2 uses
  %i.h = and i64 %i.g, 4194304
  %.not157 = icmp eq i64 %i.h, 0
  br i1 %.not157, label %.critedge187, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.g, 2097152
  %.not158 = icmp eq i64 %i.i, 0
  br i1 %.not158, label %.critedge187, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @OPENSSL_sk_num(ptr noundef %1) #17
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %.critedge187

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @OPENSSL_sk_value(ptr noundef %1, i32 noundef 0) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !213
  %i.o = icmp eq i32 %i.n, 524288
  br i1 %i.o, label %bb.f, label %.critedge187

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @OPENSSL_sk_num(ptr noundef %2) #17 ; 6 uses
  %.not160211 = icmp sgt i32 %i.p, 0
  br i1 %.not160211, label %.lr.ph, label %.critedge187

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.0140212 = phi i32 [ %i.u, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.q = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.0140212) #17 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !213
  %i.t = icmp eq i32 %i.s, 524288
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.u = add nuw nsw i32 %.0140212, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %i.p
  br i1 %exitcond.not, label %.critedge187, label %.lr.ph, !llvm.loop !214

bb.h:                                             ; preds = %.lr.ph
  %i.v = tail call ptr @OPENSSL_sk_new_reserve(ptr noundef null, i32 noundef %i.p) #17
  %i.w = tail call ptr @OPENSSL_sk_set_cmp_thunks(ptr noundef %i.v, ptr noundef nonnull @sk_SSL_CIPHER_cmpfunc_thunk) #17 ; 6 uses
  %.not161 = icmp eq ptr %i.w, null
  br i1 %.not161, label %.critedge187, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.w, ptr noundef nonnull %i.q) #17 ; 0 uses
  %.1141213 = add nuw nsw i32 %.0140212, 1        ; 2 uses
  %i.y = icmp slt i32 %.1141213, %i.p
  br i1 %i.y, label %.lr.ph215, label %.lr.ph217.preheader

.lr.ph215:                                        ; preds = %bb.i, %bb.k
  %.1141214 = phi i32 [ %.1141, %bb.k ], [ %.1141213, %bb.i ] ; 2 uses
  %i.z = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.1141214) #17 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !213
  %i.ac = icmp eq i32 %i.ab, 524288
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph215
  %i.ad = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.w, ptr noundef nonnull %i.z) #17 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph215, %bb.j
  %.1141 = add nuw i32 %.1141214, 1               ; 2 uses
  %exitcond237.not = icmp eq i32 %.1141, %i.p
  br i1 %exitcond237.not, label %.lr.ph217.preheader, label %.lr.ph215, !llvm.loop !215

.lr.ph217.preheader:                              ; preds = %bb.k, %bb.i
  br label %.lr.ph217

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %bb.m
  %.2142216 = phi i32 [ %i.ai, %bb.m ], [ 0, %.lr.ph217.preheader ] ; 2 uses
  %i.ae = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.2142216) #17 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !213
  %.not162 = icmp eq i32 %i.ag, 524288
  br i1 %.not162, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph217
  %i.ah = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.w, ptr noundef nonnull %i.ae) #17 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph217, %bb.l
  %i.ai = add nuw nsw i32 %.2142216, 1            ; 2 uses
  %exitcond238.not = icmp eq i32 %i.ai, %i.p
  br i1 %exitcond238.not, label %.critedge187, label %.lr.ph217, !llvm.loop !216

.critedge187:                                     ; preds = %bb.g, %bb.m, %bb.f, %bb.b, %bb.h, %bb.a, %bb.e, %bb.d, %bb.c
  %.1145 = phi ptr [ %i.w, %bb.m ], [ %2, %bb.a ], [ %2, %bb.e ], [ %2, %bb.d ], [ %2, %bb.c ], [ %1, %bb.b ], [ %2, %bb.h ], [ %2, %bb.f ], [ %2, %bb.g ] ; 3 uses
  %.0143 = phi ptr [ %1, %bb.m ], [ %1, %bb.a ], [ %1, %bb.e ], [ %1, %bb.d ], [ %1, %bb.c ], [ %2, %bb.b ], [ %1, %bb.h ], [ %1, %bb.f ], [ %1, %bb.g ] ; 3 uses
  %.1128 = phi ptr [ %i.w, %bb.m ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !142 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !143
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !144
  %i.ap = and i32 %i.ao, 8
  %.not163 = icmp eq i32 %i.ap, 0
  br i1 %.not163, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.critedge187
  %i.aq = load i32, ptr %i.ak, align 8, !tbaa !146 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 772
  %.not164 = icmp eq i32 %i.aq, 65536
  %or.cond = or i1 %i.ar, %.not164
  br i1 %or.cond, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !217
  %.not165 = icmp eq ptr %i.at, null
  br i1 %.not165, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.av = load i64, ptr %i.au, align 8, !tbaa !218 ; 5 uses
  %.not232 = icmp eq i64 %i.av, 0
  br i1 %.not232, label %.critedge, label %.lr.ph219

.lr.ph219:                                        ; preds = %.preheader
  %3 = trunc i64 %i.av to i32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph219, %ssl_has_cert.exit.thread
  %.0123218 = phi i64 [ 0, %.lr.ph219 ], [ %i.bj, %ssl_has_cert.exit.thread ] ; 5 uses
  %5 = trunc i64 %.0123218 to i32                 ; 2 uses
  %i.aw = icmp sgt i32 %5, -1
  %.not.i = icmp slt i32 %5, %3
  %or.cond204 = and i1 %i.aw, %.not.i
  br i1 %or.cond204, label %bb.q, label %ssl_has_cert.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ax = load i32, ptr %4, align 8, !tbaa !129
  %.not.i.i = icmp eq i32 %i.ax, 0                ; 2 uses
  %.09.in.v.i.i = select i1 %.not.i.i, i64 5968, i64 5984
  %.09.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i
  %.09.i.i = load ptr, ptr %.09.in.i.i, align 8, !tbaa !106 ; 2 uses
  %i.ay = icmp eq ptr %.09.i.i, null
  br i1 %i.ay, label %.ssl_has_cert_type.exit.thread.i_crit_edge, label %ssl_has_cert_type.exit.i

.ssl_has_cert_type.exit.thread.i_crit_edge:       ; preds = %bb.q
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %ssl_has_cert_type.exit.thread.i

ssl_has_cert_type.exit.i:                         ; preds = %bb.q
  %.0.in.v.i.i = select i1 %.not.i.i, i64 5976, i64 5992
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !210
  %i.az = tail call ptr @memchr(ptr noundef nonnull %.09.i.i, i32 noundef 2, i64 noundef %.0.i.i) #18
  %.not15.i = icmp eq ptr %i.az, null
  %.pre240 = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %.not15.i, label %ssl_has_cert_type.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %ssl_has_cert_type.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre240, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !219
  %6 = and i64 %.0123218, 2147483647
  %7 = getelementptr inbounds nuw [40 x i8], ptr %i.bb, i64 %6
  br label %ssl_has_cert.exit

ssl_has_cert_type.exit.thread.i:                  ; preds = %.ssl_has_cert_type.exit.thread.i_crit_edge, %ssl_has_cert_type.exit.i
  %i.bc = phi ptr [ %.pre, %.ssl_has_cert_type.exit.thread.i_crit_edge ], [ %.pre240, %ssl_has_cert_type.exit.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !219
  %8 = and i64 %.0123218, 2147483647
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !220
  %.not12.i = icmp eq ptr %i.bg, null
  br i1 %.not12.i, label %ssl_has_cert.exit.thread, label %ssl_has_cert.exit

ssl_has_cert.exit:                                ; preds = %bb.r, %ssl_has_cert_type.exit.thread.i
  %.sink.i = phi ptr [ %7, %bb.r ], [ %i.bf, %ssl_has_cert_type.exit.thread.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !221
  %.not205 = icmp eq ptr %i.bi, null
  br i1 %.not205, label %ssl_has_cert.exit.thread, label %.critedge.loopexit

ssl_has_cert.exit.thread:                         ; preds = %ssl_has_cert_type.exit.thread.i, %bb.p, %ssl_has_cert.exit
  %i.bj = add nuw i64 %.0123218, 1                ; 2 uses
  %exitcond239.not = icmp eq i64 %i.bj, %i.av
  br i1 %exitcond239.not, label %.critedge.loopexit, label %bb.p, !llvm.loop !222

.critedge.loopexit:                               ; preds = %ssl_has_cert.exit.thread, %ssl_has_cert.exit
  %.0123.lcssa.ph = phi i64 [ %.0123218, %ssl_has_cert.exit ], [ %i.av, %ssl_has_cert.exit.thread ]
  %i.bk = icmp ne i64 %.0123.lcssa.ph, %i.av
  br label %.critedge

bb.s:                                             ; preds = %bb.n, %.critedge187
  tail call void @tls1_set_cert_validity(ptr noundef nonnull %0) #17
  tail call void @ssl_set_masks(ptr noundef nonnull %0) #17
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %.critedge.loopexit, %bb.o, %bb.s
  %.1137 = phi i1 [ true, %bb.s ], [ true, %bb.o ], [ false, %.preheader ], [ %i.bk, %.critedge.loopexit ]
  %i.bl = tail call i32 @OPENSSL_sk_num(ptr noundef %.1145) #17
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph228, label %.loopexit

.lr.ph228:                                        ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1244
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph228, %.thread
  %.0131227 = phi i64 [ 0, %.lr.ph228 ], [ %.2.ph, %.thread ] ; 3 uses
  %.0133226 = phi i64 [ 0, %.lr.ph228 ], [ %.2135.ph, %.thread ] ; 3 uses
  %.3225 = phi i32 [ 0, %.lr.ph228 ], [ %i.en, %.thread ] ; 2 uses
  %.0146223 = phi ptr [ null, %.lr.ph228 ], [ %.4.ph, %.thread ] ; 12 uses
  %i.bu = tail call ptr @OPENSSL_sk_value(ptr noundef %.1145, i32 noundef %.3225) #17 ; 9 uses
  %i.bv = load ptr, ptr %i.aj, align 8, !tbaa !142
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 216
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !143
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !144
  %i.ca = and i32 %i.bz, 8
  %.not167 = icmp eq i32 %i.ca, 0                 ; 2 uses
  %.in.v = select i1 %.not167, i64 44, i64 52
  %.in = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.in.v
  %i.cb = load i32, ptr %.in, align 4, !tbaa !140
  %.in169.v = select i1 %.not167, i64 48, i64 56
  %.in169 = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.in169.v
  %i.cc = load i32, ptr %.in169, align 8, !tbaa !140
  %i.cd = load i32, ptr %i.bn, align 8, !tbaa !104
  %i.ce = tail call i32 @ssl_version_cmp(ptr noundef nonnull %0, i32 noundef %i.cd, i32 noundef %i.cb) #17
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load i32, ptr %i.bn, align 8, !tbaa !104
  %i.ch = tail call i32 @ssl_version_cmp(ptr noundef nonnull %0, i32 noundef %i.cg, i32 noundef %i.cc) #17
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = load ptr, ptr %i.aj, align 8, !tbaa !142 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 216
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !143
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !144
  %i.co = and i32 %i.cn, 8
  %.not170 = icmp eq i32 %i.co, 0
  br i1 %.not170, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.cj, align 8, !tbaa !146 ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 772
  %.not171 = icmp eq i32 %i.cp, 65536
  %or.cond188 = or i1 %i.cq, %.not171
  br i1 %or.cond188, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cr = load i32, ptr %i.bo, align 8, !tbaa !223
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i32, ptr %i.bp, align 4, !tbaa !224
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load i64, ptr %i.bq, align 8, !tbaa !225
  %i.cw = and i64 %i.cv, 32                       ; 2 uses
  %.0130 = or i64 %i.cw, %i.cs
  %i.cx = shl nuw nsw i64 %i.cw, 1
  %.0129 = or i64 %i.cx, %i.cu
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !226
  %i.da = zext i32 %i.cz to i64                   ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !131
  %i.dd = zext i32 %i.dc to i64                   ; 7 uses
  %i.de = and i64 %i.da, 456
  %.not173 = icmp eq i64 %i.de, 0
  br i1 %.not173, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = load ptr, ptr %i.br, align 8, !tbaa !217
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dh = and i64 %.0130, %i.da
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = and i64 %.0129, %i.dd
  %i.dk = icmp ne i64 %i.dj, 0
  %i.dl = select i1 %i.di, i1 %i.dk, i1 false     ; 2 uses
  %i.dm = and i64 %i.da, 258
  %.not174 = icmp ne i64 %i.dm, 0                 ; 2 uses
  %brmerge.not = select i1 %.not174, i1 %i.dl, i1 false
  %not..not174 = xor i1 %.not174, true
  %narrow = select i1 %not..not174, i1 %i.dl, i1 false
  br i1 %brmerge.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !8
  %i.dp = zext i32 %i.do to i64
  %i.dq = tail call i32 @tls1_check_ffdhe_tmp_key(ptr noundef nonnull %0, i64 noundef %i.dp) #17
  %i.dr = icmp ne i32 %i.dq, 0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.0138.in = phi i1 [ %narrow, %bb.z ], [ %i.dr, %bb.aa ] ; 2 uses
  %i.ds = and i64 %i.da, 132
  %.not175 = icmp eq i64 %i.ds, 0
  br i1 %.not175, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.0138.in, label %.split, label %.thread

.split:                                           ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !8
  %i.dv = zext i32 %i.du to i64
  %i.dw = tail call i32 @tls1_check_ec_tmp_key(ptr noundef nonnull %0, i64 noundef %i.dv) #17
  %.not253 = icmp eq i32 %i.dw, 0
  br i1 %.not253, label %.thread, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br i1 %.0138.in, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %.split, %bb.w, %bb.ad
  %.1134 = phi i64 [ %i.da, %bb.ad ], [ %.0133226, %bb.w ], [ %i.da, %.split ] ; 6 uses
  %.1132 = phi i64 [ %i.dd, %bb.ad ], [ %.0131227, %bb.w ], [ %i.dd, %.split ] ; 6 uses
  %i.dx = tail call i32 @OPENSSL_sk_find(ptr noundef %.0143, ptr noundef nonnull %i.bu) #17 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, -1
  br i1 %i.dy, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bu, i64 68
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !227
  %i.eb = tail call i32 @ssl_security(ptr noundef nonnull %0, i32 noundef 65538, i32 noundef %i.ea, i32 noundef 0, ptr noundef nonnull %i.bu) #17
  %.not178 = icmp eq i32 %i.eb, 0
  br i1 %.not178, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = and i64 %.1134, 4
  %.not179 = icmp eq i64 %i.ec, 0
  %i.ed = and i64 %.1132, 8
  %.not180 = icmp eq i64 %i.ed, 0
  %or.cond189 = select i1 %.not179, i1 true, i1 %.not180
  br i1 %or.cond189, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ee = load i8, ptr %i.bs, align 4, !tbaa !228
  %.not181 = icmp eq i8 %i.ee, 0
  br i1 %.not181, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not185 = icmp eq ptr %.0146223, null
  br i1 %.not185, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ef = tail call ptr @OPENSSL_sk_value(ptr noundef %.0143, i32 noundef %i.dx) #17
  br label %.thread

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.eg = tail call ptr @OPENSSL_sk_value(ptr noundef %.0143, i32 noundef %i.dx) #17 ; 4 uses
  br i1 %.1137, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = load ptr, ptr %i.bt, align 8, !tbaa !229
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !230
  %i.ek = tail call ptr @ssl_md(ptr noundef %i.eh, i32 noundef %i.ej) #17 ; 2 uses
  %.not183 = icmp eq ptr %i.ek, null
  br i1 %.not183, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.el = tail call i32 @EVP_MD_is_a(ptr noundef nonnull %i.ek, ptr noundef nonnull @.str.1) #17
  %.not184 = icmp eq i32 %i.el, 0
  br i1 %.not184, label %bb.an, label %.loopexit

end_hunk_0
