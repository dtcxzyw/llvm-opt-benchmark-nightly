Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_tar?download=true
inline.NumInlined: 71
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 25
begin_hunk_0_@pax_attribute_read_time:bb.a
  %i.az = icmp eq i64 %.14061.i, 5
  br i1 %i.az, label %pax_time.exit, label %bb.p

bb.p:                                             ; preds = %.preheader.4.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.162.i, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = add i8 %i.bb, -48                       ; 2 uses
  %or.cond52.4.i = icmp ult i8 %i.bc, 10
  br i1 %or.cond52.4.i, label %.preheader.5.i, label %pax_time.exit

.preheader.5.i:                                   ; preds = %bb.p
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = mul nuw nsw i64 %i.bd, 10000
  %i.bf = add nuw nsw i64 %i.be, %i.ay            ; 2 uses
  store i64 %i.bf, ptr %3, align 8, !tbaa !44
  %i.bg = icmp eq i64 %.14061.i, 6
  br i1 %i.bg, label %pax_time.exit, label %bb.q

bb.q:                                             ; preds = %.preheader.5.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.162.i, i64 6
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bj = add i8 %i.bi, -48                       ; 2 uses
  %or.cond52.5.i = icmp ult i8 %i.bj, 10
  br i1 %or.cond52.5.i, label %.preheader.6.i, label %pax_time.exit

.preheader.6.i:                                   ; preds = %bb.q
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = mul nuw nsw i64 %i.bk, 1000
  %i.bm = add nuw nsw i64 %i.bl, %i.bf            ; 2 uses
  store i64 %i.bm, ptr %3, align 8, !tbaa !44
  %i.bn = icmp eq i64 %.14061.i, 7
  br i1 %i.bn, label %pax_time.exit, label %bb.r

bb.r:                                             ; preds = %.preheader.6.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.162.i, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = add i8 %i.bp, -48                       ; 2 uses
  %or.cond52.6.i = icmp ult i8 %i.bq, 10
  br i1 %or.cond52.6.i, label %.preheader.7.i, label %pax_time.exit

.preheader.7.i:                                   ; preds = %bb.r
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = mul nuw nsw i64 %i.br, 100
  %i.bt = add nuw nsw i64 %i.bs, %i.bm            ; 2 uses
  store i64 %i.bt, ptr %3, align 8, !tbaa !44
  %i.bu = icmp eq i64 %.14061.i, 8
  br i1 %i.bu, label %pax_time.exit, label %bb.s

bb.s:                                             ; preds = %.preheader.7.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.162.i, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14
  %i.bx = add i8 %i.bw, -48                       ; 2 uses
  %or.cond52.7.i = icmp ult i8 %i.bx, 10
  br i1 %or.cond52.7.i, label %.preheader.8.i, label %pax_time.exit

.preheader.8.i:                                   ; preds = %bb.s
  %narrow.i = mul nuw nsw i8 %i.bx, 10
  %i.by = zext nneg i8 %narrow.i to i64
  %i.bz = add nuw nsw i64 %i.bt, %i.by            ; 2 uses
  store i64 %i.bz, ptr %3, align 8, !tbaa !44
  %i.ca = icmp eq i64 %.14061.i, 9
  br i1 %i.ca, label %pax_time.exit, label %bb.t

bb.t:                                             ; preds = %.preheader.8.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.162.i, i64 9
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = add i8 %i.cc, -48                       ; 2 uses
  %or.cond52.8.i = icmp ult i8 %i.cd, 10
  br i1 %or.cond52.8.i, label %bb.u, label %pax_time.exit

bb.u:                                             ; preds = %bb.t
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = add nuw nsw i64 %i.bz, %i.ce
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.u, %bb.j, %.critedge.thread.i, %bb.f
  %.sink.i = phi i64 [ %i.cf, %bb.u ], [ 0, %.critedge.thread.i ], [ 0, %bb.j ], [ 0, %bb.f ]
  store i64 %.sink.i, ptr %3, align 8, !tbaa !44
  br label %pax_time.exit

pax_time.exit:                                    ; preds = %bb.k, %bb.l, %.preheader.1.i, %bb.m, %.preheader.2.i, %bb.n, %.preheader.3.i, %bb.o, %.preheader.4.i, %bb.p, %.preheader.5.i, %bb.q, %.preheader.6.i, %bb.r, %.preheader.7.i, %bb.s, %.preheader.8.i, %bb.t, %.loopexit.sink.split.i
  call void @archive_string_free(ptr noundef nonnull %5) #11
  %i.cg = load i64, ptr %2, align 8, !tbaa !44
  %i.ch = icmp eq i64 %i.cg, -9223372036854775808
  br i1 %i.ch, label %.sink.split, label %bb.v

.sink.split:                                      ; preds = %pax_time.exit, %bb.b, %bb.d
  %.0.ph = phi i32 [ -30, %bb.b ], [ %i.c, %bb.d ], [ -20, %pax_time.exit ]
  store i64 0, ptr %2, align 8, !tbaa !44
  store i64 0, ptr %3, align 8, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %pax_time.exit
  %.0 = phi i32 [ 0, %pax_time.exit ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.0
}

declare void @archive_entry_set_birthtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_symlink_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @pax_attribute_LIBARCHIVE_xattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1, -17) %2, ptr nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, 16777217) %4) unnamed_addr #0 {
bb.a:
  %i.a = add nuw i64 %2, 1
  %i.b = tail call noalias ptr @malloc(i64 noundef %i.a) #15 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %url_decode.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.backedge.i
  %.02651.i = phi ptr [ %.026.be.i, %.backedge.i ], [ %1, %bb.a ] ; 5 uses
  %.02750.i = phi ptr [ %.027.be.i, %.backedge.i ], [ %i.b, %bb.a ] ; 4 uses
  %.03049.i = phi i64 [ %.030.be.i, %.backedge.i ], [ %2, %bb.a ] ; 3 uses
  %i.d = load i8, ptr %.02651.i, align 1, !tbaa !14 ; 3 uses
  %.not38.i = icmp eq i8 %i.d, 0
  br i1 %.not38.i, label %url_decode.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.e = icmp eq i8 %i.d, 37
  %i.f = icmp ugt i64 %.03049.i, 2
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.02651.i, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = sext i8 %i.h to i32                      ; 5 uses
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.j, 10
  br i1 %or.cond.i.i, label %tohex.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.i, -65
  %or.cond3.i.i = icmp ult i32 %i.k, 6
  br i1 %or.cond3.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.i, -55
  br label %tohex.exit.i

bb.f:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.i, -97
  %or.cond5.i.i = icmp ult i32 %i.m, 6
  %i.n = add nsw i32 %i.i, -87
  %spec.select.i.i = select i1 %or.cond5.i.i, i32 %i.n, i32 -1
  br label %tohex.exit.i

tohex.exit.i:                                     ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i = phi i32 [ %spec.select.i.i, %bb.f ], [ %i.l, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02651.i, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = sext i8 %i.p to i32                      ; 5 uses
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %or.cond.i39.i = icmp ult i32 %i.r, 10
  br i1 %or.cond.i39.i, label %tohex.exit44.i, label %bb.g

bb.g:                                             ; preds = %tohex.exit.i
  %i.s = add nsw i32 %i.q, -65
  %or.cond3.i40.i = icmp ult i32 %i.s, 6
  br i1 %or.cond3.i40.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.q, -55
  br label %tohex.exit44.i

bb.i:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.q, -97
  %or.cond5.i41.i = icmp ult i32 %i.u, 6
  %i.v = add nsw i32 %i.q, -87
  %spec.select.i42.i = select i1 %or.cond5.i41.i, i32 %i.v, i32 -1
  br label %tohex.exit44.i

tohex.exit44.i:                                   ; preds = %bb.i, %bb.h, %tohex.exit.i
  %.0.i43.i = phi i32 [ %spec.select.i42.i, %bb.i ], [ %i.t, %bb.h ], [ %i.r, %tohex.exit.i ] ; 2 uses
  %i.w = icmp sgt i32 %.0.i.i, -1
  %i.x = icmp sgt i32 %.0.i43.i, -1
  %or.cond3.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond3.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %tohex.exit44.i
  %i.y = getelementptr inbounds nuw i8, ptr %.02651.i, i64 3
  %i.z = add i64 %.03049.i, -3
  %i.aa = shl nuw nsw i32 %.0.i.i, 4
  %i.ab = or i32 %.0.i43.i, %i.aa
  %i.ac = trunc i32 %i.ab to i8
  store i8 %i.ac, ptr %.02750.i, align 1, !tbaa !14
  br label %.backedge.i

.thread.i:                                        ; preds = %tohex.exit44.i, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %.02651.i, i64 1
  store i8 %i.d, ptr %.02750.i, align 1, !tbaa !14
  %i.ae = add i64 %.03049.i, -1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.thread.i, %bb.j
  %.030.be.i = phi i64 [ %i.z, %bb.j ], [ %i.ae, %.thread.i ] ; 2 uses
  %.026.be.i = phi ptr [ %i.y, %bb.j ], [ %i.ad, %.thread.i ]
  %.027.be.i = getelementptr inbounds nuw i8, ptr %.02750.i, i64 1 ; 2 uses
  %.not.i = icmp eq i64 %.030.be.i, 0
  br i1 %.not.i, label %url_decode.exit, label %.preheader.i, !llvm.loop !107

url_decode.exit:                                  ; preds = %.preheader.i, %.backedge.i
  %.027.lcssa.i = phi ptr [ %.027.be.i, %.backedge.i ], [ %.02750.i, %.preheader.i ]
  store i8 0, ptr %.027.lcssa.i, align 1, !tbaa !14
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 66), align 2, !tbaa !14
  %.not.i16 = icmp eq i8 %i.af, 1
  br i1 %.not.i16, label %.loopexit.i, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %url_decode.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @base64_decode.decode_table, i8 -1, i64 128, i1 false)
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 65), align 1, !tbaa !14
  store <8 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23>, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 81), align 1, !tbaa !14
  store i8 24, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 89), align 1, !tbaa !14
  store i8 25, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 90), align 2, !tbaa !14
  store <16 x i8> <i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41>, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 97), align 1, !tbaa !14
  store <8 x i8> <i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49>, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 113), align 1, !tbaa !14
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 121), align 1, !tbaa !14
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 122), align 2, !tbaa !14
  store i8 59, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 55), align 1, !tbaa !14
  store i8 60, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 56), align 8, !tbaa !14
  store i8 61, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 57), align 1, !tbaa !14
  store i8 62, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 43), align 1, !tbaa !14
  store <8 x i8> <i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58>, ptr getelementptr inbounds nuw (i8, ptr @base64_decode.decode_table, i64 47), align 1, !tbaa !14
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %url_decode.exit
  %i.ag = lshr i64 %4, 2
  %i.ah = add nuw nsw i64 %4, 1
  %i.ai = sub nsw i64 %i.ah, %i.ag
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #15 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %url_decode.exit.thread.sink.split, label %.preheader52.i

.preheader52.i:                                   ; preds = %.loopexit.i
  %.not51111.i = icmp eq i64 %4, 0
  br i1 %.not51111.i, label %base64_decode.exit.thread20, label %.preheader.i17

.preheader.i17:                                   ; preds = %.preheader52.i, %bb.z
  %.042114.i = phi ptr [ %.1.lcssa.i, %bb.z ], [ %3, %.preheader52.i ] ; 2 uses
  %.043113.i = phi ptr [ %i.cs, %bb.z ], [ %i.aj, %.preheader52.i ] ; 4 uses
  %.045112.i = phi i64 [ %.2.i, %bb.z ], [ %4, %.preheader52.i ] ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.m, %.preheader.i17
  %.157.i = phi ptr [ %i.ar, %bb.m ], [ %.042114.i, %.preheader.i17 ] ; 5 uses
  %.14656.i = phi i64 [ %i.aq, %bb.m ], [ %.045112.i, %.preheader.i17 ] ; 2 uses
  %i.al = load i8, ptr %.157.i, align 1, !tbaa !14 ; 3 uses
  switch i8 %i.al, label %bb.k [
    i8 61, label %.outer._crit_edge.i
    i8 95, label %.outer._crit_edge.i
  ]

bb.k:                                             ; preds = %.lr.ph.split.i
  %or.cond.i18 = icmp slt i8 %i.al, 32
  br i1 %or.cond.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @base64_decode.decode_table, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14  ; 2 uses
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %bb.m, label %.outer.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = add nsw i64 %.14656.i, -1               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.157.i, i64 1
  %.not117.i = icmp eq i64 %i.aq, 0
  br i1 %.not117.i, label %.outer._crit_edge.loopexit.split.loop.exit151.i, label %.lr.ph.split.i, !llvm.loop !108

.outer.i:                                         ; preds = %bb.l
  %i.as = zext i8 %i.ao to i32                    ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.157.i, i64 1 ; 3 uses
  %i.au = add nsw i64 %.14656.i, -1               ; 4 uses
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %.outer._crit_edge.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.outer.i, %bb.p
  %.157.i.1 = phi ptr [ %i.bg, %bb.p ], [ %i.at, %.outer.i ] ; 5 uses
  %.14656.i.1 = phi i64 [ %i.bf, %bb.p ], [ %i.au, %.outer.i ] ; 2 uses
  %i.av = load i8, ptr %.157.i.1, align 1, !tbaa !14 ; 3 uses
  switch i8 %i.av, label %bb.n [
    i8 61, label %.outer._crit_edge.i
    i8 95, label %.outer._crit_edge.i
  ]

bb.n:                                             ; preds = %.lr.ph.split.i.1
  %or.cond.i18.1 = icmp slt i8 %i.av, 32
  br i1 %or.cond.i18.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @base64_decode.decode_table, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14  ; 2 uses
  %i.az = icmp eq i8 %i.ay, -1
  br i1 %i.az, label %bb.p, label %.outer.i.1

.outer.i.1:                                       ; preds = %bb.o
  %i.ba = zext i8 %i.ay to i32
  %i.bb = shl nuw nsw i32 %i.as, 6
  %i.bc = getelementptr inbounds nuw i8, ptr %.157.i.1, i64 1 ; 3 uses
  %i.bd = or i32 %i.bb, %i.ba                     ; 5 uses
  %i.be = add nsw i64 %.14656.i.1, -1             ; 4 uses
  %.not149 = icmp eq i64 %i.be, 0
  br i1 %.not149, label %.outer._crit_edge.i, label %.lr.ph.split.i.2

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bf = add nsw i64 %.14656.i.1, -1             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.157.i.1, i64 1
  %.not117.i.1 = icmp eq i64 %i.bf, 0
  br i1 %.not117.i.1, label %.outer._crit_edge.loopexit.split.loop.exit151.i, label %.lr.ph.split.i.1, !llvm.loop !108

.lr.ph.split.i.2:                                 ; preds = %.outer.i.1, %bb.s
  %.157.i.2 = phi ptr [ %i.bs, %bb.s ], [ %i.bc, %.outer.i.1 ] ; 5 uses
  %.14656.i.2 = phi i64 [ %i.br, %bb.s ], [ %i.be, %.outer.i.1 ] ; 2 uses
  %i.bh = load i8, ptr %.157.i.2, align 1, !tbaa !14 ; 3 uses
  switch i8 %i.bh, label %bb.q [
    i8 61, label %.outer._crit_edge.i
    i8 95, label %.outer._crit_edge.i
  ]

bb.q:                                             ; preds = %.lr.ph.split.i.2
  %or.cond.i18.2 = icmp slt i8 %i.bh, 32
  br i1 %or.cond.i18.2, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @base64_decode.decode_table, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14  ; 2 uses
  %i.bl = icmp eq i8 %i.bk, -1
  br i1 %i.bl, label %bb.s, label %.outer.i.2

.outer.i.2:                                       ; preds = %bb.r
  %i.bm = zext i8 %i.bk to i32
  %i.bn = shl nuw nsw i32 %i.bd, 6
  %i.bo = getelementptr inbounds nuw i8, ptr %.157.i.2, i64 1 ; 3 uses
  %i.bp = or i32 %i.bn, %i.bm                     ; 5 uses
  %i.bq = add nsw i64 %.14656.i.2, -1             ; 4 uses
  %.not150 = icmp eq i64 %i.bq, 0
  br i1 %.not150, label %.outer._crit_edge.i, label %.lr.ph.split.i.3

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.br = add nsw i64 %.14656.i.2, -1             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.157.i.2, i64 1
  %.not117.i.2 = icmp eq i64 %i.br, 0
  br i1 %.not117.i.2, label %.outer._crit_edge.loopexit.split.loop.exit151.i, label %.lr.ph.split.i.2, !llvm.loop !108

.lr.ph.split.i.3:                                 ; preds = %.outer.i.2, %bb.v
  %.157.i.3 = phi ptr [ %i.ce, %bb.v ], [ %i.bo, %.outer.i.2 ] ; 5 uses
  %.14656.i.3 = phi i64 [ %i.cd, %bb.v ], [ %i.bq, %.outer.i.2 ] ; 2 uses
  %i.bt = load i8, ptr %.157.i.3, align 1, !tbaa !14 ; 3 uses
  switch i8 %i.bt, label %bb.t [
    i8 61, label %.outer._crit_edge.i
    i8 95, label %.outer._crit_edge.i
  ]

bb.t:                                             ; preds = %.lr.ph.split.i.3
  %or.cond.i18.3 = icmp slt i8 %i.bt, 32
  br i1 %or.cond.i18.3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @base64_decode.decode_table, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14  ; 2 uses
  %i.bx = icmp eq i8 %i.bw, -1
  br i1 %i.bx, label %bb.v, label %.outer.i.3

.outer.i.3:                                       ; preds = %bb.u
  %i.by = zext i8 %i.bw to i32
  %i.bz = shl nuw nsw i32 %i.bp, 6
  %i.ca = getelementptr inbounds nuw i8, ptr %.157.i.3, i64 1
  %i.cb = or i32 %i.bz, %i.by
  %i.cc = add nsw i64 %.14656.i.3, -1
  br label %.outer._crit_edge.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cd = add nsw i64 %.14656.i.3, -1             ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.157.i.3, i64 1
  %.not117.i.3 = icmp eq i64 %i.cd, 0
  br i1 %.not117.i.3, label %.outer._crit_edge.loopexit.split.loop.exit151.i, label %.lr.ph.split.i.3, !llvm.loop !108

.outer._crit_edge.loopexit.split.loop.exit151.i:  ; preds = %bb.v, %bb.s, %bb.p, %bb.m
  %.0.ph110.i.lcssa115 = phi i32 [ 1, %bb.p ], [ 2, %bb.s ], [ 0, %bb.m ], [ 3, %bb.v ]
  %.040.ph109.i.lcssa113 = phi i32 [ %i.as, %bb.p ], [ %i.bd, %bb.s ], [ 0, %bb.m ], [ %i.bp, %bb.v ]
  %.1.ph108.i.lcssa111 = phi ptr [ %i.at, %bb.p ], [ %i.bc, %bb.s ], [ %.042114.i, %bb.m ], [ %i.bo, %bb.v ]
  %.146.ph107.i.lcssa109 = phi i64 [ %i.au, %bb.p ], [ %i.be, %bb.s ], [ %.045112.i, %bb.m ], [ %i.bq, %bb.v ]
  %scevgep.le.i = getelementptr i8, ptr %.1.ph108.i.lcssa111, i64 %.146.ph107.i.lcssa109
  br label %.outer._crit_edge.i

.outer._crit_edge.i:                              ; preds = %.outer.i, %.outer.i.1, %.outer.i.2, %.outer.i.3, %.lr.ph.split.i, %.lr.ph.split.i, %.lr.ph.split.i.1, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %.lr.ph.split.i.3, %.outer._crit_edge.loopexit.split.loop.exit151.i
  %.040.ph.lcssa.i = phi i32 [ %i.bp, %.lr.ph.split.i.3 ], [ %.040.ph109.i.lcssa113, %.outer._crit_edge.loopexit.split.loop.exit151.i ], [ %i.bd, %.lr.ph.split.i.2 ], [ %i.as, %.lr.ph.split.i.1 ], [ 0, %.lr.ph.split.i ], [ 0, %.lr.ph.split.i ], [ %i.as, %.lr.ph.split.i.1 ], [ %i.bd, %.lr.ph.split.i.2 ], [ %i.bp, %.lr.ph.split.i.3 ], [ %i.as, %.outer.i ], [ %i.bd, %.outer.i.1 ], [ %i.bp, %.outer.i.2 ], [ %i.cb, %.outer.i.3 ]
  %.0.ph.lcssa.i = phi i32 [ 3, %.lr.ph.split.i.3 ], [ %.0.ph110.i.lcssa115, %.outer._crit_edge.loopexit.split.loop.exit151.i ], [ 2, %.lr.ph.split.i.2 ], [ 1, %.lr.ph.split.i.1 ], [ 0, %.lr.ph.split.i ], [ 0, %.lr.ph.split.i ], [ 1, %.lr.ph.split.i.1 ], [ 2, %.lr.ph.split.i.2 ], [ 3, %.lr.ph.split.i.3 ], [ 1, %.outer.i ], [ 2, %.outer.i.1 ], [ 3, %.outer.i.2 ], [ 4, %.outer.i.3 ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.157.i.3, %.lr.ph.split.i.3 ], [ %scevgep.le.i, %.outer._crit_edge.loopexit.split.loop.exit151.i ], [ %.157.i.2, %.lr.ph.split.i.2 ], [ %.157.i.1, %.lr.ph.split.i.1 ], [ %.157.i, %.lr.ph.split.i ], [ %.157.i, %.lr.ph.split.i ], [ %.157.i.1, %.lr.ph.split.i.1 ], [ %.157.i.2, %.lr.ph.split.i.2 ], [ %.157.i.3, %.lr.ph.split.i.3 ], [ %i.at, %.outer.i ], [ %i.bc, %.outer.i.1 ], [ %i.bo, %.outer.i.2 ], [ %i.ca, %.outer.i.3 ]
  %.2.i = phi i64 [ 0, %.lr.ph.split.i ], [ 0, %.outer._crit_edge.loopexit.split.loop.exit151.i ], [ 0, %.lr.ph.split.i.3 ], [ 0, %.lr.ph.split.i.3 ], [ 0, %.lr.ph.split.i.2 ], [ 0, %.lr.ph.split.i.2 ], [ 0, %.lr.ph.split.i.1 ], [ 0, %.lr.ph.split.i.1 ], [ 0, %.lr.ph.split.i ], [ %i.au, %.outer.i ], [ %i.be, %.outer.i.1 ], [ %i.bq, %.outer.i.2 ], [ %i.cc, %.outer.i.3 ] ; 2 uses
  %i.cf = sub nsw i32 4, %.0.ph.lcssa.i
  %i.cg = mul nsw i32 %i.cf, 6
  %i.ch = shl i32 %.040.ph.lcssa.i, %i.cg         ; 3 uses
  switch i32 %.0.ph.lcssa.i, label %bb.z [
    i32 4, label %bb.w
    i32 3, label %bb.x
    i32 2, label %bb.y
  ]

bb.w:                                             ; preds = %.outer._crit_edge.i
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.043113.i, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.outer._crit_edge.i
  %i.ck = lshr i32 %i.ch, 8
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.043113.i, i64 1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.outer._crit_edge.i
  %i.cn = lshr i32 %i.ch, 16
  %i.co = trunc i32 %i.cn to i8
  store i8 %i.co, ptr %.043113.i, align 1, !tbaa !14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.outer._crit_edge.i
  %i.cp = mul nsw i32 %.0.ph.lcssa.i, 3
  %i.cq = sdiv i32 %i.cp, 4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %.043113.i, i64 %i.cr ; 2 uses
  %.not51.i = icmp eq i64 %.2.i, 0
  br i1 %.not51.i, label %base64_decode.exit, label %.preheader.i17, !llvm.loop !109

base64_decode.exit:                               ; preds = %bb.z
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.aj to i64
  %i.cv = sub i64 %i.ct, %i.cu
  br label %base64_decode.exit.thread20

base64_decode.exit.thread20:                      ; preds = %.preheader52.i, %base64_decode.exit
  %i.cw = phi i64 [ %i.cv, %base64_decode.exit ], [ 0, %.preheader52.i ]
  tail call void @archive_entry_xattr_add_entry(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aj, i64 noundef %i.cw) #11
  tail call void @free(ptr noundef %i.b) #11
  br label %url_decode.exit.thread.sink.split

url_decode.exit.thread.sink.split:                ; preds = %.loopexit.i, %base64_decode.exit.thread20
  %.sink = phi ptr [ %i.aj, %base64_decode.exit.thread20 ], [ %i.b, %.loopexit.i ]
  %.0.ph = phi i32 [ 0, %base64_decode.exit.thread20 ], [ 1, %.loopexit.i ]
  tail call void @free(ptr noundef %.sink) #11
  br label %url_decode.exit.thread

url_decode.exit.thread:                           ; preds = %url_decode.exit.thread.sink.split, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ %.0.ph, %url_decode.exit.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pax_attribute_SCHILY_acl(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef range(i64 0, -1) %3, i32 noundef range(i32 256, 15361) %4) unnamed_addr #0 {
bb.a:
  switch i32 %4, label %bb.d [
    i32 256, label %bb.e
    i32 512, label %bb.b
    i32 15360, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.125, i32 noundef %4) #11
  br label %bb.n

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ @.str.124, %bb.c ], [ @.str.123, %bb.b ], [ @.str.122, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.d = tail call ptr @archive_string_conversion_from_charset(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef 1) #11 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !61
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = icmp ugt i64 %3, 131072
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.g = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %3) #11 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.126, i64 noundef %3, i64 noundef 131072) #11
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.h = tail call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %3, ptr noundef null) #11 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.127) #11
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.j = tail call ptr @archive_entry_acl(ptr noundef %2) #11
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.l = tail call i32 @archive_acl_from_text_nl(ptr noundef %i.j, ptr noundef nonnull %i.h, i64 noundef %3, i32 noundef %4, ptr noundef %i.k) #11 ; 3 uses
  %i.m = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %3) #11 ; 0 uses
  %i.n = tail call i32 @archive_entry_perm(ptr noundef %2) #11
  tail call void @archive_entry_set_perm(ptr noundef %2, i32 noundef %i.n) #11
  switch i32 %i.l, label %bb.m [
    i32 0, label %bb.n
    i32 -30, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef nonnull %.0) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.130, ptr noundef nonnull %.0) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.f, %bb.l, %bb.j, %bb.h, %bb.d
  %.033 = phi i32 [ -30, %bb.d ], [ -30, %bb.f ], [ -20, %bb.h ], [ -30, %bb.j ], [ -30, %bb.l ], [ %i.l, %bb.k ], [ %i.l, %bb.m ]
  ret i32 %.033
}

declare void @archive_entry_set_rdevmajor(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_rdevminor(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @archive_entry_copy_fflags_text_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pax_attribute_SCHILY_xattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1, -13) %2, ptr noundef nonnull %3, i64 noundef range(i64 0, 16777216) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %2, 128
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 1
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #15 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  store i8 0, ptr %i.d, align 1, !tbaa !14
  tail call void @archive_entry_xattr_add_entry(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, i64 noundef %4) #11
  tail call void @free(ptr noundef nonnull %i.c) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @pax_attribute_SUN_holesdata(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 8388608) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %gnu_add_sparse_entry.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 32
  br i1 %i.c, label %.preheader, label %gnu_add_sparse_entry.exit.thread

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.c

bb.c:                                             ; preds = %bb.r, %.preheader
  %.pn = phi ptr [ %.033.lcssa, %bb.r ], [ %2, %.preheader ] ; 2 uses
  %.034.in = phi i64 [ %.1.lcssa, %bb.r ], [ %3, %.preheader ] ; 2 uses
  %.032 = phi i64 [ %.044.i.i2, %bb.r ], [ 0, %.preheader ] ; 5 uses
  %.0 = phi i32 [ %i.aq, %bb.r ], [ 1, %.preheader ] ; 2 uses
  %.035 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 4 uses
  %.119 = add nsw i64 %.034.in, -1                ; 2 uses
  %.not20 = icmp eq i64 %.119, 0
  br i1 %.not20, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %.pn, i64 %.034.in
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.122 = phi i64 [ %.1, %bb.e ], [ %.119, %.lr.ph.preheader ] ; 2 uses
  %.03321 = phi ptr [ %i.h, %bb.e ], [ %.035, %.lr.ph.preheader ] ; 3 uses
  %i.f = load i8, ptr %.03321, align 1, !tbaa !14 ; 2 uses
  %.not40.not.not = icmp ne i8 %i.f, 32           ; 3 uses
  br i1 %.not40.not.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.g = add i8 %i.f, -58
  %or.cond = icmp ult i8 %i.g, -10
  br i1 %or.cond, label %gnu_add_sparse_entry.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.03321, i64 1
  %.1 = add nsw i64 %.122, -1                     ; 2 uses
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !110

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.c
  %.033.lcssa = phi ptr [ %.035, %bb.c ], [ %scevgep, %bb.e ], [ %.03321, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi i64 [ 0, %bb.c ], [ 0, %bb.e ], [ %.122, %.lr.ph ]
  %.not.lcssa = phi i1 [ true, %bb.c ], [ %.not40.not.not, %bb.e ], [ %.not40.not.not, %.lr.ph ]
  %i.i = ptrtoint ptr %.033.lcssa to i64
  %i.j = ptrtoint ptr %.035 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %.not68.i.i = icmp eq i64 %i.k, 0
  br i1 %.not68.i.i, label %tar_atol10.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %.critedge2.i.i
  %.04570.i.i = phi i64 [ %i.n, %.critedge2.i.i ], [ %i.k, %.critedge ] ; 3 uses
  %.04769.i.i = phi ptr [ %i.m, %.critedge2.i.i ], [ %.035, %.critedge ] ; 4 uses
  %i.l = load i8, ptr %.04769.i.i, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.l, label %.preheader.i.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 45, label %.critedge53.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1
  %i.n = add i64 %.04570.i.i, -1                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %tar_atol10.exit.thread, label %.lr.ph.i.i, !llvm.loop !3

.critedge53.i.i:                                  ; preds = %.lr.ph.i.i
  %i.o = add i64 %.04570.i.i, -1                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.o, 0
  br i1 %.not51.i.i, label %tar_atol10.exit.thread, label %.preheaderthread-pre-split.i.i

.preheaderthread-pre-split.i.i:                   ; preds = %.critedge53.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1 ; 2 uses
  %.039.in.in71.pr.i.i = load i8, ptr %i.p, align 1, !tbaa !14
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheaderthread-pre-split.i.i
  %.039.in.in71.i.i = phi i8 [ %.039.in.in71.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.q = phi i1 [ true, %.preheaderthread-pre-split.i.i ], [ false, %.lr.ph.i.i ]
  %.04097.i.i = phi i64 [ 8, %.preheaderthread-pre-split.i.i ], [ 7, %.lr.ph.i.i ]
  %.04295.i.i = phi i64 [ -9223372036854775808, %.preheaderthread-pre-split.i.i ], [ 9223372036854775807, %.lr.ph.i.i ] ; 2 uses
  %.14694.i.i = phi i64 [ %i.o, %.preheaderthread-pre-split.i.i ], [ %.04570.i.i, %.lr.ph.i.i ]
  %.14893.i.i = phi ptr [ %i.p, %.preheaderthread-pre-split.i.i ], [ %.04769.i.i, %.lr.ph.i.i ]
  %i.r = icmp sgt i8 %.039.in.in71.i.i, 47
  br i1 %i.r, label %.lr.ph78.i.i, label %.critedge4.i.i

.lr.ph78.i.i:                                     ; preds = %.preheader.i.i, %bb.h
  %.03977.in.in.i.i = phi i8 [ %.039.in.in.i.i, %bb.h ], [ %.039.in.in71.i.i, %.preheader.i.i ] ; 2 uses
  %.04376.i.i = phi i64 [ %i.x, %bb.h ], [ 0, %.preheader.i.i ] ; 4 uses
  %.275.i.i = phi i64 [ %i.z, %bb.h ], [ %.14694.i.i, %.preheader.i.i ] ; 2 uses
  %.24974.i.i = phi ptr [ %i.y, %bb.h ], [ %.14893.i.i, %.preheader.i.i ]
  %.03977.in.i.i = zext nneg i8 %.03977.in.in.i.i to i64
  %.03977.i.i = add nsw i64 %.03977.in.i.i, -48   ; 2 uses
  %i.s = icmp samesign ult i8 %.03977.in.in.i.i, 58
  %i.t = icmp ne i64 %.275.i.i, 0
  %or.cond.i.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %.critedge4.i.i

bb.f:                                             ; preds = %.lr.ph78.i.i
  %i.u = icmp sgt i64 %.04376.i.i, 922337203685477580
  br i1 %i.u, label %tar_atol10.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ne i64 %.04376.i.i, 922337203685477580
  %.not52.i.i = icmp sgt i64 %.04097.i.i, %.03977.i.i
  %or.cond54.i.i = select i1 %i.v, i1 true, i1 %.not52.i.i
  br i1 %or.cond54.i.i, label %bb.h, label %tar_atol10.exit

bb.h:                                             ; preds = %bb.g
  %i.w = mul nsw i64 %.04376.i.i, 10
  %i.x = add nsw i64 %i.w, %.03977.i.i            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.24974.i.i, i64 1 ; 2 uses
  %i.z = add i64 %.275.i.i, -1
  %.039.in.in.i.i = load i8, ptr %i.y, align 1, !tbaa !14 ; 2 uses
  %i.aa = icmp sgt i8 %.039.in.in.i.i, 47
  br i1 %i.aa, label %.lr.ph78.i.i, label %.critedge4.i.i, !llvm.loop !4

.critedge4.i.i:                                   ; preds = %bb.h, %.lr.ph78.i.i, %.preheader.i.i
  %.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.x, %bb.h ], [ %.04376.i.i, %.lr.ph78.i.i ] ; 2 uses
  %i.ab = sub nsw i64 0, %.1.i.i
  %spec.select.i.i = select i1 %i.q, i64 %i.ab, i64 %.1.i.i
  br label %tar_atol10.exit

tar_atol10.exit:                                  ; preds = %bb.f, %bb.g, %.critedge4.i.i
  %.044.i.i = phi i64 [ %spec.select.i.i, %.critedge4.i.i ], [ %.04295.i.i, %bb.g ], [ %.04295.i.i, %bb.f ] ; 2 uses
  %i.ac = icmp slt i64 %.044.i.i, 0
  br i1 %i.ac, label %gnu_add_sparse_entry.exit.thread, label %tar_atol10.exit.thread

tar_atol10.exit.thread:                           ; preds = %.critedge2.i.i, %.critedge, %.critedge53.i.i, %tar_atol10.exit
  %.044.i.i2 = phi i64 [ %.044.i.i, %tar_atol10.exit ], [ 0, %.critedge53.i.i ], [ 0, %.critedge ], [ 0, %.critedge2.i.i ] ; 3 uses
  %i.ad = icmp slt i64 %.032, %.044.i.i2
  br i1 %i.ad, label %bb.i, label %bb.q

bb.i:                                             ; preds = %tar_atol10.exit.thread
  %i.ae = sub nsw i64 %.044.i.i2, %.032           ; 3 uses
  %i.af = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 7 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.140) #11
  br label %gnu_add_sparse_entry.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !49  ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !48
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.e, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.af, ptr %i.d, align 8, !tbaa !49
  %i.ai = or i64 %i.ae, %.032
  %or.cond.not.i = icmp slt i64 %i.ai, 0
  %i.aj = sub nuw nsw i64 9223372036854775807, %i.ae
  %i.ak = icmp sgt i64 %.032, %i.aj
  %or.cond.i = select i1 %or.cond.not.i, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.141) #11
  br label %gnu_add_sparse_entry.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.032, ptr %i.al, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.ae, ptr %i.am, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %.0, ptr %i.an, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %tar_atol10.exit.thread
  %i.ao = load i8, ptr %.033.lcssa, align 1, !tbaa !14
  %i.ap = icmp eq i8 %i.ao, 10                    ; 2 uses
  br i1 %.not.lcssa, label %.critedge43, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = xor i32 %.0, 1
  br i1 %i.ap, label %.loopexit, label %bb.c

.critedge43:                                      ; preds = %bb.q
  br i1 %i.ap, label %gnu_add_sparse_entry.exit.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.critedge43
  br label %gnu_add_sparse_entry.exit.thread

gnu_add_sparse_entry.exit.thread:                 ; preds = %tar_atol10.exit, %bb.d, %bb.o, %bb.j, %.critedge43, %bb.b, %bb.a, %.loopexit
  %.036 = phi i32 [ -20, %bb.a ], [ -20, %bb.b ], [ -30, %bb.o ], [ -20, %bb.d ], [ 0, %.critedge43 ], [ -20, %.loopexit ], [ -30, %bb.j ], [ -20, %tar_atol10.exit ]
  ret i32 %.036
}

declare void @archive_entry_set_atime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_ctime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_gid(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_mtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_uid(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_xattr_add_entry(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @archive_acl_from_text_nl(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_uname(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_gname(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_rdev_is_set(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_rdev(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @archive_entry_atime_is_set(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_ctime_is_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @header_common(ptr noundef %0, ptr nofree noundef captures(none) initializes((184, 192)) %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.archive_string, align 8     ; 9 uses
  %5 = alloca %struct.archive_string, align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  %i.b = tail call fastcc i64 @tar_atol(ptr noundef %i.a, i64 noundef 8)
  %i.c = trunc i64 %i.b to i32
  tail call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef %i.c) #11
end_hunk_0
begin_hunk_1_@header_common:bb.a

bb.ao:                                            ; preds = %.thread, %bb.ak, %bb.ai
  %.2 = phi i32 [ %.0115, %.thread ], [ 0, %bb.ak ], [ 0, %bb.ai ] ; 5 uses
  %i.cc = call i64 @archive_entry_size(ptr noundef %2) #11
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef 32768) #11
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ce = call i64 @archive_entry_size(ptr noundef %2) #11
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.bk, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !59
  switch i32 %i.ch, label %bb.at [
    i32 196610, label %bb.bk
    i32 196608, label %bb.as
    i32 196612, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  call void @archive_entry_set_size(ptr noundef %2, i64 noundef 0) #11
  store i64 0, ptr %i.bd, align 8, !tbaa !65
  br label %bb.bk

bb.at:                                            ; preds = %bb.ar
  %i.ci = call i32 @archive_read_format_tar_bid(ptr noundef nonnull %0, i32 poison)
  %i.cj = icmp sgt i32 %i.ci, 50
  br i1 %i.cj, label %bb.au, label %bb.bk

bb.au:                                            ; preds = %bb.at
  call void @archive_entry_set_size(ptr noundef %2, i64 noundef 0) #11
  store i64 0, ptr %i.bd, align 8, !tbaa !65
  br label %bb.bk

bb.av:                                            ; preds = %bb.ag
  tail call void @archive_entry_set_link_to_symlink(ptr noundef %2) #11
  %i.ck = tail call ptr @archive_entry_symlink_w(ptr noundef %2) #11 ; 2 uses
  %i.cl = tail call ptr @archive_entry_symlink(ptr noundef %2) #11 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !14
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.cp = icmp eq ptr %i.ck, null
  br i1 %i.cp, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cq = load i32, ptr %i.ck, align 4, !tbaa !45
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.cu = call ptr @archive_strncat(ptr noundef nonnull %5, ptr noundef nonnull %i.ct, i64 noundef 100) #11 ; 0 uses
  %i.cv = load ptr, ptr %5, align 8, !tbaa !60
  %i.cw = load i64, ptr %i.cs, align 8, !tbaa !62
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !51
  %i.cz = call i32 @_archive_entry_copy_symlink_l(ptr noundef %2, ptr noundef %i.cv, i64 noundef %i.cw, ptr noundef %i.cy) #11
  %.not140 = icmp eq i32 %i.cz, 0
  br i1 %.not140, label %.thread144, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !51
  %i.db = call fastcc i32 @set_conversion_failed_error(ptr noundef %0, ptr noundef %i.da, ptr noundef nonnull @.str.135) ; 2 uses
  %i.dc = icmp eq i32 %i.db, -30
  br i1 %i.dc, label %bb.bb, label %.thread144

.thread144:                                       ; preds = %bb.az, %bb.ba
  %.3 = phi i32 [ %i.db, %bb.ba ], [ 0, %bb.az ]
  call void @archive_string_free(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @archive_string_free(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.bk

bb.bc:                                            ; preds = %.thread144, %bb.ay, %bb.aw
  %.5 = phi i32 [ %.3, %.thread144 ], [ 0, %bb.ay ], [ 0, %bb.aw ]
  call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef 40960) #11
  call void @archive_entry_set_size(ptr noundef %2, i64 noundef 0) #11
  store i64 0, ptr %i.bd, align 8, !tbaa !65
  br label %bb.bk

bb.bd:                                            ; preds = %bb.ag
  tail call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef 8192) #11
  tail call void @archive_entry_set_size(ptr noundef %2, i64 noundef 0) #11
  store i64 0, ptr %i.bd, align 8, !tbaa !65
  br label %bb.bk

bb.be:                                            ; preds = %bb.ag
  tail call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef 24576) #11
  tail call void @archive_entry_set_size(ptr noundef %2, i64 noundef 0) #11
  store i64 0, ptr %i.bd, align 8, !tbaa !65
  br label %bb.bk

bb.bf:                                            ; preds = %bb.ag
  tail call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef 16384) #11
  tail call void @archive_entry_set_size(ptr noundef %2, i64 noundef 0) #11
  store i64 0, ptr %i.bd, align 8, !tbaa !65
  br label %bb.bk

bb.bg:                                            ; preds = %bb.ag
  tail call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef 4096) #11
  tail call void @archive_entry_set_size(ptr noundef %2, i64 noundef 0) #11
  store i64 0, ptr %i.bd, align 8, !tbaa !65
  br label %bb.bk

bb.bh:                                            ; preds = %bb.ag
  tail call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef 16384) #11
  br label %bb.bk

bb.bi:                                            ; preds = %bb.ag
  tail call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef 32768) #11
  br label %bb.bk

bb.bj:                                            ; preds = %bb.ag
  tail call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef 32768) #11
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bb, %bb.an, %bb.ag, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.at, %bb.au, %bb.as, %bb.aq, %bb.ar, %bb.af, %bb.ad, %bb.v, %bb.t
  %.2119 = phi i32 [ -30, %bb.t ], [ -30, %bb.v ], [ -30, %bb.ad ], [ -30, %bb.af ], [ -30, %bb.bb ], [ -30, %bb.an ], [ 0, %bb.bj ], [ %.2, %bb.aq ], [ %.2, %bb.ar ], [ %.2, %bb.as ], [ %.2, %bb.au ], [ %.2, %bb.at ], [ %.5, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ 0, %bb.bh ], [ 0, %bb.ag ], [ 0, %bb.bi ]
  ret i32 %.2119
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @gnu_sparse_old_parse(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 4, 22) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.j
  %.014 = phi i32 [ %3, %bb.a ], [ %i.p, %bb.j ]  ; 2 uses
  %.0813 = phi ptr [ %2, %bb.a ], [ %i.o, %bb.j ] ; 4 uses
  %i.c = load i8, ptr %.0813, align 1, !tbaa !14
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i64 @tar_atol(ptr noundef %.0813, i64 noundef 12) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0813, i64 12
  %i.f = tail call fastcc i64 @tar_atol(ptr noundef %i.e, i64 noundef 12) ; 3 uses
  %i.g = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.140) #11
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.g, ptr %i.i, align 8, !tbaa !48
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.g, ptr %i.b, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.g, ptr %i.a, align 8, !tbaa !49
  %i.j = or i64 %i.f, %i.d
  %or.cond.not.i = icmp slt i64 %i.j, 0
  %i.k = sub nuw nsw i64 9223372036854775807, %i.f
  %i.l = icmp sgt i64 %i.d, %i.k
  %or.cond.i = select i1 %or.cond.not.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.141) #11
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.d, ptr %i.m, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.f, ptr %i.n, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %.0813, i64 24
  %i.p = add nsw i32 %.014, -1
  %i.q = icmp sgt i32 %.014, 1
  br i1 %i.q, label %bb.b, label %.critedge, !llvm.loop !111

.critedge:                                        ; preds = %bb.b, %bb.j, %bb.i, %bb.d
  %.09 = phi i32 [ -30, %bb.d ], [ -30, %bb.i ], [ 0, %bb.j ], [ 0, %bb.b ]
  ret i32 %.09
}

declare i32 @archive_entry_perm_is_set(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_uid_is_set(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_gid_is_set(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_mtime_is_set(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_size(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_link_to_hardlink(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_hardlink_w(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_hardlink(ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_copy_hardlink_l(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @archive_entry_size(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_link_to_symlink(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_symlink_w(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_symlink(ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_copy_symlink_l(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @archive_strappend_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare ptr @archive_entry_clear(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_copy_mac_metadata(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @gnu_sparse_10_atol(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %.pre = load i64, ptr %2, align 8, !tbaa !44
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %i.c = phi i64 [ %i.ar, %bb.q ], [ %.pre, %bb.a ]
  %spec.select = call i64 @llvm.smin.i64(i64 %i.c, i64 100) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = load i64, ptr %3, align 8, !tbaa !44     ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.d) #11
  %i.f = load i64, ptr %3, align 8, !tbaa !44
  %.not9.not.i.i = icmp eq i64 %i.e, %i.f
  br i1 %.not9.not.i.i, label %.thread.i.i, label %readline.exit.thread

.thread.i.i:                                      ; preds = %bb.c
  store i64 0, ptr %3, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %.thread.i.i, %bb.b
  %i.g = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %i.a) #11 ; 5 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !44   ; 5 uses
  %i.i = icmp slt i64 %i.h, 1
  %i.j = icmp eq ptr %i.g, null
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %readline.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @memchr(ptr noundef nonnull %i.g, i32 noundef 10, i64 noundef %i.h) #13 ; 2 uses
  %.not53.i = icmp eq ptr %i.k, null
  br i1 %.not53.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.e
  store i64 %i.h, ptr %3, align 8, !tbaa !44
  %i.l = icmp sgt i64 %i.h, %spec.select
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !44
  %i.q = icmp sgt i64 %i.p, %spec.select
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.138) #11
  br label %readline.exit.thread

bb.h:                                             ; preds = %bb.f
  store i64 %i.p, ptr %3, align 8, !tbaa !44
  br label %readline.exit

._crit_edge.i:                                    ; preds = %.preheader.i, %bb.p
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.138) #11
  br label %readline.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %i.r = phi i64 [ %i.an, %bb.p ], [ %i.h, %.preheader.i ]
  %.069.i = phi ptr [ %i.ah, %bb.p ], [ null, %.preheader.i ]
  %.04268.i = phi ptr [ %i.ad, %bb.p ], [ %i.g, %.preheader.i ]
  %.04367.i = phi i64 [ %i.ab, %bb.p ], [ 0, %.preheader.i ] ; 2 uses
  %i.s = call ptr @archive_string_ensure(ptr noundef nonnull %i.b, i64 noundef %i.r) #11
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.139) #11
  br label %readline.exit.thread

bb.j:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.04367.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %.04268.i, i64 %i.w, i1 false)
  %i.x = load i64, ptr %3, align 8, !tbaa !44     ; 2 uses
  %.not.i56.i = icmp eq i64 %i.x, 0
  br i1 %.not.i56.i, label %tar_flush_unconsumed.exit60.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.x) #11
  %i.z = load i64, ptr %3, align 8, !tbaa !44
  %.not9.not.i57.i = icmp eq i64 %i.y, %i.z
  br i1 %.not9.not.i57.i, label %.thread.i59.i, label %tar_flush_unconsumed.exit60.i

.thread.i59.i:                                    ; preds = %bb.k
  store i64 0, ptr %3, align 8, !tbaa !44
  br label %tar_flush_unconsumed.exit60.i

tar_flush_unconsumed.exit60.i:                    ; preds = %.thread.i59.i, %bb.k, %bb.j
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !44
  %i.ab = add nsw i64 %i.aa, %.04367.i            ; 3 uses
  %.not54.i = icmp eq ptr %.069.i, null
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %tar_flush_unconsumed.exit60.i
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !113
  br label %readline.exit

bb.m:                                             ; preds = %tar_flush_unconsumed.exit60.i
  %i.ad = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %i.a) #11 ; 4 uses
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !44  ; 3 uses
  %i.af = icmp slt i64 %i.ae, 1
  %i.ag = icmp eq ptr %i.ad, null
  %or.cond3.i = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond3.i, label %readline.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = call ptr @memchr(ptr noundef nonnull %i.ad, i32 noundef 10, i64 noundef %i.ae) #13 ; 3 uses
  %.not55.i = icmp eq ptr %i.ah, null
  br i1 %.not55.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ad to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  store i64 %i.al, ptr %i.a, align 8, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.am = phi i64 [ %i.al, %bb.o ], [ %i.ae, %bb.n ] ; 2 uses
  store i64 %i.am, ptr %3, align 8, !tbaa !44
  %i.an = add nsw i64 %i.am, %i.ab                ; 2 uses
  %i.ao = icmp sgt i64 %i.an, %spec.select
  br i1 %i.ao, label %._crit_edge.i, label %.lr.ph.i

readline.exit.thread:                             ; preds = %bb.d, %bb.c, %bb.m, %bb.g, %._crit_edge.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

readline.exit:                                    ; preds = %bb.h, %bb.l
  %.2 = phi ptr [ %i.ac, %bb.l ], [ %i.g, %bb.h ] ; 2 uses
  %.044.i = phi i64 [ %i.ab, %bb.l ], [ %i.p, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ap = icmp slt i64 %.044.i, 1
  br i1 %i.ap, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %readline.exit
  %i.aq = load i64, ptr %2, align 8, !tbaa !44
  %i.ar = sub nsw i64 %i.aq, %.044.i              ; 2 uses
  store i64 %i.ar, ptr %2, align 8, !tbaa !44
  %i.as = load i8, ptr %.2, align 1, !tbaa !14    ; 2 uses
  switch i8 %i.as, label %.lr.ph [
    i8 35, label %bb.b
    i8 10, label %.loopexit
  ]

.preheaderthread-pre-split:                       ; preds = %bb.u
  %i.at = add nsw i64 %.04478, -1
  %i.au = getelementptr inbounds nuw i8, ptr %.1324280, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.au, align 1, !tbaa !14   ; 2 uses
  %i.av = icmp eq i8 %.pr, 10
  br i1 %i.av, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %.preheaderthread-pre-split
  %.1324280 = phi ptr [ %i.au, %.preheaderthread-pre-split ], [ %.2, %bb.q ]
  %.0234379 = phi i64 [ %.1, %.preheaderthread-pre-split ], [ 0, %bb.q ] ; 3 uses
  %.04478 = phi i64 [ %i.at, %.preheaderthread-pre-split ], [ %.044.i, %bb.q ] ; 2 uses
  %i.aw = phi i8 [ %.pr, %.preheaderthread-pre-split ], [ %i.as, %bb.q ] ; 3 uses
  %i.ax = add i8 %i.aw, -58
  %or.cond = icmp ult i8 %i.ax, -10
  br i1 %or.cond, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %narrow = add nsw i8 %i.aw, -48
  %i.ay = zext nneg i8 %narrow to i64
  %i.az = icmp sgt i64 %.0234379, 922337203685477580
  br i1 %i.az, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = icmp eq i64 %.0234379, 922337203685477580
  %i.bb = icmp samesign ugt i8 %i.aw, 55
  %or.cond28 = and i1 %i.ba, %i.bb
  br i1 %or.cond28, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = mul nsw i64 %.0234379, 10
  %i.bd = add nsw i64 %i.bc, %i.ay
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %.1 = phi i64 [ %i.bd, %bb.t ], [ 9223372036854775807, %bb.s ], [ 9223372036854775807, %bb.r ] ; 2 uses
  %i.be = icmp sgt i64 %.04478, 1
  br i1 %i.be, label %.preheaderthread-pre-split, label %..loopexit.loopexit_crit_edge82, !llvm.loop !112

..loopexit.loopexit_crit_edge82:                  ; preds = %bb.u
  br label %.loopexit, !llvm.loop !112

.loopexit:                                        ; preds = %readline.exit, %bb.q, %.preheaderthread-pre-split, %.lr.ph, %..loopexit.loopexit_crit_edge82, %readline.exit.thread
  %.024 = phi i64 [ -30, %readline.exit.thread ], [ -20, %..loopexit.loopexit_crit_edge82 ], [ -20, %.lr.ph ], [ %.1, %.preheaderthread-pre-split ], [ 0, %bb.q ], [ -30, %readline.exit ]
  ret i64 %.024
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = distinct !{!4, !15}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"any pointer", !10, i64 0}
!17 = !{!"p1 _ZTS14archive_vtable", !16, i64 0}
!18 = !{!"p1 omnipotent char", !16, i64 0}
!19 = !{!"long", !10, i64 0}
!20 = !{!"archive_string", !18, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"p1 _ZTS19archive_string_conv", !16, i64 0}
!22 = !{!"archive", !11, i64 0, !11, i64 4, !17, i64 8, !11, i64 16, !18, i64 24, !11, i64 32, !11, i64 36, !18, i64 40, !20, i64 48, !18, i64 72, !11, i64 80, !11, i64 84, !21, i64 88, !18, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !10, i64 128, !19, i64 136}
!23 = !{!"p1 _ZTS13archive_entry", !16, i64 0}
!24 = !{!"p1 _ZTS22archive_read_data_node", !16, i64 0}
!25 = !{!"archive_read_client", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !11, i64 48, !11, i64 52, !19, i64 56, !24, i64 64}
!26 = !{!"p1 _ZTS19archive_read_filter", !16, i64 0}
!27 = !{!"p1 _ZTS25archive_format_descriptor", !16, i64 0}
!28 = !{!"p1 _ZTS20archive_read_extract", !16, i64 0}
!29 = !{!"p1 _ZTS23archive_read_passphrase", !16, i64 0}
!30 = !{!"any p2 pointer", !16, i64 0}
!31 = !{!"p2 _ZTS23archive_read_passphrase", !30, i64 0}
!32 = !{!"", !29, i64 0, !31, i64 8, !11, i64 16, !16, i64 24, !16, i64 32}
!33 = !{!"archive_read", !22, i64 0, !23, i64 144, !11, i64 152, !19, i64 160, !19, i64 168, !25, i64 176, !10, i64 248, !26, i64 632, !11, i64 640, !19, i64 648, !11, i64 656, !11, i64 660, !10, i64 664, !27, i64 2072, !28, i64 2080, !16, i64 2088, !32, i64 2096}
!34 = !{!33, !27, i64 2072}
!35 = !{!"archive_format_descriptor", !16, i64 0, !18, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80}
!36 = !{!35, !16, i64 0}
!37 = !{!"p1 _ZTS12sparse_block", !16, i64 0}
!38 = !{!"tar", !20, i64 0, !20, i64 24, !20, i64 48, !20, i64 72, !20, i64 96, !20, i64 120, !11, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !19, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !37, i64 224, !37, i64 232, !19, i64 240, !19, i64 248, !11, i64 256, !11, i64 260, !10, i64 264, !10, i64 265, !10, i64 266, !20, i64 272, !21, i64 296, !21, i64 304, !21, i64 312, !21, i64 320, !11, i64 328, !11, i64 332, !11, i64 336, !11, i64 340}
!39 = !{!38, !11, i64 332}
!40 = !{!38, !11, i64 328}
!41 = !{!38, !21, i64 296}
!42 = !{!38, !11, i64 336}
!43 = !{!38, !11, i64 340}
!44 = !{!19, !19, i64 0}
!45 = !{!11, !11, i64 0}
!46 = !{!38, !37, i64 224}
!47 = !{!"sparse_block", !37, i64 0, !19, i64 8, !19, i64 16, !11, i64 24}
!48 = !{!47, !37, i64 0}
!49 = !{!38, !37, i64 232}
!50 = !{!38, !10, i64 266}
!51 = !{!38, !21, i64 304}
!52 = !{!38, !11, i64 144}
!53 = !{!38, !10, i64 264}
!54 = !{!38, !19, i64 80}
!55 = !{!38, !19, i64 8}
!56 = !{!38, !19, i64 32}
!57 = !{!38, !19, i64 56}
!58 = !{!38, !19, i64 104}
!59 = !{!33, !11, i64 16}
!60 = !{!20, !18, i64 0}
!61 = !{!38, !21, i64 312}
!62 = !{!20, !19, i64 8}
!63 = !{!38, !19, i64 192}
!64 = !{!47, !19, i64 8}
!65 = !{!38, !19, i64 152}
!66 = !{!38, !19, i64 168}
!67 = !{!38, !10, i64 265}
!68 = !{!38, !11, i64 256}
!69 = !{!38, !11, i64 260}
!70 = !{!47, !19, i64 16}
!71 = !{!47, !11, i64 24}
!72 = !{!38, !19, i64 176}
!73 = !{!38, !19, i64 184}
!74 = !{!38, !19, i64 200}
!75 = !{!38, !19, i64 208}
!76 = !{!38, !19, i64 216}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15, !88}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = !{!38, !19, i64 160}
!84 = !{!38, !21, i64 320}
!85 = !{!33, !18, i64 24}
!86 = !{!38, !19, i64 280}
!87 = !{!38, !18, i64 272}
!88 = !{!"llvm.loop.peeled.count", i32 1}
!89 = distinct !{!89, !15}
!90 = !{!16, !16, i64 0}
!91 = distinct !{!91, !15}
!92 = distinct !{!92, !15, !95, !96}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15, !95, !96}
!95 = !{!"llvm.loop.isvectorized", i32 1}
!96 = !{!"llvm.loop.unroll.runtime.disable"}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = !{!38, !18, i64 48}
!100 = !{!38, !18, i64 72}
!101 = !{!38, !18, i64 96}
!102 = distinct !{!102, !15}
!103 = !{!38, !19, i64 240}
!104 = !{!38, !19, i64 248}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !15}
!107 = distinct !{!107, !15}
!108 = distinct !{!108, !15}
!109 = distinct !{!109, !15}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = !{!38, !18, i64 120}
end_hunk_1
