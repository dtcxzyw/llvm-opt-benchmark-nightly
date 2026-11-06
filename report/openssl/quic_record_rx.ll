Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_record_rx?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.quic_conn_id_st = type { i8, [20 x i8] }
%struct.PACKET = type { ptr, ptr, i64 }
%struct.quic_pkt_hdr_ptrs_st = type { ptr, ptr, i64, ptr }

@.str = private unnamed_addr constant [26 x i8] c"ssl/quic/quic_record_rx.c\00", align 1
@__const.qrx_process_datagram.first_dcid = private unnamed_addr constant %struct.quic_conn_id_st { i8 -1, [20 x i8] zeroinitializer }, align 1
@switch.table.qrx_validate_hdr_late = private unnamed_addr constant [4 x i8] c"\02\01\00\02", align 8

; Function Attrs: nounwind uwtable
define noalias ptr @ossl_qrx_new(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !92
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 1088, ptr noundef nonnull @.str, i32 noundef 202) #12 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa !14
  %i.k = load <2 x ptr>, ptr %0, align 8, !tbaa !93
  store <2 x ptr> %i.k, ptr %i.g, align 8, !tbaa !93
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i8, ptr %i.p, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1056
  store i8 %i.q, ptr %i.r, align 8, !tbaa !23
  %i.s = load <2 x i64>, ptr %i.n, align 8, !tbaa !14
  store <2 x i64> %i.s, ptr %i.o, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b, %.preheader
  %.022 = phi ptr [ %i.g, %.preheader ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_qrx_update_pn_space(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((144, 168)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.c, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.e, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.h, ptr %i.i, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_qrx_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !24 ; 3 uses
  %.not7.i = icmp eq ptr %.val.i, null
  br i1 %.not7.i, label %qrx_cleanup_rxl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %ossl_list_rxe_remove.exit.i, %.lr.ph.i
  %i.e = phi ptr [ %.val.i, %.lr.ph.i ], [ %.pre, %ossl_list_rxe_remove.exit.i ]
  %.08.i = phi ptr [ %.val.i, %.lr.ph.i ], [ %.0.val.i, %ossl_list_rxe_remove.exit.i ] ; 6 uses
  %i.f = getelementptr i8, ptr %.08.i, i64 72     ; 3 uses
  %.0.val.i = load ptr, ptr %i.f, align 8, !tbaa !34 ; 5 uses
  %i.g = icmp eq ptr %i.e, %.08.i
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %.0.val.i, ptr %i.b, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.i = icmp eq ptr %i.h, %.08.i
  %i.j = getelementptr inbounds nuw i8, ptr %.08.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 4 uses
  br i1 %i.i, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.k, ptr %i.c, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %.0.val.i, ptr %i.l, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.not18.i.i = icmp eq ptr %.0.val.i, null
  br i1 %.not18.i.i, label %._crit_edge.loopexit.critedge.i, label %ossl_list_rxe_remove.exit.i

ossl_list_rxe_remove.exit.i:                      ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 80
  store ptr %i.k, ptr %i.m, align 8, !tbaa !36
  %i.n = load i64, ptr %i.d, align 8, !tbaa !37
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.d, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @CRYPTO_free(ptr noundef nonnull %.08.i, ptr noundef nonnull @.str, i32 noundef 225) #12
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !24
  br label %bb.c, !llvm.loop !95

._crit_edge.loopexit.critedge.i:                  ; preds = %bb.h
  %i.p = load i64, ptr %i.d, align 8, !tbaa !37
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.d, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @CRYPTO_free(ptr noundef nonnull %.08.i, ptr noundef nonnull @.str, i32 noundef 225) #12
  br label %qrx_cleanup_rxl.exit

qrx_cleanup_rxl.exit:                             ; preds = %bb.b, %._crit_edge.loopexit.critedge.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.val.i12 = load ptr, ptr %i.r, align 8, !tbaa !24 ; 3 uses
  %.not7.i13 = icmp eq ptr %.val.i12, null
  br i1 %.not7.i13, label %qrx_cleanup_rxl.exit22, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %qrx_cleanup_rxl.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %ossl_list_rxe_remove.exit.i20, %.lr.ph.i14
  %i.u = phi ptr [ %.val.i12, %.lr.ph.i14 ], [ %.pre44, %ossl_list_rxe_remove.exit.i20 ]
  %.08.i15 = phi ptr [ %.val.i12, %.lr.ph.i14 ], [ %.0.val.i16, %ossl_list_rxe_remove.exit.i20 ] ; 6 uses
  %i.v = getelementptr i8, ptr %.08.i15, i64 72   ; 3 uses
  %.0.val.i16 = load ptr, ptr %i.v, align 8, !tbaa !34 ; 5 uses
  %i.w = icmp eq ptr %i.u, %.08.i15
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %.0.val.i16, ptr %i.r, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.y = icmp eq ptr %i.x, %.08.i15
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i15, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 4 uses
  br i1 %i.y, label %bb.l, label %._crit_edge.i.i17

bb.l:                                             ; preds = %bb.k
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !35
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %bb.l, %bb.k
  %.not.i.i18 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store ptr %.0.val.i16, ptr %i.ab, align 8, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i17
  %.not18.i.i19 = icmp eq ptr %.0.val.i16, null
  br i1 %.not18.i.i19, label %._crit_edge.loopexit.critedge.i21, label %ossl_list_rxe_remove.exit.i20

ossl_list_rxe_remove.exit.i20:                    ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val.i16, i64 80
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !36
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !37
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.t, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  tail call void @CRYPTO_free(ptr noundef nonnull %.08.i15, ptr noundef nonnull @.str, i32 noundef 225) #12
  %.pre44 = load ptr, ptr %i.r, align 8, !tbaa !24
  br label %bb.i, !llvm.loop !95

._crit_edge.loopexit.critedge.i21:                ; preds = %bb.n
  %i.af = load i64, ptr %i.t, align 8, !tbaa !37
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  tail call void @CRYPTO_free(ptr noundef nonnull %.08.i15, ptr noundef nonnull @.str, i32 noundef 225) #12
  br label %qrx_cleanup_rxl.exit22

qrx_cleanup_rxl.exit22:                           ; preds = %qrx_cleanup_rxl.exit, %._crit_edge.loopexit.critedge.i21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.val.i23 = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 3 uses
  %.not8.i = icmp eq ptr %.val.i23, null
  br i1 %.not8.i, label %qrx_cleanup_urxl.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %qrx_cleanup_rxl.exit22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %ossl_list_urxe_remove.exit.i, %.lr.ph.i24
  %i.al = phi ptr [ %.val.i23, %.lr.ph.i24 ], [ %.pre45, %ossl_list_urxe_remove.exit.i ]
  %.09.i = phi ptr [ %.val.i23, %.lr.ph.i24 ], [ %.0.val.i25, %ossl_list_urxe_remove.exit.i ] ; 8 uses
  %.0.val.i25 = load ptr, ptr %.09.i, align 8, !tbaa !42 ; 5 uses
  %i.am = icmp eq ptr %i.al, %.09.i
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %.0.val.i25, ptr %i.ah, align 8, !tbaa !39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ao = icmp eq ptr %i.an, %.09.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 4 uses
  br i1 %i.ao, label %bb.r, label %._crit_edge.i.i26

bb.r:                                             ; preds = %bb.q
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !43
  br label %._crit_edge.i.i26

._crit_edge.i.i26:                                ; preds = %bb.r, %bb.q
  %.not.i.i27 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i26
  store ptr %.0.val.i25, ptr %i.aq, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i26
  %.not18.i.i28 = icmp eq ptr %.0.val.i25, null
  br i1 %.not18.i.i28, label %._crit_edge.loopexit.critedge.i29, label %ossl_list_urxe_remove.exit.i

ossl_list_urxe_remove.exit.i:                     ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.val.i25, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !44
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !22
  tail call void @ossl_quic_demux_release_urxe(ptr noundef %i.au, ptr noundef nonnull %.09.i) #12
  %.pre45 = load ptr, ptr %i.ah, align 8, !tbaa !39
  br label %bb.o, !llvm.loop !96

._crit_edge.loopexit.critedge.i29:                ; preds = %bb.t
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.aw = add i64 %i.av, -1
  store i64 %i.aw, ptr %i.aj, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i, i8 0, i64 16, i1 false)
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !22
  tail call void @ossl_quic_demux_release_urxe(ptr noundef %i.ax, ptr noundef nonnull %.09.i) #12
  br label %qrx_cleanup_urxl.exit

qrx_cleanup_urxl.exit:                            ; preds = %qrx_cleanup_rxl.exit22, %._crit_edge.loopexit.critedge.i29
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.val.i30 = load ptr, ptr %i.ay, align 8, !tbaa !39 ; 3 uses
  %.not8.i31 = icmp eq ptr %.val.i30, null
  br i1 %.not8.i31, label %qrx_cleanup_urxl.exit40, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %qrx_cleanup_urxl.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %ossl_list_urxe_remove.exit.i38, %.lr.ph.i32
  %i.bc = phi ptr [ %.val.i30, %.lr.ph.i32 ], [ %.pre46, %ossl_list_urxe_remove.exit.i38 ]
  %.09.i33 = phi ptr [ %.val.i30, %.lr.ph.i32 ], [ %.0.val.i34, %ossl_list_urxe_remove.exit.i38 ] ; 8 uses
  %.0.val.i34 = load ptr, ptr %.09.i33, align 8, !tbaa !42 ; 5 uses
  %i.bd = icmp eq ptr %i.bc, %.09.i33
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %.0.val.i34, ptr %i.ay, align 8, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bf = icmp eq ptr %i.be, %.09.i33
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i33, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !44 ; 4 uses
  br i1 %i.bf, label %bb.x, label %._crit_edge.i.i35

bb.x:                                             ; preds = %bb.w
  store ptr %i.bh, ptr %i.az, align 8, !tbaa !43
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %bb.x, %bb.w
  %.not.i.i36 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i36, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i35
  store ptr %.0.val.i34, ptr %i.bh, align 8, !tbaa !42
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i35
  %.not18.i.i37 = icmp eq ptr %.0.val.i34, null
  br i1 %.not18.i.i37, label %._crit_edge.loopexit.critedge.i39, label %ossl_list_urxe_remove.exit.i38

ossl_list_urxe_remove.exit.i38:                   ; preds = %bb.z
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.val.i34, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !44
  %i.bj = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %i.ba, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i33, i8 0, i64 16, i1 false)
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !22
  tail call void @ossl_quic_demux_release_urxe(ptr noundef %i.bl, ptr noundef nonnull %.09.i33) #12
  %.pre46 = load ptr, ptr %i.ay, align 8, !tbaa !39
  br label %bb.u, !llvm.loop !96

._crit_edge.loopexit.critedge.i39:                ; preds = %bb.z
  %i.bm = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.ba, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i33, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !22
  tail call void @ossl_quic_demux_release_urxe(ptr noundef %i.bo, ptr noundef nonnull %.09.i33) #12
  br label %qrx_cleanup_urxl.exit40

qrx_cleanup_urxl.exit40:                          ; preds = %qrx_cleanup_urxl.exit, %._crit_edge.loopexit.critedge.i39
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.bp, i32 noundef 0) #12
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.bp, i32 noundef 1) #12
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.bp, i32 noundef 2) #12
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.bp, i32 noundef 3) #12
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 267) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %qrx_cleanup_urxl.exit40
  ret void
}

declare void @ossl_qrl_enc_level_set_discard(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ossl_qrx_inject_urxe(ptr nofree noundef captures(none) %0, ptr noundef initializes((32, 48), (288, 289)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i8 0, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.e, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !44
  store ptr null, ptr %1, align 8, !tbaa !42
  store ptr %1, ptr %i.d, align 8, !tbaa !43
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %ossl_list_urxe_insert_tail.exit

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.c, align 8, !tbaa !39
  br label %ossl_list_urxe_insert_tail.exit

ossl_list_urxe_insert_tail.exit:                  ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !45
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ossl_list_urxe_insert_tail.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  tail call void %i.m(i32 noundef 0, i32 noundef 1, i32 noundef 512, ptr noundef nonnull %i.n, i64 noundef %i.p, ptr noundef %i.r, ptr noundef %i.t) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ossl_list_urxe_insert_tail.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ossl_qrx_inject_pkt(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.ossl_qrx_pkt_orphan.exit_crit_edge, label %bb.b

.ossl_qrx_pkt_orphan.exit_crit_edge:              ; preds = %bb.a
  %.pre = load i64, ptr inttoptr (i64 104 to ptr), align 8, !tbaa !51
  br label %ossl_qrx_pkt_orphan.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !51
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !51
  br label %ossl_qrx_pkt_orphan.exit

ossl_qrx_pkt_orphan.exit:                         ; preds = %.ossl_qrx_pkt_orphan.exit_crit_edge, %bb.b
  %i.e = phi i64 [ %.pre, %.ossl_qrx_pkt_orphan.exit_crit_edge ], [ %i.d, %bb.b ]
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.g, !prof !52

bb.c:                                             ; preds = %ossl_qrx_pkt_orphan.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.j, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.i, ptr %i.l, align 8, !tbaa !36
  store ptr null, ptr %i.k, align 8, !tbaa !34
  store ptr %1, ptr %i.h, align 8, !tbaa !35
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %ossl_list_rxe_insert_tail.exit

bb.f:                                             ; preds = %bb.e
  store ptr %1, ptr %i.g, align 8, !tbaa !24
  br label %ossl_list_rxe_insert_tail.exit

ossl_list_rxe_insert_tail.exit:                   ; preds = %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %ossl_list_rxe_insert_tail.exit, %ossl_qrx_pkt_orphan.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_qrx_pkt_orphan(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !51
  %i.d = add i64 %i.c, -1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_qrx_validate_initial_packet(ptr noundef %0, ptr noundef initializes((32, 48), (288, 289)) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PACKET, align 8             ; 9 uses
  %4 = alloca %struct.PACKET, align 8             ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.quic_pkt_hdr_ptrs_st, align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i8 0, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 -1, ptr %i.b, align 8, !tbaa !14
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %qrx_validate_initial_pkt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !54
  store ptr %i.i, ptr %3, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.g, ptr %i.k, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !58
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %.val8.i.i = load ptr, ptr %i.l, align 8, !tbaa !24 ; 2 uses
  %.not.i.i = icmp eq ptr %.val8.i.i, null
  br i1 %.not.i.i, label %bb.c, label %qrx_ensure_free_rxe.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %i.g, 464
  %i.n = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.m, ptr noundef nonnull @.str, i32 noundef 564) #12 ; 10 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %qrx_validate_initial_pkt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i64 %i.g, ptr %i.q, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i64 0, ptr %i.r, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 0, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.n, ptr %i.v, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.u, ptr %i.w, align 8, !tbaa !36
  store ptr null, ptr %i.p, align 8, !tbaa !34
  store ptr %i.n, ptr %i.t, align 8, !tbaa !35
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %ossl_list_rxe_insert_tail.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.n, ptr %i.l, align 8, !tbaa !24
  br label %ossl_list_rxe_insert_tail.exit.i.i

ossl_list_rxe_insert_tail.exit.i.i:               ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !37
  br label %qrx_ensure_free_rxe.exit.i

qrx_ensure_free_rxe.exit.i:                       ; preds = %ossl_list_rxe_insert_tail.exit.i.i, %bb.b
  %.0.i47.i = phi ptr [ %.val8.i.i, %bb.b ], [ %i.n, %ossl_list_rxe_insert_tail.exit.i.i ] ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 112 ; 3 uses
  %i.ad = call i32 @ossl_quic_wire_decode_pkt_hdr(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.ac, ptr noundef nonnull %5, ptr noundef null) #12
  %.not35.i = icmp eq i32 %i.ad, 0
  br i1 %.not35.i, label %qrx_validate_initial_pkt.exit, label %bb.h

bb.h:                                             ; preds = %qrx_ensure_free_rxe.exit.i
  %i.ae = load i32, ptr %i.ac, align 8
  %i.af = and i32 %i.ae, 255
  %.not36.i = icmp eq i32 %i.af, 1
  br i1 %.not36.i, label %bb.i, label %qrx_validate_initial_pkt.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 116
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !61
  %switch.i.i = icmp ult i32 %i.ah, 2
  br i1 %switch.i.i, label %qrx_validate_hdr_early.exit.i, label %qrx_validate_initial_pkt.exit

qrx_validate_hdr_early.exit.i:                    ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aj = call i32 @ossl_qrl_enc_level_set_have_el(ptr noundef nonnull %i.ai, i32 noundef 0) #12
  %.not38.i = icmp eq i32 %i.aj, 1
  br i1 %.not38.i, label %bb.j, label %qrx_validate_initial_pkt.exit

bb.j:                                             ; preds = %qrx_validate_hdr_early.exit.i
  %i.ak = load i32, ptr %i.ac, align 8
  %i.al = and i32 %i.ak, 255
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i47.i, i64 176
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !63 ; 4 uses
  %.not.i49.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i49.i, label %qrx_relocate_buffer.exit.thread42.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = call fastcc ptr @qrx_reserve_rxe(ptr noundef nonnull %i.l, ptr noundef nonnull %.0.i47.i, i64 noundef %i.aq) ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %qrx_validate_initial_pkt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 464 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.ao, i64 %i.aq, i1 false)
  br label %qrx_relocate_buffer.exit.thread42.i

qrx_relocate_buffer.exit.thread42.i:              ; preds = %bb.m, %bb.k
  %.025.ph.i = phi ptr [ %i.ar, %bb.m ], [ %.0.i47.i, %bb.k ] ; 2 uses
  %.023.ph.i = phi ptr [ %i.at, %bb.m ], [ %i.ao, %bb.k ]
  %i.au = getelementptr inbounds nuw i8, ptr %.025.ph.i, i64 168
  store ptr %.023.ph.i, ptr %i.au, align 8, !tbaa !62
  br label %bb.n

bb.n:                                             ; preds = %qrx_relocate_buffer.exit.thread42.i, %bb.j
  %.126.i = phi ptr [ %.025.ph.i, %qrx_relocate_buffer.exit.thread42.i ], [ %.0.i47.i, %bb.j ] ; 5 uses
  %.1.i = phi i64 [ %i.aq, %qrx_relocate_buffer.exit.thread42.i ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !58
  %i.av = call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.ai, i32 noundef 0, i32 noundef 1) #12
  %i.aw = call i32 @ossl_quic_hdr_protector_decrypt(ptr noundef %i.av, ptr noundef nonnull %5) #12
  %.not40.i = icmp eq i32 %i.aw, 0
  br i1 %.not40.i, label %qrx_validate_initial_pkt.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !14
  %i.ay = or i64 %i.ax, 1
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %.126.i, i64 112
  %i.ba = call i32 @ossl_quic_wire_decode_pkt_hdr(ptr noundef nonnull %3, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.az, ptr noundef null, ptr noundef null) #12
  %.not41.i = icmp eq i32 %i.ba, 1
  br i1 %.not41.i, label %bb.p, label %qrx_validate_initial_pkt.exit

bb.p:                                             ; preds = %bb.o
  %i.bb = call fastcc i32 @qrx_validate_hdr(ptr noundef nonnull %0, ptr noundef nonnull %.126.i)
  %.not42.i = icmp eq i32 %i.bb, 0
  br i1 %.not42.i, label %qrx_validate_initial_pkt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %.126.i, i64 192
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %.126.i, i64 184
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !65
  %i.bg = add i64 %i.bf, %.1.i
  %i.bh = call fastcc ptr @qrx_reserve_rxe(ptr noundef nonnull %i.l, ptr noundef nonnull %.126.i, i64 noundef %i.bg) ; 20 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %qrx_validate_initial_pkt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = ptrtoint ptr %i.bd to i64
  %i.bk = ptrtoint ptr %i.i to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 464
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.1.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 112 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 192 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 184 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !65
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 200 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !66
  %i.bv = load i32, ptr %i.bo, align 8
  %i.bw = lshr i32 %i.bv, 9
  %i.bx = trunc i32 %i.bw to i8
  %i.by = and i8 %i.bx, 1
  %i.bz = call fastcc i32 @qrx_decrypt_pkt_body(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, ptr noundef %i.bq, i64 noundef %i.bs, ptr noundef %i.a, ptr noundef nonnull %i.i, i64 noundef %i.bl, i64 noundef %i.bu, i32 noundef 0, i8 noundef zeroext %i.by, ptr noundef %i.b)
  %.not43.i = icmp eq i32 %i.bz, 0
  br i1 %.not43.i, label %qrx_validate_initial_pkt.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = call fastcc i32 @qrx_validate_hdr_late(ptr noundef nonnull %0, ptr noundef nonnull %i.bh)
  %.not44.i = icmp eq i32 %i.ca, 0
  br i1 %.not44.i, label %qrx_validate_initial_pkt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !14
  %i.cc = or i64 %i.cb, 1
  store i64 %i.cc, ptr %i.c, align 8, !tbaa !14
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !64
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  store i64 %i.cd, ptr %i.br, align 8, !tbaa !65
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !60
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 440
  store i64 %i.g, ptr %i.cf, align 8, !tbaa !67
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 448
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !68
  %.val46.i = load i32, ptr %i.bo, align 8
  %trunc.i.i.i = trunc i32 %.val46.i to i8
  %switch.tableidx = add i8 %trunc.i.i.i, -2      ; 2 uses
  %i.ci = icmp ult i8 %switch.tableidx, 4
  br i1 %i.ci, label %switch.lookup, label %rxe_determine_pn_space.exit.i

switch.lookup:                                    ; preds = %bb.t
  %i.cj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.qrx_validate_hdr_late, i64 %i.cj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %rxe_determine_pn_space.exit.i

rxe_determine_pn_space.exit.i:                    ; preds = %bb.t, %switch.lookup
  %.0.i1.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.t ]
  %i.ck = load i64, ptr %i.bt, align 8, !tbaa !66 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.0.i1.i.i ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !14
  %i.co = icmp ugt i64 %i.ck, %i.cn
  br i1 %i.co, label %bb.u, label %bb.v

bb.u:                                             ; preds = %rxe_determine_pn_space.exit.i
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %rxe_determine_pn_space.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cp, ptr noundef nonnull align 8 dereferenceable(112) %i.cq, i64 112, i1 false), !tbaa.struct !70
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bh, i64 320
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cr, ptr noundef nonnull align 8 dereferenceable(112) %i.cs, i64 112, i1 false), !tbaa.struct !70
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 432
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !14
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !71
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bh, i64 456
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !72
  call fastcc void @ossl_list_rxe_remove(ptr noundef nonnull %i.l, ptr noundef nonnull %i.bh)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !35 ; 3 uses
  %.not.i51.i = icmp eq ptr %i.db, null
  br i1 %.not.i51.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  store ptr %i.bh, ptr %i.dc, align 8, !tbaa !34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.de = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  store ptr %i.db, ptr %i.de, align 8, !tbaa !36
  store ptr null, ptr %i.dd, align 8, !tbaa !34
  store ptr %i.bh, ptr %i.da, align 8, !tbaa !35
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !24
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.y, label %ossl_list_rxe_insert_tail.exit.i

bb.y:                                             ; preds = %bb.x
  store ptr %i.bh, ptr %i.cz, align 8, !tbaa !24
  br label %ossl_list_rxe_insert_tail.exit.i

ossl_list_rxe_insert_tail.exit.i:                 ; preds = %bb.y, %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !37
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !37
  br label %qrx_validate_initial_pkt.exit

qrx_validate_initial_pkt.exit:                    ; preds = %bb.a, %bb.c, %qrx_ensure_free_rxe.exit.i, %bb.h, %bb.i, %qrx_validate_hdr_early.exit.i, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %ossl_list_rxe_insert_tail.exit.i
  %.031.i = phi i32 [ 0, %bb.l ], [ 1, %ossl_list_rxe_insert_tail.exit.i ], [ 0, %bb.a ], [ 0, %qrx_ensure_free_rxe.exit.i ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %qrx_validate_hdr_early.exit.i ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.031.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_qrx_provide_secret(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 3
  br i1 %i.a, label %qrx_requeue_deferred.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %0, align 8, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.g = load i8, ptr %i.f, align 8, !tbaa !23
  %i.h = tail call i32 @ossl_qrl_enc_level_set_provide_secret(ptr noundef nonnull %i.b, ptr noundef %i.c, ptr noundef %i.e, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i8 noundef zeroext %i.g, i32 noundef 0) #12
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %qrx_requeue_deferred.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.val6.i = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.not7.i = icmp eq ptr %.val6.i, null
  br i1 %.not7.i, label %qrx_requeue_deferred.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %ossl_list_urxe_insert_tail.exit.i, %.lr.ph.i
  %.val8.i = phi ptr [ %.val6.i, %.lr.ph.i ], [ %.val.i, %ossl_list_urxe_insert_tail.exit.i ] ; 8 uses
  %i.o = load ptr, ptr %.val8.i, align 8, !tbaa !42 ; 4 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.q = icmp eq ptr %i.p, %.val8.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 4 uses
  br i1 %i.q, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.s, ptr %i.j, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  store ptr %i.o, ptr %i.s, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.not18.i.i = icmp eq ptr %i.o, null
  br i1 %.not18.i.i, label %ossl_list_urxe_remove.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !44
  br label %ossl_list_urxe_remove.exit.i

ossl_list_urxe_remove.exit.i:                     ; preds = %bb.h, %bb.g
  %i.u = load i64, ptr %i.k, align 8, !tbaa !45
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.k, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.val8.i, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !43   ; 3 uses
  %.not.i5.i = icmp eq ptr %i.w, null
  br i1 %.not.i5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %ossl_list_urxe_remove.exit.i
  store ptr %.val8.i, ptr %i.w, align 8, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ossl_list_urxe_remove.exit.i
  store ptr %i.w, ptr %i.r, align 8, !tbaa !44
  store ptr null, ptr %.val8.i, align 8, !tbaa !42
  store ptr %.val8.i, ptr %i.m, align 8, !tbaa !43
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.k, label %ossl_list_urxe_insert_tail.exit.i

bb.k:                                             ; preds = %bb.j
  store ptr %.val8.i, ptr %i.l, align 8, !tbaa !39
  br label %ossl_list_urxe_insert_tail.exit.i

ossl_list_urxe_insert_tail.exit.i:                ; preds = %bb.k, %bb.j
  %i.z = load i64, ptr %i.n, align 8, !tbaa !45
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.n, align 8, !tbaa !45
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %qrx_requeue_deferred.exit, label %bb.d, !llvm.loop !0

qrx_requeue_deferred.exit:                        ; preds = %ossl_list_urxe_insert_tail.exit.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %ossl_list_urxe_insert_tail.exit.i ]
  ret i32 %.0
}

declare i32 @ossl_qrl_enc_level_set_provide_secret(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_qrx_discard_enc_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.b, i32 noundef %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ossl_qrx_processed_read_pending(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  %.val = load i64, ptr %i.a, align 8, !tbaa !37
  %i.b = icmp ne i64 %.val, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ossl_qrx_unprocessed_read_pending(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val3 = load i64, ptr %i.a, align 8, !tbaa !45
  %.not = icmp eq i64 %.val3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 88
  %.val = load i64, ptr %i.b, align 8, !tbaa !45
  %i.c = icmp ne i64 %.val, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_qrx_read_pkt(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.PACKET, align 8             ; 5 uses
  %3 = alloca %struct.quic_pkt_hdr_ptrs_st, align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.PACKET, align 8             ; 18 uses
  %5 = alloca %struct.quic_conn_id_st, align 1    ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 136        ; 7 uses
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !37 ; 2 uses
  %.not41 = icmp eq i64 %.val.i, 0
  br i1 %.not41, label %bb.b, label %bb.ch

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.val18.i = load ptr, ptr %i.d, align 8, !tbaa !39 ; 2 uses
  %.not19.i = icmp eq ptr %.val18.i, null
  br i1 %.not19.i, label %qrx_pop_pending_rxe.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1057
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %qrx_process_one_urxe.exit.i, %.lr.ph.i
  %.val20.i = phi ptr [ %.val18.i, %.lr.ph.i ], [ %.val.i34, %qrx_process_one_urxe.exit.i ] ; 20 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val20.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %5, ptr noundef nonnull align 1 dereferenceable(21) @__const.qrx_process_datagram.first_dcid, i64 21, i1 false)
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !73
  %i.ah = add i64 %i.ag, %i.af
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !73
  %i.ai = icmp slt i64 %i.af, 0
  br i1 %i.ai, label %qrx_process_datagram.exit.thread.i.i, label %PACKET_buf_init.exit.i.i.i

PACKET_buf_init.exit.i.i.i:                       ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.val20.i, i64 296 ; 2 uses
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !54
  store ptr %i.aj, ptr %4, align 8, !tbaa !55
  store i64 %i.af, ptr %i.g, align 8, !tbaa !56
  %.not1424.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not1424.i.i.i, label %qrx_process_datagram.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %PACKET_buf_init.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val20.i, i64 32 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val20.i, i64 40 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val20.i, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val20.i, i64 168 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val20.i, i64 280 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val20.i, i64 48 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.br, %.lr.ph.i.i.i
  %.val1628.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.val16.i.i.i, %bb.br ] ; 4 uses
  %.026.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.jc, %bb.br ] ; 6 uses
  %.01225.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.jb, %bb.br ] ; 2 uses
  %i.aq = icmp ult i64 %.val1628.i.i.i, 7
  %i.ar = icmp samesign ugt i64 %.026.i.i.i, 63
  %or.cond.i.i.i = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond.i.i.i, label %qrx_process_datagram.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !58
  %.val113.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 -1, ptr %i.b, align 8, !tbaa !14
  %.val8.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val8.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %qrx_ensure_free_rxe.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.as = icmp ugt i64 %.val1628.i.i.i, -466
  br i1 %i.as, label %PACKET_forward.exit135.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nuw i64 %.val1628.i.i.i, 464
  %i.au = call noalias ptr @CRYPTO_malloc(i64 noundef %i.at, ptr noundef nonnull @.str, i32 noundef 564) #12 ; 10 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %PACKET_forward.exit135.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store i64 %.val1628.i.i.i, ptr %i.ax, align 8, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store i64 0, ptr %i.ay, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  store i64 0, ptr %i.az, align 8, !tbaa !51
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !35  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store ptr %i.au, ptr %i.bb, align 8, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !36
  store ptr null, ptr %i.aw, align 8, !tbaa !34
  store ptr %i.au, ptr %i.i, align 8, !tbaa !35
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.k, label %ossl_list_rxe_insert_tail.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.au, ptr %i.h, align 8, !tbaa !24
  br label %ossl_list_rxe_insert_tail.exit.i.i.i.i.i

ossl_list_rxe_insert_tail.exit.i.i.i.i.i:         ; preds = %bb.k, %bb.j
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !37
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.j, align 8, !tbaa !37
  br label %qrx_ensure_free_rxe.exit.i.i.i.i

qrx_ensure_free_rxe.exit.i.i.i.i:                 ; preds = %ossl_list_rxe_insert_tail.exit.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %.val8.i.i.i.i.i, %bb.e ], [ %i.au, %ossl_list_rxe_insert_tail.exit.i.i.i.i.i ] ; 12 uses
  %.val119.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.bh = shl nuw i64 1, %.026.i.i.i              ; 4 uses
  %i.bi = and i64 %.val119.i.i.i.i, %i.bh
  %.not.i.i.i.i = icmp eq i64 %i.bi, 0
  %.val118.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !14
  %i.bj = lshr i64 %.val118.i.i.i.i, %.026.i.i.i
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 1                        ; 2 uses
  %i.bm = xor i32 %i.bl, 1
  %i.bn = load i64, ptr %i.k, align 8, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 112 ; 3 uses
  %i.bp = call i32 @ossl_quic_wire_decode_pkt_hdr(ptr noundef nonnull %4, i64 noundef %i.bn, i32 noundef %i.bm, i32 noundef 0, ptr noundef nonnull %i.bo, ptr noundef nonnull %3, ptr noundef null) #12
  %.not96.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not96.i.i.i.i, label %PACKET_forward.exit135.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %qrx_ensure_free_rxe.exit.i.i.i.i
  %.val112.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !55 ; 4 uses
  %i.bq = icmp eq i64 %.026.i.i.i, 0              ; 2 uses
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %5, ptr noundef nonnull align 8 dereferenceable(21) %i.br, i64 21, i1 false), !tbaa.struct !103
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not.i.i.i.i, label %bb.o, label %qrx_relocate_buffer.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 116
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !61
  %switch.i.i.i.i.i = icmp ult i32 %i.bt, 2
  br i1 %switch.i.i.i.i.i, label %bb.p, label %qrx_relocate_buffer.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bu = load i32, ptr %i.bo, align 8            ; 3 uses
  %i.bv = and i32 %i.bu, 255
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %qrx_relocate_buffer.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.pre.i.i.i.i = and i32 %i.bu, 253
  %i.bx = icmp eq i32 %.pre.i.i.i.i, 4            ; 2 uses
  br i1 %i.bq, label %qrx_validate_hdr_early.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bx, label %qrx_relocate_buffer.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load i8, ptr %5, align 1, !tbaa !104    ; 3 uses
  %i.bz = icmp ult i8 %i.by, 20
  br i1 %i.bz, label %bb.t, label %qrx_relocate_buffer.exit.i.i.i.i, !prof !52

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 120
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !104
  %.not.i.not.i.i.i.i.i = icmp eq i8 %i.by, %i.cb
  br i1 %.not.i.not.i.i.i.i.i, label %ossl_quic_conn_id_eq.exit.i.i.i.i.i, label %qrx_relocate_buffer.exit.i.i.i.i

ossl_quic_conn_id_eq.exit.i.i.i.i.i:              ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 121
  %i.cd = zext nneg i8 %i.by to i64
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.l, ptr nonnull readonly %i.cc, i64 %i.cd)
  %.not.i121.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not.i121.i.i.i.i, label %qrx_validate_hdr_early.exit.thread.i.i.i.i, label %qrx_relocate_buffer.exit.i.i.i.i

qrx_validate_hdr_early.exit.i.i.i.i:              ; preds = %bb.q
  br i1 %i.bx, label %bb.u, label %qrx_validate_hdr_early.exit.thread.i.i.i.i

bb.u:                                             ; preds = %qrx_validate_hdr_early.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 184
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !65
  %i.cg = call fastcc ptr @qrx_reserve_rxe(ptr noundef nonnull %i.h, ptr noundef nonnull %.0.i.i.i.i.i, i64 noundef %i.cf) ; 20 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %qrx_relocate_buffer.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 464 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 192 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 184 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 1 %i.ck, i64 %i.cm, i1 false)
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.co = or i64 %i.cn, 1
  store i64 %i.co, ptr %i.ak, align 8, !tbaa !14
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 200
  store i64 -1, ptr %i.cp, align 8, !tbaa !66
  %i.cq = load i64, ptr %i.cl, align 8, !tbaa !65
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !60
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 440
  store i64 %i.af, ptr %i.cs, align 8, !tbaa !67
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 448
  store i64 0, ptr %i.ct, align 8, !tbaa !68
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cu, ptr noundef nonnull align 8 dereferenceable(112) %i.am, i64 112, i1 false), !tbaa.struct !70
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cv, ptr noundef nonnull align 8 dereferenceable(112) %i.an, i64 112, i1 false), !tbaa.struct !70
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 432
  %i.cx = load i64, ptr %i.ao, align 8, !tbaa !14
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !14
  %i.cy = load i64, ptr %i.ap, align 8, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 456
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !72
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.db = icmp eq ptr %i.da, %i.cg
  br i1 %i.db, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !34
  store ptr %i.dd, ptr %i.h, align 8, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.de = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.df = icmp eq ptr %i.de, %i.cg
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 80 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !36 ; 4 uses
  br i1 %i.df, label %bb.y, label %._crit_edge.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  store ptr %i.dh, ptr %i.i, align 8, !tbaa !35
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.y, %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %i.cg, i64 72 ; 3 uses
  %.not.i122.i.i.i.i = icmp eq ptr %i.dh, null
  %.pre19.i.i.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !34 ; 3 uses
  br i1 %.not.i122.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  store ptr %.pre19.i.i.i.i.i, ptr %i.dj, align 8, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i.i
  %.not18.i.i.i.i.i = icmp eq ptr %.pre19.i.i.i.i.i, null
  br i1 %.not18.i.i.i.i.i, label %ossl_list_rxe_remove.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre19.i.i.i.i.i, i64 80
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !36
  br label %ossl_list_rxe_remove.exit.i.i.i.i

ossl_list_rxe_remove.exit.i.i.i.i:                ; preds = %bb.ab, %bb.aa
  %i.dl = load i64, ptr %i.j, align 8, !tbaa !37
  %i.dm = add i64 %i.dl, -1
  store i64 %i.dm, ptr %i.j, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  %i.dn = load ptr, ptr %i.t, align 8, !tbaa !35  ; 3 uses
  %.not.i123.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i123.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %ossl_list_rxe_remove.exit.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  store ptr %i.cg, ptr %i.do, align 8, !tbaa !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %ossl_list_rxe_remove.exit.i.i.i.i
  store ptr %i.dn, ptr %i.dg, align 8, !tbaa !36
  store ptr null, ptr %i.di, align 8, !tbaa !34
  store ptr %i.cg, ptr %i.t, align 8, !tbaa !35
  %i.dp = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ae, label %ossl_list_rxe_insert_tail.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.cg, ptr %i.s, align 8, !tbaa !24
  br label %ossl_list_rxe_insert_tail.exit.i.i.i.i

ossl_list_rxe_insert_tail.exit.i.i.i.i:           ; preds = %bb.ae, %bb.ad
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.c, align 8, !tbaa !37
  br label %bb.bq

qrx_validate_hdr_early.exit.thread.i.i.i.i:       ; preds = %qrx_validate_hdr_early.exit.i.i.i.i, %ossl_quic_conn_id_eq.exit.i.i.i.i.i
  %trunc.i.i.i.i.i = trunc i32 %i.bu to i8
  switch i8 %trunc.i.i.i.i.i, label %bb.ah [
    i8 5, label %bb.ag
    i8 3, label %qrx_determine_enc_level.exit.i.i.i.i
    i8 2, label %bb.af
  ]

bb.af:                                            ; preds = %qrx_validate_hdr_early.exit.thread.i.i.i.i
  br label %qrx_determine_enc_level.exit.i.i.i.i

bb.ag:                                            ; preds = %qrx_validate_hdr_early.exit.thread.i.i.i.i
  br label %qrx_determine_enc_level.exit.i.i.i.i

bb.ah:                                            ; preds = %qrx_validate_hdr_early.exit.thread.i.i.i.i
  br label %qrx_determine_enc_level.exit.i.i.i.i

qrx_determine_enc_level.exit.i.i.i.i:             ; preds = %bb.ah, %bb.ag, %bb.af, %qrx_validate_hdr_early.exit.thread.i.i.i.i
  %i.dt = phi i1 [ false, %bb.ah ], [ true, %bb.ag ], [ false, %bb.af ], [ false, %qrx_validate_hdr_early.exit.thread.i.i.i.i ]
  %.0.i124.i.i.i.i = phi i32 [ 0, %bb.ah ], [ 3, %bb.ag ], [ 1, %bb.af ], [ 2, %qrx_validate_hdr_early.exit.thread.i.i.i.i ] ; 3 uses
  %i.du = call i32 @ossl_qrl_enc_level_set_have_el(ptr noundef nonnull %i.m, i32 noundef %.0.i124.i.i.i.i) #12
  switch i32 %i.du, label %qrx_relocate_buffer.exit.i.i.i.i [
    i32 1, label %bb.ai
    i32 0, label %bb.bm
  ]

bb.ai:                                            ; preds = %qrx_determine_enc_level.exit.i.i.i.i
  br i1 %i.dt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dv = load i8, ptr %i.n, align 1, !tbaa !75
  %.not100.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not100.i.i.i.i, label %bb.bm, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dw = load i32, ptr %i.bo, align 8
  %i.dx = and i32 %i.dw, 255
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 168
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !62 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 176
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !63 ; 4 uses
  %.not.i125.i.i.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i125.i.i.i.i, label %qrx_relocate_buffer.exit.thread191.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = call fastcc ptr @qrx_reserve_rxe(ptr noundef nonnull %i.h, ptr noundef nonnull %.0.i.i.i.i.i, i64 noundef %i.ec) ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %qrx_relocate_buffer.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 464 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr align 1 %i.ea, i64 %i.ec, i1 false)
  br label %qrx_relocate_buffer.exit.thread191.i.i.i.i

qrx_relocate_buffer.exit.thread191.i.i.i.i:       ; preds = %bb.an, %bb.al
  %.1175.ph.i.i.i.i = phi ptr [ %i.ed, %bb.an ], [ %.0.i.i.i.i.i, %bb.al ] ; 2 uses
  %.0172.ph.i.i.i.i = phi ptr [ %i.ef, %bb.an ], [ %i.ea, %bb.al ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.1175.ph.i.i.i.i, i64 168
  store ptr %.0172.ph.i.i.i.i, ptr %i.eg, align 8, !tbaa !62
  br label %bb.ao

bb.ao:                                            ; preds = %qrx_relocate_buffer.exit.thread191.i.i.i.i, %bb.ak
  %.0174.i.i.i.i = phi ptr [ %.1175.ph.i.i.i.i, %qrx_relocate_buffer.exit.thread191.i.i.i.i ], [ %.0.i.i.i.i.i, %bb.ak ] ; 8 uses
  %.0173.i.i.i.i = phi i64 [ %i.ec, %qrx_relocate_buffer.exit.thread191.i.i.i.i ], [ 0, %bb.ak ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !58
  %i.eh = call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.m, i32 noundef %.0.i124.i.i.i.i, i32 noundef 1) #12 ; 2 uses
  %.not102.not.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not102.not.i.i.i.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ei = call i32 @ossl_quic_hdr_protector_decrypt(ptr noundef %i.eh, ptr noundef nonnull %3) #12
  %.not103.i.i.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not103.i.i.i.i, label %qrx_relocate_buffer.exit.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ej = load i64, ptr %i.al, align 8, !tbaa !14
  %i.ek = or i64 %i.ej, %i.bh
  store i64 %i.ek, ptr %i.al, align 8, !tbaa !14
  %i.el = load i64, ptr %i.k, align 8, !tbaa !74
  %i.em = getelementptr inbounds nuw i8, ptr %.0174.i.i.i.i, i64 112
  %i.en = call i32 @ossl_quic_wire_decode_pkt_hdr(ptr noundef nonnull %4, i64 noundef %i.el, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.em, ptr noundef null, ptr noundef null) #12
  %.not104.i.i.i.i = icmp eq i32 %i.en, 1
  br i1 %.not104.i.i.i.i, label %bb.ar, label %qrx_relocate_buffer.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %i.eo = getelementptr i8, ptr %.0174.i.i.i.i, i64 112
  %.val.i8.i = load i32, ptr %i.eo, align 8       ; 2 uses
  %trunc.i.i.i9.i = trunc i32 %.val.i8.i to i8
  %switch.tableidx = add i8 %trunc.i.i.i9.i, -2   ; 2 uses
  %i.ep = icmp ult i8 %switch.tableidx, 4
  br i1 %i.ep, label %switch.lookup, label %qrx_validate_hdr.exit.i

switch.lookup:                                    ; preds = %bb.ar
  %i.eq = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.qrx_validate_hdr_late, i64 %i.eq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %qrx_validate_hdr.exit.i

qrx_validate_hdr.exit.i:                          ; preds = %bb.ar, %switch.lookup
  %.0.i1.i.i11.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.ar ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0174.i.i.i.i, i64 162
  %i.es = lshr i32 %.val.i8.i, 10
  %i.et = and i32 %i.es, 15
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0.i1.i.i11.i
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !14
  %i.ex = getelementptr inbounds nuw i8, ptr %.0174.i.i.i.i, i64 200
  %i.ey = call i32 @ossl_quic_wire_decode_pkt_hdr_pn(ptr noundef nonnull %i.er, i64 noundef %i.eu, i64 noundef %i.ew, ptr noundef nonnull %i.ex) #12
  %.not.i12.not.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i12.not.i, label %qrx_relocate_buffer.exit.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %qrx_validate_hdr.exit.i
  %i.ez = load ptr, ptr %i.o, align 8, !tbaa !47  ; 2 uses
  %.not106.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not106.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = ptrtoint ptr %.val112.i.i.i.i to i64
  %i.fb = ptrtoint ptr %.val113.i.i.i.i to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.0174.i.i.i.i, i64 184
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !65
  %i.fe = add i64 %i.fd, %i.fb
  %i.ff = sub i64 %i.fa, %i.fe
  %i.fg = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.fh = load ptr, ptr %i.q, align 8, !tbaa !50
  call void %i.ez(i32 noundef 0, i32 noundef 1, i32 noundef 513, ptr noundef %.val113.i.i.i.i, i64 noundef %i.ff, ptr noundef %i.fg, ptr noundef %i.fh) #12, !inline_history !99
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fi = getelementptr inbounds nuw i8, ptr %.0174.i.i.i.i, i64 192
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !64
  %i.fk = getelementptr inbounds nuw i8, ptr %.0174.i.i.i.i, i64 184
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !65
  %i.fm = add i64 %i.fl, %.0173.i.i.i.i
  %i.fn = call fastcc ptr @qrx_reserve_rxe(ptr noundef nonnull %i.h, ptr noundef nonnull %.0174.i.i.i.i, i64 noundef %i.fm) ; 21 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %PACKET_forward.exit135.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fp = ptrtoint ptr %i.fj to i64
  %i.fq = ptrtoint ptr %.val113.i.i.i.i to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 464
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.0173.i.i.i.i ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 112 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 192 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 184 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !65
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 200 ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !66
  %i.gb = load i32, ptr %i.fu, align 8
  %i.gc = lshr i32 %i.gb, 9
  %i.gd = trunc i32 %i.gc to i8
  %i.ge = and i8 %i.gd, 1
  %i.gf = call fastcc i32 @qrx_decrypt_pkt_body(ptr noundef nonnull %0, ptr noundef nonnull %i.ft, ptr noundef %i.fw, i64 noundef %i.fy, ptr noundef %i.a, ptr noundef %.val113.i.i.i.i, i64 noundef %i.fr, i64 noundef %i.ga, i32 noundef %.0.i124.i.i.i.i, i8 noundef zeroext %i.ge, ptr noundef %i.b)
  %.not107.i.i.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not107.i.i.i.i, label %qrx_relocate_buffer.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val.i5.i = load i32, ptr %i.fu, align 8       ; 2 uses
  %trunc.i.i.i.i = trunc i32 %.val.i5.i to i8
  %switch.tableidx68 = add i8 %trunc.i.i.i.i, -2  ; 2 uses
  %i.gg = icmp ult i8 %switch.tableidx68, 4
  br i1 %i.gg, label %switch.lookup69, label %rxe_determine_pn_space.exit.i.i

switch.lookup69:                                  ; preds = %bb.aw
  %i.gh = zext nneg i8 %switch.tableidx68 to i64
  %switch.gep70 = getelementptr inbounds nuw i8, ptr @switch.table.qrx_validate_hdr_late, i64 %i.gh
  %switch.load71 = load i8, ptr %switch.gep70, align 1
  %switch.ext72 = zext i8 %switch.load71 to i32
  br label %rxe_determine_pn_space.exit.i.i

rxe_determine_pn_space.exit.i.i:                  ; preds = %bb.aw, %switch.lookup69
  %.0.i1.i.i.i = phi i32 [ %switch.ext72, %switch.lookup69 ], [ 0, %bb.aw ]
  %i.gi = load ptr, ptr %i.u, align 8, !tbaa !76  ; 2 uses
  %.not.i6.i = icmp eq ptr %i.gi, null
  br i1 %.not.i6.i, label %qrx_validate_hdr_late.exit.i, label %bb.ax

bb.ax:                                            ; preds = %rxe_determine_pn_space.exit.i.i
  %i.gj = load i64, ptr %i.fz, align 8, !tbaa !66
  %i.gk = load ptr, ptr %i.v, align 8, !tbaa !77
  %i.gl = call i32 %i.gi(i64 noundef %i.gj, i32 noundef %.0.i1.i.i.i, ptr noundef %i.gk) #12, !inline_history !100
  %.not7.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not7.i.i, label %qrx_relocate_buffer.exit.i.i.i.i, label %.qrx_validate_hdr_late.exit_crit_edge.i

.qrx_validate_hdr_late.exit_crit_edge.i:          ; preds = %bb.ax
  %.pre.i = load i32, ptr %i.fu, align 8
  br label %qrx_validate_hdr_late.exit.i

qrx_validate_hdr_late.exit.i:                     ; preds = %.qrx_validate_hdr_late.exit_crit_edge.i, %rxe_determine_pn_space.exit.i.i
  %i.gm = phi i32 [ %.pre.i, %.qrx_validate_hdr_late.exit_crit_edge.i ], [ %.val.i5.i, %rxe_determine_pn_space.exit.i.i ] ; 2 uses
  %i.gn = and i32 %i.gm, 255
  %i.go = icmp eq i32 %i.gn, 5
  br i1 %i.go, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %qrx_validate_hdr_late.exit.i
  %i.gp = lshr i32 %i.gm, 9
  %i.gq = and i32 %i.gp, 1
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !83
  %i.gu = and i64 %i.gt, 1
  %.not109.i.i.i.i = icmp eq i64 %i.gu, %i.gr
  br i1 %.not109.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gv = load i64, ptr %i.fz, align 8, !tbaa !66
  call fastcc void @qrx_key_update_initiated(ptr noundef nonnull %0, i64 noundef %i.gv)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %qrx_validate_hdr_late.exit.i
  %i.gw = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.gx = or i64 %i.gw, %i.bh
  store i64 %i.gx, ptr %i.ak, align 8, !tbaa !14
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !64
  %i.gy = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  store i64 %i.gy, ptr %i.fx, align 8, !tbaa !65
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fn, i64 88
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !60
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fn, i64 440
  store i64 %i.af, ptr %i.ha, align 8, !tbaa !67
  %i.hb = load i64, ptr %i.b, align 8, !tbaa !14
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fn, i64 448
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !68
  %.val117.i.i.i.i = load i32, ptr %i.fu, align 8
  %trunc.i.i.i.i.i.i = trunc i32 %.val117.i.i.i.i to i8
  %switch.tableidx73 = add i8 %trunc.i.i.i.i.i.i, -2 ; 2 uses
  %i.hd = icmp ult i8 %switch.tableidx73, 4
  br i1 %i.hd, label %switch.lookup74, label %rxe_determine_pn_space.exit.i.i.i.i

switch.lookup74:                                  ; preds = %bb.ba
  %i.he = zext nneg i8 %switch.tableidx73 to i64
  %switch.gep75 = getelementptr inbounds nuw i8, ptr @switch.table.qrx_validate_hdr_late, i64 %i.he
  %switch.load76 = load i8, ptr %switch.gep75, align 1
  %switch.ext77 = zext i8 %switch.load76 to i64
  br label %rxe_determine_pn_space.exit.i.i.i.i

rxe_determine_pn_space.exit.i.i.i.i:              ; preds = %bb.ba, %switch.lookup74
  %.0.i1.i.i.i.i.i = phi i64 [ %switch.ext77, %switch.lookup74 ], [ 0, %bb.ba ]
  %i.hf = load i64, ptr %i.fz, align 8, !tbaa !66 ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0.i1.i.i.i.i.i ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !14
  %i.hi = icmp ugt i64 %i.hf, %i.hh
  br i1 %i.hi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %rxe_determine_pn_space.exit.i.i.i.i
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !14
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %rxe_determine_pn_space.exit.i.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fn, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.hj, ptr noundef nonnull align 8 dereferenceable(112) %i.am, i64 112, i1 false), !tbaa.struct !70
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fn, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.hk, ptr noundef nonnull align 8 dereferenceable(112) %i.an, i64 112, i1 false), !tbaa.struct !70
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fn, i64 432
  %i.hm = load i64, ptr %i.ao, align 8, !tbaa !14
  store i64 %i.hm, ptr %i.hl, align 8, !tbaa !14
  %i.hn = load i64, ptr %i.ap, align 8, !tbaa !71
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fn, i64 456
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !72
  %i.hp = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.hq = icmp eq ptr %i.hp, %i.fn
  br i1 %i.hq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !34
  store ptr %i.hs, ptr %i.h, align 8, !tbaa !24
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ht = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.hu = icmp eq ptr %i.ht, %i.fn
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fn, i64 80 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !36 ; 4 uses
  br i1 %i.hu, label %bb.bf, label %._crit_edge.i.i

bb.bf:                                            ; preds = %bb.be
  store ptr %i.hw, ptr %i.i, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bf, %bb.be
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fn, i64 72 ; 3 uses
  %.not.i.i = icmp eq ptr %i.hw, null
  %.pre19.i.i = load ptr, ptr %i.hx, align 8, !tbaa !34 ; 3 uses
  br i1 %.not.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  store ptr %.pre19.i.i, ptr %i.hy, align 8, !tbaa !34
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i.i
  %.not18.i.i = icmp eq ptr %.pre19.i.i, null
  br i1 %.not18.i.i, label %ossl_list_rxe_remove.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre19.i.i, i64 80
  store ptr %i.hw, ptr %i.hz, align 8, !tbaa !36
  br label %ossl_list_rxe_remove.exit.i

ossl_list_rxe_remove.exit.i:                      ; preds = %bb.bi, %bb.bh
  %i.ia = load i64, ptr %i.j, align 8, !tbaa !37
  %i.ib = add i64 %i.ia, -1
  store i64 %i.ib, ptr %i.j, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i8 0, i64 16, i1 false)
  %i.ic = load ptr, ptr %i.t, align 8, !tbaa !35  ; 3 uses
  %.not.i127.i.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i127.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %ossl_list_rxe_remove.exit.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 72
  store ptr %i.fn, ptr %i.id, align 8, !tbaa !34
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %ossl_list_rxe_remove.exit.i
  store ptr %i.ic, ptr %i.hv, align 8, !tbaa !36
  store ptr null, ptr %i.hx, align 8, !tbaa !34
  store ptr %i.fn, ptr %i.t, align 8, !tbaa !35
  %i.ie = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.bl, label %ossl_list_rxe_insert_tail.exit128.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.fn, ptr %i.s, align 8, !tbaa !24
  br label %ossl_list_rxe_insert_tail.exit128.i.i.i.i

ossl_list_rxe_insert_tail.exit128.i.i.i.i:        ; preds = %bb.bl, %bb.bk
  %i.ig = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr %i.c, align 8, !tbaa !37
  br label %bb.bq

bb.bm:                                            ; preds = %bb.aj, %qrx_determine_enc_level.exit.i.i.i.i
  %.val111.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !55 ; 2 uses
  %i.ii = ptrtoint ptr %.val112.i.i.i.i to i64
  %i.ij = ptrtoint ptr %.val111.i.i.i.i to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !56 ; 3 uses
  %i.il = icmp ult i64 %.val.i.i.i.i.i, %i.ik
  br i1 %i.il, label %qrx_process_pkt.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.im = getelementptr inbounds nuw i8, ptr %.val111.i.i.i.i, i64 %i.ik
  store ptr %i.im, ptr %4, align 8, !tbaa !55
  %i.in = sub nuw i64 %.val.i.i.i.i.i, %i.ik      ; 2 uses
  store i64 %i.in, ptr %i.g, align 8, !tbaa !56
  br label %qrx_process_pkt.exit.i.i.i

qrx_relocate_buffer.exit.i.i.i.i:                 ; preds = %bb.ax, %bb.av, %qrx_validate_hdr.exit.i, %bb.aq, %bb.ap, %bb.am, %qrx_determine_enc_level.exit.i.i.i.i, %bb.u, %ossl_quic_conn_id_eq.exit.i.i.i.i.i, %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n
  %.not110.i.i.i.i = icmp eq ptr %.val112.i.i.i.i, null
  br i1 %.not110.i.i.i.i, label %PACKET_forward.exit135.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %qrx_relocate_buffer.exit.i.i.i.i
  %i.io = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.ip = or i64 %i.io, %i.bh
  store i64 %i.ip, ptr %i.ak, align 8, !tbaa !14
  %.val.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !55 ; 2 uses
  %i.iq = ptrtoint ptr %.val112.i.i.i.i to i64
  %i.ir = ptrtoint ptr %.val.i.i.i.i to i64
  %i.is = sub i64 %i.iq, %i.ir                    ; 3 uses
  %.val.i130.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !56 ; 2 uses
  %i.it = icmp ult i64 %.val.i130.i.i.i.i, %i.is
  br i1 %i.it, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.is
  store ptr %i.iu, ptr %4, align 8, !tbaa !55
  %i.iv = sub nuw i64 %.val.i130.i.i.i.i, %i.is
  store i64 %i.iv, ptr %i.g, align 8, !tbaa !56
  br label %bb.bq

PACKET_forward.exit135.i.i.i.i:                   ; preds = %qrx_relocate_buffer.exit.i.i.i.i, %bb.au, %qrx_ensure_free_rxe.exit.i.i.i.i, %bb.g, %bb.f
  %i.iw = shl nuw i64 1, %.026.i.i.i
  %i.ix = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.iy = or i64 %i.ix, %i.iw
  store i64 %i.iy, ptr %i.ak, align 8, !tbaa !14
  %.val114.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !56
  %i.iz = load ptr, ptr %4, align 8, !tbaa !55
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.val114.i.i.i.i
  store ptr %i.ja, ptr %4, align 8, !tbaa !55
  store i64 0, ptr %i.g, align 8, !tbaa !56
  br label %bb.bq

qrx_process_pkt.exit.i.i.i:                       ; preds = %bb.bn, %bb.bm
  %.val1632.i.i.i = phi i64 [ %.val.i.i.i.i.i, %bb.bm ], [ %i.in, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.br

bb.bq:                                            ; preds = %PACKET_forward.exit135.i.i.i.i, %bb.bp, %bb.bo, %ossl_list_rxe_insert_tail.exit128.i.i.i.i, %ossl_list_rxe_insert_tail.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.val16.pre.i.i.i = load i64, ptr %i.g, align 8, !tbaa !56
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %qrx_process_pkt.exit.i.i.i
  %.val16.i.i.i = phi i64 [ %.val16.pre.i.i.i, %bb.bq ], [ %.val1632.i.i.i, %qrx_process_pkt.exit.i.i.i ] ; 2 uses
  %i.jb = phi i32 [ %.01225.i.i.i, %bb.bq ], [ 1, %qrx_process_pkt.exit.i.i.i ] ; 2 uses
  %i.jc = add nuw nsw i64 %.026.i.i.i, 1
  %.not14.i.i.i = icmp eq i64 %.val16.i.i.i, 0
  br i1 %.not14.i.i.i, label %qrx_process_datagram.exit.i.i, label %bb.d, !llvm.loop !101

qrx_process_datagram.exit.thread.i.i:             ; preds = %PACKET_buf_init.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.bs

qrx_process_datagram.exit.i.i:                    ; preds = %bb.br, %bb.d
  %.013.i.ph.i.i = phi i32 [ %.01225.i.i.i, %bb.d ], [ %i.jb, %bb.br ]
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.jd = icmp eq ptr %.pre.i.i, %.val20.i
  %i.je = icmp eq i32 %.013.i.ph.i.i, 0           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.jd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %qrx_process_datagram.exit.i.i, %qrx_process_datagram.exit.thread.i.i
  %.013.i50.i.i = phi i1 [ true, %qrx_process_datagram.exit.thread.i.i ], [ %i.je, %qrx_process_datagram.exit.i.i ]
  %i.jf = load ptr, ptr %.val20.i, align 8, !tbaa !42
  store ptr %i.jf, ptr %i.d, align 8, !tbaa !39
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %qrx_process_datagram.exit.i.i
  %.013.i49.i.i = phi i1 [ %.013.i50.i.i, %bb.bs ], [ %i.je, %qrx_process_datagram.exit.i.i ]
  %i.jg = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.jh = icmp eq ptr %i.jg, %.val20.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.val20.i, i64 8 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !44 ; 4 uses
  br i1 %i.jh, label %bb.bu, label %._crit_edge.i.i.i

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.jj, ptr %i.w, align 8, !tbaa !43
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bu, %bb.bt
  %.not.i.i.i = icmp eq ptr %i.jj, null
  %.pre19.i.i.i = load ptr, ptr %.val20.i, align 8, !tbaa !42 ; 3 uses
  br i1 %.not.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i.i.i
  store ptr %.pre19.i.i.i, ptr %i.jj, align 8, !tbaa !42
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge.i.i.i
  %.not18.i.i.i = icmp eq ptr %.pre19.i.i.i, null
  br i1 %.not18.i.i.i, label %ossl_list_urxe_remove.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre19.i.i.i, i64 8
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !44
  br label %ossl_list_urxe_remove.exit.i.i

ossl_list_urxe_remove.exit.i.i:                   ; preds = %bb.bx, %bb.bw
  %i.jl = load i64, ptr %i.x, align 8, !tbaa !45
  %i.jm = add i64 %i.jl, -1
  store i64 %i.jm, ptr %i.x, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.val20.i, i8 0, i64 16, i1 false)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val20.i, i64 288 ; 3 uses
  %.pre29.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !46
  %i.jn = icmp eq i8 %.pre29.i.i, 0               ; 3 uses
  br i1 %.013.i49.i.i, label %bb.cf, label %bb.by

bb.by:                                            ; preds = %ossl_list_urxe_remove.exit.i.i
  br i1 %i.jn, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jo = load i64, ptr %i.y, align 8, !tbaa !105
  %i.jp = load i64, ptr %i.z, align 8, !tbaa !106
  %i.jq = icmp ult i64 %i.jo, %i.jp
  br i1 %i.jq, label %bb.ca, label %.thread.i.i

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.jr = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  %.not.i26.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i26.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store ptr %.val20.i, ptr %i.jr, align 8, !tbaa !42
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  store ptr %i.jr, ptr %i.ji, align 8, !tbaa !44
  store ptr null, ptr %.val20.i, align 8, !tbaa !42
  store ptr %.val20.i, ptr %i.ab, align 8, !tbaa !43
  %i.js = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.cd, label %ossl_list_urxe_insert_tail.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  store ptr %.val20.i, ptr %i.aa, align 8, !tbaa !39
  br label %ossl_list_urxe_insert_tail.exit.i.i

ossl_list_urxe_insert_tail.exit.i.i:              ; preds = %bb.cd, %bb.cc
  %i.ju = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.jv = add i64 %i.ju, 1
  store i64 %i.jv, ptr %i.ac, align 8, !tbaa !45
  br i1 %i.jn, label %bb.ce, label %qrx_process_one_urxe.exit.i

bb.ce:                                            ; preds = %ossl_list_urxe_insert_tail.exit.i.i
  store i8 1, ptr %.phi.trans.insert.i.i, align 8, !tbaa !46
  %i.jw = load i64, ptr %i.y, align 8, !tbaa !105
  %i.jx = add i64 %i.jw, 1
  store i64 %i.jx, ptr %i.y, align 8, !tbaa !105
  br label %qrx_process_one_urxe.exit.i

bb.cf:                                            ; preds = %ossl_list_urxe_remove.exit.i.i
  br i1 %i.jn, label %.thread.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i8 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !46
  %i.jy = load i64, ptr %i.y, align 8, !tbaa !105
  %i.jz = add i64 %i.jy, -1
  store i64 %i.jz, ptr %i.y, align 8, !tbaa !105
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cg, %bb.cf, %bb.bz
  %i.ka = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ossl_quic_demux_release_urxe(ptr noundef %i.ka, ptr noundef nonnull %.val20.i) #12
  br label %qrx_process_one_urxe.exit.i

qrx_process_one_urxe.exit.i:                      ; preds = %.thread.i.i, %bb.ce, %ossl_list_urxe_insert_tail.exit.i.i
  %.val.i34 = load ptr, ptr %i.d, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq ptr %.val.i34, null
  br i1 %.not.i, label %qrx_process_pending_urxl.exit, label %bb.c, !llvm.loop !102

qrx_process_pending_urxl.exit:                    ; preds = %qrx_process_one_urxe.exit.i
  %.val.i35.pre = load i64, ptr %i.c, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq i64 %.val.i35.pre, 0
  br i1 %.not, label %qrx_pop_pending_rxe.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %qrx_process_pending_urxl.exit, %bb.a
  %i.kb = phi i64 [ %.val.i35.pre, %qrx_process_pending_urxl.exit ], [ %.val.i, %bb.a ]
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val.i36 = load ptr, ptr %i.kc, align 8, !tbaa !24 ; 21 uses
  %i.kd = icmp eq ptr %.val.i36, null
  br i1 %i.kd, label %qrx_pop_pending_rxe.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ke = getelementptr inbounds nuw i8, ptr %.val.i36, i64 72 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !34 ; 4 uses
  store ptr %i.kf, ptr %i.kc, align 8, !tbaa !24
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !35
  %i.ki = icmp eq ptr %i.kh, %.val.i36
  %i.kj = getelementptr inbounds nuw i8, ptr %.val.i36, i64 80
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !36 ; 4 uses
  br i1 %i.ki, label %bb.cj, label %._crit_edge.i.i37

bb.cj:                                            ; preds = %bb.ci
  store ptr %i.kk, ptr %i.kg, align 8, !tbaa !35
  br label %._crit_edge.i.i37

._crit_edge.i.i37:                                ; preds = %bb.cj, %bb.ci
  %.not.i.i38 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i38, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i.i37
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 72
  store ptr %i.kf, ptr %i.kl, align 8, !tbaa !34
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %._crit_edge.i.i37
  %.not18.i.i39 = icmp eq ptr %i.kf, null
  br i1 %.not18.i.i39, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 80
  store ptr %i.kk, ptr %i.km, align 8, !tbaa !36
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.kn = add i64 %i.kb, -1
  store i64 %i.kn, ptr %i.c, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ke, i8 0, i64 16, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %.val.i36, i64 104
  store i64 1, ptr %i.ko, align 8, !tbaa !51
  %i.kp = getelementptr inbounds nuw i8, ptr %.val.i36, i64 112
  store ptr %i.kp, ptr %.val.i36, align 8, !tbaa !107
  %i.kq = getelementptr inbounds nuw i8, ptr %.val.i36, i64 200
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !66
  %i.ks = getelementptr inbounds nuw i8, ptr %.val.i36, i64 32
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !108
  %i.kt = getelementptr inbounds nuw i8, ptr %.val.i36, i64 40
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i36, i64 432
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !14
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !14
  %i.kw = getelementptr inbounds nuw i8, ptr %.val.i36, i64 440
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !67
  %i.ky = getelementptr inbounds nuw i8, ptr %.val.i36, i64 24
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !109
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.i36, i64 208 ; 2 uses
  %i.la = call i32 @BIO_ADDR_family(ptr noundef nonnull %i.kz) #12
  %.not32 = icmp eq i32 %i.la, 0
  %i.lb = select i1 %.not32, ptr null, ptr %i.kz
  %i.lc = getelementptr inbounds nuw i8, ptr %.val.i36, i64 8
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !110
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.i36, i64 320 ; 2 uses
  %i.le = call i32 @BIO_ADDR_family(ptr noundef nonnull %i.ld) #12
  %.not33 = icmp eq i32 %i.le, 0
  %i.lf = select i1 %.not33, ptr null, ptr %i.ld
  %i.lg = getelementptr inbounds nuw i8, ptr %.val.i36, i64 16
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !111
  %i.lh = getelementptr inbounds nuw i8, ptr %.val.i36, i64 448
  %i.li = getelementptr inbounds nuw i8, ptr %.val.i36, i64 56
  %i.lj = load <2 x i64>, ptr %i.lh, align 8, !tbaa !14
  store <2 x i64> %i.lj, ptr %i.li, align 8, !tbaa !14
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i36, i64 48
  store ptr %0, ptr %i.lk, align 8, !tbaa !112
  store ptr %.val.i36, ptr %1, align 8, !tbaa !114
  br label %qrx_pop_pending_rxe.exit.thread

qrx_pop_pending_rxe.exit.thread:                  ; preds = %bb.b, %bb.ch, %qrx_process_pending_urxl.exit, %bb.cn
  %.0 = phi i32 [ 1, %bb.cn ], [ 0, %qrx_process_pending_urxl.exit ], [ 0, %bb.ch ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @BIO_ADDR_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ossl_qrx_pkt_release(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !51
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !51
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %0, ptr %i.k, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.j, ptr %i.m, align 8, !tbaa !36
  store ptr null, ptr %i.l, align 8, !tbaa !34
  store ptr %0, ptr %i.i, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %qrx_recycle_rxe.exit

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.h, align 8, !tbaa !24
  br label %qrx_recycle_rxe.exit

qrx_recycle_rxe.exit:                             ; preds = %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %qrx_recycle_rxe.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_qrx_pkt_up_ref(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @ossl_qrx_get_bytes_received(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @ossl_qrx_set_late_validation_cb(ptr nofree noundef writeonly captures(none) initializes((1024, 1040)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr %2, ptr %i.b, align 8, !tbaa !77
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @ossl_qrx_set_key_update_cb(ptr nofree noundef writeonly captures(none) initializes((1040, 1056)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %1, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr %2, ptr %i.b, align 8, !tbaa !85
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i64 @ossl_qrx_get_key_epoch(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 1) #12 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i64 %i.f
}

declare ptr @ossl_qrl_enc_level_set_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_qrx_key_update_timeout(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.b = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 1) #12 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !86
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @ossl_qrl_enc_level_set_key_update_done(ptr noundef nonnull %i.a, i32 noundef 3) #12
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.d, align 8, !tbaa !86
  %i.i = icmp eq i8 %i.h, 3
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @ossl_qrl_enc_level_set_key_cooldown_done(ptr noundef nonnull %i.a, i32 noundef 3) #12
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.c ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @ossl_qrl_enc_level_set_key_update_done(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_qrl_enc_level_set_key_cooldown_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_qrx_get_cur_forged_pkt_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define i64 @ossl_qrx_get_max_forged_pkt_count(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef 1) #12 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !88
  %i.f = tail call i64 @ossl_qrl_get_suite_max_forged_pkt(i32 noundef %i.e) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ -1, %bb.a ]
  ret i64 %i.g
}

declare i64 @ossl_qrl_get_suite_max_forged_pkt(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ossl_qrx_allow_1rtt_processing(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1057 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !75
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %qrx_requeue_deferred.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.val6.i = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %.not7.i = icmp eq ptr %.val6.i, null
  br i1 %.not7.i, label %qrx_requeue_deferred.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %ossl_list_urxe_insert_tail.exit.i, %.lr.ph.i
  %.val8.i = phi ptr [ %.val6.i, %.lr.ph.i ], [ %.val.i, %ossl_list_urxe_insert_tail.exit.i ] ; 8 uses
  %i.i = load ptr, ptr %.val8.i, align 8, !tbaa !42 ; 4 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !39
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.k = icmp eq ptr %i.j, %.val8.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44   ; 4 uses
  br i1 %i.k, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %i.d, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  store ptr %i.i, ptr %i.m, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %.not18.i.i = icmp eq ptr %i.i, null
  br i1 %.not18.i.i, label %ossl_list_urxe_remove.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44
  br label %ossl_list_urxe_remove.exit.i

ossl_list_urxe_remove.exit.i:                     ; preds = %bb.g, %bb.f
  %i.o = load i64, ptr %i.e, align 8, !tbaa !45
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.e, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.val8.i, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %.not.i5.i = icmp eq ptr %i.q, null
  br i1 %.not.i5.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ossl_list_urxe_remove.exit.i
  store ptr %.val8.i, ptr %i.q, align 8, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %ossl_list_urxe_remove.exit.i
  store ptr %i.q, ptr %i.l, align 8, !tbaa !44
  store ptr null, ptr %.val8.i, align 8, !tbaa !42
  store ptr %.val8.i, ptr %i.g, align 8, !tbaa !43
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %ossl_list_urxe_insert_tail.exit.i

bb.j:                                             ; preds = %bb.i
  store ptr %.val8.i, ptr %i.f, align 8, !tbaa !39
  br label %ossl_list_urxe_insert_tail.exit.i

ossl_list_urxe_insert_tail.exit.i:                ; preds = %bb.j, %bb.i
  %i.t = load i64, ptr %i.h, align 8, !tbaa !45
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.h, align 8, !tbaa !45
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %qrx_requeue_deferred.exit, label %bb.c, !llvm.loop !0

qrx_requeue_deferred.exit:                        ; preds = %ossl_list_urxe_insert_tail.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_qrx_set_msg_callback(ptr nofree noundef writeonly captures(none) initializes((1064, 1072), (1080, 1088)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %1, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store ptr %2, ptr %i.b, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_qrx_set_msg_callback_arg(ptr nofree noundef writeonly captures(none) initializes((1072, 1080)) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %1, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_qrx_get_short_hdr_conn_id_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ossl_list_rxe_remove(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  store ptr %i.d, ptr %0, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp eq ptr %i.f, %1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 4 uses
  br i1 %i.g, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.e, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %.pre19 = load ptr, ptr %i.j, align 8, !tbaa !34 ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %.pre19, ptr %i.k, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.not18 = icmp eq ptr %.pre19, null
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.pre19, i64 80
  store ptr %i.i, ptr %i.l, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @ossl_quic_demux_release_urxe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_wire_decode_pkt_hdr(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_qrl_enc_level_set_have_el(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_quic_hdr_protector_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qrx_validate_hdr(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 112
  %.val = load i32, ptr %i.a, align 8             ; 2 uses
  %trunc.i.i = trunc i32 %.val to i8
  %switch.tableidx = add i8 %trunc.i.i, -2        ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 4
  br i1 %i.b, label %switch.lookup, label %rxe_determine_pn_space.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.qrx_validate_hdr_late, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %rxe_determine_pn_space.exit

rxe_determine_pn_space.exit:                      ; preds = %bb.a, %switch.lookup
  %.0.i1.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 162
  %i.e = lshr i32 %.val, 10
  %i.f = and i32 %i.e, 15
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0.i1.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.l = tail call i32 @ossl_quic_wire_decode_pkt_hdr_pn(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %i.k) #12
  %.not = icmp ne i32 %i.l, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @qrx_reserve_rxe(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %bb.b, label %qrx_resize_rxe.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, -466
  br i1 %i.c, label %qrx_resize_rxe.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 80         ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !36 ; 10 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !24
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  store ptr %i.h, ptr %0, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %.val.i, ptr %i.i, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %.not.i.i = icmp eq ptr %.val.i, null           ; 3 uses
  %.pre19.i.i = load ptr, ptr %i.l, align 8, !tbaa !34 ; 3 uses
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 72
  store ptr %.pre19.i.i, ptr %i.m, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.not18.i.i = icmp eq ptr %.pre19.i.i, null
  br i1 %.not18.i.i, label %ossl_list_rxe_remove.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %.pre19.i.i, i64 80
  store ptr %.val.i, ptr %i.n, align 8, !tbaa !36
  br label %ossl_list_rxe_remove.exit.i

ossl_list_rxe_remove.exit.i:                      ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.j, label %qrx_resize_rxe.exit, !prof !52

bb.j:                                             ; preds = %ossl_list_rxe_remove.exit.i
  %i.u = add nuw i64 %2, 464
  %i.v = tail call ptr @CRYPTO_realloc(ptr noundef nonnull %1, i64 noundef %i.u, ptr noundef nonnull @.str, i32 noundef 625) #12 ; 12 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %.not.i28.i = icmp eq ptr %i.x, null
  br i1 %.not.i28.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  store ptr %1, ptr %i.y, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.x, ptr %i.l, align 8, !tbaa !34
  store ptr null, ptr %i.d, align 8, !tbaa !36
  store ptr %1, ptr %0, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.o, label %ossl_list_rxe_insert_head.exit.i

bb.o:                                             ; preds = %bb.n
  store ptr %1, ptr %i.i, align 8, !tbaa !35
  br label %ossl_list_rxe_insert_head.exit.i

ossl_list_rxe_insert_head.exit.i:                 ; preds = %bb.o, %bb.n
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !37
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !37
  br label %qrx_resize_rxe.exit

bb.p:                                             ; preds = %bb.k
  store ptr %.val.i, ptr %i.d, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !34
  %.not.i29.i = icmp eq ptr %i.ae, null
  br i1 %.not.i29.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store ptr %1, ptr %i.af, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %1, ptr %i.ad, align 8, !tbaa !34
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.ah = icmp eq ptr %i.ag, %.val.i
  br i1 %i.ah, label %bb.s, label %ossl_list_rxe_insert_after.exit.i

bb.s:                                             ; preds = %bb.r
  store ptr %1, ptr %i.i, align 8, !tbaa !35
  br label %ossl_list_rxe_insert_after.exit.i

ossl_list_rxe_insert_after.exit.i:                ; preds = %bb.s, %bb.r
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !37
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.o, align 8, !tbaa !37
  br label %qrx_resize_rxe.exit

bb.t:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ak = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %.not.i30.i = icmp eq ptr %i.ak, null
  br i1 %.not.i30.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store ptr %i.v, ptr %i.al, align 8, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr null, ptr %i.an, align 8, !tbaa !36
  store ptr %i.v, ptr %0, align 8, !tbaa !24
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ossl_list_rxe_insert_head.exit31.sink.split.i, label %ossl_list_rxe_insert_head.exit31.i

bb.x:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr %.val.i, ptr %i.ar, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 72 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34 ; 3 uses
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !34
  %.not.i32.i = icmp eq ptr %i.at, null
  br i1 %.not.i32.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store ptr %i.v, ptr %i.au, align 8, !tbaa !36
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr %i.v, ptr %i.as, align 8, !tbaa !34
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.aw = icmp eq ptr %i.av, %.val.i
  br i1 %i.aw, label %ossl_list_rxe_insert_head.exit31.sink.split.i, label %ossl_list_rxe_insert_head.exit31.i

ossl_list_rxe_insert_head.exit31.sink.split.i:    ; preds = %bb.z, %bb.w
  store ptr %i.v, ptr %i.i, align 8, !tbaa !35
  br label %ossl_list_rxe_insert_head.exit31.i

ossl_list_rxe_insert_head.exit31.i:               ; preds = %ossl_list_rxe_insert_head.exit31.sink.split.i, %bb.z, %bb.w
  %storemerge.in.i = load i64, ptr %i.o, align 8, !tbaa !37
  %storemerge.i = add i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr %i.o, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i64 %2, ptr %i.ax, align 8, !tbaa !59
  br label %qrx_resize_rxe.exit

qrx_resize_rxe.exit:                              ; preds = %ossl_list_rxe_insert_head.exit31.i, %ossl_list_rxe_insert_after.exit.i, %ossl_list_rxe_insert_head.exit.i, %ossl_list_rxe_remove.exit.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ null, %ossl_list_rxe_insert_head.exit.i ], [ null, %bb.b ], [ null, %ossl_list_rxe_remove.exit.i ], [ %i.v, %ossl_list_rxe_insert_head.exit31.i ], [ null, %ossl_list_rxe_insert_after.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qrx_decrypt_pkt_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef range(i32 0, 4) %8, i8 noundef zeroext range(i8 0, 2) %9, ptr nofree noundef nonnull writeonly captures(none) %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.d, i32 noundef %8, i32 noundef 1) #12 ; 9 uses
  %i.f = or i64 %6, %3
  %or.cond.not = icmp ugt i64 %i.f, 2147483647
  %.not = icmp eq ptr %i.e, null
  %or.cond = select i1 %or.cond.not, i1 true, i1 %.not, !prof !117
  br i1 %or.cond, label %bb.p, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 100 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !118
  %i.i = zext i32 %i.h to i64
  %.not54 = icmp samesign ugt i64 %3, %i.i
  br i1 %.not54, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !88
  %i.n = tail call i64 @ossl_qrl_get_suite_max_forged_pkt(i32 noundef %i.m) #12
  %.not55 = icmp ult i64 %i.k, %i.n
  br i1 %.not55, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %8, 3
  br i1 %.not.i, label %bb.e, label %qrx_get_cipher_ctx_idx.exit.thread68

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !86    ; 2 uses
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83   ; 2 uses
  %i.t = and i64 %i.s, 1
  br label %qrx_get_cipher_ctx_idx.exit.thread68

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i8 %9 to i64                   ; 7 uses
  switch i8 %i.p, label %qrx_get_cipher_ctx_idx.exit.thread [
    i8 1, label %bb.g
    i8 2, label %qrx_get_cipher_ctx_idx.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.w = load i64, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %i.x = and i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.u
  %i.z = add i64 %i.y, %i.w
  br label %qrx_get_cipher_ctx_idx.exit.thread68

qrx_get_cipher_ctx_idx.exit.thread68:             ; preds = %.thread.i, %bb.g, %bb.d
  %.sink.i.ph = phi i64 [ 0, %bb.d ], [ %i.s, %.thread.i ], [ %i.z, %bb.g ]
  %.0.ph.i.ph = phi i64 [ 0, %bb.d ], [ %i.t, %.thread.i ], [ %i.u, %bb.g ]
  store i64 %.sink.i.ph, ptr %10, align 8, !tbaa !14
  br label %qrx_get_cipher_ctx_idx.exit.thread

qrx_get_cipher_ctx_idx.exit:                      ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !83 ; 2 uses
  %i.ac = and i64 %i.ab, 1                        ; 2 uses
  %i.ad = xor i64 %i.ac, %i.u
  %i.ae = sub i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %10, align 8, !tbaa !14
  %.not56 = icmp eq i64 %i.ac, %i.u
  br i1 %.not56, label %qrx_get_cipher_ctx_idx.exit.thread, label %bb.h

bb.h:                                             ; preds = %qrx_get_cipher_ctx_idx.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !89
  %.not57 = icmp ult i64 %7, %i.ag
  br i1 %.not57, label %qrx_get_cipher_ctx_idx.exit.thread, label %bb.p

qrx_get_cipher_ctx_idx.exit.thread:               ; preds = %bb.f, %qrx_get_cipher_ctx_idx.exit.thread68, %bb.h, %qrx_get_cipher_ctx_idx.exit
  %.0.i67 = phi i64 [ %.0.ph.i.ph, %qrx_get_cipher_ctx_idx.exit.thread68 ], [ %i.u, %bb.h ], [ %i.u, %qrx_get_cipher_ctx_idx.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0.i67
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !119 ; 6 uses
  %i.ak = tail call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %i.aj) #12 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 7
  br i1 %i.al, label %bb.i, label %bb.p, !prof !52

bb.i:                                             ; preds = %qrx_get_cipher_ctx_idx.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 106
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0.i67
  %i.ao = zext nneg i32 %i.ak to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 2 %i.an, i64 %i.ao, i1 false)
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %i.ao
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 -8 ; 2 uses
  %i.ap = load <8 x i8>, ptr %gep.7, align 1, !tbaa !69
  %11 = tail call i64 @llvm.bswap.i64(i64 %7)
  %12 = bitcast i64 %11 to <8 x i8>
  %i.aq = xor <8 x i8> %i.ap, %12
  store <8 x i8> %i.aq, ptr %gep.7, align 1, !tbaa !69
  %i.ar = call i32 @EVP_CipherInit_ex(ptr noundef %i.aj, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, i32 noundef 0) #12
  %.not58 = icmp eq i32 %i.ar, 1
  br i1 %.not58, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr %i.g, align 4, !tbaa !118 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.au = zext i32 %i.as to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  %i.ax = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %i.aj, i32 noundef 17, i32 noundef %i.as, ptr noundef nonnull %i.aw) #12
  %.not59 = icmp eq i32 %i.ax, 1
  br i1 %.not59, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ay = trunc nuw nsw i64 %6 to i32
  %i.az = call i32 @EVP_CipherUpdate(ptr noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %5, i32 noundef %i.ay) #12
  %.not60 = icmp eq i32 %i.az, 1
  br i1 %.not60, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ba = load i32, ptr %i.g, align 4, !tbaa !118
  %i.bb = trunc nuw nsw i64 %3 to i32
  %i.bc = sub i32 %i.bb, %i.ba
  %i.bd = call i32 @EVP_CipherUpdate(ptr noundef %i.aj, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %i.bc) #12
  %.not61 = icmp eq i32 %i.bd, 1
  br i1 %.not61, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.be = call i32 @EVP_CipherFinal_ex(ptr noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.b) #12
  %.not62 = icmp eq i32 %i.be, 1
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !87
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.j, align 8, !tbaa !87
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !116
  %i.bi = sext i32 %i.bh to i64
  store i64 %i.bi, ptr %4, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %qrx_get_cipher_ctx_idx.exit.thread, %bb.h, %bb.c, %bb.b, %bb.a, %bb.o, %bb.n
  %.048 = phi i32 [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %qrx_get_cipher_ctx_idx.exit.thread ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.n ], [ 1, %bb.o ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qrx_validate_hdr_late(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 112
  %.val = load i32, ptr %i.a, align 8
  %trunc.i.i = trunc i32 %.val to i8
  %switch.tableidx = add i8 %trunc.i.i, -2        ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 4
  br i1 %i.b, label %switch.lookup, label %rxe_determine_pn_space.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.qrx_validate_hdr_late, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %rxe_determine_pn_space.exit

rxe_determine_pn_space.exit:                      ; preds = %bb.a, %switch.lookup
  %.0.i1.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rxe_determine_pn_space.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = load i64, ptr %i.f, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.j = tail call i32 %i.e(i64 noundef %i.g, i32 noundef %.0.i1.i, ptr noundef %i.i) #12
  %.not7 = icmp eq i32 %i.j, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %rxe_determine_pn_space.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_quic_wire_decode_pkt_hdr_pn(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CipherUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @qrx_key_update_initiated(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = tail call i32 @ossl_qrl_enc_level_set_key_update(ptr noundef nonnull %i.a, i32 noundef 3) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i64 %1, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84   ; 2 uses
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  tail call void %i.e(i64 noundef %1, ptr noundef %i.g) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

declare i32 @ossl_qrl_enc_level_set_key_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !38}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS15ossl_lib_ctx_st", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS13quic_demux_st", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS12quic_urxe_st", !9, i64 0}
!16 = !{!"ossl_list_st_urxe", !15, i64 0, !15, i64 8, !13, i64 16}
!17 = !{!"p1 _ZTS6rxe_st", !9, i64 0}
!18 = !{!"ossl_list_st_rxe", !17, i64 0, !17, i64 8, !13, i64 16}
!19 = !{!"ossl_qrl_enc_level_set_st", !5, i64 0}
!20 = !{!"p1 _ZTS6ssl_st", !9, i64 0}
!21 = !{!"ossl_qrx_st", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !16, i64 48, !16, i64 72, !18, i64 96, !18, i64 120, !5, i64 144, !19, i64 168, !13, i64 1000, !13, i64 1008, !13, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !9, i64 1048, !5, i64 1056, !5, i64 1057, !9, i64 1064, !9, i64 1072, !20, i64 1080}
!22 = !{!21, !12, i64 16}
!23 = !{!21, !5, i64 1056}
!24 = !{!18, !17, i64 0}
!25 = !{!"p1 _ZTS15quic_pkt_hdr_st", !9, i64 0}
!26 = !{!"p1 _ZTS11bio_addr_st", !9, i64 0}
!27 = !{!"", !13, i64 0}
!28 = !{!"p1 _ZTS11ossl_qrx_st", !9, i64 0}
!29 = !{!"ossl_qrx_pkt_st", !25, i64 0, !26, i64 8, !26, i64 16, !13, i64 24, !13, i64 32, !27, i64 40, !28, i64 48, !13, i64 56, !13, i64 64}
!30 = !{!"", !17, i64 0, !17, i64 8}
!31 = !{!"quic_conn_id_st", !5, i64 0, !5, i64 1}
!32 = !{!"quic_pkt_hdr_st", !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 2, !6, i64 2, !6, i64 4, !31, i64 8, !31, i64 29, !5, i64 50, !11, i64 56, !13, i64 64, !13, i64 72, !11, i64 80}
!33 = !{!"rxe_st", !29, i64 0, !30, i64 72, !13, i64 88, !13, i64 96, !13, i64 104, !32, i64 112, !13, i64 200, !5, i64 208, !5, i64 320, !27, i64 432, !13, i64 440, !13, i64 448, !13, i64 456}
!34 = !{!33, !17, i64 72}
!35 = !{!18, !17, i64 8}
!36 = !{!33, !17, i64 80}
!37 = !{!18, !13, i64 16}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!16, !15, i64 0}
!40 = !{!"", !15, i64 0, !15, i64 8}
!41 = !{!"quic_urxe_st", !40, i64 0, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !5, i64 56, !5, i64 168, !27, i64 280, !5, i64 288, !5, i64 289}
!42 = !{!41, !15, i64 0}
!43 = !{!16, !15, i64 8}
!44 = !{!41, !15, i64 8}
!45 = !{!16, !13, i64 16}
!46 = !{!41, !5, i64 288}
!47 = !{!21, !9, i64 1064}
!48 = !{!41, !13, i64 16}
!49 = !{!21, !20, i64 1080}
!50 = !{!21, !9, i64 1072}
!51 = !{!33, !13, i64 104}
!52 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!53 = !{!"", !11, i64 0, !11, i64 8, !13, i64 16}
!54 = !{!53, !11, i64 8}
!55 = !{!53, !11, i64 0}
!56 = !{!53, !13, i64 16}
!57 = !{!11, !11, i64 0}
!58 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !14}
!59 = !{!33, !13, i64 96}
!60 = !{!33, !13, i64 88}
!61 = !{!33, !6, i64 116}
!62 = !{!33, !11, i64 168}
!63 = !{!33, !13, i64 176}
!64 = !{!33, !11, i64 192}
!65 = !{!33, !13, i64 184}
!66 = !{!33, !13, i64 200}
!67 = !{!33, !13, i64 440}
!68 = !{!33, !13, i64 448}
!69 = !{!5, !5, i64 0}
!70 = !{i64 0, i64 112, !69}
!71 = !{!41, !13, i64 48}
!72 = !{!33, !13, i64 456}
!73 = !{!21, !13, i64 1000}
!74 = !{!21, !13, i64 24}
!75 = !{!21, !5, i64 1057}
!76 = !{!21, !9, i64 1024}
!77 = !{!21, !9, i64 1032}
!78 = !{!"p1 _ZTS17evp_cipher_ctx_st", !9, i64 0}
!79 = !{!"p1 _ZTS13evp_cipher_st", !9, i64 0}
!80 = !{!"quic_hdr_protector_st", !10, i64 0, !11, i64 8, !78, i64 16, !79, i64 24, !6, i64 32}
!81 = !{!"p1 _ZTS9evp_md_st", !9, i64 0}
!82 = !{!"ossl_qrl_enc_level_st", !80, i64 0, !81, i64 40, !5, i64 48, !10, i64 64, !11, i64 72, !13, i64 80, !13, i64 88, !6, i64 96, !6, i64 100, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 138}
!83 = !{!82, !13, i64 80}
!84 = !{!21, !9, i64 1040}
!85 = !{!21, !9, i64 1048}
!86 = !{!82, !5, i64 104}
!87 = !{!21, !13, i64 1008}
!88 = !{!82, !6, i64 96}
!89 = !{!21, !13, i64 1016}
!90 = !{!"ossl_qrx_args_st", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !13, i64 32, !5, i64 40, !5, i64 64}
!91 = !{!90, !12, i64 16}
!92 = !{!90, !13, i64 32}
!93 = !{!9, !9, i64 0}
!94 = !{!90, !5, i64 64}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38}
!97 = !{!21, !10, i64 0}
!98 = !{!21, !11, i64 8}
!99 = distinct !{null, null, null, null}
!100 = distinct !{null, ptr @qrx_validate_hdr_late}
!101 = distinct !{!101, !38}
!102 = distinct !{!102, !38}
!103 = !{i64 0, i64 1, !69, i64 1, i64 20, !69}
!104 = !{!31, !5, i64 0}
!105 = !{!21, !13, i64 40}
!106 = !{!21, !13, i64 32}
!107 = !{!33, !25, i64 0}
!108 = !{!33, !13, i64 32}
!109 = !{!33, !13, i64 24}
!110 = !{!33, !26, i64 8}
!111 = !{!33, !26, i64 16}
!112 = !{!33, !28, i64 48}
!113 = !{!"p1 _ZTS15ossl_qrx_pkt_st", !9, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!29, !28, i64 48}
!116 = !{!6, !6, i64 0}
!117 = !{!"branch_weights", i32 2002, i32 2000}
!118 = !{!82, !6, i64 100}
!119 = !{!78, !78, i64 0}
end_hunk_0
