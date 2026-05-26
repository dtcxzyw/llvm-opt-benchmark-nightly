inline.NumInlined: 56
inline.NumDeleted: 13
begin_hunk_0_@duckdb_je_edata_avail_remove:bb.a
  %.not91.i.i30 = icmp eq ptr %i.gu, null
  br i1 %.not91.i.i30, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  store ptr null, ptr %i.gv, align 8, !tbaa !14
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i8 0, i64 16, i1 false)
  %i.gw = getelementptr i8, ptr %.077.i.i2792, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i8 0, i64 16, i1 false)
  %.val.i.i73 = load i64, ptr %i.gw, align 8, !tbaa !15
  %i.gx = getelementptr i8, ptr %i.gr, i64 16
  %.val4.i.i74 = load i64, ptr %i.gx, align 8, !tbaa !15
  %i.gy = and i64 %.val.i.i73, 4095
  %i.gz = and i64 %.val4.i.i74, 4095
  %i.ha = tail call range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.gy, i64 %i.gz)
  %i.hb = shl nsw i32 %i.ha, 1
  %i.hc = icmp ult ptr %.077.i.i2792, %i.gr
  %i.hd = sext i1 %i.hc to i32
  %i.he = add nsw i32 %i.hb, %i.hd
  %i.hf = icmp slt i32 %i.he, 0
  br i1 %i.hf, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  store ptr %.077.i.i2792, ptr %i.gs, align 8, !tbaa !14
  %i.hg = getelementptr inbounds nuw i8, ptr %.077.i.i2792, i64 56 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !16 ; 3 uses
  store ptr %i.hh, ptr %i.gt, align 8, !tbaa !12
  %.not.i19.i11.i37 = icmp eq ptr %i.hh, null
  br i1 %.not.i19.i11.i37, label %phn_merge_ordered.exit20.i12.i38, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  store ptr %i.gr, ptr %i.hi, align 8, !tbaa !14
  br label %phn_merge_ordered.exit20.i12.i38

phn_merge_ordered.exit20.i12.i38:                 ; preds = %bb.bg, %bb.bf
  store ptr %i.gr, ptr %i.hg, align 8, !tbaa !16
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !14
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gr, i64 56 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !16 ; 3 uses
  store ptr %i.hk, ptr %i.gq, align 8, !tbaa !12
  %.not.i.i8.i31 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i8.i31, label %phn_merge_ordered.exit.i9.i32, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  store ptr %.077.i.i2792, ptr %i.hl, align 8, !tbaa !14
  br label %phn_merge_ordered.exit.i9.i32

phn_merge_ordered.exit.i9.i32:                    ; preds = %bb.bi, %bb.bh
  store ptr %.077.i.i2792, ptr %i.hj, align 8, !tbaa !16
  br label %bb.bj

.thread160:                                       ; preds = %.lr.ph
  %i.hm = getelementptr inbounds nuw i8, ptr %.078.i.i2691, i64 48
  store ptr %.077.i.i2792, ptr %i.hm, align 8, !tbaa !12
  br label %._crit_edge

bb.bj:                                            ; preds = %phn_merge_ordered.exit20.i12.i38, %phn_merge_ordered.exit.i9.i32
  %.0.i10.i34 = phi ptr [ %i.gr, %phn_merge_ordered.exit.i9.i32 ], [ %.077.i.i2792, %phn_merge_ordered.exit20.i12.i38 ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.078.i.i2691, i64 48
  store ptr %.0.i10.i34, ptr %i.hn, align 8, !tbaa !12
  %.not88.i.i28 = icmp eq ptr %i.gu, null
  br i1 %.not88.i.i28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bj, %.thread160, %phn_merge.exit19.i24
  %.078.i.i26.lcssa = phi ptr [ %.0.i16.i25, %phn_merge.exit19.i24 ], [ %.077.i.i2792, %.thread160 ], [ %.0.i10.i34, %bb.bj ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i16.i25, i64 48
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !12 ; 2 uses
  %.not89.i.i39 = icmp eq ptr %i.hp, null
  br i1 %.not89.i.i39, label %.loopexit, label %.preheader89

.preheader89:                                     ; preds = %._crit_edge, %bb.bo
  %.280.i.i40 = phi ptr [ %.0.i7.i46, %bb.bo ], [ %.078.i.i26.lcssa, %._crit_edge ]
  %.2.i.i41 = phi ptr [ %i.hr, %bb.bo ], [ %.0.i16.i25, %._crit_edge ] ; 9 uses
  %.0.i.i42 = phi ptr [ %i.io, %bb.bo ], [ %i.hp, %._crit_edge ] ; 9 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 48 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !12 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.2.i.i41, i64 48 ; 2 uses
  store ptr null, ptr %i.hs, align 8, !tbaa !12
  store ptr null, ptr %i.hq, align 8, !tbaa !12
  %i.ht = getelementptr i8, ptr %.2.i.i41, i64 16
  %.val.i.i76 = load i64, ptr %i.ht, align 8, !tbaa !15
  %i.hu = getelementptr i8, ptr %.0.i.i42, i64 16
  %.val4.i.i77 = load i64, ptr %i.hu, align 8, !tbaa !15
  %i.hv = and i64 %.val.i.i76, 4095
  %i.hw = and i64 %.val4.i.i77, 4095
  %i.hx = tail call range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.hv, i64 %i.hw)
  %i.hy = shl nsw i32 %i.hx, 1
  %i.hz = icmp ult ptr %.2.i.i41, %.0.i.i42
  %i.ia = sext i1 %i.hz to i32
  %i.ib = add nsw i32 %i.hy, %i.ia
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.preheader89
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 40
  store ptr %.2.i.i41, ptr %i.id, align 8, !tbaa !14
  %i.ie = getelementptr inbounds nuw i8, ptr %.2.i.i41, i64 56 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !16 ; 3 uses
  store ptr %i.if, ptr %i.hq, align 8, !tbaa !12
  %.not.i19.i.i50 = icmp eq ptr %i.if, null
  br i1 %.not.i19.i.i50, label %phn_merge_ordered.exit20.i.i51, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  store ptr %.0.i.i42, ptr %i.ig, align 8, !tbaa !14
  br label %phn_merge_ordered.exit20.i.i51

phn_merge_ordered.exit20.i.i51:                   ; preds = %bb.bl, %bb.bk
  store ptr %.0.i.i42, ptr %i.ie, align 8, !tbaa !16
  br label %phn_merge.exit.i45

bb.bm:                                            ; preds = %.preheader89
  %i.ih = getelementptr inbounds nuw i8, ptr %.2.i.i41, i64 40
  store ptr %.0.i.i42, ptr %i.ih, align 8, !tbaa !14
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 56 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !16 ; 3 uses
  store ptr %i.ij, ptr %i.hs, align 8, !tbaa !12
  %.not.i.i.i43 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i43, label %phn_merge_ordered.exit.i.i44, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  store ptr %.2.i.i41, ptr %i.ik, align 8, !tbaa !14
  br label %phn_merge_ordered.exit.i.i44

phn_merge_ordered.exit.i.i44:                     ; preds = %bb.bn, %bb.bm
  store ptr %.2.i.i41, ptr %i.ii, align 8, !tbaa !16
  br label %phn_merge.exit.i45

phn_merge.exit.i45:                               ; preds = %phn_merge_ordered.exit.i.i44, %phn_merge_ordered.exit20.i.i51
  %.0.i7.i46 = phi ptr [ %.0.i.i42, %phn_merge_ordered.exit.i.i44 ], [ %.2.i.i41, %phn_merge_ordered.exit20.i.i51 ] ; 3 uses
  %i.il = icmp eq ptr %i.hr, null
  br i1 %i.il, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %phn_merge.exit.i45
  %i.im = getelementptr inbounds nuw i8, ptr %.280.i.i40, i64 48
  store ptr %.0.i7.i46, ptr %i.im, align 8, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !12
  br label %.preheader89

.loopexit:                                        ; preds = %phn_merge.exit.i45, %bb.au, %._crit_edge
  %.0.i49.ph = phi ptr [ %.0.i16.i25, %._crit_edge ], [ %i.fp, %bb.au ], [ %.0.i7.i46, %phn_merge.exit.i45 ] ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.i49.ph, i64 48
  store ptr %i.fn, ptr %i.ip, align 8, !tbaa !12
  %.not40.i = icmp eq ptr %i.fn, null
  br i1 %.not40.i, label %ph_merge_children.exit54.thread83, label %bb.bp

bb.bp:                                            ; preds = %.loopexit
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  store ptr %.0.i49.ph, ptr %i.iq, align 8, !tbaa !14
  br label %ph_merge_children.exit54.thread83

ph_merge_children.exit54:                         ; preds = %bb.at
  %.not41.i = icmp eq ptr %i.fn, null
  br i1 %.not41.i, label %bb.bq, label %ph_merge_children.exit54.thread83

ph_merge_children.exit54.thread83:                ; preds = %bb.bp, %.loopexit, %ph_merge_children.exit54
  %.0.i86 = phi ptr [ %i.fn, %ph_merge_children.exit54 ], [ %.0.i49.ph, %.loopexit ], [ %.0.i49.ph, %bb.bp ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i86, i64 40
  store ptr %i.fl, ptr %i.ir, align 8, !tbaa !14
  br label %bb.bq

bb.bq:                                            ; preds = %ph_merge_children.exit54.thread83, %ph_merge_children.exit54
  %.0.i87 = phi ptr [ %.0.i86, %ph_merge_children.exit54.thread83 ], [ null, %ph_merge_children.exit54 ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.fl, i64 56 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !16
  %i.iu = icmp eq ptr %i.it, %1
  br i1 %i.iu, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store ptr %.0.i87, ptr %i.is, align 8, !tbaa !16
  br label %ph_remove.exit

bb.bs:                                            ; preds = %bb.bq
  %i.iv = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  store ptr %.0.i87, ptr %i.iv, align 8, !tbaa !12
  br label %ph_remove.exit

ph_remove.exit:                                   ; preds = %ph_merge_children.exit, %bb.br, %bb.bs
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @duckdb_je_edata_avail_remove_any(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %duckdb_je_edata_avail_any.exit, label %select.unfold

select.unfold:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %.fr = freeze ptr %i.d                          ; 2 uses
  %.not.i.i = icmp eq ptr %.fr, null
  %spec.select = select i1 %.not.i.i, ptr %i.a, ptr %.fr ; 2 uses
  tail call void @duckdb_je_edata_avail_remove(ptr noundef nonnull %0, ptr noundef nonnull %spec.select)
  br label %duckdb_je_edata_avail_any.exit

duckdb_je_edata_avail_any.exit:                   ; preds = %bb.a, %select.unfold
  %.1.i.i8 = phi ptr [ null, %bb.a ], [ %spec.select, %select.unfold ]
  ret ptr %.1.i.i8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_je_edata_heap_new(ptr noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @duckdb_je_edata_heap_empty(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = icmp eq ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @duckdb_je_edata_heap_first(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ph_first.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 11 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %ph_first.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 10 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %phn_merge_siblings.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 3 uses
  %.not.i1 = icmp eq ptr %i.m, null               ; 2 uses
  br i1 %.not.i1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %i.n, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.o = getelementptr i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %.val = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr i8, ptr %i.e, i64 32
  %.val17 = load i64, ptr %i.p, align 8, !tbaa !22
  %i.q = getelementptr i8, ptr %i.i, i64 8
  %.val18 = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.r = getelementptr i8, ptr %i.i, i64 32
  %.val19 = load i64, ptr %i.r, align 8, !tbaa !22
  %i.s = ptrtoint ptr %.val to i64
  %i.t = ptrtoint ptr %.val18 to i64
  %i.u = tail call i32 @llvm.ucmp.i32.i64(i64 %.val17, i64 %.val19)
  %i.v = shl nsw i32 %i.u, 1
  %i.w = tail call i32 @llvm.ucmp.i32.i64(i64 %i.s, i64 %i.t)
  %i.x = add nsw i32 %i.v, %i.w
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.e, ptr %i.k, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  store ptr %i.aa, ptr %i.l, align 8, !tbaa !12
  %.not.i19.i14 = icmp eq ptr %i.aa, null
  br i1 %.not.i19.i14, label %phn_merge_ordered.exit20.i15, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !14
  br label %phn_merge_ordered.exit20.i15

phn_merge_ordered.exit20.i15:                     ; preds = %bb.h, %bb.g
  store ptr %i.i, ptr %i.z, align 8, !tbaa !16
  br label %phn_merge.exit16

bb.i:                                             ; preds = %bb.f
  store ptr %i.i, ptr %i.g, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16 ; 3 uses
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !12
  %.not.i.i11 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i11, label %phn_merge_ordered.exit.i12, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !14
  br label %phn_merge_ordered.exit.i12

phn_merge_ordered.exit.i12:                       ; preds = %bb.j, %bb.i
  store ptr %i.e, ptr %i.ac, align 8, !tbaa !16
  br label %phn_merge.exit16

phn_merge.exit16:                                 ; preds = %phn_merge_ordered.exit20.i15, %phn_merge_ordered.exit.i12
  %.0.i13 = phi ptr [ %i.i, %phn_merge_ordered.exit.i12 ], [ %i.e, %phn_merge_ordered.exit20.i15 ] ; 5 uses
  br i1 %.not.i1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %phn_merge.exit16, %bb.r
  %.077.i27 = phi ptr [ %i.ak, %bb.r ], [ %i.m, %phn_merge.exit16 ] ; 11 uses
  %.078.i26 = phi ptr [ %.0.i7, %bb.r ], [ %.0.i13, %phn_merge.exit16 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.077.i27, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.077.i27, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12 ; 10 uses
  %.not90.i = icmp eq ptr %i.ah, null
  br i1 %.not90.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 4 uses
  %.not91.i = icmp eq ptr %i.ak, null
  br i1 %.not91.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr null, ptr %i.al, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.am = getelementptr i8, ptr %.077.i27, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %.077.i.val = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.an = getelementptr i8, ptr %.077.i27, i64 32
  %.077.i.val20 = load i64, ptr %i.an, align 8, !tbaa !22
  %i.ao = getelementptr i8, ptr %i.ah, i64 8
  %.val21 = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.ap = getelementptr i8, ptr %i.ah, i64 32
  %.val22 = load i64, ptr %i.ap, align 8, !tbaa !22
  %i.aq = ptrtoint ptr %.077.i.val to i64
  %i.ar = ptrtoint ptr %.val21 to i64
  %i.as = tail call i32 @llvm.ucmp.i32.i64(i64 %.077.i.val20, i64 %.val22)
  %i.at = shl nsw i32 %i.as, 1
  %i.au = tail call i32 @llvm.ucmp.i32.i64(i64 %i.aq, i64 %i.ar)
  %i.av = add nsw i32 %i.at, %i.au
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr %.077.i27, ptr %i.ai, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %.077.i27, i64 56 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 3 uses
  store ptr %i.ay, ptr %i.aj, align 8, !tbaa !12
  %.not.i19.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i19.i8, label %phn_merge_ordered.exit20.i9, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %i.ah, ptr %i.az, align 8, !tbaa !14
  br label %phn_merge_ordered.exit20.i9

phn_merge_ordered.exit20.i9:                      ; preds = %bb.o, %bb.n
  store ptr %i.ah, ptr %i.ax, align 8, !tbaa !16
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !16 ; 3 uses
  store ptr %i.bb, ptr %i.ag, align 8, !tbaa !12
  %.not.i.i5 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i5, label %phn_merge_ordered.exit.i6, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %.077.i27, ptr %i.bc, align 8, !tbaa !14
  br label %phn_merge_ordered.exit.i6

phn_merge_ordered.exit.i6:                        ; preds = %bb.q, %bb.p
  store ptr %.077.i27, ptr %i.ba, align 8, !tbaa !16
  br label %bb.r

.thread:                                          ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.078.i26, i64 48
  store ptr %.077.i27, ptr %i.bd, align 8, !tbaa !12
  br label %._crit_edge

bb.r:                                             ; preds = %phn_merge_ordered.exit.i6, %phn_merge_ordered.exit20.i9
  %.0.i7 = phi ptr [ %i.ah, %phn_merge_ordered.exit.i6 ], [ %.077.i27, %phn_merge_ordered.exit20.i9 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.078.i26, i64 48
  store ptr %.0.i7, ptr %i.be, align 8, !tbaa !12
  %.not88.i = icmp eq ptr %i.ak, null
  br i1 %.not88.i, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@duckdb_je_edata_heap_remove:bb.a
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i8 0, i64 16, i1 false)
  %i.hd = getelementptr i8, ptr %.077.i.i2794, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false)
  %.077.i.i27.val = load ptr, ptr %i.hd, align 8, !tbaa !19
  %i.he = getelementptr i8, ptr %.077.i.i2794, i64 32
  %.077.i.i27.val57 = load i64, ptr %i.he, align 8, !tbaa !22
  %i.hf = getelementptr i8, ptr %i.gy, i64 8
  %.val = load ptr, ptr %i.hf, align 8, !tbaa !19
  %i.hg = getelementptr i8, ptr %i.gy, i64 32
  %.val58 = load i64, ptr %i.hg, align 8, !tbaa !22
  %i.hh = ptrtoint ptr %.077.i.i27.val to i64
  %i.hi = ptrtoint ptr %.val to i64
  %i.hj = tail call i32 @llvm.ucmp.i32.i64(i64 %.077.i.i27.val57, i64 %.val58)
  %i.hk = shl nsw i32 %i.hj, 1
  %i.hl = tail call i32 @llvm.ucmp.i32.i64(i64 %i.hh, i64 %i.hi)
  %i.hm = add nsw i32 %i.hk, %i.hl
  %i.hn = icmp slt i32 %i.hm, 0
  br i1 %i.hn, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  store ptr %.077.i.i2794, ptr %i.gz, align 8, !tbaa !14
  %i.ho = getelementptr inbounds nuw i8, ptr %.077.i.i2794, i64 56 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !16 ; 3 uses
  store ptr %i.hp, ptr %i.ha, align 8, !tbaa !12
  %.not.i19.i11.i37 = icmp eq ptr %i.hp, null
  br i1 %.not.i19.i11.i37, label %phn_merge_ordered.exit20.i12.i38, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store ptr %i.gy, ptr %i.hq, align 8, !tbaa !14
  br label %phn_merge_ordered.exit20.i12.i38

phn_merge_ordered.exit20.i12.i38:                 ; preds = %bb.bg, %bb.bf
  store ptr %i.gy, ptr %i.ho, align 8, !tbaa !16
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  store ptr %i.gy, ptr %i.gw, align 8, !tbaa !14
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gy, i64 56 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !16 ; 3 uses
  store ptr %i.hs, ptr %i.gx, align 8, !tbaa !12
  %.not.i.i8.i31 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i8.i31, label %phn_merge_ordered.exit.i9.i32, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  store ptr %.077.i.i2794, ptr %i.ht, align 8, !tbaa !14
  br label %phn_merge_ordered.exit.i9.i32

phn_merge_ordered.exit.i9.i32:                    ; preds = %bb.bi, %bb.bh
  store ptr %.077.i.i2794, ptr %i.hr, align 8, !tbaa !16
  br label %bb.bj

.thread162:                                       ; preds = %.lr.ph
  %i.hu = getelementptr inbounds nuw i8, ptr %.078.i.i2693, i64 48
  store ptr %.077.i.i2794, ptr %i.hu, align 8, !tbaa !12
  br label %._crit_edge

bb.bj:                                            ; preds = %phn_merge_ordered.exit20.i12.i38, %phn_merge_ordered.exit.i9.i32
  %.0.i10.i34 = phi ptr [ %i.gy, %phn_merge_ordered.exit.i9.i32 ], [ %.077.i.i2794, %phn_merge_ordered.exit20.i12.i38 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.078.i.i2693, i64 48
  store ptr %.0.i10.i34, ptr %i.hv, align 8, !tbaa !12
  %.not88.i.i28 = icmp eq ptr %i.hb, null
  br i1 %.not88.i.i28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bj, %.thread162, %phn_merge.exit19.i24
  %.078.i.i26.lcssa = phi ptr [ %.0.i16.i25, %phn_merge.exit19.i24 ], [ %.077.i.i2794, %.thread162 ], [ %.0.i10.i34, %bb.bj ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i16.i25, i64 48
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !12 ; 2 uses
  %.not89.i.i39 = icmp eq ptr %i.hx, null
  br i1 %.not89.i.i39, label %.loopexit, label %.preheader91

.preheader91:                                     ; preds = %._crit_edge, %bb.bo
  %.280.i.i40 = phi ptr [ %.0.i7.i46, %bb.bo ], [ %.078.i.i26.lcssa, %._crit_edge ]
  %.2.i.i41 = phi ptr [ %i.hz, %bb.bo ], [ %.0.i16.i25, %._crit_edge ] ; 9 uses
  %.0.i.i42 = phi ptr [ %i.ix, %bb.bo ], [ %i.hx, %._crit_edge ] ; 9 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 48 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !12 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.2.i.i41, i64 48 ; 2 uses
  store ptr null, ptr %i.ia, align 8, !tbaa !12
  store ptr null, ptr %i.hy, align 8, !tbaa !12
  %i.ib = getelementptr i8, ptr %.2.i.i41, i64 8
  %.2.i.i41.val = load ptr, ptr %i.ib, align 8, !tbaa !19
  %i.ic = getelementptr i8, ptr %.2.i.i41, i64 32
  %.2.i.i41.val55 = load i64, ptr %i.ic, align 8, !tbaa !22
  %i.id = getelementptr i8, ptr %.0.i.i42, i64 8
  %.0.i.i42.val = load ptr, ptr %i.id, align 8, !tbaa !19
  %i.ie = getelementptr i8, ptr %.0.i.i42, i64 32
  %.0.i.i42.val56 = load i64, ptr %i.ie, align 8, !tbaa !22
  %i.if = ptrtoint ptr %.2.i.i41.val to i64
  %i.ig = ptrtoint ptr %.0.i.i42.val to i64
  %i.ih = tail call i32 @llvm.ucmp.i32.i64(i64 %.2.i.i41.val55, i64 %.0.i.i42.val56)
  %i.ii = shl nsw i32 %i.ih, 1
  %i.ij = tail call i32 @llvm.ucmp.i32.i64(i64 %i.if, i64 %i.ig)
  %i.ik = add nsw i32 %i.ii, %i.ij
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.preheader91
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 40
  store ptr %.2.i.i41, ptr %i.im, align 8, !tbaa !14
  %i.in = getelementptr inbounds nuw i8, ptr %.2.i.i41, i64 56 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !16 ; 3 uses
  store ptr %i.io, ptr %i.hy, align 8, !tbaa !12
  %.not.i19.i.i50 = icmp eq ptr %i.io, null
  br i1 %.not.i19.i.i50, label %phn_merge_ordered.exit20.i.i51, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  store ptr %.0.i.i42, ptr %i.ip, align 8, !tbaa !14
  br label %phn_merge_ordered.exit20.i.i51

phn_merge_ordered.exit20.i.i51:                   ; preds = %bb.bl, %bb.bk
  store ptr %.0.i.i42, ptr %i.in, align 8, !tbaa !16
  br label %phn_merge.exit.i45

bb.bm:                                            ; preds = %.preheader91
  %i.iq = getelementptr inbounds nuw i8, ptr %.2.i.i41, i64 40
  store ptr %.0.i.i42, ptr %i.iq, align 8, !tbaa !14
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 56 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !16 ; 3 uses
  store ptr %i.is, ptr %i.ia, align 8, !tbaa !12
  %.not.i.i.i43 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i43, label %phn_merge_ordered.exit.i.i44, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  store ptr %.2.i.i41, ptr %i.it, align 8, !tbaa !14
  br label %phn_merge_ordered.exit.i.i44

phn_merge_ordered.exit.i.i44:                     ; preds = %bb.bn, %bb.bm
  store ptr %.2.i.i41, ptr %i.ir, align 8, !tbaa !16
  br label %phn_merge.exit.i45

phn_merge.exit.i45:                               ; preds = %phn_merge_ordered.exit.i.i44, %phn_merge_ordered.exit20.i.i51
  %.0.i7.i46 = phi ptr [ %.0.i.i42, %phn_merge_ordered.exit.i.i44 ], [ %.2.i.i41, %phn_merge_ordered.exit20.i.i51 ] ; 3 uses
  %i.iu = icmp eq ptr %i.hz, null
  br i1 %i.iu, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %phn_merge.exit.i45
  %i.iv = getelementptr inbounds nuw i8, ptr %.280.i.i40, i64 48
  store ptr %.0.i7.i46, ptr %i.iv, align 8, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !12
  br label %.preheader91

.loopexit:                                        ; preds = %phn_merge.exit.i45, %bb.au, %._crit_edge
  %.0.i49.ph = phi ptr [ %.0.i16.i25, %._crit_edge ], [ %i.fv, %bb.au ], [ %.0.i7.i46, %phn_merge.exit.i45 ] ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i49.ph, i64 48
  store ptr %i.ft, ptr %i.iy, align 8, !tbaa !12
  %.not40.i = icmp eq ptr %i.ft, null
  br i1 %.not40.i, label %ph_merge_children.exit54.thread85, label %bb.bp

bb.bp:                                            ; preds = %.loopexit
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store ptr %.0.i49.ph, ptr %i.iz, align 8, !tbaa !14
  br label %ph_merge_children.exit54.thread85

ph_merge_children.exit54:                         ; preds = %bb.at
  %.not41.i = icmp eq ptr %i.ft, null
  br i1 %.not41.i, label %bb.bq, label %ph_merge_children.exit54.thread85

ph_merge_children.exit54.thread85:                ; preds = %bb.bp, %.loopexit, %ph_merge_children.exit54
  %.0.i88 = phi ptr [ %i.ft, %ph_merge_children.exit54 ], [ %.0.i49.ph, %.loopexit ], [ %.0.i49.ph, %bb.bp ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i88, i64 40
  store ptr %i.fr, ptr %i.ja, align 8, !tbaa !14
  br label %bb.bq

bb.bq:                                            ; preds = %ph_merge_children.exit54.thread85, %ph_merge_children.exit54
  %.0.i89 = phi ptr [ %.0.i88, %ph_merge_children.exit54.thread85 ], [ null, %ph_merge_children.exit54 ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fr, i64 56 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !16
  %i.jd = icmp eq ptr %i.jc, %1
  br i1 %i.jd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store ptr %.0.i89, ptr %i.jb, align 8, !tbaa !16
  br label %ph_remove.exit

bb.bs:                                            ; preds = %bb.bq
  %i.je = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  store ptr %.0.i89, ptr %i.je, align 8, !tbaa !12
  br label %ph_remove.exit

ph_remove.exit:                                   ; preds = %ph_merge_children.exit, %bb.br, %bb.bs
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @duckdb_je_edata_heap_remove_any(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %duckdb_je_edata_heap_any.exit, label %select.unfold

select.unfold:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %.fr = freeze ptr %i.d                          ; 2 uses
  %.not.i.i = icmp eq ptr %.fr, null
  %spec.select = select i1 %.not.i.i, ptr %i.a, ptr %.fr ; 2 uses
  tail call void @duckdb_je_edata_heap_remove(ptr noundef nonnull %0, ptr noundef nonnull %spec.select)
  br label %duckdb_je_edata_heap_any.exit

duckdb_je_edata_heap_any.exit:                    ; preds = %bb.a, %select.unfold
  %.1.i.i8 = phi ptr [ null, %bb.a ], [ %spec.select, %select.unfold ]
  ret ptr %.1.i.i8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"ph_s", !9, i64 0, !10, i64 8}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!8, !10, i64 8}
!12 = !{!13, !9, i64 8}
!13 = !{!"phn_link_s", !9, i64 0, !9, i64 8, !9, i64 16}
!14 = !{!13, !9, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!13, !9, i64 16}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
!19 = !{!20, !9, i64 8}
!20 = !{!"edata_s", !10, i64 0, !9, i64 8, !5, i64 16, !21, i64 24, !10, i64 32, !5, i64 40, !5, i64 64}
!21 = !{!"p1 _ZTS8hpdata_s", !9, i64 0}
!22 = !{!20, !10, i64 32}
!23 = distinct !{!23, !18}
end_hunk_1
