Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/statem_lib?download=true
inline.NumInlined: 104
inline.NumDeleted: 31
begin_hunk_0_@ssl_version_supported:bb.a

bb.i:                                             ; preds = %bb.g
  %i.at = icmp eq i32 %i.ak, 256
  %i.au = select i1 %i.at, i32 65280, i32 %i.ak
  %i.av = icmp sgt i32 %i.j, %i.au
  br i1 %i.av, label %ssl_version_cmp.exit44, label %.critedge

.thread:                                          ; preds = %.lr.ph.split
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !108
  %.not3348 = icmp eq i32 %i.aw, 0
  %.in49.v = select i1 %.not3348, i64 8, i64 16
  %.in49 = getelementptr inbounds nuw i8, ptr %.02859, i64 %.in49.v
  %i.ax = load ptr, ptr %.in49, align 8, !tbaa !128 ; 12 uses
  %.not3450 = icmp eq ptr %i.ax, null
  br i1 %.not3450, label %ssl_version_cmp.exit44, label %.thread51

.thread51:                                        ; preds = %.thread
  %i.ay = tail call ptr %i.ax() #10
  %i.az = tail call fastcc i32 @ssl_method_error(ptr noundef nonnull %0, ptr noundef %i.ay)
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.j, label %ssl_version_cmp.exit44

bb.j:                                             ; preds = %.thread51
  %i.bb = load i32, ptr %i.k, align 8, !tbaa !108
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %is_tls13_capable.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !99  ; 2 uses
  %.not.i45 = icmp eq ptr %i.bd, null
  br i1 %.not.i45, label %ssl_version_cmp.exit44, label %bb.l, !prof !224

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !113 ; 2 uses
  %.not21.i = icmp eq ptr %i.be, null
  br i1 %.not21.i, label %ssl_version_cmp.exit44, label %bb.m, !prof !224

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 552
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !225
  %.not22.i = icmp eq ptr %i.bg, null
  br i1 %.not22.i, label %bb.n, label %is_tls13_capable.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 552
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !225
  %.not23.i = icmp eq ptr %i.bi, null
  br i1 %.not23.i, label %bb.o, label %is_tls13_capable.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !226
  %.not24.i = icmp eq ptr %i.bj, null
  br i1 %.not24.i, label %bb.p, label %is_tls13_capable.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !227
  %.not25.i = icmp eq ptr %i.bk, null
  br i1 %.not25.i, label %bb.q, label %is_tls13_capable.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !195 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !228
  %.not26.i = icmp eq ptr %i.bn, null
  br i1 %.not26.i, label %.preheader.i, label %is_tls13_capable.exit.thread

.preheader.i:                                     ; preds = %bb.q
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !229 ; 7 uses
  %.not38.i = icmp eq i64 %i.bo, 0
  br i1 %.not38.i, label %ssl_version_cmp.exit44, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.bp = trunc i64 %i.bo to i32                  ; 3 uses
  %.not.i.peel.i = icmp sgt i32 %i.bp, 0
  br i1 %.not.i.peel.i, label %bb.s, label %ssl_has_cert.exit.thread.peel.i

bb.s:                                             ; preds = %bb.r
  %.09.i.i.peel.i = load ptr, ptr %.09.in.i.i.peel.i, align 8, !tbaa !85 ; 2 uses
  %i.bq = icmp eq ptr %.09.i.i.peel.i, null
  br i1 %i.bq, label %ssl_has_cert_type.exit.thread.i.peel.i, label %ssl_has_cert_type.exit.i.peel.i

ssl_has_cert_type.exit.i.peel.i:                  ; preds = %bb.s
  %.0.i.i.peel.i = load i64, ptr %.0.in.i.i.peel.i, align 8, !tbaa !79
  %i.br = tail call ptr @memchr(ptr noundef nonnull %.09.i.i.peel.i, i32 noundef 2, i64 noundef %.0.i.i.peel.i) #11
  %.not15.i.peel.i = icmp eq ptr %i.br, null
  br i1 %.not15.i.peel.i, label %ssl_has_cert_type.exit.thread.i.peel.i, label %bb.t

bb.t:                                             ; preds = %ssl_has_cert_type.exit.i.peel.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !230
  br label %ssl_has_cert.exit.peel.i

ssl_has_cert_type.exit.thread.i.peel.i:           ; preds = %ssl_has_cert_type.exit.i.peel.i, %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !230 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !191
  %.not12.i.peel.i = icmp eq ptr %i.bw, null
  br i1 %.not12.i.peel.i, label %ssl_has_cert.exit.thread.peel.i, label %ssl_has_cert.exit.peel.i

ssl_has_cert.exit.peel.i:                         ; preds = %ssl_has_cert_type.exit.thread.i.peel.i, %bb.t
  %.sink.i.peel.i = phi ptr [ %i.bt, %bb.t ], [ %i.bv, %ssl_has_cert_type.exit.thread.i.peel.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink.i.peel.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !123
  %.not32.peel.i = icmp eq ptr %i.by, null
  br i1 %.not32.peel.i, label %ssl_has_cert.exit.thread.peel.i, label %is_tls13_capable.exit.thread

ssl_has_cert.exit.thread.peel.i:                  ; preds = %ssl_has_cert.exit.peel.i, %ssl_has_cert_type.exit.thread.i.peel.i, %bb.r
  %.not109.i = icmp eq i64 %i.bo, 1
  br i1 %.not109.i, label %ssl_version_cmp.exit44, label %.peel.next.i

.peel.next.i:                                     ; preds = %ssl_has_cert.exit.thread.peel.i
  %.not.i.peel40.i = icmp sgt i32 %i.bp, 1
  br i1 %.not.i.peel40.i, label %bb.u, label %ssl_has_cert.exit.thread.peel58.i

bb.u:                                             ; preds = %.peel.next.i
  %.09.i.i.peel45.i = load ptr, ptr %.09.in.i.i.peel.i, align 8, !tbaa !85 ; 2 uses
  %i.bz = icmp eq ptr %.09.i.i.peel45.i, null
  br i1 %i.bz, label %ssl_has_cert_type.exit.thread.i.peel51.i, label %ssl_has_cert_type.exit.i.peel46.i

ssl_has_cert_type.exit.i.peel46.i:                ; preds = %bb.u
  %.0.i.i.peel49.i = load i64, ptr %.0.in.i.i.peel.i, align 8, !tbaa !79
  %i.ca = tail call ptr @memchr(ptr noundef nonnull %.09.i.i.peel45.i, i32 noundef 2, i64 noundef %.0.i.i.peel49.i) #11
  %.not15.i.peel50.i = icmp eq ptr %i.ca, null
  br i1 %.not15.i.peel50.i, label %ssl_has_cert_type.exit.thread.i.peel51.i, label %bb.v

bb.v:                                             ; preds = %ssl_has_cert_type.exit.i.peel46.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !230
  br label %ssl_has_cert.exit.peel53.i

ssl_has_cert_type.exit.thread.i.peel51.i:         ; preds = %ssl_has_cert_type.exit.i.peel46.i, %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !230 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !191
  %.not12.i.peel52.i = icmp eq ptr %i.cg, null
  br i1 %.not12.i.peel52.i, label %ssl_has_cert.exit.thread.peel58.i, label %ssl_has_cert.exit.peel53.i

ssl_has_cert.exit.peel53.i:                       ; preds = %ssl_has_cert_type.exit.thread.i.peel51.i, %bb.v
  %i.ch = phi ptr [ %i.cc, %bb.v ], [ %i.ce, %ssl_has_cert_type.exit.thread.i.peel51.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !123
  %.not32.peel55.i = icmp eq ptr %i.cj, null
  br i1 %.not32.peel55.i, label %ssl_has_cert.exit.thread.peel58.i, label %is_tls13_capable.exit.thread

ssl_has_cert.exit.thread.peel58.i:                ; preds = %ssl_has_cert.exit.peel53.i, %ssl_has_cert_type.exit.thread.i.peel51.i, %.peel.next.i
  %i.ck = icmp ult i64 %i.bo, 4
  br i1 %i.ck, label %ssl_version_cmp.exit44, label %.peel.next59.i

.peel.next59.i:                                   ; preds = %ssl_has_cert.exit.thread.peel58.i
  %.not.i.peel80.i = icmp sgt i32 %i.bp, 3
  br i1 %.not.i.peel80.i, label %bb.w, label %ssl_has_cert.exit.thread.peel98.i

bb.w:                                             ; preds = %.peel.next59.i
  %.09.i.i.peel85.i = load ptr, ptr %.09.in.i.i.peel.i, align 8, !tbaa !85 ; 2 uses
  %i.cl = icmp eq ptr %.09.i.i.peel85.i, null
  br i1 %i.cl, label %ssl_has_cert_type.exit.thread.i.peel91.i, label %ssl_has_cert_type.exit.i.peel86.i

ssl_has_cert_type.exit.i.peel86.i:                ; preds = %bb.w
  %.0.i.i.peel89.i = load i64, ptr %.0.in.i.i.peel.i, align 8, !tbaa !79
  %i.cm = tail call ptr @memchr(ptr noundef nonnull %.09.i.i.peel85.i, i32 noundef 2, i64 noundef %.0.i.i.peel89.i) #11
  %.not15.i.peel90.i = icmp eq ptr %i.cm, null
  br i1 %.not15.i.peel90.i, label %ssl_has_cert_type.exit.thread.i.peel91.i, label %bb.x

bb.x:                                             ; preds = %ssl_has_cert_type.exit.i.peel86.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !230
  br label %ssl_has_cert.exit.peel93.i

ssl_has_cert_type.exit.thread.i.peel91.i:         ; preds = %ssl_has_cert_type.exit.i.peel86.i, %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !230 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 120
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !191
  %.not12.i.peel92.i = icmp eq ptr %i.cs, null
  br i1 %.not12.i.peel92.i, label %ssl_has_cert.exit.thread.peel98.i, label %ssl_has_cert.exit.peel93.i

ssl_has_cert.exit.peel93.i:                       ; preds = %ssl_has_cert_type.exit.thread.i.peel91.i, %bb.x
  %i.ct = phi ptr [ %i.co, %bb.x ], [ %i.cq, %ssl_has_cert_type.exit.thread.i.peel91.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 128
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !123 ; 2 uses
  %.not32.peel95.i = icmp eq ptr %i.cv, null
  br i1 %.not32.peel95.i, label %ssl_has_cert.exit.thread.peel98.i, label %bb.y

bb.y:                                             ; preds = %ssl_has_cert.exit.peel93.i
  %i.cw = tail call i32 @ssl_get_EC_curve_nid(ptr noundef nonnull %i.cv) #10
  %i.cx = tail call i32 @tls_check_sigalg_curve(ptr noundef nonnull %0, i32 noundef %i.cw) #10
  %.not29.peel97.i = icmp eq i32 %i.cx, 0
  br i1 %.not29.peel97.i, label %.ssl_has_cert.exit.thread.peel98_crit_edge.i, label %is_tls13_capable.exit.thread

.ssl_has_cert.exit.thread.peel98_crit_edge.i:     ; preds = %bb.y
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !229
  br label %ssl_has_cert.exit.thread.peel98.i

ssl_has_cert.exit.thread.peel98.i:                ; preds = %.ssl_has_cert.exit.thread.peel98_crit_edge.i, %ssl_has_cert.exit.peel93.i, %ssl_has_cert_type.exit.thread.i.peel91.i, %.peel.next59.i
  %i.cy = phi i64 [ %.pre.i, %.ssl_has_cert.exit.thread.peel98_crit_edge.i ], [ %i.bo, %ssl_has_cert.exit.peel93.i ], [ %i.bo, %ssl_has_cert_type.exit.thread.i.peel91.i ], [ %i.bo, %.peel.next59.i ] ; 3 uses
  %i.cz = icmp ugt i64 %i.cy, 4
  br i1 %i.cz, label %.peel.next79.i, label %ssl_version_cmp.exit44

.peel.next79.i:                                   ; preds = %ssl_has_cert.exit.thread.peel98.i
  %3 = trunc i64 %i.cy to i32
  br label %bb.z

bb.z:                                             ; preds = %ssl_has_cert.exit.thread.i, %.peel.next79.i
  %.033.i = phi i64 [ 4, %.peel.next79.i ], [ %i.dn, %ssl_has_cert.exit.thread.i ] ; 5 uses
  switch i64 %.033.i, label %bb.aa [
    i64 2, label %ssl_has_cert.exit.thread.i
    i64 4, label %ssl_has_cert.exit.thread.i
    i64 5, label %ssl_has_cert.exit.thread.i
    i64 6, label %ssl_has_cert.exit.thread.i
  ]

bb.aa:                                            ; preds = %bb.z
  %4 = trunc i64 %.033.i to i32                   ; 2 uses
  %i.da = icmp sgt i32 %4, -1
  %.not.i.i = icmp slt i32 %4, %3
  %or.cond.i = and i1 %i.da, %.not.i.i
  br i1 %or.cond.i, label %bb.ab, label %ssl_has_cert.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.db = load i32, ptr %i.k, align 8, !tbaa !108
  %.not.i.i.i = icmp eq i32 %i.db, 0              ; 2 uses
  %.09.in.v.i.i.i = select i1 %.not.i.i.i, i64 5968, i64 5984
  %.09.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i.i
  %.09.i.i.i = load ptr, ptr %.09.in.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.dc = icmp eq ptr %.09.i.i.i, null
  br i1 %i.dc, label %.ssl_has_cert_type.exit.thread.i_crit_edge.i, label %ssl_has_cert_type.exit.i.i

.ssl_has_cert_type.exit.thread.i_crit_edge.i:     ; preds = %bb.ab
  %.pre103.i = load ptr, ptr %i.p, align 8, !tbaa !195
  br label %ssl_has_cert_type.exit.thread.i.i

ssl_has_cert_type.exit.i.i:                       ; preds = %bb.ab
  %.0.in.v.i.i.i = select i1 %.not.i.i.i, i64 5976, i64 5992
  %.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i.i
  %.0.i.i.i = load i64, ptr %.0.in.i.i.i, align 8, !tbaa !79
  %i.dd = tail call ptr @memchr(ptr noundef nonnull %.09.i.i.i, i32 noundef 2, i64 noundef %.0.i.i.i) #11
  %.not15.i.i = icmp eq ptr %i.dd, null
  %.pre104.i = load ptr, ptr %i.p, align 8, !tbaa !195 ; 2 uses
  br i1 %.not15.i.i, label %ssl_has_cert_type.exit.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %ssl_has_cert_type.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.pre104.i, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !230
  %5 = and i64 %.033.i, 2147483647
  %6 = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %5
  br label %ssl_has_cert.exit.i

ssl_has_cert_type.exit.thread.i.i:                ; preds = %ssl_has_cert_type.exit.i.i, %.ssl_has_cert_type.exit.thread.i_crit_edge.i
  %i.dg = phi ptr [ %.pre103.i, %.ssl_has_cert_type.exit.thread.i_crit_edge.i ], [ %.pre104.i, %ssl_has_cert_type.exit.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !230
  %7 = and i64 %.033.i, 2147483647
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %7 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !191
  %.not12.i.i = icmp eq ptr %i.dk, null
  br i1 %.not12.i.i, label %ssl_has_cert.exit.thread.i, label %ssl_has_cert.exit.i

ssl_has_cert.exit.i:                              ; preds = %ssl_has_cert_type.exit.thread.i.i, %bb.ac
  %.sink.i.i = phi ptr [ %6, %bb.ac ], [ %i.dj, %ssl_has_cert_type.exit.thread.i.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !123
  %.not32.i = icmp eq ptr %i.dm, null
  br i1 %.not32.i, label %ssl_has_cert.exit.thread.i, label %is_tls13_capable.exit.thread

ssl_has_cert.exit.thread.i:                       ; preds = %ssl_has_cert.exit.i, %ssl_has_cert_type.exit.thread.i.i, %bb.aa, %bb.z, %bb.z, %bb.z, %bb.z
  %i.dn = add nuw i64 %.033.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %i.cy
  br i1 %exitcond.not, label %ssl_version_cmp.exit44, label %bb.z, !llvm.loop !231

is_tls13_capable.exit.thread:                     ; preds = %.thread51.us, %bb.j, %bb.m, %bb.o, %bb.p, %bb.n, %bb.q, %bb.y, %ssl_has_cert.exit.peel.i, %ssl_has_cert.exit.peel53.i, %ssl_has_cert.exit.i
  %i.do = phi ptr [ %i.ax, %bb.j ], [ %i.ax, %ssl_has_cert.exit.i ], [ %i.ax, %ssl_has_cert.exit.peel53.i ], [ %i.ax, %ssl_has_cert.exit.peel.i ], [ %i.ax, %bb.y ], [ %i.ax, %bb.q ], [ %i.ax, %bb.n ], [ %i.ax, %bb.p ], [ %i.ax, %bb.o ], [ %i.ax, %bb.m ], [ %i.ae, %.thread51.us ]
  %.not36 = icmp eq ptr %2, null
  br i1 %.not36, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %is_tls13_capable.exit.thread
  %i.dp = tail call ptr %i.do() #10
  store ptr %i.dp, ptr %2, align 8, !tbaa !233
  br label %.critedge

ssl_version_cmp.exit44:                           ; preds = %ssl_has_cert.exit.thread.i, %bb.h, %bb.i, %ssl_has_cert.exit.thread.peel98.i, %ssl_has_cert.exit.thread.peel58.i, %ssl_has_cert.exit.thread.peel.i, %.preheader.i, %bb.l, %bb.k, %.thread, %.thread51
  %i.dq = getelementptr inbounds nuw i8, ptr %.02859, i64 24 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !101 ; 2 uses
  %.not = icmp eq i32 %i.dr, 0
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !223

.critedge:                                        ; preds = %ssl_version_cmp.exit44.us, %bb.e, %bb.f, %ssl_version_cmp.exit44, %bb.i, %bb.h, %bb.c, %is_tls13_capable.exit.thread, %bb.ad, %ssl_version_cmp.exit
  %.2 = phi i32 [ %i.g, %ssl_version_cmp.exit ], [ 1, %is_tls13_capable.exit.thread ], [ 1, %bb.ad ], [ 0, %ssl_version_cmp.exit44 ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %ssl_version_cmp.exit44.us ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 397) i32 @ssl_method_error(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !94     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2492
  %i.c = load i32, ptr %i.b, align 4, !tbaa !234  ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp eq i32 %i.a, %i.c
  %or.cond = select i1 %.not, i1 true, i1 %i.d
  br i1 %or.cond, label %ssl_version_cmp.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !92
  %i.k = and i32 %i.j, 8
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %i.a, %i.c
  br i1 %i.l, label %ssl_version_cmp.exit, label %ssl_version_cmp.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %i.a, 256
  %i.n = select i1 %i.m, i32 65280, i32 %i.a
  %i.o = icmp eq i32 %i.c, 256
  %i.p = select i1 %i.o, i32 65280, i32 %i.c
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %ssl_version_cmp.exit, label %ssl_version_cmp.exit.thread

ssl_version_cmp.exit.thread:                      ; preds = %bb.d, %bb.c, %bb.a
  %i.r = tail call i32 @ssl_security(ptr noundef nonnull %0, i32 noundef 9, i32 noundef 0, i32 noundef %i.a, ptr noundef null) #10
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %ssl_version_cmp.exit, label %bb.e

bb.e:                                             ; preds = %ssl_version_cmp.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.u = load i32, ptr %i.t, align 8, !tbaa !235  ; 5 uses
  %.not17 = icmp eq i32 %i.u, 0
  %i.v = icmp eq i32 %i.a, %i.u
  %or.cond29 = select i1 %.not17, i1 true, i1 %i.v
  br i1 %or.cond29, label %ssl_version_cmp.exit23.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !92
  %i.ac = and i32 %i.ab, 8
  %.not.i21 = icmp eq i32 %i.ac, 0
  br i1 %.not.i21, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp slt i32 %i.a, %i.u
  br i1 %i.ad, label %ssl_version_cmp.exit23.thread, label %ssl_version_cmp.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.a, 256
  %i.af = select i1 %i.ae, i32 65280, i32 %i.a
  %i.ag = icmp eq i32 %i.u, 256
  %i.ah = select i1 %i.ag, i32 65280, i32 %i.u
  %i.ai = icmp sgt i32 %i.af, %i.ah
  br i1 %i.ai, label %ssl_version_cmp.exit23.thread, label %ssl_version_cmp.exit

ssl_version_cmp.exit23.thread:                    ; preds = %bb.h, %bb.g, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !162
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !236
  %i.an = and i64 %i.am, %i.ak
  %.not18 = icmp eq i64 %i.an, 0
  br i1 %.not18, label %bb.i, label %ssl_version_cmp.exit

bb.i:                                             ; preds = %ssl_version_cmp.exit23.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !237
  %i.aq = and i32 %i.ap, 2
  %.not19 = icmp eq i32 %i.aq, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !195
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !238
  %i.av = and i32 %i.au, 196608
  %.not20 = icmp eq i32 %i.av, 0
  br i1 %.not20, label %bb.k, label %ssl_version_cmp.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %ssl_version_cmp.exit

ssl_version_cmp.exit:                             ; preds = %bb.d, %bb.c, %bb.g, %bb.h, %bb.j, %ssl_version_cmp.exit23.thread, %ssl_version_cmp.exit.thread, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ 158, %bb.j ], [ 396, %bb.c ], [ 258, %ssl_version_cmp.exit23.thread ], [ 396, %ssl_version_cmp.exit.thread ], [ 166, %bb.g ], [ 166, %bb.h ], [ 396, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ssl_check_version_downgrade(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239
  %i.e = load i32, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @TLS_method() #10
  %i.h = load i32, ptr %i.g, align 8, !tbaa !94
  %i.i = icmp eq i32 %i.e, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !239
  %i.k = load i32, ptr %i.j, align 8, !tbaa !94
  %i.l = tail call ptr @DTLS_method() #10
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ @tls_version_table, %bb.b ], [ @dtls_version_table, %bb.c ] ; 2 uses
  %i.o = load i32, ptr %.0, align 16, !tbaa !101  ; 2 uses
  %.not19 = icmp eq i32 %i.o, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.p = phi i32 [ %i.z, %bb.g ], [ %i.o, %bb.d ]
  %.01320 = phi ptr [ %i.y, %bb.g ], [ %.0, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01320, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !240  ; 2 uses
  %.not17 = icmp eq ptr %i.r, null
  br i1 %.not17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = tail call ptr %i.r() #10
  %i.t = tail call fastcc i32 @ssl_method_error(ptr noundef %0, ptr noundef %i.s)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.a, align 8, !tbaa !97
  %i.w = icmp eq i32 %i.v, %i.p
  %i.x = zext i1 %i.w to i32
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.01320, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !101  ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !241

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.c, %bb.a, %bb.f
  %.014 = phi i32 [ 1, %bb.a ], [ %i.x, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i32 %.014
}

declare ptr @TLS_method() local_unnamed_addr #2

declare ptr @DTLS_method() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
end_hunk_0
