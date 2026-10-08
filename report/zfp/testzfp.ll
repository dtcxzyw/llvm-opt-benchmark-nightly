Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/testzfp?download=true
inline.NumInlined: 3089
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 105
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZSt3maxIN3zfp8internal4dim39referenceINS0_6array3IfNS0_5codec4zfp3IfEENS0_5index8implicitEEEEEERKT_SE_SE_:bb.a
  br i1 %.not.i.i.i.i.i6, label %_ZNK3zfp8internal4dim315const_referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEcvfEv.exit9, label %bb.g

bb.g:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5
  %i.ck = trunc i32 %i.cb to i1
  br i1 %i.ck, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cl = tail call noundef i64 @_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf(ptr noundef nonnull align 8 dereferenceable(104) %i.bh, i64 noundef %i.cj, ptr noundef %i.cg) ; 0 uses
  %.pre.i.i.i.i.i8 = load ptr, ptr %i.bg, align 8, !tbaa !160
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = phi ptr [ %.pre.i.i.i.i.i8, %bb.h ], [ %i.bh, %bb.g ]
  %i.cn = tail call noundef i64 @_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf(ptr noundef nonnull align 8 dereferenceable(104) %i.cm, i64 noundef %i.bs, ptr noundef %i.cg) ; 0 uses
  br label %_ZNK3zfp8internal4dim315const_referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEcvfEv.exit9

_ZNK3zfp8internal4dim315const_referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEcvfEv.exit9: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5, %bb.i
  %i.co = and i64 %i.ba, 3
  %i.cp = and i64 %i.bc, 3
  %i.cq = shl i64 %i.be, 2
  %i.cr = and i64 %i.cq, 12
  %i.cs = or disjoint i64 %i.cr, %i.cp
  %.idx.i.i.i.i.i7 = shl nuw nsw i64 %i.cs, 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i.i.i.i7
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.co
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !99
  %i.cw = fcmp olt float %i.ax, %i.cv
  %. = select i1 %i.cw, ptr %1, ptr %0
  ret ptr %.
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEC2EmmmmRK10zfp_config(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.c = tail call ptr @zfp_stream_open(ptr noundef null)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.d = icmp eq i64 %1, 0
  %i.e = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.d, %i.e
  %i.f = icmp eq i64 %3, 0
  %or.cond3.i = or i1 %or.cond.i, %i.f
  %i.g = icmp eq i64 %4, 0
  %or.cond5.i = or i1 %or.cond3.i, %i.g
  br i1 %or.cond5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %1, 3
  %i.i = lshr i64 %i.h, 2
  %i.j = add i64 %2, 3
  %i.k = lshr i64 %i.j, 2
  %i.l = add i64 %3, 3
  %i.m = lshr i64 %i.l, 2
  %i.n = add i64 %4, 3
  %i.o = lshr i64 %i.n, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink26.i = phi i64 [ %4, %bb.b ], [ 0, %bb.a ]
  %.sink25.i = phi i64 [ %3, %bb.b ], [ 0, %bb.a ]
  %.sink24.i = phi i64 [ %2, %bb.b ], [ 0, %bb.a ]
  %.sink23.i = phi i64 [ %1, %bb.b ], [ 0, %bb.a ]
  %.sink22.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sink21.i = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sink20.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sink.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sink26.i, ptr %i.p, align 8, !tbaa !212
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sink25.i, ptr %i.q, align 8, !tbaa !213
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink24.i, ptr %i.r, align 8, !tbaa !214
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sink23.i, ptr %i.s, align 8, !tbaa !215
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sink22.i, ptr %i.t, align 8, !tbaa !216
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sink21.i, ptr %i.u, align 8, !tbaa !217
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sink20.i, ptr %i.v, align 8, !tbaa !218
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sink.i, ptr %i.w, align 8, !tbaa !219
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = mul i64 %.sink21.i, %.sink22.i
  %i.z = mul i64 %i.y, %.sink20.i
  %i.aa = mul i64 %i.z, %.sink.i
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !123
  invoke void @_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEE10set_configERK10zfp_config(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #27
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp6array4IfNS_5codec4zfp4IfEENS_5index8implicitEE3setEPKf(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [256 x float], align 16           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i64, ptr %i.b, align 8, !tbaa !219  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load i64, ptr %i.d, align 8, !tbaa !218  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load i64, ptr %i.f, align 8, !tbaa !217  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !216  ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !126  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !138  ; 2 uses
  %i.n = mul i64 %i.m, %i.k                       ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !158  ; 2 uses
  %i.q = mul i64 %i.n, %i.p                       ; 3 uses
  %.not91 = icmp eq i64 %i.i, 0
  br i1 %.not91, label %.loopexit, label %.preheader46.lr.ph

.preheader46.lr.ph:                               ; preds = %bb.b
  %.not92 = icmp eq i64 %i.g, 0
  %.not94 = icmp eq i64 %i.c, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.v = shl nsw i64 %i.k, 2
  %i.w = shl nsw i64 %i.n, 2
  %.not93 = icmp eq i64 %i.e, 0
  %or.cond = select i1 %.not92, i1 true, i1 %.not93
  %brmerge = select i1 %or.cond, i1 true, i1 %.not94
  br i1 %brmerge, label %.loopexit, label %.preheader46.us.us

.preheader46.us.us:                               ; preds = %.preheader46.lr.ph, %._crit_edge.split.us.split.us.us.us
  %.03581.us.us = phi i64 [ %i.hf, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader46.lr.ph ]
  %.03680.us.us = phi i64 [ %i.x, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader46.lr.ph ]
  %.03779.us.us = phi ptr [ %i.hj, %._crit_edge.split.us.split.us.us.us ], [ %1, %.preheader46.lr.ph ]
  br label %.preheader45.us.us.us.us

.preheader45.us.us.us.us:                         ; preds = %._crit_edge60.split.us.us.us.us.us, %.preheader46.us.us
  %.03466.us.us.us.us = phi i64 [ 0, %.preheader46.us.us ], [ %i.ha, %._crit_edge60.split.us.us.us.us.us ]
  %.165.us.us.us.us = phi i64 [ %.03680.us.us, %.preheader46.us.us ], [ %i.x, %._crit_edge60.split.us.us.us.us.us ]
  %.13864.us.us.us.us = phi ptr [ %.03779.us.us, %.preheader46.us.us ], [ %i.he, %._crit_edge60.split.us.us.us.us.us ]
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %._crit_edge.us.us.us.us.us, %.preheader45.us.us.us.us
  %.03359.us.us.us.us.us = phi i64 [ 0, %.preheader45.us.us.us.us ], [ %i.gw, %._crit_edge.us.us.us.us.us ]
  %.258.us.us.us.us.us = phi i64 [ %.165.us.us.us.us, %.preheader45.us.us.us.us ], [ %i.x, %._crit_edge.us.us.us.us.us ]
  %.23957.us.us.us.us.us = phi ptr [ %.13864.us.us.us.us, %.preheader45.us.us.us.us ], [ %i.gz, %._crit_edge.us.us.us.us.us ]
  br label %bb.c

bb.c:                                             ; preds = %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us, %.preheader.us.us.us.us.us
  %.055.us.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us.us.us ], [ %i.gu, %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us ]
  %.354.us.us.us.us.us = phi i64 [ %.258.us.us.us.us.us, %.preheader.us.us.us.us.us ], [ %i.x, %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us ] ; 7 uses
  %.34052.us.us.us.us.us = phi ptr [ %.23957.us.us.us.us.us, %.preheader.us.us.us.us.us ], [ %i.gv, %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us ] ; 5 uses
  %i.x = add i64 %.354.us.us.us.us.us, 1          ; 4 uses
  %i.y = trunc i64 %.354.us.us.us.us.us to i32
  %i.z = add i32 %i.y, 1                          ; 2 uses
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !163
  %i.ab = and i32 %i.aa, %i.z
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !221 ; 2 uses
  %i.ag = lshr i32 %i.af, 1
  %i.ah = icmp eq i32 %i.ag, %i.z
  br i1 %i.ah, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us, label %._ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge

._ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !223
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us

_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us: ; preds = %bb.c
  %i.ai = or i32 %i.af, 1
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !221
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !73  ; 2 uses
  %i.ak = getelementptr inbounds nuw [1024 x i8], ptr %i.aj, i64 %i.ad ; 2 uses
  %.not.i.us.us.us.us.us = icmp eq ptr %i.aj, null
  %.pre115 = load ptr, ptr %i.u, align 8, !tbaa !223 ; 8 uses
  br i1 %.not.i.us.us.us.us.us, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us, label %bb.d

bb.d:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us
  %i.al = getelementptr inbounds nuw i8, ptr %.pre115, i64 88
  %i.am = load i64, ptr %i.al, align 8, !tbaa !219 ; 2 uses
  %i.an = urem i64 %.354.us.us.us.us.us, %i.am
  %i.ao = shl i64 %i.an, 2
  %i.ap = udiv i64 %.354.us.us.us.us.us, %i.am    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre115, i64 96
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !218 ; 2 uses
  %i.as = urem i64 %i.ap, %i.ar
  %i.at = shl i64 %i.as, 2
  %i.au = udiv i64 %i.ap, %i.ar                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre115, i64 104
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !217 ; 2 uses
  %i.ax = urem i64 %i.au, %i.aw
  %2 = shl i64 %i.ax, 2
  %i.ay = udiv i64 %i.au, %i.aw
  %3 = shl i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %.pre115, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !215 ; 2 uses
  %i.bb = xor i64 %i.ba, %i.ao
  %i.bc = add i64 %i.bb, -4
  %i.bd = lshr i64 %i.bc, 62
  %i.be = sub i64 0, %i.ba
  %i.bf = and i64 %i.bd, %i.be                    ; 18 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre115, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !214 ; 2 uses
  %i.bi = xor i64 %i.bh, %i.at
  %i.bj = add i64 %i.bi, -4
  %i.bk = lshr i64 %i.bj, 62
  %i.bl = sub i64 0, %i.bh
  %i.bm = and i64 %i.bk, %i.bl                    ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre115, i64 72
  %4 = load i64, ptr %i.bn, align 8, !tbaa !213   ; 2 uses
  %5 = xor i64 %4, %2
  %6 = add i64 %5, -4
  %7 = lshr i64 %6, 62
  %8 = sub i64 0, %4
  %9 = and i64 %7, %8                             ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.pre115, i64 80
  %11 = load i64, ptr %10, align 8, !tbaa !212    ; 2 uses
  %12 = xor i64 %11, %3
  %13 = add i64 %12, -4
  %14 = lshr i64 %13, 62
  %15 = sub i64 0, %11
  %16 = and i64 %14, %15                          ; 2 uses
  %i.bo = or i64 %i.bm, %i.bf
  %17 = or i64 %i.bo, %9
  %18 = or i64 %17, %16
  %i.bp = icmp eq i64 %18, 0
  br i1 %i.bp, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %19 = trunc nuw nsw i64 %16 to i32
  %20 = trunc nuw nsw i64 %9 to i32
  %i.bq = trunc nuw nsw i64 %i.bm to i32
  %.neg = or disjoint i64 %i.bf, -4
  %i.br = sub nuw nsw i32 4, %i.bq                ; 2 uses
  %i.bs = sub nuw nsw i32 4, %20                  ; 3 uses
  %i.bt = sub nuw nsw i32 4, %19
  %i.bu = add i64 %.neg, %i.k                     ; 4 uses
  %i.bv = zext nneg i32 %i.br to i64
  %i.bw = sub i64 %i.m, %i.bv
  %i.bx = mul i64 %i.bw, %i.k
  %i.by = shl nuw nsw i32 %i.br, 2
  %i.bz = sub nuw nsw i32 16, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = zext nneg i32 %i.bs to i64
  %i.cc = sub i64 %i.p, %i.cb
  %i.cd = mul i64 %i.cc, %i.n
  %i.ce = shl nuw nsw i32 %i.bs, 4
  %i.cf = sub nuw nsw i32 64, %i.ce
  %i.cg = zext nneg i32 %i.cf to i64
  %exitcond.not.i.i.us.us.us.us.us = icmp eq i64 %i.bf, 3
  %exitcond.not.i.i.us.us.us.us.us.1 = icmp eq i64 %i.bf, 2
  %exitcond.not.i.i.us.us.us.us.us.2 = icmp eq i64 %i.bf, 1
  %exitcond80.not.i.i.us.us.us.us.us = icmp eq i64 %i.bm, 3
  %exitcond.not.i.i.us.us.us.us.us.1161 = icmp eq i64 %i.bf, 3
  %exitcond.not.i.i.us.us.us.us.us.1.1 = icmp eq i64 %i.bf, 2
  %exitcond.not.i.i.us.us.us.us.us.2.1 = icmp eq i64 %i.bf, 1
  %exitcond80.not.i.i.us.us.us.us.us.1 = icmp eq i64 %i.bm, 2
  %exitcond.not.i.i.us.us.us.us.us.2162 = icmp eq i64 %i.bf, 3
  %exitcond.not.i.i.us.us.us.us.us.1.2 = icmp eq i64 %i.bf, 2
  %exitcond.not.i.i.us.us.us.us.us.2.2 = icmp eq i64 %i.bf, 1
  %exitcond80.not.i.i.us.us.us.us.us.2 = icmp eq i64 %i.bm, 1
  %exitcond.not.i.i.us.us.us.us.us.3 = icmp eq i64 %i.bf, 3
  %exitcond.not.i.i.us.us.us.us.us.1.3 = icmp eq i64 %i.bf, 2
  %exitcond.not.i.i.us.us.us.us.us.2.3 = icmp eq i64 %i.bf, 1
  br label %.preheader62.i.i.us.us.us.us.us

.preheader62.i.i.us.us.us.us.us:                  ; preds = %bb.w, %bb.e
  %.05174.i.i.us.us.us.us.us = phi i32 [ 0, %bb.e ], [ %i.eo, %bb.w ]
  %.05273.i.i.us.us.us.us.us = phi ptr [ %i.ak, %bb.e ], [ %i.eq, %bb.w ]
  %.05372.i.i.us.us.us.us.us = phi ptr [ %.34052.us.us.us.us.us, %bb.e ], [ %i.ep, %bb.w ]
  br label %.preheader61.i.i.us.us.us.us.us

.preheader61.i.i.us.us.us.us.us:                  ; preds = %bb.v, %.preheader62.i.i.us.us.us.us.us
  %.05071.i.i.us.us.us.us.us = phi i32 [ 0, %.preheader62.i.i.us.us.us.us.us ], [ %i.el, %bb.v ]
  %.170.i.i.us.us.us.us.us = phi ptr [ %.05273.i.i.us.us.us.us.us, %.preheader62.i.i.us.us.us.us.us ], [ %i.en, %bb.v ] ; 5 uses
  %.15469.i.i.us.us.us.us.us = phi ptr [ %.05372.i.i.us.us.us.us.us, %.preheader62.i.i.us.us.us.us.us ], [ %i.em, %bb.v ] ; 5 uses
  %i.ch = load float, ptr %.15469.i.i.us.us.us.us.us, align 4, !tbaa !99
  store float %i.ch, ptr %.170.i.i.us.us.us.us.us, align 4, !tbaa !99
  %i.ci = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 4 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.preheader61.i.i.us.us.us.us.us
  %i.ck = load float, ptr %i.ci, align 4, !tbaa !99
  store float %i.ck, ptr %i.cj, align 4, !tbaa !99
  %i.cl = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cn = load float, ptr %i.cl, align 4, !tbaa !99
  store float %i.cn, ptr %i.cm, align 4, !tbaa !99
  %i.co = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 12 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 12 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = load float, ptr %i.co, align 4, !tbaa !99
  store float %i.cq, ptr %i.cp, align 4, !tbaa !99
  %i.cr = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.preheader61.i.i.us.us.us.us.us
  %.lcssa152 = phi ptr [ %i.ci, %.preheader61.i.i.us.us.us.us.us ], [ %i.cl, %bb.f ], [ %i.co, %bb.g ], [ %i.cr, %bb.h ]
  %.lcssa = phi ptr [ %i.cj, %.preheader61.i.i.us.us.us.us.us ], [ %i.cm, %bb.f ], [ %i.cp, %bb.g ], [ %i.cs, %bb.h ]
  %i.ct = getelementptr inbounds [4 x i8], ptr %.lcssa152, i64 %i.bu ; 6 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bf ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us, label %bb.v, label %.preheader.i.i.us.us.us.us.us.1

.preheader.i.i.us.us.us.us.us.1:                  ; preds = %bb.i
  %i.cv = load float, ptr %i.ct, align 4, !tbaa !99
  store float %i.cv, ptr %i.cu, align 4, !tbaa !99
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1161, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.us.us.us.us.us.1
  %i.cy = load float, ptr %i.cw, align 4, !tbaa !99
  store float %i.cy, ptr %i.cx, align 4, !tbaa !99
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = load float, ptr %i.cz, align 4, !tbaa !99
  store float %i.db, ptr %i.da, align 4, !tbaa !99
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 12 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 12 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = load float, ptr %i.dc, align 4, !tbaa !99
  store float %i.de, ptr %i.dd, align 4, !tbaa !99
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i.i.us.us.us.us.us.1
  %.lcssa152.1 = phi ptr [ %i.cw, %.preheader.i.i.us.us.us.us.us.1 ], [ %i.cz, %bb.j ], [ %i.dc, %bb.k ], [ %i.df, %bb.l ]
  %.lcssa.1 = phi ptr [ %i.cx, %.preheader.i.i.us.us.us.us.us.1 ], [ %i.da, %bb.j ], [ %i.dd, %bb.k ], [ %i.dg, %bb.l ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %.lcssa152.1, i64 %i.bu ; 6 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.1, i64 %i.bf ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us.1, label %bb.v, label %.preheader.i.i.us.us.us.us.us.2

.preheader.i.i.us.us.us.us.us.2:                  ; preds = %bb.m
  %i.dj = load float, ptr %i.dh, align 4, !tbaa !99
  store float %i.dj, ptr %i.di, align 4, !tbaa !99
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2162, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.preheader.i.i.us.us.us.us.us.2
  %i.dm = load float, ptr %i.dk, align 4, !tbaa !99
  store float %i.dm, ptr %i.dl, align 4, !tbaa !99
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = load float, ptr %i.dn, align 4, !tbaa !99
  store float %i.dp, ptr %i.do, align 4, !tbaa !99
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 12 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = load float, ptr %i.dq, align 4, !tbaa !99
  store float %i.ds, ptr %i.dr, align 4, !tbaa !99
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %.preheader.i.i.us.us.us.us.us.2
  %.lcssa152.2 = phi ptr [ %i.dk, %.preheader.i.i.us.us.us.us.us.2 ], [ %i.dn, %bb.n ], [ %i.dq, %bb.o ], [ %i.dt, %bb.p ]
  %.lcssa.2 = phi ptr [ %i.dl, %.preheader.i.i.us.us.us.us.us.2 ], [ %i.do, %bb.n ], [ %i.dr, %bb.o ], [ %i.du, %bb.p ]
  %i.dv = getelementptr inbounds [4 x i8], ptr %.lcssa152.2, i64 %i.bu ; 6 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.2, i64 %i.bf ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us.2, label %bb.v, label %.preheader.i.i.us.us.us.us.us.3

.preheader.i.i.us.us.us.us.us.3:                  ; preds = %bb.q
  %i.dx = load float, ptr %i.dv, align 4, !tbaa !99
  store float %i.dx, ptr %i.dw, align 4, !tbaa !99
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.3, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.us.us.us.us.us.3
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !99
  store float %i.ea, ptr %i.dz, align 4, !tbaa !99
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.3, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ed = load float, ptr %i.eb, align 4, !tbaa !99
  store float %i.ed, ptr %i.ec, align 4, !tbaa !99
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 12 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = load float, ptr %i.ee, align 4, !tbaa !99
  store float %i.eg, ptr %i.ef, align 4, !tbaa !99
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %.preheader.i.i.us.us.us.us.us.3
  %.lcssa152.3 = phi ptr [ %i.dy, %.preheader.i.i.us.us.us.us.us.3 ], [ %i.eb, %bb.r ], [ %i.ee, %bb.s ], [ %i.eh, %bb.t ]
  %.lcssa.3 = phi ptr [ %i.dz, %.preheader.i.i.us.us.us.us.us.3 ], [ %i.ec, %bb.r ], [ %i.ef, %bb.s ], [ %i.ei, %bb.t ]
  %i.ej = getelementptr inbounds [4 x i8], ptr %.lcssa152.3, i64 %i.bu
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.3, i64 %i.bf
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q, %bb.m, %bb.i
  %.lcssa154 = phi ptr [ %i.ct, %bb.i ], [ %i.dh, %bb.m ], [ %i.dv, %bb.q ], [ %i.ej, %bb.u ]
  %.lcssa153 = phi ptr [ %i.cu, %bb.i ], [ %i.di, %bb.m ], [ %i.dw, %bb.q ], [ %i.ek, %bb.u ]
  %i.el = add nuw nsw i32 %.05071.i.i.us.us.us.us.us, 1 ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %.lcssa154, i64 %i.bx ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.lcssa153, i64 %i.ca ; 2 uses
  %exitcond81.not.i.i.us.us.us.us.us = icmp eq i32 %i.el, %i.bs
  br i1 %exitcond81.not.i.i.us.us.us.us.us, label %bb.w, label %.preheader61.i.i.us.us.us.us.us

bb.w:                                             ; preds = %bb.v
  %i.eo = add nuw nsw i32 %.05174.i.i.us.us.us.us.us, 1 ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.cd
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.cg
  %exitcond82.not.i.i.us.us.us.us.us = icmp eq i32 %i.eo, %i.bt
  br i1 %exitcond82.not.i.i.us.us.us.us.us, label %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us, label %.preheader62.i.i.us.us.us.us.us

bb.x:                                             ; preds = %bb.d
  tail call void @_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLine3putEPKfllll(ptr noundef nonnull align 4 dereferenceable(1024) %i.ak, ptr noundef nonnull %.34052.us.us.us.us.us, i64 noundef 1, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q)
  br label %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us

_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us: ; preds = %._ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us
end_hunk_0
begin_hunk_1_@_ZSt3maxIN3zfp8internal4dim39referenceINS0_6array3IdNS0_5codec4zfp3IdEENS0_5index8implicitEEEEEERKT_SE_SE_:bb.a
  br i1 %.not.i.i.i.i.i6, label %_ZNK3zfp8internal4dim315const_referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEcvdEv.exit9, label %bb.g

bb.g:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5
  %i.ck = trunc i32 %i.cb to i1
  br i1 %i.ck, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cl = tail call noundef i64 @_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd(ptr noundef nonnull align 8 dereferenceable(104) %i.bh, i64 noundef %i.cj, ptr noundef %i.cg) ; 0 uses
  %.pre.i.i.i.i.i8 = load ptr, ptr %i.bg, align 8, !tbaa !264
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = phi ptr [ %.pre.i.i.i.i.i8, %bb.h ], [ %i.bh, %bb.g ]
  %i.cn = tail call noundef i64 @_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd(ptr noundef nonnull align 8 dereferenceable(104) %i.cm, i64 noundef %i.bs, ptr noundef %i.cg) ; 0 uses
  br label %_ZNK3zfp8internal4dim315const_referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEcvdEv.exit9

_ZNK3zfp8internal4dim315const_referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEcvdEv.exit9: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5, %bb.i
  %i.co = and i64 %i.ba, 3
  %i.cp = and i64 %i.bc, 3
  %i.cq = shl i64 %i.be, 2
  %i.cr = and i64 %i.cq, 12
  %i.cs = or disjoint i64 %i.cr, %i.cp
  %.idx.i.i.i.i.i7 = shl nuw nsw i64 %i.cs, 5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i.i.i.i7
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.co
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !49
  %i.cw = fcmp olt double %i.ax, %i.cv
  %. = select i1 %i.cw, ptr %1, ptr %0
  ret ptr %.
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEC2EmmmmRK10zfp_config(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.c = tail call ptr @zfp_stream_open(ptr noundef null)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !293
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.d = icmp eq i64 %1, 0
  %i.e = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.d, %i.e
  %i.f = icmp eq i64 %3, 0
  %or.cond3.i = or i1 %or.cond.i, %i.f
  %i.g = icmp eq i64 %4, 0
  %or.cond5.i = or i1 %or.cond3.i, %i.g
  br i1 %or.cond5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %1, 3
  %i.i = lshr i64 %i.h, 2
  %i.j = add i64 %2, 3
  %i.k = lshr i64 %i.j, 2
  %i.l = add i64 %3, 3
  %i.m = lshr i64 %i.l, 2
  %i.n = add i64 %4, 3
  %i.o = lshr i64 %i.n, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink26.i = phi i64 [ %4, %bb.b ], [ 0, %bb.a ]
  %.sink25.i = phi i64 [ %3, %bb.b ], [ 0, %bb.a ]
  %.sink24.i = phi i64 [ %2, %bb.b ], [ 0, %bb.a ]
  %.sink23.i = phi i64 [ %1, %bb.b ], [ 0, %bb.a ]
  %.sink22.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sink21.i = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sink20.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sink.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sink26.i, ptr %i.p, align 8, !tbaa !297
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sink25.i, ptr %i.q, align 8, !tbaa !298
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink24.i, ptr %i.r, align 8, !tbaa !299
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sink23.i, ptr %i.s, align 8, !tbaa !300
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sink22.i, ptr %i.t, align 8, !tbaa !301
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sink21.i, ptr %i.u, align 8, !tbaa !302
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sink20.i, ptr %i.v, align 8, !tbaa !303
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sink.i, ptr %i.w, align 8, !tbaa !304
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = mul i64 %.sink21.i, %.sink22.i
  %i.z = mul i64 %i.y, %.sink20.i
  %i.aa = mul i64 %i.z, %.sink.i
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !123
  invoke void @_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEE10set_configERK10zfp_config(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #27
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp6array4IdNS_5codec4zfp4IdEENS_5index8implicitEE3setEPKd(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [256 x double], align 16          ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i64, ptr %i.b, align 8, !tbaa !304  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load i64, ptr %i.d, align 8, !tbaa !303  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load i64, ptr %i.f, align 8, !tbaa !302  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !301  ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !126  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !138  ; 2 uses
  %i.n = mul i64 %i.m, %i.k                       ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !158  ; 2 uses
  %i.q = mul i64 %i.n, %i.p                       ; 3 uses
  %.not91 = icmp eq i64 %i.i, 0
  br i1 %.not91, label %.loopexit, label %.preheader46.lr.ph

.preheader46.lr.ph:                               ; preds = %bb.b
  %.not92 = icmp eq i64 %i.g, 0
  %.not94 = icmp eq i64 %i.c, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.v = shl nsw i64 %i.k, 2
  %i.w = shl nsw i64 %i.n, 2
  %.not93 = icmp eq i64 %i.e, 0
  %or.cond = select i1 %.not92, i1 true, i1 %.not93
  %brmerge = select i1 %or.cond, i1 true, i1 %.not94
  br i1 %brmerge, label %.loopexit, label %.preheader46.us.us

.preheader46.us.us:                               ; preds = %.preheader46.lr.ph, %._crit_edge.split.us.split.us.us.us
  %.03581.us.us = phi i64 [ %i.hf, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader46.lr.ph ]
  %.03680.us.us = phi i64 [ %i.x, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader46.lr.ph ]
  %.03779.us.us = phi ptr [ %i.hj, %._crit_edge.split.us.split.us.us.us ], [ %1, %.preheader46.lr.ph ]
  br label %.preheader45.us.us.us.us

.preheader45.us.us.us.us:                         ; preds = %._crit_edge60.split.us.us.us.us.us, %.preheader46.us.us
  %.03466.us.us.us.us = phi i64 [ 0, %.preheader46.us.us ], [ %i.ha, %._crit_edge60.split.us.us.us.us.us ]
  %.165.us.us.us.us = phi i64 [ %.03680.us.us, %.preheader46.us.us ], [ %i.x, %._crit_edge60.split.us.us.us.us.us ]
  %.13864.us.us.us.us = phi ptr [ %.03779.us.us, %.preheader46.us.us ], [ %i.he, %._crit_edge60.split.us.us.us.us.us ]
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %._crit_edge.us.us.us.us.us, %.preheader45.us.us.us.us
  %.03359.us.us.us.us.us = phi i64 [ 0, %.preheader45.us.us.us.us ], [ %i.gw, %._crit_edge.us.us.us.us.us ]
  %.258.us.us.us.us.us = phi i64 [ %.165.us.us.us.us, %.preheader45.us.us.us.us ], [ %i.x, %._crit_edge.us.us.us.us.us ]
  %.23957.us.us.us.us.us = phi ptr [ %.13864.us.us.us.us, %.preheader45.us.us.us.us ], [ %i.gz, %._crit_edge.us.us.us.us.us ]
  br label %bb.c

bb.c:                                             ; preds = %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us, %.preheader.us.us.us.us.us
  %.055.us.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us.us.us ], [ %i.gu, %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us ]
  %.354.us.us.us.us.us = phi i64 [ %.258.us.us.us.us.us, %.preheader.us.us.us.us.us ], [ %i.x, %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us ] ; 7 uses
  %.34052.us.us.us.us.us = phi ptr [ %.23957.us.us.us.us.us, %.preheader.us.us.us.us.us ], [ %i.gv, %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us ] ; 5 uses
  %i.x = add i64 %.354.us.us.us.us.us, 1          ; 4 uses
  %i.y = trunc i64 %.354.us.us.us.us.us to i32
  %i.z = add i32 %i.y, 1                          ; 2 uses
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !267
  %i.ab = and i32 %i.aa, %i.z
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !306 ; 2 uses
  %i.ag = lshr i32 %i.af, 1
  %i.ah = icmp eq i32 %i.ag, %i.z
  br i1 %i.ah, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us, label %._ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge

._ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !308
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us

_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us: ; preds = %bb.c
  %i.ai = or i32 %i.af, 1
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !306
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !97  ; 2 uses
  %i.ak = getelementptr inbounds nuw [2048 x i8], ptr %i.aj, i64 %i.ad ; 2 uses
  %.not.i.us.us.us.us.us = icmp eq ptr %i.aj, null
  %.pre115 = load ptr, ptr %i.u, align 8, !tbaa !308 ; 8 uses
  br i1 %.not.i.us.us.us.us.us, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us, label %bb.d

bb.d:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us
  %i.al = getelementptr inbounds nuw i8, ptr %.pre115, i64 88
  %i.am = load i64, ptr %i.al, align 8, !tbaa !304 ; 2 uses
  %i.an = urem i64 %.354.us.us.us.us.us, %i.am
  %i.ao = shl i64 %i.an, 2
  %i.ap = udiv i64 %.354.us.us.us.us.us, %i.am    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre115, i64 96
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !303 ; 2 uses
  %i.as = urem i64 %i.ap, %i.ar
  %i.at = shl i64 %i.as, 2
  %i.au = udiv i64 %i.ap, %i.ar                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre115, i64 104
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !302 ; 2 uses
  %i.ax = urem i64 %i.au, %i.aw
  %2 = shl i64 %i.ax, 2
  %i.ay = udiv i64 %i.au, %i.aw
  %3 = shl i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %.pre115, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !300 ; 2 uses
  %i.bb = xor i64 %i.ba, %i.ao
  %i.bc = add i64 %i.bb, -4
  %i.bd = lshr i64 %i.bc, 62
  %i.be = sub i64 0, %i.ba
  %i.bf = and i64 %i.bd, %i.be                    ; 18 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre115, i64 64
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !299 ; 2 uses
  %i.bi = xor i64 %i.bh, %i.at
  %i.bj = add i64 %i.bi, -4
  %i.bk = lshr i64 %i.bj, 62
  %i.bl = sub i64 0, %i.bh
  %i.bm = and i64 %i.bk, %i.bl                    ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre115, i64 72
  %4 = load i64, ptr %i.bn, align 8, !tbaa !298   ; 2 uses
  %5 = xor i64 %4, %2
  %6 = add i64 %5, -4
  %7 = lshr i64 %6, 62
  %8 = sub i64 0, %4
  %9 = and i64 %7, %8                             ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.pre115, i64 80
  %11 = load i64, ptr %10, align 8, !tbaa !297    ; 2 uses
  %12 = xor i64 %11, %3
  %13 = add i64 %12, -4
  %14 = lshr i64 %13, 62
  %15 = sub i64 0, %11
  %16 = and i64 %14, %15                          ; 2 uses
  %i.bo = or i64 %i.bm, %i.bf
  %17 = or i64 %i.bo, %9
  %18 = or i64 %17, %16
  %i.bp = icmp eq i64 %18, 0
  br i1 %i.bp, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %19 = trunc nuw nsw i64 %16 to i32
  %20 = trunc nuw nsw i64 %9 to i32
  %i.bq = trunc nuw nsw i64 %i.bm to i32
  %.neg = or disjoint i64 %i.bf, -4
  %i.br = sub nuw nsw i32 4, %i.bq                ; 2 uses
  %i.bs = sub nuw nsw i32 4, %20                  ; 3 uses
  %i.bt = sub nuw nsw i32 4, %19
  %i.bu = add i64 %.neg, %i.k                     ; 4 uses
  %i.bv = zext nneg i32 %i.br to i64
  %i.bw = sub i64 %i.m, %i.bv
  %i.bx = mul i64 %i.bw, %i.k
  %i.by = shl nuw nsw i32 %i.br, 2
  %i.bz = sub nuw nsw i32 16, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = zext nneg i32 %i.bs to i64
  %i.cc = sub i64 %i.p, %i.cb
  %i.cd = mul i64 %i.cc, %i.n
  %i.ce = shl nuw nsw i32 %i.bs, 4
  %i.cf = sub nuw nsw i32 64, %i.ce
  %i.cg = zext nneg i32 %i.cf to i64
  %exitcond.not.i.i.us.us.us.us.us = icmp eq i64 %i.bf, 3
  %exitcond.not.i.i.us.us.us.us.us.1 = icmp eq i64 %i.bf, 2
  %exitcond.not.i.i.us.us.us.us.us.2 = icmp eq i64 %i.bf, 1
  %exitcond80.not.i.i.us.us.us.us.us = icmp eq i64 %i.bm, 3
  %exitcond.not.i.i.us.us.us.us.us.1161 = icmp eq i64 %i.bf, 3
  %exitcond.not.i.i.us.us.us.us.us.1.1 = icmp eq i64 %i.bf, 2
  %exitcond.not.i.i.us.us.us.us.us.2.1 = icmp eq i64 %i.bf, 1
  %exitcond80.not.i.i.us.us.us.us.us.1 = icmp eq i64 %i.bm, 2
  %exitcond.not.i.i.us.us.us.us.us.2162 = icmp eq i64 %i.bf, 3
  %exitcond.not.i.i.us.us.us.us.us.1.2 = icmp eq i64 %i.bf, 2
  %exitcond.not.i.i.us.us.us.us.us.2.2 = icmp eq i64 %i.bf, 1
  %exitcond80.not.i.i.us.us.us.us.us.2 = icmp eq i64 %i.bm, 1
  %exitcond.not.i.i.us.us.us.us.us.3 = icmp eq i64 %i.bf, 3
  %exitcond.not.i.i.us.us.us.us.us.1.3 = icmp eq i64 %i.bf, 2
  %exitcond.not.i.i.us.us.us.us.us.2.3 = icmp eq i64 %i.bf, 1
  br label %.preheader62.i.i.us.us.us.us.us

.preheader62.i.i.us.us.us.us.us:                  ; preds = %bb.w, %bb.e
  %.05174.i.i.us.us.us.us.us = phi i32 [ 0, %bb.e ], [ %i.eo, %bb.w ]
  %.05273.i.i.us.us.us.us.us = phi ptr [ %i.ak, %bb.e ], [ %i.eq, %bb.w ]
  %.05372.i.i.us.us.us.us.us = phi ptr [ %.34052.us.us.us.us.us, %bb.e ], [ %i.ep, %bb.w ]
  br label %.preheader61.i.i.us.us.us.us.us

.preheader61.i.i.us.us.us.us.us:                  ; preds = %bb.v, %.preheader62.i.i.us.us.us.us.us
  %.05071.i.i.us.us.us.us.us = phi i32 [ 0, %.preheader62.i.i.us.us.us.us.us ], [ %i.el, %bb.v ]
  %.170.i.i.us.us.us.us.us = phi ptr [ %.05273.i.i.us.us.us.us.us, %.preheader62.i.i.us.us.us.us.us ], [ %i.en, %bb.v ] ; 5 uses
  %.15469.i.i.us.us.us.us.us = phi ptr [ %.05372.i.i.us.us.us.us.us, %.preheader62.i.i.us.us.us.us.us ], [ %i.em, %bb.v ] ; 5 uses
  %i.ch = load double, ptr %.15469.i.i.us.us.us.us.us, align 8, !tbaa !49
  store double %i.ch, ptr %.170.i.i.us.us.us.us.us, align 8, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.preheader61.i.i.us.us.us.us.us
  %i.ck = load double, ptr %i.ci, align 8, !tbaa !49
  store double %i.ck, ptr %i.cj, align 8, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 16 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !49
  store double %i.cn, ptr %i.cm, align 8, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 24 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = load double, ptr %i.co, align 8, !tbaa !49
  store double %i.cq, ptr %i.cp, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.preheader61.i.i.us.us.us.us.us
  %.lcssa152 = phi ptr [ %i.ci, %.preheader61.i.i.us.us.us.us.us ], [ %i.cl, %bb.f ], [ %i.co, %bb.g ], [ %i.cr, %bb.h ]
  %.lcssa = phi ptr [ %i.cj, %.preheader61.i.i.us.us.us.us.us ], [ %i.cm, %bb.f ], [ %i.cp, %bb.g ], [ %i.cs, %bb.h ]
  %i.ct = getelementptr inbounds [8 x i8], ptr %.lcssa152, i64 %i.bu ; 6 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %i.bf ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us, label %bb.v, label %.preheader.i.i.us.us.us.us.us.1

.preheader.i.i.us.us.us.us.us.1:                  ; preds = %bb.i
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !49
  store double %i.cv, ptr %i.cu, align 8, !tbaa !49
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1161, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.us.us.us.us.us.1
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !49
  store double %i.cy, ptr %i.cx, align 8, !tbaa !49
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = load double, ptr %i.cz, align 8, !tbaa !49
  store double %i.db, ptr %i.da, align 8, !tbaa !49
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = load double, ptr %i.dc, align 8, !tbaa !49
  store double %i.de, ptr %i.dd, align 8, !tbaa !49
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i.i.us.us.us.us.us.1
  %.lcssa152.1 = phi ptr [ %i.cw, %.preheader.i.i.us.us.us.us.us.1 ], [ %i.cz, %bb.j ], [ %i.dc, %bb.k ], [ %i.df, %bb.l ]
  %.lcssa.1 = phi ptr [ %i.cx, %.preheader.i.i.us.us.us.us.us.1 ], [ %i.da, %bb.j ], [ %i.dd, %bb.k ], [ %i.dg, %bb.l ]
  %i.dh = getelementptr inbounds [8 x i8], ptr %.lcssa152.1, i64 %i.bu ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.1, i64 %i.bf ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us.1, label %bb.v, label %.preheader.i.i.us.us.us.us.us.2

.preheader.i.i.us.us.us.us.us.2:                  ; preds = %bb.m
  %i.dj = load double, ptr %i.dh, align 8, !tbaa !49
  store double %i.dj, ptr %i.di, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2162, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.preheader.i.i.us.us.us.us.us.2
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !49
  store double %i.dm, ptr %i.dl, align 8, !tbaa !49
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = load double, ptr %i.dn, align 8, !tbaa !49
  store double %i.dp, ptr %i.do, align 8, !tbaa !49
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !49
  store double %i.ds, ptr %i.dr, align 8, !tbaa !49
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %.preheader.i.i.us.us.us.us.us.2
  %.lcssa152.2 = phi ptr [ %i.dk, %.preheader.i.i.us.us.us.us.us.2 ], [ %i.dn, %bb.n ], [ %i.dq, %bb.o ], [ %i.dt, %bb.p ]
  %.lcssa.2 = phi ptr [ %i.dl, %.preheader.i.i.us.us.us.us.us.2 ], [ %i.do, %bb.n ], [ %i.dr, %bb.o ], [ %i.du, %bb.p ]
  %i.dv = getelementptr inbounds [8 x i8], ptr %.lcssa152.2, i64 %i.bu ; 6 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.2, i64 %i.bf ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us.2, label %bb.v, label %.preheader.i.i.us.us.us.us.us.3

.preheader.i.i.us.us.us.us.us.3:                  ; preds = %bb.q
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !49
  store double %i.dx, ptr %i.dw, align 8, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.3, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.us.us.us.us.us.3
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !49
  store double %i.ea, ptr %i.dz, align 8, !tbaa !49
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.3, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ed = load double, ptr %i.eb, align 8, !tbaa !49
  store double %i.ed, ptr %i.ec, align 8, !tbaa !49
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = load double, ptr %i.ee, align 8, !tbaa !49
  store double %i.eg, ptr %i.ef, align 8, !tbaa !49
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %.preheader.i.i.us.us.us.us.us.3
  %.lcssa152.3 = phi ptr [ %i.dy, %.preheader.i.i.us.us.us.us.us.3 ], [ %i.eb, %bb.r ], [ %i.ee, %bb.s ], [ %i.eh, %bb.t ]
  %.lcssa.3 = phi ptr [ %i.dz, %.preheader.i.i.us.us.us.us.us.3 ], [ %i.ec, %bb.r ], [ %i.ef, %bb.s ], [ %i.ei, %bb.t ]
  %i.ej = getelementptr inbounds [8 x i8], ptr %.lcssa152.3, i64 %i.bu
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.3, i64 %i.bf
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q, %bb.m, %bb.i
  %.lcssa154 = phi ptr [ %i.ct, %bb.i ], [ %i.dh, %bb.m ], [ %i.dv, %bb.q ], [ %i.ej, %bb.u ]
  %.lcssa153 = phi ptr [ %i.cu, %bb.i ], [ %i.di, %bb.m ], [ %i.dw, %bb.q ], [ %i.ek, %bb.u ]
  %i.el = add nuw nsw i32 %.05071.i.i.us.us.us.us.us, 1 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %.lcssa154, i64 %i.bx ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.lcssa153, i64 %i.ca ; 2 uses
  %exitcond81.not.i.i.us.us.us.us.us = icmp eq i32 %i.el, %i.bs
  br i1 %exitcond81.not.i.i.us.us.us.us.us, label %bb.w, label %.preheader61.i.i.us.us.us.us.us

bb.w:                                             ; preds = %bb.v
  %i.eo = add nuw nsw i32 %.05174.i.i.us.us.us.us.us, 1 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.cd
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.cg
  %exitcond82.not.i.i.us.us.us.us.us = icmp eq i32 %i.eo, %i.bt
  br i1 %exitcond82.not.i.i.us.us.us.us.us, label %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us, label %.preheader62.i.i.us.us.us.us.us

bb.x:                                             ; preds = %bb.d
  tail call void @_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLine3putEPKdllll(ptr noundef nonnull align 8 dereferenceable(2048) %i.ak, ptr noundef nonnull %.34052.us.us.us.us.us, i64 noundef 1, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q)
  br label %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us

_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us: ; preds = %._ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us
end_hunk_1
