Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_inference?download=true
inline.NumInlined: 423
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 40
begin_hunk_0_@zend_array_type_info:bb.a
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33
  %i.j = and i32 %i.i, 4
  %.not41 = icmp eq i32 %i.j, 0
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = or disjoint i32 %., 2097152              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx = shl nuw nsw i64 %i.p, 4                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %.not4446 = icmp eq i32 %i.o, 0
  br i1 %.not4446, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.r = add nsw i64 %.idx, -16                   ; 2 uses
  %i.s = lshr exact i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03848.prol = phi ptr [ %i.aa, %.lr.ph.prol ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.147.prol = phi i32 [ %.2.prol, %.lr.ph.prol ], [ %i.k, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %.03848.prol, i64 8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !33    ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  %i.x = zext nneg i8 %i.v to i32
  %i.y = shl nuw i32 1024, %i.x
  %i.z = select i1 %i.w, i32 0, i32 %i.y, !prof !25
  %.2.prol = or i32 %i.z, %.147.prol              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.03848.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !200

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol ]
  %.03848.unr = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %.147.unr = phi i32 [ %i.k, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol ]
  %i.ab = icmp ult i64 %i.r, 48
  br i1 %i.ab, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03848 = phi ptr [ %i.ba, %.lr.ph ], [ %.03848.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.147 = phi i32 [ %.2.3, %.lr.ph ], [ %.147.unr, %.lr.ph.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.03848, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !33  ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  %i.af = zext nneg i8 %i.ad to i32
  %i.ag = shl nuw i32 1024, %i.af
  %i.ah = select i1 %i.ae, i32 0, i32 %i.ag, !prof !25
  %.2 = or i32 %i.ah, %.147
  %i.ai = getelementptr inbounds nuw i8, ptr %.03848, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !33  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = zext nneg i8 %i.aj to i32
  %i.am = shl nuw i32 1024, %i.al
  %i.an = select i1 %i.ak, i32 0, i32 %i.am, !prof !25
  %.2.1 = or i32 %i.an, %.2
  %i.ao = getelementptr inbounds nuw i8, ptr %.03848, i64 40
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !33  ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0
  %i.ar = zext nneg i8 %i.ap to i32
  %i.as = shl nuw i32 1024, %i.ar
  %i.at = select i1 %i.aq, i32 0, i32 %i.as, !prof !25
  %.2.2 = or i32 %i.at, %.2.1
  %i.au = getelementptr inbounds nuw i8, ptr %.03848, i64 56
  %i.av = load i8, ptr %i.au, align 8, !tbaa !33  ; 2 uses
  %i.aw = icmp eq i8 %i.av, 0
  %i.ax = zext nneg i8 %i.av to i32
  %i.ay = shl nuw i32 1024, %i.ax
  %i.az = select i1 %i.aw, i32 0, i32 %i.ay, !prof !25
  %.2.3 = or i32 %i.az, %.2.2                     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03848, i64 64 ; 2 uses
  %.not44.3 = icmp eq ptr %i.ba, %i.q
  br i1 %.not44.3, label %.loopexit, label %.lr.ph, !llvm.loop !1

bb.e:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !111 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx54 = shl nuw nsw i64 %i.bf, 5              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx54
  %.not4249 = icmp eq i32 %i.be, 0
  br i1 %.not4249, label %.loopexit, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %bb.e
  %i.bh = add nsw i64 %.idx54, -32                ; 2 uses
  %i.bi = and i64 %i.bh, 32
  %lcmp.mod61.not.not = icmp eq i64 %i.bi, 0
  br i1 %lcmp.mod61.not.not, label %.lr.ph52.prol, label %.lr.ph52.prol.loopexit

.lr.ph52.prol:                                    ; preds = %.lr.ph52.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !33  ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %.lr.ph52.prol.loopexit.unr-lcssa, label %bb.f, !prof !25

bb.f:                                             ; preds = %.lr.ph52.prol
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !115
  %.not43.prol = icmp eq ptr %i.bn, null
  %.4.v.prol = select i1 %.not43.prol, i32 4194304, i32 8388608
  %i.bo = zext nneg i8 %i.bk to i32
  %i.bp = shl nuw i32 1024, %i.bo
  %i.bq = or i32 %i.bp, %.4.v.prol
  %i.br = or i32 %i.bq, %.
  br label %.lr.ph52.prol.loopexit.unr-lcssa

.lr.ph52.prol.loopexit.unr-lcssa:                 ; preds = %bb.f, %.lr.ph52.prol
  %.5.prol = phi i32 [ %i.br, %bb.f ], [ %., %.lr.ph52.prol ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  br label %.lr.ph52.prol.loopexit

.lr.ph52.prol.loopexit:                           ; preds = %.lr.ph52.prol.loopexit.unr-lcssa, %.lr.ph52.preheader
  %.5.lcssa.unr = phi i32 [ poison, %.lr.ph52.preheader ], [ %.5.prol, %.lr.ph52.prol.loopexit.unr-lcssa ]
  %.051.unr = phi ptr [ %i.bc, %.lr.ph52.preheader ], [ %i.bs, %.lr.ph52.prol.loopexit.unr-lcssa ]
  %.350.unr = phi i32 [ %., %.lr.ph52.preheader ], [ %.5.prol, %.lr.ph52.prol.loopexit.unr-lcssa ]
  %i.bt = icmp eq i64 %i.bh, 0
  br i1 %i.bt, label %.loopexit, label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.prol.loopexit, %bb.i
  %.051 = phi ptr [ %i.cm, %bb.i ], [ %.051.unr, %.lr.ph52.prol.loopexit ] ; 5 uses
  %.350 = phi i32 [ %.5.1, %bb.i ], [ %.350.unr, %.lr.ph52.prol.loopexit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.051, i64 8
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !33  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %.lr.ph52.1, label %bb.g, !prof !25

bb.g:                                             ; preds = %.lr.ph52
  %i.bx = getelementptr inbounds nuw i8, ptr %.051, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !115
  %.not43 = icmp eq ptr %i.by, null
  %.4.v = select i1 %.not43, i32 4194304, i32 8388608
  %i.bz = zext nneg i8 %i.bv to i32
  %i.ca = shl nuw i32 1024, %i.bz
  %i.cb = or i32 %i.ca, %.4.v
  %i.cc = or i32 %i.cb, %.350
  br label %.lr.ph52.1

.lr.ph52.1:                                       ; preds = %.lr.ph52, %bb.g
  %.5 = phi i32 [ %i.cc, %bb.g ], [ %.350, %.lr.ph52 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.051, i64 40
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !33  ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.i, label %bb.h, !prof !25

bb.h:                                             ; preds = %.lr.ph52.1
  %i.cg = getelementptr inbounds nuw i8, ptr %.051, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !115
  %.not43.1 = icmp eq ptr %i.ch, null
  %.4.v.1 = select i1 %.not43.1, i32 4194304, i32 8388608
  %i.ci = zext nneg i8 %i.ce to i32
  %i.cj = shl nuw i32 1024, %i.ci
  %i.ck = or i32 %i.cj, %.4.v.1
  %i.cl = or i32 %i.ck, %.5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph52.1
  %.5.1 = phi i32 [ %i.cl, %bb.h ], [ %.5, %.lr.ph52.1 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.051, i64 64 ; 2 uses
  %.not42.1 = icmp eq ptr %i.cm, %i.bg
  br i1 %.not42.1, label %.loopexit, label %.lr.ph52, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph52.prol.loopexit, %bb.i, %bb.d, %bb.e, %bb.b
  %.6 = phi i32 [ %i.g, %bb.b ], [ %.5.1, %bb.i ], [ %., %bb.e ], [ %i.k, %bb.d ], [ %.5.lcssa.unr, %.lr.ph52.prol.loopexit ], [ %.2.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2.3, %.lr.ph ]
  ret i32 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 2, 1) i32 @zend_array_element_type(i32 noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = and i32 %0, 256
  %.not = icmp eq i32 %i.a, 0
  %.not37 = icmp ne i32 %2, 0                     ; 6 uses
  %spec.select56 = select i1 %.not37, i32 -486539266, i32 -520094722
  %.1 = select i1 %.not, i32 0, i32 %spec.select56 ; 3 uses
  %i.b = and i32 %0, 128
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not39 = icmp eq i32 %3, 0
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = or i32 %.1, 2
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.d = lshr i32 %0, 10
  %i.e = and i32 %i.d, 1020
  %i.f = or i32 %.1, %i.e                         ; 3 uses
  %i.g = and i32 %i.f, 128
  %.not40 = icmp eq i32 %i.g, 0
  %spec.select.v = select i1 %.not40, i32 2, i32 553646082
  %spec.select = or i32 %spec.select.v, %i.f      ; 4 uses
  %i.h = and i32 %i.f, 960
  %.not41 = icmp eq i32 %i.h, 0
  br i1 %.not41, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = and i8 %1, 6
  %.not43 = icmp eq i8 %i.i, 0
  %i.j = and i32 %0, 1073741824
  %.not44 = icmp eq i32 %i.j, 0
  %or.cond51 = or i1 %.not44, %.not43
  %spec.select57.v = select i1 %or.cond51, i32 -2147483648, i32 -1073741824
  %spec.select57 = or i32 %spec.select, %spec.select57.v
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.k = and i32 %0, 1048576
  %.not45 = icmp eq i32 %i.k, 0
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = or i32 %spec.select, -1073740800
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.m = or i32 %spec.select, -1073741824
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.d, %bb.h, %bb.i, %bb.c
  %.3 = phi i32 [ %i.c, %bb.c ], [ %i.l, %bb.h ], [ %i.m, %bb.i ], [ %spec.select57, %bb.f ], [ %spec.select, %bb.d ] ; 2 uses
  %i.n = or i32 %.3, 33554432
  %spec.select52 = select i1 %.not37, i32 %i.n, i32 %.3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %.4 = phi i32 [ %.1, %bb.a ], [ %spec.select52, %bb.j ]
  %i.o = and i32 %0, 64
  %.not47 = icmp eq i32 %i.o, 0
  %spec.select53.v = select i1 %.not37, i32 1073741890, i32 1073741888
  %spec.select53 = select i1 %.not47, i32 0, i32 %spec.select53.v
  %i.p = and i32 %0, 7
  %.not49 = icmp eq i32 %i.p, 0
  %spec.select54.v = select i1 %.not37, i32 33554434, i32 2
  %spec.select54 = select i1 %.not49, i32 0, i32 %spec.select54.v
  %.5 = or i32 %spec.select54, %spec.select53
  %.6 = or i32 %.5, %.4                           ; 2 uses
  %i.q = and i32 %0, 568
  %i.r = icmp eq i32 %i.q, 0
  %or.cond = or i1 %i.r, %.not37
  %i.s = or i32 %.6, 2
  %spec.select55 = select i1 %or.cond, i32 %.6, i32 %i.s
  ret i32 %spec.select55
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1073741824, 1073741824) i32 @zend_fetch_arg_info_type(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call fastcc i32 @zend_convert_type(ptr noundef %0, ptr %i.b, i32 %i.d, ptr noundef %2)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1073741824, 1073741824) i32 @zend_convert_type(ptr noundef %0, ptr %1, i32 %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = and i32 %2, 33554431
  %.not17 = icmp eq i32 %i.a, 0
  br i1 %.not17, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = and i32 %2, 1022
  %i.c = lshr i32 %2, 13
  %i.d = and i32 %i.c, 2
  %spec.select.i = or i32 %i.d, %i.b              ; 2 uses
  %i.e = and i32 %2, 4096
  %.not10.i = icmp eq i32 %i.e, 0
  %i.f = or i32 %spec.select.i, 553646528
  %.1.i = select i1 %.not10.i, i32 %spec.select.i, i32 %i.f
  %i.g = lshr i32 %2, 7
  %i.h = and i32 %i.g, 256
  %.2.i = or i32 %.1.i, %i.h                      ; 2 uses
  %i.i = and i32 %2, 128
  %.not12.i = icmp eq i32 %i.i, 0
  %i.j = or i32 %.2.i, 553646080
  %.3.i = select i1 %.not12.i, i32 %.2.i, i32 %i.j ; 2 uses
  %i.k = and i32 %2, 29360128
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %zend_string_release_ex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = or i32 %.3.i, 256                        ; 4 uses
  %i.m = and i32 %2, 16777216
  %.not19 = icmp eq i32 %i.m, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not19
  br i1 %or.cond, label %zend_string_release_ex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @zend_string_tolower_ex(ptr noundef %1, i1 noundef zeroext false) #17 ; 5 uses
  %i.o = tail call ptr @zend_optimizer_get_class_entry(ptr noundef %0, ptr noundef null, ptr noundef %i.n) #17
  store ptr %i.o, ptr %3, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = and i32 %i.q, 64
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.g, label %zend_string_release_ex.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.n, align 4, !tbaa !201  ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.u, ptr %i.n, align 4, !tbaa !201
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %zend_string_release_ex.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_efree(ptr noundef nonnull %i.n) #17
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.014 = phi i32 [ %i.l, %bb.e ], [ %.3.i, %bb.d ], [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.l, %bb.h ] ; 3 uses
  %i.w = and i32 %.014, 960
  %.not20 = icmp eq i32 %i.w, 0
  %i.x = or i32 %.014, -1073741824
  %spec.select = select i1 %.not20, i32 %.014, i32 %i.x
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %zend_string_release_ex.exit
  %.0 = phi i32 [ %spec.select, %zend_string_release_ex.exit ], [ -520094722, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_update_type_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 29 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 32 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 163 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 187 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.k = load i8, ptr %i.j, align 4, !tbaa !55
  %i.l = icmp eq i8 %i.k, -119                    ; 2 uses
  %.08507.i.idx = select i1 %i.l, i64 -36, i64 0
  %.08507.i = getelementptr inbounds i8, ptr %4, i64 %.08507.i.idx ; 154 uses
  %.08506.i.idx = select i1 %i.l, i64 -32, i64 0
  %.08506.i = getelementptr inbounds i8, ptr %3, i64 %.08506.i.idx ; 105 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.08506.i, i64 29 ; 8 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !80    ; 10 uses
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81
  %i.r = and i32 %i.q, 33554432
  %.not9.i49 = icmp eq i32 %i.r, 0
  br i1 %.not9.i49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.08506.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !33
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %.08506.i, i64 %i.u
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %.08506.i, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !33
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi ptr [ %i.v, %bb.c ], [ %i.ab, %bb.d ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !33  ; 3 uses
  switch i8 %i.ae, label %bb.o [
    i8 11, label %_ssa_op1_info.exit50
    i8 7, label %bb.f
end_hunk_0
begin_hunk_1_@zend_update_type_info:bb.a
  br i1 %i.jg, label %bb.alz, label %_ssa_result_info.exit70

bb.alz:                                           ; preds = %bb.aly
  %i.euu = getelementptr inbounds nuw i8, ptr %.08506.i, i64 31
  %i.euv = load i8, ptr %i.euu, align 1, !tbaa !118
  %i.euw = icmp eq i8 %i.euv, 1
  br i1 %i.euw, label %bb.ama, label %bb.ami

bb.ama:                                           ; preds = %bb.alz
  %i.eux = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.euy = load i32, ptr %i.eux, align 4, !tbaa !81
  %i.euz = and i32 %i.euy, 33554432
  %.not9.i69 = icmp eq i32 %i.euz, 0
  br i1 %.not9.i69, label %bb.amc, label %bb.amb

bb.amb:                                           ; preds = %bb.ama
  %i.eva = getelementptr inbounds nuw i8, ptr %.08506.i, i64 16
  %i.evb = load i32, ptr %i.eva, align 8, !tbaa !33
  %i.evc = sext i32 %i.evb to i64
  %i.evd = getelementptr inbounds i8, ptr %.08506.i, i64 %i.evc
  br label %bb.amd

bb.amc:                                           ; preds = %bb.ama
  %i.eve = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.evf = load ptr, ptr %i.eve, align 8, !tbaa !82
  %i.evg = getelementptr inbounds nuw i8, ptr %.08506.i, i64 16
  %i.evh = load i32, ptr %i.evg, align 8, !tbaa !33
  %i.evi = zext i32 %i.evh to i64
  %i.evj = getelementptr inbounds nuw [16 x i8], ptr %i.evf, i64 %i.evi
  br label %bb.amd

bb.amd:                                           ; preds = %bb.amc, %bb.amb
  %i.evk = phi ptr [ %i.evd, %bb.amb ], [ %i.evj, %bb.amc ] ; 3 uses
  %i.evl = getelementptr inbounds nuw i8, ptr %i.evk, i64 8
  %i.evm = load i8, ptr %i.evl, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.evm, label %bb.amf [
    i8 11, label %_ssa_result_info.exit70
    i8 7, label %bb.ame
  ]

bb.ame:                                           ; preds = %bb.amd
  %i.evn = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.evk)
  br label %_ssa_result_info.exit70

bb.amf:                                           ; preds = %bb.amd
  %i.evo = zext nneg i8 %i.evm to i32
  %i.evp = shl nuw i32 1, %i.evo                  ; 2 uses
  %i.evq = getelementptr inbounds nuw i8, ptr %i.evk, i64 9
  %i.evr = load i8, ptr %i.evq, align 1, !tbaa !33
  %.not.i71 = icmp eq i8 %i.evr, 0
  br i1 %.not.i71, label %bb.amh, label %bb.amg

bb.amg:                                           ; preds = %bb.amf
  %i.evs = or i32 %i.evp, -1073741824
  br label %_ssa_result_info.exit70

bb.amh:                                           ; preds = %bb.amf
  %i.evt = icmp eq i8 %i.evm, 6
  %spec.select.i72 = select i1 %i.evt, i32 -2147483584, i32 %i.evp
  br label %_ssa_result_info.exit70

bb.ami:                                           ; preds = %bb.alz
  %.not.i67 = icmp eq ptr %i.i, null
  br i1 %.not.i67, label %_ssa_result_info.exit70, label %bb.amj

bb.amj:                                           ; preds = %bb.ami
  %i.evu = zext nneg i32 %i.jf to i64
  %i.evv = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.evu
  %i.evw = load i32, ptr %i.evv, align 8, !tbaa !117
  br label %_ssa_result_info.exit70

_ssa_result_info.exit70:                          ; preds = %bb.amd, %bb.ami, %bb.ame, %bb.amg, %bb.amh, %bb.amj, %bb.aly
  %i.evx = phi i32 [ 0, %bb.aly ], [ %spec.select.i72, %bb.amh ], [ -521143298, %bb.amd ], [ %i.evn, %bb.ame ], [ %i.evs, %bb.amg ], [ %i.evw, %bb.amj ], [ -486539265, %bb.ami ] ; 2 uses
  %i.evy = or i32 %i.evx, -520094722
  %spec.select10777.i = select i1 %.not9288.i, i32 %i.evx, i32 %i.evy ; 3 uses
  br i1 %.not9290.i551, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %_ssa_result_info.exit70
  %i.evz = and i32 %.0.i481487, 6291456
  %.not9307.i = icmp eq i32 %i.evz, 0
  %i.ewa = or i32 %spec.select10777.i, 16
  %spec.select10778.i = select i1 %.not9307.i, i32 %spec.select10777.i, i32 %i.ewa ; 2 uses
  %i.ewb = and i32 %.0.i481487, 8388608
  %.not9308.i = icmp eq i32 %i.ewb, 0
  %i.ewc = or i32 %spec.select10778.i, -2147483584
  %spec.select11031.i = select i1 %.not9308.i, i32 %spec.select10778.i, i32 %i.ewc
  br label %bb.aml

bb.aml:                                           ; preds = %_ssa_result_info.exit70, %bb.amk
  %.898474.i = phi i32 [ %spec.select10777.i, %_ssa_result_info.exit70 ], [ %spec.select11031.i, %bb.amk ] ; 2 uses
  %i.ewd = and i32 %.898474.i, -268435457         ; 2 uses
  %i.ewe = and i32 %.898474.i, 1024
  %.not9309.i = icmp eq i32 %i.ewe, 0
  %i.ewf = or i32 %i.ewd, -520094722
  %spec.select10779.i = select i1 %.not9309.i, i32 %i.ewd, i32 %i.ewf ; 3 uses
  %i.ewg = zext nneg i32 %i.eus to i64            ; 2 uses
  %i.ewh = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.ewg ; 2 uses
  %i.ewi = load i32, ptr %i.ewh, align 8, !tbaa !119 ; 2 uses
  %i.ewj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ewk = load i32, ptr %i.ewj, align 8, !tbaa !96
  %i.ewl = icmp uge i32 %i.ewi, %i.ewk
  %i.ewm = and i32 %spec.select10779.i, 1073741824
  %.not9310.i = icmp eq i32 %i.ewm, 0
  %or.cond10780.i = select i1 %i.ewl, i1 true, i1 %.not9310.i
  %i.ewn = or i32 %spec.select10779.i, -2147483648
  %.17708.i = select i1 %or.cond10780.i, i32 %spec.select10779.i, i32 %i.ewn ; 4 uses
  %i.ewo = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ewp = load i32, ptr %i.ewo, align 4, !tbaa !120
  %.not1650 = icmp slt i32 %i.ewi, %i.ewp
  br i1 %.not1650, label %bb.amm, label %bb.amo

bb.amm:                                           ; preds = %bb.aml
  %i.ewq = and i32 %.17708.i, -2147482624
  %.not9311.i = icmp eq i32 %i.ewq, 0
  %i.ewr = or i32 %.17708.i, -1073741824
  %spec.select10781.i = select i1 %.not9311.i, i32 %.17708.i, i32 %i.ewr ; 3 uses
  %i.ews = and i32 %spec.select10781.i, 1073741888
  %or.cond10782.i.not = icmp eq i32 %i.ews, 1073741888
  %i.ewt = or i32 %spec.select10781.i, -2147483648 ; 2 uses
  %.37710.i = select i1 %or.cond10782.i.not, i32 %i.ewt, i32 %spec.select10781.i ; 2 uses
  %i.ewu = and i32 %.37710.i, 1073742080
  %or.cond10783.i.not = icmp eq i32 %i.ewu, 1073742080
  %.47711.i = select i1 %or.cond10783.i.not, i32 %i.ewt, i32 %.37710.i ; 2 uses
  %i.ewv = getelementptr inbounds nuw i8, ptr %i.ewh, i64 40
  %i.eww = load i8, ptr %i.ewv, align 8
  %i.ewx = lshr i8 %i.eww, 2
  %i.ewy = and i8 %i.ewx, 3                       ; 2 uses
  %.not9316.i = icmp eq i8 %i.ewy, 0
  br i1 %.not9316.i, label %bb.amo, label %bb.amn

bb.amn:                                           ; preds = %bb.amm
  %i.ewz = icmp eq i8 %i.ewy, 2
  %..i436 = select i1 %i.ewz, i32 -1067384704, i32 -520093697
  %i.exa = or i32 %..i436, %.47711.i
  br label %bb.amo

bb.amo:                                           ; preds = %bb.amn, %bb.amm, %bb.aml
  %.57712.i = phi i32 [ %i.exa, %bb.amn ], [ %.47711.i, %bb.amm ], [ %.17708.i, %bb.aml ] ; 3 uses
  %i.exb = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.ewg ; 2 uses
  %i.exc = load i32, ptr %i.exb, align 8, !tbaa !117 ; 2 uses
  %.not9317.i = icmp eq i32 %i.exc, %.57712.i
  br i1 %.not9317.i, label %_zend_update_type_info.exit, label %bb.amp

bb.amp:                                           ; preds = %bb.amo
  %i.exd = xor i32 %.57712.i, -1
  %i.exe = and i32 %i.exc, %i.exd
  %.not9320.i = icmp eq i32 %i.exe, 0
  br i1 %.not9320.i, label %bb.amq, label %.critedge10785.i

.critedge10785.i:                                 ; preds = %bb.amp
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.eus)
  br label %_zend_update_type_info.exit

bb.amq:                                           ; preds = %bb.amp
  store i32 %.57712.i, ptr %i.exb, align 8, !tbaa !117
  br label %_zend_update_type_info.exit

bb.amr:                                           ; preds = %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread
  %i.exf = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12
  %i.exg = load i32, ptr %i.exf, align 4, !tbaa !36 ; 4 uses
  %i.exh = icmp sgt i32 %i.exg, -1
  br i1 %i.exh, label %bb.ams, label %.thread570

bb.ams:                                           ; preds = %bb.amr
  %i.exi = and i32 %.0.i481487, 1073741823        ; 4 uses
  switch i8 %i.nq, label %.thread560 [
    i8 84, label %bb.amt
    i8 87, label %bb.amt
    i8 93, label %bb.amt
    i8 -101, label %bb.amt
    i8 96, label %bb.anh
  ]

bb.amt:                                           ; preds = %bb.ams, %bb.ams, %bb.ams, %bb.ams
  %i.exj = and i32 %.0.i481487, 7
  %.not9221.i = icmp eq i32 %i.exj, 0             ; 4 uses
  %.not9222.i = icmp eq i8 %i.nq, 93              ; 3 uses
  %i.exk = and i32 %.0.i481487, 1073741688
  %spec.select10788.i = select i1 %.not9222.i, i32 %i.exi, i32 %i.exk
  %i.exl = or i32 %spec.select10788.i, 1073741952
  %.918476.i = select i1 %.not9221.i, i32 %i.exi, i32 %i.exl ; 2 uses
  %i.exm = and i32 %.0.i481487, 192
  %.not9223.i = icmp eq i32 %i.exm, 0
  br i1 %.not9223.i, label %bb.amw, label %bb.amu

bb.amu:                                           ; preds = %bb.amt
  %i.exn = or i32 %.918476.i, 1073741824          ; 2 uses
  br i1 %.not9222.i, label %bb.amv, label %bb.amw

bb.amv:                                           ; preds = %bb.amu
  %i.exo = and i32 %.0.i481487, -2147483648
  %i.exp = or disjoint i32 %i.exn, %i.exo
  br label %bb.amw

bb.amw:                                           ; preds = %bb.amv, %bb.amu, %bb.amt
  %.928477.i = phi i32 [ %i.exp, %bb.amv ], [ %i.exn, %bb.amu ], [ %.918476.i, %bb.amt ]
  %i.exq = and i32 %.0.i481487, 768
  %.not9224.i = icmp eq i32 %i.exq, 0
  %i.exr = and i32 %.0.i481487, -1073741824
  %i.exs = select i1 %.not9224.i, i32 0, i32 %i.exr
  %.938478.i = or i32 %.928477.i, %i.exs          ; 4 uses
  %i.ext = icmp eq i8 %i.ja, 0
  br i1 %i.ext, label %bb.amx, label %bb.amz

bb.amx:                                           ; preds = %bb.amw
  %spec.select10789.i = select i1 %.not9221.i, i32 0, i32 2097152 ; 2 uses
  %i.exu = and i32 %.0.i481487, 128
  %.not9235.i = icmp eq i32 %i.exu, 0
  br i1 %.not9235.i, label %bb.anj, label %bb.amy

bb.amy:                                           ; preds = %bb.amx
  %i.exv = and i32 %.0.i481487, 12582912
  %.not9236.i = icmp eq i32 %i.exv, 0
  %i.exw = and i32 %.0.i481487, 538968064
  %.not9237.i = icmp eq i32 %i.exw, 0
  %i.exx = select i1 %.not9237.i, i32 4194304, i32 6291456
  %i.exy = or i32 %spec.select10789.i, %i.exx
  %i.exz = select i1 %.not9236.i, i32 6291456, i32 %i.exy
  br label %bb.anj

bb.amz:                                           ; preds = %bb.amw
  %i.eya = and i32 %.0.i57, 572
  %.not9225.i = icmp eq i32 %i.eya, 0
  br i1 %.not9225.i, label %bb.anc, label %bb.ana

bb.ana:                                           ; preds = %bb.amz
  %spec.select10790.i = select i1 %.not9221.i, i32 0, i32 2097152 ; 2 uses
  %i.eyb = and i32 %.0.i481487, 128
  %.not9226.i = icmp eq i32 %i.eyb, 0
  br i1 %.not9226.i, label %bb.anc, label %bb.anb

bb.anb:                                           ; preds = %bb.ana
  %i.eyc = and i32 %.0.i481487, 12582912
  %.not9227.i = icmp eq i32 %i.eyc, 0
  %i.eyd = and i32 %.0.i481487, 538968064
  %.not9228.i = icmp eq i32 %i.eyd, 0
  %i.eye = select i1 %.not9228.i, i32 4194304, i32 6291456
  %i.eyf = or i32 %spec.select10790.i, %i.eye
  %i.eyg = select i1 %.not9227.i, i32 6291456, i32 %i.eyf
  br label %bb.anc

bb.anc:                                           ; preds = %bb.anb, %bb.ana, %bb.amz
  %.27703.i = phi i32 [ %i.eyg, %bb.anb ], [ %spec.select10790.i, %bb.ana ], [ 0, %bb.amz ] ; 3 uses
  %i.eyh = and i32 %.0.i57, 64
  %.not9229.i = icmp eq i32 %i.eyh, 0
  br i1 %.not9229.i, label %bb.ang, label %bb.and

bb.and:                                           ; preds = %bb.anc
  %i.eyi = or i32 %.27703.i, 8388608              ; 2 uses
  br i1 %i.iz, label %bb.ang, label %bb.ane

bb.ane:                                           ; preds = %bb.and
  %i.eyj = or i32 %.27703.i, 10485760
  %spec.select10791.i = select i1 %.not9221.i, i32 %i.eyi, i32 %i.eyj ; 2 uses
  %i.eyk = and i32 %.0.i481487, 128
  %.not9231.i = icmp eq i32 %i.eyk, 0
  br i1 %.not9231.i, label %bb.ang, label %bb.anf

bb.anf:                                           ; preds = %bb.ane
  %i.eyl = and i32 %.0.i481487, 12582912
  %.not9232.i = icmp eq i32 %i.eyl, 0
  %i.eym = and i32 %.0.i481487, 538968064
  %.not9233.i = icmp ne i32 %i.eym, 0
  %i.eyn = or i1 %.not9232.i, %.not9233.i
  %i.eyo = select i1 %i.eyn, i32 6291456, i32 4194304
  %i.eyp = or i32 %spec.select10791.i, %i.eyo
  br label %bb.ang

bb.ang:                                           ; preds = %bb.anf, %bb.ane, %bb.and, %bb.anc
  %.47705.i = phi i32 [ %i.eyp, %bb.anf ], [ %spec.select10791.i, %bb.ane ], [ %i.eyi, %bb.and ], [ %.27703.i, %bb.anc ] ; 2 uses
  %i.eyq = and i32 %.0.i57, 3
  %.not9234.i = icmp eq i32 %i.eyq, 0
  %i.eyr = or i32 %.47705.i, 8388608
  %spec.select10792.i = select i1 %.not9234.i, i32 %.47705.i, i32 %i.eyr
  br label %bb.anj

bb.anh:                                           ; preds = %bb.ams
  %i.eys = shl i32 %.0.i481487, 23
  %i.eyt = and i32 %i.eys, 1073741824
  %spec.select10793.i = or disjoint i32 %i.eyt, %i.exi ; 2 uses
  %i.eyu = and i32 %.0.i481487, 768
  %.not9220.i = icmp eq i32 %i.eyu, 0
  br i1 %.not9220.i, label %.thread560, label %bb.ani

bb.ani:                                           ; preds = %bb.anh
  %i.eyv = and i32 %.0.i481487, -1073741824
  %i.eyw = or i32 %spec.select10793.i, %i.eyv
  br label %.thread560

bb.anj:                                           ; preds = %bb.ang, %bb.amy, %bb.amx
  %.57706.i = phi i32 [ %i.exz, %bb.amy ], [ %spec.select10789.i, %bb.amx ], [ %spec.select10792.i, %bb.ang ] ; 9 uses
  %i.eyx = and i32 %.57706.i, 14680064
  %.not9238.i = icmp eq i32 %i.eyx, 0
  br i1 %.not9238.i, label %.thread560, label %bb.ank

bb.ank:                                           ; preds = %bb.anj
  switch i8 %i.nq, label %.thread560 [
    i8 87, label %bb.anl
    i8 84, label %bb.anl
    i8 93, label %bb.anl
    i8 -101, label %bb.anl
  ]

bb.anl:                                           ; preds = %bb.ank, %bb.ank, %bb.ank, %bb.ank
  %i.eyy = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.eyz = load i32, ptr %i.eyy, align 4, !tbaa !38 ; 3 uses
  %i.eza = sext i32 %i.eyz to i64
  %i.ezb = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.eza
  %i.ezc = getelementptr inbounds nuw i8, ptr %i.ezb, i64 12
  %i.ezd = load i32, ptr %i.ezc, align 4, !tbaa !140 ; 2 uses
  %i.eze = icmp slt i32 %i.ezd, 0
  %i.ezf = or i32 %.938478.i, %.57706.i
  %7 = or i32 %i.ezf, 2176
  %.968481.i = select i1 %i.eze, i32 %7, i32 %.938478.i
  %.not9239.i = icmp eq ptr %5, null
  %i.ezg = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.ezh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ezi = ptrtoint ptr %.08506.i to i64
  %i.ezj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %invariant.op.a = or i32 %.57706.i, 32768
  %invariant.op1545 = or i32 %.57706.i, 49152
  %invariant.op1547 = or i32 %.57706.i, 2095104
  %invariant.op1549 = or i32 %.57706.i, 131200
  br label %bb.anm

bb.anm:                                           ; preds = %zend_ssa_next_use.exit.i, %bb.anl
  %.978482.i = phi i32 [ %.968481.i, %bb.anl ], [ %.988483.i, %zend_ssa_next_use.exit.i ] ; 23 uses
  %.08382.i = phi i32 [ %i.ezd, %bb.anl ], [ %.0.i.i, %zend_ssa_next_use.exit.i ] ; 3 uses
  %i.ezk = icmp sgt i32 %.08382.i, -1
  br i1 %i.ezk, label %bb.ann, label %.thread565

bb.ann:                                           ; preds = %bb.anm
  %i.ezl = zext nneg i32 %.08382.i to i64         ; 3 uses
  br i1 %.not9239.i, label %bb.ano, label %bb.anr

bb.ano:                                           ; preds = %bb.ann
  %i.ezm = load ptr, ptr %i.ezh, align 8, !tbaa !53 ; 2 uses
  %i.ezn = ptrtoint ptr %i.ezm to i64
  %i.ezo = sub i64 %i.ezi, %i.ezn
  %i.ezp = ashr exact i64 %i.ezo, 5
  %i.ezq = add nsw i64 %i.ezp, 1
  %.not9240.i = icmp eq i64 %i.ezq, %i.ezl
  br i1 %.not9240.i, label %bb.anq, label %bb.anp

bb.anp:                                           ; preds = %bb.ano
  %i.ezr = or i32 %.57706.i, %.978482.i
  %i.ezs = or i32 %i.ezr, 2095104
  br label %.thread565

bb.anq:                                           ; preds = %bb.ano
  %i.ezt = getelementptr inbounds nuw [32 x i8], ptr %i.ezm, i64 %i.ezl
  br label %bb.ant

bb.anr:                                           ; preds = %bb.ann
  %i.ezu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ezl
  %i.ezv = load ptr, ptr %i.ezu, align 8, !tbaa !206 ; 2 uses
  %.not9241.i = icmp eq ptr %i.ezv, %i.ezg
  br i1 %.not9241.i, label %bb.ant, label %bb.ans

bb.ans:                                           ; preds = %bb.anr
  %i.ezw = or i32 %.57706.i, %.978482.i
  %i.ezx = or i32 %i.ezw, 2095104
  br label %.thread565

bb.ant:                                           ; preds = %bb.anr, %bb.anq
  %.pn.i = phi ptr [ %i.ezt, %bb.anq ], [ %i.ezv, %bb.anr ]
  %.07700.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 28
  %.07700.i = load i8, ptr %.07700.in.i, align 4, !tbaa !55
  switch i8 %.07700.i, label %bb.anz [
    i8 84, label %bb.anu
    i8 87, label %bb.anu
    i8 93, label %bb.anu
    i8 -101, label %bb.anu
    i8 23, label %bb.anu
    i8 27, label %bb.anu
    i8 66, label %bb.anv
    i8 -71, label %bb.anv
    i8 106, label %bb.anv
    i8 50, label %bb.anv
    i8 67, label %bb.anv
    i8 30, label %bb.anv
    i8 -96, label %bb.anv
    i8 71, label %bb.anv
    i8 72, label %bb.anv
    i8 111, label %bb.anv
    i8 124, label %bb.anv
    i8 -116, label %bb.anv
    i8 125, label %bb.anv
    i8 34, label %bb.anw
    i8 35, label %bb.anw
    i8 36, label %bb.anw
    i8 37, label %bb.anw
    i8 85, label %bb.aoa
    i8 88, label %bb.aoa
    i8 94, label %bb.aoa
    i8 24, label %bb.aoa
    i8 28, label %bb.aoa
    i8 32, label %bb.aoa
    i8 -124, label %bb.aoa
    i8 -123, label %bb.aoa
    i8 -122, label %bb.aoa
    i8 -121, label %bb.aoa
    i8 117, label %bb.aoa
    i8 81, label %bb.aoa
    i8 70, label %bb.aoa
  ]

bb.anu:                                           ; preds = %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant
  %.reass1550 = or i32 %.978482.i, %invariant.op1549
  br label %bb.aoa

bb.anv:                                           ; preds = %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant
  %.reass1548 = or i32 %.978482.i, %invariant.op1547
  br label %bb.aoa

bb.anw:                                           ; preds = %bb.ant, %bb.ant, %bb.ant, %bb.ant
  %i.ezy = and i32 %.978482.i, 16384
  %.not9242.i = icmp eq i32 %i.ezy, 0
  br i1 %.not9242.i, label %bb.any, label %bb.anx

bb.anx:                                           ; preds = %bb.anw
  %.reass = or i32 %.978482.i, %invariant.op.a
  br label %bb.aoa

bb.any:                                           ; preds = %bb.anw
  %i.ezz = and i32 %.978482.i, 32768
  %.not9243.i = icmp eq i32 %i.ezz, 0
  %.reass1546.reass = or i32 %.978482.i, %invariant.op1545
  %spec.select = select i1 %.not9243.i, i32 %.reass1546.reass, i32 %.978482.i
  br label %bb.aoa

bb.anz:                                           ; preds = %bb.ant
  unreachable

bb.aoa:                                           ; preds = %bb.any, %bb.anx, %bb.anv, %bb.anu, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant, %bb.ant
  %.988483.i = phi i32 [ %.reass1550, %bb.anu ], [ %.reass1548, %bb.anv ], [ %.reass, %bb.anx ], [ %spec.select, %bb.any ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ], [ %.978482.i, %bb.ant ] ; 2 uses
  %i.faa = load ptr, ptr %i.ezj, align 8, !tbaa !34
  %i.fab = zext nneg i32 %.08382.i to i64
  %i.fac = getelementptr inbounds nuw [36 x i8], ptr %i.faa, i64 %i.fab ; 3 uses
  %i.fad = load i32, ptr %i.fac, align 4, !tbaa !57
  %i.fae = icmp eq i32 %i.fad, %i.eyz
  br i1 %i.fae, label %zend_ssa_next_use.exit.i, label %bb.aob

bb.aob:                                           ; preds = %bb.aoa
  %i.faf = getelementptr inbounds nuw i8, ptr %i.fac, i64 4
  %i.fag = load i32, ptr %i.faf, align 4, !tbaa !58
  %i.fah = icmp eq i32 %i.fag, %i.eyz
  %. = select i1 %i.fah, i64 28, i64 32
  br label %zend_ssa_next_use.exit.i

zend_ssa_next_use.exit.i:                         ; preds = %bb.aob, %bb.aoa
  %.sink1598 = phi i64 [ 24, %bb.aoa ], [ %., %bb.aob ]
  %i.fai = getelementptr inbounds nuw i8, ptr %i.fac, i64 %.sink1598
  %.0.i.i = load i32, ptr %i.fai, align 4, !tbaa !32 ; 2 uses
  %i.faj = icmp sgt i32 %.0.i.i, -1
  br i1 %i.faj, label %bb.aoc, label %bb.anm

bb.aoc:                                           ; preds = %zend_ssa_next_use.exit.i
  %i.fak = or i32 %.57706.i, %.988483.i
  %i.fal = or i32 %i.fak, 2095104
  br label %.thread565

.thread565:                                       ; preds = %bb.anm, %bb.anp, %bb.aoc, %bb.ans
  %.1008485.i = phi i32 [ %i.ezx, %bb.ans ], [ %i.ezs, %bb.anp ], [ %i.fal, %bb.aoc ], [ %.978482.i, %bb.anm ] ; 2 uses
  %i.fam = and i32 %.1008485.i, -536870913
  %spec.select10794.i = select i1 %.not9222.i, i32 %.1008485.i, i32 %i.fam
  br label %.thread560

.thread560:                                       ; preds = %bb.anh, %bb.ani, %bb.ams, %.thread565, %bb.ank, %bb.anj
  %.1018486.i = phi i32 [ %.938478.i, %bb.anj ], [ %spec.select10794.i, %.thread565 ], [ %.938478.i, %bb.ank ], [ %spec.select10793.i, %bb.anh ], [ %i.eyw, %bb.ani ], [ %i.exi, %bb.ams ] ; 3 uses
  %i.fan = and i32 %.1018486.i, 551551104
  %or.cond10795.i = icmp eq i32 %i.fan, 128
  br i1 %or.cond10795.i, label %bb.aod, label %bb.aoe

bb.aod:                                           ; preds = %.thread560
  switch i8 %i.nq, label %_zend_update_type_info.exit [
    i8 93, label %bb.aoe
    i8 81, label %bb.aoe
    i8 90, label %bb.aoe
    i8 96, label %bb.aoe
    i8 98, label %bb.aoe
  ]

bb.aoe:                                           ; preds = %.thread560, %bb.aod, %bb.aod, %bb.aod, %bb.aod, %bb.aod
  %i.fao = and i32 %.1018486.i, -268435457        ; 2 uses
  %i.fap = and i32 %.1018486.i, 1024
  %.not9247.i = icmp eq i32 %i.fap, 0
  %i.faq = or i32 %i.fao, -520094722
  %spec.select10796.i = select i1 %.not9247.i, i32 %i.fao, i32 %i.faq ; 3 uses
  %i.far = zext nneg i32 %i.exg to i64            ; 2 uses
  %i.fas = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.far ; 2 uses
  %i.fat = load i32, ptr %i.fas, align 8, !tbaa !119 ; 2 uses
  %i.fau = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fav = load i32, ptr %i.fau, align 8, !tbaa !96
  %i.faw = icmp uge i32 %i.fat, %i.fav
  %i.fax = and i32 %spec.select10796.i, 1073741824
  %.not9248.i = icmp eq i32 %i.fax, 0
  %or.cond10797.i = or i1 %.not9248.i, %i.faw
  %i.fay = or i32 %spec.select10796.i, -2147483648
  %.17695.i = select i1 %or.cond10797.i, i32 %spec.select10796.i, i32 %i.fay ; 4 uses
  %i.faz = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fba = load i32, ptr %i.faz, align 4, !tbaa !120
  %.not1647 = icmp slt i32 %i.fat, %i.fba
  br i1 %.not1647, label %bb.aof, label %bb.aoh

bb.aof:                                           ; preds = %bb.aoe
  %i.fbb = and i32 %.17695.i, -2147482624
  %.not9249.i = icmp eq i32 %i.fbb, 0
  %i.fbc = or i32 %.17695.i, -1073741824
  %spec.select10798.i = select i1 %.not9249.i, i32 %.17695.i, i32 %i.fbc ; 3 uses
  %i.fbd = and i32 %spec.select10798.i, 1073741888
  %or.cond10799.i.not = icmp eq i32 %i.fbd, 1073741888
  %i.fbe = or i32 %spec.select10798.i, -2147483648 ; 2 uses
  %.37697.i = select i1 %or.cond10799.i.not, i32 %i.fbe, i32 %spec.select10798.i ; 2 uses
  %i.fbf = and i32 %.37697.i, 1073742080
  %or.cond10800.i.not = icmp eq i32 %i.fbf, 1073742080
  %.47698.i = select i1 %or.cond10800.i.not, i32 %i.fbe, i32 %.37697.i ; 2 uses
  %i.fbg = getelementptr inbounds nuw i8, ptr %i.fas, i64 40
  %i.fbh = load i8, ptr %i.fbg, align 8
  %i.fbi = lshr i8 %i.fbh, 2
  %i.fbj = and i8 %i.fbi, 3                       ; 2 uses
  %.not9254.i = icmp eq i8 %i.fbj, 0
  br i1 %.not9254.i, label %bb.aoh, label %bb.aog

bb.aog:                                           ; preds = %bb.aof
  %i.fbk = icmp eq i8 %i.fbj, 2
  %..i437 = select i1 %i.fbk, i32 -1067384704, i32 -520093697
  %i.fbl = or i32 %..i437, %.47698.i
  br label %bb.aoh

bb.aoh:                                           ; preds = %bb.aog, %bb.aof, %bb.aoe
  %.57699.i = phi i32 [ %i.fbl, %bb.aog ], [ %.47698.i, %bb.aof ], [ %.17695.i, %bb.aoe ] ; 4 uses
  %i.fbm = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.far ; 5 uses
  %i.fbn = load i32, ptr %i.fbm, align 8, !tbaa !117 ; 2 uses
  %.not9255.i = icmp eq i32 %i.fbn, %.57699.i
  br i1 %.not9255.i, label %bb.aok, label %bb.aoi

bb.aoi:                                           ; preds = %bb.aoh
  %i.fbo = xor i32 %.57699.i, -1
  %i.fbp = and i32 %i.fbn, %i.fbo
  %.not9258.i = icmp eq i32 %i.fbp, 0
  br i1 %.not9258.i, label %bb.aoj, label %.critedge10802.i

.critedge10802.i:                                 ; preds = %bb.aoi
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.exg)
  br label %_zend_update_type_info.exit

bb.aoj:                                           ; preds = %bb.aoi
  store i32 %.57699.i, ptr %i.fbm, align 8, !tbaa !117
  br label %bb.aok

bb.aok:                                           ; preds = %bb.aoj, %bb.aoh
  %i.fbq = load i32, ptr %.08507.i, align 4, !tbaa !57 ; 2 uses
  %i.fbr = icmp sgt i32 %i.fbq, -1
  br i1 %i.fbr, label %bb.aol, label %bb.aoq

bb.aol:                                           ; preds = %bb.aok
  %i.fbs = zext nneg i32 %i.fbq to i64
  %i.fbt = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.fbs ; 3 uses
  %i.fbu = load i32, ptr %i.fbt, align 8, !tbaa !117
  %i.fbv = and i32 %i.fbu, 256
  %.not9259.i = icmp eq i32 %i.fbv, 0
  br i1 %.not9259.i, label %bb.aoq, label %bb.aom

bb.aom:                                           ; preds = %bb.aol
  %i.fbw = getelementptr inbounds nuw i8, ptr %i.fbt, i64 32
  %i.fbx = load ptr, ptr %i.fbw, align 8, !tbaa !124 ; 4 uses
  %.not9260.i = icmp eq ptr %i.fbx, null
  br i1 %.not9260.i, label %bb.aoq, label %bb.aon

bb.aon:                                           ; preds = %bb.aom
  %i.fby = zext nneg i32 %i.exg to i64
  %i.fbz = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.fby ; 3 uses
  %i.fca = and i32 %.57699.i, 1024
  %.not9261.i = icmp eq i32 %i.fca, 0
  br i1 %.not9261.i, label %bb.aoo, label %bb.aoq

bb.aoo:                                           ; preds = %bb.aon
  %i.fcb = getelementptr inbounds nuw i8, ptr %i.fbt, i64 4
  %i.fcc = load i8, ptr %i.fcb, align 4
  %i.fcd = lshr i8 %i.fcc, 1
  %.lobit9262.i = and i8 %i.fcd, 1
  %i.fce = getelementptr inbounds nuw i8, ptr %i.fbx, i64 28
  %i.fcf = load i32, ptr %i.fce, align 4, !tbaa !135
  %i.fcg = and i32 %i.fcf, 32
  %.not9263.i = icmp eq i32 %i.fcg, 0
  %spec.select10805.i = select i1 %.not9263.i, i8 %.lobit9262.i, i8 0 ; 2 uses
  %i.fch = getelementptr inbounds nuw i8, ptr %i.fbz, i64 32 ; 2 uses
  %i.fci = load ptr, ptr %i.fch, align 8, !tbaa !124
  %.not9264.i = icmp eq ptr %i.fci, %i.fbx
  %i.fcj = getelementptr inbounds nuw i8, ptr %i.fbz, i64 4
  %i.fck = load i8, ptr %i.fcj, align 4           ; 2 uses
  br i1 %.not9264.i, label %bb.aop, label %._crit_edge875

bb.aop:                                           ; preds = %bb.aoo
  %i.fcl = lshr i8 %i.fck, 1
  %.lobit9265.i = and i8 %i.fcl, 1
  %.not9266.i = icmp eq i8 %.lobit9265.i, %spec.select10805.i
  br i1 %.not9266.i, label %.thread570, label %._crit_edge875

._crit_edge875:                                   ; preds = %bb.aoo, %bb.aop
  store ptr %i.fbx, ptr %i.fch, align 8, !tbaa !124
  %i.fcm = getelementptr inbounds nuw i8, ptr %i.fbz, i64 4
  %i.fcn = shl nuw nsw i8 %spec.select10805.i, 1
  %i.fco = and i8 %i.fck, -3
  %i.fcp = or disjoint i8 %i.fco, %i.fcn
  store i8 %i.fcp, ptr %i.fcm, align 4
  br label %.thread570

bb.aoq:                                           ; preds = %bb.aok, %bb.aol, %bb.aom, %bb.aon
  %i.fcq = getelementptr inbounds nuw i8, ptr %i.fbm, i64 32 ; 2 uses
  %i.fcr = load ptr, ptr %i.fcq, align 8, !tbaa !124
  %.not9267.i = icmp eq ptr %i.fcr, null
  %i.fcs = getelementptr inbounds nuw i8, ptr %i.fbm, i64 4
  %i.fct = load i8, ptr %i.fcs, align 4           ; 2 uses
  %i.fcu = and i8 %i.fct, 2
  %.not9268.i = icmp eq i8 %i.fcu, 0
  %or.cond1599 = select i1 %.not9267.i, i1 %.not9268.i, i1 false
  br i1 %or.cond1599, label %.thread570, label %._crit_edge879

._crit_edge879:                                   ; preds = %bb.aoq
  store ptr null, ptr %i.fcq, align 8, !tbaa !124
  %i.fcv = getelementptr inbounds nuw i8, ptr %i.fbm, i64 4
  %i.fcw = and i8 %i.fct, -3
  store i8 %i.fcw, ptr %i.fcv, align 4
  br label %.thread570

.thread570:                                       ; preds = %bb.aoq, %._crit_edge875, %bb.aop, %._crit_edge879, %bb.amr
  %i.fcx = load i8, ptr %i.np, align 4, !tbaa !55 ; 4 uses
end_hunk_1
begin_hunk_2_@zend_infer_types_ex:bb.a
bb.ahy:                                           ; preds = %bb.ahx
  %i.fvk = getelementptr inbounds nuw i8, ptr %.08506.i, i64 31
  %i.fvl = load i8, ptr %i.fvk, align 1, !tbaa !118
  %i.fvm = icmp eq i8 %i.fvl, 1
  br i1 %i.fvm, label %bb.ahz, label %bb.aih

bb.ahz:                                           ; preds = %bb.ahy
  %i.fvn = load i32, ptr %i.v, align 4, !tbaa !81
  %i.fvo = and i32 %i.fvn, 33554432
  %.not9.i425 = icmp eq i32 %i.fvo, 0
  br i1 %.not9.i425, label %bb.aib, label %bb.aia

bb.aia:                                           ; preds = %bb.ahz
  %i.fvp = getelementptr inbounds nuw i8, ptr %.08506.i, i64 16
  %i.fvq = load i32, ptr %i.fvp, align 8, !tbaa !33
  %i.fvr = sext i32 %i.fvq to i64
  %i.fvs = getelementptr inbounds i8, ptr %.08506.i, i64 %i.fvr
  br label %bb.aic

bb.aib:                                           ; preds = %bb.ahz
  %i.fvt = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.fvu = getelementptr inbounds nuw i8, ptr %.08506.i, i64 16
  %i.fvv = load i32, ptr %i.fvu, align 8, !tbaa !33
  %i.fvw = zext i32 %i.fvv to i64
  %i.fvx = getelementptr inbounds nuw [16 x i8], ptr %i.fvt, i64 %i.fvw
  br label %bb.aic

bb.aic:                                           ; preds = %bb.aib, %bb.aia
  %i.fvy = phi ptr [ %i.fvs, %bb.aia ], [ %i.fvx, %bb.aib ] ; 3 uses
  %i.fvz = getelementptr inbounds nuw i8, ptr %i.fvy, i64 8
  %i.fwa = load i8, ptr %i.fvz, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.fwa, label %bb.aie [
    i8 11, label %_ssa_result_info.exit426
    i8 7, label %bb.aid
  ]

bb.aid:                                           ; preds = %bb.aic
  %i.fwb = call i32 @zend_array_type_info(ptr noundef nonnull %i.fvy)
  br label %_ssa_result_info.exit426

bb.aie:                                           ; preds = %bb.aic
  %i.fwc = zext nneg i8 %i.fwa to i32
  %i.fwd = shl nuw i32 1, %i.fwc                  ; 2 uses
  %i.fwe = getelementptr inbounds nuw i8, ptr %i.fvy, i64 9
  %i.fwf = load i8, ptr %i.fwe, align 1, !tbaa !33
  %.not.i427 = icmp eq i8 %i.fwf, 0
  br i1 %.not.i427, label %bb.aig, label %bb.aif

bb.aif:                                           ; preds = %bb.aie
  %i.fwg = or i32 %i.fwd, -1073741824
  br label %_ssa_result_info.exit426

bb.aig:                                           ; preds = %bb.aie
  %i.fwh = icmp eq i8 %i.fwa, 6
  %spec.select.i428 = select i1 %i.fwh, i32 -2147483584, i32 %i.fwd
  br label %_ssa_result_info.exit426

bb.aih:                                           ; preds = %bb.ahy
  %i.fwi = load ptr, ptr %i.j, align 8, !tbaa !83 ; 2 uses
  %.not.i423 = icmp eq ptr %i.fwi, null
  br i1 %.not.i423, label %_ssa_result_info.exit426, label %bb.aii

bb.aii:                                           ; preds = %bb.aih
  %i.fwj = zext nneg i32 %i.fvi to i64
  %i.fwk = getelementptr inbounds nuw [40 x i8], ptr %i.fwi, i64 %i.fwj
  %i.fwl = load i32, ptr %i.fwk, align 8, !tbaa !117
  br label %_ssa_result_info.exit426

_ssa_result_info.exit426:                         ; preds = %bb.aic, %bb.aih, %bb.aid, %bb.aif, %bb.aig, %bb.aii, %bb.ahx
  %i.fwm = phi i32 [ 0, %bb.ahx ], [ %spec.select.i428, %bb.aig ], [ -521143298, %bb.aic ], [ %i.fwb, %bb.aid ], [ %i.fwg, %bb.aif ], [ %i.fwl, %bb.aii ], [ -486539265, %bb.aih ] ; 2 uses
  %i.fwn = or i32 %i.fwm, -520094722
  %spec.select10777.i = select i1 %.not9288.i, i32 %i.fwm, i32 %i.fwn ; 3 uses
  br i1 %.not9290.i1404, label %bb.aik, label %bb.aij

bb.aij:                                           ; preds = %_ssa_result_info.exit426
  %i.fwo = and i32 %.0.i4043437, 6291456
  %.not9307.i = icmp eq i32 %i.fwo, 0
  %i.fwp = or i32 %spec.select10777.i, 16
  %spec.select10778.i = select i1 %.not9307.i, i32 %spec.select10777.i, i32 %i.fwp ; 2 uses
  %i.fwq = and i32 %.0.i4043437, 8388608
  %.not9308.i = icmp eq i32 %i.fwq, 0
  %i.fwr = or i32 %spec.select10778.i, -2147483584
  %spec.select11031.i = select i1 %.not9308.i, i32 %spec.select10778.i, i32 %i.fwr
  br label %bb.aik

bb.aik:                                           ; preds = %_ssa_result_info.exit426, %bb.aij
  %.898474.i = phi i32 [ %spec.select10777.i, %_ssa_result_info.exit426 ], [ %spec.select11031.i, %bb.aij ] ; 2 uses
  %i.fws = and i32 %.898474.i, -268435457         ; 2 uses
  %i.fwt = and i32 %.898474.i, 1024
  %.not9309.i = icmp eq i32 %i.fwt, 0
  %i.fwu = or i32 %i.fws, -520094722
  %spec.select10779.i = select i1 %.not9309.i, i32 %i.fws, i32 %i.fwu ; 3 uses
  %i.fwv = zext nneg i32 %i.fvg to i64            ; 3 uses
  %i.fww = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.fwv ; 2 uses
  %i.fwx = load i32, ptr %i.fww, align 8, !tbaa !119 ; 2 uses
  %i.fwy = load i32, ptr %i.r, align 8, !tbaa !96
  %i.fwz = icmp uge i32 %i.fwx, %i.fwy
  %i.fxa = and i32 %spec.select10779.i, 1073741824
  %.not9310.i = icmp eq i32 %i.fxa, 0
  %or.cond10780.i = select i1 %i.fwz, i1 true, i1 %.not9310.i
  %i.fxb = or i32 %spec.select10779.i, -2147483648
  %.17708.i = select i1 %or.cond10780.i, i32 %spec.select10779.i, i32 %i.fxb ; 5 uses
  %i.fxc = load i32, ptr %i.s, align 4, !tbaa !120
  %i.fxd = icmp slt i32 %i.fwx, %i.fxc
  br i1 %i.fxd, label %bb.ail, label %.thread1419

bb.ail:                                           ; preds = %bb.aik
  %i.fxe = and i32 %.17708.i, -2147482624
  %.not9311.i = icmp eq i32 %i.fxe, 0
  %i.fxf = or i32 %.17708.i, -1073741824
  %spec.select10781.i = select i1 %.not9311.i, i32 %.17708.i, i32 %i.fxf ; 3 uses
  %i.fxg = and i32 %spec.select10781.i, 1073741888
  %or.cond10782.i.not = icmp eq i32 %i.fxg, 1073741888
  %i.fxh = or i32 %spec.select10781.i, -2147483648 ; 2 uses
  %.37710.i = select i1 %or.cond10782.i.not, i32 %i.fxh, i32 %spec.select10781.i ; 2 uses
  %i.fxi = and i32 %.37710.i, 1073742080
  %or.cond10783.i.not = icmp eq i32 %i.fxi, 1073742080
  %.47711.i = select i1 %or.cond10783.i.not, i32 %i.fxh, i32 %.37710.i
  %i.fxj = getelementptr inbounds nuw i8, ptr %i.fww, i64 40
  %i.fxk = load i8, ptr %i.fxj, align 8
  %i.fxl = lshr i8 %i.fxk, 2
  %i.fxm = and i8 %i.fxl, 3                       ; 2 uses
  %.not9316.i = icmp eq i8 %i.fxm, 0
  %i.fxn = icmp eq i8 %i.fxm, 2
  %..i827 = select i1 %i.fxn, i32 -1067384704, i32 -520093697
  %i.fxo = select i1 %.not9316.i, i32 0, i32 %..i827
  %.57712.i = or i32 %i.fxo, %.47711.i            ; 2 uses
  %i.fxp = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.fwv ; 2 uses
  %i.fxq = load i32, ptr %i.fxp, align 8, !tbaa !117 ; 2 uses
  %.not9317.i = icmp eq i32 %i.fxq, %.57712.i
  br i1 %.not9317.i, label %_zend_update_type_info.exit.thread, label %.thread1423

.thread1419:                                      ; preds = %bb.aik
  %i.fxr = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.fwv ; 2 uses
  %i.fxs = load i32, ptr %i.fxr, align 8, !tbaa !117 ; 2 uses
  %.not9317.i1421 = icmp eq i32 %i.fxs, %.17708.i
  br i1 %.not9317.i1421, label %_zend_update_type_info.exit.thread, label %.thread1423

.thread1423:                                      ; preds = %bb.ail, %.thread1419
  %.57712.i14221425 = phi i32 [ %.17708.i, %.thread1419 ], [ %.57712.i, %bb.ail ] ; 2 uses
  %i.fxt = phi ptr [ %i.fxr, %.thread1419 ], [ %i.fxp, %bb.ail ]
  %i.fxu = phi i32 [ %i.fxs, %.thread1419 ], [ %i.fxq, %bb.ail ]
  %i.fxv = xor i32 %.57712.i14221425, -1
  %i.fxw = and i32 %i.fxu, %i.fxv
  %.not9320.i = icmp eq i32 %i.fxw, 0
  br i1 %.not9320.i, label %bb.aim, label %.critedge10785.i

.critedge10785.i:                                 ; preds = %.thread1423
  %.val615 = load ptr, ptr %i.h, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val615, i32 noundef %i.fvg)
  br label %_zend_update_type_info.exit

bb.aim:                                           ; preds = %.thread1423
  store i32 %.57712.i14221425, ptr %i.fxt, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.fvg)
  br label %_zend_update_type_info.exit.thread

bb.ain:                                           ; preds = %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread
  %i.fxx = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12 ; 4 uses
  %i.fxy = load i32, ptr %i.fxx, align 4, !tbaa !36 ; 4 uses
  %i.fxz = icmp sgt i32 %i.fxy, -1
  br i1 %i.fxz, label %bb.aio, label %.thread1444

bb.aio:                                           ; preds = %bb.ain
  %i.fya = and i32 %.0.i4043437, 1073741823       ; 4 uses
  switch i8 %i.zi, label %.thread1427 [
    i8 84, label %bb.aip
    i8 87, label %bb.aip
    i8 93, label %bb.aip
    i8 -101, label %bb.aip
    i8 96, label %bb.ajd
  ]

bb.aip:                                           ; preds = %bb.aio, %bb.aio, %bb.aio, %bb.aio
  %i.fyb = and i32 %.0.i4043437, 7
  %.not9221.i = icmp eq i32 %i.fyb, 0             ; 4 uses
  %.not9222.i = icmp eq i8 %i.zi, 93              ; 3 uses
  %i.fyc = and i32 %.0.i4043437, 1073741688
  %spec.select10788.i = select i1 %.not9222.i, i32 %i.fya, i32 %i.fyc
  %i.fyd = or i32 %spec.select10788.i, 1073741952
  %.918476.i = select i1 %.not9221.i, i32 %i.fya, i32 %i.fyd ; 2 uses
  %i.fye = and i32 %.0.i4043437, 192
  %.not9223.i = icmp eq i32 %i.fye, 0
  br i1 %.not9223.i, label %bb.ais, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  %i.fyf = or i32 %.918476.i, 1073741824          ; 2 uses
  br i1 %.not9222.i, label %bb.air, label %bb.ais

bb.air:                                           ; preds = %bb.aiq
  %i.fyg = and i32 %.0.i4043437, -2147483648
  %i.fyh = or disjoint i32 %i.fyf, %i.fyg
  br label %bb.ais

bb.ais:                                           ; preds = %bb.air, %bb.aiq, %bb.aip
  %.928477.i = phi i32 [ %i.fyh, %bb.air ], [ %i.fyf, %bb.aiq ], [ %.918476.i, %bb.aip ]
  %i.fyi = and i32 %.0.i4043437, 768
  %.not9224.i = icmp eq i32 %i.fyi, 0
  %i.fyj = and i32 %.0.i4043437, -1073741824
  %i.fyk = select i1 %.not9224.i, i32 0, i32 %i.fyj
  %.938478.i = or i32 %.928477.i, %i.fyk          ; 4 uses
  %i.fyl = icmp eq i8 %i.uu, 0
  br i1 %i.fyl, label %bb.ait, label %bb.aiv

bb.ait:                                           ; preds = %bb.ais
  %spec.select10789.i = select i1 %.not9221.i, i32 0, i32 2097152 ; 2 uses
  %i.fym = and i32 %.0.i4043437, 128
  %.not9235.i = icmp eq i32 %i.fym, 0
  br i1 %.not9235.i, label %bb.ajf, label %bb.aiu

bb.aiu:                                           ; preds = %bb.ait
  %i.fyn = and i32 %.0.i4043437, 12582912
  %.not9236.i = icmp eq i32 %i.fyn, 0
  %i.fyo = and i32 %.0.i4043437, 538968064
  %.not9237.i = icmp eq i32 %i.fyo, 0
  %i.fyp = select i1 %.not9237.i, i32 4194304, i32 6291456
  %i.fyq = or i32 %spec.select10789.i, %i.fyp
  %i.fyr = select i1 %.not9236.i, i32 6291456, i32 %i.fyq
  br label %bb.ajf

bb.aiv:                                           ; preds = %bb.ais
  %i.fys = and i32 %.0.i413, 572
  %.not9225.i = icmp eq i32 %i.fys, 0
  br i1 %.not9225.i, label %bb.aiy, label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  %spec.select10790.i = select i1 %.not9221.i, i32 0, i32 2097152 ; 2 uses
  %i.fyt = and i32 %.0.i4043437, 128
  %.not9226.i = icmp eq i32 %i.fyt, 0
  br i1 %.not9226.i, label %bb.aiy, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  %i.fyu = and i32 %.0.i4043437, 12582912
  %.not9227.i = icmp eq i32 %i.fyu, 0
  %i.fyv = and i32 %.0.i4043437, 538968064
  %.not9228.i = icmp eq i32 %i.fyv, 0
  %i.fyw = select i1 %.not9228.i, i32 4194304, i32 6291456
  %i.fyx = or i32 %spec.select10790.i, %i.fyw
  %i.fyy = select i1 %.not9227.i, i32 6291456, i32 %i.fyx
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.aiw, %bb.aiv
  %.27703.i = phi i32 [ %i.fyy, %bb.aix ], [ %spec.select10790.i, %bb.aiw ], [ 0, %bb.aiv ] ; 3 uses
  %i.fyz = and i32 %.0.i413, 64
  %.not9229.i = icmp eq i32 %i.fyz, 0
  br i1 %.not9229.i, label %bb.ajc, label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy
  %i.fza = or i32 %.27703.i, 8388608              ; 2 uses
  br i1 %i.ut, label %bb.ajc, label %bb.aja

bb.aja:                                           ; preds = %bb.aiz
  %i.fzb = or i32 %.27703.i, 10485760
  %spec.select10791.i = select i1 %.not9221.i, i32 %i.fza, i32 %i.fzb ; 2 uses
  %i.fzc = and i32 %.0.i4043437, 128
  %.not9231.i = icmp eq i32 %i.fzc, 0
  br i1 %.not9231.i, label %bb.ajc, label %bb.ajb

bb.ajb:                                           ; preds = %bb.aja
  %i.fzd = and i32 %.0.i4043437, 12582912
  %.not9232.i = icmp eq i32 %i.fzd, 0
  %i.fze = and i32 %.0.i4043437, 538968064
  %.not9233.i = icmp ne i32 %i.fze, 0
  %i.fzf = or i1 %.not9232.i, %.not9233.i
  %i.fzg = select i1 %i.fzf, i32 6291456, i32 4194304
  %i.fzh = or i32 %spec.select10791.i, %i.fzg
  br label %bb.ajc

bb.ajc:                                           ; preds = %bb.ajb, %bb.aja, %bb.aiz, %bb.aiy
  %.47705.i = phi i32 [ %i.fzh, %bb.ajb ], [ %spec.select10791.i, %bb.aja ], [ %i.fza, %bb.aiz ], [ %.27703.i, %bb.aiy ] ; 2 uses
  %i.fzi = and i32 %.0.i413, 3
  %.not9234.i = icmp eq i32 %i.fzi, 0
  %i.fzj = or i32 %.47705.i, 8388608
  %spec.select10792.i = select i1 %.not9234.i, i32 %.47705.i, i32 %i.fzj
  br label %bb.ajf

bb.ajd:                                           ; preds = %bb.aio
  %i.fzk = shl i32 %.0.i4043437, 23
  %i.fzl = and i32 %i.fzk, 1073741824
  %spec.select10793.i = or disjoint i32 %i.fzl, %i.fya ; 2 uses
  %i.fzm = and i32 %.0.i4043437, 768
  %.not9220.i = icmp eq i32 %i.fzm, 0
  br i1 %.not9220.i, label %.thread1427, label %bb.aje

bb.aje:                                           ; preds = %bb.ajd
  %i.fzn = and i32 %.0.i4043437, -1073741824
  %i.fzo = or i32 %spec.select10793.i, %i.fzn
  br label %.thread1427

bb.ajf:                                           ; preds = %bb.ajc, %bb.aiu, %bb.ait
  %.57706.i = phi i32 [ %i.fyr, %bb.aiu ], [ %spec.select10789.i, %bb.ait ], [ %spec.select10792.i, %bb.ajc ] ; 8 uses
  %i.fzp = and i32 %.57706.i, 14680064
  %.not9238.i = icmp eq i32 %i.fzp, 0
  br i1 %.not9238.i, label %.thread1427, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf
  switch i8 %i.zi, label %.thread1427 [
    i8 87, label %bb.ajh
    i8 84, label %bb.ajh
    i8 93, label %bb.ajh
    i8 -101, label %bb.ajh
  ]

bb.ajh:                                           ; preds = %bb.ajg, %bb.ajg, %bb.ajg, %bb.ajg
  %i.fzq = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.fzr = load i32, ptr %i.fzq, align 4, !tbaa !38 ; 3 uses
  %i.fzs = sext i32 %i.fzr to i64
  %i.fzt = getelementptr inbounds [48 x i8], ptr %i.lf, i64 %i.fzs
  %i.fzu = getelementptr inbounds nuw i8, ptr %i.fzt, i64 12
  %i.fzv = load i32, ptr %i.fzu, align 4, !tbaa !140 ; 2 uses
  %i.fzw = icmp slt i32 %i.fzv, 0
  %i.fzx = or i32 %.938478.i, %.57706.i
  %5 = or i32 %i.fzx, 2176
  %.968481.i = select i1 %i.fzw, i32 %5, i32 %.938478.i
  %.idx = shl nuw nsw i64 %i.lb, 5
  %i.fzy = add nsw i64 %.idx, %.08506.i.idx
  %i.fzz = ashr exact i64 %i.fzy, 5
  %i.gaa = add nsw i64 %i.fzz, 1
  %invariant.op.a = or i32 %.57706.i, 32768
  %invariant.op3917 = or i32 %.57706.i, 49152
  %invariant.op3919 = or i32 %.57706.i, 2095104
  %invariant.op3921 = or i32 %.57706.i, 131200
  br label %bb.aji

bb.aji:                                           ; preds = %zend_ssa_next_use.exit.i, %bb.ajh
  %.978482.i = phi i32 [ %.968481.i, %bb.ajh ], [ %.988483.i, %zend_ssa_next_use.exit.i ] ; 22 uses
  %.08382.i = phi i32 [ %i.fzv, %bb.ajh ], [ %.0.i.i, %zend_ssa_next_use.exit.i ] ; 2 uses
  %i.gab = icmp sgt i32 %.08382.i, -1
  br i1 %i.gab, label %bb.ajj, label %.thread1432

bb.ajj:                                           ; preds = %bb.aji
  %i.gac = zext nneg i32 %.08382.i to i64         ; 3 uses
  %.not9240.i = icmp eq i64 %i.gaa, %i.gac
  br i1 %.not9240.i, label %bb.ajl, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj
  %i.gad = or i32 %.57706.i, %.978482.i
  %i.gae = or i32 %i.gad, 2095104
  br label %.thread1432

bb.ajl:                                           ; preds = %bb.ajj
  %i.gaf = getelementptr inbounds nuw [32 x i8], ptr %i.la, i64 %i.gac
  %.07700.in.i = getelementptr inbounds nuw i8, ptr %i.gaf, i64 28
  %.07700.i = load i8, ptr %.07700.in.i, align 4, !tbaa !55
  switch i8 %.07700.i, label %bb.ajr [
    i8 84, label %bb.ajm
    i8 87, label %bb.ajm
    i8 93, label %bb.ajm
    i8 -101, label %bb.ajm
    i8 23, label %bb.ajm
    i8 27, label %bb.ajm
    i8 66, label %bb.ajn
    i8 -71, label %bb.ajn
    i8 106, label %bb.ajn
    i8 50, label %bb.ajn
    i8 67, label %bb.ajn
    i8 30, label %bb.ajn
    i8 -96, label %bb.ajn
    i8 71, label %bb.ajn
    i8 72, label %bb.ajn
    i8 111, label %bb.ajn
    i8 124, label %bb.ajn
    i8 -116, label %bb.ajn
    i8 125, label %bb.ajn
    i8 34, label %bb.ajo
    i8 35, label %bb.ajo
    i8 36, label %bb.ajo
    i8 37, label %bb.ajo
    i8 85, label %bb.ajs
    i8 88, label %bb.ajs
    i8 94, label %bb.ajs
    i8 24, label %bb.ajs
    i8 28, label %bb.ajs
    i8 32, label %bb.ajs
    i8 -124, label %bb.ajs
    i8 -123, label %bb.ajs
    i8 -122, label %bb.ajs
    i8 -121, label %bb.ajs
    i8 117, label %bb.ajs
    i8 81, label %bb.ajs
    i8 70, label %bb.ajs
  ]

bb.ajm:                                           ; preds = %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl
  %.reass3922 = or i32 %.978482.i, %invariant.op3921
  br label %bb.ajs

bb.ajn:                                           ; preds = %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl
  %.reass3920 = or i32 %.978482.i, %invariant.op3919
  br label %bb.ajs

bb.ajo:                                           ; preds = %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl
  %i.gag = and i32 %.978482.i, 16384
  %.not9242.i = icmp eq i32 %i.gag, 0
  br i1 %.not9242.i, label %bb.ajq, label %bb.ajp

bb.ajp:                                           ; preds = %bb.ajo
  %.reass = or i32 %.978482.i, %invariant.op.a
  br label %bb.ajs

bb.ajq:                                           ; preds = %bb.ajo
  %i.gah = and i32 %.978482.i, 32768
  %.not9243.i = icmp eq i32 %i.gah, 0
  %.reass3918.reass = or i32 %.978482.i, %invariant.op3917
  %spec.select2247 = select i1 %.not9243.i, i32 %.reass3918.reass, i32 %.978482.i
  br label %bb.ajs

bb.ajr:                                           ; preds = %bb.ajl
  unreachable

bb.ajs:                                           ; preds = %bb.ajq, %bb.ajp, %bb.ajn, %bb.ajm, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl, %bb.ajl
  %.988483.i = phi i32 [ %.reass3922, %bb.ajm ], [ %.reass3920, %bb.ajn ], [ %.reass, %bb.ajp ], [ %spec.select2247, %bb.ajq ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ], [ %.978482.i, %bb.ajl ] ; 2 uses
  %i.gai = getelementptr inbounds nuw [36 x i8], ptr %i.ld, i64 %i.gac ; 3 uses
  %i.gaj = load i32, ptr %i.gai, align 4, !tbaa !57
  %i.gak = icmp eq i32 %i.gaj, %i.fzr
  br i1 %i.gak, label %zend_ssa_next_use.exit.i, label %bb.ajt

bb.ajt:                                           ; preds = %bb.ajs
  %i.gal = getelementptr inbounds nuw i8, ptr %i.gai, i64 4
  %i.gam = load i32, ptr %i.gal, align 4, !tbaa !58
  %i.gan = icmp eq i32 %i.gam, %i.fzr
  %. = select i1 %i.gan, i64 28, i64 32
  br label %zend_ssa_next_use.exit.i

zend_ssa_next_use.exit.i:                         ; preds = %bb.ajt, %bb.ajs
  %.sink3976 = phi i64 [ 24, %bb.ajs ], [ %., %bb.ajt ]
  %i.gao = getelementptr inbounds nuw i8, ptr %i.gai, i64 %.sink3976
  %.0.i.i = load i32, ptr %i.gao, align 4, !tbaa !32 ; 2 uses
  %i.gap = icmp sgt i32 %.0.i.i, -1
  br i1 %i.gap, label %bb.aju, label %bb.aji

bb.aju:                                           ; preds = %zend_ssa_next_use.exit.i
  %i.gaq = or i32 %.57706.i, %.988483.i
  %i.gar = or i32 %i.gaq, 2095104
  br label %.thread1432

.thread1432:                                      ; preds = %bb.aji, %bb.ajk, %bb.aju
  %.1008485.i = phi i32 [ %i.gar, %bb.aju ], [ %i.gae, %bb.ajk ], [ %.978482.i, %bb.aji ] ; 2 uses
  %i.gas = and i32 %.1008485.i, -536870913
  %spec.select10794.i = select i1 %.not9222.i, i32 %.1008485.i, i32 %i.gas
  br label %.thread1427

.thread1427:                                      ; preds = %bb.ajd, %bb.aje, %bb.aio, %.thread1432, %bb.ajg, %bb.ajf
  %.1018486.i = phi i32 [ %.938478.i, %bb.ajf ], [ %spec.select10794.i, %.thread1432 ], [ %.938478.i, %bb.ajg ], [ %spec.select10793.i, %bb.ajd ], [ %i.fzo, %bb.aje ], [ %i.fya, %bb.aio ] ; 3 uses
  %i.gat = and i32 %.1018486.i, 551551104
  %or.cond10795.i = icmp eq i32 %i.gat, 128
  br i1 %or.cond10795.i, label %bb.ajv, label %bb.ajw

bb.ajv:                                           ; preds = %.thread1427
  switch i8 %i.zi, label %_zend_update_type_info.exit.thread [
    i8 93, label %bb.ajw
    i8 81, label %bb.ajw
    i8 90, label %bb.ajw
    i8 96, label %bb.ajw
    i8 98, label %bb.ajw
  ]

bb.ajw:                                           ; preds = %.thread1427, %bb.ajv, %bb.ajv, %bb.ajv, %bb.ajv, %bb.ajv
  %i.gau = and i32 %.1018486.i, -268435457        ; 2 uses
  %i.gav = and i32 %.1018486.i, 1024
  %.not9247.i = icmp eq i32 %i.gav, 0
  %i.gaw = or i32 %i.gau, -520094722
  %spec.select10796.i = select i1 %.not9247.i, i32 %i.gau, i32 %i.gaw ; 3 uses
  %i.gax = zext nneg i32 %i.fxy to i64            ; 3 uses
  %i.gay = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.gax ; 2 uses
  %i.gaz = load i32, ptr %i.gay, align 8, !tbaa !119 ; 2 uses
  %i.gba = load i32, ptr %i.r, align 8, !tbaa !96
  %i.gbb = icmp uge i32 %i.gaz, %i.gba
  %i.gbc = and i32 %spec.select10796.i, 1073741824
  %.not9248.i = icmp eq i32 %i.gbc, 0
  %or.cond10797.i = or i1 %.not9248.i, %i.gbb
  %i.gbd = or i32 %spec.select10796.i, -2147483648
  %.17695.i = select i1 %or.cond10797.i, i32 %spec.select10796.i, i32 %i.gbd ; 5 uses
  %i.gbe = load i32, ptr %i.s, align 4, !tbaa !120
  %i.gbf = icmp slt i32 %i.gaz, %i.gbe
  br i1 %i.gbf, label %bb.ajx, label %.thread1436

bb.ajx:                                           ; preds = %bb.ajw
  %i.gbg = and i32 %.17695.i, -2147482624
  %.not9249.i = icmp eq i32 %i.gbg, 0
  %i.gbh = or i32 %.17695.i, -1073741824
  %spec.select10798.i = select i1 %.not9249.i, i32 %.17695.i, i32 %i.gbh ; 3 uses
  %i.gbi = and i32 %spec.select10798.i, 1073741888
  %or.cond10799.i.not = icmp eq i32 %i.gbi, 1073741888
  %i.gbj = or i32 %spec.select10798.i, -2147483648 ; 2 uses
  %.37697.i = select i1 %or.cond10799.i.not, i32 %i.gbj, i32 %spec.select10798.i ; 2 uses
  %i.gbk = and i32 %.37697.i, 1073742080
  %or.cond10800.i.not = icmp eq i32 %i.gbk, 1073742080
  %.47698.i = select i1 %or.cond10800.i.not, i32 %i.gbj, i32 %.37697.i
  %i.gbl = getelementptr inbounds nuw i8, ptr %i.gay, i64 40
  %i.gbm = load i8, ptr %i.gbl, align 8
  %i.gbn = lshr i8 %i.gbm, 2
  %i.gbo = and i8 %i.gbn, 3                       ; 2 uses
  %.not9254.i = icmp eq i8 %i.gbo, 0
  %i.gbp = icmp eq i8 %i.gbo, 2
  %..i828 = select i1 %i.gbp, i32 -1067384704, i32 -520093697
  %i.gbq = select i1 %.not9254.i, i32 0, i32 %..i828
  %.57699.i = or i32 %i.gbq, %.47698.i            ; 2 uses
  %i.gbr = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gax ; 2 uses
  %i.gbs = load i32, ptr %i.gbr, align 8, !tbaa !117 ; 2 uses
  %.not9255.i = icmp eq i32 %i.gbs, %.57699.i
  br i1 %.not9255.i, label %bb.ajz, label %.thread1440

.thread1436:                                      ; preds = %bb.ajw
  %i.gbt = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gax ; 2 uses
  %i.gbu = load i32, ptr %i.gbt, align 8, !tbaa !117 ; 2 uses
  %.not9255.i1438 = icmp eq i32 %i.gbu, %.17695.i
  br i1 %.not9255.i1438, label %bb.ajz, label %.thread1440

.thread1440:                                      ; preds = %bb.ajx, %.thread1436
  %.57699.i14391442 = phi i32 [ %.17695.i, %.thread1436 ], [ %.57699.i, %bb.ajx ] ; 2 uses
  %i.gbv = phi ptr [ %i.gbt, %.thread1436 ], [ %i.gbr, %bb.ajx ]
  %i.gbw = phi i32 [ %i.gbu, %.thread1436 ], [ %i.gbs, %bb.ajx ]
  %i.gbx = xor i32 %.57699.i14391442, -1
  %i.gby = and i32 %i.gbw, %i.gbx
  %.not9258.i = icmp eq i32 %i.gby, 0
  br i1 %.not9258.i, label %bb.ajy, label %.critedge10802.i

.critedge10802.i:                                 ; preds = %.thread1440
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.lf, i32 noundef %i.fxy)
  br label %_zend_update_type_info.exit

bb.ajy:                                           ; preds = %.thread1440
  store i32 %.57699.i14391442, ptr %i.gbv, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.fxy)
  br label %bb.ajz

bb.ajz:                                           ; preds = %.thread1436, %bb.ajy, %bb.ajx
  %i.gbz = load i32, ptr %.08507.i, align 4, !tbaa !57 ; 2 uses
  %i.gca = icmp sgt i32 %i.gbz, -1
  br i1 %i.gca, label %bb.aka, label %bb.akg

bb.aka:                                           ; preds = %bb.ajz
  %i.gcb = zext nneg i32 %i.gbz to i64
  %i.gcc = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gcb ; 3 uses
  %i.gcd = load i32, ptr %i.gcc, align 8, !tbaa !117
  %i.gce = and i32 %i.gcd, 256
  %.not9259.i = icmp eq i32 %i.gce, 0
  br i1 %.not9259.i, label %bb.akg, label %bb.akb

bb.akb:                                           ; preds = %bb.aka
  %i.gcf = getelementptr inbounds nuw i8, ptr %i.gcc, i64 32
  %i.gcg = load ptr, ptr %i.gcf, align 8, !tbaa !124 ; 4 uses
  %.not9260.i = icmp eq ptr %i.gcg, null
  br i1 %.not9260.i, label %bb.akg, label %bb.akc

bb.akc:                                           ; preds = %bb.akb
  %i.gch = load i32, ptr %i.fxx, align 4, !tbaa !36 ; 2 uses
  %i.gci = sext i32 %i.gch to i64
  %i.gcj = getelementptr inbounds [40 x i8], ptr %i.lg, i64 %i.gci ; 4 uses
  %i.gck = load i32, ptr %i.gcj, align 8, !tbaa !117
  %i.gcl = and i32 %i.gck, 1024
  %.not9261.i = icmp eq i32 %i.gcl, 0
  br i1 %.not9261.i, label %bb.akd, label %bb.akg

bb.akd:                                           ; preds = %bb.akc
  %i.gcm = icmp sgt i32 %i.gch, -1
  br i1 %i.gcm, label %bb.ake, label %.thread1444

bb.ake:                                           ; preds = %bb.akd
  %i.gcn = getelementptr inbounds nuw i8, ptr %i.gcc, i64 4
  %i.gco = load i8, ptr %i.gcn, align 4
  %i.gcp = lshr i8 %i.gco, 1
  %.lobit9262.i = and i8 %i.gcp, 1
  %i.gcq = getelementptr inbounds nuw i8, ptr %i.gcg, i64 28
  %i.gcr = load i32, ptr %i.gcq, align 4, !tbaa !135
  %i.gcs = and i32 %i.gcr, 32
  %.not9263.i = icmp eq i32 %i.gcs, 0
  %spec.select10805.i = select i1 %.not9263.i, i8 %.lobit9262.i, i8 0 ; 2 uses
  %i.gct = getelementptr inbounds nuw i8, ptr %i.gcj, i64 32 ; 2 uses
  %i.gcu = load ptr, ptr %i.gct, align 8, !tbaa !124
  %.not9264.i = icmp eq ptr %i.gcu, %i.gcg
  %i.gcv = getelementptr inbounds nuw i8, ptr %i.gcj, i64 4
  %i.gcw = load i8, ptr %i.gcv, align 4           ; 2 uses
  br i1 %.not9264.i, label %bb.akf, label %._crit_edge2762

bb.akf:                                           ; preds = %bb.ake
  %i.gcx = lshr i8 %i.gcw, 1
  %.lobit9265.i = and i8 %i.gcx, 1
  %.not9266.i = icmp eq i8 %.lobit9265.i, %spec.select10805.i
  br i1 %.not9266.i, label %.thread1444, label %._crit_edge2762

._crit_edge2762:                                  ; preds = %bb.ake, %bb.akf
  store ptr %i.gcg, ptr %i.gct, align 8, !tbaa !124
  %i.gcy = getelementptr inbounds nuw i8, ptr %i.gcj, i64 4
  %i.gcz = shl nuw nsw i8 %spec.select10805.i, 1
  %i.gda = and i8 %i.gcw, -3
  %i.gdb = or disjoint i8 %i.gda, %i.gcz
  store i8 %i.gdb, ptr %i.gcy, align 4
  br label %.thread1444.sink.split

bb.akg:                                           ; preds = %bb.akc, %bb.akb, %bb.aka, %bb.ajz
  %i.gdc = load i32, ptr %i.fxx, align 4, !tbaa !36 ; 2 uses
  %i.gdd = icmp sgt i32 %i.gdc, -1
  br i1 %i.gdd, label %bb.akh, label %.thread1444

bb.akh:                                           ; preds = %bb.akg
  %i.gde = zext nneg i32 %i.gdc to i64
  %i.gdf = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gde ; 3 uses
  %i.gdg = getelementptr inbounds nuw i8, ptr %i.gdf, i64 32 ; 2 uses
  %i.gdh = load ptr, ptr %i.gdg, align 8, !tbaa !124
  %.not9267.i = icmp eq ptr %i.gdh, null
  %i.gdi = getelementptr inbounds nuw i8, ptr %i.gdf, i64 4
  %i.gdj = load i8, ptr %i.gdi, align 4           ; 2 uses
  %i.gdk = and i8 %i.gdj, 2
end_hunk_2
