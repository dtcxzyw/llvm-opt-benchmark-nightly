Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_lz_kernel?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ZL_Lz_decode:bb.a
  %i.y = call fastcc i32 @ZL_Lz_decode_sequence(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %.01418.i, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.h, label %ZL_Lz_decode_generic.exit

._crit_edge.loopexit.i:                           ; preds = %bb.h
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !22
  %.pre20.i = load i64, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.thread
  %i.z = phi i64 [ %.pre20.i, %._crit_edge.loopexit.i ], [ 0, %.thread ] ; 4 uses
  %i.aa = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ 0, %.thread ] ; 3 uses
  %.val.i = load ptr, ptr %2, align 8, !tbaa !24
  %i.ab = getelementptr i8, ptr %2, i64 8
  %.val17.i = load i64, ptr %i.ab, align 8, !tbaa !25 ; 3 uses
  %i.ac = icmp sgt i64 %i.z, %.val17.i
  br i1 %i.ac, label %ZL_Lz_decode_generic.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ad = icmp slt i64 %i.z, %.val17.i
  br i1 %i.ad, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nsw i64 %.val17.i, %i.z             ; 2 uses
  %i.af = add nsw i64 %i.ae, %i.aa                ; 2 uses
  %.not.i.i = icmp sgt i64 %i.af, %1
  br i1 %.not.i.i, label %ZL_Lz_decode_generic.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ah = getelementptr inbounds i8, ptr %.val.i, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr readonly align 1 %i.ah, i64 %i.ae, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.123.i.i = phi i64 [ %i.af, %bb.k ], [ %i.aa, %bb.i ]
  %.not27.i.i = icmp eq i64 %.123.i.i, %1
  %..i.i = select i1 %.not27.i.i, i32 0, i32 7
  br label %ZL_Lz_decode_generic.exit

ZL_Lz_decode_generic.exit:                        ; preds = %.lr.ph.i, %._crit_edge.i, %bb.j, %bb.l
  %.2.i = phi i32 [ 2, %._crit_edge.i ], [ 6, %bb.j ], [ %..i.i, %bb.l ], [ %i.y, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.m

bb.m:                                             ; preds = %ZL_Lz_decode_generic.exit, %bb.g, %bb.d
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.t, %bb.g ], [ %.2.i, %ZL_Lz_decode_generic.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ZL_Lz_decode_typed(ptr noundef %0, i64 noundef range(i64 0, 9223372036854644738) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_Lz_DecodeState, align 8  ; 14 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !49
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = add nsw i64 %i.g, -32
  store i64 %i.h, ptr %i.e, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = add nsw i64 %1, -64                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.m = phi i64 [ %i.ag, %bb.i ], [ 0, %bb.a ]   ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !27
  %i.p = icmp sgt i64 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !24
  %.not = icmp eq ptr %i.q, %i.r
  br i1 %.not, label %bb.c, label %ZL_Lz_decode_lastLiterals.exit

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.t = sub i64 %i.s, %i.n                       ; 4 uses
  %.not34 = icmp eq i64 %i.s, %i.n
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.u, i64 %i.t, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  store ptr %i.a, ptr %4, align 8, !tbaa !30
  store i64 %i.t, ptr %i.f, align 8, !tbaa !50
  store i64 0, ptr %i.d, align 8, !tbaa !29
  store i64 %i.t, ptr %i.e, align 8, !tbaa !27
  %i.v = icmp slt i64 %i.t, 0
  %i.w = load i64, ptr %i.c, align 8, !tbaa !31
  %.not35 = icmp sgt i64 %i.w, %i.k
  %brmerge = or i1 %.not35, %i.v
  br i1 %brmerge, label %bb.g, label %.thread64

.thread:                                          ; preds = %.lr.ph
  %i.x = load i64, ptr %i.c, align 8, !tbaa !31
  %.not3562 = icmp sgt i64 %i.x, %i.k
  br i1 %.not3562, label %bb.g, label %.thread64

.thread64:                                        ; preds = %bb.e, %.thread
  %i.y = call i32 %3(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4) #8, !callees !51 ; 2 uses
  %.not38 = icmp eq i32 %i.y, 0
  br i1 %.not38, label %bb.f, label %ZL_Lz_decode_lastLiterals.exit

bb.f:                                             ; preds = %.thread64
  %i.z = load i64, ptr %i.d, align 8, !tbaa !29
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !50
  %.not45 = icmp sgt i64 %i.z, %i.aa
  br i1 %.not45, label %ZL_Lz_decode_lastLiterals.exit, label %._crit_edge47

._crit_edge47:                                    ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.thread, %._crit_edge47
  %i.ab = phi i64 [ %.pre, %._crit_edge47 ], [ %i.m, %bb.e ], [ %i.m, %.thread ] ; 3 uses
  %i.ac = icmp slt i64 %i.ab, %i.j
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = call fastcc i32 @ZL_Lz_decode_sequence(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4, i64 noundef %i.ab, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %.thread43, label %ZL_Lz_decode_lastLiterals.exit

.thread43:                                        ; preds = %bb.h
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !32
  %i.af = add nsw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %.thread43, %bb.g
  %i.ag = phi i64 [ %i.af, %.thread43 ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %i.j
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre48 = load i64, ptr %i.c, align 8, !tbaa !31
  %.pre49 = load i64, ptr %i.d, align 8, !tbaa !29
  %.val40.pre = load i64, ptr %i.f, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.val40 = phi i64 [ %.val40.pre, %._crit_edge.loopexit ], [ %i.g, %bb.a ] ; 3 uses
  %i.ai = phi i64 [ %.pre49, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.aj = phi i64 [ %.pre48, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 3 uses
  %.val = load ptr, ptr %4, align 8, !tbaa !24
  %i.ak = icmp sgt i64 %i.ai, %.val40
  br i1 %i.ak, label %ZL_Lz_decode_lastLiterals.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.al = icmp slt i64 %i.ai, %.val40
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = sub nsw i64 %.val40, %i.ai              ; 2 uses
  %i.an = add nsw i64 %i.am, %i.aj                ; 2 uses
  %.not.i = icmp sgt i64 %i.an, %1
  br i1 %.not.i, label %ZL_Lz_decode_lastLiterals.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.aj
  %i.ap = getelementptr inbounds i8, ptr %.val, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr readonly align 1 %i.ap, i64 %i.am, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.123.i = phi i64 [ %i.an, %bb.l ], [ %i.aj, %bb.j ]
  %.not27.i = icmp eq i64 %.123.i, %1
  %..i = select i1 %.not27.i, i32 0, i32 7
  br label %ZL_Lz_decode_lastLiterals.exit

ZL_Lz_decode_lastLiterals.exit:                   ; preds = %.thread64, %bb.h, %bb.b, %bb.f, %bb.m, %bb.k, %._crit_edge
  %.5 = phi i32 [ %..i, %bb.m ], [ 2, %._crit_edge ], [ 6, %bb.k ], [ %i.y, %.thread64 ], [ 2, %bb.b ], [ 2, %bb.f ], [ %i.ad, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.5
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @ZL_Lz_decode_u16Loop(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = load ptr, ptr %2, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31
  %i.m = add nsw i64 %1, -64                      ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %scevgep = getelementptr i8, ptr %0, i64 16
  %3 = add i64 %i.a, 24
  %scevgep80 = getelementptr i8, ptr %0, i64 16
  %scevgep82 = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0101.i = phi i64 [ %i.l, %bb.a ], [ %i.ad, %.loopexit ] ; 11 uses
  %.096.i = phi i64 [ %i.o, %bb.a ], [ %i.ae, %.loopexit ] ; 5 uses
  %.093.i = phi i64 [ %i.s, %bb.a ], [ %i.fu, %.loopexit ] ; 7 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %i.h, i64 %.093.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !37   ; 2 uses
  %i.v = zext i16 %i.u to i64                     ; 10 uses
  %i.w = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.093.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !37   ; 4 uses
  %i.y = zext i16 %i.x to i64                     ; 5 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %i.f, i64 %.093.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !37  ; 4 uses
  %i.ab = zext i16 %i.aa to i64                   ; 3 uses
  %i.ac = add i64 %.0101.i, %i.v                  ; 5 uses
  %i.ad = add nsw i64 %i.ac, %i.y                 ; 6 uses
  %i.ae = add nsw i64 %.096.i, %i.v               ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %0, i64 %.0101.i ; 10 uses
  %i.ag = getelementptr inbounds i8, ptr %i.d, i64 %.096.i ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.af, ptr noundef nonnull align 1 dereferenceable(32) %i.ag, i64 32, i1 false)
  %i.ah = icmp ugt i16 %i.u, 32
  br i1 %i.ah, label %bb.c, label %.loopexit52, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp sgt i64 %i.ae, %i.q
  %i.aj = icmp sgt i64 %i.ad, %i.m
  %i.ak = select i1 %i.ai, i1 true, i1 %i.aj, !prof !38
  br i1 %i.ak, label %.critedge.i, label %.preheader51.preheader, !prof !38

.preheader51.preheader:                           ; preds = %bb.c
  %i.al = add nsw i64 %i.v, -33                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %xtraiter = and i64 %i.an, 7                    ; 3 uses
  %i.ao = icmp ult i64 %i.al, 224
  br i1 %i.ao, label %.preheader51.epil.preheader, label %.preheader51.preheader.new

.preheader51.preheader.new:                       ; preds = %.preheader51.preheader
  %unroll_iter = and i64 %i.an, 1152921504606846968
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51, %.preheader51.preheader.new
  %.090.i = phi i64 [ 32, %.preheader51.preheader.new ], [ %i.bm, %.preheader51 ] ; 10 uses
  %niter = phi i64 [ 0, %.preheader51.preheader.new ], [ %niter.next.7, %.preheader51 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %.090.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ap, ptr noundef nonnull align 1 dereferenceable(32) %i.aq, i64 32, i1 false)
  %i.ar = add nuw nsw i64 %.090.i, 32             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.as, ptr noundef nonnull align 1 dereferenceable(32) %i.at, i64 32, i1 false)
  %i.au = add nuw nsw i64 %.090.i, 64             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.av, ptr noundef nonnull align 1 dereferenceable(32) %i.aw, i64 32, i1 false)
  %i.ax = add nuw nsw i64 %.090.i, 96             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ay, ptr noundef nonnull align 1 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.ba = add nuw nsw i64 %.090.i, 128            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bb, ptr noundef nonnull align 1 dereferenceable(32) %i.bc, i64 32, i1 false)
  %i.bd = add nuw nsw i64 %.090.i, 160            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.be, ptr noundef nonnull align 1 dereferenceable(32) %i.bf, i64 32, i1 false)
  %i.bg = add nuw nsw i64 %.090.i, 192            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bh, ptr noundef nonnull align 1 dereferenceable(32) %i.bi, i64 32, i1 false)
  %i.bj = add nuw nsw i64 %.090.i, 224            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bk, ptr noundef nonnull align 1 dereferenceable(32) %i.bl, i64 32, i1 false)
  %i.bm = add nuw nsw i64 %.090.i, 256            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.loopexit52.loopexit.unr-lcssa, label %.preheader51, !llvm.loop !0

.loopexit52.loopexit.unr-lcssa:                   ; preds = %.preheader51
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit52, label %.preheader51.epil.preheader

.preheader51.epil.preheader:                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.preheader
  %.090.i.epil.init = phi i64 [ 32, %.preheader51.preheader ], [ %i.bm, %.loopexit52.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.preheader51.epil

.preheader51.epil:                                ; preds = %.preheader51.epil, %.preheader51.epil.preheader
  %.090.i.epil = phi i64 [ %i.bp, %.preheader51.epil ], [ %.090.i.epil.init, %.preheader51.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader51.epil ], [ 0, %.preheader51.epil.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 %.090.i.epil
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bn, ptr noundef nonnull align 1 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.bp = add nuw nsw i64 %.090.i.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit52, label %.preheader51.epil, !llvm.loop !52

.loopexit52:                                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.epil, %bb.b
  %i.bq = sub nsw i64 %i.ac, %i.ab                ; 3 uses
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %ZL_Lz_decode_fastLoop.exit, label %bb.d, !prof !38

bb.d:                                             ; preds = %.loopexit52
  %i.bs = icmp ult i16 %i.aa, %i.x
  br i1 %i.bs, label %bb.e, label %bb.k, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.bt = icmp sgt i64 %i.ad, %i.m
  br i1 %i.bt, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = getelementptr i8, ptr %0, i64 %i.ac     ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.y ; 2 uses
  %i.bx = icmp ult i16 %i.aa, 16
  br i1 %i.bx, label %bb.g, label %.preheader47

bb.g:                                             ; preds = %bb.f
  %i.by = icmp samesign ult i16 %i.aa, 8
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.ab
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !40
  %i.cb = load i8, ptr %i.bv, align 1, !tbaa !41
  store i8 %i.cb, ptr %i.bu, align 1, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !41
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !41
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !41
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.ab
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !40
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.bv, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.val = load i32, ptr %i.co, align 1
  store i32 %.val, ptr %i.cp, align 1
  %i.cq = sext i32 %i.ca to i64
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  br label %ZS_overlapCopy8.exit

bb.i:                                             ; preds = %bb.g
  %.val4 = load i64, ptr %i.bv, align 1
  store i64 %.val4, ptr %i.bu, align 1
  br label %ZS_overlapCopy8.exit

ZS_overlapCopy8.exit:                             ; preds = %bb.h, %bb.i
  %.2 = phi ptr [ %i.cs, %bb.h ], [ %i.bv, %bb.i ] ; 8 uses
  %.not12.i = icmp ugt i16 %i.x, 8
  br i1 %.not12.i, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %ZS_overlapCopy8.exit
  %i.ct = getelementptr i8, ptr %i.bu, i64 8      ; 8 uses
  %i.cu = add i64 %.0101.i, %i.a                  ; 2 uses
  %i.cv = add i64 %i.cu, %i.y
  %i.cw = add i64 %i.cv, %i.v
  %i.cx = add i64 %i.cu, %i.v
  %i.cy = add i64 %i.cx, 24
  %i.cz = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 %i.cy)
  %i.da = add i64 %i.cz, -9
  %i.db = add i64 %.0101.i, %i.a
  %i.dc = add i64 %i.db, %i.v
  %i.dd = sub i64 %i.da, %i.dc                    ; 2 uses
  %i.de = lshr i64 %i.dd, 4
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dd, 464
  br i1 %min.iters.check, label %.preheader.preheader109, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.dg = add i64 %.0101.i, %i.a
  %i.dh = add i64 %i.dg, %i.y
  %i.di = add i64 %i.dh, %i.v
  %i.dj = add i64 %3, %.0101.i
  %i.dk = add i64 %i.dj, %i.v
  %umax = tail call i64 @llvm.umax.i64(i64 %i.di, i64 %i.dk)
  %i.dl = add i64 %umax, -9
  %i.dm = add i64 %.0101.i, %i.a
  %i.dn = add i64 %i.dm, %i.v
  %i.do = sub i64 %i.dl, %i.dn
  %i.dp = and i64 %i.do, -16                      ; 3 uses
  %i.dq = add i64 %.0101.i, %i.dp
  %i.dr = add i64 %i.dq, %i.v                     ; 2 uses
  %scevgep79 = getelementptr i8, ptr %scevgep, i64 %i.dr ; 3 uses
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.ac ; 3 uses
  %scevgep83 = getelementptr i8, ptr %scevgep82, i64 %i.dr ; 3 uses
  %scevgep84 = getelementptr i8, ptr %.2, i64 8   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %.2, i64 16  ; 3 uses
  %scevgep86 = getelementptr i8, ptr %scevgep85, i64 %i.dp ; 2 uses
  %scevgep87 = getelementptr i8, ptr %.2, i64 24
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.dp ; 2 uses
  %bound0 = icmp ult ptr %i.ct, %scevgep83
  %bound1 = icmp ult ptr %scevgep81, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %i.ct, %scevgep86
  %bound190 = icmp ult ptr %scevgep84, %scevgep79
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ult ptr %i.ct, %scevgep88
  %bound193 = icmp ult ptr %scevgep85, %scevgep79
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  %bound096 = icmp ult ptr %scevgep81, %scevgep86
  %bound197 = icmp ult ptr %scevgep84, %scevgep83
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %scevgep81, %scevgep88
  %bound1101 = icmp ult ptr %scevgep85, %scevgep83
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  br i1 %conflict.rdx103, label %.preheader.preheader109, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, 2305843009213693950     ; 3 uses
  %i.ds = shl i64 %n.vec, 4                       ; 2 uses
  %i.dt = getelementptr i8, ptr %.2, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.ct, i64 %i.ds
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = shl i64 %index, 4                       ; 3 uses
  %i.dw = or disjoint i64 %i.dv, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.2, i64 %i.dv
  %next.gep104 = getelementptr i8, ptr %.2, i64 %i.dw
  %next.gep105 = getelementptr i8, ptr %i.ct, i64 %i.dv
  %next.gep106 = getelementptr i8, ptr %i.ct, i64 %i.dw
  %i.dx = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep104, i64 8
  %wide.load = load <2 x i64>, ptr %i.dx, align 1
  %wide.load107 = load <2 x i64>, ptr %i.dy, align 1
  store <2 x i64> %wide.load, ptr %next.gep105, align 1
  store <2 x i64> %wide.load107, ptr %next.gep106, align 1
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader109

.preheader.preheader109:                          ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.2.pn.ph = phi ptr [ %.2, %vector.memcheck ], [ %.2, %.preheader.preheader ], [ %i.dt, %middle.block ]
  %.1.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.preheader.preheader ], [ %i.du, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader109, %.preheader
  %.2.pn = phi ptr [ %i.ec, %.preheader ], [ %.2.pn.ph, %.preheader.preheader109 ] ; 2 uses
  %.1 = phi ptr [ %i.ee, %.preheader ], [ %.1.ph, %.preheader.preheader109 ] ; 3 uses
  %.136 = getelementptr inbounds nuw i8, ptr %.2.pn, i64 8
  %i.ea = load i64, ptr %.136, align 1
  store i64 %i.ea, ptr %.1, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.2.pn, i64 16 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 1
  store i64 %i.ed, ptr %i.eb, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.ef = icmp ult ptr %i.ee, %i.bw
  br i1 %i.ef, label %.preheader, label %.loopexit, !llvm.loop !54

.preheader47:                                     ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bu, ptr noundef nonnull align 1 dereferenceable(16) %i.bv, i64 16, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.preheader47, %bb.j
  %.pn = phi ptr [ %i.ei, %bb.j ], [ %i.bv, %.preheader47 ] ; 2 uses
  %.0 = phi ptr [ %i.ej, %bb.j ], [ %i.eg, %.preheader47 ] ; 3 uses
  %.035 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0, ptr noundef nonnull align 1 dereferenceable(16) %.035, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eh, ptr noundef nonnull align 1 dereferenceable(16) %i.ei, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.bw
  br i1 %i.ek, label %bb.j, label %.loopexit, !llvm.loop !1

bb.k:                                             ; preds = %bb.d
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.el, ptr noundef nonnull align 1 dereferenceable(32) %i.em, i64 32, i1 false)
  %i.en = icmp ugt i16 %i.x, 32
  br i1 %i.en, label %bb.l, label %.loopexit, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.eo = icmp sgt i64 %i.ad, %i.m
  br i1 %i.eo, label %.critedge.i, label %.preheader49.preheader, !prof !38

.preheader49.preheader:                           ; preds = %bb.l
  %i.ep = add nsw i64 %i.y, -33                   ; 2 uses
  %i.eq = lshr i64 %i.ep, 5
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %xtraiter113 = and i64 %i.er, 7                 ; 3 uses
  %i.es = icmp ult i64 %i.ep, 224
  br i1 %i.es, label %.preheader49.epil.preheader, label %.preheader49.preheader.new

.preheader49.preheader.new:                       ; preds = %.preheader49.preheader
  %unroll_iter117 = and i64 %i.er, 1152921504606846968
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49, %.preheader49.preheader.new
  %.0.i = phi i64 [ 32, %.preheader49.preheader.new ], [ %i.fq, %.preheader49 ] ; 10 uses
  %niter118 = phi i64 [ 0, %.preheader49.preheader.new ], [ %niter118.next.7, %.preheader49 ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 %.0.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.et, ptr noundef nonnull align 1 dereferenceable(32) %i.eu, i64 32, i1 false)
  %i.ev = add nuw nsw i64 %.0.i, 32               ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ev
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ew, ptr noundef nonnull align 1 dereferenceable(32) %i.ex, i64 32, i1 false)
  %i.ey = add nuw nsw i64 %.0.i, 64               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ey
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ez, ptr noundef nonnull align 1 dereferenceable(32) %i.fa, i64 32, i1 false)
  %i.fb = add nuw nsw i64 %.0.i, 96               ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fc, ptr noundef nonnull align 1 dereferenceable(32) %i.fd, i64 32, i1 false)
  %i.fe = add nuw nsw i64 %.0.i, 128              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fe
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ff, ptr noundef nonnull align 1 dereferenceable(32) %i.fg, i64 32, i1 false)
  %i.fh = add nuw nsw i64 %.0.i, 160              ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fi, ptr noundef nonnull align 1 dereferenceable(32) %i.fj, i64 32, i1 false)
  %i.fk = add nuw nsw i64 %.0.i, 192              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fl, ptr noundef nonnull align 1 dereferenceable(32) %i.fm, i64 32, i1 false)
  %i.fn = add nuw nsw i64 %.0.i, 224              ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fo, ptr noundef nonnull align 1 dereferenceable(32) %i.fp, i64 32, i1 false)
  %i.fq = add nuw nsw i64 %.0.i, 256              ; 2 uses
  %niter118.next.7 = add i64 %niter118, 8         ; 2 uses
  %niter118.ncmp.7.not = icmp eq i64 %niter118.next.7, %unroll_iter117
  br i1 %niter118.ncmp.7.not, label %.loopexit.loopexit111.unr-lcssa, label %.preheader49, !llvm.loop !2

.loopexit.loopexit111.unr-lcssa:                  ; preds = %.preheader49
  %lcmp.mod115.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %.loopexit, label %.preheader49.epil.preheader

.preheader49.epil.preheader:                      ; preds = %.loopexit.loopexit111.unr-lcssa, %.preheader49.preheader
  %.0.i.epil.init = phi i64 [ 32, %.preheader49.preheader ], [ %i.fq, %.loopexit.loopexit111.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter113, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.preheader49.epil

.preheader49.epil:                                ; preds = %.preheader49.epil, %.preheader49.epil.preheader
  %.0.i.epil = phi i64 [ %i.ft, %.preheader49.epil ], [ %.0.i.epil.init, %.preheader49.epil.preheader ] ; 3 uses
  %epil.iter114 = phi i64 [ %epil.iter114.next, %.preheader49.epil ], [ 0, %.preheader49.epil.preheader ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.i.epil
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 %.0.i.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fr, ptr noundef nonnull align 1 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.ft = add nuw nsw i64 %.0.i.epil, 32
  %epil.iter114.next = add i64 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i64 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %.loopexit, label %.preheader49.epil, !llvm.loop !55

.loopexit:                                        ; preds = %.loopexit.loopexit111.unr-lcssa, %.preheader49.epil, %bb.j, %.preheader, %middle.block, %bb.k, %ZS_overlapCopy8.exit
  %i.fu = add nsw i64 %.093.i, 1                  ; 3 uses
  %.not.not.i = icmp sge i64 %i.fu, %i.c
  %.not.i = icmp sgt i64 %i.ad, %i.m
  %or.cond.i = select i1 %.not.not.i, i1 true, i1 %.not.i
  %.not115.i = icmp sgt i64 %i.ae, %i.q
  %or.cond116.i = select i1 %or.cond.i, i1 true, i1 %.not115.i
  br i1 %or.cond116.i, label %.critedge.i, label %bb.b, !llvm.loop !3

.critedge.i:                                      ; preds = %.loopexit, %bb.c, %bb.e, %bb.l
  %.1102.i62 = phi i64 [ %.0101.i, %bb.c ], [ %.0101.i, %bb.l ], [ %.0101.i, %bb.e ], [ %i.ad, %.loopexit ]
  %.197.i59 = phi i64 [ %.096.i, %bb.c ], [ %.096.i, %bb.l ], [ %.096.i, %bb.e ], [ %i.ae, %.loopexit ]
  %.194.i56 = phi i64 [ %.093.i, %bb.c ], [ %.093.i, %bb.l ], [ %.093.i, %bb.e ], [ %i.fu, %.loopexit ]
  store i64 %.194.i56, ptr %i.r, align 8, !tbaa !32
  store i64 %.1102.i62, ptr %i.k, align 8, !tbaa !31
  store i64 %.197.i59, ptr %i.n, align 8, !tbaa !29
  br label %ZL_Lz_decode_fastLoop.exit

ZL_Lz_decode_fastLoop.exit:                       ; preds = %.loopexit52, %.critedge.i
  %.5.i = phi i32 [ 0, %.critedge.i ], [ 4, %.loopexit52 ]
  ret i32 %.5.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @ZL_Lz_decode_u32Loop(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = load ptr, ptr %2, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31
  %i.m = add nsw i64 %1, -64                      ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %scevgep = getelementptr i8, ptr %0, i64 16
  %3 = add i64 %i.a, 24
  %scevgep81 = getelementptr i8, ptr %0, i64 16
  %scevgep83 = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0101.i = phi i64 [ %i.l, %bb.a ], [ %i.ad, %.loopexit ] ; 11 uses
  %.096.i = phi i64 [ %i.o, %bb.a ], [ %i.ae, %.loopexit ] ; 5 uses
  %.093.i = phi i64 [ %i.s, %bb.a ], [ %i.fu, %.loopexit ] ; 7 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %i.h, i64 %.093.i
  %i.u = load i16, ptr %i.t, align 2, !tbaa !37   ; 2 uses
  %i.v = zext i16 %i.u to i64                     ; 10 uses
  %i.w = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.093.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !37   ; 3 uses
  %i.y = zext i16 %i.x to i64                     ; 6 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.093.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !40  ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 4 uses
  %i.ac = add i64 %.0101.i, %i.v                  ; 5 uses
  %i.ad = add nsw i64 %i.ac, %i.y                 ; 6 uses
  %i.ae = add nsw i64 %.096.i, %i.v               ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %0, i64 %.0101.i ; 10 uses
  %i.ag = getelementptr inbounds i8, ptr %i.d, i64 %.096.i ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.af, ptr noundef nonnull align 1 dereferenceable(32) %i.ag, i64 32, i1 false)
  %i.ah = icmp ugt i16 %i.u, 32
  br i1 %i.ah, label %bb.c, label %.loopexit52, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp sgt i64 %i.ae, %i.q
  %i.aj = icmp sgt i64 %i.ad, %i.m
  %i.ak = select i1 %i.ai, i1 true, i1 %i.aj, !prof !38
  br i1 %i.ak, label %.critedge.i, label %.preheader51.preheader, !prof !38

.preheader51.preheader:                           ; preds = %bb.c
  %i.al = add nsw i64 %i.v, -33                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %xtraiter = and i64 %i.an, 7                    ; 3 uses
  %i.ao = icmp ult i64 %i.al, 224
  br i1 %i.ao, label %.preheader51.epil.preheader, label %.preheader51.preheader.new

.preheader51.preheader.new:                       ; preds = %.preheader51.preheader
  %unroll_iter = and i64 %i.an, 1152921504606846968
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51, %.preheader51.preheader.new
  %.090.i = phi i64 [ 32, %.preheader51.preheader.new ], [ %i.bm, %.preheader51 ] ; 10 uses
  %niter = phi i64 [ 0, %.preheader51.preheader.new ], [ %niter.next.7, %.preheader51 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %.090.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ap, ptr noundef nonnull align 1 dereferenceable(32) %i.aq, i64 32, i1 false)
  %i.ar = add nuw nsw i64 %.090.i, 32             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.as, ptr noundef nonnull align 1 dereferenceable(32) %i.at, i64 32, i1 false)
  %i.au = add nuw nsw i64 %.090.i, 64             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.av, ptr noundef nonnull align 1 dereferenceable(32) %i.aw, i64 32, i1 false)
  %i.ax = add nuw nsw i64 %.090.i, 96             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ay, ptr noundef nonnull align 1 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.ba = add nuw nsw i64 %.090.i, 128            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bb, ptr noundef nonnull align 1 dereferenceable(32) %i.bc, i64 32, i1 false)
  %i.bd = add nuw nsw i64 %.090.i, 160            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.be, ptr noundef nonnull align 1 dereferenceable(32) %i.bf, i64 32, i1 false)
  %i.bg = add nuw nsw i64 %.090.i, 192            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bh, ptr noundef nonnull align 1 dereferenceable(32) %i.bi, i64 32, i1 false)
  %i.bj = add nuw nsw i64 %.090.i, 224            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bk, ptr noundef nonnull align 1 dereferenceable(32) %i.bl, i64 32, i1 false)
  %i.bm = add nuw nsw i64 %.090.i, 256            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.loopexit52.loopexit.unr-lcssa, label %.preheader51, !llvm.loop !0

.loopexit52.loopexit.unr-lcssa:                   ; preds = %.preheader51
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit52, label %.preheader51.epil.preheader

.preheader51.epil.preheader:                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.preheader
  %.090.i.epil.init = phi i64 [ 32, %.preheader51.preheader ], [ %i.bm, %.loopexit52.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.preheader51.epil

.preheader51.epil:                                ; preds = %.preheader51.epil, %.preheader51.epil.preheader
  %.090.i.epil = phi i64 [ %i.bp, %.preheader51.epil ], [ %.090.i.epil.init, %.preheader51.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader51.epil ], [ 0, %.preheader51.epil.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 %.090.i.epil
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.090.i.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bn, ptr noundef nonnull align 1 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.bp = add nuw nsw i64 %.090.i.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit52, label %.preheader51.epil, !llvm.loop !56

.loopexit52:                                      ; preds = %.loopexit52.loopexit.unr-lcssa, %.preheader51.epil, %bb.b
  %i.bq = sub nsw i64 %i.ac, %i.ab                ; 3 uses
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %ZL_Lz_decode_fastLoop.exit, label %bb.d, !prof !38

bb.d:                                             ; preds = %.loopexit52
  %i.bs = icmp samesign ult i64 %i.ab, %i.y
  br i1 %i.bs, label %bb.e, label %bb.k, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.bt = icmp sgt i64 %i.ad, %i.m
  br i1 %i.bt, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = getelementptr i8, ptr %0, i64 %i.ac     ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.y ; 2 uses
  %i.bx = icmp ult i32 %i.aa, 16
  br i1 %i.bx, label %bb.g, label %.preheader47

bb.g:                                             ; preds = %bb.f
  %i.by = icmp samesign ult i32 %i.aa, 8
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.ab
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !40
  %i.cb = load i8, ptr %i.bv, align 1, !tbaa !41
  store i8 %i.cb, ptr %i.bu, align 1, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !41
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !41
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !41
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.ab
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !40
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.bv, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.val = load i32, ptr %i.co, align 1
  store i32 %.val, ptr %i.cp, align 1
  %i.cq = sext i32 %i.ca to i64
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  br label %ZS_overlapCopy8.exit

bb.i:                                             ; preds = %bb.g
  %.val4 = load i64, ptr %i.bv, align 1
  store i64 %.val4, ptr %i.bu, align 1
  br label %ZS_overlapCopy8.exit

ZS_overlapCopy8.exit:                             ; preds = %bb.h, %bb.i
  %.2 = phi ptr [ %i.cs, %bb.h ], [ %i.bv, %bb.i ] ; 8 uses
  %.not12.i = icmp ugt i16 %i.x, 8
  br i1 %.not12.i, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %ZS_overlapCopy8.exit
  %i.ct = getelementptr i8, ptr %i.bu, i64 8      ; 8 uses
  %i.cu = add i64 %.0101.i, %i.a                  ; 2 uses
  %i.cv = add i64 %i.cu, %i.y
  %i.cw = add i64 %i.cv, %i.v
  %i.cx = add i64 %i.cu, %i.v
  %i.cy = add i64 %i.cx, 24
  %i.cz = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 %i.cy)
  %i.da = add i64 %i.cz, -9
  %i.db = add i64 %.0101.i, %i.a
  %i.dc = add i64 %i.db, %i.v
  %i.dd = sub i64 %i.da, %i.dc                    ; 2 uses
  %i.de = lshr i64 %i.dd, 4
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dd, 464
  br i1 %min.iters.check, label %.preheader.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.dg = add i64 %.0101.i, %i.a
  %i.dh = add i64 %i.dg, %i.y
  %i.di = add i64 %i.dh, %i.v
  %i.dj = add i64 %3, %.0101.i
  %i.dk = add i64 %i.dj, %i.v
  %umax = tail call i64 @llvm.umax.i64(i64 %i.di, i64 %i.dk)
  %i.dl = add i64 %umax, -9
  %i.dm = add i64 %.0101.i, %i.a
  %i.dn = add i64 %i.dm, %i.v
  %i.do = sub i64 %i.dl, %i.dn
  %i.dp = and i64 %i.do, -16                      ; 3 uses
  %i.dq = add i64 %.0101.i, %i.dp
  %i.dr = add i64 %i.dq, %i.v                     ; 2 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.dr ; 3 uses
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ac ; 3 uses
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.dr ; 3 uses
  %scevgep85 = getelementptr i8, ptr %.2, i64 8   ; 2 uses
  %scevgep86 = getelementptr i8, ptr %.2, i64 16  ; 3 uses
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.dp ; 2 uses
  %scevgep88 = getelementptr i8, ptr %.2, i64 24
  %scevgep89 = getelementptr i8, ptr %scevgep88, i64 %i.dp ; 2 uses
  %bound0 = icmp ult ptr %i.ct, %scevgep84
  %bound1 = icmp ult ptr %scevgep82, %scevgep80
  %found.conflict = and i1 %bound0, %bound1
  %bound090 = icmp ult ptr %i.ct, %scevgep87
  %bound191 = icmp ult ptr %scevgep85, %scevgep80
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx = or i1 %found.conflict, %found.conflict92
  %bound093 = icmp ult ptr %i.ct, %scevgep89
  %bound194 = icmp ult ptr %scevgep86, %scevgep80
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx, %found.conflict95
  %bound097 = icmp ult ptr %scevgep82, %scevgep87
  %bound198 = icmp ult ptr %scevgep85, %scevgep84
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %conflict.rdx96, %found.conflict99
  %bound0101 = icmp ult ptr %scevgep82, %scevgep89
  %bound1102 = icmp ult ptr %scevgep86, %scevgep84
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx104 = or i1 %conflict.rdx100, %found.conflict103
  br i1 %conflict.rdx104, label %.preheader.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, 2305843009213693950     ; 3 uses
  %i.ds = shl i64 %n.vec, 4                       ; 2 uses
  %i.dt = getelementptr i8, ptr %.2, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.ct, i64 %i.ds
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = shl i64 %index, 4                       ; 3 uses
  %i.dw = or disjoint i64 %i.dv, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.2, i64 %i.dv
  %next.gep105 = getelementptr i8, ptr %.2, i64 %i.dw
  %next.gep106 = getelementptr i8, ptr %i.ct, i64 %i.dv
  %next.gep107 = getelementptr i8, ptr %i.ct, i64 %i.dw
  %i.dx = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep105, i64 8
  %wide.load = load <2 x i64>, ptr %i.dx, align 1
  %wide.load108 = load <2 x i64>, ptr %i.dy, align 1
  store <2 x i64> %wide.load, ptr %next.gep106, align 1
  store <2 x i64> %wide.load108, ptr %next.gep107, align 1
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader110

.preheader.preheader110:                          ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.2.pn.ph = phi ptr [ %.2, %vector.memcheck ], [ %.2, %.preheader.preheader ], [ %i.dt, %middle.block ]
  %.1.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.preheader.preheader ], [ %i.du, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader110, %.preheader
  %.2.pn = phi ptr [ %i.ec, %.preheader ], [ %.2.pn.ph, %.preheader.preheader110 ] ; 2 uses
  %.1 = phi ptr [ %i.ee, %.preheader ], [ %.1.ph, %.preheader.preheader110 ] ; 3 uses
  %.136 = getelementptr inbounds nuw i8, ptr %.2.pn, i64 8
  %i.ea = load i64, ptr %.136, align 1
  store i64 %i.ea, ptr %.1, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.2.pn, i64 16 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 1
  store i64 %i.ed, ptr %i.eb, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.ef = icmp ult ptr %i.ee, %i.bw
  br i1 %i.ef, label %.preheader, label %.loopexit, !llvm.loop !58

.preheader47:                                     ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bu, ptr noundef nonnull align 1 dereferenceable(16) %i.bv, i64 16, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.preheader47, %bb.j
  %.pn = phi ptr [ %i.ei, %bb.j ], [ %i.bv, %.preheader47 ] ; 2 uses
  %.0 = phi ptr [ %i.ej, %bb.j ], [ %i.eg, %.preheader47 ] ; 3 uses
  %.035 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0, ptr noundef nonnull align 1 dereferenceable(16) %.035, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eh, ptr noundef nonnull align 1 dereferenceable(16) %i.ei, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.bw
  br i1 %i.ek, label %bb.j, label %.loopexit, !llvm.loop !1

bb.k:                                             ; preds = %bb.d
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.el, ptr noundef nonnull align 1 dereferenceable(32) %i.em, i64 32, i1 false)
  %i.en = icmp ugt i16 %i.x, 32
  br i1 %i.en, label %bb.l, label %.loopexit, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.eo = icmp sgt i64 %i.ad, %i.m
  br i1 %i.eo, label %.critedge.i, label %.preheader49.preheader, !prof !38

.preheader49.preheader:                           ; preds = %bb.l
  %i.ep = add nsw i64 %i.y, -33                   ; 2 uses
  %i.eq = lshr i64 %i.ep, 5
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %xtraiter114 = and i64 %i.er, 7                 ; 3 uses
  %i.es = icmp ult i64 %i.ep, 224
  br i1 %i.es, label %.preheader49.epil.preheader, label %.preheader49.preheader.new

.preheader49.preheader.new:                       ; preds = %.preheader49.preheader
  %unroll_iter118 = and i64 %i.er, 1152921504606846968
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49, %.preheader49.preheader.new
  %.0.i = phi i64 [ 32, %.preheader49.preheader.new ], [ %i.fq, %.preheader49 ] ; 10 uses
  %niter119 = phi i64 [ 0, %.preheader49.preheader.new ], [ %niter119.next.7, %.preheader49 ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 %.0.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.et, ptr noundef nonnull align 1 dereferenceable(32) %i.eu, i64 32, i1 false)
  %i.ev = add nuw nsw i64 %.0.i, 32               ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ev
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ew, ptr noundef nonnull align 1 dereferenceable(32) %i.ex, i64 32, i1 false)
  %i.ey = add nuw nsw i64 %.0.i, 64               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ey
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ez, ptr noundef nonnull align 1 dereferenceable(32) %i.fa, i64 32, i1 false)
  %i.fb = add nuw nsw i64 %.0.i, 96               ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fc, ptr noundef nonnull align 1 dereferenceable(32) %i.fd, i64 32, i1 false)
  %i.fe = add nuw nsw i64 %.0.i, 128              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fe
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ff, ptr noundef nonnull align 1 dereferenceable(32) %i.fg, i64 32, i1 false)
  %i.fh = add nuw nsw i64 %.0.i, 160              ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fi, ptr noundef nonnull align 1 dereferenceable(32) %i.fj, i64 32, i1 false)
  %i.fk = add nuw nsw i64 %.0.i, 192              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fl, ptr noundef nonnull align 1 dereferenceable(32) %i.fm, i64 32, i1 false)
  %i.fn = add nuw nsw i64 %.0.i, 224              ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.fn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fo, ptr noundef nonnull align 1 dereferenceable(32) %i.fp, i64 32, i1 false)
  %i.fq = add nuw nsw i64 %.0.i, 256              ; 2 uses
  %niter119.next.7 = add i64 %niter119, 8         ; 2 uses
  %niter119.ncmp.7.not = icmp eq i64 %niter119.next.7, %unroll_iter118
  br i1 %niter119.ncmp.7.not, label %.loopexit.loopexit112.unr-lcssa, label %.preheader49, !llvm.loop !2

.loopexit.loopexit112.unr-lcssa:                  ; preds = %.preheader49
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %.loopexit, label %.preheader49.epil.preheader

.preheader49.epil.preheader:                      ; preds = %.loopexit.loopexit112.unr-lcssa, %.preheader49.preheader
  %.0.i.epil.init = phi i64 [ 32, %.preheader49.preheader ], [ %i.fq, %.loopexit.loopexit112.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %.preheader49.epil

.preheader49.epil:                                ; preds = %.preheader49.epil, %.preheader49.epil.preheader
  %.0.i.epil = phi i64 [ %i.ft, %.preheader49.epil ], [ %.0.i.epil.init, %.preheader49.epil.preheader ] ; 3 uses
  %epil.iter115 = phi i64 [ %epil.iter115.next, %.preheader49.epil ], [ 0, %.preheader49.epil.preheader ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.i.epil
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 %.0.i.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fr, ptr noundef nonnull align 1 dereferenceable(32) %i.fs, i64 32, i1 false)
  %i.ft = add nuw nsw i64 %.0.i.epil, 32
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %.loopexit, label %.preheader49.epil, !llvm.loop !59

.loopexit:                                        ; preds = %.loopexit.loopexit112.unr-lcssa, %.preheader49.epil, %bb.j, %.preheader, %middle.block, %bb.k, %ZS_overlapCopy8.exit
  %i.fu = add nsw i64 %.093.i, 1                  ; 3 uses
  %.not.not.i = icmp sge i64 %i.fu, %i.c
  %.not.i = icmp sgt i64 %i.ad, %i.m
  %or.cond.i = select i1 %.not.not.i, i1 true, i1 %.not.i
  %.not115.i = icmp sgt i64 %i.ae, %i.q
  %or.cond116.i = select i1 %or.cond.i, i1 true, i1 %.not115.i
  br i1 %or.cond116.i, label %.critedge.i, label %bb.b, !llvm.loop !3

.critedge.i:                                      ; preds = %.loopexit, %bb.c, %bb.e, %bb.l
  %.1102.i62 = phi i64 [ %.0101.i, %bb.c ], [ %.0101.i, %bb.l ], [ %.0101.i, %bb.e ], [ %i.ad, %.loopexit ]
  %.197.i59 = phi i64 [ %.096.i, %bb.c ], [ %.096.i, %bb.l ], [ %.096.i, %bb.e ], [ %i.ae, %.loopexit ]
  %.194.i56 = phi i64 [ %.093.i, %bb.c ], [ %.093.i, %bb.l ], [ %.093.i, %bb.e ], [ %i.fu, %.loopexit ]
  store i64 %.194.i56, ptr %i.r, align 8, !tbaa !32
  store i64 %.1102.i62, ptr %i.k, align 8, !tbaa !31
  store i64 %.197.i59, ptr %i.n, align 8, !tbaa !29
  br label %ZL_Lz_decode_fastLoop.exit

ZL_Lz_decode_fastLoop.exit:                       ; preds = %.loopexit52, %.critedge.i
  %.5.i = phi i32 [ 0, %.critedge.i ], [ 4, %.loopexit52 ]
  ret i32 %.5.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 6) i32 @ZL_Lz_decode_sequence(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
end_hunk_0
