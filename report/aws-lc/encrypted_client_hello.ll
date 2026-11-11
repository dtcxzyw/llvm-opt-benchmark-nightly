Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/encrypted_client_hello?download=true
inline.NumInlined: 524
inline.NumDeleted: 230
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4bsslL27is_valid_client_hello_innerEP6ssl_stPhNS_4SpanIKhEE:bb.a
bb.k:                                             ; preds = %.lr.ph
  store i8 50, ptr %1, align 1, !tbaa !15
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 100) #10
  br label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.n = load i16, ptr %i.a, align 2, !tbaa !73   ; 2 uses
  %i.o = and i16 %i.n, -4
  %or.cond8 = icmp eq i16 %i.o, 768
  %i.p = and i16 %i.n, -3
  %i.q = icmp eq i16 %i.p, -259
  %or.cond14 = or i1 %or.cond8, %i.q
  br i1 %or.cond14, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 47, ptr %1, align 1, !tbaa !15
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 314, ptr noundef nonnull @.str, i32 noundef 107) #10
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.r = call i64 @CBS_len(ptr noundef nonnull %6) #10
  %.not26 = icmp eq i64 %i.r, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph, !llvm.loop !215

.critedge:                                        ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.preheader, %.critedge, %bb.j
  %.2 = phi i1 [ false, %bb.j ], [ false, %.critedge ], [ true, %.preheader ], [ true, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.f
  %.3 = phi i1 [ false, %bb.f ], [ %.2, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i1 %.3
}

declare ptr @CBB_data(ptr noundef) local_unnamed_addr #2

declare i64 @CBB_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl24ssl_client_hello_decryptEPNS_13SSL_HANDSHAKEEPhPbPNS_5ArrayIhEEPK22ssl_early_callback_ctxNS_4SpanIKhEE(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly byval(%"class.bssl::Span") align 8 captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i8 0, ptr %2, align 1, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !216  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !217  ; 8 uses
  tail call void @OPENSSL_free(ptr noundef null) #10
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @OPENSSL_malloc(i64 noundef %i.e) #10 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %i.e, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !76

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.e, 1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load i8, ptr %i.c, align 1, !tbaa !15
  store i8 %i.k, ptr %i.g, align 1, !tbaa !15
  br label %bb.g

_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit:    ; preds = %bb.b
  store i8 80, ptr %1, align 1, !tbaa !15
  br label %bb.q

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.a
  %.sroa.029.0.ph = phi ptr [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.g, %bb.d ], [ null, %bb.a ] ; 3 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !216
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !79   ; 6 uses
  %i.s = icmp ugt i64 %i.p, %i.e
  br i1 %i.s, label %bb.h, label %_ZNK4bssl4SpanIhE7subspanEmm.exit

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #11
  unreachable

_ZNK4bssl4SpanIhE7subspanEmm.exit:                ; preds = %bb.g
  %i.t = sub nuw i64 %i.e, %i.p
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.u, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4bssl4SpanIhE7subspanEmm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.029.0.ph, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %.sroa.speculated.i, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %_ZNK4bssl4SpanIhE7subspanEmm.exit, %bb.i
  tail call void @OPENSSL_free(ptr noundef null) #10
  %i.w = icmp eq i64 %i.r, 0
  br i1 %i.w, label %.loopexit.loopexit.i, label %bb.j

bb.j:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.x = tail call ptr @OPENSSL_malloc(i64 noundef %i.r) #10 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN4bssl5ArrayIhE4InitEm.exit, label %.loopexit.loopexit.i

_ZN4bssl5ArrayIhE4InitEm.exit:                    ; preds = %bb.j
  store i8 80, ptr %1, align 1, !tbaa !15
  br label %bb.p

.loopexit.loopexit.i:                             ; preds = %bb.j, %_ZL14OPENSSL_memsetPvim.exit
  %.sroa.020.0.ph = phi ptr [ null, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.x, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.aa = call i32 @EVP_HPKE_CTX_open(ptr noundef nonnull %i.z, ptr noundef %.sroa.020.0.ph, ptr noundef nonnull %i.a, i64 noundef %i.r, ptr noundef %i.l, i64 noundef %i.r, ptr noundef %.sroa.029.0.ph, i64 noundef %i.e) #10
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit.loopexit.i
  store i8 51, ptr %1, align 1, !tbaa !15
  store i8 1, ptr %2, align 1, !tbaa !75
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 138, ptr noundef nonnull @.str, i32 noundef 305) #10
  br label %bb.o

bb.l:                                             ; preds = %.loopexit.loopexit.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %i.r
  br i1 %i.ac, label %bb.m, label %_ZN4bssl5ArrayIhE6ShrinkEm.exit

bb.m:                                             ; preds = %bb.l
  call void @abort() #11
  unreachable

_ZN4bssl5ArrayIhE6ShrinkEm.exit:                  ; preds = %bb.l
  %i.ad = load ptr, ptr %0, align 8, !tbaa !149
  %i.ae = call noundef zeroext i1 @_ZN4bssl29ssl_decode_client_hello_innerEP6ssl_stPhPNS_5ArrayIhEENS_4SpanIKhEEPK22ssl_early_callback_ctx(ptr noundef %i.ad, ptr noundef %1, ptr noundef %3, ptr %.sroa.020.0.ph, i64 %i.ab, ptr noundef nonnull %4)
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4bssl5ArrayIhE6ShrinkEm.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !149
  %i.ag = load ptr, ptr %3, align 8, !tbaa !150
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !151
  call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef %i.af, i32 noundef 0, i32 noundef 257, ptr %i.ag, i64 %i.ai) #10
  br label %bb.o

bb.o:                                             ; preds = %_ZN4bssl5ArrayIhE6ShrinkEm.exit, %bb.n, %bb.k
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.n ], [ false, %_ZN4bssl5ArrayIhE6ShrinkEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4bssl5ArrayIhE4InitEm.exit
  %.sroa.020.045 = phi ptr [ %.sroa.020.0.ph, %bb.o ], [ null, %_ZN4bssl5ArrayIhE4InitEm.exit ]
  %.1 = phi i1 [ %.0, %bb.o ], [ false, %_ZN4bssl5ArrayIhE4InitEm.exit ]
  call void @OPENSSL_free(ptr noundef %.sroa.020.045) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit
  %.sroa.029.040 = phi ptr [ null, %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit ], [ %.sroa.029.0.ph, %bb.p ]
  %.2 = phi i1 [ false, %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit ], [ %.1, %bb.p ]
  call void @OPENSSL_free(ptr noundef %.sroa.029.040) #10
  ret i1 %.2
}

declare i32 @EVP_HPKE_CTX_open(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef, i32 noundef, i32 noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4bssl28ssl_is_valid_ech_public_nameENS_4SpanIKhEE(ptr %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, label %.critedge33.preheader

.critedge33.loopexit:                             ; preds = %bb.l
  %i.b = icmp eq i64 %.sroa.13.1, 0
  br i1 %i.b, label %bb.m, label %.critedge33.preheader

.critedge33.preheader:                            ; preds = %bb.a, %.critedge33.loopexit
  %.sroa.6.097 = phi i64 [ %.sroa.6.1, %.critedge33.loopexit ], [ 0, %bb.a ]
  %.sroa.055.096 = phi ptr [ %.sroa.055.1, %.critedge33.loopexit ], [ null, %bb.a ]
  %.sroa.057.095 = phi ptr [ %.sroa.057.1, %.critedge33.loopexit ], [ %0, %bb.a ] ; 12 uses
  %.sroa.13.093 = phi i64 [ %.sroa.13.1, %.critedge33.loopexit ], [ %1, %bb.a ] ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.057.095, i64 %.sroa.13.093 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %.sroa.057.095 to i64       ; 2 uses
  %i.f = ashr i64 %.sroa.13.093, 2                ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge33.preheader
  %i.h = and i64 %.sroa.13.093, -4
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.057.095, i64 %i.h ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %.sroa.057.095, %.lr.ph.i.i.i ], [ %i.t, %bb.f ] ; 9 uses
  %i.i = load i8, ptr %.02946.i.i.i, align 1, !tbaa !15
  %i.j = icmp eq i8 %i.i, 46
  br i1 %i.j, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = icmp eq i8 %i.l, 46
  br i1 %i.m, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  %i.p = icmp eq i8 %i.o, 46
  br i1 %i.p, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit119, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15
  %i.s = icmp eq i8 %i.r, 46
  br i1 %i.s, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit121, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.u = add nsw i64 %.047.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.v, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !218

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.critedge33.preheader
  %.pre-phi.i.i.i = phi i64 [ %.pre54.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %.critedge33.preheader ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.057.095, %.critedge33.preheader ] ; 5 uses
  %i.w = sub i64 %i.d, %.pre-phi.i.i.i
  switch i64 %i.w, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !15
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.1.i.i.i = phi ptr [ %i.z, %bb.h ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aa = load i8, ptr %.1.i.i.i, align 1, !tbaa !15
  %i.ab = icmp eq i8 %i.aa, 46
  br i1 %i.ab, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.2.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ad = load i8, ptr %.2.i.i.i, align 1, !tbaa !15
  %i.ae = icmp eq i8 %i.ad, 46
  br i1 %i.ae, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit119: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit121: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit:                ; preds = %bb.b, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit119, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit121, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.g ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.ah, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit121 ], [ %i.ag, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit119 ], [ %i.af, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.b ] ; 2 uses
  %i.ai = icmp eq ptr %.028.i.i.i, %i.c
  br i1 %i.ai, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.aj = ptrtoint ptr %.028.i.i.i to i64
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = add nsw i64 %i.ak, 1                    ; 3 uses
  %i.am = icmp ugt i64 %i.al, %.sroa.13.093
  br i1 %i.am, label %bb.k, label %_ZNK4bssl4SpanIKhE7subspanEmm.exit

bb.k:                                             ; preds = %bb.j
  tail call void @abort() #11
  unreachable

_ZNK4bssl4SpanIKhE7subspanEmm.exit:               ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %.sroa.13.093)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.057.095, i64 %i.al
  %i.ao = sub nuw i64 %.sroa.13.093, %i.al        ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread:         ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, %_ZNK4bssl4SpanIKhE7subspanEmm.exit
  %.sroa.13.1 = phi i64 [ %i.ao, %_ZNK4bssl4SpanIKhE7subspanEmm.exit ], [ 0, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit ], [ 0, %._crit_edge.i.i.i ], [ 0, %._crit_edge._crit_edge52.i.i.i ] ; 2 uses
  %.sroa.057.1 = phi ptr [ %i.an, %_ZNK4bssl4SpanIKhE7subspanEmm.exit ], [ null, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit ], [ null, %._crit_edge.i.i.i ], [ null, %._crit_edge._crit_edge52.i.i.i ]
  %.sroa.055.1 = phi ptr [ %.sroa.055.096, %_ZNK4bssl4SpanIKhE7subspanEmm.exit ], [ %.sroa.057.095, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit ], [ %.sroa.057.095, %._crit_edge.i.i.i ], [ %.sroa.057.095, %._crit_edge._crit_edge52.i.i.i ] ; 7 uses
  %.sroa.6.1 = phi i64 [ %.sroa.6.097, %_ZNK4bssl4SpanIKhE7subspanEmm.exit ], [ %.sroa.13.093, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit ], [ %.sroa.13.093, %._crit_edge.i.i.i ], [ %.sroa.13.093, %._crit_edge._crit_edge52.i.i.i ] ; 6 uses
  %.sroa.12.0 = phi i64 [ %.sroa.speculated.i, %_ZNK4bssl4SpanIKhE7subspanEmm.exit ], [ %.sroa.13.093, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit ], [ %.sroa.13.093, %._crit_edge.i.i.i ], [ %.sroa.13.093, %._crit_edge._crit_edge52.i.i.i ] ; 2 uses
  %i.aq = add i64 %.sroa.12.0, -64
  %or.cond = icmp ult i64 %i.aq, -63
  br i1 %or.cond, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, label %_ZNK4bssl4SpanIKhE5frontEv.exit

_ZNK4bssl4SpanIKhE5frontEv.exit:                  ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread
  %i.ar = load i8, ptr %.sroa.057.095, align 1, !tbaa !15
  %i.as = icmp eq i8 %i.ar, 45
  br i1 %i.as, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, label %_ZNK4bssl4SpanIKhE4backEv.exit

_ZNK4bssl4SpanIKhE4backEv.exit:                   ; preds = %_ZNK4bssl4SpanIKhE5frontEv.exit
  %i.at = getelementptr i8, ptr %.sroa.057.095, i64 %.sroa.12.0 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !15
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.02892, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.at
  br i1 %.not, label %.critedge33.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4bssl4SpanIKhE4backEv.exit, %bb.l
  %.02892 = phi ptr [ %i.ax, %bb.l ], [ %.sroa.057.095, %_ZNK4bssl4SpanIKhE4backEv.exit ] ; 2 uses
  %i.ay = load i8, ptr %.02892, align 1, !tbaa !15 ; 2 uses
  %i.az = zext i8 %i.ay to i32
  %i.ba = tail call i32 @OPENSSL_isalnum(i32 noundef %i.az) #10
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = icmp eq i8 %i.ay, 45
  %or.cond.not = or i1 %i.bc, %i.bb
  br i1 %or.cond.not, label %bb.l, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, !llvm.loop !219

bb.m:                                             ; preds = %.critedge33.loopexit
  %i.bd = icmp ult i64 %.sroa.6.1, 2
  br i1 %i.bd, label %.loopexit, label %_ZNK4bssl4SpanIKhEixEm.exit.i

_ZNK4bssl4SpanIKhEixEm.exit.i:                    ; preds = %bb.m
  %i.be = load i8, ptr %.sroa.055.1, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.be, 48
  br i1 %.not.i, label %_ZNK4bssl4SpanIKhEixEm.exit17.i, label %.lr.ph.preheader.i37

_ZNK4bssl4SpanIKhEixEm.exit17.i:                  ; preds = %_ZNK4bssl4SpanIKhEixEm.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.055.1, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !15
  switch i8 %i.bg, label %.lr.ph.preheader.i37 [
    i8 120, label %_ZNK4bssl4SpanIKhE7subspanEmm.exit.i
    i8 88, label %_ZNK4bssl4SpanIKhE7subspanEmm.exit.i
  ]

_ZNK4bssl4SpanIKhE7subspanEmm.exit.i:             ; preds = %_ZNK4bssl4SpanIKhEixEm.exit17.i, %_ZNK4bssl4SpanIKhEixEm.exit17.i
  %i.bh = getelementptr i8, ptr %.sroa.055.1, i64 %.sroa.6.1
  %.not1430.i = icmp eq i64 %.sroa.6.1, 2
  br i1 %.not1430.i, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4bssl4SpanIKhE7subspanEmm.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.055.1, i64 2
  br label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0931.i, i64 1 ; 2 uses
  %.not14.i = icmp eq ptr %i.bj, %i.bh
  br i1 %.not14.i, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.0931.i = phi ptr [ %i.bj, %bb.n ], [ %i.bi, %.lr.ph.preheader.i ] ; 2 uses
  %i.bk = load i8, ptr %.0931.i, align 1, !tbaa !15
  %i.bl = zext i8 %i.bk to i32
  %i.bm = tail call i32 @OPENSSL_isxdigit(i32 noundef %i.bl) #10
  %.not15.not.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not15.not.not.i, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %.lr.ph.i, %bb.m
  %i.bn = icmp eq i64 %.sroa.6.1, 0
  br i1 %i.bn, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, label %.lr.ph.preheader.i37

.lr.ph.preheader.i37:                             ; preds = %_ZNK4bssl4SpanIKhEixEm.exit17.i, %_ZNK4bssl4SpanIKhEixEm.exit.i, %.loopexit
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.055.1, i64 %.sroa.6.1
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %.lr.ph.preheader.i37
  %.01218.i = phi ptr [ %i.br, %.lr.ph.i38 ], [ %.sroa.055.1, %.lr.ph.preheader.i37 ] ; 2 uses
  %i.bp = load i8, ptr %.01218.i, align 1, !tbaa !15
  %i.bq = add i8 %i.bp, -58
  %or.cond.i = icmp ult i8 %i.bq, -10             ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01218.i, i64 1 ; 2 uses
  %.not.i40 = icmp eq ptr %i.br, %i.bo
  %or.cond136 = select i1 %or.cond.i, i1 true, i1 %.not.i40
  br i1 %or.cond136, label %_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit, label %.lr.ph.i38

_ZN4bsslL16is_hex_componentENS_4SpanIKhEE.exit:   ; preds = %_ZNK4bssl4SpanIKhE5frontEv.exit, %_ZNK4bssl4SpanIKhE4backEv.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, %_ZNK4bssl4SpanIKhE7subspanEmm.exit, %.lr.ph, %bb.n, %.lr.ph.i38, %.loopexit, %_ZNK4bssl4SpanIKhE7subspanEmm.exit.i, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ true, %.loopexit ], [ %or.cond.i, %.lr.ph.i38 ], [ false, %bb.n ], [ false, %_ZNK4bssl4SpanIKhE7subspanEmm.exit.i ], [ false, %.lr.ph ], [ false, %_ZNK4bssl4SpanIKhE7subspanEmm.exit ], [ false, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread ], [ false, %_ZNK4bssl4SpanIKhE4backEv.exit ], [ false, %_ZNK4bssl4SpanIKhE5frontEv.exit ]
  ret i1 %.6
}

declare i32 @OPENSSL_isalnum(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl15ECHServerConfig4InitENS_4SpanIKhEEPK15evp_hpke_key_stb(ptr noundef nonnull align 8 dereferenceable(145) initializes((144, 145)) %0, ptr %1, i64 %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %struct.cbs_st, align 8             ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %struct.cbs_st, align 8             ; 8 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = zext i1 %4 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.f, ptr %i.g, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %1, ptr %5, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.i = call fastcc noundef zeroext i1 @_ZN4bsslL16parse_ech_configEP6cbs_stPNS_9ECHConfigEPbb(ptr noundef %5, ptr noundef %0, ptr noundef %i.a, i1 noundef zeroext true)
  br i1 %i.i, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.j = call i64 @CBS_len(ptr noundef nonnull %5) #10
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 489) #10
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.a, align 1, !tbaa !75, !range !157, !noundef !158
  %i.l = trunc nuw i8 %i.k to i1
end_hunk_0
