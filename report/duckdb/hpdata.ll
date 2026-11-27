Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/hpdata?download=true
inline.NumInlined: 79
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@duckdb_je_hpdata_age_heap_remove:bb.a
  %i.ez = getelementptr i8, ptr %.077.i.i2776, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  %.077.i.i27.val = load i64, ptr %i.ez, align 8, !tbaa !20
  %i.fa = getelementptr i8, ptr %i.eu, i64 8
  %.val = load i64, ptr %i.fa, align 8, !tbaa !20
  %i.fb = icmp ult i64 %.077.i.i27.val, %.val
  br i1 %i.fb, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  store ptr %.077.i.i2776, ptr %i.ev, align 8, !tbaa !14
  %i.fc = getelementptr inbounds nuw i8, ptr %.077.i.i2776, i64 56 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !21 ; 3 uses
  store ptr %i.fd, ptr %i.ew, align 8, !tbaa !13
  %.not.i19.i11.i37 = icmp eq ptr %i.fd, null
  br i1 %.not.i19.i11.i37, label %phn_merge_ordered.exit20.i12.i38, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  store ptr %i.eu, ptr %i.fe, align 8, !tbaa !14
  br label %phn_merge_ordered.exit20.i12.i38

phn_merge_ordered.exit20.i12.i38:                 ; preds = %bb.bg, %bb.bf
  store ptr %i.eu, ptr %i.fc, align 8, !tbaa !21
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !14
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 56 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !21 ; 3 uses
  store ptr %i.fg, ptr %i.et, align 8, !tbaa !13
  %.not.i.i8.i31 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i8.i31, label %phn_merge_ordered.exit.i9.i32, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store ptr %.077.i.i2776, ptr %i.fh, align 8, !tbaa !14
  br label %phn_merge_ordered.exit.i9.i32

phn_merge_ordered.exit.i9.i32:                    ; preds = %bb.bi, %bb.bh
  store ptr %.077.i.i2776, ptr %i.ff, align 8, !tbaa !21
  br label %bb.bj

.thread144:                                       ; preds = %.lr.ph
  %i.fi = getelementptr inbounds nuw i8, ptr %.078.i.i2675, i64 48
  store ptr %.077.i.i2776, ptr %i.fi, align 8, !tbaa !13
  br label %._crit_edge

bb.bj:                                            ; preds = %phn_merge_ordered.exit20.i12.i38, %phn_merge_ordered.exit.i9.i32
  %.0.i10.i34 = phi ptr [ %i.eu, %phn_merge_ordered.exit.i9.i32 ], [ %.077.i.i2776, %phn_merge_ordered.exit20.i12.i38 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.078.i.i2675, i64 48
  store ptr %.0.i10.i34, ptr %i.fj, align 8, !tbaa !13
  %.not88.i.i28 = icmp eq ptr %i.ex, null
  br i1 %.not88.i.i28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bj, %.thread144, %phn_merge.exit19.i24
  %.078.i.i26.lcssa = phi ptr [ %.0.i16.i25, %phn_merge.exit19.i24 ], [ %.077.i.i2776, %.thread144 ], [ %.0.i10.i34, %bb.bj ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i16.i25, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !13 ; 2 uses
  %.not89.i.i39 = icmp eq ptr %i.fl, null
  br i1 %.not89.i.i39, label %.loopexit, label %.preheader73

.preheader73:                                     ; preds = %._crit_edge, %bb.bo
  %.280.i.i40 = phi ptr [ %.0.i7.i46, %bb.bo ], [ %.078.i.i26.lcssa, %._crit_edge ]
  %.2.i.i41 = phi ptr [ %i.fn, %bb.bo ], [ %.0.i16.i25, %._crit_edge ] ; 8 uses
  %.0.i.i42 = phi ptr [ %i.gd, %bb.bo ], [ %i.fl, %._crit_edge ] ; 8 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 48 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !13 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.2.i.i41, i64 48 ; 2 uses
  store ptr null, ptr %i.fo, align 8, !tbaa !13
  store ptr null, ptr %i.fm, align 8, !tbaa !13
  %i.fp = getelementptr i8, ptr %.2.i.i41, i64 8
  %.2.i.i41.val = load i64, ptr %i.fp, align 8, !tbaa !20
  %i.fq = getelementptr i8, ptr %.0.i.i42, i64 8
  %.0.i.i42.val = load i64, ptr %i.fq, align 8, !tbaa !20
  %i.fr = icmp ult i64 %.2.i.i41.val, %.0.i.i42.val
  br i1 %i.fr, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.preheader73
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 40
  store ptr %.2.i.i41, ptr %i.fs, align 8, !tbaa !14
  %i.ft = getelementptr inbounds nuw i8, ptr %.2.i.i41, i64 56 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !21 ; 3 uses
  store ptr %i.fu, ptr %i.fm, align 8, !tbaa !13
  %.not.i19.i.i50 = icmp eq ptr %i.fu, null
  br i1 %.not.i19.i.i50, label %phn_merge_ordered.exit20.i.i51, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store ptr %.0.i.i42, ptr %i.fv, align 8, !tbaa !14
  br label %phn_merge_ordered.exit20.i.i51

phn_merge_ordered.exit20.i.i51:                   ; preds = %bb.bl, %bb.bk
  store ptr %.0.i.i42, ptr %i.ft, align 8, !tbaa !21
  br label %phn_merge.exit.i45

bb.bm:                                            ; preds = %.preheader73
  %i.fw = getelementptr inbounds nuw i8, ptr %.2.i.i41, i64 40
  store ptr %.0.i.i42, ptr %i.fw, align 8, !tbaa !14
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 56 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !21 ; 3 uses
  store ptr %i.fy, ptr %i.fo, align 8, !tbaa !13
  %.not.i.i.i43 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i43, label %phn_merge_ordered.exit.i.i44, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store ptr %.2.i.i41, ptr %i.fz, align 8, !tbaa !14
  br label %phn_merge_ordered.exit.i.i44

phn_merge_ordered.exit.i.i44:                     ; preds = %bb.bn, %bb.bm
  store ptr %.2.i.i41, ptr %i.fx, align 8, !tbaa !21
  br label %phn_merge.exit.i45

phn_merge.exit.i45:                               ; preds = %phn_merge_ordered.exit.i.i44, %phn_merge_ordered.exit20.i.i51
  %.0.i7.i46 = phi ptr [ %.0.i.i42, %phn_merge_ordered.exit.i.i44 ], [ %.2.i.i41, %phn_merge_ordered.exit20.i.i51 ] ; 3 uses
  %i.ga = icmp eq ptr %i.fn, null
  br i1 %i.ga, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %phn_merge.exit.i45
  %i.gb = getelementptr inbounds nuw i8, ptr %.280.i.i40, i64 48
  store ptr %.0.i7.i46, ptr %i.gb, align 8, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !13
  br label %.preheader73

.loopexit:                                        ; preds = %phn_merge.exit.i45, %bb.au, %._crit_edge
  %.0.i49.ph = phi ptr [ %.0.i16.i25, %._crit_edge ], [ %i.dz, %bb.au ], [ %.0.i7.i46, %phn_merge.exit.i45 ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i49.ph, i64 48
  store ptr %i.dx, ptr %i.ge, align 8, !tbaa !13
  %.not40.i = icmp eq ptr %i.dx, null
  br i1 %.not40.i, label %ph_merge_children.exit54.thread67, label %bb.bp

bb.bp:                                            ; preds = %.loopexit
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  store ptr %.0.i49.ph, ptr %i.gf, align 8, !tbaa !14
  br label %ph_merge_children.exit54.thread67

ph_merge_children.exit54:                         ; preds = %bb.at
  %.not41.i = icmp eq ptr %i.dx, null
  br i1 %.not41.i, label %bb.bq, label %ph_merge_children.exit54.thread67

ph_merge_children.exit54.thread67:                ; preds = %bb.bp, %.loopexit, %ph_merge_children.exit54
  %.0.i70 = phi ptr [ %i.dx, %ph_merge_children.exit54 ], [ %.0.i49.ph, %.loopexit ], [ %.0.i49.ph, %bb.bp ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i70, i64 40
  store ptr %i.dv, ptr %i.gg, align 8, !tbaa !14
  br label %bb.bq

bb.bq:                                            ; preds = %ph_merge_children.exit54.thread67, %ph_merge_children.exit54
  %.0.i71 = phi ptr [ %.0.i70, %ph_merge_children.exit54.thread67 ], [ null, %ph_merge_children.exit54 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dv, i64 56 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !21
  %i.gj = icmp eq ptr %i.gi, %1
  br i1 %i.gj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store ptr %.0.i71, ptr %i.gh, align 8, !tbaa !21
  br label %ph_remove.exit

bb.bs:                                            ; preds = %bb.bq
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  store ptr %.0.i71, ptr %i.gk, align 8, !tbaa !13
  br label %ph_remove.exit

ph_remove.exit:                                   ; preds = %ph_merge_children.exit, %bb.br, %bb.bs
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @duckdb_je_hpdata_age_heap_remove_any(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 !guid !41 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %duckdb_je_hpdata_age_heap_any.exit, label %select.unfold

select.unfold:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %spec.select = select i1 %.not.i.i, ptr %i.a, ptr %i.d ; 2 uses
  tail call void @duckdb_je_hpdata_age_heap_remove(ptr noundef nonnull %0, ptr noundef nonnull %spec.select)
  br label %duckdb_je_hpdata_age_heap_any.exit

duckdb_je_hpdata_age_heap_any.exit:               ; preds = %bb.a, %select.unfold
  %.1.i.i8 = phi ptr [ %spec.select, %select.unfold ], [ null, %bb.a ]
  ret ptr %.1.i.i8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_je_hpdata_init(ptr nofree noundef writeonly captures(none) initializes((0, 21), (32, 37), (96, 248)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !guid !42 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 256, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.e, align 4, !tbaa !44
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 512, ptr %3, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i8 0, i64 144, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define ptr @duckdb_je_hpdata_reserve_alloc(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #6 !guid !47 {
bb.a:
  %i.a = lshr i64 %1, 12                          ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.093 = phi i64 [ 0, %bb.a ], [ %.295, %bb.d ]  ; 3 uses
  %.089 = phi i64 [ 0, %bb.a ], [ %.291, %bb.d ]  ; 3 uses
  %.034 = phi i64 [ 0, %bb.a ], [ %i.ak, %bb.d ]  ; 2 uses
  %.032 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.d ] ; 3 uses
  %i.c = lshr i64 %.034, 6                        ; 3 uses
  %i.d = and i64 %.034, 63
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  %i.g = xor i64 %i.f, -1
  %notmask.i4.i = shl nsw i64 -1, %i.d
  %.0.i5.i = and i64 %notmask.i4.i, %i.g          ; 2 uses
  %i.h = icmp eq i64 %.0.i5.i, 0
  br i1 %i.h, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.i = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.j = icmp eq i64 %i.i, 8
  br i1 %i.j, label %fb_urange_iter.exit, label %.lr.ph210

.lr.ph.i:                                         ; preds = %.lr.ph210
  %i.k = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.l = icmp eq i64 %i.k, 8
  br i1 %i.l, label %fb_urange_iter.exit, label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = phi i64 [ %i.k, %.lr.ph.i ], [ %i.i, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph210
  %i.q = xor i64 %i.o, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %.039.i6.lcssa.i = phi i64 [ %i.c, %bb.b ], [ %i.m, %._crit_edge.loopexit.i ] ; 2 uses
  %.1.i7.lcssa.i = phi i64 [ %.0.i5.i, %bb.b ], [ %i.q, %._crit_edge.loopexit.i ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i7.lcssa.i, i1 true) ; 2 uses
  %i.s = shl i64 %.039.i6.lcssa.i, 6              ; 2 uses
  %i.t = or disjoint i64 %i.r, %i.s               ; 2 uses
  %or.cond.i = icmp ugt i64 %i.s, 511
  br i1 %or.cond.i, label %fb_urange_iter.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.u = and i64 %.039.i6.lcssa.i, 288230376151711743 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %notmask.i.i = shl nsw i64 -1, %i.r
  %.0.i.i43 = and i64 %i.w, %notmask.i.i          ; 2 uses
  %i.x = icmp eq i64 %.0.i.i43, 0
  br i1 %i.x, label %.lr.ph19.i.preheader, label %._crit_edge20.i

.lr.ph19.i.preheader:                             ; preds = %bb.c
  %i.y = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.z = icmp eq i64 %i.y, 8
  br i1 %i.z, label %fb_find_impl.exit.i, label %.lr.ph211

.lr.ph19.i:                                       ; preds = %.lr.ph211
  %i.aa = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 8
  br i1 %i.ab, label %fb_find_impl.exit.i, label %.lr.ph211

.lr.ph211:                                        ; preds = %.lr.ph19.i.preheader, %.lr.ph19.i
  %i.ac = phi i64 [ %i.aa, %.lr.ph19.i ], [ %i.y, %.lr.ph19.i.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph19.i, label %._crit_edge20.i

._crit_edge20.i:                                  ; preds = %.lr.ph211, %bb.c
  %.039.i.lcssa.i = phi i64 [ %i.u, %bb.c ], [ %i.ac, %.lr.ph211 ]
  %.1.i.lcssa.i = phi i64 [ %.0.i.i43, %bb.c ], [ %i.ae, %.lr.ph211 ]
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i.lcssa.i, i1 true)
  %i.ah = shl i64 %.039.i.lcssa.i, 6
  %i.ai = or disjoint i64 %i.ag, %i.ah
  br label %fb_find_impl.exit.i

fb_find_impl.exit.i:                              ; preds = %.lr.ph19.i, %.lr.ph19.i.preheader, %._crit_edge20.i
  %.141.i.i = phi i64 [ %i.ai, %._crit_edge20.i ], [ 512, %.lr.ph19.i.preheader ], [ 512, %.lr.ph19.i ]
  %i.aj = sub nsw i64 %.141.i.i, %i.t
  br label %fb_urange_iter.exit

fb_urange_iter.exit:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i, %fb_find_impl.exit.i
  %.295 = phi i64 [ %i.t, %fb_find_impl.exit.i ], [ %.093, %._crit_edge.i ], [ %.093, %.lr.ph.i.preheader ], [ %.093, %.lr.ph.i ] ; 6 uses
  %.291 = phi i64 [ %i.aj, %fb_find_impl.exit.i ], [ %.089, %._crit_edge.i ], [ %.089, %.lr.ph.i.preheader ], [ %.089, %.lr.ph.i ] ; 9 uses
  %.not = icmp ult i64 %.291, %i.a
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %fb_urange_iter.exit
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.291, i64 %.032)
  %i.ak = add i64 %.291, %.295
  br label %bb.b

bb.e:                                             ; preds = %fb_urange_iter.exit
  %i.al = lshr i64 %.295, 6                       ; 7 uses
  %i.am = and i64 %.295, 63                       ; 4 uses
  %i.an = add nuw nsw i64 %i.am, %i.a             ; 8 uses
  %i.ao = icmp samesign ugt i64 %i.an, 64
  %i.ap = sub nuw nsw i64 64, %i.am
  %i.aq = select i1 %i.ao, i64 %i.ap, i64 %i.a    ; 2 uses
  %i.ar = sub nsw i64 64, %i.aq
  %i.as = lshr i64 -1, %i.ar
  %i.at = shl i64 %i.as, %i.am                    ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24
  %i.aw = or i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !24
  %i.ax = sub nsw i64 %i.a, %i.aq                 ; 8 uses
  %.0.i9.i = add nuw nsw i64 %i.al, 1             ; 7 uses
  %i.ay = icmp ugt i64 %i.ax, 64                  ; 3 uses
  br i1 %i.ay, label %fb_assign_visitor.exit.preheader.i, label %._crit_edge.i44

fb_assign_visitor.exit.preheader.i:               ; preds = %bb.e
  %i.az = shl nuw nsw i64 %i.al, 3
  %i.ba = getelementptr i8, ptr %i.b, i64 %i.az
  %scevgep.i = getelementptr i8, ptr %i.ba, i64 8
  %i.bb = add nsw i64 %i.an, -65
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64) ; 2 uses
  %i.bc = sub nsw i64 %i.bb, %umin.i              ; 2 uses
  %i.bd = lshr i64 %i.bc, 6                       ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 -1, i64 %i.bf, i1 false), !tbaa !24
  %i.bg = and i64 %i.bc, -64
  %.neg113 = add nsw i64 %i.an, -64
  %i.bh = add nsw i64 %umin.i, %i.bg
  %i.bi = sub nsw i64 %.neg113, %i.bh
  %i.bj = add nuw nsw i64 %i.al, 2
  %i.bk = add nuw nsw i64 %i.bj, %i.bd
  br label %._crit_edge.i44

._crit_edge.i44:                                  ; preds = %fb_assign_visitor.exit.preheader.i, %bb.e
  %.029.i.lcssa.i = phi i64 [ %i.ax, %bb.e ], [ %i.bi, %fb_assign_visitor.exit.preheader.i ] ; 2 uses
  %.0.i.lcssa.i = phi i64 [ %.0.i9.i, %bb.e ], [ %i.bk, %fb_assign_visitor.exit.preheader.i ]
  %.not.i.i45 = icmp eq i64 %.029.i.lcssa.i, 0
  br i1 %.not.i.i45, label %fb_set_range.exit, label %fb_assign_visitor.exit4.i

fb_assign_visitor.exit4.i:                        ; preds = %._crit_edge.i44
  %i.bl = sub nuw nsw i64 64, %.029.i.lcssa.i
  %i.bm = lshr i64 -1, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i.lcssa.i ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.bp = or i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !24
  br label %fb_set_range.exit

fb_set_range.exit:                                ; preds = %._crit_edge.i44, %fb_assign_visitor.exit4.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.bs = add i64 %i.br, %i.a
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.al ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !24 ; 3 uses
  %i.bw = and i64 %i.bv, %i.at
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bw) ; 4 uses
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %fb_set_range.exit
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.bz = add nuw nsw i64 %i.a, %i.am
  %i.ca = add nsw i64 %i.bz, -65
  %i.cb = sub nsw i64 %i.ca, %i.by                ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 192
  br i1 %min.iters.check, label %.lr.ph.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.cd, 576460752303423484      ; 4 uses
  %i.ce = add nuw nsw i64 %.0.i9.i, %n.vec        ; 2 uses
  %i.cf = shl i64 %n.vec, 6
  %i.cg = sub i64 %i.ax, %i.cf                    ; 2 uses
  %i.ch = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bx, i64 0
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.0.i9.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ch, %vector.ph ], [ %i.cn, %vector.body ]
  %vec.phi219 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <2 x i64>, ptr %i.cj, align 8, !tbaa !24
  %wide.load220 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !24
  %i.cl = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
end_hunk_0
begin_hunk_1_@duckdb_je_hpdata_purge_next:bb.a
.loopexit:                                        ; preds = %.lr.ph19.i, %.lr.ph19.i.preheader, %._crit_edge.i
  %.141.i.i = phi i64 [ %.040.i.i, %._crit_edge.i ], [ 512, %.lr.ph19.i.preheader ], [ 512, %.lr.ph19.i ] ; 2 uses
  %i.al = sub nsw i64 %.141.i.i, %i.t             ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !22
  %i.am = shl i64 %i.t, 12
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %i.am
  store ptr %i.an, ptr %2, align 8, !tbaa !53
  %i.ao = shl i64 %i.al, 12
  store i64 %i.ao, ptr %3, align 8, !tbaa !24
  store i64 %.141.i.i, ptr %i.a, align 8, !tbaa !29
  %i.ap = load i64, ptr %1, align 8, !tbaa !28
  %i.aq = add i64 %i.ap, %i.al
  store i64 %i.aq, ptr %1, align 8, !tbaa !28
  br label %fb_srange_iter.exit.thread

fb_srange_iter.exit.thread:                       ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %fb_find_impl.exit10.i, %.loopexit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.loopexit ], [ false, %fb_find_impl.exit10.i ], [ false, %.lr.ph.i.preheader ], [ false, %.lr.ph.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @duckdb_je_hpdata_purge_end(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 !guid !54 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load <2 x i64>, ptr %i.a, align 8, !tbaa !24
  %i.d = xor <2 x i64> %i.c, splat (i64 -1)       ; 2 uses
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !24
  %i.h = xor <2 x i64> %i.g, splat (i64 -1)
  store <2 x i64> %i.h, ptr %i.e, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !24
  %i.l = xor <2 x i64> %i.k, splat (i64 -1)
  store <2 x i64> %i.l, ptr %i.i, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !24
  %i.p = xor <2 x i64> %i.o, splat (i64 -1)
  store <2 x i64> %i.p, ptr %i.m, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24
  %i.s = extractelement <2 x i64> %i.d, i64 0
  %i.t = and i64 %i.r, %i.s
  store i64 %i.t, ptr %i.q, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = load i64, ptr %i.b, align 8, !tbaa !24
  %i.x = and i64 %i.w, %i.v
  store i64 %i.x, ptr %i.u, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !24
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !24
  %i.ab = and i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !24
  %i.af = and i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !24
  %i.aj = and i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = load i64, ptr %i.j, align 8, !tbaa !24
  %i.an = and i64 %i.am, %i.al
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !24
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !24
  %i.ar = and i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  %i.au = load i64, ptr %i.n, align 8, !tbaa !24
  %i.av = and i64 %i.au, %i.at
  store i64 %i.av, ptr %i.as, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !26
  %i.ba = sub i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_je_hpdata_hugify(ptr nofree noundef writeonly captures(none) initializes((16, 17), (176, 248)) %0) local_unnamed_addr #0 !guid !55 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 -1, i64 64, i1 false)
  store i64 512, ptr %i.c, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_je_hpdata_dehugify(ptr nofree noundef writeonly captures(none) initializes((16, 17)) %0) local_unnamed_addr #0 !guid !56 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"ph_s", !7, i64 0, !8, i64 8}
!10 = !{!9, !7, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!"phn_link_s", !7, i64 0, !7, i64 8, !7, i64 16}
!13 = !{!12, !7, i64 8}
!14 = !{!12, !7, i64 0}
!15 = !{!"_Bool", !4, i64 0}
!16 = !{!"", !8, i64 0}
!17 = !{!"p1 _ZTS8hpdata_s", !7, i64 0}
!18 = !{!"", !17, i64 0, !17, i64 8}
!19 = !{!"hpdata_s", !7, i64 0, !8, i64 8, !15, i64 16, !15, i64 17, !15, i64 18, !15, i64 19, !15, i64 20, !16, i64 24, !15, i64 32, !15, i64 33, !15, i64 34, !15, i64 35, !15, i64 36, !4, i64 40, !18, i64 64, !18, i64 80, !8, i64 96, !8, i64 104, !4, i64 112, !8, i64 176, !4, i64 184}
!20 = !{!19, !8, i64 8}
!21 = !{!12, !7, i64 16}
!22 = !{!19, !7, i64 0}
!23 = !{!19, !8, i64 96}
!24 = !{!8, !8, i64 0}
!25 = !{!19, !8, i64 104}
!26 = !{!19, !8, i64 176}
!27 = !{!"hpdata_purge_state_s", !8, i64 0, !8, i64 8, !4, i64 16, !8, i64 80}
!28 = !{!27, !8, i64 0}
!29 = !{!27, !8, i64 80}
!30 = !{!27, !8, i64 8}
!31 = !{!19, !15, i64 16}
!32 = !{i64 456647236329957334}
!33 = !{i64 1743121666535329764}
!34 = !{i64 285647718479788422}
!35 = !{i64 -456336883829214820}
!36 = distinct !{!36, !38}
!37 = !{i64 7560200957022848024}
!38 = !{!"llvm.loop.unswitch.partial.disable"}
!39 = !{i64 -4012206141253398144}
!40 = !{i64 -6119292966820301659}
!41 = !{i64 1494200085067194987}
!42 = !{i64 -1128681475057495398}
!43 = !{!19, !15, i64 20}
!44 = !{!19, !15, i64 36}
!45 = distinct !{!45, !48, !49}
!46 = distinct !{!46, !49, !48}
!47 = !{i64 -5669404398818474053}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{i64 -8060864654928968244}
!51 = !{i64 6751822344321104364}
!52 = !{i64 -2149317202557431917}
!53 = !{!7, !7, i64 0}
!54 = !{i64 3468176294355562742}
!55 = !{i64 1825808897061929820}
!56 = !{i64 -6010351717470900090}
end_hunk_1
