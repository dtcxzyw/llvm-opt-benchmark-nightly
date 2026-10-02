Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic-rcidm?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.quic_conn_id_st = type { i8, [20 x i8] }
%struct.ossl_quic_frame_new_conn_id_st = type { i64, i64, %struct.quic_conn_id_st, %struct.QUIC_STATELESS_RESET_TOKEN }
%struct.QUIC_STATELESS_RESET_TOKEN = type { [16 x i8] }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FuzzerInitialize(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @FuzzerSetRand() #4
  %i.a = tail call i32 @OPENSSL_init_crypto(i64 noundef 258, ptr noundef null) #4 ; 0 uses
  %i.b = tail call i32 @OPENSSL_init_ssl(i64 noundef 2097152, ptr noundef null) #4 ; 0 uses
  tail call void @ERR_clear_error() #4
  ret i32 1
}

declare void @FuzzerSetRand() local_unnamed_addr #1

declare i32 @OPENSSL_init_crypto(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OPENSSL_init_ssl(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_clear_error() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @FuzzerTestOneInput(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.quic_conn_id_st, align 1    ; 9 uses
  %3 = alloca %struct.quic_conn_id_st, align 1    ; 3 uses
  %4 = alloca %struct.ossl_quic_frame_new_conn_id_st, align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %PACKET_buf_init.exit.thread, label %PACKET_buf_init.exit

PACKET_buf_init.exit:                             ; preds = %bb.a
  %i.c = tail call ptr @ossl_quic_rcidm_new(ptr noundef null) #4 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %PACKET_buf_init.exit.thread, label %.preheader

.preheader:                                       ; preds = %PACKET_buf_init.exit
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %.not22135 = icmp eq i64 %1, 0
  br i1 %.not22135, label %PACKET_buf_init.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aa
  %.0138 = phi ptr [ %i.c, %.lr.ph ], [ %.1, %bb.aa ] ; 39 uses
  %.sroa.0.0137 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.1, %bb.aa ] ; 24 uses
  %.sroa.30.0136 = phi i64 [ %1, %.lr.ph ], [ %.sroa.30.1, %bb.aa ] ; 11 uses
  %i.i = load i8, ptr %.sroa.0.0137, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 1 ; 12 uses
  %i.k = add i64 %.sroa.30.0136, -1               ; 10 uses
  switch i8 %i.i, label %PACKET_buf_init.exit.thread [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.j
    i8 4, label %bb.m
    i8 5, label %bb.r
    i8 6, label %bb.s
    i8 7, label %bb.u
    i8 8, label %bb.v
    i8 9, label %bb.w
    i8 10, label %bb.x
    i8 11, label %bb.y
  ]

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %PACKET_buf_init.exit.thread, label %PACKET_get_1.exit.i

PACKET_get_1.exit.i:                              ; preds = %bb.c
  %i.l = load i8, ptr %i.j, align 1, !tbaa !10    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 2 ; 2 uses
  %i.n = add i64 %.sroa.30.0136, -2               ; 2 uses
  %i.o = icmp ugt i8 %i.l, 20
  br i1 %i.o, label %PACKET_buf_init.exit.thread, label %bb.d

bb.d:                                             ; preds = %PACKET_get_1.exit.i
  %i.p = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %PACKET_buf_init.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %i.m, i64 range(i64 0, 21) %i.p, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.s = sub nuw i64 %i.n, %i.p
  store i8 %i.l, ptr %2, align 1, !tbaa !12
  call void @ossl_quic_rcidm_free(ptr noundef %.0138) #4
  %i.t = call ptr @ossl_quic_rcidm_new(ptr noundef nonnull %2) #4 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %PACKET_buf_init.exit.thread, label %bb.aa

bb.f:                                             ; preds = %bb.b
  call void @ossl_quic_rcidm_free(ptr noundef %.0138) #4
  %i.v = call ptr @ossl_quic_rcidm_new(ptr noundef null) #4 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %PACKET_buf_init.exit.thread, label %bb.aa

bb.g:                                             ; preds = %bb.b
  %.not.i.i.i35 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i35, label %PACKET_buf_init.exit.thread, label %PACKET_get_1.exit.i36

PACKET_get_1.exit.i36:                            ; preds = %bb.g
  %i.x = load i8, ptr %i.j, align 1, !tbaa !10    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 2 ; 2 uses
  %i.z = add i64 %.sroa.30.0136, -2               ; 2 uses
  %i.aa = icmp ugt i8 %i.x, 20
  br i1 %i.aa, label %PACKET_buf_init.exit.thread, label %bb.h

bb.h:                                             ; preds = %PACKET_get_1.exit.i36
  %i.ab = zext nneg i8 %i.x to i64                ; 4 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %PACKET_buf_init.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %i.y, i64 range(i64 0, 21) %i.ab, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ae = sub nuw i64 %i.z, %i.ab
  store i8 %i.x, ptr %2, align 1, !tbaa !12
  %i.af = call i32 @ossl_quic_rcidm_add_from_initial(ptr noundef %.0138, ptr noundef nonnull %2) #4 ; 0 uses
  br label %bb.aa

bb.j:                                             ; preds = %bb.b
  %.not.i.i.i40 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i40, label %PACKET_buf_init.exit.thread, label %PACKET_get_1.exit.i41

PACKET_get_1.exit.i41:                            ; preds = %bb.j
  %i.ag = load i8, ptr %i.j, align 1, !tbaa !10   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 2 ; 2 uses
  %i.ai = add i64 %.sroa.30.0136, -2              ; 2 uses
  %i.aj = icmp ugt i8 %i.ag, 20
  br i1 %i.aj, label %PACKET_buf_init.exit.thread, label %bb.k

bb.k:                                             ; preds = %PACKET_get_1.exit.i41
  %i.ak = zext nneg i8 %i.ag to i64               ; 4 uses
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %PACKET_buf_init.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %i.ah, i64 range(i64 0, 21) %i.ak, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.an = sub nuw i64 %i.ai, %i.ak
  store i8 %i.ag, ptr %2, align 1, !tbaa !12
  %i.ao = call i32 @ossl_quic_rcidm_add_from_server_retry(ptr noundef %.0138, ptr noundef nonnull %2) #4 ; 0 uses
  br label %bb.aa

bb.m:                                             ; preds = %bb.b
  %i.ap = icmp ult i64 %.sroa.30.0136, 9
  br i1 %i.ap, label %PACKET_buf_init.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i8, ptr %i.j, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 56                   ; 2 uses
  store i64 %i.as, ptr %4, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 48
  %i.ax = or disjoint i64 %i.aw, %i.as            ; 2 uses
  store i64 %i.ax, ptr %4, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 40
  %i.bc = or disjoint i64 %i.bb, %i.ax            ; 2 uses
  store i64 %i.bc, ptr %4, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 4
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 32
  %i.bh = or disjoint i64 %i.bg, %i.bc            ; 2 uses
  store i64 %i.bh, ptr %4, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !10
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 24
  %i.bm = or disjoint i64 %i.bl, %i.bh            ; 2 uses
  store i64 %i.bm, ptr %4, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 16
  %i.br = or disjoint i64 %i.bq, %i.bm            ; 2 uses
  store i64 %i.br, ptr %4, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 7
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 8
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !10
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.bv, %i.by
  %i.ca = or i64 %i.bz, %i.br
  store i64 %i.ca, ptr %4, align 8, !tbaa !14
  %i.cb = icmp ult i64 %.sroa.30.0136, 17
  br i1 %i.cb, label %PACKET_buf_init.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 9
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw i64 %i.ce, 56                   ; 2 uses
  store i64 %i.cf, ptr %i.e, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 10
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 48
  %i.ck = or disjoint i64 %i.cj, %i.cf            ; 2 uses
  store i64 %i.ck, ptr %i.e, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 11
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = zext i8 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 40
  %i.cp = or disjoint i64 %i.co, %i.ck            ; 2 uses
  store i64 %i.cp, ptr %i.e, align 8, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 12
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 32
  %i.cu = or disjoint i64 %i.ct, %i.cp            ; 2 uses
  store i64 %i.cu, ptr %i.e, align 8, !tbaa !14
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 13
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !10
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 24
  %i.cz = or disjoint i64 %i.cy, %i.cu            ; 2 uses
  store i64 %i.cz, ptr %i.e, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 14
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 16
  %i.de = or disjoint i64 %i.dd, %i.cz            ; 2 uses
  store i64 %i.de, ptr %i.e, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 15
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !10
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 16
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.dl = zext i8 %i.dk to i64
  %i.dm = or disjoint i64 %i.di, %i.dl
  %i.dn = or i64 %i.dm, %i.de
  store i64 %i.dn, ptr %i.e, align 8, !tbaa !14
  %.not.i.i.i50 = icmp eq i64 %.sroa.30.0136, 17
  br i1 %.not.i.i.i50, label %PACKET_buf_init.exit.thread, label %PACKET_get_1.exit.i51

PACKET_get_1.exit.i51:                            ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 17
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10  ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 18 ; 2 uses
  %i.dr = add i64 %.sroa.30.0136, -18             ; 2 uses
  %i.ds = icmp ugt i8 %i.dp, 20
  br i1 %i.ds, label %PACKET_buf_init.exit.thread, label %bb.p

bb.p:                                             ; preds = %PACKET_get_1.exit.i51
  %i.dt = zext nneg i8 %i.dp to i64               ; 4 uses
  %i.du = icmp ult i64 %i.dr, %i.dt
  br i1 %i.du, label %PACKET_buf_init.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.dq, i64 range(i64 0, 21) %i.dt, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dt
  %i.dw = sub nuw i64 %i.dr, %i.dt
  store i8 %i.dp, ptr %i.g, align 8, !tbaa !12
  %i.dx = call i32 @ossl_quic_rcidm_add_from_ncid(ptr noundef %.0138, ptr noundef nonnull %4) #4 ; 0 uses
  br label %bb.aa

bb.r:                                             ; preds = %bb.b
  call void @ossl_quic_rcidm_on_handshake_complete(ptr noundef %.0138) #4
  br label %bb.aa

bb.s:                                             ; preds = %bb.b
  %i.dy = icmp ult i64 %.sroa.30.0136, 9
  br i1 %i.dy, label %PACKET_buf_init.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %5 = load i64, ptr %i.j, align 1
  %6 = call i64 @llvm.bswap.i64(i64 %5)
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 9
  %i.ea = add i64 %.sroa.30.0136, -9
  call void @ossl_quic_rcidm_on_packet_sent(ptr noundef %.0138, i64 noundef %6) #4
  br label %bb.aa

bb.u:                                             ; preds = %bb.b
  call void @ossl_quic_rcidm_request_roll(ptr noundef %.0138) #4
  br label %bb.aa

bb.v:                                             ; preds = %bb.b
  %i.eb = call i32 @ossl_quic_rcidm_pop_retire_seq_num(ptr noundef %.0138, ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %bb.aa

bb.w:                                             ; preds = %bb.b
  %i.ec = call i32 @ossl_quic_rcidm_peek_retire_seq_num(ptr noundef %.0138, ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %bb.aa

bb.x:                                             ; preds = %bb.b
  %i.ed = call i32 @ossl_quic_rcidm_get_preferred_tx_dcid(ptr noundef %.0138, ptr noundef nonnull %3) #4 ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %bb.b
  %.not.i.i58 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i58, label %PACKET_buf_init.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = load i8, ptr %i.j, align 1, !tbaa !10
  %i.ef = zext i8 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 2
  %i.eh = add i64 %.sroa.30.0136, -2
  %i.ei = call i32 @ossl_quic_rcidm_get_preferred_tx_dcid_changed(ptr noundef %.0138, i32 noundef %i.ef) #4 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.f, %bb.e, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.l, %bb.i
  %.sroa.30.1 = phi i64 [ %i.s, %bb.e ], [ %i.k, %bb.f ], [ %i.ae, %bb.i ], [ %i.an, %bb.l ], [ %i.dw, %bb.q ], [ %i.k, %bb.r ], [ %i.ea, %bb.t ], [ %i.k, %bb.u ], [ %i.k, %bb.v ], [ %i.k, %bb.w ], [ %i.k, %bb.x ], [ %i.eh, %bb.z ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.r, %bb.e ], [ %i.j, %bb.f ], [ %i.ad, %bb.i ], [ %i.am, %bb.l ], [ %i.dv, %bb.q ], [ %i.j, %bb.r ], [ %i.dz, %bb.t ], [ %i.j, %bb.u ], [ %i.j, %bb.v ], [ %i.j, %bb.w ], [ %i.j, %bb.x ], [ %i.eg, %bb.z ]
  %.1 = phi ptr [ %i.t, %bb.e ], [ %i.v, %bb.f ], [ %.0138, %bb.i ], [ %.0138, %bb.l ], [ %.0138, %bb.q ], [ %.0138, %bb.r ], [ %.0138, %bb.t ], [ %.0138, %bb.u ], [ %.0138, %bb.v ], [ %.0138, %bb.w ], [ %.0138, %bb.x ], [ %.0138, %bb.z ] ; 2 uses
  %.not22 = icmp eq i64 %.sroa.30.1, 0
  br i1 %.not22, label %PACKET_buf_init.exit.thread, label %bb.b, !llvm.loop !9

PACKET_buf_init.exit.thread:                      ; preds = %bb.e, %bb.f, %bb.aa, %bb.b, %bb.c, %PACKET_get_1.exit.i, %bb.d, %bb.g, %PACKET_get_1.exit.i36, %bb.h, %bb.j, %PACKET_get_1.exit.i41, %bb.k, %bb.m, %bb.n, %bb.o, %PACKET_get_1.exit.i51, %bb.p, %bb.s, %bb.y, %.preheader, %bb.a, %PACKET_buf_init.exit
  %.015 = phi i32 [ 0, %PACKET_buf_init.exit ], [ 0, %bb.a ], [ 0, %.preheader ], [ -1, %bb.s ], [ -1, %bb.o ], [ -1, %bb.n ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.m ], [ 0, %bb.f ], [ 0, %bb.aa ], [ -1, %PACKET_get_1.exit.i51 ], [ -1, %PACKET_get_1.exit.i41 ], [ -1, %PACKET_get_1.exit.i36 ], [ -1, %PACKET_get_1.exit.i ], [ 0, %bb.e ], [ -1, %bb.k ], [ -1, %bb.p ], [ -1, %bb.y ]
  %.2 = phi ptr [ null, %PACKET_buf_init.exit ], [ null, %bb.a ], [ %i.c, %.preheader ], [ %.0138, %bb.s ], [ %.0138, %bb.o ], [ %.0138, %bb.n ], [ %.0138, %bb.j ], [ %.0138, %bb.h ], [ %.0138, %bb.g ], [ %.0138, %bb.d ], [ %.0138, %bb.c ], [ %.0138, %bb.b ], [ %.0138, %bb.m ], [ null, %bb.f ], [ %.1, %bb.aa ], [ %.0138, %PACKET_get_1.exit.i51 ], [ %.0138, %PACKET_get_1.exit.i41 ], [ %.0138, %PACKET_get_1.exit.i36 ], [ %.0138, %PACKET_get_1.exit.i ], [ null, %bb.e ], [ %.0138, %bb.k ], [ %.0138, %bb.p ], [ %.0138, %bb.y ]
  call void @ossl_quic_rcidm_free(ptr noundef %.2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ossl_quic_rcidm_new(ptr noundef) local_unnamed_addr #1

declare void @ossl_quic_rcidm_free(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rcidm_add_from_initial(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rcidm_add_from_server_retry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rcidm_add_from_ncid(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_quic_rcidm_on_handshake_complete(ptr noundef) local_unnamed_addr #1

declare void @ossl_quic_rcidm_on_packet_sent(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ossl_quic_rcidm_request_roll(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rcidm_pop_retire_seq_num(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rcidm_peek_retire_seq_num(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rcidm_get_preferred_tx_dcid(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_rcidm_get_preferred_tx_dcid_changed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @FuzzerCleanup() local_unnamed_addr #0 {
bb.a:
  tail call void @FuzzerClearRand() #4
  ret void
}

declare void @FuzzerClearRand() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !15}
!10 = !{!5, !5, i64 0}
!11 = !{!"quic_conn_id_st", !5, i64 0, !5, i64 1}
!12 = !{!11, !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
