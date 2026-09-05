Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN4core5slice4sort6stable5drift4sort17h2417c0acf6d037c5E:bb.a
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h41bd437514532a18E.exit.i.thread92: ; preds = %.preheader
  br i1 %.not5.i94, label %bb.g, label %.thread95

_ZN4core5slice4sort6shared17find_existing_run17h41bd437514532a18E.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i88, label %bb.g, label %.thread

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h41bd437514532a18E.exit.i
  br i1 %i.p, label %.thread95, label %.thread

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.ab = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he43418f4804f8cf8E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h89d7f60056932a3aE(ptr noalias noundef nonnull align 16 %i.m, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3147
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he43418f4804f8cf8E.exit

.thread:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h41bd437514532a18E.exit.i.thread, %bb.h, %.thread95, %bb.l
  %.sroa.0.0.i.i4447 = phi i64 [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i8997, %.thread95 ], [ %i.l, %bb.h ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h41bd437514532a18E.exit.i.thread ]
  %i.ae = shl i64 %.sroa.0.0.i.i4447, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he43418f4804f8cf8E.exit

.thread95:                                        ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h41bd437514532a18E.exit.i.thread92, %bb.l
  %.sroa.0.0.i.i8997 = phi i64 [ %.sroa.0.0.i.i, %bb.l ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h41bd437514532a18E.exit.i.thread92 ] ; 2 uses
  tail call fastcc void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb5f0eb5b0b2ab0dcE"(ptr noalias noundef nonnull align 16 %i.m, i64 noundef %.sroa.0.0.i.i8997), !noalias !3160, !inline_history !3147
  br label %.thread

_ZN4core5slice4sort6stable5drift10create_run17he43418f4804f8cf8E.exit: ; preds = %bb.m, %bb.n, %.thread
  %.sroa.0.0.i34 = phi i64 [ %i.af, %.thread ], [ %i.ad, %bb.n ], [ %i.ab, %bb.m ] ; 2 uses
  %i.ag = lshr i64 %.sroa.018.0, 1
  %i.ah = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ai = sub i64 %factor, %i.ag
  %i.aj = add i64 %i.ah, %factor
  %i.ak = mul i64 %i.ai, %.sroa.0.0
  %i.al = mul i64 %i.aj, %.sroa.0.0
  %i.am = xor i64 %i.al, %i.ak
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 false)
  %i.ao = trunc nuw nsw i64 %i.an to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17he43418f4804f8cf8E.exit
  %.sroa.026.0 = phi i8 [ %i.ao, %_ZN4core5slice4sort6stable5drift10create_run17he43418f4804f8cf8E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17he43418f4804f8cf8E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.ap = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ap, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph64, %_ZN4core5slice4sort6stable5drift13logical_merge17hb2131246c77963dbE.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.ar, %_ZN4core5slice4sort6stable5drift13logical_merge17hb2131246c77963dbE.exit ] ; 2 uses
  %.sroa.018.162 = phi i64 [ %.sroa.018.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb2131246c77963dbE.exit ] ; 4 uses
  %i.ar = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !17
  %.not29 = icmp ult i8 %i.at, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hb2131246c77963dbE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.162, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb2131246c77963dbE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.163, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hb2131246c77963dbE.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.av, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ar
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !17 ; 3 uses
  %i.ay = lshr i64 %i.ax, 1                       ; 8 uses
  %i.az = lshr i64 %.sroa.018.162, 1              ; 6 uses
  %i.ba = add nuw i64 %i.ay, %i.az                ; 4 uses
  %i.bb = sub i64 %.sroa.09.0, %i.ba
  %i.bc = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %i.bb ; 6 uses
  %i.bd = icmp ugt i64 %i.ba, %3
  %i.be = trunc i64 %.sroa.018.162 to i1
  %i.bf = or i64 %i.ax, %.sroa.018.162
  %i.bg = trunc i64 %i.bf to i1
  %or.cond3.i = or i1 %i.bd, %i.bg
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = trunc i64 %i.ax to i1
  br i1 %i.bh, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bi = shl i64 %i.ba, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb2131246c77963dbE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.be, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.bj = or i64 %i.ay, 1
  %i.bk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bj, i1 true)
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 1
  %i.bn = xor i32 %i.bm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h89d7f60056932a3aE(ptr noalias noundef nonnull align 16 %i.bc, i64 noundef %i.ay, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.bn, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3148
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit35": ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw [128 x i8], ptr %i.bc, i64 %i.ay
  %i.bp = or i64 %i.az, 1
  %i.bq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h89d7f60056932a3aE(ptr noalias noundef nonnull align 16 %i.bo, i64 noundef %i.az, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.bt, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3148
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit35", %bb.t
  %i.bu = icmp eq i64 %i.ay, 0
  %i.bv = icmp eq i64 %i.az, 0
  %or.cond.i = or i1 %i.bv, %i.bu
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h34811e3832f818bfE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.az, i64 range(i64 0, -9223372036854775808) %i.ay) ; 2 uses
  %i.bw = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.bw, label %_ZN4core5slice4sort6stable5merge5merge17h34811e3832f818bfE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw [128 x i8], ptr %i.bc, i64 %i.ay ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ay, %i.az  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.bx, ptr %i.bc
  %i.by = shl i64 %.sroa.0.0.i.i36, 7             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %.16.i, i64 %i.by, i1 false), !alias.scope !3161
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.ca = phi ptr [ %i.ck, %.preheader.i ], [ %i.bz, %bb.x ]
  %i.cb = phi ptr [ %i.ci, %.preheader.i ], [ %i.bx, %bb.x ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ce, %.preheader.i ], [ %i.aq, %bb.x ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -128 ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 -128 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -128 ; 2 uses
  %i.cf = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h444883732a9a7648E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.cd, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.cc), !noalias !3162 ; 3 uses
  %..i.i = select i1 %i.cf, ptr %i.cc, ptr %i.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ce, ptr noundef nonnull align 16 dereferenceable(128) %..i.i, i64 128, i1 false), !alias.scope !3161, !noalias !3162
  %i.cg = xor i1 %i.cf, true
  %i.ch = zext i1 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %i.cc, i64 %i.ch ; 3 uses
  %i.cj = zext i1 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [128 x i8], ptr %i.cd, i64 %i.cj ; 3 uses
  %i.cl = icmp eq ptr %i.ci, %i.bc
  %i.cm = icmp eq ptr %i.ck, %2
  %or.cond.i.i = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he4de27c7471dc0c5E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.cn = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.bc, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.bx, %bb.x ] ; 3 uses
  %i.co = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %2, %bb.x ] ; 3 uses
  %i.cp = tail call fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h444883732a9a7648E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.02.i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.co), !noalias !3163 ; 3 uses
  %i.cq = xor i1 %i.cp, true
  %spec.select.i.i = select i1 %i.cp, ptr %.sroa.0.02.i.i, ptr %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.cn, ptr noundef nonnull align 16 dereferenceable(128) %spec.select.i.i, i64 128, i1 false), !alias.scope !3161, !noalias !3163
  %i.cr = zext i1 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [128 x i8], ptr %i.co, i64 %i.cr ; 3 uses
  %i.ct = zext i1 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.02.i.i, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 128 ; 2 uses
  %i.cw = icmp ne ptr %i.cs, %i.bz
  %i.cx = icmp ne ptr %i.cu, %i.aq
  %or.cond.i19.i = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he4de27c7471dc0c5E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he4de27c7471dc0c5E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.ci, %.preheader.i ], [ %i.cv, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.bz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cs, %.lr.ph.i.i ] ; 2 uses
  %i.cy = ptrtoint ptr %.sroa.7.0.i to i64
  %i.cz = ptrtoint ptr %.sroa.0.1.i to i64
  %i.da = sub nuw i64 %i.cy, %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.13.1.i, ptr align 16 %.sroa.0.1.i, i64 %i.da, i1 false), !alias.scope !3161, !noalias !3164
  br label %_ZN4core5slice4sort6stable5merge5merge17h34811e3832f818bfE.exit

_ZN4core5slice4sort6stable5merge5merge17h34811e3832f818bfE.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17he4de27c7471dc0c5E.exit.i"
  %i.db = shl i64 %i.ba, 1
  %i.dc = or disjoint i64 %i.db, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb2131246c77963dbE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hb2131246c77963dbE.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h34811e3832f818bfE.exit
  %.sroa.0.0.i = phi i64 [ %i.dc, %_ZN4core5slice4sort6stable5merge5merge17h34811e3832f818bfE.exit ], [ %i.bi, %bb.s ] ; 2 uses
  %i.dd = icmp ugt i64 %i.ar, 1
  br i1 %i.dd, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.de = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.df = lshr i64 %.sroa.023.0, 1
  %i.dg = add i64 %i.df, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dh = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dh, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.di = or i64 %1, 1
  %i.dj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h89d7f60056932a3aE(ptr noalias noundef nonnull align 16 %0, i64 noundef %1, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.dm, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3148
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h3a82085ecda5878cE(ptr noalias noundef nonnull align 16 %0, i64 noundef %1, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i100 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i106 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ad ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eh, %bb.ad ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ef, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit", label %bb.r

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread104, %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit"
  br i1 %4, label %bb.q, label %bb.p

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.p = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.m), !noalias !3181 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.j, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit43"

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.t = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.r, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.s), !noalias !3181
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit43"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit43": ; preds = %bb.i, %bb.j
  %.sroa.02.0.i.i42 = phi i8 [ %i.t, %bb.j ], [ %i.p, %bb.i ]
  %i.u = icmp eq i8 %.sroa.02.0.i.i42, -1         ; 2 uses
  %.not73 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.u, label %.preheader, label %.preheader53

.preheader53:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit43"
  br i1 %.not73, label %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit43"
  br i1 %.not73, label %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread104, label %.lr.ph61

.lr.ph:                                           ; preds = %.preheader53, %bb.l
  %.sroa.01.0.i.i58 = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader53 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.0.i.i58 ; 2 uses
  %i.w = add i64 %.sroa.01.0.i.i58, -1            ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.l
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %i.w ; 2 uses
  %i.z = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.y), !noalias !3181 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.k, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit41"

bb.k:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ad = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ac), !noalias !3181
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit41"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit41": ; preds = %.lr.ph, %bb.k
  %.sroa.02.0.i.i40 = phi i8 [ %i.ad, %bb.k ], [ %i.z, %.lr.ph ]
  %i.ae = icmp eq i8 %.sroa.02.0.i.i40, -1
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i, label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit41"
  %i.af = add nuw i64 %.sroa.01.0.i.i58, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i, label %.lr.ph

.lr.ph61:                                         ; preds = %.preheader, %bb.n
  %.sroa.01.1.i.i60 = phi i64 [ %i.aq, %bb.n ], [ 2, %.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.1.i.i60 ; 2 uses
  %i.ah = add i64 %.sroa.01.1.i.i60, -1           ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.l
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %i.ah ; 2 uses
  %i.ak = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.ag, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.aj), !noalias !3181 ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.m, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit"

bb.m:                                             ; preds = %.lr.ph61
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ao = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.am, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.an), !noalias !3181
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit": ; preds = %.lr.ph61, %bb.m
  %.sroa.02.0.i.i = phi i8 [ %i.ao, %bb.m ], [ %i.ak, %.lr.ph61 ]
  %i.ap = icmp eq i8 %.sroa.02.0.i.i, -1
  br i1 %i.ap, label %bb.n, label %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i

bb.n:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit"
  %i.aq = add nuw i64 %.sroa.01.1.i.i60, 1        ; 2 uses
  %exitcond81.not = icmp eq i64 %i.aq, %i.l
  br i1 %exitcond81.not, label %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i, label %.lr.ph61

_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i: ; preds = %bb.l, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit41", %bb.n, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit"
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i60, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit" ], [ %i.l, %bb.n ], [ %.sroa.01.0.i.i58, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit41" ], [ %i.l, %bb.l ] ; 4 uses
  %i.ar = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.o

_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread104: ; preds = %.preheader
  br i1 %.not5.i106, label %bb.g, label %.thread107

_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i100, label %bb.g, label %.thread

bb.o:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i
  br i1 %i.u, label %.thread107, label %.thread

bb.p:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.as = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb91316d575fd8e08E.exit

bb.q:                                             ; preds = %bb.g
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h280d73b111e35b8dE(ptr noalias noundef nonnull align 16 %i.m, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3168
  %i.at = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb91316d575fd8e08E.exit

.thread:                                          ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread, %bb.h, %.thread107, %bb.o
  %.sroa.0.0.i.i4851 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ %.sroa.0.0.i.i101109, %.thread107 ], [ %i.l, %bb.h ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread ]
  %i.av = shl i64 %.sroa.0.0.i.i4851, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb91316d575fd8e08E.exit

.thread107:                                       ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread104, %bb.o
  %.sroa.0.0.i.i101109 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h655ade9a9cf9691fE.exit.i.thread104 ] ; 2 uses
  tail call fastcc void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb5f0eb5b0b2ab0dcE"(ptr noalias noundef nonnull align 16 %i.m, i64 noundef %.sroa.0.0.i.i101109), !noalias !3181, !inline_history !3168
  br label %.thread

_ZN4core5slice4sort6stable5drift10create_run17hb91316d575fd8e08E.exit: ; preds = %bb.p, %bb.q, %.thread
  %.sroa.0.0.i34 = phi i64 [ %i.aw, %.thread ], [ %i.au, %bb.q ], [ %i.as, %bb.p ] ; 2 uses
  %i.ax = lshr i64 %.sroa.018.0, 1
  %i.ay = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.az = sub i64 %factor, %i.ax
  %i.ba = add i64 %i.ay, %factor
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false)
  %i.bf = trunc nuw nsw i64 %i.be to i8
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hb91316d575fd8e08E.exit
  %.sroa.026.0 = phi i8 [ %i.bf, %_ZN4core5slice4sort6stable5drift10create_run17hb91316d575fd8e08E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hb91316d575fd8e08E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bg = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bg, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph66, %_ZN4core5slice4sort6stable5drift13logical_merge17hb78f6ddd30565753E.exit
  %.sroa.02.165 = phi i64 [ %.sroa.02.0, %.lr.ph66 ], [ %i.bi, %_ZN4core5slice4sort6stable5drift13logical_merge17hb78f6ddd30565753E.exit ] ; 2 uses
  %.sroa.018.164 = phi i64 [ %.sroa.018.0, %.lr.ph66 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb78f6ddd30565753E.exit ] ; 4 uses
  %i.bi = add i64 %.sroa.02.165, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !17
  %.not29 = icmp ult i8 %i.bk, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hb78f6ddd30565753E.exit, %bb.s, %bb.r
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.r ], [ %.sroa.018.164, %bb.s ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb78f6ddd30565753E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.r ], [ %.sroa.02.165, %bb.s ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hb78f6ddd30565753E.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bm, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !17 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 8 uses
  %i.bq = lshr i64 %.sroa.018.164, 1              ; 6 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 4 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %i.bs ; 6 uses
  %i.bu = icmp ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.018.164 to i1
  %i.bw = or i64 %i.bo, %.sroa.018.164
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bz = shl i64 %i.br, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb78f6ddd30565753E.exit

bb.w:                                             ; preds = %bb.x, %bb.u
  br i1 %i.bv, label %bb.y, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit35"

bb.x:                                             ; preds = %bb.u
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h280d73b111e35b8dE(ptr noalias noundef nonnull align 16 %i.bt, i64 noundef %i.bp, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.ce, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3169
  br label %bb.w

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit35": ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw [128 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h280d73b111e35b8dE(ptr noalias noundef nonnull align 16 %i.cf, i64 noundef %i.bq, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.ck, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3169
  br label %bb.y

bb.y:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h93c58a531de24833E.exit35", %bb.w
  %i.cl = icmp eq i64 %i.bp, 0
  %i.cm = icmp eq i64 %i.bq, 0
  %or.cond.i = or i1 %i.cm, %i.cl
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h599311795432ea22E.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 range(i64 0, -9223372036854775808) %i.bp) ; 2 uses
  %i.cn = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cn, label %_ZN4core5slice4sort6stable5merge5merge17h599311795432ea22E.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw [128 x i8], ptr %i.bt, i64 %i.bp ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bp, %i.bq  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.co, ptr %i.bt
  %i.cp = shl i64 %.sroa.0.0.i.i36, 7             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %.16.i, i64 %i.cp, i1 false), !alias.scope !3182
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.aa, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i"
  %i.cr = phi ptr [ %i.dg, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i" ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.cs = phi ptr [ %i.de, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i" ], [ %i.co, %bb.aa ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cv, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i" ], [ %i.bh, %bb.aa ]
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -128 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cr, i64 -128 ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -128 ; 2 uses
  %i.cw = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.cu, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.ct), !noalias !3183 ; 2 uses
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.ab, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i"

bb.ab:                                            ; preds = %.preheader.i
  %i.cy = getelementptr inbounds i8, ptr %i.cr, i64 -64
  %i.cz = getelementptr inbounds i8, ptr %i.cs, i64 -64
  %i.da = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cy, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.cz), !noalias !3183
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i": ; preds = %bb.ab, %.preheader.i
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.da, %bb.ab ], [ %i.cw, %.preheader.i ]
  %i.db = icmp eq i8 %.sroa.02.0.i.i.i.i, -1      ; 3 uses
  %..i.i = select i1 %i.db, ptr %i.ct, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.cv, ptr noundef nonnull align 16 dereferenceable(128) %..i.i, i64 128, i1 false), !alias.scope !3182, !noalias !3183
  %i.dc = xor i1 %i.db, true
  %i.dd = zext i1 %i.dc to i64
  %i.de = getelementptr inbounds nuw [128 x i8], ptr %i.ct, i64 %i.dd ; 3 uses
  %i.df = zext i1 %i.db to i64
  %i.dg = getelementptr inbounds nuw [128 x i8], ptr %i.cu, i64 %i.df ; 3 uses
  %i.dh = icmp eq ptr %i.de, %i.bt
  %i.di = icmp eq ptr %i.dg, %2
  %or.cond.i.i = select i1 %i.dh, i1 true, i1 %i.di
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd800d4423eeeddc9E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i"
  %i.dj = phi ptr [ %i.dw, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i" ], [ %i.bt, %bb.aa ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dv, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i" ], [ %i.co, %bb.aa ] ; 4 uses
  %i.dk = phi ptr [ %i.dt, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i" ], [ %2, %bb.aa ] ; 4 uses
  %i.dl = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.02.i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.dk), !noalias !3184 ; 2 uses
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.ac, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i"

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dp = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.dn, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.do), !noalias !3184
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i": ; preds = %bb.ac, %.lr.ph.i.i
  %.sroa.02.0.i.i.i20.i = phi i8 [ %i.dp, %bb.ac ], [ %i.dl, %.lr.ph.i.i ]
  %i.dq = icmp eq i8 %.sroa.02.0.i.i.i20.i, -1    ; 3 uses
  %i.dr = xor i1 %i.dq, true
  %spec.select.i.i = select i1 %i.dq, ptr %.sroa.0.02.i.i, ptr %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.dj, ptr noundef nonnull align 16 dereferenceable(128) %spec.select.i.i, i64 128, i1 false), !alias.scope !3182, !noalias !3184
  %i.ds = zext i1 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [128 x i8], ptr %i.dk, i64 %i.ds ; 3 uses
  %i.du = zext i1 %i.dq to i64
  %i.dv = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.02.i.i, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 128 ; 2 uses
  %i.dx = icmp ne ptr %i.dt, %i.cq
  %i.dy = icmp ne ptr %i.dv, %i.bh
  %or.cond.i21.i = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd800d4423eeeddc9E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd800d4423eeeddc9E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i"
  %.sroa.13.1.i = phi ptr [ %i.de, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i" ], [ %i.dw, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i" ]
  %.sroa.7.0.i = phi ptr [ %i.dg, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i" ], [ %i.cq, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i" ]
  %.sroa.0.1.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i.i" ], [ %i.dt, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h5033bcfd72428e0eE.exit.i19.i" ] ; 2 uses
  %i.dz = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ea = ptrtoint ptr %.sroa.0.1.i to i64
  %i.eb = sub nuw i64 %i.dz, %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.13.1.i, ptr align 16 %.sroa.0.1.i, i64 %i.eb, i1 false), !alias.scope !3182, !noalias !3185
  br label %_ZN4core5slice4sort6stable5merge5merge17h599311795432ea22E.exit

_ZN4core5slice4sort6stable5merge5merge17h599311795432ea22E.exit: ; preds = %bb.y, %bb.z, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hd800d4423eeeddc9E.exit.i"
  %i.ec = shl i64 %i.br, 1
  %i.ed = or disjoint i64 %i.ec, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb78f6ddd30565753E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hb78f6ddd30565753E.exit: ; preds = %bb.v, %_ZN4core5slice4sort6stable5merge5merge17h599311795432ea22E.exit
  %.sroa.0.0.i = phi i64 [ %i.ed, %_ZN4core5slice4sort6stable5merge5merge17h599311795432ea22E.exit ], [ %i.bz, %bb.v ] ; 2 uses
  %i.ee = icmp ugt i64 %i.bi, 1
  br i1 %i.ee, label %bb.s, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.ef = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eg = lshr i64 %.sroa.023.0, 1
  %i.eh = add i64 %i.eg, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.ei = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ei, 0
  br i1 %.not31, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ej = or i64 %1, 1
  %i.ek = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ej, i1 true)
  %i.el = trunc nuw nsw i64 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 1
  %i.en = xor i32 %i.em, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h280d73b111e35b8dE(ptr noalias noundef nonnull align 16 %0, i64 noundef %1, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.en, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(128) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3169
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h429963d127c60192E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i100 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread98, %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 24
  %.val10.i = load i64, ptr %i.o, align 8, !alias.scope !3208, !noalias !3209, !noundef !17 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %.val11.i = load i64, ptr %i.p, align 8, !alias.scope !3208, !noalias !3209, !noundef !17
  %i.q = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread98, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.val9.i = phi i64 [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader50 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !3208, !noalias !3209, !noundef !17 ; 2 uses
  %i.t = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi i64 [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.y, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val.i = load i64, ptr %i.w, align 8, !alias.scope !3208, !noalias !3209, !noundef !17 ; 2 uses
  %i.x = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.x, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.y = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.y, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.z = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.z)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread98: ; preds = %.preheader
  br i1 %.not5.i100, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i95, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i
  br i1 %i.q, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aa = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h59b982ee292794c9E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h18197d09e730a883E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3190
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h59b982ee292794c9E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i38
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit", label %.lr.ph.i.i38.epil.preheader

.lr.ph.i.i38.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bf, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod126 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.ad = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.af = getelementptr [16 x i8], ptr %i.ao, i64 %i.ad ; 3 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !3210, !noalias !3211, !nonnull !17, !align !29, !noundef !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !3210, !noalias !3211, !noundef !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !alias.scope !3212, !noalias !3209
  store ptr %i.ag, ptr %i.af, align 8, !alias.scope !3213, !noalias !3214
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !alias.scope !3213, !noalias !3214
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit": ; preds = %.lr.ph.i.i38.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread ], [ %.sroa.0.0.i.i96103107, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i96103107, %.lr.ph.i.i38.epil.preheader ]
  %i.ak = shl i64 %.sroa.0.0.i.i4548, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h59b982ee292794c9E.exit

bb.o:                                             ; preds = %bb.l
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3215), !noalias !3209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3216), !noalias !3209
  %.not15.i.i = icmp eq i64 %i.am, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread98, %bb.o
  %i.an = phi i64 [ %i.am, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread98 ] ; 4 uses
  %.sroa.0.0.i.i96103107 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17he20492f5cebd2457E.exit.i.thread98 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.0.i.i96103107 ; 3 uses
  %xtraiter = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.an, 1
  br i1 %i.ap, label %.lr.ph.i.i38.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.an, 9223372036854775806
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bf, %.lr.ph.i.i38 ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h429963d127c60192E:bb.a
  %i.as = getelementptr [16 x i8], ptr %i.ao, i64 %i.aq ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !3210, !noalias !3211, !nonnull !17, !align !29, !noundef !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !3210, !noalias !3211, !noundef !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !3212, !noalias !3209
  store ptr %i.at, ptr %i.as, align 8, !alias.scope !3213, !noalias !3214
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !alias.scope !3213, !noalias !3214
  %i.ax = xor i64 %.sroa.0.014.i.i, -2
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.ba = getelementptr [16 x i8], ptr %i.ao, i64 %i.ax ; 3 uses
  %i.bb = load ptr, ptr %i.az, align 8, !alias.scope !3210, !noalias !3211, !nonnull !17, !align !29, !noundef !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !3210, !noalias !3211, !noundef !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !3212, !noalias !3209
  store ptr %i.bb, ptr %i.ba, align 8, !alias.scope !3213, !noalias !3214
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !alias.scope !3213, !noalias !3214
  %i.bf = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h59b982ee292794c9E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.al, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h522b87ec7bba81e2E.exit" ], [ %i.ac, %bb.n ], [ %i.aa, %bb.m ] ; 2 uses
  %i.bg = lshr i64 %.sroa.018.0, 1
  %i.bh = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bi = sub i64 %factor, %i.bg
  %i.bj = add i64 %i.bh, %factor
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false)
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h59b982ee292794c9E.exit
  %.sroa.026.0 = phi i8 [ %i.bo, %_ZN4core5slice4sort6stable5drift10create_run17h59b982ee292794c9E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h59b982ee292794c9E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bp = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bp, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17hefe905c2d14457adE.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.br, %_ZN4core5slice4sort6stable5drift13logical_merge17hefe905c2d14457adE.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hefe905c2d14457adE.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !17
  %.not29 = icmp ult i8 %i.bt, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hefe905c2d14457adE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hefe905c2d14457adE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hefe905c2d14457adE.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !17 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.018.163 to i1
  %i.cf = or i64 %i.bx, %.sroa.018.163
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ci = shl i64 %i.ca, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hefe905c2d14457adE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ce, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h18197d09e730a883E(ptr noalias noundef nonnull align 8 %i.cc, i64 noundef %i.by, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3196
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit35": ; preds = %bb.u
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h18197d09e730a883E(ptr noalias noundef nonnull align 8 %i.co, i64 noundef %i.bz, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3196
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3218)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h38c8ee76dab6ae46E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cw = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cw, label %_ZN4core5slice4sort6stable5merge5merge17h38c8ee76dab6ae46E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cx, ptr %i.cc
  %i.cy = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.cy, i1 false), !alias.scope !3219
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.da = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %bb.y ] ; 2 uses
  %i.db = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.de, %.preheader.i ], [ %i.bq, %bb.y ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -8
  %.val.i.i = load i64, ptr %i.df, align 8, !alias.scope !3218, !noalias !3220, !noundef !17
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %.val10.i.i = load i64, ptr %i.dg, align 8, !alias.scope !3217, !noalias !3221, !noundef !17
  %i.dh = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.dh, ptr %i.dc, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !3219, !noalias !3222
  %i.di = xor i1 %i.dh, true
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dh to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dl ; 3 uses
  %i.dn = icmp eq ptr %i.dk, %i.cc
  %i.do = icmp eq ptr %i.dm, %2
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc0f645f782a5de9fE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cc, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.cx, %bb.y ] ; 3 uses
  %i.dq = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %2, %bb.y ] ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !3217, !noalias !3223, !noundef !17
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !3218, !noalias !3224, !noundef !17
  %i.dt = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.du = xor i1 %i.dt, true
  %spec.select.i.i = select i1 %i.dt, ptr %.sroa.0.02.i.i, ptr %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !3219, !noalias !3225
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dv ; 3 uses
  %i.dx = zext i1 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ea = icmp ne ptr %i.dw, %i.cz
  %i.eb = icmp ne ptr %i.dy, %i.bq
  %or.cond.i20.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc0f645f782a5de9fE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc0f645f782a5de9fE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.dz, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dw, %.lr.ph.i.i ] ; 2 uses
  %i.ec = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ed = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ee = sub nuw i64 %i.ec, %i.ed
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ee, i1 false), !alias.scope !3219, !noalias !3226
  br label %_ZN4core5slice4sort6stable5merge5merge17h38c8ee76dab6ae46E.exit

_ZN4core5slice4sort6stable5merge5merge17h38c8ee76dab6ae46E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc0f645f782a5de9fE.exit.i"
  %i.ef = shl i64 %i.ca, 1
  %i.eg = or disjoint i64 %i.ef, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hefe905c2d14457adE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hefe905c2d14457adE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h38c8ee76dab6ae46E.exit
  %.sroa.0.0.i = phi i64 [ %i.eg, %_ZN4core5slice4sort6stable5merge5merge17h38c8ee76dab6ae46E.exit ], [ %i.ci, %bb.t ] ; 2 uses
  %i.eh = icmp ugt i64 %i.br, 1
  br i1 %i.eh, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ei = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ej = lshr i64 %.sroa.023.0, 1
  %i.ek = add i64 %i.ej, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.el = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.el, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.em = or i64 %1, 1
  %i.en = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.em, i1 true)
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 1
  %i.eq = xor i32 %i.ep, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h18197d09e730a883E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3196
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h4ce6bb4b1b0a501aE(ptr noalias noundef nonnull align 16 %0, i64 noundef %1, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ad, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ad ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gz, %bb.ad ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gx, %bb.ad ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h3b900c6bd3a615c4E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h3b900c6bd3a615c4E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 14 uses
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h3b900c6bd3a615c4E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h3b900c6bd3a615c4E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hbf364872e52ad760E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3301), !noalias !3302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3303), !noalias !3302
  %i.p = load ptr, ptr %i.o, align 16, !alias.scope !3304, !noalias !3305, !nonnull !17, !align !31, !noundef !17 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !3304, !noalias !3305, !noundef !17 ; 4 uses
  %i.s = load ptr, ptr %i.m, align 16, !alias.scope !3306, !noalias !3307, !nonnull !17, !align !31, !noundef !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3306, !noalias !3307, !noundef !17 ; 2 uses
  %i.v = sub i64 %i.r, %i.u
  %..i.i47 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.u)
  %i.w = tail call i32 @memcmp(ptr nonnull %i.p, ptr nonnull %i.s, i64 %..i.i47), !noalias !3308 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %spec.store.select.i.i48 = select i1 %i.y, i64 %i.v, i64 %i.x ; 2 uses
  %i.z = icmp eq i64 %spec.store.select.i.i48, 0
  br i1 %i.z, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit50", label %.split

.split:                                           ; preds = %bb.i
  %i.aa = icmp slt i64 %spec.store.select.i.i48, 0
  br i1 %i.aa, label %.preheader, label %.preheader64

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit50", %.split
  %.not86 = icmp eq i64 %i.l, 2
  br i1 %.not86, label %_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i, label %.lr.ph73

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit50": ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ad = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ac), !noalias !3302
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %.preheader, label %.preheader64

.preheader64:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit50", %.split
  %.not85 = icmp eq i64 %i.l, 2
  br i1 %.not85, label %_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader64, %bb.j
  %i.af = phi i64 [ %i.am, %bb.j ], [ %i.r, %.preheader64 ] ; 2 uses
  %i.ag = phi ptr [ %i.ak, %bb.j ], [ %i.p, %.preheader64 ]
  %.sroa.01.0.i.i69 = phi i64 [ %i.ay, %bb.j ], [ 2, %.preheader64 ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.01.0.i.i69 ; 3 uses
  %i.ai = add i64 %.sroa.01.0.i.i69, -1           ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.l
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3310), !noalias !3302
  %i.ak = load ptr, ptr %i.ah, align 16, !alias.scope !3311, !noalias !3312, !nonnull !17, !align !31, !noundef !17 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !3311, !noalias !3312, !noundef !17 ; 3 uses
  %i.an = sub i64 %i.am, %i.af
  %..i.i43 = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.af)
  %i.ao = tail call i32 @memcmp(ptr nonnull %i.ak, ptr nonnull %i.ag, i64 %..i.i43), !noalias !3313 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp eq i32 %i.ao, 0
  %spec.store.select.i.i44 = select i1 %i.aq, i64 %i.an, i64 %i.ap ; 2 uses
  %i.ar = icmp eq i64 %spec.store.select.i.i44, 0
  br i1 %i.ar, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit46", label %.split53

.split53:                                         ; preds = %.lr.ph
  %i.as = icmp slt i64 %spec.store.select.i.i44, 0
  br i1 %i.as, label %_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i, label %bb.j

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit46": ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %i.ai
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.au, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.av), !noalias !3302
  %i.ax = icmp eq i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i, label %bb.j

bb.j:                                             ; preds = %.split53, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit46"
  %i.ay = add nuw i64 %.sroa.01.0.i.i69, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i, label %.lr.ph

.lr.ph73:                                         ; preds = %.preheader, %bb.k
  %i.az = phi i64 [ %i.bg, %bb.k ], [ %i.r, %.preheader ] ; 2 uses
  %i.ba = phi ptr [ %i.be, %bb.k ], [ %i.p, %.preheader ]
  %.sroa.01.1.i.i72 = phi i64 [ %i.bs, %bb.k ], [ 2, %.preheader ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %.sroa.01.1.i.i72 ; 3 uses
  %i.bc = add i64 %.sroa.01.1.i.i72, -1           ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.l
  tail call void @llvm.assume(i1 %i.bd)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3315), !noalias !3302
  %i.be = load ptr, ptr %i.bb, align 16, !alias.scope !3316, !noalias !3317, !nonnull !17, !align !31, !noundef !17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !3316, !noalias !3317, !noundef !17 ; 3 uses
  %i.bh = sub i64 %i.bg, %i.az
  %..i.i41 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.az)
  %i.bi = tail call i32 @memcmp(ptr nonnull %i.be, ptr nonnull %i.ba, i64 %..i.i41), !noalias !3318 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp eq i32 %i.bi, 0
  %spec.store.select.i.i = select i1 %i.bk, i64 %i.bh, i64 %i.bj ; 2 uses
  %i.bl = icmp eq i64 %spec.store.select.i.i, 0
  br i1 %i.bl, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit", label %.split54

.split54:                                         ; preds = %.lr.ph73
  %i.bm = icmp slt i64 %spec.store.select.i.i, 0
  br i1 %i.bm, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit": ; preds = %.lr.ph73
  %i.bn = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %i.bc
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bo, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bp), !noalias !3302
  %i.br = icmp eq i8 %i.bq, -1
  br i1 %i.br, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i

bb.k:                                             ; preds = %.split54, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit"
  %i.bs = add nuw i64 %.sroa.01.1.i.i72, 1        ; 2 uses
  %exitcond94.not = icmp eq i64 %i.bs, %i.l
  br i1 %exitcond94.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i, label %.lr.ph73

_ZN4core5slice4sort6shared17find_existing_run17hd42eb2982c7557bdE.exit.i: ; preds = %bb.j, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit46", %.split53, %bb.k, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit", %.split54, %.preheader64, %.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader ], [ false, %.preheader64 ], [ true, %bb.k ], [ true, %.split54 ], [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit" ], [ false, %.split53 ], [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit46" ], [ false, %bb.j ]
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17h4ce6bb4b1b0a501aE:bb.a
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h2b5e547e2ca7a71bE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.177, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b5e547e2ca7a71bE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.178, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b5e547e2ca7a71bE.exit ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.dm, align 1
  br i1 %i.k, label %bb.ad, label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.di
  %i.do = load i64, ptr %i.dn, align 8, !noundef !17 ; 3 uses
  %i.dp = lshr i64 %i.do, 1                       ; 8 uses
  %i.dq = lshr i64 %.sroa.018.177, 1              ; 6 uses
  %i.dr = add nuw i64 %i.dp, %i.dq                ; 4 uses
  %i.ds = sub i64 %.sroa.09.0, %i.dr
  %i.dt = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.ds ; 6 uses
  %i.du = icmp ugt i64 %i.dr, %3
  %i.dv = trunc i64 %.sroa.018.177 to i1
  %i.dw = or i64 %i.do, %.sroa.018.177
  %i.dx = trunc i64 %i.dw to i1
  %or.cond3.i = or i1 %i.du, %i.dx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dy = trunc i64 %i.do to i1
  br i1 %i.dy, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dz = shl i64 %i.dr, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2b5e547e2ca7a71bE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.dv, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h3b900c6bd3a615c4E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ea = or i64 %i.dp, 1
  %i.eb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h948308e23285b09bE(ptr noalias noundef nonnull align 16 %i.dt, i64 noundef %i.dp, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.ee, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3275
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h3b900c6bd3a615c4E.exit35": ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw [80 x i8], ptr %i.dt, i64 %i.dp
  %i.eg = or i64 %i.dq, 1
  %i.eh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eg, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 1
  %i.ek = xor i32 %i.ej, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h948308e23285b09bE(ptr noalias noundef nonnull align 16 %i.ef, i64 noundef %i.dq, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.ek, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3275
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h3b900c6bd3a615c4E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3334)
  %i.el = icmp eq i64 %i.dp, 0
  %i.em = icmp eq i64 %i.dq, 0
  %or.cond.i = or i1 %i.em, %i.el
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h51663c85eed6cfd7E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 range(i64 0, -9223372036854775808) %i.dp) ; 2 uses
  %i.en = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.en, label %_ZN4core5slice4sort6stable5merge5merge17h51663c85eed6cfd7E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw [80 x i8], ptr %i.dt, i64 %i.dp ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.dp, %i.dq  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.eo, ptr %i.dt
  %i.ep = mul i64 %.sroa.0.0.i.i36, 80            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %.16.i, i64 %i.ep, i1 false), !alias.scope !3335
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ep ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i"
  %i.er = phi ptr [ %i.fq, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i" ], [ %i.eq, %bb.y ] ; 3 uses
  %i.es = phi ptr [ %i.fo, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i" ], [ %i.eo, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ev, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i" ], [ %i.dh, %bb.y ]
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -80 ; 3 uses
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 -80 ; 3 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3339)
  %i.ew = load ptr, ptr %i.eu, align 16, !alias.scope !3340, !noalias !3341, !nonnull !17, !align !31, !noundef !17
  %i.ex = getelementptr inbounds i8, ptr %i.er, i64 -72
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !3340, !noalias !3341, !noundef !17 ; 2 uses
  %i.ez = load ptr, ptr %i.et, align 16, !alias.scope !3342, !noalias !3343, !nonnull !17, !align !31, !noundef !17
  %i.fa = getelementptr inbounds i8, ptr %i.es, i64 -72
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !3342, !noalias !3343, !noundef !17 ; 2 uses
  %i.fc = sub i64 %i.ey, %i.fb
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.fb)
  %i.fd = tail call i32 @memcmp(ptr nonnull %i.ew, ptr nonnull %i.ez, i64 %..i.i.i.i), !noalias !3344 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp eq i32 %i.fd, 0
  %spec.store.select.i.i.i.i = select i1 %i.ff, i64 %i.fc, i64 %i.fe ; 2 uses
  %i.fg = icmp eq i64 %spec.store.select.i.i.i.i, 0
  br i1 %i.fg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader.i
  %i.fh = getelementptr inbounds i8, ptr %i.er, i64 -64
  %i.fi = getelementptr inbounds i8, ptr %i.es, i64 -64
  %i.fj = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.fh, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.fi), !noalias !3345
  %i.fk = icmp eq i8 %i.fj, -1
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i"

bb.aa:                                            ; preds = %.preheader.i
  %i.fl = icmp slt i64 %spec.store.select.i.i.i.i, 0
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i": ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.fl, %bb.aa ], [ %i.fk, %bb.z ] ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.et, ptr %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ev, ptr noundef nonnull align 16 dereferenceable(80) %..i.i, i64 80, i1 false), !alias.scope !3335, !noalias !3345
  %i.fm = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.fn = zext i1 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [80 x i8], ptr %i.et, i64 %i.fn ; 3 uses
  %i.fp = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.fq = getelementptr inbounds nuw [80 x i8], ptr %i.eu, i64 %i.fp ; 3 uses
  %i.fr = icmp eq ptr %i.fo, %i.dt
  %i.fs = icmp eq ptr %i.fq, %2
  %or.cond.i.i = select i1 %i.fr, i1 true, i1 %i.fs
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3a45e4b75190c74dE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.ac
  %i.ft = phi ptr [ %i.go, %bb.ac ], [ %i.dt, %bb.y ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gn, %bb.ac ], [ %i.eo, %bb.y ] ; 6 uses
  %i.fu = phi ptr [ %i.gm, %bb.ac ], [ %2, %bb.y ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  %i.fv = load ptr, ptr %.sroa.0.04.i.i, align 16, !alias.scope !3350, !noalias !3351, !nonnull !17, !align !31, !noundef !17
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !3350, !noalias !3351, !noundef !17 ; 2 uses
  %i.fy = load ptr, ptr %i.fu, align 16, !alias.scope !3352, !noalias !3353, !nonnull !17, !align !31, !noundef !17
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !3352, !noalias !3353, !noundef !17 ; 2 uses
  %i.gb = sub i64 %i.fx, %i.ga
  %..i.i.i19.i = tail call i64 @llvm.umin.i64(i64 %i.fx, i64 %i.ga)
  %i.gc = tail call i32 @memcmp(ptr nonnull %i.fv, ptr nonnull %i.fy, i64 %..i.i.i19.i), !noalias !3354 ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = icmp eq i32 %i.gc, 0
  %spec.store.select.i.i.i20.i = select i1 %i.ge, i64 %i.gb, i64 %i.gd ; 2 uses
  %i.gf = icmp eq i64 %spec.store.select.i.i.i20.i, 0
  br i1 %i.gf, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i22.i", label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.gg = icmp slt i64 %spec.store.select.i.i.i20.i, 0
  br i1 %i.gg, label %bb.ac, label %bb.ab

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i22.i": ; preds = %.lr.ph.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.gj = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.gh, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.gi), !noalias !3355
  %i.gk = icmp eq i8 %i.gj, -1
  br i1 %i.gk, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i22.i", %.split.i.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i22.i", %.split.i.i
  %i.gl = phi i64 [ 1, %bb.ab ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i22.i" ], [ 0, %.split.i.i ]
  %.sroa.0.0.i.i2.i.i = phi i64 [ 0, %bb.ab ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i22.i" ], [ 1, %.split.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.fu, %bb.ab ], [ %.sroa.0.04.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i22.i" ], [ %.sroa.0.04.i.i, %.split.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ft, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.05.0.i.i, i64 80, i1 false), !alias.scope !3335, !noalias !3355
  %i.gm = getelementptr inbounds nuw [80 x i8], ptr %i.fu, i64 %i.gl ; 3 uses
  %i.gn = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.04.i.i, i64 %.sroa.0.0.i.i2.i.i ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ft, i64 80 ; 2 uses
  %i.gp = icmp ne ptr %i.gm, %i.eq
  %i.gq = icmp ne ptr %i.gn, %i.dh
  %or.cond.i21.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3a45e4b75190c74dE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3a45e4b75190c74dE.exit.i": ; preds = %bb.ac, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i"
  %.sroa.13.1.i = phi ptr [ %i.fo, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i" ], [ %i.go, %bb.ac ]
  %.sroa.7.0.i = phi ptr [ %i.fq, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i" ], [ %i.eq, %bb.ac ]
  %.sroa.0.1.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h408b23563030028aE.exit.i.i" ], [ %i.gm, %bb.ac ] ; 2 uses
  %i.gr = ptrtoint ptr %.sroa.7.0.i to i64
  %i.gs = ptrtoint ptr %.sroa.0.1.i to i64
  %i.gt = sub nuw i64 %i.gr, %i.gs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.13.1.i, ptr align 16 %.sroa.0.1.i, i64 %i.gt, i1 false), !alias.scope !3335, !noalias !3356
  br label %_ZN4core5slice4sort6stable5merge5merge17h51663c85eed6cfd7E.exit

_ZN4core5slice4sort6stable5merge5merge17h51663c85eed6cfd7E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h3a45e4b75190c74dE.exit.i"
  %i.gu = shl i64 %i.dr, 1
  %i.gv = or disjoint i64 %i.gu, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2b5e547e2ca7a71bE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h2b5e547e2ca7a71bE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h51663c85eed6cfd7E.exit
  %.sroa.0.0.i = phi i64 [ %i.gv, %_ZN4core5slice4sort6stable5merge5merge17h51663c85eed6cfd7E.exit ], [ %i.dz, %bb.t ] ; 2 uses
  %i.gw = icmp ugt i64 %i.di, 1
  br i1 %i.gw, label %bb.q, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.gx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gy = lshr i64 %.sroa.023.0, 1
  %i.gz = add i64 %i.gy, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.ha = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ha, 0
  br i1 %.not31, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hb = or i64 %1, 1
  %i.hc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hb, i1 true)
  %i.hd = trunc nuw nsw i64 %i.hc to i32
  %i.he = shl nuw nsw i32 %i.hd, 1
  %i.hf = xor i32 %i.he, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h948308e23285b09bE(ptr noalias noundef nonnull align 16 %0, i64 noundef %1, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.hf, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3275
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17he2a5c66384059da8E(ptr noalias noundef nonnull align 16 %0, i64 noundef %1, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i90 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ee, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41270bc7fb7a5eb3E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41270bc7fb7a5eb3E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread93, %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41270bc7fb7a5eb3E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41270bc7fb7a5eb3E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h58d3ec1b8c2ed56bE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.p = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.m), !noalias !3395
  %i.q = icmp eq i8 %i.p, -1                      ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread93, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.sroa.01.0.i.i55 = phi i64 [ %i.w, %bb.j ], [ 2, %.preheader50 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %i.s = getelementptr [64 x i8], ptr %i.m, i64 %.sroa.01.0.i.i55
  %i.t = getelementptr i8, ptr %i.s, i64 -64
  %i.u = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.t), !noalias !3395
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.sroa.01.1.i.i58 = phi i64 [ %i.ac, %bb.k ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %i.y = getelementptr [64 x i8], ptr %i.m, i64 %.sroa.01.1.i.i58
  %i.z = getelementptr i8, ptr %i.y, i64 -64
  %i.aa = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.x, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.z), !noalias !3395
  %i.ab = icmp eq i8 %i.aa, -1
  br i1 %i.ab, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.ac = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.ac, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ad = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ad)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread93: ; preds = %.preheader
  br i1 %.not5.i95, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i90, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h58d3ec1b8c2ed56bE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i
  br i1 %i.q, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h58d3ec1b8c2ed56bE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.ae = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h435bf529bc60565aE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hefa49493c627725dE(ptr noalias noundef nonnull align 16 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3360
  %i.af = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h435bf529bc60565aE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h58d3ec1b8c2ed56bE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread ], [ %.sroa.0.0.i.i9198102, %.lr.ph.i.i38 ]
  %i.ah = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h435bf529bc60565aE.exit

bb.o:                                             ; preds = %bb.l
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3396), !noalias !3395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3397), !noalias !3395
  %.not15.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h58d3ec1b8c2ed56bE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread93, %bb.o
  %i.ak = phi i64 [ %i.aj, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread93 ]
  %.sroa.0.0.i.i9198102 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hae4c9b7ef6572467E.exit.i.thread93 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.0.0.i.i9198102
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.bd, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.am = xor i64 %.sroa.0.014.i.i, -1
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.0.014.i.i ; 5 uses
  %i.ao = getelementptr [64 x i8], ptr %i.al, i64 %i.am ; 5 uses
  %i.ap = load <2 x i64>, ptr %i.an, align 16, !alias.scope !3398, !noalias !3399
  %i.aq = load <2 x i64>, ptr %i.ao, align 16, !alias.scope !3400, !noalias !3401
  store <2 x i64> %i.aq, ptr %i.an, align 16, !alias.scope !3398, !noalias !3399
  store <2 x i64> %i.ap, ptr %i.ao, align 16, !alias.scope !3400, !noalias !3401
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.at = load <2 x i64>, ptr %i.ar, align 16, !alias.scope !3402, !noalias !3399
  %i.au = load <2 x i64>, ptr %i.as, align 16, !alias.scope !3403, !noalias !3401
  store <2 x i64> %i.au, ptr %i.ar, align 16, !alias.scope !3402, !noalias !3399
  store <2 x i64> %i.at, ptr %i.as, align 16, !alias.scope !3403, !noalias !3401
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.ax = load <2 x i64>, ptr %i.av, align 16, !alias.scope !3404, !noalias !3399
  %i.ay = load <2 x i64>, ptr %i.aw, align 16, !alias.scope !3405, !noalias !3401
  store <2 x i64> %i.ay, ptr %i.av, align 16, !alias.scope !3404, !noalias !3399
  store <2 x i64> %i.ax, ptr %i.aw, align 16, !alias.scope !3405, !noalias !3401
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 16, !alias.scope !3406, !noalias !3399
  %i.bc = load <2 x i64>, ptr %i.ba, align 16, !alias.scope !3407, !noalias !3401
  store <2 x i64> %i.bc, ptr %i.az, align 16, !alias.scope !3406, !noalias !3399
  store <2 x i64> %i.bb, ptr %i.ba, align 16, !alias.scope !3407, !noalias !3401
  %i.bd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.ak
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h58d3ec1b8c2ed56bE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h435bf529bc60565aE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h58d3ec1b8c2ed56bE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ai, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h58d3ec1b8c2ed56bE.exit" ], [ %i.ag, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  %i.be = lshr i64 %.sroa.018.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bg = sub i64 %factor, %i.be
  %i.bh = add i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h435bf529bc60565aE.exit
  %.sroa.026.0 = phi i8 [ %i.bm, %_ZN4core5slice4sort6stable5drift10create_run17h435bf529bc60565aE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h435bf529bc60565aE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bn, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b258d7f4f66da04E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bp, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b258d7f4f66da04E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b258d7f4f66da04E.exit ] ; 4 uses
  %i.bp = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noundef !17
  %.not29 = icmp ult i8 %i.br, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h2b258d7f4f66da04E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b258d7f4f66da04E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h2b258d7f4f66da04E.exit ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bt, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bp
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !17 ; 3 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 8 uses
  %i.bx = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.by = add nuw i64 %i.bw, %i.bx                ; 4 uses
  %i.bz = sub i64 %.sroa.09.0, %i.by
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.bz ; 6 uses
  %i.cb = icmp ugt i64 %i.by, %3
  %i.cc = trunc i64 %.sroa.018.163 to i1
  %i.cd = or i64 %i.bv, %.sroa.018.163
  %i.ce = trunc i64 %i.cd to i1
  %or.cond3.i = or i1 %i.cb, %i.ce
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = trunc i64 %i.bv to i1
  br i1 %i.cf, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cg = shl i64 %i.by, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2b258d7f4f66da04E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cc, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41270bc7fb7a5eb3E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ch = or i64 %i.bw, 1
  %i.ci = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hefa49493c627725dE(ptr noalias noundef nonnull align 16 %i.ca, i64 noundef %i.bw, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.cl, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3383
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41270bc7fb7a5eb3E.exit35": ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %i.ca, i64 %i.bw
  %i.cn = or i64 %i.bx, 1
  %i.co = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hefa49493c627725dE(ptr noalias noundef nonnull align 16 %i.cm, i64 noundef %i.bx, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.cr, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3383
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h41270bc7fb7a5eb3E.exit35", %bb.u
  %i.cs = icmp eq i64 %i.bw, 0
  %i.ct = icmp eq i64 %i.bx, 0
  %or.cond.i = or i1 %i.ct, %i.cs
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h8135fdd0d53d6ff3E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 range(i64 0, -9223372036854775808) %i.bw) ; 2 uses
  %i.cu = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cu, label %_ZN4core5slice4sort6stable5merge5merge17h8135fdd0d53d6ff3E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw [64 x i8], ptr %i.ca, i64 %i.bw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bw, %i.bx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cv, ptr %i.ca
  %i.cw = shl i64 %.sroa.0.0.i.i36, 6             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %.16.i, i64 %i.cw, i1 false), !alias.scope !3408
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.cy = phi ptr [ %i.dj, %.preheader.i ], [ %i.cx, %bb.y ]
  %i.cz = phi ptr [ %i.dh, %.preheader.i ], [ %i.cv, %bb.y ]
  %.sroa.0.0.i17.i = phi ptr [ %i.dc, %.preheader.i ], [ %i.bo, %bb.y ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -64 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 -64 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -64 ; 2 uses
  %i.dd = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.db, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.da), !noalias !3409
  %i.de = icmp eq i8 %i.dd, -1                    ; 3 uses
  %..i.i = select i1 %i.de, ptr %i.da, ptr %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dc, ptr noundef nonnull align 16 dereferenceable(64) %..i.i, i64 64, i1 false), !alias.scope !3408, !noalias !3409
  %i.df = xor i1 %i.de, true
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.dg ; 3 uses
  %i.di = zext i1 %i.de to i64
  %i.dj = getelementptr inbounds nuw [64 x i8], ptr %i.db, i64 %i.di ; 3 uses
  %i.dk = icmp eq ptr %i.dh, %i.ca
  %i.dl = icmp eq ptr %i.dj, %2
  %or.cond.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h66210c4d8df812b8E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dm = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.ca, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.cv, %bb.y ] ; 3 uses
  %i.dn = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %2, %bb.y ] ; 3 uses
  %i.do = tail call fastcc noundef i8 @"_ZN65_$LT$insta..content..Content$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h761b9a327945ec58E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %.sroa.0.02.i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.dn), !noalias !3410
  %i.dp = icmp eq i8 %i.do, -1                    ; 3 uses
  %i.dq = xor i1 %i.dp, true
  %spec.select.i.i = select i1 %i.dp, ptr %.sroa.0.02.i.i, ptr %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dm, ptr noundef nonnull align 16 dereferenceable(64) %spec.select.i.i, i64 64, i1 false), !alias.scope !3408, !noalias !3410
  %i.dr = zext i1 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [64 x i8], ptr %i.dn, i64 %i.dr ; 3 uses
  %i.dt = zext i1 %i.dp to i64
  %i.du = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.02.i.i, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 64 ; 2 uses
  %i.dw = icmp ne ptr %i.ds, %i.cx
  %i.dx = icmp ne ptr %i.du, %i.bo
  %or.cond.i19.i = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h66210c4d8df812b8E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h66210c4d8df812b8E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.dv, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dj, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ds, %.lr.ph.i.i ] ; 2 uses
  %i.dy = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dz = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ea = sub nuw i64 %i.dy, %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.13.1.i, ptr align 16 %.sroa.0.1.i, i64 %i.ea, i1 false), !alias.scope !3408, !noalias !3411
  br label %_ZN4core5slice4sort6stable5merge5merge17h8135fdd0d53d6ff3E.exit

_ZN4core5slice4sort6stable5merge5merge17h8135fdd0d53d6ff3E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h66210c4d8df812b8E.exit.i"
  %i.eb = shl i64 %i.by, 1
  %i.ec = or disjoint i64 %i.eb, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h2b258d7f4f66da04E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h2b258d7f4f66da04E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h8135fdd0d53d6ff3E.exit
  %.sroa.0.0.i = phi i64 [ %i.ec, %_ZN4core5slice4sort6stable5merge5merge17h8135fdd0d53d6ff3E.exit ], [ %i.cg, %bb.t ] ; 2 uses
  %i.ed = icmp ugt i64 %i.bp, 1
  br i1 %i.ed, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ee = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ef = lshr i64 %.sroa.023.0, 1
  %i.eg = add i64 %i.ef, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.eh = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eh, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ei = or i64 %1, 1
  %i.ej = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ei, i1 true)
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 1
  %i.em = xor i32 %i.el, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hefa49493c627725dE(ptr noalias noundef nonnull align 16 %0, i64 noundef %1, ptr noalias noundef nonnull align 16 %2, i64 noundef %3, i32 noundef %i.em, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3383
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17he8bf235dd947730aE(ptr noalias noundef nonnull align 1 %0, i64 noundef %1, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i92 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dv, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha03d72f090748deaE.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha03d72f090748deaE.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread95, %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha03d72f090748deaE.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha03d72f090748deaE.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.val10.i = load i8, ptr %i.o, align 1, !range !24, !alias.scope !3437, !noalias !3438, !noundef !17 ; 3 uses
  %.val11.i = load i8, ptr %i.m, align 1, !range !24, !alias.scope !3437, !noalias !3438, !noundef !17
  %i.p = icmp samesign ult i8 %.val10.i, %.val11.i ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread95, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.val9.i = phi i8 [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader50 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i55
  %.val8.i = load i8, ptr %i.q, align 1, !range !24, !alias.scope !3437, !noalias !3438, !noundef !17 ; 2 uses
  %i.r = icmp samesign ult i8 %.val8.i, %.val9.i
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi i8 [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.1.i.i58
  %.val.i = load i8, ptr %i.t, align 1, !range !24, !alias.scope !3437, !noalias !3438, !noundef !17 ; 2 uses
  %i.u = icmp samesign ult i8 %.val.i, %.val7.i
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.v = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread95: ; preds = %.preheader
  br i1 %.not5.i97, label %bb.g, label %iter.check

_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i92, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h55a877b4763f408cE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h38eb6f814d4820faE(ptr noalias noundef nonnull align 1 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 1 %5), !inline_history !3416
  %i.y = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h55a877b4763f408cE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit": ; preds = %.lr.ph.i.i38, %middle.block, %vec.epilog.middle.block, %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread ], [ %.sroa.0.0.i.i93100104, %middle.block ], [ %.sroa.0.0.i.i93100104, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i93100104, %.lr.ph.i.i38 ]
  %i.aa = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h55a877b4763f408cE.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3439), !noalias !3438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3440), !noalias !3438
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit", label %iter.check

iter.check:                                       ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread95, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread95 ] ; 8 uses
  %.sroa.0.0.i.i93100104 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdaa8f64f75141efeE.exit.i.thread95 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i93100104 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.i.i38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check117 = icmp samesign ult i64 %i.ad, 16
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = xor i64 %index, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ag
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !3441, !noalias !3442
  %i.aj = getelementptr i8, ptr %i.ai, i64 -15    ; 2 uses
  %wide.load118 = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !3443, !noalias !3444
  %reverse = shufflevector <16 x i8> %wide.load118, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.ah, align 1, !alias.scope !3441, !noalias !3442
  %reverse119 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse119, ptr %i.aj, align 1, !alias.scope !3443, !noalias !3444
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !3422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable5drift4sort17he8bf235dd947730aE:bb.a
  %reverse124 = shufflevector <4 x i8> %wide.load123, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse124, ptr %i.am, align 1, !alias.scope !3441, !noalias !3442
  %reverse125 = shufflevector <4 x i8> %wide.load122, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse125, ptr %i.ao, align 1, !alias.scope !3443, !noalias !3444
  %index.next126 = add nuw i64 %index121, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next126, %n.vec120
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3423

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %i.ad, %n.vec120
  br i1 %cmp.n127, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit", label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec120, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38
  %.sroa.0.014.i.i = phi i64 [ %i.av, %.lr.ph.i.i38 ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i38.preheader ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.014.i.i, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.as = getelementptr i8, ptr %i.ae, i64 %i.aq  ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !range !24, !alias.scope !3441, !noalias !3442, !noundef !17
  %i.au = load i8, ptr %i.as, align 1, !alias.scope !3443, !noalias !3444
  store i8 %i.au, ptr %i.ar, align 1, !alias.scope !3441, !noalias !3442
  store i8 %i.at, ptr %i.as, align 1, !alias.scope !3443, !noalias !3444
  %i.av = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit", label %.lr.ph.i.i38, !llvm.loop !3424

_ZN4core5slice4sort6stable5drift10create_run17h55a877b4763f408cE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17he4488fcc04a93190E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.aw = lshr i64 %.sroa.018.0, 1
  %i.ax = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ay = sub i64 %factor, %i.aw
  %i.az = add i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h55a877b4763f408cE.exit
  %.sroa.026.0 = phi i8 [ %i.be, %_ZN4core5slice4sort6stable5drift10create_run17h55a877b4763f408cE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h55a877b4763f408cE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bf = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bf, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17h5254aa121bd44e75E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bh, %_ZN4core5slice4sort6stable5drift13logical_merge17h5254aa121bd44e75E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h5254aa121bd44e75E.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !17
  %.not29 = icmp ult i8 %i.bj, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h5254aa121bd44e75E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h5254aa121bd44e75E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h5254aa121bd44e75E.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bl, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !17 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.018.163 to i1
  %i.bv = or i64 %i.bn, %.sroa.018.163
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl i64 %i.bq, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h5254aa121bd44e75E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha03d72f090748deaE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h38eb6f814d4820faE(ptr noalias noundef nonnull align 1 %i.bs, i64 noundef %i.bo, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef %i.cd, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 1 %5), !inline_history !3425
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha03d72f090748deaE.exit35": ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h38eb6f814d4820faE(ptr noalias noundef nonnull align 1 %i.ce, i64 noundef %i.bp, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef %i.cj, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 1 %5), !inline_history !3425
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha03d72f090748deaE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf9183d32e24fda57E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 range(i64 0, -9223372036854775808) %i.bo) ; 3 uses
  %i.cm = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cm, label %_ZN4core5slice4sort6stable5merge5merge17hf9183d32e24fda57E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cn, ptr %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %.16.i, i64 %.sroa.0.0.i.i36, i1 false), !alias.scope !3448
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.i.i36 ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.cp = phi ptr [ %i.da, %.preheader.i ], [ %i.co, %bb.y ]
  %i.cq = phi ptr [ %i.cy, %.preheader.i ], [ %i.cn, %bb.y ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ct, %.preheader.i ], [ %i.bg, %bb.y ]
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -1 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -1 ; 2 uses
  %.val.i.i = load i8, ptr %i.cs, align 1, !range !24, !alias.scope !3447, !noalias !3449, !noundef !17 ; 2 uses
  %.val10.i.i = load i8, ptr %i.cr, align 1, !range !24, !alias.scope !3446, !noalias !3450, !noundef !17 ; 2 uses
  %i.cu = icmp samesign ult i8 %.val.i.i, %.val10.i.i ; 2 uses
  %i.cv = tail call i8 @llvm.umax.i8(i8 %.val.i.i, i8 %.val10.i.i)
  store i8 %i.cv, ptr %i.ct, align 1, !alias.scope !3446, !noalias !3450
  %i.cw = xor i1 %i.cu, true
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %i.cu to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cz ; 3 uses
  %i.db = icmp eq ptr %i.cy, %i.bs
  %i.dc = icmp eq ptr %i.da, %2
  %or.cond.i.i = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h404db2e81a1fe80cE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dd = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.bs, %bb.y ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.cn, %bb.y ] ; 2 uses
  %i.de = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %2, %bb.y ] ; 2 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.04.i.i, align 1, !range !24, !alias.scope !3446, !noalias !3451, !noundef !17 ; 2 uses
  %.val.i19.i = load i8, ptr %i.de, align 1, !range !24, !alias.scope !3447, !noalias !3452, !noundef !17 ; 2 uses
  %i.df = icmp samesign ult i8 %.sroa.0.0.val.i.i, %.val.i19.i ; 2 uses
  %i.dg = xor i1 %i.df, true
  %i.dh = tail call i8 @llvm.umin.i8(i8 %.sroa.0.0.val.i.i, i8 %.val.i19.i)
  store i8 %i.dh, ptr %i.dd, align 1, !alias.scope !3446, !noalias !3451
  %i.di = zext i1 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.df to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 2 uses
  %i.dn = icmp ne ptr %i.dj, %i.co
  %i.do = icmp ne ptr %i.dl, %i.bg
  %or.cond.i20.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h404db2e81a1fe80cE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h404db2e81a1fe80cE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cy, %.preheader.i ], [ %i.dm, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.da, %.preheader.i ], [ %i.co, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dj, %.lr.ph.i.i ] ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.13.1.i, ptr align 1 %.sroa.0.1.i, i64 %i.dr, i1 false), !alias.scope !3448, !noalias !3453
  br label %_ZN4core5slice4sort6stable5merge5merge17hf9183d32e24fda57E.exit

_ZN4core5slice4sort6stable5merge5merge17hf9183d32e24fda57E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h404db2e81a1fe80cE.exit.i"
  %i.ds = shl i64 %i.bq, 1
  %i.dt = or disjoint i64 %i.ds, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h5254aa121bd44e75E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h5254aa121bd44e75E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hf9183d32e24fda57E.exit
  %.sroa.0.0.i = phi i64 [ %i.dt, %_ZN4core5slice4sort6stable5merge5merge17hf9183d32e24fda57E.exit ], [ %i.by, %bb.t ] ; 2 uses
  %i.du = icmp ugt i64 %i.bh, 1
  br i1 %i.du, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dw = lshr i64 %.sroa.023.0, 1
  %i.dx = add i64 %i.dw, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dy = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dy, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dz = or i64 %1, 1
  %i.ea = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true)
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 1
  %i.ed = xor i32 %i.ec, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h38eb6f814d4820faE(ptr noalias noundef nonnull align 1 %0, i64 noundef %1, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef %i.ed, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 1 %5), !inline_history !3425
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h18197d09e730a883E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit"
  %.sroa.0.0.ph122 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.ks, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit" ] ; 22 uses
  %.sroa.15.0.ph121 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.kd, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit" ] ; 2 uses
  %.sroa.023.0.ph120 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.fb, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit" ] ; 2 uses
  %.sroa.026.0.ph119 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit" ] ; 2 uses
  %i.e = getelementptr i8, ptr %.sroa.0.0.ph122, i64 8
  %i.f = ptrtoint ptr %.sroa.0.0.ph122 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph119, null
  %i.g = getelementptr i8, ptr %.sroa.026.0.ph119, i64 8
  %i.h = icmp eq i32 %.sroa.023.0.ph120, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph288

bb.b:                                             ; preds = %bb.ak
  %i.i = icmp eq i32 %i.fb, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph288

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit", %bb.ak, %bb.a
  %.sroa.0.0.ph.lcssa113 = phi ptr [ %.sroa.0.0.ph122, %bb.ak ], [ %0, %bb.a ], [ %i.ks, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit" ] ; 18 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.ak ], [ %1, %bb.a ], [ %i.kd, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h98506dffdd7428f3E.exit" ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  call void @llvm.experimental.noalias.scope.decl(metadata !3508)
  %i.j = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.j, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h48b174a11895ae2fE.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.k = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.l = icmp ult i64 %3, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.n = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.n, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hdeb2e31d4b7469e3E(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa113, ptr noundef nonnull align 8 %2, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.m
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17hdeb2e31d4b7469e3E(ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %.sroa.0.0.ph.lcssa113, i64 24
  %.val12.i.i = load i64, ptr %i.t, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.u = getelementptr i8, ptr %.sroa.0.0.ph.lcssa113, i64 8
  %.val13.i.i = load i64, ptr %i.u, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.v = icmp ult i64 %.val12.i.i, %.val13.i.i    ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.0.0.ph.lcssa113, i64 56
  %.val10.i.i = load i64, ptr %i.w, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.x = getelementptr i8, ptr %.sroa.0.0.ph.lcssa113, i64 40
  %.val11.i.i = load i64, ptr %i.x, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.y = icmp ult i64 %.val10.i.i, %.val11.i.i    ; 2 uses
  %i.z = zext i1 %i.v to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.z ; 3 uses
  %i.ab = xor i1 %i.v, true
  %i.ac = zext i1 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.ac ; 4 uses
  %i.ae = select i1 %i.y, i64 3, i64 2
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.ae ; 4 uses
  %i.ag = select i1 %i.y, i64 2, i64 3
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.ag ; 3 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 8
  %.val8.i.i = load i64, ptr %i.ai, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.aj = getelementptr i8, ptr %i.aa, i64 8
  %.val9.i.i = load i64, ptr %i.aj, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.ak = icmp ult i64 %.val8.i.i, %.val9.i.i     ; 3 uses
  %i.al = getelementptr i8, ptr %i.ah, i64 8
  %.val6.i.i = load i64, ptr %i.al, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.am = getelementptr i8, ptr %i.ad, i64 8
  %.val7.i.i = load i64, ptr %i.am, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.an = icmp ult i64 %.val6.i.i, %.val7.i.i     ; 3 uses
  %i.ao = select i1 %i.ak, ptr %i.af, ptr %i.aa, !unpredictable !17
  %i.ap = select i1 %i.an, ptr %i.ad, ptr %i.ah, !unpredictable !17
  %i.aq = select i1 %i.an, ptr %i.af, ptr %i.ad, !unpredictable !17
  %i.ar = select i1 %i.ak, ptr %i.aa, ptr %i.aq, !unpredictable !17 ; 3 uses
  %i.as = select i1 %i.ak, ptr %i.ad, ptr %i.af, !unpredictable !17
  %i.at = select i1 %i.an, ptr %i.ah, ptr %i.as, !unpredictable !17 ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val.i.i = load i64, ptr %i.au, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  %.val5.i.i = load i64, ptr %i.av, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.aw = icmp ult i64 %.val.i.i, %.val5.i.i      ; 2 uses
  %i.ax = select i1 %i.aw, ptr %i.at, ptr %i.ar, !unpredictable !17
  %i.ay = select i1 %i.aw, ptr %i.ar, ptr %i.at, !unpredictable !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !3509
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !alias.scope !3509
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !3509
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !3509
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.m ; 8 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.m ; 4 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 24
  %.val12.i29.i = load i64, ptr %i.be, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.bf = getelementptr i8, ptr %i.bc, i64 8
  %.val13.i30.i = load i64, ptr %i.bf, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.bg = icmp ult i64 %.val12.i29.i, %.val13.i30.i ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bc, i64 56
  %.val10.i31.i = load i64, ptr %i.bh, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.bi = getelementptr i8, ptr %i.bc, i64 40
  %.val11.i32.i = load i64, ptr %i.bi, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.bj = icmp ult i64 %.val10.i31.i, %.val11.i32.i ; 2 uses
  %i.bk = zext i1 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bk ; 3 uses
  %i.bm = xor i1 %i.bg, true
  %i.bn = zext i1 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bn ; 4 uses
  %i.bp = select i1 %i.bj, i64 3, i64 2
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bp ; 4 uses
  %i.br = select i1 %i.bj, i64 2, i64 3
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.br ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.val8.i33.i = load i64, ptr %i.bt, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.bu = getelementptr i8, ptr %i.bl, i64 8
  %.val9.i34.i = load i64, ptr %i.bu, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.bv = icmp ult i64 %.val8.i33.i, %.val9.i34.i ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bs, i64 8
  %.val6.i35.i = load i64, ptr %i.bw, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.bx = getelementptr i8, ptr %i.bo, i64 8
  %.val7.i36.i = load i64, ptr %i.bx, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.by = icmp ult i64 %.val6.i35.i, %.val7.i36.i ; 3 uses
  %i.bz = select i1 %i.bv, ptr %i.bq, ptr %i.bl, !unpredictable !17
  %i.ca = select i1 %i.by, ptr %i.bo, ptr %i.bs, !unpredictable !17
  %i.cb = select i1 %i.by, ptr %i.bq, ptr %i.bo, !unpredictable !17
  %i.cc = select i1 %i.bv, ptr %i.bl, ptr %i.cb, !unpredictable !17 ; 3 uses
  %i.cd = select i1 %i.bv, ptr %i.bo, ptr %i.bq, !unpredictable !17
  %i.ce = select i1 %i.by, ptr %i.bs, ptr %i.cd, !unpredictable !17 ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %.val.i37.i = load i64, ptr %i.cf, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.cg = getelementptr i8, ptr %i.cc, i64 8
  %.val5.i38.i = load i64, ptr %i.cg, align 8, !alias.scope !3507, !noalias !3508, !noundef !17
  %i.ch = icmp ult i64 %.val.i37.i, %.val5.i38.i  ; 2 uses
  %i.ci = select i1 %i.ch, ptr %i.ce, ptr %i.cc, !unpredictable !17
  %i.cj = select i1 %i.ch, ptr %i.cc, ptr %i.ce, !unpredictable !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !alias.scope !3509
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !alias.scope !3509
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !alias.scope !3509
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !alias.scope !3509
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa113, i64 16, i1 false), !alias.scope !3509
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa113, i64 %i.m
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !alias.scope !3509
  br label %bb.j

end_hunk_3
begin_hunk_4_@_ZN7console5utils5style17hb381d313d45317d3E:"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h628197b4721d62aaE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21045
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers13diff_deadline17h7d83de40c522954fE(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 0, 1000000001) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %spec.select.i.i13 = tail call noundef i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %spec.select.i.i, 1
  %i.d = add i64 %i.c, %spec.select.i.i13
  %i.e = lshr i64 %i.d, 1
  %i.f = add nuw i64 %i.e, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.f)
          to label %bb.d unwind label %bb.c

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14": ; preds = %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  %.val11 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.g = icmp eq i64 %.val11, 0
  br i1 %i.g, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val12 = load ptr, ptr %i.h, align 8, !nonnull !17, !noundef !17
  %i.i = shl nuw i64 %.val11, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit"

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val9 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.l = icmp eq i64 %.val9, 0
  br i1 %i.l, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !17, !noundef !17
  %i.n = shl nuw i64 %.val9, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN114_$LT$similar..algorithms..compact..Compact$LT$Old$C$New$C$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h01cb7c09234c7d59E"(ptr noalias noundef align 8 dereferenceable(160) %0)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.val7 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.o = icmp eq i64 %.val7, 0
  br i1 %i.o, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17
  %i.q = shl nuw i64 %.val7, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val5 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.r = icmp eq i64 %.val5, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load ptr, ptr %i.s, align 8, !nonnull !17, !noundef !17
  %i.t = shl nuw i64 %.val5, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16": ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit": ; preds = %bb.b, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers13diff_deadline17h83970c7aa31c62daE(ptr noalias noundef nonnull align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %4, i64 %3)
  %spec.select.i.i13 = tail call noundef i64 @llvm.usub.sat.i64(i64 %8, i64 %7)
  %i.c = add i64 %spec.select.i.i, 1
  %i.d = add i64 %i.c, %spec.select.i.i13
  %i.e = lshr i64 %i.d, 1
  %i.f = add nuw i64 %i.e, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN7similar10algorithms5myers1V3new17hbcc4419b04149885E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.f)
          to label %bb.d unwind label %bb.c

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14": ; preds = %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  %.val11 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.g = icmp eq i64 %.val11, 0
  br i1 %i.g, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val12 = load ptr, ptr %i.h, align 8, !nonnull !17, !noundef !17
  %i.i = shl nuw i64 %.val11, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit"

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef align 8 dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.b, i64 %9, i32 noundef %10)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val9 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.l = icmp eq i64 %.val9, 0
  br i1 %i.l, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !17, !noundef !17
  %i.n = shl nuw i64 %.val9, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN114_$LT$similar..algorithms..compact..Compact$LT$Old$C$New$C$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6finish17h1a3fba58b3ae2c1bE"(ptr noalias noundef align 8 dereferenceable(176) %0)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.val7 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.o = icmp eq i64 %.val7, 0
  br i1 %i.o, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val8 = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17
  %i.q = shl nuw i64 %.val7, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val5 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.r = icmp eq i64 %.val5, 0
  br i1 %i.r, label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15"
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load ptr, ptr %i.s, align 8, !nonnull !17, !noundef !17
  %i.t = shl nuw i64 %.val5, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #51
  br label %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16"

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit16": ; preds = %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit15", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit": ; preds = %bb.b, %"_ZN4core3ptr50drop_in_place$LT$similar..algorithms..myers..V$GT$17hbba87834ff380461E.exit14"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h1e00322c539418d3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 9 uses
  %spec.select.i.i56 = tail call noundef i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 6 uses
  %i.a = sub i64 %spec.select.i.i, %spec.select.i.i56 ; 4 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0                     ; 3 uses
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808)
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809)
  store i64 0, ptr %i.d, align 8
  %i.e = add i64 %spec.select.i.i, 1
  %i.f = add i64 %i.e, %spec.select.i.i56
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !17 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %.not41.not = icmp samesign ugt i64 %i.i, %i.g
  br i1 %.not41.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !17 ; 2 uses
  %i.m = icmp ult i64 %i.l, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %.not42.not = icmp samesign ugt i64 %i.l, %i.g
  br i1 %.not42.not, label %.lr.ph132, label %bb.d, !prof !23

.lr.ph132:                                        ; preds = %bb.c
  %i.n = add i64 %spec.select.i.i, %2             ; 2 uses
  %i.o = add i64 %spec.select.i.i56, %5           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.p, align 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i = load ptr, ptr %i.q, align 8, !nonnull !17
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.r, align 8  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.s, align 8, !nonnull !17
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54
  unreachable

bb.e:                                             ; preds = %.lr.ph132, %._crit_edge127
  %.sroa.029.1131 = phi i64 [ 1, %.lr.ph132 ], [ %.sroa.029.1, %._crit_edge127 ] ; 3 uses
  %.sroa.029.0130 = phi i64 [ 0, %.lr.ph132 ], [ %.sroa.029.1131, %._crit_edge127 ] ; 16 uses
  %i.t = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef %10)
  br i1 %i.t, label %._crit_edge133, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = sub nsw i64 0, %.sroa.029.0130           ; 8 uses
  %i.v = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0130, i64 %i.u)
  switch i8 %i.v, label %.loopexit [
    i8 -1, label %.lr.ph126.preheader
    i8 0, label %bb.h
    i8 1, label %bb.g
  ]

.lr.ph126.preheader:                              ; preds = %.lr.ph.peel.next, %bb.ap, %bb.n, %bb.f
  br label %.lr.ph126

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i64 %.sroa.029.0130, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.7.1.peel = phi i64 [ %.sroa.029.0130, %bb.f ], [ %i.w, %bb.g ] ; 2 uses
  %.sroa.11.1.peel = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %i.x = icmp eq i64 %.sroa.029.0130, 0
  br i1 %i.x, label %._crit_edge150, label %._crit_edge148.a

._crit_edge148.a:                                 ; preds = %bb.h
  %.pre159 = add nsw i64 %.sroa.029.0130, -1
  %i.y = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.z = load i64, ptr %i.y, align 8, !noundef !17
  %i.aa = add i64 %i.z, 1
  br label %bb.i

._crit_edge150:                                   ; preds = %bb.h
  %i.ab = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !17
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge150, %._crit_edge148.a
  %.sroa.06.0.peel = phi i64 [ %i.ac, %._crit_edge150 ], [ %i.aa, %._crit_edge148.a ] ; 6 uses
  %i.ad = sub i64 %.sroa.06.0.peel, %.sroa.029.0130 ; 3 uses
  %i.ae = icmp ult i64 %.sroa.06.0.peel, %spec.select.i.i
  %i.af = icmp ult i64 %i.ad, %spec.select.i.i56
  %or.cond107.peel = and i1 %i.ae, %i.af
  br i1 %or.cond107.peel, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = add i64 %.sroa.06.0.peel, %2
  %i.ah = add i64 %i.ad, %5
  %i.ai = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h284e7a1f941e37c8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.ag, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.ah, i64 noundef %6)
  %i.aj = add i64 %i.ai, %.sroa.06.0.peel
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.06.1.peel = phi i64 [ %i.aj, %bb.j ], [ %.sroa.06.0.peel, %bb.i ]
  %i.ak = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0130, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1.peel, ptr %i.ak, align 8
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = sub i64 %.sroa.029.0130, %i.a           ; 2 uses
  %.sroa.012.0.peel = tail call i64 @llvm.abs.i64(i64 %i.al, i1 false)
  %.not47.not.peel = icmp slt i64 %.sroa.012.0.peel, %.sroa.029.0130
  br i1 %.not47.not.peel, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = sub i64 0, %i.al
  %i.an = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0130, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.ao = load i64, ptr %i.an, align 8, !noundef !17
  %i.ap = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !17
  %i.ar = add i64 %i.aq, %i.ao
  %.not48.peel = icmp ult i64 %i.ar, %spec.select.i.i
  br i1 %.not48.peel, label %bb.n, label %.loopexit141

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.not.i.peel = icmp slt i64 %.sroa.7.1.peel, %i.u
  %or.cond108.peel = select i1 %.sroa.11.1.peel, i1 true, i1 %.not.i.peel
  br i1 %or.cond108.peel, label %.lr.ph126.preheader, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.n, %bb.ap
  %.sroa.7.0118 = phi i64 [ %.sroa.7.1, %bb.ap ], [ %.sroa.7.1.peel, %bb.n ] ; 5 uses
  %i.as = add nsw i64 %.sroa.7.0118, -1           ; 8 uses
  %i.at = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.as, i64 %i.u)
  switch i8 %i.at, label %.loopexit [
    i8 -1, label %.lr.ph126.preheader
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

.loopexit:                                        ; preds = %bb.f, %.lr.ph.peel.next
  unreachable

bb.o:                                             ; preds = %.lr.ph.peel.next
  %i.au = add nsw i64 %.sroa.7.0118, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.peel.next
  %.sroa.7.1 = phi i64 [ %i.as, %.lr.ph.peel.next ], [ %i.au, %bb.o ] ; 2 uses
  %.sroa.11.1 = phi i1 [ true, %.lr.ph.peel.next ], [ false, %bb.o ]
  %i.av = icmp eq i64 %i.as, %i.u
  br i1 %i.av, label %bb.ak, label %bb.aj

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %bb.ag
  %not..sroa.1793.0124 = phi i64 [ 1, %bb.ag ], [ 0, %.lr.ph126.preheader ]
  %.sroa.792.0123 = phi i64 [ %.sroa.792.1, %bb.ag ], [ %.sroa.029.0130, %.lr.ph126.preheader ] ; 2 uses
  %i.aw = sub i64 %.sroa.792.0123, %not..sroa.1793.0124 ; 13 uses
  %.not.i.not.i58 = icmp sgt i64 %i.aw, %.sroa.792.0123
  br i1 %.not.i.not.i58, label %._crit_edge127, label %bb.q

bb.q:                                             ; preds = %.lr.ph126
  %i.ax = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.aw, i64 %i.u)
  switch i8 %i.ax, label %bb.r [
    i8 -1, label %._crit_edge127
    i8 0, label %bb.t
    i8 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ay = add i64 %i.aw, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.792.1 = phi i64 [ %i.aw, %bb.q ], [ %i.ay, %bb.s ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.q ], [ false, %bb.s ]
  %i.az = icmp eq i64 %i.aw, %i.u
  br i1 %i.az, label %._crit_edge152, label %bb.u

._crit_edge152:                                   ; preds = %bb.t
  %.pre = add nsw i64 %i.aw, 1
  br label %bb.v

._crit_edge127:                                   ; preds = %bb.ag, %bb.q, %.lr.ph126
  %11 = icmp samesign ule i64 %.sroa.029.1131, %i.g ; 2 uses
  %i.ba = zext i1 %11 to i64
  %.sroa.029.1 = add nuw nsw i64 %.sroa.029.1131, %i.ba
  br i1 %11, label %bb.e, label %._crit_edge133

bb.u:                                             ; preds = %bb.t
  %.not43 = icmp eq i64 %i.aw, %.sroa.029.0130
  %.pre153 = add i64 %i.aw, -1                    ; 2 uses
  br i1 %.not43, label %._crit_edge151, label %bb.w

bb.v:                                             ; preds = %._crit_edge152, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge152 ], [ %i.bi, %bb.w ]
  %i.bb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817)
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !17
  br label %bb.x

._crit_edge151:                                   ; preds = %bb.u, %bb.w
  %i.bd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816)
  %i.be = load i64, ptr %i.bd, align 8, !noundef !17
  %i.bf = add i64 %i.be, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814)
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !17
  %i.bi = add i64 %i.aw, 1                        ; 2 uses
  %i.bj = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815)
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !17
  %i.bl = icmp ult i64 %i.bh, %i.bk
  br i1 %i.bl, label %bb.v, label %._crit_edge151

bb.x:                                             ; preds = %._crit_edge151, %bb.v
  %.sroa.016.0 = phi i64 [ %i.bc, %bb.v ], [ %i.bf, %._crit_edge151 ] ; 5 uses
  %i.bm = sub i64 %.sroa.016.0, %i.aw             ; 4 uses
  %i.bn = icmp ult i64 %.sroa.016.0, %spec.select.i.i
  %i.bo = icmp ult i64 %i.bm, %spec.select.i.i56
  %or.cond = and i1 %i.bn, %i.bo
  br i1 %or.cond, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit
  %.sroa.022.0 = phi i64 [ %i.cn, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit ], [ %i.bm, %bb.x ]
  %.sroa.016.1 = phi i64 [ %i.cm, %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit ], [ %.sroa.016.0, %bb.x ] ; 2 uses
  %i.bp = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818)
  store i64 %.sroa.016.1, ptr %i.bp, align 8
  br i1 %.not, label %bb.af, label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.bq = sub i64 %i.n, %.sroa.016.0              ; 3 uses
  %i.br = sub i64 %i.o, %i.bm                     ; 3 uses
  %i.bs = icmp uge i64 %2, %i.bq
  %i.bt = icmp uge i64 %5, %i.br
  %or.cond.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.z
  %i.bu = sub nuw i64 %i.bq, %2                   ; 2 uses
  %i.bv = sub nuw i64 %i.br, %5                   ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i
  %i.bw = phi i64 [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.bz, %bb.ae ]
  %.sroa.01.032.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.cl, %bb.ae ] ; 4 uses
  %i.bx = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %i.by, %bb.ae ]
  %i.by = add i64 %i.bx, -1                       ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.032.i.i.i.i, %i.bu
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add i64 %i.bw, -1                       ; 4 uses
  %i.ca = icmp ult i64 %i.by, %.val11.i.i.i.i.i
  br i1 %i.ca, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.by, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21071
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i": ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %.val10.i.i.i.i.i, i64 %i.by ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !21072, !nonnull !17, !align !31, !noundef !17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !21072, !noundef !17 ; 2 uses
  %i.cf = icmp ult i64 %i.bz, %.val9.i.i.i.i.i
  br i1 %i.cf, label %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bz, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21071
  unreachable

"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit.i.i.i.i.i"
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %i.bz ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21073, !noundef !17
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ce, %i.ci
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i": ; preds = %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i"
  %i.cj = load ptr, ptr %i.cg, align 8, !noalias !21073, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.cc, ptr nonnull readonly align 1 %i.cj, i64 %i.ce), !alias.scope !21074, !noalias !21075
  %i.ck = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ck, label %bb.ae, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit

bb.ae:                                            ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i"
  %i.cl = add nuw i64 %.sroa.01.032.i.i.i.i, 1    ; 2 uses
  %exitcond59.not.i.i.i.i = icmp eq i64 %i.cl, %i.bv
  br i1 %exitcond59.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit, label %bb.aa

_ZN7similar10algorithms5utils17common_suffix_len17hcf4f5f4d62cf737dE.exit: ; preds = %bb.aa, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i", %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i", %bb.ae, %bb.z
  %.sroa.0.0.i = phi i64 [ 0, %bb.z ], [ %i.bu, %bb.aa ], [ %.sroa.01.032.i.i.i.i, %"_ZN100_$LT$similar..text..inline..MultiLookup$LT$T$GT$$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h19f1c8532de09011E.exit12.i.i.i.i.i" ], [ %.sroa.01.032.i.i.i.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i.i" ], [ %i.bv, %bb.ae ] ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i, %.sroa.016.0
  %i.cn = add i64 %.sroa.0.0.i, %i.bm
  br label %bb.y

bb.af:                                            ; preds = %bb.y
  %i.co = sub i64 %i.aw, %i.a                     ; 2 uses
  %.sroa.026.0 = tail call i64 @llvm.abs.i64(i64 %i.co, i1 false)
  %.not44 = icmp sgt i64 %.sroa.026.0, %.sroa.029.0130
  br i1 %.not44, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ah, %bb.y
  %.not.i57 = icmp slt i64 %.sroa.792.1, %i.u
  %or.cond109 = or i1 %.sroa.12.1, %.not.i57
  br i1 %or.cond109, label %._crit_edge127, label %.lr.ph126

bb.ah:                                            ; preds = %bb.af
  %i.cp = sub i64 0, %i.co
  %i.cq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819)
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !17
  %i.cs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !17
  %i.cu = add i64 %i.ct, %i.cr
  %.not45 = icmp ult i64 %i.cu, %spec.select.i.i
  br i1 %.not45, label %bb.ag, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cv = sub i64 %i.n, %.sroa.016.1
  %i.cw = sub i64 %i.o, %.sroa.022.0
  br label %._crit_edge133.sink.split

bb.aj:                                            ; preds = %bb.p
  %.not46 = icmp eq i64 %i.as, %.sroa.029.0130
  %.pre157 = add nsw i64 %.sroa.7.0118, -2        ; 2 uses
  br i1 %.not46, label %._crit_edge149, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.p
  %i.cx = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0118, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !17
  br label %bb.am

._crit_edge149:                                   ; preds = %bb.aj, %bb.al
  %i.cz = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.da = load i64, ptr %i.cz, align 8, !noundef !17
  %i.db = add i64 %i.da, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821)
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !17
  %i.de = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0118, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822)
  %i.df = load i64, ptr %i.de, align 8, !noundef !17
  %i.dg = icmp ult i64 %i.dd, %i.df
  br i1 %i.dg, label %bb.ak, label %._crit_edge149

bb.am:                                            ; preds = %._crit_edge149, %bb.ak
  %.sroa.06.0 = phi i64 [ %i.cy, %bb.ak ], [ %i.db, %._crit_edge149 ] ; 6 uses
  %i.dh = sub i64 %.sroa.06.0, %i.as              ; 3 uses
  %i.di = icmp ult i64 %.sroa.06.0, %spec.select.i.i
  %i.dj = icmp ult i64 %i.dh, %spec.select.i.i56
  %or.cond107 = and i1 %i.di, %i.dj
  br i1 %or.cond107, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ao
  %.sroa.06.1 = phi i64 [ %i.do, %bb.ao ], [ %.sroa.06.0, %bb.am ]
  %i.dk = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1, ptr %i.dk, align 8
  br i1 %.not, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.dl = add i64 %.sroa.06.0, %2
  %i.dm = add i64 %i.dh, %5
  %i.dn = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h284e7a1f941e37c8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %i.dl, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %i.dm, i64 noundef %6)
  %i.do = add i64 %i.dn, %.sroa.06.0
  br label %bb.an

bb.ap:                                            ; preds = %bb.aq, %bb.ar, %bb.an
  %.not.i = icmp slt i64 %.sroa.7.1, %i.u
  %or.cond108 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond108, label %.lr.ph126.preheader, label %.lr.ph.peel.next, !llvm.loop !21070

bb.aq:                                            ; preds = %bb.an
  %i.dp = sub i64 %i.as, %i.a                     ; 2 uses
  %.sroa.012.0 = tail call i64 @llvm.abs.i64(i64 %i.dp, i1 false)
  %.not47.not = icmp slt i64 %.sroa.012.0, %.sroa.029.0130
  br i1 %.not47.not, label %bb.ar, label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.dq = sub i64 0, %i.dp
  %i.dr = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !17
  %i.dt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.du = load i64, ptr %i.dt, align 8, !noundef !17
  %i.dv = add i64 %i.du, %i.ds
  %.not48 = icmp ult i64 %i.dv, %spec.select.i.i
  br i1 %.not48, label %bb.ap, label %.loopexit141

.loopexit141:                                     ; preds = %bb.m, %bb.ar
  %.sroa.06.0.lcssa = phi i64 [ %.sroa.06.0, %bb.ar ], [ %.sroa.06.0.peel, %bb.m ]
  %.lcssa = phi i64 [ %i.dh, %bb.ar ], [ %i.ad, %bb.m ]
  %i.dw = add i64 %.sroa.06.0.lcssa, %2
  %i.dx = add i64 %.lcssa, %5
  br label %._crit_edge133.sink.split

._crit_edge133.sink.split:                        ; preds = %.loopexit141, %bb.ai
  %.sink194 = phi i64 [ %i.cv, %bb.ai ], [ %i.dw, %.loopexit141 ]
  %.sink192 = phi i64 [ %i.cw, %bb.ai ], [ %i.dx, %.loopexit141 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink194, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink192, ptr %i.dz, align 8
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge127, %bb.e, %._crit_edge133.sink.split
  %.sink = phi i64 [ 1, %._crit_edge133.sink.split ], [ 0, %bb.e ], [ 0, %._crit_edge127 ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17h74207d7c70bc4285E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 7 uses
  %spec.select.i.i56 = tail call noundef i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 5 uses
  %i.a = sub i64 %spec.select.i.i, %spec.select.i.i56 ; 3 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0                     ; 2 uses
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808)
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809)
  store i64 0, ptr %i.d, align 8
  %i.e = add i64 %spec.select.i.i, 1
  %i.f = add i64 %i.e, %spec.select.i.i56
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !17 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %.not41.not = icmp samesign ugt i64 %i.i, %i.g
  br i1 %.not41.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !17 ; 2 uses
  %i.m = icmp ult i64 %i.l, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %.not42.not = icmp samesign ugt i64 %i.l, %i.g
  br i1 %.not42.not, label %.lr.ph150, label %bb.d, !prof !23

.lr.ph150:                                        ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i67 = load i64, ptr %i.p, align 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i68 = load i64, ptr %i.t, align 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i69 = load ptr, ptr %i.u, align 8, !nonnull !17 ; 2 uses
  %.val10.i.i.i.i.i70 = load ptr, ptr %i.q, align 8, !nonnull !17 ; 2 uses
  %i.v = add i64 %spec.select.i.i, %2             ; 2 uses
  %i.w = add i64 %spec.select.i.i56, %5           ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54
  unreachable

bb.e:                                             ; preds = %.lr.ph150, %._crit_edge145
  %.sroa.029.1149 = phi i64 [ 1, %.lr.ph150 ], [ %.sroa.029.1, %._crit_edge145 ] ; 3 uses
  %.sroa.029.0148 = phi i64 [ 0, %.lr.ph150 ], [ %.sroa.029.1149, %._crit_edge145 ] ; 7 uses
  %i.x = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef %10)
  br i1 %i.x, label %._crit_edge151, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.y = sub nsw i64 0, %.sroa.029.0148           ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.an
  %not..sroa.1497.0137 = phi i64 [ 1, %bb.an ], [ 0, %.lr.ph.preheader ]
  %.sroa.7.0136 = phi i64 [ %.sroa.7.1, %bb.an ], [ %.sroa.029.0148, %.lr.ph.preheader ] ; 2 uses
  %i.z = sub i64 %.sroa.7.0136, %not..sroa.1497.0137 ; 13 uses
  %.not.i.not.i = icmp sgt i64 %i.z, %.sroa.7.0136
  br i1 %.not.i.not.i, label %.lr.ph144.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aa = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.z, i64 %i.y)
  switch i8 %i.aa, label %bb.g [
    i8 -1, label %.lr.ph144.preheader
    i8 0, label %bb.i
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = add i64 %i.z, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.7.1 = phi i64 [ %i.z, %bb.f ], [ %i.ab, %bb.h ] ; 2 uses
  %.sroa.11.1 = phi i1 [ true, %bb.f ], [ false, %bb.h ]
  %i.ac = icmp eq i64 %i.z, %i.y
  br i1 %i.ac, label %._crit_edge162, label %bb.ac

._crit_edge162:                                   ; preds = %bb.i
  %.pre167 = add nsw i64 %i.z, 1
  br label %bb.ad

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %bb.z
  %not..sroa.17106.0142 = phi i64 [ 1, %bb.z ], [ 0, %.lr.ph144.preheader ]
  %.sroa.7105.0141 = phi i64 [ %.sroa.7105.1, %bb.z ], [ %.sroa.029.0148, %.lr.ph144.preheader ] ; 2 uses
  %i.ad = sub i64 %.sroa.7105.0141, %not..sroa.17106.0142 ; 13 uses
  %.not.i.not.i58 = icmp sgt i64 %i.ad, %.sroa.7105.0141
  br i1 %.not.i.not.i58, label %._crit_edge145, label %bb.j

bb.j:                                             ; preds = %.lr.ph144
  %i.ae = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ad, i64 %i.y)
  switch i8 %i.ae, label %bb.k [
    i8 -1, label %._crit_edge145
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = add i64 %i.ad, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.7105.1 = phi i64 [ %i.ad, %bb.j ], [ %i.af, %bb.l ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %i.ag = icmp eq i64 %i.ad, %i.y
  br i1 %i.ag, label %._crit_edge164, label %bb.n

._crit_edge164:                                   ; preds = %bb.m
  %.pre = add nsw i64 %i.ad, 1
  br label %bb.o

._crit_edge145:                                   ; preds = %bb.z, %bb.j, %.lr.ph144
  %11 = icmp samesign ule i64 %.sroa.029.1149, %i.g ; 2 uses
  %i.ah = zext i1 %11 to i64
  %.sroa.029.1 = add nuw nsw i64 %.sroa.029.1149, %i.ah
  br i1 %11, label %bb.e, label %._crit_edge151

bb.n:                                             ; preds = %bb.m
  %.not43 = icmp eq i64 %i.ad, %.sroa.029.0148
  %.pre165 = add i64 %i.ad, -1                    ; 2 uses
  br i1 %.not43, label %._crit_edge163, label %bb.p

bb.o:                                             ; preds = %._crit_edge164, %bb.p
  %.pre-phi = phi i64 [ %.pre, %._crit_edge164 ], [ %i.ap, %bb.p ]
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817)
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !17
  br label %bb.q

._crit_edge163:                                   ; preds = %bb.n, %bb.p
  %i.ak = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre165, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816)
  %i.al = load i64, ptr %i.ak, align 8, !noundef !17
  %i.am = add i64 %i.al, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.an = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre165, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814)
  %i.ao = load i64, ptr %i.an, align 8, !noundef !17
  %i.ap = add i64 %i.ad, 1                        ; 2 uses
  %i.aq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815)
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !17
  %i.as = icmp ult i64 %i.ao, %i.ar
  br i1 %i.as, label %bb.o, label %._crit_edge163

bb.q:                                             ; preds = %._crit_edge163, %bb.o
  %.sroa.016.0 = phi i64 [ %i.aj, %bb.o ], [ %i.am, %._crit_edge163 ] ; 5 uses
  %i.at = sub i64 %.sroa.016.0, %i.ad             ; 4 uses
  %i.au = icmp ult i64 %.sroa.016.0, %spec.select.i.i
  %i.av = icmp ult i64 %i.at, %spec.select.i.i56
  %or.cond = and i1 %i.au, %i.av
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit
  %.sroa.022.0 = phi i64 [ %i.bq, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit ], [ %i.at, %bb.q ]
  %.sroa.016.1 = phi i64 [ %i.bp, %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit ], [ %.sroa.016.0, %bb.q ] ; 2 uses
  %i.aw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818)
  store i64 %.sroa.016.1, ptr %i.aw, align 8
  br i1 %.not, label %bb.y, label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ax = sub i64 %i.v, %.sroa.016.0              ; 3 uses
  %i.ay = sub i64 %i.w, %i.at                     ; 3 uses
  %i.az = icmp uge i64 %2, %i.ax
  %i.ba = icmp uge i64 %5, %i.ay
  %or.cond.i = or i1 %i.az, %i.ba
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s
  %i.bb = sub nuw i64 %i.ax, %2                   ; 2 uses
  %i.bc = sub nuw i64 %i.ay, %5                   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.bd = phi i64 [ %i.ax, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.x ]
  %.sroa.01.031.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bo, %bb.x ] ; 3 uses
  %i.be = phi i64 [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.bf, %bb.x ]
  %i.bf = add i64 %i.be, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.031.i.i.i.i, %i.bb
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = add i64 %i.bd, -1                       ; 2 uses
  %i.bh = sub i64 %i.bf, %i.o                     ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %.val11.i.i.i.i.i67
  br i1 %i.bi, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bh, i64 noundef %.val11.i.i.i.i.i67, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21106
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.u
  %i.bj = sub i64 %i.bg, %i.s                     ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %.val9.i.i.i.i.i68
  br i1 %i.bk, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bj, i64 noundef %.val9.i.i.i.i.i68, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21107
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i70, i64 %i.bh
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i69, i64 %i.bj
  %.val12.i.i.i.i.i = load i32, ptr %i.bl, align 4, !noalias !21108, !noundef !17
  %.val13.i.i.i.i.i = load i32, ptr %i.bm, align 4, !noalias !21108, !noundef !17
  %i.bn = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.bn, label %bb.x, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit

bb.x:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %i.bo = add nuw i64 %.sroa.01.031.i.i.i.i, 1    ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.bo, %i.bc
  br i1 %exitcond61.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.t

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit: ; preds = %bb.t, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", %bb.x, %bb.s
  %.sroa.0.0.i = phi i64 [ 0, %bb.s ], [ %i.bb, %bb.t ], [ %.sroa.01.031.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i" ], [ %i.bc, %bb.x ] ; 2 uses
  %i.bp = add i64 %.sroa.0.0.i, %.sroa.016.0
  %i.bq = add i64 %.sroa.0.0.i, %i.at
  br label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.br = sub i64 %i.ad, %i.a                     ; 2 uses
  %.sroa.026.0 = tail call i64 @llvm.abs.i64(i64 %i.br, i1 false)
  %.not44 = icmp sgt i64 %.sroa.026.0, %.sroa.029.0148
  br i1 %.not44, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.aa, %bb.r
  %.not.i57 = icmp slt i64 %.sroa.7105.1, %i.y
  %or.cond122 = select i1 %.sroa.12.1, i1 true, i1 %.not.i57
  br i1 %or.cond122, label %._crit_edge145, label %.lr.ph144

bb.aa:                                            ; preds = %bb.y
  %i.bs = sub i64 0, %i.br
  %i.bt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819)
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !17
  %i.bv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !17
  %i.bx = add i64 %i.bw, %i.bu
  %.not45 = icmp ult i64 %i.bx, %spec.select.i.i
  br i1 %.not45, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = sub i64 %i.v, %.sroa.016.1
  %i.bz = sub i64 %i.w, %.sroa.022.0
  br label %._crit_edge151.sink.split

bb.ac:                                            ; preds = %bb.i
  %.not46 = icmp eq i64 %i.z, %.sroa.029.0148
  %.pre169 = add i64 %i.z, -1                     ; 2 uses
  br i1 %.not46, label %._crit_edge161, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge162, %bb.ae
  %.pre-phi168 = phi i64 [ %.pre167, %._crit_edge162 ], [ %i.ch, %bb.ae ]
  %i.ca = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre-phi168, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !17
  br label %bb.af

._crit_edge161:                                   ; preds = %bb.ac, %bb.ae
  %i.cc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !17
  %i.ce = add i64 %i.cd, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821)
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !17
  %i.ch = add i64 %i.z, 1                         ; 2 uses
  %i.ci = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822)
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !17
  %i.ck = icmp ult i64 %i.cg, %i.cj
  br i1 %i.ck, label %bb.ad, label %._crit_edge161

bb.af:                                            ; preds = %._crit_edge161, %bb.ad
  %.sroa.06.0 = phi i64 [ %i.cb, %bb.ad ], [ %i.ce, %._crit_edge161 ] ; 6 uses
  %i.cl = sub i64 %.sroa.06.0, %i.z               ; 3 uses
  %i.cm = icmp ult i64 %.sroa.06.0, %spec.select.i.i
  %i.cn = icmp ult i64 %i.cl, %spec.select.i.i56
  %or.cond120 = and i1 %i.cm, %i.cn
  br i1 %or.cond120, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.06.1 = phi i64 [ %i.cz, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.06.0, %bb.af ]
  %i.co = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1, ptr %i.co, align 8
  br i1 %.not, label %bb.an, label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.cp = add i64 %.sroa.06.0, %2                 ; 3 uses
  %i.cq = add i64 %i.cl, %5                       ; 3 uses
  %i.cr = icmp uge i64 %i.cp, %3
  %i.cs = icmp uge i64 %i.cq, %6
  %or.cond.i64 = or i1 %i.cr, %i.cs
  br i1 %or.cond.i64, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %i.cq
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %i.cp
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i65 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i65, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit, label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %bb.ai
  %invariant.op.i.i.i.i = sub i64 %i.cq, %i.o     ; 2 uses
  %invariant.op.i = sub i64 %i.cp, %i.s           ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.lr.ph.i.i.i.i66
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i66 ], [ %i.ct, %bb.am ] ; 4 uses
  %i.ct = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.cu = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i67
  br i1 %i.cu, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i67, i64 %invariant.op.i.i.i.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i67, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21109
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71": ; preds = %bb.aj
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.cv = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i68
  br i1 %i.cv, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72", label %bb.al

bb.al:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71"
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i68, i64 %invariant.op.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i68, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21110
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i71"
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i70, i64 %.reass.i.i.i.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i69, i64 %.reass.i
  %.val12.i.i.i.i.i73 = load i32, ptr %i.cw, align 4, !noalias !21111, !noundef !17
  %.val13.i.i.i.i.i74 = load i32, ptr %i.cx, align 4, !noalias !21111, !noundef !17
  %i.cy = icmp eq i32 %.val12.i.i.i.i.i73, %.val13.i.i.i.i.i74
  br i1 %i.cy, label %bb.am, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.am:                                            ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72"
  %exitcond.not.i.i.i.i76 = icmp eq i64 %i.ct, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i76, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit, label %bb.aj

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72", %bb.am, %bb.ah, %bb.ai
  %.sroa.0.0.i75 = phi i64 [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.sroa.0.0.i.i.i.i, %bb.am ], [ %.sroa.01.034.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i72" ]
  %i.cz = add i64 %.sroa.0.0.i75, %.sroa.06.0
  br label %bb.ag

bb.an:                                            ; preds = %bb.ao, %bb.ap, %bb.ag
  %.not.i = icmp slt i64 %.sroa.7.1, %i.y
  %or.cond121 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond121, label %.lr.ph144.preheader, label %.lr.ph

.lr.ph144.preheader:                              ; preds = %.lr.ph, %bb.f, %bb.an
  br label %.lr.ph144

bb.ao:                                            ; preds = %bb.ag
  %i.da = sub i64 %i.z, %i.a                      ; 2 uses
  %.sroa.012.0 = tail call i64 @llvm.abs.i64(i64 %i.da, i1 false)
  %.not47.not = icmp slt i64 %.sroa.012.0, %.sroa.029.0148
  br i1 %.not47.not, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %bb.ao
  %i.db = sub i64 0, %i.da
  %i.dc = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !17
  %i.de = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.df = load i64, ptr %i.de, align 8, !noundef !17
  %i.dg = add i64 %i.df, %i.dd
  %.not48 = icmp ult i64 %i.dg, %spec.select.i.i
  br i1 %.not48, label %bb.an, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dh = add i64 %.sroa.06.0, %2
  %i.di = add i64 %i.cl, %5
  br label %._crit_edge151.sink.split

._crit_edge151.sink.split:                        ; preds = %bb.aq, %bb.ab
  %.sink200 = phi i64 [ %i.by, %bb.ab ], [ %i.dh, %bb.aq ]
  %.sink198 = phi i64 [ %i.bz, %bb.ab ], [ %i.di, %bb.aq ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink200, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink198, ptr %i.dk, align 8
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge145, %bb.e, %._crit_edge151.sink.split
  %.sink = phi i64 [ 1, %._crit_edge151.sink.split ], [ 0, %bb.e ], [ 0, %._crit_edge145 ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers17find_middle_snake17he29e0990f4fb73b2E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias noundef nonnull align 8 dereferenceable(32) %9, ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 %11, i32 noundef range(i32 0, 1000000001) %12) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %4, i64 %3) ; 7 uses
  %spec.select.i.i56 = tail call noundef i64 @llvm.usub.sat.i64(i64 %8, i64 %7) ; 5 uses
  %i.a = sub i64 %spec.select.i.i, %spec.select.i.i56 ; 3 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0                     ; 2 uses
  %i.c = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808)
  store i64 0, ptr %i.c, align 8
  %i.d = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809)
  store i64 0, ptr %i.d, align 8
  %i.e = add i64 %spec.select.i.i, 1
  %i.f = add i64 %i.e, %spec.select.i.i56
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !17 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  %.not41.not = icmp samesign ugt i64 %i.i, %i.g
  br i1 %.not41.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !17 ; 2 uses
  %i.m = icmp ult i64 %i.l, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %.not42.not = icmp samesign ugt i64 %i.l, %i.g
  br i1 %.not42.not, label %.lr.ph149, label %bb.d, !prof !23

.lr.ph149:                                        ; preds = %bb.c
  %i.n = add i64 %spec.select.i.i, %3             ; 2 uses
  %i.o = add i64 %spec.select.i.i56, %7           ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54
  unreachable

bb.e:                                             ; preds = %.lr.ph149, %._crit_edge144
  %.sroa.029.1148 = phi i64 [ 1, %.lr.ph149 ], [ %.sroa.029.1, %._crit_edge144 ] ; 3 uses
  %.sroa.029.0147 = phi i64 [ 0, %.lr.ph149 ], [ %.sroa.029.1148, %._crit_edge144 ] ; 7 uses
  %i.p = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %11, i32 noundef %12)
  br i1 %i.p, label %._crit_edge150, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.q = sub nsw i64 0, %.sroa.029.0147           ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.am
  %not..sroa.1498.0136 = phi i64 [ 1, %bb.am ], [ 0, %.lr.ph.preheader ]
  %.sroa.7.0135 = phi i64 [ %.sroa.7.1, %bb.am ], [ %.sroa.029.0147, %.lr.ph.preheader ] ; 2 uses
  %i.r = sub i64 %.sroa.7.0135, %not..sroa.1498.0136 ; 13 uses
  %.not.i.not.i = icmp sgt i64 %i.r, %.sroa.7.0135
  br i1 %.not.i.not.i, label %.lr.ph143.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.s = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.r, i64 %i.q)
  switch i8 %i.s, label %bb.g [
    i8 -1, label %.lr.ph143.preheader
    i8 0, label %bb.i
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = add i64 %i.r, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.7.1 = phi i64 [ %i.r, %bb.f ], [ %i.t, %bb.h ] ; 2 uses
  %.sroa.11.1 = phi i1 [ true, %bb.f ], [ false, %bb.h ]
  %i.u = icmp eq i64 %i.r, %i.q
  br i1 %i.u, label %._crit_edge163, label %bb.ac

._crit_edge163:                                   ; preds = %bb.i
  %.pre168 = add nsw i64 %i.r, 1
  br label %bb.ad

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.z
  %not..sroa.17107.0141 = phi i64 [ 1, %bb.z ], [ 0, %.lr.ph143.preheader ]
  %.sroa.7106.0140 = phi i64 [ %.sroa.7106.1, %bb.z ], [ %.sroa.029.0147, %.lr.ph143.preheader ] ; 2 uses
  %i.v = sub i64 %.sroa.7106.0140, %not..sroa.17107.0141 ; 13 uses
  %.not.i.not.i58 = icmp sgt i64 %i.v, %.sroa.7106.0140
  br i1 %.not.i.not.i58, label %._crit_edge144, label %bb.j

bb.j:                                             ; preds = %.lr.ph143
  %i.w = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.v, i64 %i.q)
  switch i8 %i.w, label %bb.k [
    i8 -1, label %._crit_edge144
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = add i64 %i.v, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.7106.1 = phi i64 [ %i.v, %bb.j ], [ %i.x, %bb.l ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %i.y = icmp eq i64 %i.v, %i.q
  br i1 %i.y, label %._crit_edge165, label %bb.n

._crit_edge165:                                   ; preds = %bb.m
  %.pre = add nsw i64 %i.v, 1
  br label %bb.o

._crit_edge144:                                   ; preds = %bb.z, %bb.j, %.lr.ph143
  %13 = icmp samesign ule i64 %.sroa.029.1148, %i.g ; 2 uses
  %i.z = zext i1 %13 to i64
  %.sroa.029.1 = add nuw nsw i64 %.sroa.029.1148, %i.z
  br i1 %13, label %bb.e, label %._crit_edge150

bb.n:                                             ; preds = %bb.m
  %.not43 = icmp eq i64 %i.v, %.sroa.029.0147
  %.pre166 = add i64 %i.v, -1                     ; 2 uses
  br i1 %.not43, label %._crit_edge164, label %bb.p

bb.o:                                             ; preds = %._crit_edge165, %bb.p
  %.pre-phi = phi i64 [ %.pre, %._crit_edge165 ], [ %i.ah, %bb.p ]
  %i.aa = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %.pre-phi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817)
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !17
  br label %bb.q

._crit_edge164:                                   ; preds = %bb.n, %bb.p
  %i.ac = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %.pre166, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816)
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !17
  %i.ae = add i64 %i.ad, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.af = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %.pre166, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814)
  %i.ag = load i64, ptr %i.af, align 8, !noundef !17
  %i.ah = add i64 %i.v, 1                         ; 2 uses
  %i.ai = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815)
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !17
  %i.ak = icmp ult i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.o, label %._crit_edge164

bb.q:                                             ; preds = %._crit_edge164, %bb.o
  %.sroa.016.0 = phi i64 [ %i.ab, %bb.o ], [ %i.ae, %._crit_edge164 ] ; 5 uses
  %i.al = sub i64 %.sroa.016.0, %i.v              ; 4 uses
  %i.am = icmp ult i64 %.sroa.016.0, %spec.select.i.i
  %i.an = icmp ult i64 %i.al, %spec.select.i.i56
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit
  %.sroa.022.0 = phi i64 [ %i.bi, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit ], [ %i.al, %bb.q ]
  %.sroa.016.1 = phi i64 [ %i.bh, %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit ], [ %.sroa.016.0, %bb.q ] ; 2 uses
  %i.ao = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818)
  store i64 %.sroa.016.1, ptr %i.ao, align 8
  br i1 %.not, label %bb.y, label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ap = sub i64 %i.n, %.sroa.016.0              ; 3 uses
  %i.aq = sub i64 %i.o, %i.al                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21155)
  %i.ar = icmp uge i64 %3, %i.ap
  %i.as = icmp uge i64 %7, %i.aq
  %or.cond.i = or i1 %i.ar, %i.as
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s
  %i.at = sub nuw i64 %i.ap, %3                   ; 2 uses
  %i.au = sub nuw i64 %i.aq, %7                   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i
  %i.av = phi i64 [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.x ]
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.x ] ; 4 uses
  %i.aw = phi i64 [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ax, %bb.x ]
  %i.ax = add i64 %i.aw, -1                       ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.034.i.i.i.i, %i.at
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = add i64 %i.av, -1                       ; 4 uses
  %i.az = icmp ult i64 %i.ax, %6
  br i1 %i.az, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ax, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21156
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i": ; preds = %bb.u
  %i.ba = icmp ult i64 %i.ay, %2
  br i1 %i.ba, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ay, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21157
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i"
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ax ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ay ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val9.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !21155, !noalias !21158, !noundef !17 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  %.val11.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !21154, !noalias !21159, !noundef !17
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i", label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i"
  %.val10.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !21154, !noalias !21159, !nonnull !17, !align !31, !noundef !17
  %.val.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !21155, !noalias !21158, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val10.i.i.i.i.i, i64 %.val9.i.i.i.i.i), !alias.scope !21160, !noalias !21161
  %i.bf = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %bb.x, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit

bb.x:                                             ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i"
  %i.bg = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %exitcond63.not.i.i.i.i = icmp eq i64 %i.bg, %i.au
  br i1 %exitcond63.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit, label %bb.t

_ZN7similar10algorithms5utils17common_suffix_len17h03be657363a2f45dE.exit: ; preds = %bb.t, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i", %bb.x, %bb.s
  %.sroa.0.0.i = phi i64 [ 0, %bb.s ], [ %i.at, %bb.t ], [ %.sroa.01.034.i.i.i.i, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i" ], [ %.sroa.01.034.i.i.i.i, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i" ], [ %i.au, %bb.x ] ; 2 uses
  %i.bh = add i64 %.sroa.0.0.i, %.sroa.016.0
  %i.bi = add i64 %.sroa.0.0.i, %i.al
  br label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.bj = sub i64 %i.v, %i.a                      ; 2 uses
  %.sroa.026.0 = tail call i64 @llvm.abs.i64(i64 %i.bj, i1 false)
  %.not44 = icmp sgt i64 %.sroa.026.0, %.sroa.029.0147
  br i1 %.not44, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.aa, %bb.r
  %.not.i57 = icmp slt i64 %.sroa.7106.1, %i.q
  %or.cond123 = select i1 %.sroa.12.1, i1 true, i1 %.not.i57
  br i1 %or.cond123, label %._crit_edge144, label %.lr.ph143

bb.aa:                                            ; preds = %bb.y
  %i.bk = sub i64 0, %i.bj
  %i.bl = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819)
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !17
  %i.bn = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820)
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !17
  %i.bp = add i64 %i.bo, %i.bm
  %.not45 = icmp ult i64 %i.bp, %spec.select.i.i
  br i1 %.not45, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = sub i64 %i.n, %.sroa.016.1
  %i.br = sub i64 %i.o, %.sroa.022.0
  br label %._crit_edge150.sink.split

bb.ac:                                            ; preds = %bb.i
  %.not46 = icmp eq i64 %i.r, %.sroa.029.0147
  %.pre170 = add i64 %i.r, -1                     ; 2 uses
  br i1 %.not46, label %._crit_edge162, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge163, %bb.ae
  %.pre-phi169 = phi i64 [ %.pre168, %._crit_edge163 ], [ %i.bz, %bb.ae ]
  %i.bs = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %.pre-phi169, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824)
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !17
  br label %bb.af

._crit_edge162:                                   ; preds = %bb.ac, %bb.ae
  %i.bu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %.pre170, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823)
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !17
  %i.bw = add i64 %i.bv, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bx = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %.pre170, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821)
  %i.by = load i64, ptr %i.bx, align 8, !noundef !17
  %i.bz = add i64 %i.r, 1                         ; 2 uses
  %i.ca = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822)
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !17
  %i.cc = icmp ult i64 %i.by, %i.cb
  br i1 %i.cc, label %bb.ad, label %._crit_edge162

bb.af:                                            ; preds = %._crit_edge162, %bb.ad
  %.sroa.06.0 = phi i64 [ %i.bt, %bb.ad ], [ %i.bw, %._crit_edge162 ] ; 6 uses
  %i.cd = sub i64 %.sroa.06.0, %i.r               ; 3 uses
  %i.ce = icmp ult i64 %.sroa.06.0, %spec.select.i.i
  %i.cf = icmp ult i64 %i.cd, %spec.select.i.i56
  %or.cond121 = and i1 %i.ce, %i.cf
  br i1 %or.cond121, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit
  %.sroa.06.1 = phi i64 [ %i.cr, %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit ], [ %.sroa.06.0, %bb.af ]
  %i.cg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825)
  store i64 %.sroa.06.1, ptr %i.cg, align 8
  br i1 %.not, label %bb.am, label %bb.an

bb.ah:                                            ; preds = %bb.af
  %i.ch = add i64 %.sroa.06.0, %3                 ; 5 uses
  %i.ci = add i64 %i.cd, %7                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21163)
  %i.cj = icmp uge i64 %i.ch, %4
  %i.ck = icmp uge i64 %i.ci, %8
  %or.cond.i64 = or i1 %i.cj, %i.ck
  br i1 %or.cond.i64, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %spec.select.i.i.i.i.i = sub nuw i64 %8, %i.ci
  %spec.select.i.i4.i.i.i = sub nuw i64 %4, %i.ch
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i65 = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i65, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.ai
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 %2) ; 2 uses
  %umax15.i = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %6) ; 2 uses
  %i.cl = sub nuw i64 %umax15.i, %i.ci
  %i.cm = sub nuw i64 %umax.i, %i.ch
  %invariant.gep.i = getelementptr [16 x i8], ptr %5, i64 %i.ci
  %invariant.gep21.i = getelementptr [16 x i8], ptr %1, i64 %i.ch
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %bb.al, %.lr.ph.i.i.i.preheader.i
  %.sroa.01.036.i.i.i.i = phi i64 [ %i.cn, %bb.al ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 7 uses
  %i.cn = add nuw i64 %.sroa.01.036.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.cl
  br i1 %exitcond.not.i, label %bb.aj, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67"

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i66
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax15.i, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21164
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67": ; preds = %.lr.ph.i.i.i.i66
  %exitcond16.not.i = icmp eq i64 %.sroa.01.036.i.i.i.i, %i.cm
  br i1 %exitcond16.not.i, label %bb.ak, label %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68"

bb.ak:                                            ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21165
  unreachable

"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit.i.i.i.i.i67"
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %gep22.i = getelementptr [16 x i8], ptr %invariant.gep21.i, i64 %.sroa.01.036.i.i.i.i ; 2 uses
  %i.co = getelementptr i8, ptr %gep.i, i64 8
  %.val9.i.i.i.i.i69 = load i64, ptr %i.co, align 8, !alias.scope !21163, !noalias !21166, !noundef !17 ; 2 uses
  %i.cp = getelementptr i8, ptr %gep22.i, i64 8
  %.val11.i.i.i.i.i70 = load i64, ptr %i.cp, align 8, !alias.scope !21162, !noalias !21167, !noundef !17
  %.not.i.i.i.i.i.i.i71 = icmp eq i64 %.val9.i.i.i.i.i69, %.val11.i.i.i.i.i70
  br i1 %.not.i.i.i.i.i.i.i71, label %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73", label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73": ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68"
  %.val10.i.i.i.i.i74 = load ptr, ptr %gep22.i, align 8, !alias.scope !21162, !noalias !21167, !nonnull !17, !align !31, !noundef !17
  %.val.i.i.i.i.i75 = load ptr, ptr %gep.i, align 8, !alias.scope !21163, !noalias !21166, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i.i.i.i.i.i76 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i75, ptr nonnull readonly align 1 %.val10.i.i.i.i.i74, i64 %.val9.i.i.i.i.i69), !alias.scope !21168, !noalias !21169
  %i.cq = icmp eq i32 %bcmp.i.i.i.i.i.i.i76, 0
  br i1 %i.cq, label %bb.al, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit

bb.al:                                            ; preds = %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73"
  %exitcond.not.i.i.i.i77 = icmp eq i64 %i.cn, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i77, label %_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit, label %.lr.ph.i.i.i.i66

_ZN7similar10algorithms5utils17common_prefix_len17h2c6b24b85e9bc871E.exit: ; preds = %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68", %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73", %bb.al, %bb.ah, %bb.ai
  %.sroa.0.0.i72 = phi i64 [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.sroa.0.0.i.i.i.i, %bb.al ], [ %.sroa.01.036.i.i.i.i, %"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hc57047b0d4032495E.exit12.i.i.i.i.i68" ], [ %.sroa.01.036.i.i.i.i, %"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h82dd1b8512c9e770E.exit.i.i.i.i.i73" ]
  %i.cr = add i64 %.sroa.0.0.i72, %.sroa.06.0
  br label %bb.ag

bb.am:                                            ; preds = %bb.an, %bb.ao, %bb.ag
  %.not.i = icmp slt i64 %.sroa.7.1, %i.q
  %or.cond122 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond122, label %.lr.ph143.preheader, label %.lr.ph

.lr.ph143.preheader:                              ; preds = %.lr.ph, %bb.f, %bb.am
  br label %.lr.ph143

bb.an:                                            ; preds = %bb.ag
  %i.cs = sub i64 %i.r, %i.a                      ; 2 uses
  %.sroa.012.0 = tail call i64 @llvm.abs.i64(i64 %i.cs, i1 false)
  %.not47.not = icmp slt i64 %.sroa.012.0, %.sroa.029.0147
  br i1 %.not47.not, label %bb.ao, label %bb.am

bb.ao:                                            ; preds = %bb.an
  %i.ct = sub i64 0, %i.cs
  %i.cu = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %9, i64 noundef %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826)
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !17
  %i.cw = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %10, i64 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827)
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !17
  %i.cy = add i64 %i.cx, %i.cv
  %.not48 = icmp ult i64 %i.cy, %spec.select.i.i
  br i1 %.not48, label %bb.am, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cz = add i64 %.sroa.06.0, %3
  %i.da = add i64 %i.cd, %7
  br label %._crit_edge150.sink.split

._crit_edge150.sink.split:                        ; preds = %bb.ap, %bb.ab
  %.sink205 = phi i64 [ %i.bq, %bb.ab ], [ %i.cz, %bb.ap ]
  %.sink203 = phi i64 [ %i.br, %bb.ab ], [ %i.da, %bb.ap ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink205, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink203, ptr %i.dc, align 8
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %._crit_edge144, %bb.e, %._crit_edge150.sink.split
  %.sink = phi i64 [ 1, %._crit_edge150.sink.split ], [ 0, %bb.e ], [ 0, %._crit_edge144 ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21231)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !21232, !noalias !21233, !noundef !17
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !21231, !noalias !21234, !noundef !17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !21230, !noalias !21231
  %invariant.op.i = sub i64 %2, %i.i              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !21230, !noalias !21231 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !21230, !noalias !21231, !nonnull !17
  %.val10.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21231, !noalias !21230, !nonnull !17
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.l, %bb.f ] ; 5 uses
  %i.l = add nuw i64 %.sroa.01.034.i.i.i.i, 1     ; 2 uses
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.m = icmp ult i64 %.reass.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %i.m, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val11.i.i.i.i.i, i64 %invariant.op.i.i.i.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #54, !noalias !21235
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i": ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.034.i.i.i.i, %invariant.op.i ; 2 uses
  %i.n = icmp ult i64 %.reass.i, %.val9.i.i.i.i.i
  br i1 %i.n, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %.val9.i.i.i.i.i, i64 %invariant.op.i)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax17.i, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @829) #54, !noalias !21236
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i"
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i, i64 %.reass.i.i.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %.reass.i
  %.val12.i.i.i.i.i = load i32, ptr %i.o, align 4, !noalias !21237, !noundef !17
  %.val13.i.i.i.i.i = load i32, ptr %i.p, align 4, !noalias !21237, !noundef !17
  %i.q = icmp eq i32 %.val12.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.q, label %bb.f, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit

bb.f:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %exitcond.not.i.i.i.i = icmp eq i64 %i.l, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, label %bb.c

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit: ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i"
  %.not = icmp eq i64 %.sroa.01.034.i.i.i.i, 0
  br i1 %.not, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread, label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread: ; preds = %bb.b, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit", %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i82 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i86, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit" ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.r = add i64 %.sroa.0.0.i82, %2               ; 11 uses
  %i.s = add i64 %.sroa.0.0.i82, %5               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21239)
  %i.t = icmp uge i64 %i.r, %3
  %i.u = icmp uge i64 %i.s, %6
  %or.cond.i21 = or i1 %i.t, %i.u
  br i1 %or.cond.i21, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %i.v = sub nuw i64 %3, %i.r                     ; 2 uses
  %i.w = sub nuw i64 %6, %i.s                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21239, !noalias !21238
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i23 = load i64, ptr %i.z, align 8, !alias.scope !21239, !noalias !21238 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !21238, !noalias !21239
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i24 = load i64, ptr %i.ac, align 8, !alias.scope !21238, !noalias !21239 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i25 = load ptr, ptr %i.ad, align 8, !alias.scope !21238, !noalias !21239, !nonnull !17
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i26 = load ptr, ptr %i.ae, align 8, !alias.scope !21239, !noalias !21238, !nonnull !17
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i22
  %i.af = phi i64 [ %3, %.lr.ph.i.i.i.i22 ], [ %i.ai, %bb.k ]
  %.sroa.01.031.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i22 ], [ %i.aq, %bb.k ] ; 3 uses
  %i.ag = phi i64 [ %6, %.lr.ph.i.i.i.i22 ], [ %i.ah, %bb.k ]
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  %exitcond.not.i.i.i.i27 = icmp eq i64 %.sroa.01.031.i.i.i.i, %i.v
  br i1 %exitcond.not.i.i.i.i27, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add i64 %i.af, -1                       ; 2 uses
  %i.aj = sub i64 %i.ah, %i.y                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.val11.i.i.i.i.i23
  br i1 %i.ak, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aj, i64 noundef %.val11.i.i.i.i.i23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @830) #54, !noalias !21240
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28": ; preds = %bb.h
  %i.al = sub i64 %i.ai, %i.ab                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %.val9.i.i.i.i.i24
  br i1 %i.am, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", label %bb.j

bb.j:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.al, i64 noundef %.val9.i.i.i.i.i24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #54, !noalias !21241
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit.i.i.i.i.i28"
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i26, i64 %i.aj
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i25, i64 %i.al
  %.val12.i.i.i.i.i30 = load i32, ptr %i.an, align 4, !noalias !21242, !noundef !17
  %.val13.i.i.i.i.i31 = load i32, ptr %i.ao, align 4, !noalias !21242, !noundef !17
  %i.ap = icmp eq i32 %.val12.i.i.i.i.i30, %.val13.i.i.i.i.i31
  br i1 %i.ap, label %bb.k, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit

bb.k:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29"
  %i.aq = add nuw i64 %.sroa.01.031.i.i.i.i, 1    ; 2 uses
  %exitcond61.not.i.i.i.i = icmp eq i64 %i.aq, %i.w
  br i1 %exitcond61.not.i.i.i.i, label %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, label %bb.g

_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit: ; preds = %bb.g, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29", %bb.k, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread
  %.sroa.0.0.i32 = phi i64 [ 0, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread ], [ %i.v, %bb.g ], [ %.sroa.01.031.i.i.i.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5b2be97a755f9c63E.exit14.i.i.i.i.i29" ], [ %i.w, %bb.k ] ; 4 uses
  %i.ar = sub i64 %3, %.sroa.0.0.i32              ; 6 uses
  %i.as = sub i64 %6, %.sroa.0.0.i32              ; 6 uses
  %.not2 = icmp ult i64 %i.r, %i.ar               ; 2 uses
  %.not3 = icmp ult i64 %i.s, %i.as               ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.m, label %bb.n

_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83: ; preds = %bb.f, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit
  %.sroa.0.0.i86 = phi i64 [ %.sroa.01.034.i.i.i.i, %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit ], [ %.sroa.0.0.i.i.i.i, %bb.f ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !21243, !noalias !21244, !noundef !17 ; 3 uses
  %i.aw = load i64, ptr %i.at, align 8, !range !20, !alias.scope !21243, !noalias !21244, !noundef !17
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

bb.l:                                             ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21245
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit": ; preds = %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread83, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !21243, !noalias !21244, !nonnull !17, !noundef !17
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %i.av ; 4 uses
  store i64 0, ptr %i.ba, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %2, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %5, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %.sroa.0.0.i86, ptr %.sroa.658.0..sroa_idx, align 8
  %i.bb = add i64 %i.av, 1
  store i64 %i.bb, ptr %i.au, align 8, !alias.scope !21243, !noalias !21244
  br label %_ZN7similar10algorithms5utils17common_prefix_len17hff27e7aa0186c89bE.exit.thread

bb.m:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit
  br i1 %.not3, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_ZN7similar10algorithms5utils17common_suffix_len17h11189b5b7082b4e9E.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35", %bb.y
  %.not5 = icmp eq i64 %.sroa.0.0.i32, 0
  br i1 %.not5, label %bb.ab, label %bb.z

bb.o:                                             ; preds = %bb.m
  br i1 %.not2, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.m
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %i.r)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !21246, !noalias !21247, !noundef !17 ; 3 uses
  %i.bf = load i64, ptr %i.bc, align 8, !range !20, !alias.scope !21246, !noalias !21247, !noundef !17
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit33"
end_hunk_4
begin_hunk_5_@_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E:bb.a
"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit35": ; preds = %bb.s, %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !21249, !noalias !21250, !nonnull !17, !noundef !17
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bp ; 4 uses
  store i64 2, ptr %i.bu, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.r, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.s, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %spec.select.i.i34, ptr %.sroa.678.0..sroa_idx, align 8
  %i.bv = add i64 %i.bp, 1
  store i64 %i.bv, ptr %i.bo, align 8, !alias.scope !21249, !noalias !21250
  br label %bb.n

bb.u:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !17 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.r, i64 noundef %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.s, i64 noundef %i.bz, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h22bc49cd46d3f836E(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bx, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bz, i64 noundef %i.as, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.ca = sub nuw i64 %i.ar, %i.r
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !21252, !noalias !21253, !noundef !17 ; 4 uses
  %i.ce = load i64, ptr %i.cb, align 8, !range !20, !alias.scope !21252, !noalias !21253, !noundef !17
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

bb.w:                                             ; preds = %bb.v
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21254
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36": ; preds = %bb.v, %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !21252, !noalias !21253, !nonnull !17, !noundef !17
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.cd ; 4 uses
  store i64 1, ptr %i.ci, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.r, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.ca, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 %i.s, ptr %.sroa.663.0..sroa_idx, align 8
  %i.cj = add i64 %i.cd, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.cc, align 8, !alias.scope !21252, !noalias !21253
  %i.ck = sub nuw i64 %i.as, %i.s
  %i.cl = load i64, ptr %i.cb, align 8, !range !20, !alias.scope !21255, !noalias !21256, !noundef !17
  %i.cm = icmp eq i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21257
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36", %bb.x
  %i.cn = load ptr, ptr %i.cg, align 8, !alias.scope !21255, !noalias !21256, !nonnull !17, !noundef !17
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %i.cj ; 4 uses
  store i64 2, ptr %i.co, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.r, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.s, ptr %.sroa.572.0..sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i64 %i.ck, ptr %.sroa.673.0..sroa_idx, align 8
  %i.cp = add i64 %i.cd, 2
  store i64 %i.cp, ptr %i.cc, align 8, !alias.scope !21255, !noalias !21256
  br label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.z:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !21258, !noalias !21259, !noundef !17 ; 3 uses
  %i.ct = load i64, ptr %i.cq, align 8, !range !20, !alias.scope !21258, !noalias !21259, !noundef !17
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.aa:                                            ; preds = %bb.z
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21260
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %bb.z, %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !21258, !noalias !21259, !nonnull !17, !noundef !17
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cw, i64 %i.cs ; 4 uses
  store i64 0, ptr %i.cx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %.sroa.0.0.i32, ptr %.sroa.654.0..sroa_idx, align 8
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.cr, align 8, !alias.scope !21258, !noalias !21259
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef nonnull align 8 dereferenceable(216) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 14 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 10 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21285
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21285
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21286
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21286
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21286
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21286
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21286
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21286
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21286
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21286
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bb, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit", %bb.ba
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bf, label %bb.be

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.ba

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21287
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21287
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21287
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21287
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21287
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21287
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21289)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i = sub i64 %i.f, %i.c       ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21290
  store i64 0, ptr %i.o, align 8, !noalias !21290
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21291
  store i64 0, ptr %i.p, align 8, !noalias !21291
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !21288, !noalias !21290, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.u, 1152921504606846976
  tail call void @llvm.assume(i1 %i.v)
  %.not41.not.i = icmp samesign ugt i64 %i.u, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21291
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !21289, !noalias !21292, !noundef !17 ; 2 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.y)
  %.not42.not.i = icmp samesign ugt i64 %i.x, %i.s
  br i1 %.not42.not.i, label %.lr.ph125.i, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21291
  unreachable

.lr.ph125.i:                                      ; preds = %bb.l, %._crit_edge120.i
  %.sroa.029.1124.i = phi i64 [ %.sroa.029.1.i, %._crit_edge120.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ %.sroa.029.1124.i, %._crit_edge120.i ], [ 0, %bb.l ] ; 23 uses
  %i.z = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21291
  br i1 %i.z, label %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph125.i
  %i.aa = sub nsw i64 0, %.sroa.029.0123.i        ; 9 uses
  %i.ab = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %i.aa) ; 2 uses
  switch i8 %i.ab, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ac = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.n ], [ %i.ac, %bb.o ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.n ], [ false, %bb.o ]
  %i.ad = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ad, label %._crit_edge147.i.a, label %._crit_edge145.i.a

._crit_edge145.i.a:                               ; preds = %bb.p
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.ae = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21291
  %i.af = load i64, ptr %i.ae, align 8, !noalias !21291, !noundef !17
  %i.ag = add i64 %i.af, 1
  br label %bb.q

._crit_edge147.i.a:                               ; preds = %bb.p
  %i.ah = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21291
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !21291, !noundef !17
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge147.i.a, %._crit_edge145.i.a
  %.sroa.06.0.peel.i = phi i64 [ %i.ai, %._crit_edge147.i.a ], [ %i.ag, %._crit_edge145.i.a ] ; 6 uses
  %i.aj = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.ak = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.al = icmp ult i64 %i.aj, %spec.select.i.i56.i
  %or.cond107.peel.i = and i1 %i.ak, %i.al
  br i1 %or.cond107.peel.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = add i64 %.sroa.06.0.peel.i, %i.b
  %i.an = add i64 %i.aj, %i.c
  %i.ao = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.am, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.an, i64 noundef %i.f), !noalias !21293
  %i.ap = add i64 %i.ao, %.sroa.06.0.peel.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.06.1.peel.i = phi i64 [ %i.ap, %bb.r ], [ %.sroa.06.0.peel.i, %bb.q ]
  %i.aq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21291
  store i64 %.sroa.06.1.peel.i, ptr %i.aq, align 8, !noalias !21291
  br i1 %.not.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.ar, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 0, %i.ar
  %i.at = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21291
  %i.au = load i64, ptr %i.at, align 8, !noalias !21291, !noundef !17
  %i.av = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21291
  %i.aw = load i64, ptr %i.av, align 8, !noalias !21291, !noundef !17
  %i.ax = add i64 %i.aw, %i.au
  %.not48.peel.i = icmp ult i64 %i.ax, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.v, label %.loopexit129.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.aa
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.v, %bb.ax
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ax ], [ %.sroa.7.1.peel.i, %bb.v ] ; 5 uses
  %i.ay = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %i.aa)
  switch i8 %i.az, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.x
    i8 1, label %bb.w
  ]

.loopexit.i:                                      ; preds = %bb.n, %.lr.ph.peel.next.i
  unreachable

bb.w:                                             ; preds = %.lr.ph.peel.next.i
  %i.ba = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.ay, %.lr.ph.peel.next.i ], [ %i.ba, %bb.w ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.w ]
  %i.bb = icmp eq i64 %i.ay, %i.aa
  br i1 %i.bb, label %bb.as, label %bb.ar

.lr.ph119.preheader.i:                            ; preds = %bb.ax, %.lr.ph.peel.next.i, %bb.v
  switch i8 %i.ab, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.z
    i8 1, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph119.preheader.i
  %i.bc = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bc, %bb.y ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.y ]
  br i1 %i.ad, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.z
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.bd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21291
  %i.be = load i64, ptr %i.bd, align 8, !noalias !21291, !noundef !17
  %i.bf = add i64 %i.be, 1
  br label %bb.aa

._crit_edge150.i:                                 ; preds = %bb.z
  %i.bg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21291
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !21291, !noundef !17
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bh, %._crit_edge150.i ], [ %i.bf, %._crit_edge148.i ] ; 5 uses
  %i.bi = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bj = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bk = icmp ult i64 %i.bi, %spec.select.i.i56.i
  %or.cond.peel.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.peel.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = sub nuw i64 %i.e, %.sroa.016.0.peel.i
  %i.bm = sub i64 %i.f, %i.bi
  %i.bn = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bm), !noalias !21293 ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.016.0.peel.i
  %i.bp = add i64 %i.bn, %i.bi
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.022.0.peel.i = phi i64 [ %i.bp, %bb.ab ], [ %i.bi, %bb.aa ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bo, %bb.ab ], [ %.sroa.016.0.peel.i, %bb.aa ] ; 2 uses
  %i.bq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21291
  store i64 %.sroa.016.1.peel.i, ptr %i.bq, align 8, !noalias !21291
  br i1 %.not.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.br = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.br, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 0, %i.br
  %i.bt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21291
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !21291, !noundef !17
  %i.bv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21291
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !21291, !noundef !17
  %i.bx = add i64 %i.bw, %i.bu
  %.not45.peel.i = icmp ult i64 %i.bx, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.af, label %.loopexit136.i

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %i.aa
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.af, %bb.ap
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.ap ], [ %.sroa.792.1.peel.i, %bb.af ] ; 5 uses
  %i.by = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.bz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.by, i64 %i.aa)
  switch i8 %i.bz, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ah
    i8 1, label %bb.ag
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ag:                                            ; preds = %.lr.ph119.peel.next.i
  %i.ca = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.by, %.lr.ph119.peel.next.i ], [ %i.ca, %bb.ag ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ag ]
  %i.cb = icmp eq i64 %i.by, %i.aa
  br i1 %i.cb, label %bb.aj, label %bb.ai

._crit_edge120.i:                                 ; preds = %bb.ap, %.lr.ph119.peel.next.i, %bb.n, %bb.af, %.lr.ph119.preheader.i
  %11 = icmp samesign ule i64 %.sroa.029.1124.i, %i.s ; 2 uses
  %i.cc = zext i1 %11 to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.cc
  br i1 %11, label %.lr.ph125.i, label %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit

bb.ai:                                            ; preds = %bb.ah
  %.not43.i = icmp eq i64 %i.by, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %i.cd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21291
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !21291, !noundef !17
  br label %bb.al

._crit_edge149.i:                                 ; preds = %bb.ak, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21291
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21291, !noundef !17
  %i.ch = add i64 %i.cg, 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ci = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21291
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !21291, !noundef !17
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21291
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21291, !noundef !17
  %i.cm = icmp ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.aj, label %._crit_edge149.i

bb.al:                                            ; preds = %._crit_edge149.i, %bb.aj
  %.sroa.016.0.i = phi i64 [ %i.ce, %bb.aj ], [ %i.ch, %._crit_edge149.i ] ; 5 uses
  %i.cn = sub i64 %.sroa.016.0.i, %i.by           ; 4 uses
  %i.co = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cp = icmp ult i64 %i.cn, %spec.select.i.i56.i
  %or.cond.i = and i1 %i.co, %i.cp
  br i1 %or.cond.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.sroa.022.0.i = phi i64 [ %i.cv, %bb.an ], [ %i.cn, %bb.al ]
  %.sroa.016.1.i = phi i64 [ %i.cu, %bb.an ], [ %.sroa.016.0.i, %bb.al ] ; 2 uses
  %i.cq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21291
  store i64 %.sroa.016.1.i, ptr %i.cq, align 8, !noalias !21291
  br i1 %.not.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cr = sub nuw i64 %i.e, %.sroa.016.0.i
  %i.cs = sub i64 %i.f, %i.cn
  %i.ct = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hd4a850fbcba52b1fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cs), !noalias !21293 ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.016.0.i
  %i.cv = add i64 %i.ct, %i.cn
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.cw = sub i64 %i.by, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cw, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %i.aa
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21273

bb.aq:                                            ; preds = %bb.ao
  %i.cx = sub i64 0, %i.cw
  %i.cy = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21291
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !21291, !noundef !17
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21291
  %i.db = load i64, ptr %i.da, align 8, !noalias !21291, !noundef !17
  %i.dc = add i64 %i.db, %i.cz
  %.not45.i = icmp ult i64 %i.dc, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.ap, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.ae, %bb.aq
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.aq ], [ %.sroa.022.0.peel.i, %bb.ae ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.aq ], [ %.sroa.016.1.peel.i, %bb.ae ]
  %i.dd = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.de = sub i64 %i.f, %.sroa.022.0.lcssa.i
  br label %bb.bb

bb.ar:                                            ; preds = %bb.x
  %.not46.i = icmp eq i64 %i.ay, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.x
  %i.df = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21291
  %i.dg = load i64, ptr %i.df, align 8, !noalias !21291, !noundef !17
  br label %bb.au

._crit_edge146.i:                                 ; preds = %bb.at, %bb.ar
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21291
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21291, !noundef !17
  %i.dj = add i64 %i.di, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dk = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21291
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !21291, !noundef !17
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21291
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21291, !noundef !17
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.as, label %._crit_edge146.i

bb.au:                                            ; preds = %._crit_edge146.i, %bb.as
  %.sroa.06.0.i = phi i64 [ %i.dg, %bb.as ], [ %i.dj, %._crit_edge146.i ] ; 6 uses
  %i.dp = sub i64 %.sroa.06.0.i, %i.ay            ; 3 uses
  %i.dq = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dr = icmp ult i64 %i.dp, %spec.select.i.i56.i
  %or.cond107.i = and i1 %i.dq, %i.dr
  br i1 %or.cond107.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.sroa.06.1.i = phi i64 [ %i.dw, %bb.aw ], [ %.sroa.06.0.i, %bb.au ]
  %i.ds = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21291
  store i64 %.sroa.06.1.i, ptr %i.ds, align 8, !noalias !21291
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.dt = add i64 %.sroa.06.0.i, %i.b
  %i.du = add i64 %i.dp, %i.c
  %i.dv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h2065f1dda291ed15E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dt, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.du, i64 noundef %i.f), !noalias !21293
  %i.dw = add i64 %i.dv, %.sroa.06.0.i
  br label %bb.av

bb.ax:                                            ; preds = %bb.az, %bb.ay, %bb.av
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.aa
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21274

bb.ay:                                            ; preds = %bb.av
  %i.dx = sub i64 %i.ay, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.az, label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.dy = sub i64 0, %i.dx
  %i.dz = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21291
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !21291, !noundef !17
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21291
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21291, !noundef !17
  %i.ed = add i64 %i.ec, %i.ea
  %.not48.i = icmp ult i64 %i.ed, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ax, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.u, %bb.az
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.az ], [ %.sroa.06.0.peel.i, %bb.u ]
  %.lcssa.i = phi i64 [ %i.dp, %bb.az ], [ %i.aj, %bb.u ]
  %i.ee = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.ef = add i64 %.lcssa.i, %i.c
  br label %bb.bb

bb.ba:                                            ; preds = %bb.f
  %spec.select.i.i24 = sub nuw i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.eg, align 8, !alias.scope !21294
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21294
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21294
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21294
  %i.eh = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.eh, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.eh, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ei = select i1 %i.eh, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ei, %spec.select.i.i24
  store i64 1, ptr %i.eg, align 8, !alias.scope !21294
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21294
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21294
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21294
  br label %bb.e

bb.bb:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.ef, %.loopexit129.i ], [ %i.de, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.ee, %.loopexit129.i ], [ %i.dd, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h243d15f85d89e788E(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit: ; preds = %._crit_edge120.i, %.lr.ph125.i
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h41efa12117bb65cfE"(ptr noalias noundef nonnull align 8 dereferenceable(216) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21295
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.ej, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21295
  %i.ek = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41"

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2bb39926573160f1E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21295
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21295
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h03c795ce699989ffE.exit41": ; preds = %bb.bc, %bb.bd
  %.sink.i39 = phi i64 [ %i.ek, %bb.bc ], [ %spec.select.i.i.i, %bb.bd ]
  store i64 1, ptr %0, align 8, !alias.scope !21295
end_hunk_5
begin_hunk_6_@_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE:bb.a

bb.t:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !17 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.j, i64 noundef %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.k, i64 noundef %i.bp, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h55317f51294f0a9cE(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bn, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.bp, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  br label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.bq = sub nuw i64 %i.ab, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21423)
  %i.br = load ptr, ptr %0, align 8, !alias.scope !21423, !nonnull !17, !align !29, !noundef !17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21424)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !21424, !noalias !21423, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 120 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 136 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !21425, !noalias !21426, !noundef !17 ; 3 uses
  %i.bw = load i64, ptr %i.bt, align 8, !range !20, !alias.scope !21425, !noalias !21426, !noundef !17
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.v:                                             ; preds = %bb.u
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21427
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %bb.u, %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !21425, !noalias !21426, !nonnull !17, !noundef !17
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.bv ; 4 uses
  store i64 1, ptr %i.ca, align 8, !noalias !21428
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.j, ptr %.sroa.467.0..sroa_idx, align 8, !noalias !21428
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %i.bq, ptr %.sroa.568.0..sroa_idx, align 8, !noalias !21428
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 %i.k, ptr %.sroa.669.0..sroa_idx, align 8, !noalias !21428
  %i.cb = add i64 %i.bv, 1
  store i64 %i.cb, ptr %i.bu, align 8, !alias.scope !21425, !noalias !21426
  %i.cc = sub nuw i64 %i.ac, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21429)
  %i.cd = load ptr, ptr %i.br, align 8, !alias.scope !21429, !noalias !21430, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 136 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !21431, !noalias !21432, !noundef !17 ; 3 uses
  %i.ch = load i64, ptr %i.ce, align 8, !range !20, !alias.scope !21431, !noalias !21432, !noundef !17
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21433
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !21431, !noalias !21432, !nonnull !17, !noundef !17
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.ck, i64 %i.cg ; 4 uses
  store i64 2, ptr %i.cl, align 8, !noalias !21434
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.j, ptr %.sroa.472.0..sroa_idx, align 8, !noalias !21434
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.k, ptr %.sroa.573.0..sroa_idx, align 8, !noalias !21434
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %i.cc, ptr %.sroa.674.0..sroa_idx, align 8, !noalias !21434
  %i.cm = add i64 %i.cg, 1
  store i64 %i.cm, ptr %i.cf, align 8, !alias.scope !21431, !noalias !21432
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.y:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21435)
  %i.cn = load ptr, ptr %0, align 8, !alias.scope !21435, !nonnull !17, !align !29, !noundef !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21436)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !21436, !noalias !21435, !nonnull !17, !align !29, !noundef !17 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 120 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 136 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !21437, !noalias !21438, !noundef !17 ; 3 uses
  %i.cs = load i64, ptr %i.cp, align 8, !range !20, !alias.scope !21437, !noalias !21438, !noundef !17
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

bb.z:                                             ; preds = %bb.y
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21439
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39": ; preds = %bb.y, %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !21437, !noalias !21438, !nonnull !17, !noundef !17
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.cr ; 4 uses
  store i64 0, ptr %i.cw, align 8, !noalias !21440
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !21440
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !21440
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.0.0.i29, ptr %.sroa.655.0..sroa_idx, align 8, !noalias !21440
  %i.cx = add i64 %i.cr, 1
  store i64 %i.cx, ptr %i.cq, align 8, !alias.scope !21437, !noalias !21438
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 14 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 10 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21465
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21465
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21466
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21466
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21466
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21466
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21466
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21466
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21466
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21466
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bb, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit", %bb.ba
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bf, label %bb.be

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.ba

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21467
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21467
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21467
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21467
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21467
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21467
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21469)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i = sub i64 %i.f, %i.c       ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21470
  store i64 0, ptr %i.o, align 8, !noalias !21470
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21471
  store i64 0, ptr %i.p, align 8, !noalias !21471
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !21468, !noalias !21470, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.u, 1152921504606846976
  tail call void @llvm.assume(i1 %i.v)
  %.not41.not.i = icmp samesign ugt i64 %i.u, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21471
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !21469, !noalias !21472, !noundef !17 ; 2 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.y)
  %.not42.not.i = icmp samesign ugt i64 %i.x, %i.s
  br i1 %.not42.not.i, label %.lr.ph125.i, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21471
  unreachable

.lr.ph125.i:                                      ; preds = %bb.l, %._crit_edge120.i
  %.sroa.029.1124.i = phi i64 [ %.sroa.029.1.i, %._crit_edge120.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ %.sroa.029.1124.i, %._crit_edge120.i ], [ 0, %bb.l ] ; 23 uses
  %i.z = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21471
  br i1 %i.z, label %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph125.i
  %i.aa = sub nsw i64 0, %.sroa.029.0123.i        ; 9 uses
  %i.ab = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %i.aa) ; 2 uses
  switch i8 %i.ab, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ac = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.n ], [ %i.ac, %bb.o ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.n ], [ false, %bb.o ]
  %i.ad = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ad, label %._crit_edge147.i.a, label %._crit_edge145.i.a

._crit_edge145.i.a:                               ; preds = %bb.p
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.ae = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21471
  %i.af = load i64, ptr %i.ae, align 8, !noalias !21471, !noundef !17
  %i.ag = add i64 %i.af, 1
  br label %bb.q

._crit_edge147.i.a:                               ; preds = %bb.p
  %i.ah = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21471
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !21471, !noundef !17
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge147.i.a, %._crit_edge145.i.a
  %.sroa.06.0.peel.i = phi i64 [ %i.ai, %._crit_edge147.i.a ], [ %i.ag, %._crit_edge145.i.a ] ; 6 uses
  %i.aj = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.ak = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.al = icmp ult i64 %i.aj, %spec.select.i.i56.i
  %or.cond107.peel.i = and i1 %i.ak, %i.al
  br i1 %or.cond107.peel.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = add i64 %.sroa.06.0.peel.i, %i.b
  %i.an = add i64 %i.aj, %i.c
  %i.ao = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.am, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.an, i64 noundef %i.f), !noalias !21473
  %i.ap = add i64 %i.ao, %.sroa.06.0.peel.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.06.1.peel.i = phi i64 [ %i.ap, %bb.r ], [ %.sroa.06.0.peel.i, %bb.q ]
  %i.aq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21471
  store i64 %.sroa.06.1.peel.i, ptr %i.aq, align 8, !noalias !21471
  br i1 %.not.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.ar, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 0, %i.ar
  %i.at = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21471
  %i.au = load i64, ptr %i.at, align 8, !noalias !21471, !noundef !17
  %i.av = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21471
  %i.aw = load i64, ptr %i.av, align 8, !noalias !21471, !noundef !17
  %i.ax = add i64 %i.aw, %i.au
  %.not48.peel.i = icmp ult i64 %i.ax, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.v, label %.loopexit129.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.aa
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.v, %bb.ax
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ax ], [ %.sroa.7.1.peel.i, %bb.v ] ; 5 uses
  %i.ay = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %i.aa)
  switch i8 %i.az, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.x
    i8 1, label %bb.w
  ]

.loopexit.i:                                      ; preds = %bb.n, %.lr.ph.peel.next.i
  unreachable

bb.w:                                             ; preds = %.lr.ph.peel.next.i
  %i.ba = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.ay, %.lr.ph.peel.next.i ], [ %i.ba, %bb.w ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.w ]
  %i.bb = icmp eq i64 %i.ay, %i.aa
  br i1 %i.bb, label %bb.as, label %bb.ar

.lr.ph119.preheader.i:                            ; preds = %bb.ax, %.lr.ph.peel.next.i, %bb.v
  switch i8 %i.ab, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.z
    i8 1, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph119.preheader.i
  %i.bc = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bc, %bb.y ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.y ]
  br i1 %i.ad, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.z
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.bd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21471
  %i.be = load i64, ptr %i.bd, align 8, !noalias !21471, !noundef !17
  %i.bf = add i64 %i.be, 1
  br label %bb.aa

._crit_edge150.i:                                 ; preds = %bb.z
  %i.bg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21471
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !21471, !noundef !17
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bh, %._crit_edge150.i ], [ %i.bf, %._crit_edge148.i ] ; 5 uses
  %i.bi = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bj = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bk = icmp ult i64 %i.bi, %spec.select.i.i56.i
  %or.cond.peel.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.peel.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = sub nuw i64 %i.e, %.sroa.016.0.peel.i
  %i.bm = sub i64 %i.f, %i.bi
  %i.bn = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bm), !noalias !21473 ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.016.0.peel.i
  %i.bp = add i64 %i.bn, %i.bi
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.022.0.peel.i = phi i64 [ %i.bp, %bb.ab ], [ %i.bi, %bb.aa ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bo, %bb.ab ], [ %.sroa.016.0.peel.i, %bb.aa ] ; 2 uses
  %i.bq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21471
  store i64 %.sroa.016.1.peel.i, ptr %i.bq, align 8, !noalias !21471
  br i1 %.not.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.br = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.br, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 0, %i.br
  %i.bt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21471
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !21471, !noundef !17
  %i.bv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21471
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !21471, !noundef !17
  %i.bx = add i64 %i.bw, %i.bu
  %.not45.peel.i = icmp ult i64 %i.bx, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.af, label %.loopexit136.i

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %i.aa
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.af, %bb.ap
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.ap ], [ %.sroa.792.1.peel.i, %bb.af ] ; 5 uses
  %i.by = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.bz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.by, i64 %i.aa)
  switch i8 %i.bz, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ah
    i8 1, label %bb.ag
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ag:                                            ; preds = %.lr.ph119.peel.next.i
  %i.ca = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.by, %.lr.ph119.peel.next.i ], [ %i.ca, %bb.ag ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ag ]
  %i.cb = icmp eq i64 %i.by, %i.aa
  br i1 %i.cb, label %bb.aj, label %bb.ai

._crit_edge120.i:                                 ; preds = %bb.ap, %.lr.ph119.peel.next.i, %bb.n, %bb.af, %.lr.ph119.preheader.i
  %11 = icmp samesign ule i64 %.sroa.029.1124.i, %i.s ; 2 uses
  %i.cc = zext i1 %11 to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.cc
  br i1 %11, label %.lr.ph125.i, label %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit

bb.ai:                                            ; preds = %bb.ah
  %.not43.i = icmp eq i64 %i.by, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %i.cd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21471
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !21471, !noundef !17
  br label %bb.al

._crit_edge149.i:                                 ; preds = %bb.ak, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21471
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21471, !noundef !17
  %i.ch = add i64 %i.cg, 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ci = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21471
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !21471, !noundef !17
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21471
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21471, !noundef !17
  %i.cm = icmp ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.aj, label %._crit_edge149.i

bb.al:                                            ; preds = %._crit_edge149.i, %bb.aj
  %.sroa.016.0.i = phi i64 [ %i.ce, %bb.aj ], [ %i.ch, %._crit_edge149.i ] ; 5 uses
  %i.cn = sub i64 %.sroa.016.0.i, %i.by           ; 4 uses
  %i.co = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cp = icmp ult i64 %i.cn, %spec.select.i.i56.i
  %or.cond.i = and i1 %i.co, %i.cp
  br i1 %or.cond.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.sroa.022.0.i = phi i64 [ %i.cv, %bb.an ], [ %i.cn, %bb.al ]
  %.sroa.016.1.i = phi i64 [ %i.cu, %bb.an ], [ %.sroa.016.0.i, %bb.al ] ; 2 uses
  %i.cq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21471
  store i64 %.sroa.016.1.i, ptr %i.cq, align 8, !noalias !21471
  br i1 %.not.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cr = sub nuw i64 %i.e, %.sroa.016.0.i
  %i.cs = sub i64 %i.f, %i.cn
  %i.ct = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17hbe1d6208897bcdf3E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cs), !noalias !21473 ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.016.0.i
  %i.cv = add i64 %i.ct, %i.cn
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.cw = sub i64 %i.by, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cw, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %i.aa
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21453

bb.aq:                                            ; preds = %bb.ao
  %i.cx = sub i64 0, %i.cw
  %i.cy = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21471
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !21471, !noundef !17
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21471
  %i.db = load i64, ptr %i.da, align 8, !noalias !21471, !noundef !17
  %i.dc = add i64 %i.db, %i.cz
  %.not45.i = icmp ult i64 %i.dc, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.ap, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.ae, %bb.aq
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.aq ], [ %.sroa.022.0.peel.i, %bb.ae ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.aq ], [ %.sroa.016.1.peel.i, %bb.ae ]
  %i.dd = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.de = sub i64 %i.f, %.sroa.022.0.lcssa.i
  br label %bb.bb

bb.ar:                                            ; preds = %bb.x
  %.not46.i = icmp eq i64 %i.ay, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.x
  %i.df = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21471
  %i.dg = load i64, ptr %i.df, align 8, !noalias !21471, !noundef !17
  br label %bb.au

._crit_edge146.i:                                 ; preds = %bb.at, %bb.ar
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21471
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21471, !noundef !17
  %i.dj = add i64 %i.di, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dk = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21471
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !21471, !noundef !17
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21471
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21471, !noundef !17
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.as, label %._crit_edge146.i

bb.au:                                            ; preds = %._crit_edge146.i, %bb.as
  %.sroa.06.0.i = phi i64 [ %i.dg, %bb.as ], [ %i.dj, %._crit_edge146.i ] ; 6 uses
  %i.dp = sub i64 %.sroa.06.0.i, %i.ay            ; 3 uses
  %i.dq = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dr = icmp ult i64 %i.dp, %spec.select.i.i56.i
  %or.cond107.i = and i1 %i.dq, %i.dr
  br i1 %or.cond107.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.sroa.06.1.i = phi i64 [ %i.dw, %bb.aw ], [ %.sroa.06.0.i, %bb.au ]
  %i.ds = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21471
  store i64 %.sroa.06.1.i, ptr %i.ds, align 8, !noalias !21471
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.dt = add i64 %.sroa.06.0.i, %i.b
  %i.du = add i64 %i.dp, %i.c
  %i.dv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h71563fe1837903d2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dt, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.du, i64 noundef %i.f), !noalias !21473
  %i.dw = add i64 %i.dv, %.sroa.06.0.i
  br label %bb.av

bb.ax:                                            ; preds = %bb.az, %bb.ay, %bb.av
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.aa
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21454

bb.ay:                                            ; preds = %bb.av
  %i.dx = sub i64 %i.ay, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.az, label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.dy = sub i64 0, %i.dx
  %i.dz = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21471
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !21471, !noundef !17
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21471
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21471, !noundef !17
  %i.ed = add i64 %i.ec, %i.ea
  %.not48.i = icmp ult i64 %i.ed, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ax, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.u, %bb.az
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.az ], [ %.sroa.06.0.peel.i, %bb.u ]
  %.lcssa.i = phi i64 [ %i.dp, %bb.az ], [ %i.aj, %bb.u ]
  %i.ee = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.ef = add i64 %.lcssa.i, %i.c
  br label %bb.bb

bb.ba:                                            ; preds = %bb.f
  %spec.select.i.i24 = sub nuw i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.eg, align 8, !alias.scope !21474
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21474
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21474
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21474
  %i.eh = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.eh, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.eh, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ei = select i1 %i.eh, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ei, %spec.select.i.i24
  store i64 1, ptr %i.eg, align 8, !alias.scope !21474
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21474
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21474
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21474
  br label %bb.e

bb.bb:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.ef, %.loopexit129.i ], [ %i.de, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.ee, %.loopexit129.i ], [ %i.dd, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17h760b571683fd3f76E(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit: ; preds = %._crit_edge120.i, %.lr.ph125.i
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17hc78c0996199f778aE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21475
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.ej, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21475
  %i.ek = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41"

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h2f141d3ad4b372e7E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21475
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21475
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17hf689744eea8dfb13E.exit41": ; preds = %bb.bc, %bb.bd
  %.sink.i39 = phi i64 [ %i.ek, %bb.bc ], [ %spec.select.i.i.i, %bb.bd ]
  store i64 1, ptr %0, align 8, !alias.scope !21475
end_hunk_6
begin_hunk_7_@_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E:bb.a
"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit36": ; preds = %bb.r, %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !21749, !noalias !21750, !nonnull !17, !noundef !17
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.az ; 4 uses
  store i64 2, ptr %i.be, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.j, ptr %.sroa.477.0..sroa_idx, align 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.k, ptr %.sroa.578.0..sroa_idx, align 8
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %spec.select.i.i35, ptr %.sroa.679.0..sroa_idx, align 8
  %i.bf = add i64 %i.az, 1
  store i64 %i.bf, ptr %i.ay, align 8, !alias.scope !21749, !noalias !21750
  br label %bb.m

bb.t:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !17 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !17 ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.j, i64 noundef %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.k, i64 noundef %i.bj, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17hc586c8503362c4e8E(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.bh, i64 noundef %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.bj, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(32) %9, ptr noalias noundef align 8 dereferenceable(32) %10, i64 %11, i32 noundef %12)
  br label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.bk = sub nuw i64 %i.ab, %i.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !21752, !noalias !21753, !noundef !17 ; 4 uses
  %i.bo = load i64, ptr %i.bl, align 8, !range !20, !alias.scope !21752, !noalias !21753, !noundef !17
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

bb.v:                                             ; preds = %bb.u
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !21754
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37": ; preds = %bb.u, %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !21752, !noalias !21753, !nonnull !17, !noundef !17
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.br, i64 %i.bn ; 4 uses
  store i64 1, ptr %i.bs, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.j, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.bk, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 %i.k, ptr %.sroa.664.0..sroa_idx, align 8
  %i.bt = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bt, ptr %i.bm, align 8, !alias.scope !21752, !noalias !21753
  %i.bu = sub nuw i64 %i.ac, %i.k
  %i.bv = load i64, ptr %i.bl, align 8, !range !20, !alias.scope !21755, !noalias !21756, !noundef !17
  %i.bw = icmp eq i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37"
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !21757
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit37", %bb.w
  %i.bx = load ptr, ptr %i.bq, align 8, !alias.scope !21755, !noalias !21756, !nonnull !17, !noundef !17
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bt ; 4 uses
  store i64 2, ptr %i.by, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.j, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.k, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i64 %i.bu, ptr %.sroa.674.0..sroa_idx, align 8
  %i.bz = add i64 %i.bn, 2
  store i64 %i.bz, ptr %i.bm, align 8, !alias.scope !21755, !noalias !21756
  br label %bb.x

bb.x:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit38", %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.y:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !21758, !noalias !21759, !noundef !17 ; 3 uses
  %i.cd = load i64, ptr %i.ca, align 8, !range !20, !alias.scope !21758, !noalias !21759, !noundef !17
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

bb.z:                                             ; preds = %bb.y
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17had10315a179204c8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29), !noalias !21760
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39": ; preds = %bb.y, %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !21758, !noalias !21759, !nonnull !17, !noundef !17
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.cc ; 4 uses
  store i64 0, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 %.sroa.0.0.i29, ptr %.sroa.655.0..sroa_idx, align 8
  %i.ci = add i64 %i.cc, 1
  store i64 %i.ci, ptr %i.cb, align 8, !alias.scope !21758, !noalias !21759
  br label %bb.aa

bb.aa:                                            ; preds = %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h2668de452b1d43d9E.exit39"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 0, 1000000001) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = add i64 %i.a, %2                         ; 14 uses
  %i.c = add i64 %i.a, %5                         ; 14 uses
  %i.d = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %6) ; 4 uses
  %i.e = sub i64 %3, %i.d                         ; 10 uses
  %i.f = sub i64 %6, %i.d                         ; 10 uses
  %.not2 = icmp ult i64 %i.b, %i.e                ; 2 uses
  %.not3 = icmp ult i64 %i.c, %i.f                ; 2 uses
  %or.cond = or i1 %.not2, %.not3
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !21785
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !alias.scope !21785
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !21786
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21786
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21786
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21786
  %i.i = trunc nuw i64 %.sroa.01.0.copyload.i to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i = select i1 %i.i, i64 %.sroa.4.0.copyload.i, i64 %2
  %.sroa.5.sroa.5.0.i = select i1 %i.i, i64 %.sroa.52.0.copyload.i, i64 %5
  %i.j = select i1 %i.i, i64 %.sroa.6.0.copyload.i, i64 0
  %.sroa.5.sroa.6.0.i = add i64 %i.j, %i.a
  store i64 1, ptr %i.h, align 8, !alias.scope !21786
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21786
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !21786
  store i64 %.sroa.5.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !21786
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.bb, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41", %bb.b, %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit", %bb.ba
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %bb.bf, label %bb.be

bb.f:                                             ; preds = %bb.d
  br i1 %.not2, label %bb.j, label %bb.ba

bb.g:                                             ; preds = %bb.d
  %spec.select.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.b) ; 2 uses
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !21787
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21787
  %i.l = add i64 %.sroa.5.0.copyload.i, %spec.select.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit"

bb.i:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i22, align 8, !alias.scope !21787
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i21, align 8, !alias.scope !21787
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit": ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.l, %bb.h ], [ %spec.select.i.i, %bb.i ]
  store i64 1, ptr %0, align 8, !alias.scope !21787
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21787
  br label %bb.e

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21789)
  %spec.select.i.i.i = sub nuw i64 %i.e, %i.b     ; 12 uses
  %spec.select.i.i56.i = sub i64 %i.f, %i.c       ; 7 uses
  %i.m = sub i64 %spec.select.i.i.i, %spec.select.i.i56.i ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0                   ; 4 uses
  %i.o = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @808), !noalias !21790
  store i64 0, ptr %i.o, align 8, !noalias !21790
  %i.p = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809), !noalias !21791
  store i64 0, ptr %i.p, align 8, !noalias !21791
  %i.q = add i64 %spec.select.i.i.i, 1
  %i.r = add i64 %i.q, %spec.select.i.i56.i
  %i.s = lshr i64 %i.r, 1                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !21788, !noalias !21790, !noundef !17 ; 2 uses
  %i.v = icmp ult i64 %i.u, 1152921504606846976
  tail call void @llvm.assume(i1 %i.v)
  %.not41.not.i = icmp samesign ugt i64 %i.u, %i.s
  br i1 %.not41.not.i, label %bb.l, label %bb.k, !prof !23

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @810, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #54, !noalias !21791
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !21789, !noalias !21792, !noundef !17 ; 2 uses
  %i.y = icmp ult i64 %i.x, 1152921504606846976
  tail call void @llvm.assume(i1 %i.y)
  %.not42.not.i = icmp samesign ugt i64 %i.x, %i.s
  br i1 %.not42.not.i, label %.lr.ph125.i, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @812, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #54, !noalias !21791
  unreachable

.lr.ph125.i:                                      ; preds = %bb.l, %._crit_edge120.i
  %.sroa.029.1124.i = phi i64 [ %.sroa.029.1.i, %._crit_edge120.i ], [ 1, %bb.l ] ; 3 uses
  %.sroa.029.0123.i = phi i64 [ %.sroa.029.1124.i, %._crit_edge120.i ], [ 0, %bb.l ] ; 23 uses
  %i.z = tail call noundef zeroext i1 @_ZN7similar16deadline_support17deadline_exceeded17hbf8d8876b55ae769E(i64 %9, i32 noundef range(i32 0, 1000000001) %10), !noalias !21791
  br i1 %i.z, label %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph125.i
  %i.aa = sub nsw i64 0, %.sroa.029.0123.i        ; 9 uses
  %i.ab = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %.sroa.029.0123.i, i64 %i.aa) ; 2 uses
  switch i8 %i.ab, label %.loopexit.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.p
    i8 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ac = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.7.1.peel.i = phi i64 [ %.sroa.029.0123.i, %bb.n ], [ %i.ac, %bb.o ] ; 2 uses
  %.sroa.11.1.peel.i = phi i1 [ true, %bb.n ], [ false, %bb.o ]
  %i.ad = icmp eq i64 %.sroa.029.0123.i, 0        ; 2 uses
  br i1 %i.ad, label %._crit_edge147.i.a, label %._crit_edge145.i.a

._crit_edge145.i.a:                               ; preds = %bb.p
  %.pre159.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.ae = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre159.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21791
  %i.af = load i64, ptr %i.ae, align 8, !noalias !21791, !noundef !17
  %i.ag = add i64 %i.af, 1
  br label %bb.q

._crit_edge147.i.a:                               ; preds = %bb.p
  %i.ah = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21791
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !21791, !noundef !17
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge147.i.a, %._crit_edge145.i.a
  %.sroa.06.0.peel.i = phi i64 [ %i.ai, %._crit_edge147.i.a ], [ %i.ag, %._crit_edge145.i.a ] ; 6 uses
  %i.aj = sub i64 %.sroa.06.0.peel.i, %.sroa.029.0123.i ; 3 uses
  %i.ak = icmp ult i64 %.sroa.06.0.peel.i, %spec.select.i.i.i
  %i.al = icmp ult i64 %i.aj, %spec.select.i.i56.i
  %or.cond107.peel.i = and i1 %i.ak, %i.al
  br i1 %or.cond107.peel.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = add i64 %.sroa.06.0.peel.i, %i.b
  %i.an = add i64 %i.aj, %i.c
  %i.ao = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.am, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.an, i64 noundef %i.f), !noalias !21793
  %i.ap = add i64 %i.ao, %.sroa.06.0.peel.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.06.1.peel.i = phi i64 [ %i.ap, %bb.r ], [ %.sroa.06.0.peel.i, %bb.q ]
  %i.aq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21791
  store i64 %.sroa.06.1.peel.i, ptr %i.aq, align 8, !noalias !21791
  br i1 %.not.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.012.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.ar, i1 false)
  %.not47.not.peel.i = icmp slt i64 %.sroa.012.0.peel.i, %.sroa.029.0123.i
  br i1 %.not47.not.peel.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = sub i64 0, %i.ar
  %i.at = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21791
  %i.au = load i64, ptr %i.at, align 8, !noalias !21791, !noundef !17
  %i.av = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21791
  %i.aw = load i64, ptr %i.av, align 8, !noalias !21791, !noundef !17
  %i.ax = add i64 %i.aw, %i.au
  %.not48.peel.i = icmp ult i64 %i.ax, %spec.select.i.i.i
  br i1 %.not48.peel.i, label %bb.v, label %.loopexit129.i

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.not.i.peel.i = icmp slt i64 %.sroa.7.1.peel.i, %i.aa
  %or.cond108.peel.i = select i1 %.sroa.11.1.peel.i, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond108.peel.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.v, %bb.ax
  %.sroa.7.0111.i = phi i64 [ %.sroa.7.1.i, %bb.ax ], [ %.sroa.7.1.peel.i, %bb.v ] ; 5 uses
  %i.ay = add nsw i64 %.sroa.7.0111.i, -1         ; 8 uses
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %i.aa)
  switch i8 %i.az, label %.loopexit.i [
    i8 -1, label %.lr.ph119.preheader.i
    i8 0, label %bb.x
    i8 1, label %bb.w
  ]

.loopexit.i:                                      ; preds = %bb.n, %.lr.ph.peel.next.i
  unreachable

bb.w:                                             ; preds = %.lr.ph.peel.next.i
  %i.ba = add nsw i64 %.sroa.7.0111.i, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.peel.next.i
  %.sroa.7.1.i = phi i64 [ %i.ay, %.lr.ph.peel.next.i ], [ %i.ba, %bb.w ] ; 2 uses
  %.sroa.11.1.i = phi i1 [ true, %.lr.ph.peel.next.i ], [ false, %bb.w ]
  %i.bb = icmp eq i64 %i.ay, %i.aa
  br i1 %i.bb, label %bb.as, label %bb.ar

.lr.ph119.preheader.i:                            ; preds = %bb.ax, %.lr.ph.peel.next.i, %bb.v
  switch i8 %i.ab, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.z
    i8 1, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph119.preheader.i
  %i.bc = add nsw i64 %.sroa.029.0123.i, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph119.preheader.i
  %.sroa.792.1.peel.i = phi i64 [ %.sroa.029.0123.i, %.lr.ph119.preheader.i ], [ %i.bc, %bb.y ] ; 2 uses
  %.sroa.12.1.peel.i = phi i1 [ true, %.lr.ph119.preheader.i ], [ false, %bb.y ]
  br i1 %i.ad, label %._crit_edge150.i, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.z
  %.pre153.i = add nsw i64 %.sroa.029.0123.i, -1
  %i.bd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre153.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21791
  %i.be = load i64, ptr %i.bd, align 8, !noalias !21791, !noundef !17
  %i.bf = add i64 %i.be, 1
  br label %bb.aa

._crit_edge150.i:                                 ; preds = %bb.z
  %i.bg = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21791
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !21791, !noundef !17
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge150.i, %._crit_edge148.i
  %.sroa.016.0.peel.i = phi i64 [ %i.bh, %._crit_edge150.i ], [ %i.bf, %._crit_edge148.i ] ; 5 uses
  %i.bi = sub i64 %.sroa.016.0.peel.i, %.sroa.029.0123.i ; 4 uses
  %i.bj = icmp ult i64 %.sroa.016.0.peel.i, %spec.select.i.i.i
  %i.bk = icmp ult i64 %i.bi, %spec.select.i.i56.i
  %or.cond.peel.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.peel.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = sub nuw i64 %i.e, %.sroa.016.0.peel.i
  %i.bm = sub i64 %i.f, %i.bi
  %i.bn = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.bm), !noalias !21793 ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.016.0.peel.i
  %i.bp = add i64 %i.bn, %i.bi
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.022.0.peel.i = phi i64 [ %i.bp, %bb.ab ], [ %i.bi, %bb.aa ]
  %.sroa.016.1.peel.i = phi i64 [ %i.bo, %bb.ab ], [ %.sroa.016.0.peel.i, %bb.aa ] ; 2 uses
  %i.bq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21791
  store i64 %.sroa.016.1.peel.i, ptr %i.bq, align 8, !noalias !21791
  br i1 %.not.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.br = sub i64 %.sroa.029.0123.i, %i.m         ; 2 uses
  %.sroa.026.0.peel.i = tail call i64 @llvm.abs.i64(i64 %i.br, i1 false)
  %.not44.peel.i = icmp sgt i64 %.sroa.026.0.peel.i, %.sroa.029.0123.i
  br i1 %.not44.peel.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = sub i64 0, %i.br
  %i.bt = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.029.0123.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21791
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !21791, !noundef !17
  %i.bv = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21791
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !21791, !noundef !17
  %i.bx = add i64 %i.bw, %i.bu
  %.not45.peel.i = icmp ult i64 %i.bx, %spec.select.i.i.i
  br i1 %.not45.peel.i, label %bb.af, label %.loopexit136.i

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.not.i57.peel.i = icmp slt i64 %.sroa.792.1.peel.i, %i.aa
  %or.cond109.peel.i = select i1 %.sroa.12.1.peel.i, i1 true, i1 %.not.i57.peel.i
  br i1 %or.cond109.peel.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i

.lr.ph119.peel.next.i:                            ; preds = %bb.af, %bb.ap
  %.sroa.792.0116.i = phi i64 [ %.sroa.792.1.i, %bb.ap ], [ %.sroa.792.1.peel.i, %bb.af ] ; 5 uses
  %i.by = add nsw i64 %.sroa.792.0116.i, -1       ; 8 uses
  %i.bz = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.by, i64 %i.aa)
  switch i8 %i.bz, label %.loopexit135.i [
    i8 -1, label %._crit_edge120.i
    i8 0, label %bb.ah
    i8 1, label %bb.ag
  ]

.loopexit135.i:                                   ; preds = %.lr.ph119.preheader.i, %.lr.ph119.peel.next.i
  unreachable

bb.ag:                                            ; preds = %.lr.ph119.peel.next.i
  %i.ca = add nsw i64 %.sroa.792.0116.i, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph119.peel.next.i
  %.sroa.792.1.i = phi i64 [ %i.by, %.lr.ph119.peel.next.i ], [ %i.ca, %bb.ag ] ; 2 uses
  %.sroa.12.1.i = phi i1 [ true, %.lr.ph119.peel.next.i ], [ false, %bb.ag ]
  %i.cb = icmp eq i64 %i.by, %i.aa
  br i1 %i.cb, label %bb.aj, label %bb.ai

._crit_edge120.i:                                 ; preds = %bb.ap, %.lr.ph119.peel.next.i, %bb.n, %bb.af, %.lr.ph119.preheader.i
  %11 = icmp samesign ule i64 %.sroa.029.1124.i, %i.s ; 2 uses
  %i.cc = zext i1 %11 to i64
  %.sroa.029.1.i = add nuw nsw i64 %.sroa.029.1124.i, %i.cc
  br i1 %11, label %.lr.ph125.i, label %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit

bb.ai:                                            ; preds = %bb.ah
  %.not43.i = icmp eq i64 %i.by, %.sroa.029.0123.i
  %.pre151.i = add nsw i64 %.sroa.792.0116.i, -2  ; 2 uses
  br i1 %.not43.i, label %._crit_edge149.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  %i.cd = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @817), !noalias !21791
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !21791, !noundef !17
  br label %bb.al

._crit_edge149.i:                                 ; preds = %bb.ak, %bb.ai
  %i.cf = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @816), !noalias !21791
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !21791, !noundef !17
  %i.ch = add i64 %i.cg, 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ci = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.pre151.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814), !noalias !21791
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !21791, !noundef !17
  %i.ck = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %.sroa.792.0116.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @815), !noalias !21791
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !21791, !noundef !17
  %i.cm = icmp ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.aj, label %._crit_edge149.i

bb.al:                                            ; preds = %._crit_edge149.i, %bb.aj
  %.sroa.016.0.i = phi i64 [ %i.ce, %bb.aj ], [ %i.ch, %._crit_edge149.i ] ; 5 uses
  %i.cn = sub i64 %.sroa.016.0.i, %i.by           ; 4 uses
  %i.co = icmp ult i64 %.sroa.016.0.i, %spec.select.i.i.i
  %i.cp = icmp ult i64 %i.cn, %spec.select.i.i56.i
  %or.cond.i = and i1 %i.co, %i.cp
  br i1 %or.cond.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.sroa.022.0.i = phi i64 [ %i.cv, %bb.an ], [ %i.cn, %bb.al ]
  %.sroa.016.1.i = phi i64 [ %i.cu, %bb.an ], [ %.sroa.016.0.i, %bb.al ] ; 2 uses
  %i.cq = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @818), !noalias !21791
  store i64 %.sroa.016.1.i, ptr %i.cq, align 8, !noalias !21791
  br i1 %.not.i, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cr = sub nuw i64 %i.e, %.sroa.016.0.i
  %i.cs = sub i64 %i.f, %i.cn
  %i.ct = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_suffix_len17h1c064e633f72fd67E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %i.cs), !noalias !21793 ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.016.0.i
  %i.cv = add i64 %i.ct, %i.cn
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.cw = sub i64 %i.by, %i.m                     ; 2 uses
  %.sroa.026.0.i = tail call i64 @llvm.abs.i64(i64 %i.cw, i1 false)
  %.not44.i = icmp sgt i64 %.sroa.026.0.i, %.sroa.029.0123.i
  br i1 %.not44.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.ao, %bb.am
  %.not.i57.i = icmp slt i64 %.sroa.792.1.i, %i.aa
  %or.cond109.i = select i1 %.sroa.12.1.i, i1 true, i1 %.not.i57.i
  br i1 %or.cond109.i, label %._crit_edge120.i, label %.lr.ph119.peel.next.i, !llvm.loop !21773

bb.aq:                                            ; preds = %bb.ao
  %i.cx = sub i64 0, %i.cw
  %i.cy = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @819), !noalias !21791
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !21791, !noundef !17
  %i.da = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @820), !noalias !21791
  %i.db = load i64, ptr %i.da, align 8, !noalias !21791, !noundef !17
  %i.dc = add i64 %i.db, %i.cz
  %.not45.i = icmp ult i64 %i.dc, %spec.select.i.i.i
  br i1 %.not45.i, label %bb.ap, label %.loopexit136.i

.loopexit136.i:                                   ; preds = %bb.ae, %bb.aq
  %.sroa.022.0.lcssa.i = phi i64 [ %.sroa.022.0.i, %bb.aq ], [ %.sroa.022.0.peel.i, %bb.ae ]
  %.sroa.016.1.lcssa.i = phi i64 [ %.sroa.016.1.i, %bb.aq ], [ %.sroa.016.1.peel.i, %bb.ae ]
  %i.dd = sub i64 %i.e, %.sroa.016.1.lcssa.i
  %i.de = sub i64 %i.f, %.sroa.022.0.lcssa.i
  br label %bb.bb

bb.ar:                                            ; preds = %bb.x
  %.not46.i = icmp eq i64 %i.ay, %.sroa.029.0123.i
  %.pre157.i = add nsw i64 %.sroa.7.0111.i, -2    ; 2 uses
  br i1 %.not46.i, label %._crit_edge146.i, label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.x
  %i.df = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @824), !noalias !21791
  %i.dg = load i64, ptr %i.df, align 8, !noalias !21791, !noundef !17
  br label %bb.au

._crit_edge146.i:                                 ; preds = %bb.at, %bb.ar
  %i.dh = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @823), !noalias !21791
  %i.di = load i64, ptr %i.dh, align 8, !noalias !21791, !noundef !17
  %i.dj = add i64 %i.di, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.dk = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.pre157.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @821), !noalias !21791
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !21791, !noundef !17
  %i.dm = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %.sroa.7.0111.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822), !noalias !21791
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !21791, !noundef !17
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.as, label %._crit_edge146.i

bb.au:                                            ; preds = %._crit_edge146.i, %bb.as
  %.sroa.06.0.i = phi i64 [ %i.dg, %bb.as ], [ %i.dj, %._crit_edge146.i ] ; 6 uses
  %i.dp = sub i64 %.sroa.06.0.i, %i.ay            ; 3 uses
  %i.dq = icmp ult i64 %.sroa.06.0.i, %spec.select.i.i.i
  %i.dr = icmp ult i64 %i.dp, %spec.select.i.i56.i
  %or.cond107.i = and i1 %i.dq, %i.dr
  br i1 %or.cond107.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.sroa.06.1.i = phi i64 [ %i.dw, %bb.aw ], [ %.sroa.06.0.i, %bb.au ]
  %i.ds = tail call noundef align 8 dereferenceable(8) ptr @"_ZN89_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..IndexMut$LT$isize$GT$$GT$9index_mut17h6ee0b321fca39e74E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @825), !noalias !21791
  store i64 %.sroa.06.1.i, ptr %i.ds, align 8, !noalias !21791
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.dt = add i64 %.sroa.06.0.i, %i.b
  %i.du = add i64 %i.dp, %i.c
  %i.dv = tail call fastcc noundef i64 @_ZN7similar10algorithms5utils17common_prefix_len17h6cff98eda6f4474bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.dt, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.du, i64 noundef %i.f), !noalias !21793
  %i.dw = add i64 %i.dv, %.sroa.06.0.i
  br label %bb.av

bb.ax:                                            ; preds = %bb.az, %bb.ay, %bb.av
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.aa
  %or.cond108.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond108.i, label %.lr.ph119.preheader.i, label %.lr.ph.peel.next.i, !llvm.loop !21774

bb.ay:                                            ; preds = %bb.av
  %i.dx = sub i64 %i.ay, %i.m                     ; 2 uses
  %.sroa.012.0.i = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 false)
  %.not47.not.i = icmp slt i64 %.sroa.012.0.i, %.sroa.029.0123.i
  br i1 %.not47.not.i, label %bb.az, label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.dy = sub i64 0, %i.dx
  %i.dz = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826), !noalias !21791
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !21791, !noundef !17
  %i.eb = tail call noundef align 8 dereferenceable(8) ptr @"_ZN86_$LT$similar..algorithms..myers..V$u20$as$u20$core..ops..index..Index$LT$isize$GT$$GT$5index17h41b37358ef77507cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %8, i64 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827), !noalias !21791
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !21791, !noundef !17
  %i.ed = add i64 %i.ec, %i.ea
  %.not48.i = icmp ult i64 %i.ed, %spec.select.i.i.i
  br i1 %.not48.i, label %bb.ax, label %.loopexit129.i

.loopexit129.i:                                   ; preds = %bb.u, %bb.az
  %.sroa.06.0.lcssa.i = phi i64 [ %.sroa.06.0.i, %bb.az ], [ %.sroa.06.0.peel.i, %bb.u ]
  %.lcssa.i = phi i64 [ %i.dp, %bb.az ], [ %i.aj, %bb.u ]
  %i.ee = add i64 %.sroa.06.0.lcssa.i, %i.b
  %i.ef = add i64 %.lcssa.i, %i.c
  br label %bb.bb

bb.ba:                                            ; preds = %bb.f
  %spec.select.i.i24 = sub nuw i64 %i.f, %i.c
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.01.0.copyload.i25 = load i64, ptr %i.eg, align 8, !alias.scope !21794
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.4.0.copyload.i27 = load i64, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21794
  %.sroa.52.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.52.0.copyload.i29 = load i64, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21794
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21794
  %i.eh = trunc nuw i64 %.sroa.01.0.copyload.i25 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i32 = select i1 %i.eh, i64 %.sroa.4.0.copyload.i27, i64 %i.b
  %.sroa.5.sroa.5.0.i33 = select i1 %i.eh, i64 %.sroa.52.0.copyload.i29, i64 %i.c
  %i.ei = select i1 %i.eh, i64 %.sroa.6.0.copyload.i31, i64 0
  %.sroa.5.sroa.6.0.i34 = add i64 %i.ei, %spec.select.i.i24
  store i64 1, ptr %i.eg, align 8, !alias.scope !21794
  store i64 %.sroa.5.sroa.0.0.i32, ptr %.sroa.4.0..sroa_idx.i26, align 8, !alias.scope !21794
  store i64 %.sroa.5.sroa.5.0.i33, ptr %.sroa.52.0..sroa_idx.i28, align 8, !alias.scope !21794
  store i64 %.sroa.5.sroa.6.0.i34, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !21794
  br label %bb.e

bb.bb:                                            ; preds = %.loopexit129.i, %.loopexit136.i
  %.sroa.677.0.ph = phi i64 [ %i.ef, %.loopexit129.i ], [ %i.de, %.loopexit136.i ] ; 2 uses
  %.sroa.4.0.ph = phi i64 [ %i.ee, %.loopexit129.i ], [ %i.dd, %.loopexit136.i ] ; 2 uses
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %.sroa.4.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.c, i64 noundef %.sroa.677.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_ZN7similar10algorithms5myers7conquer17heae852a2d3359bafE(ptr noalias noundef align 8 dereferenceable(200) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.4.0.ph, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.677.0.ph, i64 noundef %i.f, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.e

_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit: ; preds = %._crit_edge120.i, %.lr.ph125.i
  tail call fastcc void @"_ZN7similar10algorithms7replace16Replace$LT$D$GT$8flush_eq17h4c85eaf035ce3d41E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
  %.sroa.0.0.copyload.i35 = load i64, ptr %0, align 8, !alias.scope !21795
  %.sroa.5.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = trunc nuw i64 %.sroa.0.0.copyload.i35 to i1
  br i1 %i.ej, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit
  %.sroa.5.0.copyload.i40 = load i64, ptr %.sroa.5.0..sroa_idx.i36, align 8, !alias.scope !21795
  %i.ek = add i64 %.sroa.5.0.copyload.i40, %spec.select.i.i.i
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41"

bb.bd:                                            ; preds = %_ZN7similar10algorithms5myers17find_middle_snake17h4543af9f3b03cbf2E.exit
  %.sroa.6.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx.i38, align 8, !alias.scope !21795
  store i64 %i.c, ptr %.sroa.6.0..sroa_idx.i37, align 8, !alias.scope !21795
  br label %"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41"

"_ZN102_$LT$similar..algorithms..replace..Replace$LT$D$GT$$u20$as$u20$similar..algorithms..hook..DiffHook$GT$6delete17h4a7a6891f318cbc0E.exit41": ; preds = %bb.bc, %bb.bd
  %.sink.i39 = phi i64 [ %i.ek, %bb.bc ], [ %spec.select.i.i.i, %bb.bd ]
  store i64 1, ptr %0, align 8, !alias.scope !21795
end_hunk_7
