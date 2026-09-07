Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/hpdata?download=true
inline.NumInlined: 67
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@je_hpdata_age_heap_enumerate_next:bb.a
  %i.o = zext i16 %i.k to i32
  %i.p = add nuw nsw i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 266
  %i.r = load i16, ptr %i.q, align 2, !tbaa !33
  %i.s = zext i16 %i.r to i32                     ; 3 uses
  %i.t = urem i32 %i.p, %i.s
  %i.u = trunc nuw i32 %i.t to i16
  store i16 %i.u, ptr %i.a, align 2, !tbaa !50
  %i.v = add i16 %i.c, -1
  store i16 %i.v, ptr %i.b, align 2, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 258 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !35 ; 2 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !34
  %i.ae = zext i16 %i.ab to i32
  %i.af = add nuw nsw i32 %i.ae, 1
  %i.ag = urem i32 %i.af, %i.s
  %i.ah = trunc nuw i32 %i.ag to i16
  store i16 %i.ah, ptr %i.aa, align 2, !tbaa !35
  store i16 %i.c, ptr %i.b, align 2, !tbaa !36
  %i.ai = add i16 %i.c, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = phi i16 [ %i.ai, %bb.d ], [ %i.c, %bb.c ]
  %.not21.i = icmp eq ptr %i.z, null
  br i1 %.not21.i, label %ph_enumerate_next.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 258 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !35 ; 2 uses
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  store ptr %i.z, ptr %i.an, align 8, !tbaa !34
  %i.ao = zext i16 %i.al to i32
  %i.ap = add nuw nsw i32 %i.ao, 1
  %i.aq = urem i32 %i.ap, %i.s
  %i.ar = trunc nuw i32 %i.aq to i16
  store i16 %i.ar, ptr %i.ak, align 2, !tbaa !35
  store i16 %i.aj, ptr %i.b, align 2, !tbaa !36
  br label %ph_enumerate_next.exit

ph_enumerate_next.exit:                           ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.n, %bb.f ], [ %i.n, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden void @je_hpdata_init(ptr noundef initializes((0, 21), (32, 37), (96, 248)) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #8 {
bb.a:
  %i.a = zext i1 %3 to i8
  store ptr %1, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.d, align 1, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.e, i8 0, i64 5, i1 false)
  store i64 512, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 -1, i64 64, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 512, %bb.b ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sink, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @je_nstime_copy(ptr noundef nonnull %i.j, ptr noundef nonnull @nstime_zero) #15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 0, ptr %i.k, align 8, !tbaa !52
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden ptr @je_hpdata_reserve_alloc(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = lshr i64 %1, 12                          ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.091 = phi i64 [ 0, %bb.a ], [ %.293, %bb.d ]  ; 3 uses
  %.087 = phi i64 [ 0, %bb.a ], [ %.289, %bb.d ]  ; 3 uses
  %.032 = phi i64 [ 0, %bb.a ], [ %i.ak, %bb.d ]  ; 2 uses
  %.030 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.d ] ; 3 uses
  %i.c = lshr i64 %.032, 6                        ; 3 uses
  %i.d = and i64 %.032, 63
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %i.g = xor i64 %i.f, -1
  %notmask.i4.i = shl nsw i64 -1, %i.d
  %.0.i5.i = and i64 %notmask.i4.i, %i.g          ; 2 uses
  %i.h = icmp eq i64 %.0.i5.i, 0
  br i1 %i.h, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.i = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.j = icmp eq i64 %i.i, 8
  br i1 %i.j, label %fb_urange_iter.exit, label %.lr.ph208

.lr.ph.i:                                         ; preds = %.lr.ph208
  %i.k = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.l = icmp eq i64 %i.k, 8
  br i1 %i.l, label %fb_urange_iter.exit, label %.lr.ph208, !llvm.loop !1

.lr.ph208:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = phi i64 [ %i.k, %.lr.ph.i ], [ %i.i, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph208
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
  %i.w = load i64, ptr %i.v, align 8, !tbaa !41
  %notmask.i.i = shl nsw i64 -1, %i.r
  %.0.i.i41 = and i64 %i.w, %notmask.i.i          ; 2 uses
  %i.x = icmp eq i64 %.0.i.i41, 0
  br i1 %i.x, label %.lr.ph19.i.preheader, label %._crit_edge20.i

.lr.ph19.i.preheader:                             ; preds = %bb.c
  %i.y = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.z = icmp eq i64 %i.y, 8
  br i1 %i.z, label %fb_find_impl.exit.i, label %.lr.ph209.a

.lr.ph19.i:                                       ; preds = %.lr.ph209.a
  %i.aa = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 8
  br i1 %i.ab, label %fb_find_impl.exit.i, label %.lr.ph209.a, !llvm.loop !1

.lr.ph209.a:                                      ; preds = %.lr.ph19.i.preheader, %.lr.ph19.i
  %i.ac = phi i64 [ %i.aa, %.lr.ph19.i ], [ %i.y, %.lr.ph19.i.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !41 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph19.i, label %._crit_edge20.i, !llvm.loop !1

._crit_edge20.i:                                  ; preds = %.lr.ph209.a, %bb.c
  %.039.i.lcssa.i = phi i64 [ %i.u, %bb.c ], [ %i.ac, %.lr.ph209.a ]
  %.1.i.lcssa.i = phi i64 [ %.0.i.i41, %bb.c ], [ %i.ae, %.lr.ph209.a ]
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i.lcssa.i, i1 true)
  %i.ah = shl i64 %.039.i.lcssa.i, 6
  %i.ai = or disjoint i64 %i.ag, %i.ah
  br label %fb_find_impl.exit.i

fb_find_impl.exit.i:                              ; preds = %.lr.ph19.i, %.lr.ph19.i.preheader, %._crit_edge20.i
  %.141.i.i = phi i64 [ %i.ai, %._crit_edge20.i ], [ 512, %.lr.ph19.i.preheader ], [ 512, %.lr.ph19.i ]
  %i.aj = sub nsw i64 %.141.i.i, %i.t
  br label %fb_urange_iter.exit

fb_urange_iter.exit:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i, %fb_find_impl.exit.i
  %.293 = phi i64 [ %i.t, %fb_find_impl.exit.i ], [ %.091, %._crit_edge.i ], [ %.091, %.lr.ph.i.preheader ], [ %.091, %.lr.ph.i ] ; 6 uses
  %.289 = phi i64 [ %i.aj, %fb_find_impl.exit.i ], [ %.087, %._crit_edge.i ], [ %.087, %.lr.ph.i.preheader ], [ %.087, %.lr.ph.i ] ; 9 uses
  %.not = icmp ult i64 %.289, %i.a
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %fb_urange_iter.exit
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.289, i64 %.030)
  %i.ak = add i64 %.289, %.293
  br label %bb.b

bb.e:                                             ; preds = %fb_urange_iter.exit
  %i.al = lshr i64 %.293, 6                       ; 7 uses
  %i.am = and i64 %.293, 63                       ; 4 uses
  %i.an = add nuw nsw i64 %i.am, %i.a             ; 4 uses
  %i.ao = icmp samesign ugt i64 %i.an, 64
  %i.ap = sub nuw nsw i64 64, %i.am
  %i.aq = select i1 %i.ao, i64 %i.ap, i64 %i.a    ; 2 uses
  %i.ar = sub nsw i64 64, %i.aq
  %i.as = lshr i64 -1, %i.ar
  %i.at = shl i64 %i.as, %i.am                    ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !41
  %i.aw = or i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !41
  %i.ax = sub nsw i64 %i.a, %i.aq                 ; 10 uses
  %.0.i9.i = add nuw nsw i64 %i.al, 1             ; 7 uses
  %i.ay = icmp ugt i64 %i.ax, 64                  ; 3 uses
  br i1 %i.ay, label %fb_assign_visitor.exit.preheader.i, label %._crit_edge.i42

fb_assign_visitor.exit.preheader.i:               ; preds = %bb.e
  %i.az = shl nuw nsw i64 %i.al, 3
  %i.ba = getelementptr i8, ptr %i.b, i64 %i.az
  %scevgep.i = getelementptr i8, ptr %i.ba, i64 8
  %i.bb = add nsw i64 %i.ax, -65                  ; 2 uses
  %i.bc = lshr i64 %i.bb, 6                       ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 -1, i64 %i.be, i1 false), !tbaa !41
  %2 = tail call i64 @llvm.usub.sat.i64(i64 %i.an, i64 64)
  %.neg111 = add nsw i64 %2, -64
  %3 = and i64 %i.bb, -64
  %i.bf = sub nsw i64 %.neg111, %3
  %i.bg = add nuw nsw i64 %i.al, 2
  %i.bh = add nuw nsw i64 %i.bg, %i.bc
  br label %._crit_edge.i42

._crit_edge.i42:                                  ; preds = %fb_assign_visitor.exit.preheader.i, %bb.e
  %.029.i.lcssa.i = phi i64 [ %i.ax, %bb.e ], [ %i.bf, %fb_assign_visitor.exit.preheader.i ] ; 2 uses
  %.0.i.lcssa.i = phi i64 [ %.0.i9.i, %bb.e ], [ %i.bh, %fb_assign_visitor.exit.preheader.i ]
  %.not.i.i43 = icmp eq i64 %.029.i.lcssa.i, 0
  br i1 %.not.i.i43, label %fb_set_range.exit, label %fb_assign_visitor.exit4.i

fb_assign_visitor.exit4.i:                        ; preds = %._crit_edge.i42
  %i.bi = sub nuw nsw i64 64, %.029.i.lcssa.i
  %i.bj = lshr i64 -1, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i.lcssa.i ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !41
  %i.bm = or i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !41
  br label %fb_set_range.exit

fb_set_range.exit:                                ; preds = %._crit_edge.i42, %fb_assign_visitor.exit4.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !42
  %i.bp = add i64 %i.bo, %i.a
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.al ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !41 ; 3 uses
  %i.bt = and i64 %i.bs, %i.at
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bt) ; 4 uses
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %fb_set_range.exit
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.bw = add nuw nsw i64 %i.a, %i.am
  %i.bx = add nsw i64 %i.bw, -65
  %i.by = sub nsw i64 %i.bx, %i.bv                ; 2 uses
  %i.bz = lshr i64 %i.by, 6
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 192
  br i1 %min.iters.check, label %.lr.ph.preheader235, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ca, 576460752303423484      ; 4 uses
  %i.cb = add nuw nsw i64 %.0.i9.i, %n.vec        ; 2 uses
  %i.cc = shl i64 %n.vec, 6
  %i.cd = sub i64 %i.ax, %i.cc                    ; 2 uses
  %i.ce = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bu, i64 0
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.0.i9.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ce, %vector.ph ], [ %i.ck, %vector.body ]
  %vec.phi217 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cl, %vector.body ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load = load <2 x i64>, ptr %i.cg, align 8, !tbaa !41
  %wide.load218 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !41
  %i.ci = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.cj = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load218)
  %i.ck = add <2 x i64> %i.ci, %vec.phi           ; 2 uses
  %i.cl = add <2 x i64> %i.cj, %vec.phi217        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cl, %i.ck
  %i.cn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %fb_scount.exit, label %.lr.ph.preheader235

.lr.ph.preheader235:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0.i.i127.ph = phi i64 [ %.0.i9.i, %.lr.ph.preheader ], [ %i.cb, %middle.block ]
  %.029.i.i126.ph = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %i.cd, %middle.block ]
  %.095125.ph = phi i64 [ %i.bu, %.lr.ph.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader235, %.lr.ph
  %.0.i.i127 = phi i64 [ %.0.i.i, %.lr.ph ], [ %.0.i.i127.ph, %.lr.ph.preheader235 ] ; 2 uses
  %.029.i.i126 = phi i64 [ %i.cs, %.lr.ph ], [ %.029.i.i126.ph, %.lr.ph.preheader235 ]
  %.095125 = phi i64 [ %i.cr, %.lr.ph ], [ %.095125.ph, %.lr.ph.preheader235 ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.0.i.i127
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !41
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cp)
  %i.cr = add i64 %i.cq, %.095125                 ; 2 uses
  %i.cs = add i64 %.029.i.i126, -64               ; 3 uses
  %.0.i.i = add nuw nsw i64 %.0.i.i127, 1         ; 2 uses
  %i.ct = icmp ugt i64 %i.cs, 64
  br i1 %i.ct, label %.lr.ph, label %fb_scount.exit, !llvm.loop !54

._crit_edge:                                      ; preds = %fb_set_range.exit
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %fb_scount.exit.thread, label %fb_scount.exit

fb_scount.exit.thread:                            ; preds = %._crit_edge
  %i.cu = or i64 %i.bs, %i.at
  store i64 %i.cu, ptr %i.br, align 8, !tbaa !41
  br label %._crit_edge.i45

fb_scount.exit:                                   ; preds = %.lr.ph, %middle.block, %._crit_edge
  %.0.i.i.lcssa170 = phi i64 [ %.0.i9.i, %._crit_edge ], [ %i.cb, %middle.block ], [ %.0.i.i, %.lr.ph ]
  %.029.i.i.lcssa169 = phi i64 [ %i.ax, %._crit_edge ], [ %i.cd, %middle.block ], [ %i.cs, %.lr.ph ]
  %.095.lcssa168 = phi i64 [ %i.bu, %._crit_edge ], [ %i.cn, %middle.block ], [ %i.cr, %.lr.ph ]
  %i.cv = sub nuw nsw i64 64, %.029.i.i.lcssa169
  %i.cw = lshr i64 -1, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.0.i.i.lcssa170
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !41
  %i.cz = and i64 %i.cy, %i.cw
  %i.da = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cz)
  %i.db = add i64 %i.da, %.095.lcssa168           ; 2 uses
  %i.dc = or i64 %i.bs, %i.at
  store i64 %i.dc, ptr %i.br, align 8, !tbaa !41
  br i1 %i.ay, label %fb_assign_visitor.exit.preheader.i50, label %._crit_edge.i45

fb_assign_visitor.exit.preheader.i50:             ; preds = %fb_scount.exit
  %i.dd = shl nuw nsw i64 %i.al, 3
  %i.de = getelementptr i8, ptr %i.bq, i64 %i.dd
  %scevgep.i51 = getelementptr i8, ptr %i.de, i64 8
  %i.df = add nsw i64 %i.ax, -65                  ; 2 uses
  %i.dg = lshr i64 %i.df, 6                       ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i51, i8 -1, i64 %i.di, i1 false), !tbaa !41
  %4 = tail call i64 @llvm.usub.sat.i64(i64 %i.an, i64 64)
  %.neg113 = add nsw i64 %4, -64
  %5 = and i64 %i.df, -64
  %i.dj = sub nsw i64 %.neg113, %5
  %i.dk = add nuw nsw i64 %i.al, 2
  %i.dl = add nuw nsw i64 %i.dk, %i.dg
  br label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %fb_scount.exit.thread, %fb_assign_visitor.exit.preheader.i50, %fb_scount.exit
  %.pn = phi i64 [ %i.db, %fb_scount.exit ], [ %i.db, %fb_assign_visitor.exit.preheader.i50 ], [ %i.bu, %fb_scount.exit.thread ]
  %.029.i.lcssa.i46 = phi i64 [ %i.ax, %fb_scount.exit ], [ %i.dj, %fb_assign_visitor.exit.preheader.i50 ], [ %i.ax, %fb_scount.exit.thread ] ; 2 uses
  %.0.i.lcssa.i47 = phi i64 [ %.0.i9.i, %fb_scount.exit ], [ %i.dl, %fb_assign_visitor.exit.preheader.i50 ], [ %.0.i9.i, %fb_scount.exit.thread ]
  %i.dm = sub i64 %i.a, %.pn
  %.not.i.i48 = icmp eq i64 %.029.i.lcssa.i46, 0
  br i1 %.not.i.i48, label %fb_set_range.exit53, label %fb_assign_visitor.exit4.i49

fb_assign_visitor.exit4.i49:                      ; preds = %._crit_edge.i45
  %i.dn = sub nuw nsw i64 64, %.029.i.lcssa.i46
  %i.do = lshr i64 -1, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.0.i.lcssa.i47 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !41
  %i.dr = or i64 %i.dq, %i.do
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !41
  br label %fb_set_range.exit53

fb_set_range.exit53:                              ; preds = %._crit_edge.i45, %fb_assign_visitor.exit4.i49
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !40
  %i.du = add i64 %i.dm, %i.dt
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !40
  %i.dv = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val39 = load i64, ptr %i.dv, align 8, !tbaa !39
  %i.dw = icmp eq i64 %.289, %.val39
  br i1 %i.dw, label %bb.f, label %bb.i

bb.f:                                             ; preds = %fb_set_range.exit53
  %i.dx = add i64 %.293, %i.a                     ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 512
  br i1 %i.dy, label %.lr.ph133, label %.thread105

.lr.ph133:                                        ; preds = %bb.f, %bb.h
  %.3131 = phi i64 [ %spec.select38, %bb.h ], [ %.030, %bb.f ] ; 4 uses
  %.234130 = phi i64 [ %i.fe, %bb.h ], [ %i.dx, %bb.f ] ; 2 uses
  %i.dz = lshr i64 %.234130, 6                    ; 3 uses
  %i.ea = and i64 %.234130, 63
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dz
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !41
  %i.ed = xor i64 %i.ec, -1
  %notmask.i4.i54 = shl nsw i64 -1, %i.ea
  %.0.i5.i55 = and i64 %notmask.i4.i54, %i.ed     ; 2 uses
  %i.ee = icmp eq i64 %.0.i5.i55, 0
  br i1 %i.ee, label %.lr.ph.i69.preheader, label %bb.g

.lr.ph.i69.preheader:                             ; preds = %.lr.ph133
  %i.ef = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 8
  br i1 %i.eg, label %.thread105, label %.lr.ph210

.lr.ph.i69:                                       ; preds = %.lr.ph210
  %i.eh = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 8
  br i1 %i.ei, label %.thread105, label %.lr.ph210, !llvm.loop !1

.lr.ph210:                                        ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %i.ej = phi i64 [ %i.eh, %.lr.ph.i69 ], [ %i.ef, %.lr.ph.i69.preheader ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !41 ; 2 uses
  %i.em = icmp eq i64 %i.el, -1
  br i1 %i.em, label %.lr.ph.i69, label %._crit_edge.loopexit.i71, !llvm.loop !1

._crit_edge.loopexit.i71:                         ; preds = %.lr.ph210
  %i.en = xor i64 %i.el, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph133, %._crit_edge.loopexit.i71
  %.039.i6.lcssa.i57 = phi i64 [ %i.dz, %.lr.ph133 ], [ %i.ej, %._crit_edge.loopexit.i71 ] ; 4 uses
  %.1.i7.lcssa.i58 = phi i64 [ %.0.i5.i55, %.lr.ph133 ], [ %i.en, %._crit_edge.loopexit.i71 ]
  %i.eo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i7.lcssa.i58, i1 true) ; 2 uses
  %i.ep = shl nuw nsw i64 %.039.i6.lcssa.i57, 6
  %i.eq = or disjoint i64 %i.eo, %i.ep            ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.039.i6.lcssa.i57
  %i.es = load i64, ptr %i.er, align 8, !tbaa !41
  %notmask.i.i60 = shl nsw i64 -1, %i.eo
  %.0.i.i61 = and i64 %i.es, %notmask.i.i60       ; 2 uses
  %i.et = icmp eq i64 %.0.i.i61, 0
  br i1 %i.et, label %.lr.ph19.i67.preheader, label %.loopexit

.lr.ph19.i67.preheader:                           ; preds = %bb.g
  %i.eu = add nuw nsw i64 %.039.i6.lcssa.i57, 1   ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 8
  br i1 %i.ev, label %.loopexit.thread, label %.lr.ph212

.lr.ph19.i67:                                     ; preds = %.lr.ph212
  %i.ew = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 8
  br i1 %i.ex, label %.loopexit.thread, label %.lr.ph212, !llvm.loop !1

.lr.ph212:                                        ; preds = %.lr.ph19.i67.preheader, %.lr.ph19.i67
  %i.ey = phi i64 [ %i.ew, %.lr.ph19.i67 ], [ %i.eu, %.lr.ph19.i67.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !41 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.lr.ph19.i67, label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph212, %bb.g
  %.039.i.lcssa.i63 = phi i64 [ %.039.i6.lcssa.i57, %bb.g ], [ %i.ey, %.lr.ph212 ] ; 2 uses
  %.1.i.lcssa.i64 = phi i64 [ %.0.i.i61, %bb.g ], [ %i.fa, %.lr.ph212 ]
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i.lcssa.i64, i1 true)
  %i.fd = shl nuw nsw i64 %.039.i.lcssa.i63, 6
  %i.fe = or disjoint i64 %i.fc, %i.fd            ; 2 uses
  %i.ff = sub nsw i64 %i.fe, %i.eq                ; 2 uses
  %i.fg = icmp eq i64 %i.ff, %.289
  br i1 %i.fg, label %.thread105, label %bb.h

.loopexit.thread:                                 ; preds = %.lr.ph19.i67.preheader, %.lr.ph19.i67
  %i.fh = sub nsw i64 512, %i.eq                  ; 2 uses
  %i.fi = icmp eq i64 %i.fh, %.289
  br i1 %i.fi, label %.thread105, label %.thread

.thread:                                          ; preds = %.loopexit.thread
  %spec.select38175 = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 %.3131)
  br label %.thread105

bb.h:                                             ; preds = %.loopexit
  %spec.select38 = tail call i64 @llvm.umax.i64(i64 %i.ff, i64 %.3131) ; 2 uses
  %i.fj = icmp ult i64 %.039.i.lcssa.i63, 8
  br i1 %i.fj, label %.lr.ph133, label %.thread105

.thread105:                                       ; preds = %bb.h, %.loopexit, %.lr.ph.i69.preheader, %.lr.ph.i69, %.loopexit.thread, %.thread, %bb.f
  %.6 = phi i64 [ %spec.select38175, %.thread ], [ %.030, %bb.f ], [ %.289, %.loopexit.thread ], [ %.3131, %.lr.ph.i69 ], [ %.289, %.loopexit ], [ %spec.select38, %bb.h ], [ %.3131, %.lr.ph.i69.preheader ]
  store i64 %.6, ptr %i.dv, align 8, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %.thread105, %fb_set_range.exit53
  %.val40 = load ptr, ptr %0, align 8, !tbaa !37
  %i.fk = shl i64 %.293, 12
  %i.fl = getelementptr inbounds nuw i8, ptr %.val40, i64 %i.fk
  ret ptr %i.fl
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @je_hpdata_unreserve(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %.val19 = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = ptrtoint ptr %.val19 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr i64 %i.c, 12                        ; 2 uses
  %i.e = lshr i64 %2, 12                          ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %.val = load i64, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.h = lshr i64 %i.c, 18                        ; 7 uses
  %i.i = and i64 %i.d, 63                         ; 4 uses
  %i.j = add nuw nsw i64 %i.i, %i.e               ; 2 uses
  %i.k = icmp samesign ugt i64 %i.j, 64
  %i.l = sub nuw nsw i64 64, %i.i
  %i.m = select i1 %i.k, i64 %i.l, i64 %i.e       ; 2 uses
  %i.n = sub nsw i64 64, %i.m
  %i.o = lshr i64 -1, %i.n
  %i.p = shl i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.r = xor i64 %i.p, -1
  %i.s = load i64, ptr %i.q, align 8, !tbaa !41
  %i.t = and i64 %i.s, %i.r                       ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !tbaa !41
  %i.u = sub nsw i64 %i.e, %i.m                   ; 3 uses
  %.0.i9.i = add nuw nsw i64 %i.h, 1
  %i.v = icmp ugt i64 %i.u, 64
  br i1 %i.v, label %fb_assign_visitor.exit.preheader.i, label %._crit_edge.i

fb_assign_visitor.exit.preheader.i:               ; preds = %bb.a
  %i.w = shl nuw nsw i64 %i.h, 3
  %i.x = getelementptr i8, ptr %i.g, i64 %i.w
  %scevgep.i = getelementptr i8, ptr %i.x, i64 8
  %i.y = add nsw i64 %i.u, -65                    ; 2 uses
  %i.z = lshr i64 %i.y, 6                         ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ab, i1 false), !tbaa !41
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 64)
  %.neg28 = add nsw i64 %3, -64
  %4 = and i64 %i.y, -64
  %i.ac = sub nsw i64 %.neg28, %4
  %i.ad = add nuw nsw i64 %i.h, 2
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %fb_assign_visitor.exit.preheader.i, %bb.a
  %.029.i.lcssa.i = phi i64 [ %i.u, %bb.a ], [ %i.ac, %fb_assign_visitor.exit.preheader.i ] ; 2 uses
  %.0.i.lcssa.i = phi i64 [ %.0.i9.i, %bb.a ], [ %i.ae, %fb_assign_visitor.exit.preheader.i ]
  %.not.i.i = icmp eq i64 %.029.i.lcssa.i, 0
  br i1 %.not.i.i, label %fb_unset_range.exit, label %fb_assign_visitor.exit4.i

fb_assign_visitor.exit4.i:                        ; preds = %._crit_edge.i
  %i.af = sub nuw nsw i64 64, %.029.i.lcssa.i
  %i.ag = lshr i64 -1, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0.i.lcssa.i ; 2 uses
  %i.ai = xor i64 %i.ag, -1
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.ak = and i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !41
  %.pre = load i64, ptr %i.q, align 8, !tbaa !41
  br label %fb_unset_range.exit

fb_unset_range.exit:                              ; preds = %._crit_edge.i, %fb_assign_visitor.exit4.i
  %i.al = phi i64 [ %i.t, %._crit_edge.i ], [ %.pre, %fb_assign_visitor.exit4.i ]
  %i.am = shl i64 2, %i.i
  %i.an = add i64 %i.am, -1
  %.0.i.i = and i64 %i.al, %i.an                  ; 2 uses
  %i.ao = icmp eq i64 %.0.i.i, 0
  br i1 %i.ao, label %.lr.ph.i.preheader, label %._crit_edge.i20

.lr.ph.i.preheader:                               ; preds = %fb_unset_range.exit
  %i.ap = icmp eq i64 %i.h, 0
  br i1 %i.ap, label %fb_fls.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.aq = icmp eq i64 %i.ar, 0
  br i1 %i.aq, label %fb_fls.exit, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.039.i4.i45 = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ]
  %i.ar = add nsw i64 %.039.i4.i45, -1            ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !41 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i20, !llvm.loop !1

._crit_edge.i20:                                  ; preds = %.lr.ph, %fb_unset_range.exit
  %.039.i.lcssa.i = phi i64 [ %i.h, %fb_unset_range.exit ], [ %i.ar, %.lr.ph ]
  %.1.i.lcssa.i = phi i64 [ %.0.i.i, %fb_unset_range.exit ], [ %i.at, %.lr.ph ]
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i, i1 true)
  %i.aw = shl nuw nsw i64 %.039.i.lcssa.i, 6
  %i.ax = or disjoint i64 %i.av, %i.aw
  %i.ay = xor i64 %i.ax, -64
  br label %fb_fls.exit

fb_fls.exit:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i20
  %.141.i.i = phi i64 [ %i.ay, %._crit_edge.i20 ], [ 0, %.lr.ph.i.preheader ], [ 0, %.lr.ph.i ]
  %i.az = add nsw i64 %i.e, -1
  %i.ba = add nsw i64 %i.az, %i.d                 ; 2 uses
  %i.bb = lshr i64 %i.ba, 6                       ; 3 uses
  %i.bc = and i64 %i.ba, 63
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bb
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !41
  %notmask.i.i = shl nsw i64 -1, %i.bc
  %.0.i.i21 = and i64 %i.be, %notmask.i.i         ; 2 uses
  %i.bf = icmp eq i64 %.0.i.i21, 0
  br i1 %i.bf, label %.lr.ph.i26.preheader, label %._crit_edge.i22

.lr.ph.i26.preheader:                             ; preds = %fb_fls.exit
  %i.bg = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 8
  br i1 %i.bh, label %fb_ffs.exit, label %.lr.ph46

.lr.ph.i26:                                       ; preds = %.lr.ph46
  %i.bi = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 8
  br i1 %i.bj, label %fb_ffs.exit, label %.lr.ph46, !llvm.loop !1

.lr.ph46:                                         ; preds = %.lr.ph.i26.preheader, %.lr.ph.i26
  %i.bk = phi i64 [ %i.bi, %.lr.ph.i26 ], [ %i.bg, %.lr.ph.i26.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !41 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i26, label %._crit_edge.i22, !llvm.loop !1

._crit_edge.i22:                                  ; preds = %.lr.ph46, %fb_fls.exit
  %.039.i.lcssa.i23 = phi i64 [ %i.bb, %fb_fls.exit ], [ %i.bk, %.lr.ph46 ]
  %.1.i.lcssa.i24 = phi i64 [ %.0.i.i21, %fb_fls.exit ], [ %i.bm, %.lr.ph46 ]
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i.lcssa.i24, i1 true)
  %i.bp = shl i64 %.039.i.lcssa.i23, 6
  %i.bq = or disjoint i64 %i.bo, %i.bp
  br label %fb_ffs.exit

fb_ffs.exit:                                      ; preds = %.lr.ph.i26, %.lr.ph.i26.preheader, %._crit_edge.i22
  %.141.i.i25 = phi i64 [ %i.bq, %._crit_edge.i22 ], [ 512, %.lr.ph.i26.preheader ], [ 512, %.lr.ph.i26 ]
  %i.br = add i64 %.141.i.i25, %.141.i.i          ; 2 uses
  %i.bs = icmp ugt i64 %i.br, %.val
  br i1 %i.bs, label %bb.b, label %bb.c

bb.b:                                             ; preds = %fb_ffs.exit
  store i64 %i.br, ptr %i.f, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %fb_ffs.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !42
  %i.bv = sub i64 %i.bu, %i.e
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !42
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @je_hpdata_purge_begin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 8), (16, 88)) %1, ptr nofree noundef captures(none) initializes((0, 8)) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i64], align 16               ; 16 uses
  store i64 0, ptr %1, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.b, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load <2 x i64>, ptr %i.c, align 8, !tbaa !41
  %i.l = xor <2 x i64> %i.k, splat (i64 -1)
  %i.m = load <2 x i64>, ptr %i.j, align 8, !tbaa !41
  %i.n = and <2 x i64> %i.m, %i.l
  store <2 x i64> %i.n, ptr %i.a, align 16, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load <2 x i64>, ptr %i.d, align 8, !tbaa !41
  %i.q = xor <2 x i64> %i.p, splat (i64 -1)
  %i.r = load <2 x i64>, ptr %i.o, align 8, !tbaa !41
  %i.s = and <2 x i64> %i.r, %i.q
  store <2 x i64> %i.s, ptr %i.e, align 16, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = load <2 x i64>, ptr %i.f, align 8, !tbaa !41
  %i.v = xor <2 x i64> %i.u, splat (i64 -1)
  %i.w = load <2 x i64>, ptr %i.t, align 8, !tbaa !41
  %i.x = and <2 x i64> %i.w, %i.v
  store <2 x i64> %i.x, ptr %i.g, align 16, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.z = load <2 x i64>, ptr %i.h, align 8, !tbaa !41
  %i.aa = xor <2 x i64> %i.z, splat (i64 -1)
  %i.ab = load <2 x i64>, ptr %i.y, align 8, !tbaa !41
  %i.ac = and <2 x i64> %i.ab, %i.aa
  store <2 x i64> %i.ac, ptr %i.i, align 16, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i8 0, i64 64, i1 false)
  store i64 0, ptr %2, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.052 = phi i64 [ 0, %bb.a ], [ %i.eh, %bb.d ]  ; 2 uses
  %i.ae = lshr i64 %.052, 6                       ; 9 uses
  %i.af = and i64 %.052, 63
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !41
  %notmask.i.i = shl nsw i64 -1, %i.af
  %.0.i.i = and i64 %i.ah, %notmask.i.i           ; 2 uses
  %i.ai = icmp eq i64 %.0.i.i, 0
  br i1 %i.ai, label %.lr.ph.i.preheader, label %fb_ffs.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.aj = add nuw nsw i64 %i.ae, 1                ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 8
  br i1 %i.ak, label %.thread, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.al = add nuw nsw i64 %i.ae, 2                ; 3 uses
  %i.am = icmp eq i64 %i.al, 8
  br i1 %i.am, label %.thread, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.al
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.1, label %fb_ffs.exit, !llvm.loop !1

.lr.ph.i.1:                                       ; preds = %.lr.ph.1
  %i.aq = add nuw nsw i64 %i.ae, 3                ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 8
  br i1 %i.ar, label %.thread, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.i.1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !41 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.2, label %fb_ffs.exit, !llvm.loop !1

.lr.ph.i.2:                                       ; preds = %.lr.ph.2
  %i.av = add nuw nsw i64 %i.ae, 4                ; 3 uses
  %i.aw = icmp eq i64 %i.av, 8
  br i1 %i.aw, label %.thread, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.i.2
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !41 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.3, label %fb_ffs.exit, !llvm.loop !1

.lr.ph.i.3:                                       ; preds = %.lr.ph.3
  %i.ba = add nuw nsw i64 %i.ae, 5                ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 8
  br i1 %i.bb, label %.thread, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.i.3
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ba
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.4, label %fb_ffs.exit, !llvm.loop !1

.lr.ph.i.4:                                       ; preds = %.lr.ph.4
  %i.bf = add nuw nsw i64 %i.ae, 6                ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 8
  br i1 %i.bg, label %.thread, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.i.4
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.5, label %fb_ffs.exit, !llvm.loop !1

.lr.ph.i.5:                                       ; preds = %.lr.ph.5
  %i.bk = add nuw nsw i64 %i.ae, 7                ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 8
  br i1 %i.bl, label %.thread, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.i.5
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bk
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !41 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.thread, label %fb_ffs.exit, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.preheader
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aj
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !41 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i, label %fb_ffs.exit, !llvm.loop !1

fb_ffs.exit:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %bb.b
  %.039.i.lcssa.i = phi i64 [ %i.ae, %bb.b ], [ %i.aj, %.lr.ph ], [ %i.al, %.lr.ph.1 ], [ %i.aq, %.lr.ph.2 ], [ %i.av, %.lr.ph.3 ], [ %i.ba, %.lr.ph.4 ], [ %i.bf, %.lr.ph.5 ], [ %i.bk, %.lr.ph.6 ] ; 2 uses
  %.1.i.lcssa.i = phi i64 [ %.0.i.i, %bb.b ], [ %i.bq, %.lr.ph ], [ %i.ao, %.lr.ph.1 ], [ %i.at, %.lr.ph.2 ], [ %i.ay, %.lr.ph.3 ], [ %i.bd, %.lr.ph.4 ], [ %i.bi, %.lr.ph.5 ], [ %i.bn, %.lr.ph.6 ]
  %i.bs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i.lcssa.i, i1 true) ; 5 uses
  %i.bt = shl i64 %.039.i.lcssa.i, 6
  %i.bu = or disjoint i64 %i.bs, %i.bt            ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 512
  br i1 %i.bv, label %.thread, label %bb.c

bb.c:                                             ; preds = %fb_ffs.exit
  %i.bw = and i64 %.039.i.lcssa.i, 288230376151711743 ; 7 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !41
  %notmask.i.i25 = shl nsw i64 -1, %i.bs
  %.0.i.i26 = and i64 %i.by, %notmask.i.i25       ; 2 uses
  %i.bz = icmp eq i64 %.0.i.i26, 0
  br i1 %i.bz, label %.lr.ph.i31.preheader, label %._crit_edge.i27

.lr.ph.i31.preheader:                             ; preds = %bb.c
  %i.ca = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 8
  br i1 %i.cb, label %fb_ffs.exit33, label %.lr.ph78

.lr.ph.i31:                                       ; preds = %.lr.ph78
  %i.cc = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 8
  br i1 %i.cd, label %fb_ffs.exit33, label %.lr.ph78, !llvm.loop !1

.lr.ph78:                                         ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31
  %i.ce = phi i64 [ %i.cc, %.lr.ph.i31 ], [ %i.ca, %.lr.ph.i31.preheader ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !41 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i31, label %._crit_edge.i27, !llvm.loop !1

._crit_edge.i27:                                  ; preds = %.lr.ph78, %bb.c
  %.039.i.lcssa.i28 = phi i64 [ %i.bw, %bb.c ], [ %i.ce, %.lr.ph78 ]
  %.1.i.lcssa.i29 = phi i64 [ %.0.i.i26, %bb.c ], [ %i.cg, %.lr.ph78 ]
  %i.ci = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i.lcssa.i29, i1 true)
  %i.cj = shl i64 %.039.i.lcssa.i28, 6
  %i.ck = or disjoint i64 %i.ci, %i.cj
  br label %fb_ffs.exit33

fb_ffs.exit33:                                    ; preds = %.lr.ph.i31, %.lr.ph.i31.preheader, %._crit_edge.i27
  %.141.i.i30 = phi i64 [ %i.ck, %._crit_edge.i27 ], [ 512, %.lr.ph.i31.preheader ], [ 512, %.lr.ph.i31 ] ; 2 uses
  %i.cl = add i64 %.141.i.i30, -1                 ; 2 uses
  %i.cm = lshr i64 %i.cl, 6                       ; 4 uses
  %i.cn = and i64 %i.cl, 63
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cm
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !41
  %i.cq = shl i64 2, %i.cn
  %i.cr = add i64 %i.cq, -1
  %.0.i.i34 = and i64 %i.cr, %i.cp                ; 2 uses
  %i.cs = icmp eq i64 %.0.i.i34, 0
  br i1 %i.cs, label %.lr.ph.i39.preheader, label %._crit_edge.i35

.lr.ph.i39.preheader:                             ; preds = %fb_ffs.exit33
  %i.ct = icmp eq i64 %i.cm, 0
  br i1 %i.ct, label %fb_fls.exit, label %.lr.ph80

.lr.ph.i39:                                       ; preds = %.lr.ph80
  %i.cu = icmp eq i64 %i.cv, 0
  br i1 %i.cu, label %fb_fls.exit, label %.lr.ph80, !llvm.loop !1

.lr.ph80:                                         ; preds = %.lr.ph.i39.preheader, %.lr.ph.i39
  %.039.i4.i4079 = phi i64 [ %i.cv, %.lr.ph.i39 ], [ %i.cm, %.lr.ph.i39.preheader ]
  %i.cv = add nsw i64 %.039.i4.i4079, -1          ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !41 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i39, label %._crit_edge.i35, !llvm.loop !1

._crit_edge.i35:                                  ; preds = %.lr.ph80, %fb_ffs.exit33
  %.039.i.lcssa.i36 = phi i64 [ %i.cm, %fb_ffs.exit33 ], [ %i.cv, %.lr.ph80 ]
  %.1.i.lcssa.i37 = phi i64 [ %.0.i.i34, %fb_ffs.exit33 ], [ %i.cx, %.lr.ph80 ]
  %i.cz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.1.i.lcssa.i37, i1 true)
  %i.da = shl nuw i64 %.039.i.lcssa.i36, 6
  %i.db = or disjoint i64 %i.cz, %i.da
  %i.dc = xor i64 %i.db, 63
  br label %fb_fls.exit

fb_fls.exit:                                      ; preds = %.lr.ph.i39, %.lr.ph.i39.preheader, %._crit_edge.i35
  %.141.i.i38 = phi i64 [ %i.dc, %._crit_edge.i35 ], [ -1, %.lr.ph.i39.preheader ], [ -1, %.lr.ph.i39 ]
  %i.dd = sub i64 %.141.i.i38, %i.bu
  %i.de = add i64 %i.dd, 1                        ; 3 uses
  %i.df = add i64 %i.de, %i.bs                    ; 2 uses
  %i.dg = icmp ugt i64 %i.df, 64
  %i.dh = sub nuw nsw i64 64, %i.bs
  %i.di = select i1 %i.dg, i64 %i.dh, i64 %i.de   ; 2 uses
  %i.dj = sub i64 64, %i.di
  %i.dk = lshr i64 -1, %i.dj
  %i.dl = shl i64 %i.dk, %i.bs
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bw ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !41
  %i.do = or i64 %i.dl, %i.dn
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !41
  %i.dp = sub i64 %i.de, %i.di                    ; 3 uses
  %.0.i9.i = add nuw nsw i64 %i.bw, 1
  %i.dq = icmp ugt i64 %i.dp, 64
  br i1 %i.dq, label %fb_assign_visitor.exit.preheader.i, label %._crit_edge.i41

fb_assign_visitor.exit.preheader.i:               ; preds = %fb_fls.exit
  %i.dr = shl nuw nsw i64 %i.bw, 3
  %i.ds = getelementptr i8, ptr %i.ad, i64 %i.dr
  %scevgep.i = getelementptr i8, ptr %i.ds, i64 8
  %i.dt = add i64 %i.dp, -65                      ; 2 uses
  %i.du = lshr i64 %i.dt, 6                       ; 2 uses
  %i.dv = shl nuw nsw i64 %i.du, 3
  %i.dw = add nuw nsw i64 %i.dv, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 -1, i64 %i.dw, i1 false), !tbaa !41
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %i.df, i64 64)
  %.neg45 = add i64 %3, -64
  %4 = and i64 %i.dt, -64
  %i.dx = sub i64 %.neg45, %4
  %i.dy = add nuw nsw i64 %i.bw, 2
  %i.dz = add nuw nsw i64 %i.dy, %i.du
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %fb_assign_visitor.exit.preheader.i, %fb_fls.exit
  %.029.i.lcssa.i = phi i64 [ %i.dp, %fb_fls.exit ], [ %i.dx, %fb_assign_visitor.exit.preheader.i ] ; 2 uses
  %.0.i.lcssa.i = phi i64 [ %.0.i9.i, %fb_fls.exit ], [ %i.dz, %fb_assign_visitor.exit.preheader.i ]
  %.not.i.i = icmp eq i64 %.029.i.lcssa.i, 0
  br i1 %.not.i.i, label %bb.d, label %fb_assign_visitor.exit4.i

fb_assign_visitor.exit4.i:                        ; preds = %._crit_edge.i41
  %i.ea = sub nuw nsw i64 64, %.029.i.lcssa.i
  %i.eb = lshr i64 -1, %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0.i.lcssa.i ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !41
  %i.ee = or i64 %i.ed, %i.eb
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %fb_assign_visitor.exit4.i, %._crit_edge.i41
  %i.ef = load i64, ptr %2, align 8, !tbaa !41
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %2, align 8, !tbaa !41
  %i.eh = add i64 %.141.i.i30, 1                  ; 2 uses
  %i.ei = icmp ult i64 %i.eh, 512
  br i1 %i.ei, label %bb.b, label %.thread

.thread:                                          ; preds = %fb_ffs.exit, %bb.d, %.lr.ph.i.preheader, %.lr.ph.6, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.em = load i64, ptr %i.el, align 8, !tbaa !42
  %i.en = sub i64 %i.ek, %i.em                    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %i.en
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @je_hpdata_purge_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = icmp eq i64 %i.b, 512
  br i1 %i.c, label %fb_srange_iter.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = lshr i64 %i.b, 6                         ; 3 uses
  %i.f = and i64 %i.b, 63
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %notmask.i4.i = shl nsw i64 -1, %i.f
  %.0.i5.i = and i64 %i.h, %notmask.i4.i          ; 2 uses
  %i.i = icmp eq i64 %.0.i5.i, 0
  br i1 %i.i, label %.lr.ph.i.preheader, label %fb_find_impl.exit10.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.j = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.k = icmp eq i64 %i.j, 8
  br i1 %i.k, label %fb_srange_iter.exit.thread, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.l = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.m = icmp eq i64 %i.l, 8
  br i1 %i.m, label %fb_srange_iter.exit.thread, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.n = phi i64 [ %i.l, %.lr.ph.i ], [ %i.j, %.lr.ph.i.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %fb_find_impl.exit10.i, !llvm.loop !1

fb_find_impl.exit10.i:                            ; preds = %.lr.ph, %bb.b
  %.039.i6.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %.lr.ph ] ; 2 uses
  %.1.i7.lcssa.i = phi i64 [ %.0.i5.i, %bb.b ], [ %i.p, %.lr.ph ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i7.lcssa.i, i1 true) ; 2 uses
  %i.s = shl i64 %.039.i6.lcssa.i, 6
  %i.t = or disjoint i64 %i.r, %i.s               ; 3 uses
  %.not.i = icmp eq i64 %i.t, 512
  br i1 %.not.i, label %fb_srange_iter.exit.thread, label %bb.c

bb.c:                                             ; preds = %fb_find_impl.exit10.i
  %i.u = and i64 %.039.i6.lcssa.i, 288230376151711743 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !41
  %i.x = xor i64 %i.w, -1
  %notmask.i.i = shl nsw i64 -1, %i.r
  %.0.i.i = and i64 %notmask.i.i, %i.x            ; 2 uses
  %i.y = icmp eq i64 %.0.i.i, 0
  br i1 %i.y, label %.lr.ph19.i.preheader, label %._crit_edge.i

.lr.ph19.i.preheader:                             ; preds = %bb.c
  %i.z = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.aa = icmp eq i64 %i.z, 8
  br i1 %i.aa, label %.loopexit, label %.lr.ph35

.lr.ph19.i:                                       ; preds = %.lr.ph35
  %i.ab = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 8
  br i1 %i.ac, label %.loopexit, label %.lr.ph35, !llvm.loop !1

.lr.ph35:                                         ; preds = %.lr.ph19.i.preheader, %.lr.ph19.i
  %i.ad = phi i64 [ %i.ab, %.lr.ph19.i ], [ %i.z, %.lr.ph19.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %.lr.ph19.i, label %._crit_edge.loopexit.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph35
  %i.ah = xor i64 %i.af, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %.039.i.lcssa.i = phi i64 [ %i.u, %bb.c ], [ %i.ad, %._crit_edge.loopexit.i ]
  %.1.i.lcssa.i = phi i64 [ %.0.i.i, %bb.c ], [ %i.ah, %._crit_edge.loopexit.i ]
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i.lcssa.i, i1 true)
  %i.aj = shl i64 %.039.i.lcssa.i, 6
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %.040.i.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 512)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph19.i, %.lr.ph19.i.preheader, %._crit_edge.i
  %.141.i.i = phi i64 [ %.040.i.i, %._crit_edge.i ], [ 512, %.lr.ph19.i.preheader ], [ 512, %.lr.ph19.i ] ; 2 uses
  %i.al = sub nsw i64 %.141.i.i, %i.t             ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !37
  %i.am = shl i64 %i.t, 12
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %i.am
  store ptr %i.an, ptr %2, align 8, !tbaa !34
  %i.ao = shl i64 %i.al, 12
  store i64 %i.ao, ptr %3, align 8, !tbaa !41
  store i64 %.141.i.i, ptr %i.a, align 8, !tbaa !45
  %i.ap = load i64, ptr %1, align 8, !tbaa !44
  %i.aq = add i64 %i.ap, %i.al
  store i64 %i.aq, ptr %1, align 8, !tbaa !44
  br label %fb_srange_iter.exit.thread

fb_srange_iter.exit.thread:                       ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %fb_find_impl.exit10.i, %.loopexit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.loopexit ], [ false, %fb_find_impl.exit10.i ], [ false, %.lr.ph.i.preheader ], [ false, %.lr.ph.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @je_hpdata_purge_end(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load <2 x i64>, ptr %i.a, align 8, !tbaa !41
  %i.d = xor <2 x i64> %i.c, splat (i64 -1)       ; 2 uses
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !41
  %i.h = xor <2 x i64> %i.g, splat (i64 -1)
  store <2 x i64> %i.h, ptr %i.e, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !41
  %i.l = xor <2 x i64> %i.k, splat (i64 -1)
  store <2 x i64> %i.l, ptr %i.i, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !41
  %i.p = xor <2 x i64> %i.o, splat (i64 -1)
  store <2 x i64> %i.p, ptr %i.m, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41
  %i.s = extractelement <2 x i64> %i.d, i64 0
  %i.t = and i64 %i.r, %i.s
  store i64 %i.t, ptr %i.q, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41
  %i.w = load i64, ptr %i.b, align 8, !tbaa !41
  %i.x = and i64 %i.w, %i.v
  store i64 %i.x, ptr %i.u, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !41
  %i.ab = and i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !41
  %i.af = and i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !41
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !41
  %i.aj = and i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41
  %i.am = load i64, ptr %i.j, align 8, !tbaa !41
  %i.an = and i64 %i.am, %i.al
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !41
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !41
  %i.ar = and i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !41
  %i.au = load i64, ptr %i.n, align 8, !tbaa !41
  %i.av = and i64 %i.au, %i.at
  store i64 %i.av, ptr %i.as, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !40
  %i.ba = sub i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_hpdata_hugify(ptr nofree noundef writeonly captures(none) initializes((16, 17), (176, 248)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 -1, i64 64, i1 false)
  store i64 512, ptr %i.c, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_hpdata_dehugify(ptr nofree noundef writeonly captures(none) initializes((16, 17)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"long", !10, i64 0}
!16 = !{!"ph_s", !14, i64 0, !15, i64 8}
!17 = !{!16, !14, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!"phn_link_s", !14, i64 0, !14, i64 8, !14, i64 16}
!20 = !{!19, !14, i64 8}
!21 = !{!19, !14, i64 0}
!22 = !{!"_Bool", !10, i64 0}
!23 = !{!"", !15, i64 0}
!24 = !{!"p1 _ZTS8hpdata_s", !14, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 8}
!26 = !{!"hpdata_s", !14, i64 0, !15, i64 8, !22, i64 16, !22, i64 17, !22, i64 18, !22, i64 19, !22, i64 20, !23, i64 24, !22, i64 32, !22, i64 33, !22, i64 34, !22, i64 35, !22, i64 36, !10, i64 40, !25, i64 64, !25, i64 80, !15, i64 96, !15, i64 104, !10, i64 112, !15, i64 176, !10, i64 184, !23, i64 248, !22, i64 256}
!27 = !{!26, !15, i64 8}
!28 = !{!19, !14, i64 16}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"short", !10, i64 0}
!31 = !{!"ph_enumerate_vars_s", !30, i64 0, !30, i64 2, !30, i64 4, !30, i64 6, !30, i64 8, !30, i64 10}
!32 = !{!31, !30, i64 8}
!33 = !{!31, !30, i64 10}
!34 = !{!14, !14, i64 0}
!35 = !{!31, !30, i64 2}
!36 = !{!31, !30, i64 4}
!37 = !{!26, !14, i64 0}
!38 = !{!26, !22, i64 16}
!39 = !{!26, !15, i64 96}
!40 = !{!26, !15, i64 176}
!41 = !{!15, !15, i64 0}
!42 = !{!26, !15, i64 104}
!43 = !{!"hpdata_purge_state_s", !15, i64 0, !15, i64 8, !10, i64 16, !15, i64 80}
!44 = !{!43, !15, i64 0}
!45 = !{!43, !15, i64 80}
!46 = !{!43, !15, i64 8}
!47 = distinct !{!47, !29, !48}
!48 = !{!"llvm.loop.unswitch.partial.disable"}
!49 = !{!31, !30, i64 6}
!50 = !{!31, !30, i64 0}
!51 = !{!22, !22, i64 0}
!52 = !{!26, !22, i64 256}
!53 = distinct !{!53, !29, !55, !56}
!54 = distinct !{!54, !29, !56, !55}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
