Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.01?download=true
inline.NumInlined: 3173
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4core5slice4sort6stable5drift4sort17h05dc83366e083f86E:bb.a
  %i.af = or disjoint i64 %i.ae, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h12d24ce59bf0221cE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd3c10510646a3edcE.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h202b2c71a32fd494E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17hb3e640335d48a5daE.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hb3e640335d48a5daE.exit.i.thread ], [ %.sroa.0.0.i.i96103107, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h202b2c71a32fd494E.exit.i.i ]
  %i.ag = shl i64 %.sroa.0.0.i.i4447, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h12d24ce59bf0221cE.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_ZN4core5slice4sort6shared17find_existing_run17hb3e640335d48a5daE.exit.i.thread98
  %i.ai = phi i64 [ %i.ac, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hb3e640335d48a5daE.exit.i.thread98 ]
  %.sroa.0.0.i.i96103107 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hb3e640335d48a5daE.exit.i.thread98 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.0.i.i96103107
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h202b2c71a32fd494E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.015.i.i = phi i64 [ %i.ao, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h202b2c71a32fd494E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.015.i.i, -1
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.015.i.i
  %i.am = getelementptr [56 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hb4b2d552fb73b7d3E(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 7)
          to label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h202b2c71a32fd494E.exit.i.i unwind label %bb.q, !noalias !2773

bb.q:                                             ; preds = %.lr.ph.i.i37
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #45, !noalias !2773
  unreachable

_ZN4core10intrinsics25typed_swap_nonoverlapping17h202b2c71a32fd494E.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.ao = add nuw nsw i64 %.sroa.0.015.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd3c10510646a3edcE.exit", label %.lr.ph.i.i37

_ZN4core5slice4sort6stable5drift10create_run17h12d24ce59bf0221cE.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd3c10510646a3edcE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ah, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd3c10510646a3edcE.exit" ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ar = sub i64 %factor, %i.ap
  %i.as = add i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph64, %_ZN4core5slice4sort6stable5drift13logical_merge17hf92472532ce5bdc1E.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.ay, %_ZN4core5slice4sort6stable5drift13logical_merge17hf92472532ce5bdc1E.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf92472532ce5bdc1E.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hf92472532ce5bdc1E.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf92472532ce5bdc1E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hf92472532ce5bdc1E.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !11 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.162, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.162 to i1
  %i.bm = or i64 %i.be, %.sroa.023.162
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bp = shl i64 %i.bh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf92472532ce5bdc1E.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bl, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8447aa38f9c89168E(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2760
  br label %bb.v

bb.x:                                             ; preds = %bb.aa, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  %i.bv = icmp eq i64 %i.bf, 0
  %i.bw = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.bw, %i.bv
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h9e1d839d1bc78587E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 range(i64 0, -9223372036854775808) %i.bf) ; 2 uses
  %i.bx = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bx, label %_ZN4core5slice4sort6stable5merge5merge17h9e1d839d1bc78587E.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.by, ptr %i.bj
  %i.bz = mul i64 %.sroa.0.0.i.i35, 56            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %..i, i64 %i.bz, i1 false), !alias.scope !2776
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.cb = phi ptr [ %i.cn, %.preheader.i ], [ %i.ca, %bb.z ] ; 2 uses
  %i.cc = phi ptr [ %i.cl, %.preheader.i ], [ %i.by, %bb.z ] ; 2 uses
  %.sroa.0.0.i26.i = phi ptr [ %i.cf, %.preheader.i ], [ %i.m, %bb.z ]
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -56 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -56 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -56 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cb, i64 -8
  %.val.i.i = load i32, ptr %i.cg, align 8, !alias.scope !2775, !noalias !2777, !noundef !11
  %i.ch = getelementptr i8, ptr %i.cc, i64 -8
  %.val10.i.i = load i32, ptr %i.ch, align 8, !alias.scope !2774, !noalias !2778, !noundef !11
  %i.ci = icmp ult i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.ci, ptr %i.cd, ptr %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %..i.i, i64 56, i1 false), !alias.scope !2776, !noalias !2779
  %i.cj = xor i1 %i.ci, true
  %i.ck = zext i1 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %i.cd, i64 %i.ck ; 3 uses
  %i.cm = zext i1 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %i.cm ; 3 uses
  %i.co = icmp eq ptr %i.cl, %i.bj
  %i.cp = icmp eq ptr %i.cn, %2
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf930bc2ac585ddbbE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.cq = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.bj, %bb.z ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.by, %bb.z ] ; 3 uses
  %i.cr = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %2, %bb.z ] ; 3 uses
  %i.cs = getelementptr i8, ptr %.sroa.0.02.i.i, i64 48
  %.sroa.0.0.val.i.i = load i32, ptr %i.cs, align 8, !alias.scope !2774, !noalias !2780, !noundef !11
  %i.ct = getelementptr i8, ptr %i.cr, i64 48
  %.val.i28.i = load i32, ptr %i.ct, align 8, !alias.scope !2775, !noalias !2781, !noundef !11
  %i.cu = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i28.i ; 3 uses
  %i.cv = xor i1 %i.cu, true
  %spec.select.i.i = select i1 %i.cu, ptr %.sroa.0.02.i.i, ptr %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i.i, i64 56, i1 false), !alias.scope !2776, !noalias !2782
  %i.cw = zext i1 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %i.cr, i64 %i.cw ; 3 uses
  %i.cy = zext i1 %i.cu to i64
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i.i, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  %i.db = icmp ne ptr %i.cx, %i.ca
  %i.dc = icmp ne ptr %i.cz, %i.m
  %or.cond.i29.i = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond.i29.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf930bc2ac585ddbbE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf930bc2ac585ddbbE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cl, %.preheader.i ], [ %i.da, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cn, %.preheader.i ], [ %i.ca, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ] ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.7.0.i to i64
  %i.de = ptrtoint ptr %.sroa.0.1.i to i64
  %i.df = sub nuw i64 %i.dd, %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.df, i1 false), !alias.scope !2776, !noalias !2783
  br label %_ZN4core5slice4sort6stable5merge5merge17h9e1d839d1bc78587E.exit

_ZN4core5slice4sort6stable5merge5merge17h9e1d839d1bc78587E.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf930bc2ac585ddbbE.exit.i"
  %i.dg = shl i64 %i.bh, 1
  %i.dh = or disjoint i64 %i.dg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf92472532ce5bdc1E.exit

bb.aa:                                            ; preds = %bb.v
  %i.di = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bf
  %i.dj = or i64 %i.bg, 1
  %i.dk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8447aa38f9c89168E(ptr noalias noundef nonnull align 8 %i.di, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2760
  br label %bb.x

_ZN4core5slice4sort6stable5drift13logical_merge17hf92472532ce5bdc1E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17h9e1d839d1bc78587E.exit
  %.sroa.0.0.i = phi i64 [ %i.dh, %_ZN4core5slice4sort6stable5merge5merge17h9e1d839d1bc78587E.exit ], [ %i.bp, %bb.u ] ; 2 uses
  %i.do = icmp ugt i64 %i.ay, 1
  br i1 %i.do, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dp = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dq = lshr i64 %.sroa.018.0, 1
  %i.dr = add i64 %i.dq, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ds = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ds, 0
  br i1 %.not31, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dt = or i64 %1, 1
  %i.du = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = xor i32 %i.dw, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8447aa38f9c89168E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2760
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h16f627ad282f5aadE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
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
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ep, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.en, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hf06114645838d886E.exit
  %.sroa.021.0 = phi i8 [ %i.bn, %_ZN4core5slice4sort6stable5drift10create_run17hf06114645838d886E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hf06114645838d886E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.o = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4ab2e35494ad31c4E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 168
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !2816, !noalias !2817, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 176
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !2816, !noalias !2817, !noundef !11 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 32
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !2816, !noalias !2817, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 40
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !2816, !noalias !2817, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i42 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %spec.store.select.i.i.i.i42), !alias.scope !2818, !noalias !2819 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i43 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp sgt i64 %spec.select.i.i.i.i43, -1  ; 2 uses
  %.not75 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader53, label %.preheader

.preheader53:                                     ; preds = %bb.k
  br i1 %.not75, label %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not75, label %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i.thread106, label %.lr.ph62

.lr.ph:                                           ; preds = %.preheader53, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader53 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader53 ]
  %.sroa.01.0.i.i58 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader53 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.01.0.i.i58 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !2816, !noalias !2817, !nonnull !11, !noundef !11 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 40
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !2816, !noalias !2817, !noundef !11 ; 3 uses
  %spec.store.select.i.i.i.i40 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %spec.store.select.i.i.i.i40), !alias.scope !2820, !noalias !2819 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i41 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i.i.i41, 0
  br i1 %i.ag, label %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i58, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i, label %.lr.ph

.lr.ph62:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i61 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.01.1.i.i61 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !2816, !noalias !2817, !nonnull !11, !noundef !11 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 40
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !2816, !noalias !2817, !noundef !11 ; 3 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %spec.store.select.i.i.i.i), !alias.scope !2821, !noalias !2819 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.ap, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i

bb.m:                                             ; preds = %.lr.ph62
  %i.aq = add nuw i64 %.sroa.01.1.i.i61, 1        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond82.not, label %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i, label %.lr.ph62

_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i: ; preds = %bb.m, %.lr.ph62, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i58, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i61, %.lr.ph62 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ar = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.i, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i103, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4ab2e35494ad31c4E.exit"

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not16.i.i = icmp eq i64 %i.as, 0
  %or.cond = or i1 %i.y, %.not16.i.i
  br i1 %or.cond, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4ab2e35494ad31c4E.exit", label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.01.0)
  %i.at = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf06114645838d886E.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4165a221dceb7bd2E(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2797
  %i.au = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf06114645838d886E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4ab2e35494ad31c4E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h58806618913f96d5E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4851 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h2466c20d07fe8014E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h58806618913f96d5E.exit.i.i ]
  %i.aw = shl i64 %.sroa.0.0.i.i4851, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hf06114645838d886E.exit
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h16f627ad282f5aadE:bb.a
  %i.bb = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %.sroa.0.015.i.i
  %i.bc = getelementptr [136 x i8], ptr %i.az, i64 %i.ba
  invoke void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hb4b2d552fb73b7d3E(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, i64 noundef 17)
          to label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h58806618913f96d5E.exit.i.i unwind label %bb.q, !noalias !2817

bb.q:                                             ; preds = %.lr.ph.i.i37
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #45, !noalias !2817
  unreachable

_ZN4core10intrinsics25typed_swap_nonoverlapping17h58806618913f96d5E.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.be = add nuw nsw i64 %.sroa.0.015.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.ay
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4ab2e35494ad31c4E.exit", label %.lr.ph.i.i37

_ZN4core5slice4sort6stable5drift10create_run17hf06114645838d886E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4ab2e35494ad31c4E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ax, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h4ab2e35494ad31c4E.exit" ], [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bh = sub i64 %factor, %i.bf
  %i.bi = add i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph68, %_ZN4core5slice4sort6stable5drift13logical_merge17h36d450aaee3ee036E.exit
  %.sroa.02.167 = phi i64 [ %.sroa.02.0, %.lr.ph68 ], [ %i.bo, %_ZN4core5slice4sort6stable5drift13logical_merge17h36d450aaee3ee036E.exit ] ; 2 uses
  %.sroa.023.166 = phi i64 [ %.sroa.023.0, %.lr.ph68 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h36d450aaee3ee036E.exit ] ; 4 uses
  %i.bo = add i64 %.sroa.02.167, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h36d450aaee3ee036E.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.166, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h36d450aaee3ee036E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.167, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h36d450aaee3ee036E.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !11 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 8 uses
  %i.bw = lshr i64 %.sroa.023.166, 1              ; 6 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %i.by ; 6 uses
  %i.ca = icmp ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.166 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.166
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cf = shl i64 %i.bx, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h36d450aaee3ee036E.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cb, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4165a221dceb7bd2E(ptr noalias noundef nonnull align 8 %i.bz, i64 noundef %i.bv, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2798
  br label %bb.v

bb.x:                                             ; preds = %bb.aa, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  %i.cl = icmp eq i64 %i.bv, 0
  %i.cm = icmp eq i64 %i.bw, 0
  %or.cond.i = or i1 %i.cm, %i.cl
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hec616e1636ff5ce0E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.cn = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cn, label %_ZN4core5slice4sort6stable5merge5merge17hec616e1636ff5ce0E.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw [136 x i8], ptr %i.bz, i64 %i.bv ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bv, %i.bw  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.co, ptr %i.bz
  %i.cp = mul i64 %.sroa.0.0.i.i35, 136           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %..i, i64 %i.cp, i1 false), !alias.scope !2824
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.cr = phi ptr [ %i.dh, %.preheader.i ], [ %i.cq, %bb.z ] ; 3 uses
  %i.cs = phi ptr [ %i.dg, %.preheader.i ], [ %i.co, %bb.z ] ; 3 uses
  %.sroa.0.0.i26.i = phi ptr [ %i.cv, %.preheader.i ], [ %i.m, %bb.z ]
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -136 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cr, i64 -136 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -136 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cr, i64 -104
  %.val.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !2823, !noalias !2825, !nonnull !11, !noundef !11
  %i.cx = getelementptr i8, ptr %i.cr, i64 -96
  %.val10.i.i = load i64, ptr %i.cx, align 8, !alias.scope !2823, !noalias !2825, !noundef !11 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cs, i64 -104
  %.val11.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !2822, !noalias !2826, !nonnull !11, !noundef !11
  %i.cz = getelementptr i8, ptr %i.cs, i64 -96
  %.val12.i.i = load i64, ptr %i.cz, align 8, !alias.scope !2822, !noalias !2826, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.da = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !2827, !noalias !2828 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp eq i32 %i.da, 0
  %i.dd = sub i64 %.val10.i.i, %.val12.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.dc, i64 %i.dd, i64 %i.db ; 2 uses
  %i.de = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.de, ptr %i.cu, ptr %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cv, ptr noundef nonnull align 8 dereferenceable(136) %..i.i, i64 136, i1 false), !alias.scope !2824, !noalias !2829
  %i.df = zext i1 %i.de to i64
  %i.dg = getelementptr inbounds nuw [136 x i8], ptr %i.ct, i64 %i.df ; 3 uses
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.dh = getelementptr inbounds nuw [136 x i8], ptr %i.cu, i64 %spec.select.i.i.i.i.lobit.i.i ; 3 uses
  %i.di = icmp eq ptr %i.dg, %i.bz
  %i.dj = icmp eq ptr %i.dh, %2
  %or.cond.i.i = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9668fd5105142c78E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.dk = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.bz, %bb.z ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.co, %bb.z ] ; 4 uses
  %i.dl = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %2, %bb.z ] ; 4 uses
  %i.dm = getelementptr i8, ptr %.sroa.0.02.i.i, i64 32
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !2822, !noalias !2830, !nonnull !11, !noundef !11
  %i.dn = getelementptr i8, ptr %.sroa.0.02.i.i, i64 40
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dn, align 8, !alias.scope !2822, !noalias !2830, !noundef !11 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dl, i64 32
  %.val.i28.i = load ptr, ptr %i.do, align 8, !alias.scope !2823, !noalias !2831, !nonnull !11, !noundef !11
  %i.dp = getelementptr i8, ptr %i.dl, i64 40
  %.val7.i.i = load i64, ptr %i.dp, align 8, !alias.scope !2823, !noalias !2831, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i29.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.dq = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i28.i, i64 %spec.store.select.i.i.i.i.i29.i), !alias.scope !2832, !noalias !2833 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp eq i32 %i.dq, 0
  %i.dt = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i.i.i30.i = select i1 %i.ds, i64 %i.dt, i64 %i.dr ; 2 uses
  %i.du = icmp sgt i64 %spec.select.i.i.i.i.i30.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.du, ptr %i.dl, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.dk, ptr noundef nonnull align 8 dereferenceable(136) %spec.select.i.i, i64 136, i1 false), !alias.scope !2824, !noalias !2834
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [136 x i8], ptr %i.dl, i64 %i.dv ; 3 uses
  %spec.select.i.i.i.i.lobit.i31.i = lshr i64 %spec.select.i.i.i.i.i30.i, 63
  %i.dx = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.i.i.lobit.i31.i ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 136 ; 2 uses
  %i.dz = icmp ne ptr %i.dw, %i.cq
  %i.ea = icmp ne ptr %i.dx, %i.m
  %or.cond.i32.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i32.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9668fd5105142c78E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9668fd5105142c78E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dg, %.preheader.i ], [ %i.dy, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.cq, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dw, %.lr.ph.i.i ] ; 2 uses
  %i.eb = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ec = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ed = sub nuw i64 %i.eb, %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ed, i1 false), !alias.scope !2824, !noalias !2835
  br label %_ZN4core5slice4sort6stable5merge5merge17hec616e1636ff5ce0E.exit

_ZN4core5slice4sort6stable5merge5merge17hec616e1636ff5ce0E.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9668fd5105142c78E.exit.i"
  %i.ee = shl i64 %i.bx, 1
  %i.ef = or disjoint i64 %i.ee, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h36d450aaee3ee036E.exit

bb.aa:                                            ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw [136 x i8], ptr %i.bz, i64 %i.bv
  %i.eh = or i64 %i.bw, 1
  %i.ei = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = xor i32 %i.ek, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4165a221dceb7bd2E(ptr noalias noundef nonnull align 8 %i.eg, i64 noundef %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2798
  br label %bb.x

_ZN4core5slice4sort6stable5drift13logical_merge17h36d450aaee3ee036E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17hec616e1636ff5ce0E.exit
  %.sroa.0.0.i = phi i64 [ %i.ef, %_ZN4core5slice4sort6stable5merge5merge17hec616e1636ff5ce0E.exit ], [ %i.cf, %bb.u ] ; 2 uses
  %i.em = icmp ugt i64 %i.bo, 1
  br i1 %i.em, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.en = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eo = lshr i64 %.sroa.018.0, 1
  %i.ep = add i64 %i.eo, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.eq = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eq, 0
  br i1 %.not31, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.er = or i64 %1, 1
  %i.es = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = xor i32 %i.eu, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h4165a221dceb7bd2E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2798
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h5fc3b1ca0c4bac2cE(ptr noalias noundef nonnull align 2 %0, i64 noundef %1, ptr noalias noundef nonnull align 2 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
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

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h00ee221b2975b4a7E.exit
  %.sroa.021.0 = phi i8 [ %i.ba, %_ZN4core5slice4sort6stable5drift10create_run17h00ee221b2975b4a7E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h00ee221b2975b4a7E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread95, %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e0a4da076852fd5E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %.val10.i = load i16, ptr %i.q, align 2, !alias.scope !2869, !noalias !2870, !noundef !11 ; 3 uses
  %.val11.i = load i16, ptr %i.o, align 2, !alias.scope !2871, !noalias !2872, !noundef !11
  %i.r = icmp ult i16 %.val10.i, %.val11.i        ; 2 uses
  %.not71 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.k
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread95, label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader49, %bb.l
  %.val9.i = phi i16 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader49 ]
  %.sroa.01.0.i.i54 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader49 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.sroa.01.0.i.i54
  %.val8.i = load i16, ptr %i.s, align 2, !alias.scope !2869, !noalias !2870, !noundef !11 ; 2 uses
  %i.t = icmp ult i16 %.val8.i, %.val9.i
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i54, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i, label %.lr.ph

.lr.ph58:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i16 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i57 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.sroa.01.1.i.i57
  %.val.i = load i16, ptr %i.v, align 2, !alias.scope !2869, !noalias !2870, !noundef !11 ; 2 uses
  %i.w = icmp ult i16 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i

bb.m:                                             ; preds = %.lr.ph58
  %i.x = add nuw i64 %.sroa.01.1.i.i57, 1         ; 2 uses
  %exitcond78.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i, label %.lr.ph58

_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph58
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i57, %.lr.ph58 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i54, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread95: ; preds = %.preheader
  br i1 %.not5.i97, label %bb.i, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i92, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e0a4da076852fd5E.exit"

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i
  br i1 %i.r, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e0a4da076852fd5E.exit"

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.01.0)
  %i.z = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h00ee221b2975b4a7E.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f812a2b2fdc6be1E(ptr noalias noundef nonnull align 2 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 2 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) null, ptr noalias noundef nonnull align 1 %5), !inline_history !2843
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h00ee221b2975b4a7E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e0a4da076852fd5E.exit": ; preds = %.lr.ph.i.i37, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread ], [ %.sroa.0.0.i.i93100104, %middle.block ], [ %.sroa.0.0.i.i93100104, %.lr.ph.i.i37 ]
  %i.ac = shl i64 %.sroa.0.0.i.i4447, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h00ee221b2975b4a7E.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2873), !noalias !2874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2875), !noalias !2874
  %.not15.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e0a4da076852fd5E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread95, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread95 ] ; 4 uses
  %.sroa.0.0.i.i93100104 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h059a5fda298cd33cE.exit.i.thread95 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.sroa.0.0.i.i93100104 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ag, i64 %i.ah
  %wide.load = load <8 x i16>, ptr %i.ai, align 2, !alias.scope !2876, !noalias !2877
  %i.ak = getelementptr i8, ptr %i.aj, i64 -14    ; 2 uses
  %wide.load117 = load <8 x i16>, ptr %i.ak, align 2, !alias.scope !2878, !noalias !2879
  %reverse = shufflevector <8 x i16> %wide.load117, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.ai, align 2, !alias.scope !2876, !noalias !2877
  %reverse118 = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse118, ptr %i.ak, align 2, !alias.scope !2878, !noalias !2879
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !2849

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e0a4da076852fd5E.exit", label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader, %.lr.ph.i.i37
  %.sroa.0.014.i.i = phi i64 [ %i.ar, %.lr.ph.i.i37 ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i37.preheader ] ; 3 uses
  %i.am = xor i64 %.sroa.0.014.i.i, -1
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.ag, i64 %i.am ; 2 uses
  %i.ap = load i16, ptr %i.an, align 2, !alias.scope !2876, !noalias !2877, !noundef !11
  %i.aq = load i16, ptr %i.ao, align 2, !alias.scope !2878, !noalias !2879
  store i16 %i.aq, ptr %i.an, align 2, !alias.scope !2876, !noalias !2877
  store i16 %i.ap, ptr %i.ao, align 2, !alias.scope !2878, !noalias !2879
  %i.ar = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.af
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e0a4da076852fd5E.exit", label %.lr.ph.i.i37, !llvm.loop !2850

_ZN4core5slice4sort6stable5drift10create_run17h00ee221b2975b4a7E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e0a4da076852fd5E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e0a4da076852fd5E.exit" ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.as = lshr i64 %.sroa.023.0, 1
  %i.at = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.au = sub i64 %factor, %i.as
  %i.av = add i64 %i.at, %factor
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph64, %_ZN4core5slice4sort6stable5drift13logical_merge17h603a345bd7fe0819E.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.bb, %_ZN4core5slice4sort6stable5drift13logical_merge17h603a345bd7fe0819E.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h603a345bd7fe0819E.exit ] ; 4 uses
  %i.bb = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.bd, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h603a345bd7fe0819E.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h603a345bd7fe0819E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h603a345bd7fe0819E.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bf, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bb
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !11 ; 3 uses
  %i.bi = lshr i64 %i.bh, 1                       ; 8 uses
  %i.bj = lshr i64 %.sroa.023.162, 1              ; 6 uses
  %i.bk = add nuw i64 %i.bi, %i.bj                ; 4 uses
  %i.bl = sub i64 %.sroa.09.0, %i.bk
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bl ; 6 uses
  %i.bn = icmp ugt i64 %i.bk, %3
  %i.bo = trunc i64 %.sroa.023.162 to i1
  %i.bp = or i64 %i.bh, %.sroa.023.162
  %i.bq = trunc i64 %i.bp to i1
  %or.cond3.i = or i1 %i.bn, %i.bq
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.br = trunc i64 %i.bh to i1
  br i1 %i.br, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bs = shl i64 %i.bk, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h603a345bd7fe0819E.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bo, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.bt = or i64 %i.bi, 1
  %i.bu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bt, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = xor i32 %i.bw, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f812a2b2fdc6be1E(ptr noalias noundef nonnull align 2 %i.bm, i64 noundef %i.bi, ptr noalias noundef nonnull align 2 %2, i64 noundef %3, i32 noundef %i.bx, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) null, ptr noalias noundef nonnull align 1 %5), !inline_history !2851
  br label %bb.v

bb.x:                                             ; preds = %bb.aa, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  %i.by = icmp eq i64 %i.bi, 0
  %i.bz = icmp eq i64 %i.bj, 0
  %or.cond.i = or i1 %i.bz, %i.by
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha5ed7606dc923e8dE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 range(i64 0, -9223372036854775808) %i.bi) ; 2 uses
  %i.ca = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.ca, label %_ZN4core5slice4sort6stable5merge5merge17ha5ed7606dc923e8dE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bi ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bi, %i.bj  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.cb, ptr %i.bm
  %i.cc = shl nuw i64 %.sroa.0.0.i.i35, 1         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %2, ptr nonnull align 2 %..i, i64 %i.cc, i1 false), !alias.scope !2882
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %i.cc ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.ce = phi ptr [ %i.cp, %.preheader.i ], [ %i.cd, %bb.z ]
  %i.cf = phi ptr [ %i.cn, %.preheader.i ], [ %i.cb, %bb.z ]
  %.sroa.0.0.i26.i = phi ptr [ %i.ci, %.preheader.i ], [ %i.m, %bb.z ]
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -2 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 -2 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -2 ; 2 uses
  %.val.i.i = load i16, ptr %i.ch, align 2, !alias.scope !2883, !noalias !2884, !noundef !11 ; 2 uses
  %.val10.i.i = load i16, ptr %i.cg, align 2, !alias.scope !2885, !noalias !2886, !noundef !11 ; 2 uses
  %i.cj = icmp ult i16 %.val.i.i, %.val10.i.i     ; 2 uses
  %i.ck = tail call i16 @llvm.umax.i16(i16 %.val.i.i, i16 %.val10.i.i)
  store i16 %i.ck, ptr %i.ci, align 2, !alias.scope !2880, !noalias !2887
  %i.cl = xor i1 %i.cj, true
  %i.cm = zext i1 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.cm ; 3 uses
  %i.co = zext i1 %i.cj to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.co ; 3 uses
  %i.cq = icmp eq ptr %i.cn, %i.bm
  %i.cr = icmp eq ptr %i.cp, %2
  %or.cond.i.i = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h55aef946446036fcE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.cs = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.bm, %bb.z ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.cb, %bb.z ] ; 2 uses
  %i.ct = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %2, %bb.z ] ; 2 uses
  %.sroa.0.0.val.i.i = load i16, ptr %.sroa.0.04.i.i, align 2, !alias.scope !2888, !noalias !2889, !noundef !11 ; 2 uses
  %.val.i28.i = load i16, ptr %i.ct, align 2, !alias.scope !2890, !noalias !2891, !noundef !11 ; 2 uses
  %i.cu = icmp ult i16 %.sroa.0.0.val.i.i, %.val.i28.i ; 2 uses
  %i.cv = xor i1 %i.cu, true
  %i.cw = tail call i16 @llvm.umin.i16(i16 %.sroa.0.0.val.i.i, i16 %.val.i28.i)
  store i16 %i.cw, ptr %i.cs, align 2, !alias.scope !2880, !noalias !2892
  %i.cx = zext i1 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %i.cu to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.04.i.i, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 2 ; 2 uses
  %i.dc = icmp ne ptr %i.cy, %i.cd
  %i.dd = icmp ne ptr %i.da, %i.m
  %or.cond.i29.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i29.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h55aef946446036fcE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h55aef946446036fcE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cn, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.cd, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ] ; 2 uses
  %i.de = ptrtoint ptr %.sroa.7.0.i to i64
  %i.df = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dg = sub nuw i64 %i.de, %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.13.1.i, ptr align 2 %.sroa.0.1.i, i64 %i.dg, i1 false), !alias.scope !2882, !noalias !2893
  br label %_ZN4core5slice4sort6stable5merge5merge17ha5ed7606dc923e8dE.exit

_ZN4core5slice4sort6stable5merge5merge17ha5ed7606dc923e8dE.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h55aef946446036fcE.exit.i"
  %i.dh = shl i64 %i.bk, 1
  %i.di = or disjoint i64 %i.dh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h603a345bd7fe0819E.exit

bb.aa:                                            ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bi
  %i.dk = or i64 %i.bj, 1
  %i.dl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = xor i32 %i.dn, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f812a2b2fdc6be1E(ptr noalias noundef nonnull align 2 %i.dj, i64 noundef %i.bj, ptr noalias noundef nonnull align 2 %2, i64 noundef %3, i32 noundef %i.do, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) null, ptr noalias noundef nonnull align 1 %5), !inline_history !2851
  br label %bb.x

_ZN4core5slice4sort6stable5drift13logical_merge17h603a345bd7fe0819E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17ha5ed7606dc923e8dE.exit
  %.sroa.0.0.i = phi i64 [ %i.di, %_ZN4core5slice4sort6stable5merge5merge17ha5ed7606dc923e8dE.exit ], [ %i.bs, %bb.u ] ; 2 uses
  %i.dp = icmp ugt i64 %i.bb, 1
  br i1 %i.dp, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dt, 0
  br i1 %.not31, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2f812a2b2fdc6be1E(ptr noalias noundef nonnull align 2 %0, i64 noundef %1, ptr noalias noundef nonnull align 2 %2, i64 noundef %3, i32 noundef %i.dy, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) null, ptr noalias noundef nonnull align 1 %5), !inline_history !2851
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h726109e7c0aba361E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
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
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i124 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ah, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ah ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.ah ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.ah ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h7a317e33ebce51eeE.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_ZN4core5slice4sort6stable5drift10create_run17h7a317e33ebce51eeE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h7a317e33ebce51eeE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2922)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread122, %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i, %bb.h
  br i1 %4, label %bb.s, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d5ef9f62f1aaff0E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.val10.i = load float, ptr %i.q, align 4, !alias.scope !2922, !noalias !2923, !noundef !11 ; 4 uses
  %.val11.i = load float, ptr %i.o, align 4, !alias.scope !2922, !noalias !2923, !noundef !11 ; 2 uses
  %brmerge.not.i44 = fcmp uno float %.val10.i, %.val11.i
  br i1 %brmerge.not.i44, label %bb.l, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit46", !prof !42

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !2924
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit46": ; preds = %bb.k
  %.mux.i45 = fcmp olt float %.val10.i, %.val11.i ; 2 uses
  %.not88 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %.mux.i45, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit46"
  br i1 %.not88, label %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit46"
  br i1 %.not88, label %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread122, label %.lr.ph76

.lr.ph:                                           ; preds = %.preheader56, %bb.n
  %.val9.i = phi float [ %.val8.i, %bb.n ], [ %.val10.i, %.preheader56 ] ; 2 uses
  %.sroa.01.0.i.i73 = phi i64 [ %i.s, %bb.n ], [ 2, %.preheader56 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i73
  %.val8.i = load float, ptr %i.r, align 4, !alias.scope !2922, !noalias !2923, !noundef !11 ; 3 uses
  %brmerge.not.i41 = fcmp uno float %.val8.i, %.val9.i
  br i1 %brmerge.not.i41, label %bb.m, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit43", !prof !42

bb.m:                                             ; preds = %.lr.ph
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !2924
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit43": ; preds = %.lr.ph
  %.mux.i42 = fcmp olt float %.val8.i, %.val9.i
  br i1 %.mux.i42, label %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i, label %bb.n

bb.n:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit43"
  %i.s = add nuw i64 %.sroa.01.0.i.i73, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.n
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i, label %.lr.ph

.lr.ph76:                                         ; preds = %.preheader, %bb.p
  %.val7.i = phi float [ %.val.i, %bb.p ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i75 = phi i64 [ %i.u, %bb.p ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i75
  %.val.i = load float, ptr %i.t, align 4, !alias.scope !2922, !noalias !2923, !noundef !11 ; 3 uses
  %brmerge.not.i = fcmp uno float %.val.i, %.val7.i
  br i1 %brmerge.not.i, label %bb.o, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit", !prof !42

bb.o:                                             ; preds = %.lr.ph76
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !2924
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit": ; preds = %.lr.ph76
  %.mux.i = fcmp olt float %.val.i, %.val7.i
  br i1 %.mux.i, label %bb.p, label %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i

bb.p:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit"
  %i.u = add nuw i64 %.sroa.01.1.i.i75, 1         ; 2 uses
  %exitcond101.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond101.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i, label %.lr.ph76

_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i: ; preds = %bb.n, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit43", %bb.p, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit"
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i75, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit" ], [ %i.n, %bb.p ], [ %.sroa.01.0.i.i73, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit43" ], [ %i.n, %bb.n ] ; 6 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.v)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.q

_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread122: ; preds = %.preheader
  br i1 %.not5.i124, label %bb.i, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread: ; preds = %.preheader56
  br i1 %.not5.i119, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d5ef9f62f1aaff0E.exit"

bb.q:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i
  br i1 %.mux.i45, label %bb.t, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d5ef9f62f1aaff0E.exit"

bb.r:                                             ; preds = %bb.i
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.01.0)
  %i.w = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7a317e33ebce51eeE.exit

bb.s:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01acbc6901c9c829E(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2898
  %i.x = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.y = or disjoint i64 %i.x, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7a317e33ebce51eeE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d5ef9f62f1aaff0E.exit": ; preds = %.lr.ph.i.i38, %middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread, %bb.j, %bb.t, %bb.q
  %.sroa.0.0.i.i5154 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %bb.t ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread ], [ %.sroa.0.0.i.i120127131, %middle.block ], [ %.sroa.0.0.i.i120127131, %.lr.ph.i.i38 ]
  %i.z = shl i64 %.sroa.0.0.i.i5154, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h7a317e33ebce51eeE.exit

bb.t:                                             ; preds = %bb.q
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2925), !noalias !2923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2926), !noalias !2923
  %.not15.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d5ef9f62f1aaff0E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread122, %bb.t
  %i.ac = phi i64 [ %i.ab, %bb.t ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h8997106cb2b42911E.exit.i.thread122 ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17h726109e7c0aba361E:bb.a
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d5ef9f62f1aaff0E.exit", label %.lr.ph.i.i38, !llvm.loop !2905

_ZN4core5slice4sort6stable5drift10create_run17h7a317e33ebce51eeE.exit: ; preds = %bb.r, %bb.s, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d5ef9f62f1aaff0E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d5ef9f62f1aaff0E.exit" ], [ %i.y, %bb.s ], [ %i.w, %bb.r ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.aw = sub i64 %factor, %i.au
  %i.ax = add i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph81, %_ZN4core5slice4sort6stable5drift13logical_merge17hc31b228df767bf27E.exit
  %.sroa.02.180 = phi i64 [ %.sroa.02.0, %.lr.ph81 ], [ %i.bd, %_ZN4core5slice4sort6stable5drift13logical_merge17hc31b228df767bf27E.exit ] ; 2 uses
  %.sroa.023.179 = phi i64 [ %.sroa.023.0, %.lr.ph81 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc31b228df767bf27E.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.180, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hc31b228df767bf27E.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.179, %bb.u ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc31b228df767bf27E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.180, %bb.u ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hc31b228df767bf27E.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.ah, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !11 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.179, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.179 to i1
  %i.br = or i64 %i.bj, %.sroa.023.179
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bu = shl i64 %i.bm, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hc31b228df767bf27E.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.bq, label %bb.aa, label %bb.ag

bb.z:                                             ; preds = %bb.w
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01acbc6901c9c829E(ptr noalias noundef nonnull align 4 %i.bo, i64 noundef %i.bk, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.bz, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2906
  br label %bb.y

bb.aa:                                            ; preds = %bb.ag, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha23ee2d133e186dfE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_ZN4core5slice4sort6stable5merge5merge17ha23ee2d133e186dfE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl i64 %.sroa.0.0.i.i35, 2             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %..i, i64 %i.ce, i1 false), !alias.scope !2933
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 4 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.ac, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i"
  %.sroa.13.0.i = phi ptr [ %i.cm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i" ], [ %i.cd, %bb.ac ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.co, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i" ], [ %i.cf, %bb.ac ] ; 2 uses
  %.sroa.0.0.i26.i = phi ptr [ %i.ci, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i" ], [ %i.m, %bb.ac ]
  %i.cg = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -4 ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -4 ; 3 uses
  %.val.i.i = load float, ptr %i.ch, align 4, !alias.scope !2932, !noalias !2934, !noundef !11 ; 2 uses
  %.val10.i.i = load float, ptr %i.cg, align 4, !alias.scope !2931, !noalias !2935, !noundef !11 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno float %.val.i.i, %.val10.i.i
  br i1 %brmerge.not.i.i.i, label %bb.ad, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i", !prof !42

bb.ad:                                            ; preds = %.preheader.i
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46
          to label %.noexc.i unwind label %bb.af, !noalias !2933

.noexc.i:                                         ; preds = %bb.ad
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i": ; preds = %.preheader.i
  %i.ci = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -4 ; 2 uses
  %.mux.i.i.i = fcmp olt float %.val.i.i, %.val10.i.i ; 3 uses
  %..i.i = select i1 %.mux.i.i.i, ptr %i.cg, ptr %i.ch
  %i.cj = load i32, ptr %..i.i, align 4, !alias.scope !2933, !noalias !2936
  store i32 %i.cj, ptr %i.ci, align 4, !alias.scope !2931, !noalias !2935
  %i.ck = xor i1 %.mux.i.i.i, true
  %i.cl = zext i1 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cl ; 3 uses
  %i.cn = zext i1 %.mux.i.i.i to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cn ; 3 uses
  %i.cp = icmp eq ptr %i.cm, %i.bo
  %i.cq = icmp eq ptr %i.co, %2
  %or.cond.i.i = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h453c0a43fdf45433E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i"
  %.sroa.13.1.i = phi ptr [ %i.cx, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i" ], [ %i.bo, %bb.ac ] ; 3 uses
  %.sroa.0.0.i37 = phi ptr [ %i.cu, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i" ], [ %2, %bb.ac ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cw, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i" ], [ %i.cd, %bb.ac ] ; 3 uses
  %.sroa.0.0.val.i.i = load float, ptr %.sroa.0.02.i.i, align 4, !alias.scope !2931, !noalias !2937, !noundef !11 ; 2 uses
  %.val.i28.i = load float, ptr %.sroa.0.0.i37, align 4, !alias.scope !2932, !noalias !2938, !noundef !11 ; 2 uses
  %brmerge.not.i.i29.i = fcmp uno float %.sroa.0.0.val.i.i, %.val.i28.i
  br i1 %brmerge.not.i.i29.i, label %bb.ae, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i", !prof !42

bb.ae:                                            ; preds = %.lr.ph.i.i
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46
          to label %.noexc33.i unwind label %bb.af, !noalias !2933

.noexc33.i:                                       ; preds = %bb.ae
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i": ; preds = %.lr.ph.i.i
  %.mux.i.i31.i = fcmp olt float %.sroa.0.0.val.i.i, %.val.i28.i ; 3 uses
  %i.cr = xor i1 %.mux.i.i31.i, true
  %spec.select.i.i = select i1 %.mux.i.i31.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i37
  %i.cs = load i32, ptr %spec.select.i.i, align 4, !alias.scope !2933, !noalias !2939
  store i32 %i.cs, ptr %.sroa.13.1.i, align 4, !alias.scope !2931, !noalias !2937
  %i.ct = zext i1 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i37, i64 %i.ct ; 3 uses
  %i.cv = zext i1 %.mux.i.i31.i to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.02.i.i, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 4 ; 2 uses
  %i.cy = icmp ne ptr %i.cu, %i.cf
  %i.cz = icmp ne ptr %i.cw, %i.m
  %or.cond.i32.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond.i32.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h453c0a43fdf45433E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h453c0a43fdf45433E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i"
  %.sroa.13.4.i = phi ptr [ %i.cm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i" ], [ %i.cx, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i" ]
  %.sroa.7.2.i = phi ptr [ %i.co, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i" ], [ %i.cf, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i" ]
  %.sroa.0.3.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i" ], [ %i.cu, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i30.i" ] ; 2 uses
  %i.da = ptrtoint ptr %.sroa.7.2.i to i64
  %i.db = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dc = sub nuw i64 %i.da, %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.dc, i1 false), !alias.scope !2933, !noalias !2940
  br label %_ZN4core5slice4sort6stable5merge5merge17ha23ee2d133e186dfE.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %bb.ad ], [ %.sroa.13.1.i, %bb.ae ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %bb.ad ], [ %i.cf, %bb.ae ]
  %.sroa.0.2.i = phi ptr [ %2, %bb.ad ], [ %.sroa.0.0.i37, %bb.ae ] ; 2 uses
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = ptrtoint ptr %.sroa.7.1.i to i64
  %i.df = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dg = sub nuw i64 %i.de, %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.3.i, ptr nonnull align 4 %.sroa.0.2.i, i64 %i.dg, i1 false), !alias.scope !2933, !noalias !2941
  resume { ptr, i32 } %i.dd

_ZN4core5slice4sort6stable5merge5merge17ha23ee2d133e186dfE.exit: ; preds = %bb.aa, %bb.ab, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h453c0a43fdf45433E.exit.i"
  %i.dh = shl i64 %i.bm, 1
  %i.di = or disjoint i64 %i.dh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hc31b228df767bf27E.exit

bb.ag:                                            ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk
  %i.dk = or i64 %i.bl, 1
  %i.dl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = xor i32 %i.dn, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01acbc6901c9c829E(ptr noalias noundef nonnull align 4 %i.dj, i64 noundef %i.bl, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.do, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2906
  br label %bb.aa

_ZN4core5slice4sort6stable5drift13logical_merge17hc31b228df767bf27E.exit: ; preds = %bb.x, %_ZN4core5slice4sort6stable5merge5merge17ha23ee2d133e186dfE.exit
  %.sroa.0.0.i = phi i64 [ %i.di, %_ZN4core5slice4sort6stable5merge5merge17ha23ee2d133e186dfE.exit ], [ %i.bu, %bb.x ] ; 2 uses
  %i.dp = icmp ugt i64 %i.bd, 1
  br i1 %i.dp, label %bb.u, label %._crit_edge

bb.ah:                                            ; preds = %._crit_edge
  %i.dq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.ai:                                            ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dt, 0
  br i1 %.not31, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01acbc6901c9c829E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.dy, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2906
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.ak
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h83bf399888a68561E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
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

bb.f:                                             ; preds = %bb.ap, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ap ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fl, %bb.ap ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fj, %bb.ap ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h231f3910783d84dbE.exit
  %.sroa.021.0 = phi i8 [ %i.cd, %_ZN4core5slice4sort6stable5drift10create_run17h231f3910783d84dbE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h231f3910783d84dbE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 12 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h3135036c53897d37E.exit.i, %bb.h
  br i1 %4, label %bb.v, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h57e5c41bd71d7048E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3035), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3037), !noalias !3036
  %.val.i.i56 = load i64, ptr %i.q, align 8, !alias.scope !3038, !noalias !3039, !noundef !11 ; 4 uses
  %.val3.i.i57 = load i64, ptr %i.o, align 8, !alias.scope !3040, !noalias !3041, !noundef !11 ; 2 uses
  %cond.i.i.i.i58 = icmp eq i64 %.val.i.i56, %.val3.i.i57
  br i1 %cond.i.i.i.i58, label %bb.l, label %.split

.split:                                           ; preds = %bb.k
  %i.r = icmp slt i64 %.val.i.i56, %.val3.i.i57
  br i1 %i.r, label %.preheader, label %.preheader84

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.val4.i.i60 = load ptr, ptr %i.s, align 8, !alias.scope !3038, !noalias !3039, !nonnull !11, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.val5.i.i61 = load i64, ptr %i.t, align 8, !alias.scope !3038, !noalias !3039, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val6.i.i62 = load ptr, ptr %i.u, align 8, !alias.scope !3040, !noalias !3041, !nonnull !11, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.val7.i.i63 = load i64, ptr %i.v, align 8, !alias.scope !3040, !noalias !3041, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3042), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3043), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3044), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3045), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3046), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047), !noalias !3036
  %.sroa.0.0.i.i.i.i.i.i.i.i64 = tail call noundef i64 @llvm.umin.i64(i64 %.val7.i.i63, i64 %.val5.i.i61) ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i66146 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i64, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i66146, label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit70, label %.lr.ph149

bb.m:                                             ; preds = %.lr.ph149
  %i.w = add i64 %.sroa.01.0.i.i.i.i.i.i.i65147, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i66 = icmp eq i64 %i.w, %.sroa.0.0.i.i.i.i.i.i.i.i64
  br i1 %exitcond.not.i.i.i.i.i.i.i66, label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit70, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.l, %bb.m
  %.sroa.01.0.i.i.i.i.i.i.i65147 = phi i64 [ %i.w, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i60, i64 %.sroa.01.0.i.i.i.i.i.i.i65147
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i62, i64 %.sroa.01.0.i.i.i.i.i.i.i65147
  %.val16.i.i.i.i.i.i.i67 = load i32, ptr %i.x, align 4, !alias.scope !3048, !noalias !3049, !noundef !11 ; 2 uses
  %.val17.i.i.i.i.i.i.i68 = load i32, ptr %i.y, align 4, !alias.scope !3050, !noalias !3051, !noundef !11 ; 2 uses
  %i.z = icmp eq i32 %.val16.i.i.i.i.i.i.i67, %.val17.i.i.i.i.i.i.i68
  br i1 %i.z, label %bb.m, label %.loopexit.i.i.i.i.i.i.i69

.loopexit.i.i.i.i.i.i.i69:                        ; preds = %.lr.ph149
  %i.aa = icmp ult i32 %.val16.i.i.i.i.i.i.i67, %.val17.i.i.i.i.i.i.i68
  br i1 %i.aa, label %.preheader, label %.preheader84

.preheader:                                       ; preds = %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit70, %.split, %.loopexit.i.i.i.i.i.i.i69
  %.not108 = icmp eq i64 %i.n, 2
  br i1 %.not108, label %_ZN4core5slice4sort6shared17find_existing_run17h3135036c53897d37E.exit.i, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.preheader
  %umax115 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph94

_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit70: ; preds = %bb.m, %bb.l
  %i.ab = icmp ult i64 %.val5.i.i61, %.val7.i.i63
  br i1 %i.ab, label %.preheader, label %.preheader84

.preheader84:                                     ; preds = %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit70, %.split, %.loopexit.i.i.i.i.i.i.i69
  %.not107 = icmp eq i64 %i.n, 2
  br i1 %.not107, label %_ZN4core5slice4sort6shared17find_existing_run17h3135036c53897d37E.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader84
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.val3.i.i42 = phi i64 [ %.val.i.i41, %bb.p ], [ %.val.i.i56, %.lr.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i89 = phi i64 [ %i.ar, %bb.p ], [ 2, %.lr.ph.preheader ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i89 ; 3 uses
  %i.ad = add i64 %.sroa.01.0.i.i89, -1           ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.n
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055), !noalias !3036
  %.val.i.i41 = load i64, ptr %i.ac, align 8, !alias.scope !3056, !noalias !3057, !noundef !11 ; 3 uses
  %cond.i.i.i.i43 = icmp eq i64 %.val.i.i41, %.val3.i.i42
  br i1 %cond.i.i.i.i43, label %bb.n, label %.split73

.split73:                                         ; preds = %.lr.ph
  %i.af = icmp slt i64 %.val.i.i41, %.val3.i.i42
  br i1 %i.af, label %_ZN4core5slice4sort6shared17find_existing_run17h3135036c53897d37E.exit.i, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val4.i.i45 = load ptr, ptr %i.ah, align 8, !alias.scope !3056, !noalias !3057, !nonnull !11, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.val5.i.i46 = load i64, ptr %i.ai, align 8, !alias.scope !3056, !noalias !3057, !noundef !11 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val6.i.i47 = load ptr, ptr %i.aj, align 8, !alias.scope !3058, !noalias !3059, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.val7.i.i48 = load i64, ptr %i.ak, align 8, !alias.scope !3058, !noalias !3059, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3060), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3061), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3062), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3063), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3064), !noalias !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3065), !noalias !3036
  %.sroa.0.0.i.i.i.i.i.i.i.i49 = tail call noundef i64 @llvm.umin.i64(i64 %.val7.i.i48, i64 %.val5.i.i46) ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i51150 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i49, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i51150, label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit55, label %.lr.ph153
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable5drift4sort17h83bf399888a68561E:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  %i.db = icmp eq i64 %i.cl, 0
  %i.dc = icmp eq i64 %i.cm, 0
  %or.cond.i = or i1 %i.dc, %i.db
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h28977ecefd87b71cE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 range(i64 0, -9223372036854775808) %i.cl) ; 2 uses
  %i.dd = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.dd, label %_ZN4core5slice4sort6stable5merge5merge17h28977ecefd87b71cE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.cl ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.cl, %i.cm  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.de, ptr %i.cp
  %i.df = shl i64 %.sroa.0.0.i.i35, 5             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %..i, i64 %i.df, i1 false), !alias.scope !3090
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %i.df ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.ag, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i
  %i.dh = phi ptr [ %i.eb, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i ], [ %i.dg, %bb.ag ] ; 3 uses
  %i.di = phi ptr [ %i.dz, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i ], [ %i.de, %bb.ag ] ; 3 uses
  %.sroa.0.0.i26.i = phi ptr [ %i.dl, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i ], [ %i.m, %bb.ag ]
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -32 ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 -32 ; 3 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %.val.i.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !3095, !noalias !3096, !noundef !11 ; 2 uses
  %.val3.i.i.i.i = load i64, ptr %i.dj, align 8, !alias.scope !3097, !noalias !3098, !noundef !11 ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i, %.val3.i.i.i.i
  br i1 %cond.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader.i
  %i.dm = icmp slt i64 %.val.i.i.i.i, %.val3.i.i.i.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i

bb.ai:                                            ; preds = %.preheader.i
  %i.dn = getelementptr inbounds i8, ptr %i.dh, i64 -16
  %.val4.i.i.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !3095, !noalias !3096, !nonnull !11, !noundef !11
  %i.do = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %.val5.i.i.i.i = load i64, ptr %i.do, align 8, !alias.scope !3095, !noalias !3096, !noundef !11 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.di, i64 -16
  %.val6.i.i.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !3097, !noalias !3098, !nonnull !11, !noundef !11
  %i.dq = getelementptr inbounds i8, ptr %i.di, i64 -8
  %.val7.i.i.i.i = load i64, ptr %i.dq, align 8, !alias.scope !3097, !noalias !3098, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val7.i.i.i.i, i64 %.val5.i.i.i.i) ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i162 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i162, label %._crit_edge166, label %.lr.ph165

bb.aj:                                            ; preds = %.lr.ph165
  %i.dr = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i163, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dr, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %._crit_edge166, label %.lr.ph165

._crit_edge166:                                   ; preds = %bb.aj, %bb.ai
  %i.ds = icmp ult i64 %.val5.i.i.i.i, %.val7.i.i.i.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i

.lr.ph165:                                        ; preds = %bb.ai, %bb.aj
  %.sroa.01.0.i.i.i.i.i.i.i.i.i163 = phi i64 [ %i.dr, %bb.aj ], [ 0, %bb.ai ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i163
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i.i.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i163
  %.val16.i.i.i.i.i.i.i.i.i = load i32, ptr %i.dt, align 4, !alias.scope !3105, !noalias !3106, !noundef !11 ; 2 uses
  %.val17.i.i.i.i.i.i.i.i.i = load i32, ptr %i.du, align 4, !alias.scope !3107, !noalias !3108, !noundef !11 ; 2 uses
  %i.dv = icmp eq i32 %.val16.i.i.i.i.i.i.i.i.i, %.val17.i.i.i.i.i.i.i.i.i
  br i1 %i.dv, label %bb.aj, label %.loopexit.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph165
  %i.dw = icmp ult i32 %.val16.i.i.i.i.i.i.i.i.i, %.val17.i.i.i.i.i.i.i.i.i
  br label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i

_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %._crit_edge166, %bb.ah
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.dm, %bb.ah ], [ %i.ds, %._crit_edge166 ], [ %i.dw, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.dj, ptr %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !3090, !noalias !3109
  %i.dx = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.dy = zext i1 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %i.dy ; 3 uses
  %i.ea = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.ea ; 3 uses
  %i.ec = icmp eq ptr %i.dz, %i.cp
  %i.ed = icmp eq ptr %i.eb, %2
  %or.cond.i.i = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf39249b1b211a453E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %bb.an
  %i.ee = phi ptr [ %i.eu, %bb.an ], [ %i.cp, %bb.ag ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.et, %bb.an ], [ %i.de, %bb.ag ] ; 7 uses
  %i.ef = phi ptr [ %i.es, %bb.an ], [ %2, %bb.ag ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3113)
  %.val.i.i.i28.i = load i64, ptr %.sroa.0.04.i.i, align 8, !alias.scope !3114, !noalias !3115, !noundef !11 ; 2 uses
  %.val3.i.i.i29.i = load i64, ptr %i.ef, align 8, !alias.scope !3116, !noalias !3117, !noundef !11 ; 2 uses
  %cond.i.i.i.i.i30.i = icmp eq i64 %.val.i.i.i28.i, %.val3.i.i.i29.i
  br i1 %cond.i.i.i.i.i30.i, label %bb.ak, label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.eg = icmp slt i64 %.val.i.i.i28.i, %.val3.i.i.i29.i
  br i1 %i.eg, label %bb.an, label %bb.am

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 16
  %.val4.i.i.i32.i = load ptr, ptr %i.eh, align 8, !alias.scope !3114, !noalias !3115, !nonnull !11, !noundef !11
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 24
  %.val5.i.i.i33.i = load i64, ptr %i.ei, align 8, !alias.scope !3114, !noalias !3115, !noundef !11 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.val6.i.i.i34.i = load ptr, ptr %i.ej, align 8, !alias.scope !3116, !noalias !3117, !nonnull !11, !noundef !11
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %.val7.i.i.i35.i = load i64, ptr %i.ek, align 8, !alias.scope !3116, !noalias !3117, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i36.i = tail call noundef i64 @llvm.umin.i64(i64 %.val7.i.i.i35.i, i64 %.val5.i.i.i33.i) ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i38.i158 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i36.i, 0
  br i1 %exitcond.not.i.i.i.i.i.i.i.i38.i158, label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i42.i, label %.lr.ph161

bb.al:                                            ; preds = %.lr.ph161
  %i.el = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i37.i159, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i38.i = icmp eq i64 %i.el, %.sroa.0.0.i.i.i.i.i.i.i.i.i36.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i38.i, label %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i42.i, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.ak, %bb.al
  %.sroa.01.0.i.i.i.i.i.i.i.i37.i159 = phi i64 [ %i.el, %bb.al ], [ 0, %bb.ak ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i32.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i37.i159
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i.i34.i, i64 %.sroa.01.0.i.i.i.i.i.i.i.i37.i159
  %.val16.i.i.i.i.i.i.i.i39.i = load i32, ptr %i.em, align 4, !alias.scope !3124, !noalias !3125, !noundef !11 ; 2 uses
  %.val17.i.i.i.i.i.i.i.i40.i = load i32, ptr %i.en, align 4, !alias.scope !3126, !noalias !3127, !noundef !11 ; 2 uses
  %i.eo = icmp eq i32 %.val16.i.i.i.i.i.i.i.i39.i, %.val17.i.i.i.i.i.i.i.i40.i
  br i1 %i.eo, label %bb.al, label %.loopexit.i.i.i.i.i.i.i.i41.i

.loopexit.i.i.i.i.i.i.i.i41.i:                    ; preds = %.lr.ph161
  %i.ep = icmp ult i32 %.val16.i.i.i.i.i.i.i.i39.i, %.val17.i.i.i.i.i.i.i.i40.i
  br i1 %i.ep, label %bb.an, label %bb.am

_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i42.i: ; preds = %bb.al, %bb.ak
  %i.eq = icmp ult i64 %.val5.i.i.i33.i, %.val7.i.i.i35.i
  br i1 %i.eq, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i42.i, %.loopexit.i.i.i.i.i.i.i.i41.i, %.split.i.i
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i42.i, %.loopexit.i.i.i.i.i.i.i.i41.i, %.split.i.i
  %i.er = phi i64 [ 1, %bb.am ], [ 0, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i42.i ], [ 0, %.split.i.i ], [ 0, %.loopexit.i.i.i.i.i.i.i.i41.i ]
  %.sroa.0.0.i.i2.i.i = phi i64 [ 0, %bb.am ], [ 1, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i42.i ], [ 1, %.split.i.i ], [ 1, %.loopexit.i.i.i.i.i.i.i.i41.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.ef, %bb.am ], [ %.sroa.0.04.i.i, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i42.i ], [ %.sroa.0.04.i.i, %.split.i.i ], [ %.sroa.0.04.i.i, %.loopexit.i.i.i.i.i.i.i.i41.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !3090, !noalias !3128
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.04.i.i, i64 %.sroa.0.0.i.i2.i.i ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 2 uses
  %i.ev = icmp ne ptr %i.es, %i.dg
  %i.ew = icmp ne ptr %i.et, %i.m
  %or.cond.i31.i = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond.i31.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf39249b1b211a453E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf39249b1b211a453E.exit.i": ; preds = %bb.an, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.dz, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i ], [ %i.eu, %bb.an ]
  %.sroa.7.0.i = phi ptr [ %i.eb, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i ], [ %i.dg, %bb.an ]
  %.sroa.0.1.i = phi ptr [ %2, %_ZN4core3ops8function5FnMut8call_mut17h0c26cafb83261247E.exit.i.i ], [ %i.es, %bb.an ] ; 2 uses
  %i.ex = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ey = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ez = sub nuw i64 %i.ex, %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ez, i1 false), !alias.scope !3090, !noalias !3129
  br label %_ZN4core5slice4sort6stable5merge5merge17h28977ecefd87b71cE.exit

_ZN4core5slice4sort6stable5merge5merge17h28977ecefd87b71cE.exit: ; preds = %bb.ae, %bb.af, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf39249b1b211a453E.exit.i"
  %i.fa = shl i64 %i.cn, 1
  %i.fb = or disjoint i64 %i.fa, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h3d8bc9ae2438aa54E.exit

bb.ao:                                            ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.cl
  %i.fd = or i64 %i.cm, 1
  %i.fe = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fd, i1 true)
  %i.ff = trunc nuw nsw i64 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 1
  %i.fh = xor i32 %i.fg, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfa3f4919c91c26b8E(ptr noalias noundef nonnull align 8 %i.fc, i64 noundef %i.cm, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 1 %5), !inline_history !2991
  br label %bb.ae

_ZN4core5slice4sort6stable5drift13logical_merge17h3d8bc9ae2438aa54E.exit: ; preds = %bb.ab, %_ZN4core5slice4sort6stable5merge5merge17h28977ecefd87b71cE.exit
  %.sroa.0.0.i = phi i64 [ %i.fb, %_ZN4core5slice4sort6stable5merge5merge17h28977ecefd87b71cE.exit ], [ %i.cv, %bb.ab ] ; 2 uses
  %i.fi = icmp ugt i64 %i.ce, 1
  br i1 %i.fi, label %bb.y, label %._crit_edge

bb.ap:                                            ; preds = %._crit_edge
  %i.fj = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fk = lshr i64 %.sroa.018.0, 1
  %i.fl = add i64 %i.fk, %.sroa.09.0
  br label %bb.f

bb.aq:                                            ; preds = %._crit_edge
  %i.fm = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fm, 0
  br i1 %.not31, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fn = or i64 %1, 1
  %i.fo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fn, i1 true)
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 1
  %i.fr = xor i32 %i.fq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hfa3f4919c91c26b8E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 1 %5), !inline_history !2991
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %bb.as
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17h93a72b90834fe111E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
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
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ep, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.en, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h534f6677c528c5e9E.exit
  %.sroa.021.0 = phi i8 [ %i.bn, %_ZN4core5slice4sort6stable5drift10create_run17h534f6677c528c5e9E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h534f6677c528c5e9E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3177)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h73471148ff71817bE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !3177, !noalias !3178, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !3177, !noalias !3178, !noundef !11 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !3177, !noalias !3178, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !3177, !noalias !3178, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i.i42 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %spec.store.select.i.i.i.i.i.i42), !alias.scope !3179, !noalias !3180 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i.i43 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp sgt i64 %spec.select.i.i.i.i.i.i43, -1 ; 2 uses
  %.not75 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader53, label %.preheader

.preheader53:                                     ; preds = %bb.k
  br i1 %.not75, label %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not75, label %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i.thread106, label %.lr.ph62

.lr.ph:                                           ; preds = %.preheader53, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader53 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader53 ]
  %.sroa.01.0.i.i58 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader53 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i58 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !3177, !noalias !3178, !nonnull !11, !noundef !11 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !3177, !noalias !3178, !noundef !11 ; 3 uses
  %spec.store.select.i.i.i.i.i.i40 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %spec.store.select.i.i.i.i.i.i40), !alias.scope !3181, !noalias !3180 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i.i41 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i.i.i.i.i41, 0
  br i1 %i.ag, label %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i58, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i, label %.lr.ph

.lr.ph62:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i61 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i61 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !3177, !noalias !3178, !nonnull !11, !noundef !11 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !3177, !noalias !3178, !noundef !11 ; 3 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !3182, !noalias !3180 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.ap, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i

bb.m:                                             ; preds = %.lr.ph62
  %i.aq = add nuw i64 %.sroa.01.1.i.i61, 1        ; 2 uses
  %exitcond82.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond82.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i, label %.lr.ph62

_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i: ; preds = %bb.m, %.lr.ph62, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i58, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i61, %.lr.ph62 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ar = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.i, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i.thread: ; preds = %.preheader53
  br i1 %.not5.i103, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h73471148ff71817bE.exit"

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not16.i.i = icmp eq i64 %i.as, 0
  %or.cond = or i1 %i.y, %.not16.i.i
  br i1 %or.cond, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h73471148ff71817bE.exit", label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.01.0)
  %i.at = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h534f6677c528c5e9E.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h38dc2c0bcfccf0f4E(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5), !inline_history !3152
  %i.au = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h534f6677c528c5e9E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h73471148ff71817bE.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h4faaf477bd694230E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4851 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hf32aeb6bda0d99a0E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h4faaf477bd694230E.exit.i.i ]
  %i.aw = shl i64 %.sroa.0.0.i.i4851, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h534f6677c528c5e9E.exit
end_hunk_3
begin_hunk_4_@_ZN4core5slice4sort6stable5drift4sort17h93a72b90834fe111E:bb.a
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.015.i.i
  %i.bc = getelementptr [24 x i8], ptr %i.az, i64 %i.ba
  invoke void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hb4b2d552fb73b7d3E(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, i64 noundef 3)
          to label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h4faaf477bd694230E.exit.i.i unwind label %bb.q, !noalias !3178

bb.q:                                             ; preds = %.lr.ph.i.i37
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #45, !noalias !3178
  unreachable

_ZN4core10intrinsics25typed_swap_nonoverlapping17h4faaf477bd694230E.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.be = add nuw nsw i64 %.sroa.0.015.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.ay
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h73471148ff71817bE.exit", label %.lr.ph.i.i37

_ZN4core5slice4sort6stable5drift10create_run17h534f6677c528c5e9E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h73471148ff71817bE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ax, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h73471148ff71817bE.exit" ], [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bh = sub i64 %factor, %i.bf
  %i.bi = add i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph68, %_ZN4core5slice4sort6stable5drift13logical_merge17h39ee4b8a9ece5a1eE.exit
  %.sroa.02.167 = phi i64 [ %.sroa.02.0, %.lr.ph68 ], [ %i.bo, %_ZN4core5slice4sort6stable5drift13logical_merge17h39ee4b8a9ece5a1eE.exit ] ; 2 uses
  %.sroa.023.166 = phi i64 [ %.sroa.023.0, %.lr.ph68 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h39ee4b8a9ece5a1eE.exit ] ; 4 uses
  %i.bo = add i64 %.sroa.02.167, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h39ee4b8a9ece5a1eE.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.166, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h39ee4b8a9ece5a1eE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.167, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h39ee4b8a9ece5a1eE.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !11 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 8 uses
  %i.bw = lshr i64 %.sroa.023.166, 1              ; 6 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.by ; 6 uses
  %i.ca = icmp ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.166 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.166
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cf = shl i64 %i.bx, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h39ee4b8a9ece5a1eE.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cb, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h38dc2c0bcfccf0f4E(ptr noalias noundef nonnull align 8 %i.bz, i64 noundef %i.bv, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5), !inline_history !3153
  br label %bb.v

bb.x:                                             ; preds = %bb.aa, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3184)
  %i.cl = icmp eq i64 %i.bv, 0
  %i.cm = icmp eq i64 %i.bw, 0
  %or.cond.i = or i1 %i.cm, %i.cl
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4c00346074425935E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.cn = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cn, label %_ZN4core5slice4sort6stable5merge5merge17h4c00346074425935E.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.bv ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bv, %i.bw  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.co, ptr %i.bz
  %i.cp = mul i64 %.sroa.0.0.i.i35, 24            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %..i, i64 %i.cp, i1 false), !alias.scope !3185
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.cr = phi ptr [ %i.dh, %.preheader.i ], [ %i.cq, %bb.z ] ; 3 uses
  %i.cs = phi ptr [ %i.dg, %.preheader.i ], [ %i.co, %bb.z ] ; 3 uses
  %.sroa.0.0.i26.i = phi ptr [ %i.cv, %.preheader.i ], [ %i.m, %bb.z ]
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -24 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cr, i64 -24 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -24 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cr, i64 -16
  %.val.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !3184, !noalias !3186, !nonnull !11, !noundef !11
  %i.cx = getelementptr i8, ptr %i.cr, i64 -8
  %.val10.i.i = load i64, ptr %i.cx, align 8, !alias.scope !3184, !noalias !3186, !noundef !11 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cs, i64 -16
  %.val11.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !3183, !noalias !3187, !nonnull !11, !noundef !11
  %i.cz = getelementptr i8, ptr %i.cs, i64 -8
  %.val12.i.i = load i64, ptr %i.cz, align 8, !alias.scope !3183, !noalias !3187, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.da = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i), !alias.scope !3188, !noalias !3189 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp eq i32 %i.da, 0
  %i.dd = sub i64 %.val10.i.i, %.val12.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.dc, i64 %i.dd, i64 %i.db ; 2 uses
  %i.de = icmp sgt i64 %spec.select.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.de, ptr %i.cu, ptr %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !3185, !noalias !3190
  %i.df = zext i1 %i.de to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.df ; 3 uses
  %spec.select.i.i.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i.i, 63
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %spec.select.i.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.di = icmp eq ptr %i.dg, %i.bz
  %i.dj = icmp eq ptr %i.dh, %2
  %or.cond.i.i = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4be4c5fd746a3e3fE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.dk = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.bz, %bb.z ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.co, %bb.z ] ; 4 uses
  %i.dl = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %2, %bb.z ] ; 4 uses
  %i.dm = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !3183, !noalias !3191, !nonnull !11, !noundef !11
  %i.dn = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dn, align 8, !alias.scope !3183, !noalias !3191, !noundef !11 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dl, i64 8
  %.val.i28.i = load ptr, ptr %i.do, align 8, !alias.scope !3184, !noalias !3192, !nonnull !11, !noundef !11
  %i.dp = getelementptr i8, ptr %i.dl, i64 16
  %.val7.i.i = load i64, ptr %i.dp, align 8, !alias.scope !3184, !noalias !3192, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i29.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.dq = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i28.i, i64 %spec.store.select.i.i.i.i.i.i.i29.i), !alias.scope !3193, !noalias !3194 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp eq i32 %i.dq, 0
  %i.dt = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i.i.i.i.i30.i = select i1 %i.ds, i64 %i.dt, i64 %i.dr ; 2 uses
  %i.du = icmp sgt i64 %spec.select.i.i.i.i.i.i.i30.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.du, ptr %i.dl, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !alias.scope !3185, !noalias !3195
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dv ; 3 uses
  %spec.select.i.i.i.i.i.i.lobit.i31.i = lshr i64 %spec.select.i.i.i.i.i.i.i30.i, 63
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.i.i.i.i.lobit.i31.i ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 2 uses
  %i.dz = icmp ne ptr %i.dw, %i.cq
  %i.ea = icmp ne ptr %i.dx, %i.m
  %or.cond.i32.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i32.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4be4c5fd746a3e3fE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4be4c5fd746a3e3fE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dg, %.preheader.i ], [ %i.dy, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.cq, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dw, %.lr.ph.i.i ] ; 2 uses
  %i.eb = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ec = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ed = sub nuw i64 %i.eb, %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ed, i1 false), !alias.scope !3185, !noalias !3196
  br label %_ZN4core5slice4sort6stable5merge5merge17h4c00346074425935E.exit

_ZN4core5slice4sort6stable5merge5merge17h4c00346074425935E.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h4be4c5fd746a3e3fE.exit.i"
  %i.ee = shl i64 %i.bx, 1
  %i.ef = or disjoint i64 %i.ee, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h39ee4b8a9ece5a1eE.exit

bb.aa:                                            ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.bv
  %i.eh = or i64 %i.bw, 1
  %i.ei = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = xor i32 %i.ek, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h38dc2c0bcfccf0f4E(ptr noalias noundef nonnull align 8 %i.eg, i64 noundef %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5), !inline_history !3153
  br label %bb.x

_ZN4core5slice4sort6stable5drift13logical_merge17h39ee4b8a9ece5a1eE.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17h4c00346074425935E.exit
  %.sroa.0.0.i = phi i64 [ %i.ef, %_ZN4core5slice4sort6stable5merge5merge17h4c00346074425935E.exit ], [ %i.cf, %bb.u ] ; 2 uses
  %i.em = icmp ugt i64 %i.bo, 1
  br i1 %i.em, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.en = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eo = lshr i64 %.sroa.018.0, 1
  %i.ep = add i64 %i.eo, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.eq = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.eq, 0
  br i1 %.not31, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.er = or i64 %1, 1
  %i.es = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 1
  %i.ev = xor i32 %i.eu, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h38dc2c0bcfccf0f4E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 1 %5), !inline_history !3153
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17ha6506a8452454716E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
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

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dr, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dp, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h30d040d746b6ab94E.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_ZN4core5slice4sort6stable5drift10create_run17h30d040d746b6ab94E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h30d040d746b6ab94E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread98, %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9dff0e2065b8a8b3E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 64
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !3214, !noalias !3215, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !3214, !noalias !3215, !noundef !11
  %i.s = icmp sge i64 %.val10.i, %.val11.i        ; 2 uses
  %.not71 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader49, label %.preheader

.preheader49:                                     ; preds = %bb.k
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread98, label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader49, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader49 ]
  %.sroa.01.0.i.i54 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader49 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.01.0.i.i54
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !3214, !noalias !3215, !noundef !11 ; 2 uses
  %i.v = icmp slt i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i54, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i, label %.lr.ph

.lr.ph58:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i57 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.01.1.i.i57
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !3214, !noalias !3215, !noundef !11 ; 2 uses
  %i.z = icmp slt i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i

bb.m:                                             ; preds = %.lr.ph58
  %i.aa = add nuw i64 %.sroa.01.1.i.i57, 1        ; 2 uses
  %exitcond78.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i, label %.lr.ph58

_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i: ; preds = %bb.m, %.lr.ph58, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i54, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i57, %.lr.ph58 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ab = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread98: ; preds = %.preheader
  br i1 %.not5.i100, label %bb.i, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i95, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9dff0e2065b8a8b3E.exit"

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not16.i.i = icmp eq i64 %i.ac, 0
  %or.cond = or i1 %i.s, %.not16.i.i
  br i1 %or.cond, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9dff0e2065b8a8b3E.exit", label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.01.0)
  %i.ad = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h30d040d746b6ab94E.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5d7b53934487d760E(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3201
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h30d040d746b6ab94E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9dff0e2065b8a8b3E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17hcc0988daf9987aacE.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread ], [ %.sroa.0.0.i.i96103107, %_ZN4core10intrinsics25typed_swap_nonoverlapping17hcc0988daf9987aacE.exit.i.i ]
  %i.ag = shl i64 %.sroa.0.0.i.i4447, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h30d040d746b6ab94E.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread98
  %i.ai = phi i64 [ %i.ac, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread98 ]
  %.sroa.0.0.i.i96103107 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h7d15df3e5fa62b76E.exit.i.thread98 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.0.0.i.i96103107
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17hcc0988daf9987aacE.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.015.i.i = phi i64 [ %i.ao, %_ZN4core10intrinsics25typed_swap_nonoverlapping17hcc0988daf9987aacE.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.015.i.i, -1
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.0.015.i.i
  %i.am = getelementptr [40 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hb4b2d552fb73b7d3E(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 5)
          to label %_ZN4core10intrinsics25typed_swap_nonoverlapping17hcc0988daf9987aacE.exit.i.i unwind label %bb.q, !noalias !3215

bb.q:                                             ; preds = %.lr.ph.i.i37
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #45, !noalias !3215
  unreachable

_ZN4core10intrinsics25typed_swap_nonoverlapping17hcc0988daf9987aacE.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.ao = add nuw nsw i64 %.sroa.0.015.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9dff0e2065b8a8b3E.exit", label %.lr.ph.i.i37

_ZN4core5slice4sort6stable5drift10create_run17h30d040d746b6ab94E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9dff0e2065b8a8b3E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ah, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9dff0e2065b8a8b3E.exit" ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ar = sub i64 %factor, %i.ap
  %i.as = add i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph64, %_ZN4core5slice4sort6stable5drift13logical_merge17h04ae1342915b3a23E.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.ay, %_ZN4core5slice4sort6stable5drift13logical_merge17h04ae1342915b3a23E.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h04ae1342915b3a23E.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h04ae1342915b3a23E.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h04ae1342915b3a23E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h04ae1342915b3a23E.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !11 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.162, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.162 to i1
  %i.bm = or i64 %i.be, %.sroa.023.162
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bp = shl i64 %i.bh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h04ae1342915b3a23E.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bl, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5d7b53934487d760E(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3202
  br label %bb.v

bb.x:                                             ; preds = %bb.aa, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3217)
  %i.bv = icmp eq i64 %i.bf, 0
  %i.bw = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.bw, %i.bv
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h2b152fc30a30dbceE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 range(i64 0, -9223372036854775808) %i.bf) ; 2 uses
  %i.bx = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bx, label %_ZN4core5slice4sort6stable5merge5merge17h2b152fc30a30dbceE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.by, ptr %i.bj
  %i.bz = mul i64 %.sroa.0.0.i.i35, 40            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %..i, i64 %i.bz, i1 false), !alias.scope !3218
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.cb = phi ptr [ %i.cn, %.preheader.i ], [ %i.ca, %bb.z ] ; 2 uses
  %i.cc = phi ptr [ %i.cl, %.preheader.i ], [ %i.by, %bb.z ] ; 2 uses
  %.sroa.0.0.i26.i = phi ptr [ %i.cf, %.preheader.i ], [ %i.m, %bb.z ]
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -40 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -40 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -40 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cb, i64 -16
  %.val.i.i = load i64, ptr %i.cg, align 8, !alias.scope !3217, !noalias !3219, !noundef !11
  %i.ch = getelementptr i8, ptr %i.cc, i64 -16
  %.val10.i.i = load i64, ptr %i.ch, align 8, !alias.scope !3216, !noalias !3220, !noundef !11
  %i.ci = icmp slt i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.ci, ptr %i.cd, ptr %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %..i.i, i64 40, i1 false), !alias.scope !3218, !noalias !3221
  %i.cj = xor i1 %i.ci, true
  %i.ck = zext i1 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %i.ck ; 3 uses
  %i.cm = zext i1 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %i.ce, i64 %i.cm ; 3 uses
  %i.co = icmp eq ptr %i.cl, %i.bj
  %i.cp = icmp eq ptr %i.cn, %2
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9169c90ddf471f99E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.cq = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.bj, %bb.z ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.by, %bb.z ] ; 3 uses
  %i.cr = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %2, %bb.z ] ; 3 uses
  %i.cs = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val.i.i = load i64, ptr %i.cs, align 8, !alias.scope !3216, !noalias !3222, !noundef !11
  %i.ct = getelementptr i8, ptr %i.cr, i64 24
  %.val.i28.i = load i64, ptr %i.ct, align 8, !alias.scope !3217, !noalias !3223, !noundef !11
  %i.cu = icmp slt i64 %.sroa.0.0.val.i.i, %.val.i28.i ; 3 uses
  %i.cv = xor i1 %i.cu, true
  %spec.select.i.i = select i1 %i.cu, ptr %.sroa.0.02.i.i, ptr %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(40) %spec.select.i.i, i64 40, i1 false), !alias.scope !3218, !noalias !3224
  %i.cw = zext i1 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cr, i64 %i.cw ; 3 uses
  %i.cy = zext i1 %i.cu to i64
  %i.cz = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.02.i.i, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.db = icmp ne ptr %i.cx, %i.ca
  %i.dc = icmp ne ptr %i.cz, %i.m
  %or.cond.i29.i = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond.i29.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9169c90ddf471f99E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9169c90ddf471f99E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cl, %.preheader.i ], [ %i.da, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cn, %.preheader.i ], [ %i.ca, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ] ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.7.0.i to i64
  %i.de = ptrtoint ptr %.sroa.0.1.i to i64
  %i.df = sub nuw i64 %i.dd, %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.df, i1 false), !alias.scope !3218, !noalias !3225
  br label %_ZN4core5slice4sort6stable5merge5merge17h2b152fc30a30dbceE.exit

_ZN4core5slice4sort6stable5merge5merge17h2b152fc30a30dbceE.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h9169c90ddf471f99E.exit.i"
  %i.dg = shl i64 %i.bh, 1
  %i.dh = or disjoint i64 %i.dg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h04ae1342915b3a23E.exit

bb.aa:                                            ; preds = %bb.v
  %i.di = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.bf
  %i.dj = or i64 %i.bg, 1
  %i.dk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5d7b53934487d760E(ptr noalias noundef nonnull align 8 %i.di, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3202
  br label %bb.x

_ZN4core5slice4sort6stable5drift13logical_merge17h04ae1342915b3a23E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17h2b152fc30a30dbceE.exit
  %.sroa.0.0.i = phi i64 [ %i.dh, %_ZN4core5slice4sort6stable5merge5merge17h2b152fc30a30dbceE.exit ], [ %i.bp, %bb.u ] ; 2 uses
  %i.do = icmp ugt i64 %i.ay, 1
  br i1 %i.do, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dp = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dq = lshr i64 %.sroa.018.0, 1
  %i.dr = add i64 %i.dq, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ds = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ds, 0
  br i1 %.not31, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dt = or i64 %1, 1
  %i.du = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = xor i32 %i.dw, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h5d7b53934487d760E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3202
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17hb65551d2b66659a5E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
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
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dk, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.di, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hc99b205cda694cbfE.exit
  %.sroa.021.0 = phi i8 [ %i.au, %_ZN4core5slice4sort6stable5drift10create_run17hc99b205cda694cbfE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hc99b205cda694cbfE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread96, %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e9f2d88658bf364E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !3243, !noalias !3244, !noundef !11 ; 3 uses
  %.val11.i = load i64, ptr %i.o, align 8, !alias.scope !3243, !noalias !3244, !noundef !11
  %i.r = icmp sge i64 %.val10.i, %.val11.i        ; 2 uses
  %.not71 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader49, label %.preheader

.preheader49:                                     ; preds = %bb.k
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread96, label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader49, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader49 ]
  %.sroa.01.0.i.i54 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader49 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.01.0.i.i54
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !3243, !noalias !3244, !noundef !11 ; 2 uses
  %i.t = icmp slt i64 %.val8.i, %.val9.i
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i54, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i, label %.lr.ph

.lr.ph58:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i57 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.01.1.i.i57
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !3243, !noalias !3244, !noundef !11 ; 2 uses
  %i.w = icmp slt i64 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i

bb.m:                                             ; preds = %.lr.ph58
  %i.x = add nuw i64 %.sroa.01.1.i.i57, 1         ; 2 uses
  %exitcond78.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond78.not, label %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i, label %.lr.ph58

_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i: ; preds = %bb.m, %.lr.ph58, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i54, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i57, %.lr.ph58 ], [ %i.n, %bb.m ] ; 5 uses
  %i.y = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i93, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e9f2d88658bf364E.exit"

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i
  %i.z = lshr i64 %.sroa.0.0.i.i, 1               ; 2 uses
  %.not16.i.i = icmp eq i64 %i.z, 0
  %or.cond = or i1 %i.r, %.not16.i.i
  br i1 %or.cond, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e9f2d88658bf364E.exit", label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.01.0)
  %i.aa = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc99b205cda694cbfE.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1755e8b3ef913aE(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3230
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc99b205cda694cbfE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e9f2d88658bf364E.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h125b38c0a33a12f7E.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h125b38c0a33a12f7E.exit.i.i ]
  %i.ad = shl i64 %.sroa.0.0.i.i4447, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hc99b205cda694cbfE.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread96
  %i.af = phi i64 [ %i.z, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h6266c71b0c79e016E.exit.i.thread96 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h125b38c0a33a12f7E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.015.i.i = phi i64 [ %i.al, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h125b38c0a33a12f7E.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.015.i.i, -1
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.0.015.i.i
  %i.aj = getelementptr [40 x i8], ptr %i.ag, i64 %i.ah
  invoke void @_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hb4b2d552fb73b7d3E(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef 5)
          to label %_ZN4core10intrinsics25typed_swap_nonoverlapping17h125b38c0a33a12f7E.exit.i.i unwind label %bb.q, !noalias !3244

bb.q:                                             ; preds = %.lr.ph.i.i37
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #45, !noalias !3244
  unreachable

_ZN4core10intrinsics25typed_swap_nonoverlapping17h125b38c0a33a12f7E.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.al = add nuw nsw i64 %.sroa.0.015.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, %i.af
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e9f2d88658bf364E.exit", label %.lr.ph.i.i37

_ZN4core5slice4sort6stable5drift10create_run17hc99b205cda694cbfE.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e9f2d88658bf364E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ae, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h7e9f2d88658bf364E.exit" ], [ %i.ac, %bb.p ], [ %i.aa, %bb.o ] ; 2 uses
  %i.am = lshr i64 %.sroa.023.0, 1
  %i.an = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ao = sub i64 %factor, %i.am
  %i.ap = add i64 %i.an, %factor
  %i.aq = mul i64 %i.ao, %.sroa.0.0
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 false)
  %i.au = trunc nuw nsw i64 %i.at to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph64, %_ZN4core5slice4sort6stable5drift13logical_merge17h6233f7fb51d7cfb0E.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.av, %_ZN4core5slice4sort6stable5drift13logical_merge17h6233f7fb51d7cfb0E.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6233f7fb51d7cfb0E.exit ] ; 4 uses
  %i.av = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.ax, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h6233f7fb51d7cfb0E.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h6233f7fb51d7cfb0E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h6233f7fb51d7cfb0E.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.az, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.av
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !11 ; 3 uses
  %i.bc = lshr i64 %i.bb, 1                       ; 8 uses
  %i.bd = lshr i64 %.sroa.023.162, 1              ; 6 uses
  %i.be = add nuw i64 %i.bc, %i.bd                ; 4 uses
  %i.bf = sub i64 %.sroa.09.0, %i.be
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bf ; 6 uses
  %i.bh = icmp ugt i64 %i.be, %3
  %i.bi = trunc i64 %.sroa.023.162 to i1
  %i.bj = or i64 %i.bb, %.sroa.023.162
  %i.bk = trunc i64 %i.bj to i1
  %or.cond3.i = or i1 %i.bh, %i.bk
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bl = trunc i64 %i.bb to i1
  br i1 %i.bl, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bm = shl i64 %i.be, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6233f7fb51d7cfb0E.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bi, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.bn = or i64 %i.bc, 1
  %i.bo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 1
  %i.br = xor i32 %i.bq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1755e8b3ef913aE(ptr noalias noundef nonnull align 8 %i.bg, i64 noundef %i.bc, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3231
  br label %bb.v

bb.x:                                             ; preds = %bb.aa, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3246)
  %i.bs = icmp eq i64 %i.bc, 0
  %i.bt = icmp eq i64 %i.bd, 0
  %or.cond.i = or i1 %i.bt, %i.bs
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17ha6089b8c7209ae34E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 range(i64 0, -9223372036854775808) %i.bc) ; 2 uses
  %i.bu = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bu, label %_ZN4core5slice4sort6stable5merge5merge17ha6089b8c7209ae34E.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bc ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bc, %i.bd  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.bv, ptr %i.bg
  %i.bw = mul i64 %.sroa.0.0.i.i35, 40            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %..i, i64 %i.bw, i1 false), !alias.scope !3247
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.by = phi ptr [ %i.ci, %.preheader.i ], [ %i.bx, %bb.z ]
  %i.bz = phi ptr [ %i.cg, %.preheader.i ], [ %i.bv, %bb.z ]
  %.sroa.0.0.i26.i = phi ptr [ %i.cc, %.preheader.i ], [ %i.m, %bb.z ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -40 ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 -40 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -40 ; 2 uses
  %.val.i.i = load i64, ptr %i.cb, align 8, !alias.scope !3246, !noalias !3248, !noundef !11
  %.val10.i.i = load i64, ptr %i.ca, align 8, !alias.scope !3245, !noalias !3249, !noundef !11
  %i.cd = icmp slt i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cd, ptr %i.ca, ptr %i.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull align 8 dereferenceable(40) %..i.i, i64 40, i1 false), !alias.scope !3247, !noalias !3250
  %i.ce = xor i1 %i.cd, true
  %i.cf = zext i1 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %i.cf ; 3 uses
  %i.ch = zext i1 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %i.ch ; 3 uses
  %i.cj = icmp eq ptr %i.cg, %i.bg
  %i.ck = icmp eq ptr %i.ci, %2
  %or.cond.i.i = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8172141f42f90fcfE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.cl = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %i.bg, %bb.z ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bv, %bb.z ] ; 3 uses
  %i.cm = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %2, %bb.z ] ; 3 uses
  %.sroa.0.0.val.i.i = load i64, ptr %.sroa.0.02.i.i, align 8, !alias.scope !3245, !noalias !3251, !noundef !11
  %.val.i28.i = load i64, ptr %i.cm, align 8, !alias.scope !3246, !noalias !3252, !noundef !11
  %i.cn = icmp slt i64 %.sroa.0.0.val.i.i, %.val.i28.i ; 3 uses
  %i.co = xor i1 %i.cn, true
  %spec.select.i.i = select i1 %i.cn, ptr %.sroa.0.02.i.i, ptr %i.cm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(40) %spec.select.i.i, i64 40, i1 false), !alias.scope !3247, !noalias !3253
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cm, i64 %i.cp ; 3 uses
  %i.cr = zext i1 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.02.i.i, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 40 ; 2 uses
  %i.cu = icmp ne ptr %i.cq, %i.bx
  %i.cv = icmp ne ptr %i.cs, %i.m
  %or.cond.i29.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond.i29.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8172141f42f90fcfE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8172141f42f90fcfE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cg, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ci, %.preheader.i ], [ %i.bx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cq, %.lr.ph.i.i ] ; 2 uses
  %i.cw = ptrtoint ptr %.sroa.7.0.i to i64
  %i.cx = ptrtoint ptr %.sroa.0.1.i to i64
  %i.cy = sub nuw i64 %i.cw, %i.cx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.cy, i1 false), !alias.scope !3247, !noalias !3254
  br label %_ZN4core5slice4sort6stable5merge5merge17ha6089b8c7209ae34E.exit

_ZN4core5slice4sort6stable5merge5merge17ha6089b8c7209ae34E.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8172141f42f90fcfE.exit.i"
  %i.cz = shl i64 %i.be, 1
  %i.da = or disjoint i64 %i.cz, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h6233f7fb51d7cfb0E.exit

bb.aa:                                            ; preds = %bb.v
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bc
  %i.dc = or i64 %i.bd, 1
  %i.dd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dc, i1 true)
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 1
  %i.dg = xor i32 %i.df, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1755e8b3ef913aE(ptr noalias noundef nonnull align 8 %i.db, i64 noundef %i.bd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3231
  br label %bb.x

_ZN4core5slice4sort6stable5drift13logical_merge17h6233f7fb51d7cfb0E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17ha6089b8c7209ae34E.exit
  %.sroa.0.0.i = phi i64 [ %i.da, %_ZN4core5slice4sort6stable5merge5merge17ha6089b8c7209ae34E.exit ], [ %i.bm, %bb.u ] ; 2 uses
  %i.dh = icmp ugt i64 %i.av, 1
  br i1 %i.dh, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.di = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dj = lshr i64 %.sroa.018.0, 1
  %i.dk = add i64 %i.dj, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.dl = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dl, 0
  br i1 %.not31, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dm = or i64 %1, 1
  %i.dn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 1
  %i.dq = xor i32 %i.dp, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6c1755e8b3ef913aE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3231
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17hcdb394ae7d3963e7E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
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

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h386cad7f352079b6E.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_ZN4core5slice4sort6stable5drift10create_run17h386cad7f352079b6E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h386cad7f352079b6E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread95, %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i8, ptr %i.q, align 4, !alias.scope !3277, !noalias !3278, !noundef !11 ; 3 uses
  %.val11.i = load i8, ptr %i.o, align 4, !alias.scope !3277, !noalias !3278, !noundef !11
  %i.r = icmp ult i8 %.val10.i, %.val11.i         ; 2 uses
  %.not71 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.k
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not71, label %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread95, label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader49, %bb.l
  %.val9.i = phi i8 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader49 ]
  %.sroa.01.0.i.i54 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader49 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i54
  %.val8.i = load i8, ptr %i.s, align 4, !alias.scope !3277, !noalias !3278, !noundef !11 ; 2 uses
  %i.t = icmp ult i8 %.val8.i, %.val9.i
  br i1 %i.t, label %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i54, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i, label %.lr.ph

.lr.ph58:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i8 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i57 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i57
  %.val.i = load i8, ptr %i.v, align 4, !alias.scope !3277, !noalias !3278, !noundef !11 ; 2 uses
  %i.w = icmp ult i8 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i

bb.m:                                             ; preds = %.lr.ph58
  %i.x = add nuw i64 %.sroa.01.1.i.i57, 1         ; 2 uses
  %exitcond78.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond78.not, label %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i, label %.lr.ph58

_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph58
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i57, %.lr.ph58 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i54, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread95: ; preds = %.preheader
  br i1 %.not5.i97, label %bb.i, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i92, label %bb.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit"

bb.n:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i
  br i1 %i.r, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit"

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.01.0)
  %i.z = shl i64 %.sroa.0.0.i39, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h386cad7f352079b6E.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8a6878e8cf5dd85dE(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3259
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h386cad7f352079b6E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit", label %.lr.ph.i.i37.epil.preheader

.lr.ph.i.i37.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bh, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod123 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.ac = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ao, i64 %i.ac ; 3 uses
  %i.af = load i8, ptr %i.ad, align 4, !alias.scope !3279, !noalias !3280, !noundef !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !45, !alias.scope !3279, !noalias !3280, !noundef !11
  %i.ai = load i64, ptr %i.ae, align 4, !alias.scope !3281, !noalias !3282
  store i64 %i.ai, ptr %i.ad, align 4, !alias.scope !3279, !noalias !3280
  store i8 %i.af, ptr %i.ae, align 4, !alias.scope !3281, !noalias !3282
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !alias.scope !3281, !noalias !3282
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit": ; preds = %.lr.ph.i.i37.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread ], [ %.sroa.0.0.i.i93100104, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i93100104, %.lr.ph.i.i37.epil.preheader ]
  %i.ak = shl i64 %.sroa.0.0.i.i4447, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h386cad7f352079b6E.exit

bb.q:                                             ; preds = %bb.n
  %i.am = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3283), !noalias !3278
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3284), !noalias !3278
  %.not15.i.i = icmp eq i64 %i.am, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread95, %bb.q
  %i.an = phi i64 [ %i.am, %bb.q ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread95 ] ; 4 uses
  %.sroa.0.0.i.i93100104 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hb677a8b5b649fed1E.exit.i.thread95 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i93100104 ; 3 uses
  %xtraiter = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.an, 1
end_hunk_4
begin_hunk_5_@_ZN4core5slice4sort6stable5drift4sort17hcdb394ae7d3963e7E:bb.a

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.an, 9223372036854775806
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bh, %.lr.ph.i.i37 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i37 ]
  %i.aq = xor i64 %.sroa.0.014.i.i, -1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.014.i.i ; 3 uses
  %i.as = getelementptr [8 x i8], ptr %i.ao, i64 %i.aq ; 3 uses
  %i.at = load i8, ptr %i.ar, align 4, !alias.scope !3279, !noalias !3280, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.av = load i32, ptr %i.au, align 4, !range !45, !alias.scope !3279, !noalias !3280, !noundef !11
  %i.aw = load i64, ptr %i.as, align 4, !alias.scope !3281, !noalias !3282
  store i64 %i.aw, ptr %i.ar, align 4, !alias.scope !3279, !noalias !3280
  store i8 %i.at, ptr %i.as, align 4, !alias.scope !3281, !noalias !3282
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.av, ptr %i.ax, align 4, !alias.scope !3281, !noalias !3282
  %i.ay = xor i64 %.sroa.0.014.i.i, -2
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ao, i64 %i.ay ; 3 uses
  %i.bc = load i8, ptr %i.ba, align 4, !alias.scope !3279, !noalias !3280, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !range !45, !alias.scope !3279, !noalias !3280, !noundef !11
  %i.bf = load i64, ptr %i.bb, align 4, !alias.scope !3281, !noalias !3282
  store i64 %i.bf, ptr %i.ba, align 4, !alias.scope !3279, !noalias !3280
  store i8 %i.bc, ptr %i.bb, align 4, !alias.scope !3281, !noalias !3282
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.be, ptr %i.bg, align 4, !alias.scope !3281, !noalias !3282
  %i.bh = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i37

_ZN4core5slice4sort6stable5drift10create_run17h386cad7f352079b6E.exit: ; preds = %bb.o, %bb.p, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.al, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd4d5622b92953923E.exit" ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bk = sub i64 %factor, %i.bi
  %i.bl = add i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph64, %_ZN4core5slice4sort6stable5drift13logical_merge17h4970c9375a2dc0caE.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.br, %_ZN4core5slice4sort6stable5drift13logical_merge17h4970c9375a2dc0caE.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4970c9375a2dc0caE.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h4970c9375a2dc0caE.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h4970c9375a2dc0caE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h4970c9375a2dc0caE.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !11 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.162, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.162 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.162
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl i64 %i.ca, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4970c9375a2dc0caE.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8a6878e8cf5dd85dE(ptr noalias noundef nonnull align 4 %i.cc, i64 noundef %i.by, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.cn, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3265
  br label %bb.v

bb.x:                                             ; preds = %bb.aa, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  %i.co = icmp eq i64 %i.by, 0
  %i.cp = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h28f1c48628ee0f66E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cq = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cq, label %_ZN4core5slice4sort6stable5merge5merge17h28f1c48628ee0f66E.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.cr, ptr %i.cc
  %i.cs = shl i64 %.sroa.0.0.i.i35, 3             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %..i, i64 %i.cs, i1 false), !alias.scope !3287
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.cu = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %bb.z ]
  %i.cv = phi ptr [ %i.dd, %.preheader.i ], [ %i.cr, %bb.z ]
  %.sroa.0.0.i26.i = phi ptr [ %i.cy, %.preheader.i ], [ %i.m, %bb.z ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -8 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -8 ; 2 uses
  %.val.i.i = load i8, ptr %i.cx, align 4, !alias.scope !3286, !noalias !3288, !noundef !11
  %.val10.i.i = load i8, ptr %i.cw, align 4, !alias.scope !3285, !noalias !3289, !noundef !11
  %i.cz = icmp ult i8 %.val.i.i, %.val10.i.i      ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cw, ptr %i.cx
  %i.da = load i64, ptr %..i.i, align 4, !alias.scope !3287, !noalias !3290
  store i64 %i.da, ptr %i.cy, align 4, !alias.scope !3285, !noalias !3289
  %i.db = xor i1 %i.cz, true
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = zext i1 %i.cz to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de ; 3 uses
  %i.dg = icmp eq ptr %i.dd, %i.cc
  %i.dh = icmp eq ptr %i.df, %2
  %or.cond.i.i = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h63694e9db7993279E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.di = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.cc, %bb.z ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cr, %bb.z ] ; 3 uses
  %i.dj = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %bb.z ] ; 3 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.02.i.i, align 4, !alias.scope !3285, !noalias !3291, !noundef !11
  %.val.i28.i = load i8, ptr %i.dj, align 4, !alias.scope !3286, !noalias !3292, !noundef !11
  %i.dk = icmp ult i8 %.sroa.0.0.val.i.i, %.val.i28.i ; 3 uses
  %i.dl = xor i1 %i.dk, true
  %spec.select.i.i = select i1 %i.dk, ptr %.sroa.0.02.i.i, ptr %i.dj
  %i.dm = load i64, ptr %spec.select.i.i, align 4, !alias.scope !3287, !noalias !3293
  store i64 %i.dm, ptr %i.di, align 4, !alias.scope !3285, !noalias !3291
  %i.dn = zext i1 %i.dl to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dk to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.ct
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i29.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i29.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h63694e9db7993279E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h63694e9db7993279E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dd, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !3287, !noalias !3294
  br label %_ZN4core5slice4sort6stable5merge5merge17h28f1c48628ee0f66E.exit

_ZN4core5slice4sort6stable5merge5merge17h28f1c48628ee0f66E.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h63694e9db7993279E.exit.i"
  %i.dx = shl i64 %i.ca, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h4970c9375a2dc0caE.exit

bb.aa:                                            ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.by
  %i.ea = or i64 %i.bz, 1
  %i.eb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8a6878e8cf5dd85dE(ptr noalias noundef nonnull align 4 %i.dz, i64 noundef %i.bz, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.ee, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3265
  br label %bb.x

_ZN4core5slice4sort6stable5drift13logical_merge17h4970c9375a2dc0caE.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17h28f1c48628ee0f66E.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_ZN4core5slice4sort6stable5merge5merge17h28f1c48628ee0f66E.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.br, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h8a6878e8cf5dd85dE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.eo, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3265
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable5drift4sort17hec9d0be5a8666350E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h4fc33b16f193c8cfE(i64 noundef %1)
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

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h39620bf8546a1038E.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_ZN4core5slice4sort6stable5drift10create_run17h39620bf8546a1038E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h39620bf8546a1038E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph89, label %._crit_edge

.lr.ph89:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw i64 %1, %.sroa.09.0              ; 14 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i, %bb.h
  br i1 %4, label %bb.n, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, 2
  br i1 %i.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b024c9693118cdfE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val15.i = load i32, ptr %i.q, align 8, !alias.scope !3312, !noalias !3313, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val17.i = load i32, ptr %i.r, align 8, !alias.scope !3312, !noalias !3313, !noundef !11
  %i.s = icmp eq i32 %.val15.i, 0
  %i.t = icmp eq i32 %.val17.i, 0
  %i.u = zext i1 %i.s to i8
  %.neg.i.i46 = sext i1 %i.t to i8
  %i.v = add nsw i8 %.neg.i.i46, %i.u
  switch i8 %i.v, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit49.preheader"
    i8 0, label %.split52
    i8 1, label %.split.preheader
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit49.preheader": ; preds = %.split52, %bb.k
  %.not96 = icmp eq i64 %i.n, 2
  br i1 %.not96, label %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i, label %.lr.ph83

default.unreachable:                              ; preds = %bb.k, %.lr.ph, %.lr.ph83, %.lr.ph.i.i, %.preheader.i
  unreachable

.split52:                                         ; preds = %bb.k
  %.val16.i = load i64, ptr %i.o, align 8, !alias.scope !3312, !noalias !3313
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val14.i = load i64, ptr %i.w, align 8, !alias.scope !3312, !noalias !3313
  %i.x = icmp slt i64 %.val14.i, %.val16.i
  br i1 %i.x, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit49.preheader", label %.split.preheader

.split.preheader:                                 ; preds = %.split52, %bb.k
  %.not95 = icmp eq i64 %i.n, 2
  br i1 %.not95, label %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45.thread54"
  %.val13.i = phi i32 [ %.val11.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45.thread54" ], [ %.val15.i, %.split.preheader ]
  %.sroa.01.0.i.i79 = phi i64 [ %i.ai, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45.thread54" ], [ 2, %.split.preheader ] ; 5 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i79 ; 2 uses
  %i.z = add i64 %.sroa.01.0.i.i79, -1            ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.n
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr i8, ptr %i.y, i64 24
  %.val11.i = load i32, ptr %i.ab, align 8, !alias.scope !3312, !noalias !3313, !noundef !11 ; 2 uses
  %i.ac = icmp eq i32 %.val11.i, 0
  %i.ad = icmp eq i32 %.val13.i, 0
  %i.ae = zext i1 %i.ac to i8
  %.neg.i.i42 = sext i1 %i.ad to i8
  %i.af = add nsw i8 %.neg.i.i42, %i.ae
  switch i8 %i.af, label %default.unreachable [
    i8 -1, label %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45"
    i8 1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45.thread54"
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45": ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %.val12.i = load i64, ptr %i.ag, align 8, !alias.scope !3312, !noalias !3313
  %.val10.i = load i64, ptr %i.y, align 8, !alias.scope !3312, !noalias !3313
  %i.ah = icmp slt i64 %.val10.i, %.val12.i
  br i1 %i.ah, label %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45.thread54"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45.thread54": ; preds = %.lr.ph, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45"
  %i.ai = add nuw i64 %.sroa.01.0.i.i79, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.n
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i, label %.lr.ph

.lr.ph83:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit49.preheader", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread"
  %.val9.i = phi i32 [ %.val7.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread" ], [ %.val15.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit49.preheader" ]
  %.sroa.01.1.i.i82 = phi i64 [ %i.at, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread" ], [ 2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit49.preheader" ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i82 ; 2 uses
  %i.ak = add i64 %.sroa.01.1.i.i82, -1           ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.n
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr i8, ptr %i.aj, i64 24
  %.val7.i = load i32, ptr %i.am, align 8, !alias.scope !3312, !noalias !3313, !noundef !11 ; 2 uses
  %i.an = icmp eq i32 %.val7.i, 0
  %i.ao = icmp eq i32 %.val9.i, 0
  %i.ap = zext i1 %i.an to i8
  %.neg.i.i = sext i1 %i.ao to i8
  %i.aq = add nsw i8 %.neg.i.i, %i.ap
  switch i8 %i.aq, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread"
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit"
    i8 1, label %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit": ; preds = %.lr.ph83
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.ak
  %.val8.i = load i64, ptr %i.ar, align 8, !alias.scope !3312, !noalias !3313
  %.val.i = load i64, ptr %i.aj, align 8, !alias.scope !3312, !noalias !3313
  %i.as = icmp slt i64 %.val.i, %.val8.i
  br i1 %i.as, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread", label %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread": ; preds = %.lr.ph83, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit"
  %i.at = add nuw i64 %.sroa.01.1.i.i82, 1        ; 2 uses
  %exitcond105.not = icmp eq i64 %i.at, %i.n
  br i1 %exitcond105.not, label %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i, label %.lr.ph83

_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i: ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45.thread54", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45", %.lr.ph, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit", %.lr.ph83, %.split.preheader, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit49.preheader"
  %.sroa.3.0.i.i = phi i1 [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit49.preheader" ], [ false, %.split.preheader ], [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread" ], [ true, %.lr.ph83 ], [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit" ], [ false, %.lr.ph ], [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45" ], [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45.thread54" ]
  %.sroa.0.0.i.i = phi i64 [ 2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit49.preheader" ], [ 2, %.split.preheader ], [ %i.n, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread" ], [ %.sroa.01.1.i.i82, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit" ], [ %.sroa.01.1.i.i82, %.lr.ph83 ], [ %i.n, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45.thread54" ], [ %.sroa.01.0.i.i79, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit45" ], [ %.sroa.01.0.i.i79, %.lr.ph ] ; 7 uses
  %i.au = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.au)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.l

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h5836bdd5e78a75afE.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8b024c9693118cdfE.exit"

bb.m:                                             ; preds = %bb.i
end_hunk_5
begin_hunk_6_@_ZN4core5slice4sort6stable5drift4sort17hec9d0be5a8666350E:bb.a
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

bb.q:                                             ; preds = %.lr.ph89, %_ZN4core5slice4sort6stable5drift13logical_merge17h7be8ea839089572dE.exit
  %.sroa.02.188 = phi i64 [ %.sroa.02.0, %.lr.ph89 ], [ %i.bq, %_ZN4core5slice4sort6stable5drift13logical_merge17h7be8ea839089572dE.exit ] ; 2 uses
  %.sroa.023.187 = phi i64 [ %.sroa.023.0, %.lr.ph89 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7be8ea839089572dE.exit ] ; 4 uses
  %i.bq = add i64 %.sroa.02.188, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h7be8ea839089572dE.exit, %bb.q, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.187, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7be8ea839089572dE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.188, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h7be8ea839089572dE.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !11 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 8 uses
  %i.by = lshr i64 %.sroa.023.187, 1              ; 6 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 4 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ca ; 6 uses
  %i.cc = icmp ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.187 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.187
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl i64 %i.bz, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7be8ea839089572dE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h593689e23a0f092aE(ptr noalias noundef nonnull align 8 %i.cb, i64 noundef %i.bx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3300
  br label %bb.u

bb.w:                                             ; preds = %bb.z, %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3315)
  %i.cn = icmp eq i64 %i.bx, 0
  %i.co = icmp eq i64 %i.by, 0
  %or.cond.i = or i1 %i.co, %i.cn
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h11516758e9fb2dc4E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.by, i64 range(i64 0, -9223372036854775808) %i.bx) ; 2 uses
  %i.cp = icmp ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cp, label %_ZN4core5slice4sort6stable5merge5merge17h11516758e9fb2dc4E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bx, %i.by  ; 2 uses
  %..i = select i1 %.not.i36, ptr %i.cq, ptr %i.cb
  %i.cr = shl i64 %.sroa.0.0.i.i35, 5             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %..i, i64 %i.cr, i1 false), !alias.scope !3316
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"
  %i.ct = phi ptr [ %i.dk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i" ], [ %i.cs, %bb.y ] ; 2 uses
  %i.cu = phi ptr [ %i.di, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i" ], [ %i.cq, %bb.y ] ; 2 uses
  %.sroa.0.0.i26.i = phi ptr [ %i.cx, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i" ], [ %i.m, %bb.y ]
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -32 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 -32 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i, i64 -32 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ct, i64 -8
  %.val10.i.i = load i32, ptr %i.cy, align 8, !alias.scope !3315, !noalias !3317, !noundef !11
  %i.cz = getelementptr i8, ptr %i.cu, i64 -8
  %.val12.i.i = load i32, ptr %i.cz, align 8, !alias.scope !3314, !noalias !3318, !noundef !11
  %i.da = icmp eq i32 %.val10.i.i, 0
  %i.db = icmp eq i32 %.val12.i.i, 0
  %i.dc = zext i1 %i.da to i8
  %.neg.i.i.i.i = sext i1 %i.db to i8
  %i.dd = add nsw i8 %.neg.i.i.i.i, %i.dc
  switch i8 %i.dd, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i"
    i8 1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread5.i.i"
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread5.i.i": ; preds = %.preheader.i
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i": ; preds = %.preheader.i
  %.val11.i.i = load i64, ptr %i.cv, align 8, !alias.scope !3314, !noalias !3318
  %.val.i.i = load i64, ptr %i.cw, align 8, !alias.scope !3315, !noalias !3317
  %i.de = icmp slt i64 %.val.i.i, %.val11.i.i
  %cond.fr.i.i = freeze i1 %i.de                  ; 2 uses
  %spec.select.i.i = select i1 %cond.fr.i.i, ptr %i.cv, ptr %i.cw
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread5.i.i", %.preheader.i
  %.sroa.0.0.i.i3.i.i = phi i1 [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread5.i.i" ], [ %cond.fr.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i" ], [ true, %.preheader.i ] ; 2 uses
  %i.df = phi ptr [ %i.cw, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread5.i.i" ], [ %spec.select.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i.i" ], [ %i.cv, %.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 32, i1 false), !alias.scope !3316, !noalias !3319
  %i.dg = xor i1 %.sroa.0.0.i.i3.i.i, true
  %i.dh = zext i1 %i.dg to i64
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.dh ; 3 uses
  %i.dj = zext i1 %.sroa.0.0.i.i3.i.i to i64
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.dj ; 3 uses
  %i.dl = icmp eq ptr %i.di, %i.cb
  %i.dm = icmp eq ptr %i.dk, %2
  %or.cond.i.i = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb230c993768cb462E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i"
  %i.dn = phi ptr [ %i.dz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i" ], [ %i.cb, %bb.y ] ; 2 uses
  %.sroa.0.07.i.i = phi ptr [ %i.dy, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i" ], [ %i.cq, %bb.y ] ; 5 uses
  %i.do = phi ptr [ %i.dx, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i" ], [ %2, %bb.y ] ; 4 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.07.i.i, i64 24
  %.sroa.0.0.val6.i.i = load i32, ptr %i.dp, align 8, !alias.scope !3314, !noalias !3320, !noundef !11
  %i.dq = getelementptr i8, ptr %i.do, i64 24
  %.val7.i.i = load i32, ptr %i.dq, align 8, !alias.scope !3315, !noalias !3321, !noundef !11
  %i.dr = icmp eq i32 %.sroa.0.0.val6.i.i, 0
  %i.ds = icmp eq i32 %.val7.i.i, 0
  %i.dt = zext i1 %i.dr to i8
  %.neg.i.i.i29.i = sext i1 %i.ds to i8
  %i.du = add nsw i8 %.neg.i.i.i29.i, %i.dt
  switch i8 %i.du, label %default.unreachable [
    i8 -1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i"
    i8 0, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i32.i"
    i8 1, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread3.i.i"
  ]

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread3.i.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i32.i", %.lr.ph.i.i
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i32.i": ; preds = %.lr.ph.i.i
  %.val.i33.i = load i64, ptr %i.do, align 8, !alias.scope !3315, !noalias !3321
  %.sroa.0.0.val.i.i = load i64, ptr %.sroa.0.07.i.i, align 8, !alias.scope !3314, !noalias !3320
  %i.dv = icmp slt i64 %.sroa.0.0.val.i.i, %.val.i33.i
  br i1 %i.dv, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i", label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread3.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i32.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread3.i.i", %.lr.ph.i.i
  %i.dw = phi i64 [ 0, %.lr.ph.i.i ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i32.i" ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread3.i.i" ]
  %.sroa.0.0.i.i2.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i32.i" ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread3.i.i" ]
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.07.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.i32.i" ], [ %i.do, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread3.i.i" ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !3316, !noalias !3322
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.07.i.i, i64 %.sroa.0.0.i.i2.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 2 uses
  %i.ea = icmp ne ptr %i.dx, %i.cs
  %i.eb = icmp ne ptr %i.dy, %i.m
  %or.cond.i31.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i31.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb230c993768cb462E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb230c993768cb462E.exit.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i"
  %.sroa.13.1.i = phi ptr [ %i.di, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i" ], [ %i.dz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i" ]
  %.sroa.7.0.i = phi ptr [ %i.dk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i" ], [ %i.cs, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i" ]
  %.sroa.0.1.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i.i" ], [ %i.dx, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17had3f9a9c6513ef21E.exit.thread.i30.i" ] ; 2 uses
  %i.ec = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ed = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ee = sub nuw i64 %i.ec, %i.ed
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ee, i1 false), !alias.scope !3316, !noalias !3323
  br label %_ZN4core5slice4sort6stable5merge5merge17h11516758e9fb2dc4E.exit

_ZN4core5slice4sort6stable5merge5merge17h11516758e9fb2dc4E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb230c993768cb462E.exit.i"
  %i.ef = shl i64 %i.bz, 1
  %i.eg = or disjoint i64 %i.ef, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7be8ea839089572dE.exit

bb.z:                                             ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.bx
  %i.ei = or i64 %i.by, 1
  %i.ej = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ei, i1 true)
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 1
  %i.em = xor i32 %i.el, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h593689e23a0f092aE(ptr noalias noundef nonnull align 8 %i.eh, i64 noundef %i.by, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.em, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3300
  br label %bb.w

_ZN4core5slice4sort6stable5drift13logical_merge17h7be8ea839089572dE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h11516758e9fb2dc4E.exit
  %.sroa.0.0.i = phi i64 [ %i.eg, %_ZN4core5slice4sort6stable5merge5merge17h11516758e9fb2dc4E.exit ], [ %i.ch, %bb.t ] ; 2 uses
  %i.en = icmp ugt i64 %i.bq, 1
  br i1 %i.en, label %bb.q, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eo = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ep = lshr i64 %.sroa.018.0, 1
  %i.eq = add i64 %i.ep, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.er = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.er, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.es = or i64 %1, 1
  %i.et = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h593689e23a0f092aE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3300
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h01acbc6901c9c829E(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(4) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph194 = phi ptr [ %i.gz, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.17.0.ph193 = phi i64 [ %i.ge, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.027.0.ph192 = phi i32 [ %i.ca, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.030.0.ph191 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph194 to i64
  %.not = icmp eq ptr %.sroa.030.0.ph191, null
  %i.e = icmp eq i32 %.sroa.027.0.ph192, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph545

bb.b:                                             ; preds = %bb.ax
  %i.f = icmp eq i32 %i.ca, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph545

.outer._crit_edge:                                ; preds = %.outer, %bb.ax, %bb.a
  %.sroa.0.0.ph.lcssa184 = phi ptr [ %.sroa.0.0.ph194, %bb.ax ], [ %0, %bb.a ], [ %i.gz, %.outer ] ; 11 uses
  %.sroa.17.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.ax ], [ %1, %bb.a ], [ %i.ge, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3383)
  call void @llvm.experimental.noalias.scope.decl(metadata !3384)
  %i.g = icmp samesign ult i64 %.sroa.17.0.lcssa, 2
  br i1 %i.g, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h0317d08eb1c47f00E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.17.0.lcssa, 16
  %i.i = icmp ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.17.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.17.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.17.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.17.0.lcssa ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h44d58ac9a35f4dd7E(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa184, ptr noundef nonnull align 4 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa184, i64 %i.j
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h44d58ac9a35f4dd7E(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h853855866ff54958E(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa184, ptr noundef nonnull align 4 %2)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa184, i64 %i.j
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h853855866ff54958E(ptr noundef %i.q, ptr noundef %i.r)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.s = load i32, ptr %.sroa.0.0.ph.lcssa184, align 4, !alias.scope !3383, !noalias !3384
  store i32 %i.s, ptr %2, align 4, !alias.scope !3384, !noalias !3383
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa184, i64 %i.j
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.v = load i32, ptr %i.t, align 4, !alias.scope !3383, !noalias !3384
  store i32 %i.v, ptr %i.u, align 4, !alias.scope !3384, !noalias !3383
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 6 uses
  %i.w = sub nuw nsw i64 %.sroa.17.0.lcssa, %i.j  ; 2 uses
  %i.x = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.x, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.i, %bb.j
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa184, i64 %i.j
  %i.z = getelementptr [4 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.aa = icmp samesign ult i64 %.sroa.0.0.i, %i.w
  br i1 %i.aa, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.111.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.113.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i ], [ %.sroa.08.111.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.012.1.i = phi i64 [ %.sroa.08.113.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.08.012.1.i
  %.idx575 = shl nuw nsw i64 %.sroa.08.012.1.i, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx575 ; 3 uses
  %i.ad = load i32, ptr %i.ab, align 4, !alias.scope !3383, !noalias !3384 ; 4 uses
  store i32 %i.ad, ptr %i.ac, align 4, !alias.scope !3384, !noalias !3383
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %.val9.i.cast.1.i = bitcast i32 %i.ad to float  ; 4 uses
  %.val10.i.1.i = load float, ptr %i.ae, align 4, !alias.scope !3384, !noalias !3383, !noundef !11 ; 3 uses
  %brmerge.not.i.i32.1.i = fcmp uno float %.val10.i.1.i, %.val9.i.cast.1.i
  br i1 %brmerge.not.i.i32.1.i, label %.noexc36.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i33.1.i", !prof !42

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i33.1.i": ; preds = %.lr.ph.1.i
  %.mux.i.i34.1.i = fcmp ogt float %.val10.i.1.i, %.val9.i.cast.1.i
  br i1 %.mux.i.i34.1.i, label %.preheader.1.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i

.preheader.1.i.preheader:                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i33.1.i"
  store float %.val10.i.1.i, ptr %i.ac, align 4, !alias.scope !3384, !noalias !3383
  %i.af = icmp eq i64 %.sroa.08.012.1.i, 1
  br i1 %i.af, label %._crit_edge556, label %.lr.ph555

.preheader.1.i:                                   ; preds = %bb.k
  store float %.val8.i.1.i, ptr %.sroa.0.0.i35.1.i554, align 4, !alias.scope !3384, !noalias !3383
  %i.ag = icmp eq ptr %i.ah, %i.z
  br i1 %i.ag, label %._crit_edge556, label %.lr.ph555

.lr.ph555:                                        ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i35.1.i554 = phi ptr [ %i.ah, %.preheader.1.i ], [ %i.ae, %.preheader.1.i.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.0.i35.1.i554, i64 -4 ; 3 uses
  %.val8.i.1.i = load float, ptr %i.ah, align 4, !alias.scope !3384, !noalias !3383, !noundef !11 ; 3 uses
  %brmerge.not.i11.i.1.i = fcmp uno float %.val8.i.1.i, %.val9.i.cast.1.i
  br i1 %brmerge.not.i11.i.1.i, label %.loopexit22.i, label %bb.k, !prof !42

bb.k:                                             ; preds = %.lr.ph555
  %.mux.i12.i.1.i = fcmp ogt float %.val8.i.1.i, %.val9.i.cast.1.i
  br i1 %.mux.i12.i.1.i, label %.preheader.1.i, label %._crit_edge556

._crit_edge556:                                   ; preds = %.preheader.1.i, %bb.k, %.preheader.1.i.preheader
  %.sroa.0.0.i35.lcssa.1.i = phi ptr [ %i.z, %.preheader.1.i.preheader ], [ %i.z, %.preheader.1.i ], [ %.sroa.0.0.i35.1.i554, %bb.k ]
  store i32 %i.ad, ptr %.sroa.0.0.i35.lcssa.1.i, align 4, !alias.scope !3384, !noalias !3385
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i: ; preds = %._crit_edge556, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i33.1.i"
  %i.ai = icmp samesign ult i64 %.sroa.08.113.1.i, %i.w ; 2 uses
  %i.aj = zext i1 %i.ai to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.113.1.i, %i.aj
  br i1 %i.ai, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3386)
  %i.ak = add nsw i64 %.sroa.17.0.lcssa, -1       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.ph.lcssa184, i64 %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.z, i64 -4
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %.sroa.08.111.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i"
  %i.ao = getelementptr i8, ptr %i.bd, i64 4      ; 2 uses
  %i.ap = getelementptr i8, ptr %i.bc, i64 4
  %i.aq = and i64 %.sroa.17.0.lcssa, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i", %.loopexit.1.i
  %.sroa.0.020.i.i = phi ptr [ %i.au, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %.sroa.0.0.ph.lcssa184, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.019.i.i = phi i64 [ %i.as, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ 0, %.loopexit.1.i ]
  %.sroa.06.018.i.i = phi ptr [ %i.ax, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.017.i.i = phi ptr [ %i.az, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %i.z, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.016.i.i = phi ptr [ %i.bd, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %i.an, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.015.i.i = phi ptr [ %i.bc, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %i.am, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.014.i.i = phi ptr [ %i.be, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.i" ], [ %i.al, %.loopexit.1.i ] ; 2 uses
  %i.as = add nuw nsw i64 %.sroa.04.019.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load float, ptr %.sroa.011.017.i.i, align 4, !alias.scope !3387, !noalias !3383, !noundef !11 ; 2 uses
  %.sroa.06.0.val.i.i = load float, ptr %.sroa.06.018.i.i, align 4, !alias.scope !3387, !noalias !3383, !noundef !11 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno float %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  br i1 %brmerge.not.i.i.i, label %.invoke.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i", !prof !42

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.i": ; preds = %.lr.ph.i.i
end_hunk_6
