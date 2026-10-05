Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_utf_at:bb.a
  %i.ap = icmp samesign ult i64 %indvars.iv.next.i.lcssa, %zext
  br i1 %i.ap, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %._crit_edge.thread82.i
  %.0.lcssa87.i = phi i32 [ %i.h, %._crit_edge.thread82.i ], [ %.lcssa136, %._crit_edge.i ] ; 4 uses
  %storemerge12.lcssa.wide.i7886.i = phi i32 [ 1, %._crit_edge.thread82.i ], [ %storemerge12.lcssa.wide.i.i, %._crit_edge.i ] ; 3 uses
  store i32 %.0.lcssa87.i, ptr %3, align 4, !tbaa !55
  %i.aq = zext nneg i32 %storemerge12.lcssa.wide.i7886.i to i64 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !55
  %.not.i.i = icmp ugt i32 %i.as, %.0.lcssa87.i
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.aq
  %i.au = load i32, ptr %i.at, align 4, !tbaa !55
  %i.av = icmp uge i32 %.0.lcssa87.i, %i.au
  %i.aw = add i32 %.0.lcssa87.i, -55296
  %or.cond.i.i = icmp ult i32 %i.aw, 2047
  %or.cond15.i.i = or i1 %or.cond.i.i, %i.av
  br i1 %or.cond15.i.i, label %bb.o, label %.lr.ph.preheader

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 65533, ptr %3, align 4, !tbaa !55
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.o, %bb.i, %bb.e, %bb.n
  %.023.i100 = phi i32 [ %storemerge12.lcssa.wide.i7886.i, %bb.n ], [ %storemerge12.lcssa.wide.i7886.i, %bb.o ], [ 1, %bb.i ], [ 1, %bb.e ], [ 1, %.lr.ph.preheader.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ] ; 2 uses
  %i.ax = icmp eq i32 %2, 0
  br i1 %i.ax, label %.loopexit.thread, label %.lr.ph128

.loopexit.thread:                                 ; preds = %nk_utf_decode.exit60, %.lr.ph.preheader
  %.074.lcssa = phi i32 [ %.023.i100, %.lr.ph.preheader ], [ %.023.i48, %nk_utf_decode.exit60 ]
  %.03173.lcssa = phi i32 [ 0, %.lr.ph.preheader ], [ %i.az, %nk_utf_decode.exit60 ]
  store i32 %.074.lcssa, ptr %4, align 4, !tbaa !55
  br label %bb.aa

.lr.ph128:                                        ; preds = %.lr.ph.preheader, %nk_utf_decode.exit60
  %.03272127 = phi i32 [ %i.ay, %nk_utf_decode.exit60 ], [ 0, %.lr.ph.preheader ]
  %.03173126 = phi i32 [ %i.az, %nk_utf_decode.exit60 ], [ 0, %.lr.ph.preheader ]
  %.074125 = phi i32 [ %.023.i48, %nk_utf_decode.exit60 ], [ %.023.i100, %.lr.ph.preheader ]
  %i.ay = add nuw nsw i32 %.03272127, 1           ; 5 uses
  %i.az = add nsw i32 %.074125, %.03173126        ; 8 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba ; 4 uses
  %i.bc = sub i32 %1, %i.az                       ; 2 uses
  %.not.i40 = icmp eq i32 %1, %i.az
  br i1 %.not.i40, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph128
  store i32 65533, ptr %3, align 4, !tbaa !55
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !56  ; 7 uses
  %i.be = icmp slt i8 %i.bd, -64
  br i1 %i.be, label %nk_utf_decode.exit60, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = icmp slt i8 %i.bd, 0
  br i1 %i.bf, label %bb.r, label %._crit_edge.thread82.i42

._crit_edge.thread82.i42:                         ; preds = %bb.q
  %i.bg = zext nneg i8 %i.bd to i32
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bh = icmp samesign ult i8 %i.bd, -32
  br i1 %i.bh, label %nk_utf_decode_byte.exit.i49, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = icmp samesign ult i8 %i.bd, -16
  br i1 %i.bi, label %nk_utf_decode_byte.exit.i49, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = and i8 %i.bd, -8
  %i.bk = icmp eq i8 %i.bj, -16
  br i1 %i.bk, label %nk_utf_decode_byte.exit.i49, label %nk_utf_decode.exit60

nk_utf_decode_byte.exit.i49:                      ; preds = %bb.t, %bb.s, %bb.r
  %storemerge12.lcssa.wide.i.i50 = phi i32 [ 4, %bb.t ], [ 3, %bb.s ], [ 2, %bb.r ] ; 3 uses
  %i.bl = phi i8 [ 7, %bb.t ], [ 15, %bb.s ], [ 31, %bb.r ]
  %i.bm = icmp sgt i32 %i.bc, 1
  br i1 %i.bm, label %.lr.ph.preheader.i51, label %.loopexit

.lr.ph.preheader.i51:                             ; preds = %nk_utf_decode_byte.exit.i49
  %i.bn = and i8 %i.bl, %i.bd
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = zext nneg i32 %i.bc to i64
  %zext86 = zext nneg i32 %storemerge12.lcssa.wide.i.i50 to i64
  %i.bq = add nsw i64 %i.bp, -2
  %i.br = add nsw i32 %storemerge12.lcssa.wide.i.i50, -2
  %i.bs = zext nneg i32 %i.br to i64
  %umin87 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bs) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !56  ; 2 uses
  %i.bv = icmp slt i8 %i.bu, -64
  br i1 %i.bv, label %bb.u, label %nk_utf_decode.exit60

bb.u:                                             ; preds = %.lr.ph.preheader.i51
  %i.bw = and i8 %i.bu, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bo, 6
  %i.bz = or disjoint i32 %i.by, %i.bx            ; 2 uses
  %exitcond88.not = icmp eq i64 %umin87, 0
  br i1 %exitcond88.not, label %._crit_edge.i59, label %.lr.ph.i52.1

.lr.ph.i52.1:                                     ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !56  ; 2 uses
  %i.cc = icmp slt i8 %i.cb, -64
  br i1 %i.cc, label %bb.v, label %nk_utf_decode.exit60

bb.v:                                             ; preds = %.lr.ph.i52.1
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.bz, 6
  %i.cg = or disjoint i32 %i.cf, %i.ce            ; 2 uses
  %exitcond88.not.1 = icmp eq i64 %umin87, 1
  br i1 %exitcond88.not.1, label %._crit_edge.i59, label %.lr.ph.i52.2

.lr.ph.i52.2:                                     ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !56  ; 2 uses
  %i.cj = icmp slt i8 %i.ci, -64
  br i1 %i.cj, label %bb.w, label %nk_utf_decode.exit60

bb.w:                                             ; preds = %.lr.ph.i52.2
  %i.ck = and i8 %i.ci, 63
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cg, 6
  %i.cn = or disjoint i32 %i.cm, %i.cl
  br label %._crit_edge.i59

._crit_edge.i59:                                  ; preds = %bb.w, %bb.v, %bb.u
  %.lcssa = phi i32 [ %i.bz, %bb.u ], [ %i.cg, %bb.v ], [ %i.cn, %bb.w ]
  %indvars.iv.next.i57.lcssa = phi i64 [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ]
  %i.co = icmp samesign ult i64 %indvars.iv.next.i57.lcssa, %zext86
  br i1 %i.co, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i59, %._crit_edge.thread82.i42
  %.0.lcssa87.i43 = phi i32 [ %i.bg, %._crit_edge.thread82.i42 ], [ %.lcssa, %._crit_edge.i59 ] ; 4 uses
  %storemerge12.lcssa.wide.i7886.i44 = phi i32 [ 1, %._crit_edge.thread82.i42 ], [ %storemerge12.lcssa.wide.i.i50, %._crit_edge.i59 ] ; 3 uses
  store i32 %.0.lcssa87.i43, ptr %3, align 4, !tbaa !55
  %i.cp = zext nneg i32 %storemerge12.lcssa.wide.i7886.i44 to i64 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !55
  %.not.i.i45 = icmp ugt i32 %i.cr, %.0.lcssa87.i43
  br i1 %.not.i.i45, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.cp
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !55
  %i.cu = icmp uge i32 %.0.lcssa87.i43, %i.ct
  %i.cv = add i32 %.0.lcssa87.i43, -55296
  %or.cond.i.i46 = icmp ult i32 %i.cv, 2047
  %or.cond15.i.i47 = or i1 %or.cond.i.i46, %i.cu
  br i1 %or.cond15.i.i47, label %bb.z, label %nk_utf_decode.exit60

bb.z:                                             ; preds = %bb.y, %bb.x
  store i32 65533, ptr %3, align 4, !tbaa !55
  br label %nk_utf_decode.exit60

nk_utf_decode.exit60:                             ; preds = %.lr.ph.preheader.i51, %.lr.ph.i52.1, %.lr.ph.i52.2, %bb.p, %bb.t, %bb.y, %bb.z
  %.023.i48 = phi i32 [ %storemerge12.lcssa.wide.i7886.i44, %bb.y ], [ 1, %bb.p ], [ 1, %bb.t ], [ %storemerge12.lcssa.wide.i7886.i44, %bb.z ], [ 1, %.lr.ph.preheader.i51 ], [ 2, %.lr.ph.i52.1 ], [ 3, %.lr.ph.i52.2 ] ; 2 uses
  %i.cw = icmp eq i32 %i.ay, %2
  br i1 %i.cw, label %.loopexit.thread, label %.lr.ph128, !llvm.loop !682

.loopexit:                                        ; preds = %nk_utf_decode_byte.exit.i49, %.lr.ph128, %._crit_edge.i59, %._crit_edge.i, %nk_utf_decode_byte.exit.i, %bb.d
  %.03267 = phi i32 [ 0, %nk_utf_decode_byte.exit.i ], [ 0, %bb.d ], [ 0, %._crit_edge.i ], [ %i.ay, %._crit_edge.i59 ], [ %i.ay, %.lr.ph128 ], [ %i.ay, %nk_utf_decode_byte.exit.i49 ]
  %.03165 = phi i32 [ 0, %nk_utf_decode_byte.exit.i ], [ 0, %bb.d ], [ 0, %._crit_edge.i ], [ %i.az, %._crit_edge.i59 ], [ %i.az, %.lr.ph128 ], [ %i.az, %nk_utf_decode_byte.exit.i49 ]
  %.not38 = icmp eq i32 %.03267, %2
  br i1 %.not38, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit.thread, %.loopexit
  %.03165110 = phi i32 [ %.03173.lcssa, %.loopexit.thread ], [ %.03165, %.loopexit ]
  %i.cx = sext i32 %.03165110 to i64
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %i.cx
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %bb.a, %bb.aa, %bb.c
  %.033 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %i.cy, %bb.aa ], [ null, %.loopexit ]
  ret ptr %.033
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @nk_buffer_init_default(ptr noundef %0) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_buffer_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 3                          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 112, i1 false), !tbaa !55
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.c, i1 false), !tbaa !56
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i, i8 0, i64 116, i1 false), !tbaa !55
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 range(i64 0, 4) %i.b, i1 false), !tbaa !56
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.d, align 8, !tbaa !68
  %i.e = tail call noalias noundef dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 4096, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4096, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %i.i, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @nk_malloc, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !73
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_mfree, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !73
  br label %nk_buffer_init.exit

nk_buffer_init.exit:                              ; preds = %bb.a, %nk_zero.exit.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @nk_malloc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #15 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %2) #49
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @nk_mfree(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1) #16 {
bb.a:
  tail call void @free(ptr noundef %1) #50
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_buffer_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = and i64 %i.d, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 120, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.f, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i, i8 0, i64 116, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = load ptr, ptr %1, align 8
  %i.k = tail call ptr %i.i(ptr %i.j, ptr noundef null, i64 noundef %2) #50
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.k, ptr %i.l, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.m, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.n, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_zero.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_buffer_init_fixed(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = and i64 %i.d, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 112, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.f, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i, i8 0, i64 116, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.j, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_zero.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_buffer_push(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %0, i32 noundef %1, i64 noundef %3, i64 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @nk_buffer_alloc(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76
  %i.e = add i64 %i.d, %2
  store i64 %i.e, ptr %i.c, align 8, !tbaa !76
  %i.f = icmp eq i32 %1, 0                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 3 uses
  br i1 %i.f, label %.split, label %.split67

.split:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 3 uses
  %.not19.i = icmp eq i64 %3, 0                   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 %3
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 0, %3
  %i.p = and i64 %i.n, %i.o                       ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub i64 %i.p, %i.r
  %.0 = select i1 %.not19.i, i64 0, i64 %i.s      ; 2 uses
  %phi.call = select i1 %.not19.i, ptr %i.k, ptr %i.q
  %i.t = add i64 %i.j, %2
  %i.u = add i64 %i.t, %.0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load i64, ptr %i.v, align 8, !tbaa !71
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %nk_buffer_align.exit93

.split67:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load i64, ptr %i.y, align 8, !tbaa !71   ; 3 uses
  %i.aa = sub i64 %i.z, %2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aa ; 5 uses
  %cond.i = icmp eq i32 %1, 1
  %.not19.i84 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %cond.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.split67
  br i1 %.not19.i84, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %i.ab, i64 %3
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 0, %3
  %i.ag = and i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ag, %i.ai
  br label %bb.g

bb.e:                                             ; preds = %.split67
  br i1 %.not19.i84, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = sub i64 0, %3
  %i.am = and i64 %i.ak, %i.al                    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = sub i64 %i.ak, %i.am
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.ph = phi i64 [ 0, %bb.e ], [ %i.aj, %bb.d ], [ 0, %bb.c ], [ %i.ao, %bb.f ] ; 2 uses
  %phi.call.ph = phi ptr [ %i.ab, %bb.e ], [ %i.ah, %bb.d ], [ %i.ab, %bb.c ], [ %i.an, %bb.f ]
  %i.ap = add i64 %.0.ph, %2
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77 ; 2 uses
  %.not118 = icmp ugt i64 %i.aq, %i.as
  br i1 %.not118, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %i.at = phi i64 [ %i.j, %.split ], [ %i.as, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !68
  %.not = icmp eq i32 %i.av, 1
  br i1 %.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !684 ; 2 uses
  %.not81 = icmp eq ptr %i.ax, null
  br i1 %.not81, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78
  %.not82 = icmp eq ptr %i.az, null
  br i1 %.not82, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !70 ; 4 uses
  %i.bd = uitofp i64 %i.bc to float
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load float, ptr %i.be, align 8, !tbaa !72
  %i.bg = fmul float %i.bf, %i.bd
  %i.bh = fptoui float %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = add i64 %i.at, %2
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = or i32 %i.bm, %i.bl                     ; 2 uses
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = or i32 %i.bo, %i.bn                     ; 2 uses
  %i.bq = lshr i32 %i.bp, 4
  %i.br = or i32 %i.bq, %i.bp                     ; 2 uses
  %i.bs = lshr i32 %i.br, 8
  %i.bt = or i32 %i.bs, %i.br                     ; 2 uses
  %i.bu = lshr i32 %i.bt, 16
  %i.bv = or i32 %i.bu, %i.bt
  %i.bw = add i32 %i.bv, 1
  %i.bx = zext i32 %i.bw to i64
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bx) ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call ptr %i.ax(ptr %i.bz, ptr noundef %i.h, i64 noundef %spec.select) #50, !inline_history !683 ; 8 uses
  %.not48.i = icmp eq ptr %i.ca, null
  br i1 %.not48.i, label %nk_buffer_realloc.exit.thread, label %bb.l

nk_buffer_realloc.exit.thread:                    ; preds = %bb.k
  store ptr null, ptr %i.ba, align 8, !tbaa !69
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  store i64 %spec.select, ptr %i.bb, align 8, !tbaa !79
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !69 ; 2 uses
  %.not49.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not49.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.ca, ptr noundef %i.cb, i64 noundef %i.bc) ; 0 uses
  %i.cd = load ptr, ptr %i.ay, align 8, !tbaa !78
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !69
  %i.cf = load ptr, ptr %i.by, align 8
  tail call void %i.cd(ptr %i.cf, ptr noundef %i.ce) #50, !inline_history !683
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !71 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, %i.bc
  br i1 %i.ci, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = sub i64 %i.bc, %i.ch                    ; 2 uses
  %i.ck = sub i64 %spec.select, %i.cj             ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ch
  %i.cn = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cm, i64 noundef %i.cj) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
end_hunk_0
begin_hunk_1_@nk_buffer_reset:bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.neg27 = sub i64 %i.f, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  %i.i = add i64 %.neg27, %i.h
  store i64 %i.i, ptr %i.g, align 8, !tbaa !76
  %i.j = load i8, ptr %i.d, align 8, !tbaa !86, !range !88, !noundef !89
  %i.k = trunc nuw i8 %i.j to i1
  %spec.select31 = select i1 %i.k, i64 %i.f, i64 %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %spec.select31, ptr %i.l, align 8, !tbaa !71
  store i8 0, ptr %i.d, align 8, !tbaa !86
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77
  %i.o = zext i32 %1 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !87   ; 2 uses
  %.neg = sub i64 %i.r, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76
  %i.u = add i64 %.neg, %i.t
  store i64 %i.u, ptr %i.s, align 8, !tbaa !76
  %i.v = load i8, ptr %i.p, align 8, !tbaa !86, !range !88, !noundef !89
  %i.w = trunc nuw i8 %i.v to i1
  %spec.select = select i1 %i.w, i64 %i.r, i64 0
  store i64 %spec.select, ptr %i.m, align 8, !tbaa !77
  store i8 0, ptr %i.p, align 8, !tbaa !86
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_buffer_clear(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.a, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.c, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_buffer_free(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  %.not10 = icmp eq ptr %i.g, null
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.g(ptr %i.i, ptr noundef nonnull %i.b) #50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_buffer_info(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !700
  %i.i = load <2 x i64>, ptr %i.c, align 8, !tbaa !79
  store <2 x i64> %i.i, ptr %i.d, align 8, !tbaa !79
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !69
  store ptr %i.j, ptr %0, align 8, !tbaa !701
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !702
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %i.m, align 8, !tbaa !703
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @nk_buffer_memory(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @nk_buffer_memory_const(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @nk_buffer_total(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @nk_str_init_default(ptr noundef %0) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_buffer_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 3                          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 112, i1 false), !tbaa !55
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.c, i1 false), !tbaa !56
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i, i8 0, i64 116, i1 false), !tbaa !55
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 range(i64 0, 4) %i.b, i1 false), !tbaa !56
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.d, align 8, !tbaa !68
  %i.e = tail call noalias noundef dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 32, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 32, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %i.i, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @nk_malloc, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !73
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_mfree, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !73
  br label %nk_buffer_init.exit

nk_buffer_init.exit:                              ; preds = %bb.a, %nk_zero.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.k, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_str_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond3.i = and i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %bb.b, label %nk_buffer_init.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = and i64 %i.d, 3                          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 120, i1 false), !tbaa !55
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.f, i1 false), !tbaa !56
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i, i8 0, i64 116, i1 false), !tbaa !55
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = load ptr, ptr %1, align 8
  %i.k = tail call ptr %i.i(ptr %i.j, ptr noundef null, i64 noundef %2) #50, !inline_history !92
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.k, ptr %i.l, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.m, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.n, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %i.o, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  br label %nk_buffer_init.exit

nk_buffer_init.exit:                              ; preds = %bb.a, %nk_zero.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_str_init_fixed(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond3.i = and i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %bb.b, label %nk_buffer_init_fixed.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = and i64 %i.d, 3                          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 112, i1 false), !tbaa !55
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.f, i1 false), !tbaa !56
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i, i8 0, i64 116, i1 false), !tbaa !55
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.j, align 8, !tbaa !71
  br label %nk_buffer_init_fixed.exit

nk_buffer_init_fixed.exit:                        ; preds = %bb.a, %nk_zero.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.k, align 8, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @nk_str_append_text_char(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.d, i64 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.e, ptr noundef nonnull %1, i64 noundef %i.d) ; 0 uses
  %i.g = tail call i32 @nk_utf_len(ptr noundef nonnull %1, i32 noundef %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91
  %i.j = add nsw i32 %i.i, %i.g
  store i32 %i.j, ptr %i.h, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %2, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @nk_str_append_str_char(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_str_append_text_char.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i6 = icmp eq i8 %i.a, 0
  br i1 %.not4.i6, label %nk_str_append_text_char.exit, label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1                          ; 4 uses
  %i.d = icmp ne ptr %0, null
  %i.e = icmp ne i32 %i.c, 0
  %or.cond3.i = and i1 %i.d, %i.e
  br i1 %or.cond3.i, label %bb.b, label %nk_str_append_text_char.exit

bb.b:                                             ; preds = %nk_strlen.exit
  %i.f = zext nneg i32 %i.c to i64                ; 2 uses
  %i.g = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.f, i64 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %nk_str_append_text_char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.g, ptr noundef nonnull %1, i64 noundef %i.f) ; 0 uses
  %i.i = tail call i32 @nk_utf_len(ptr noundef nonnull %1, i32 noundef %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !91
  %i.l = add nsw i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

nk_str_append_text_char.exit:                     ; preds = %.lr.ph.i.preheader, %bb.a, %nk_strlen.exit, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.c ], [ 0, %nk_strlen.exit ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define noundef i32 @nk_str_append_text_utf8(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %.preheader, label %nk_str_append_text_char.exit

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph, label %nk_str_append_text_char.exit

.lr.ph:                                           ; preds = %.preheader, %nk_utf_decode.exit
  %.024 = phi i32 [ %i.u, %nk_utf_decode.exit ], [ 0, %.preheader ] ; 2 uses
  %.01623 = phi i32 [ %i.v, %nk_utf_decode.exit ], [ 0, %.preheader ]
  %i.e = sext i32 %.024 to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56    ; 4 uses
  %or.cond21 = icmp ugt i8 %i.g, -65
  br i1 %or.cond21, label %bb.b, label %nk_utf_decode.exit

bb.b:                                             ; preds = %.lr.ph
  %i.h = icmp samesign ult i8 %i.g, -32           ; 2 uses
  br i1 %i.h, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i8 %i.g, -16
  br i1 %i.i, label %.lr.ph.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i8 %i.g, -8
  %i.k = icmp eq i8 %i.j, -16
  br i1 %i.k, label %.lr.ph.i, label %nk_utf_decode.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.c, %bb.d
  %exitcond.not.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ false, %bb.b ]
  %storemerge12.lcssa.wide.i.i = phi i32 [ 4, %bb.d ], [ 3, %bb.c ], [ 2, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !56
  %i.n = icmp slt i8 %i.m, -64
  br i1 %i.n, label %bb.e, label %nk_utf_decode.exit

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.h, label %nk_utf_decode.exit.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !56
  %i.q = icmp slt i8 %i.p, -64
  br i1 %i.q, label %bb.f, label %nk_utf_decode.exit

bb.f:                                             ; preds = %.lr.ph.i.1
  br i1 %exitcond.not.1, label %nk_utf_decode.exit.loopexit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !56
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %nk_utf_decode.exit.loopexit, label %nk_utf_decode.exit

nk_utf_decode.exit.loopexit:                      ; preds = %.lr.ph.i.2, %bb.f, %bb.e
  br label %nk_utf_decode.exit

nk_utf_decode.exit:                               ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %nk_utf_decode.exit.loopexit, %.lr.ph, %bb.d
  %.023.i = phi i32 [ %storemerge12.lcssa.wide.i.i, %nk_utf_decode.exit.loopexit ], [ 1, %.lr.ph ], [ 1, %bb.d ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ]
  %i.u = add nsw i32 %.023.i, %.024               ; 4 uses
  %i.v = add nuw nsw i32 %.01623, 1               ; 2 uses
  %exitcond27.not = icmp eq i32 %i.v, %2
  br i1 %exitcond27.not, label %._crit_edge, label %.lr.ph, !llvm.loop !704

._crit_edge:                                      ; preds = %nk_utf_decode.exit
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %nk_str_append_text_char.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.w = sext i32 %i.u to i64                     ; 2 uses
  %i.x = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.w, i64 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %nk_str_append_text_char.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.x, ptr noundef nonnull %1, i64 noundef %i.w) ; 0 uses
  %i.z = tail call i32 @nk_utf_len(ptr noundef nonnull %1, i32 noundef %i.u)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !91
  %i.ac = add nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

nk_str_append_text_char.exit:                     ; preds = %.preheader, %bb.h, %bb.g, %._crit_edge, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %2, %._crit_edge ], [ %2, %bb.g ], [ %2, %bb.h ], [ %2, %.preheader ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define i32 @nk_str_append_str_utf8(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %nk_str_append_text_char.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !56      ; 7 uses
  %i.d = icmp slt i8 %i.c, -64
  br i1 %i.d, label %nk_utf_decode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@nk_text_clamp:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not157 = icmp eq i32 %7, 0
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %nk_utf_decode.exit87
  %.051108 = phi i32 [ %.152175188201, %nk_utf_decode.exit87 ], [ 0, %.lr.ph.split.preheader ]
  %.053107 = phi i32 [ %i.be, %nk_utf_decode.exit87 ], [ 0, %.lr.ph.split.preheader ]
  %.054106 = phi i32 [ %i.ay, %nk_utf_decode.exit87 ], [ 0, %.lr.ph.split.preheader ]
  %.055105 = phi float [ %i.bc, %nk_utf_decode.exit87 ], [ 0.000000e+00, %.lr.ph.split.preheader ] ; 3 uses
  %.059103 = phi i32 [ %.023.i75, %nk_utf_decode.exit87 ], [ %.023.i, %.lr.ph.split.preheader ]
  %.088102 = phi i32 [ %.290, %nk_utf_decode.exit87 ], [ %.189, %.lr.ph.split.preheader ]
  %i.ay = add nsw i32 %.054106, %.059103          ; 11 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !139
  %i.ba = load float, ptr %i.ax, align 8, !tbaa !140
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = tail call float %i.az(ptr %i.bb, float noundef %i.ba, ptr noundef nonnull %1, i32 noundef %i.ay) #50 ; 2 uses
  br i1 %.not157, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split
  %i.bd = load i32, ptr %6, align 4, !tbaa !55
  %.not65.peel = icmp eq i32 %.088102, %i.bd
  br i1 %.not65.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split, %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.152175188201 = phi i32 [ %.051108, %bb.n ], [ %i.ay, %bb.m ] ; 3 uses
  %i.be = add nuw nsw i32 %.053107, 1             ; 4 uses
  %i.bf = sext i32 %i.ay to i64
  %i.bg = getelementptr inbounds i8, ptr %1, i64 %i.bf ; 4 uses
  %i.bh = sub i32 %2, %i.ay                       ; 2 uses
  %.not.i67 = icmp eq i32 %2, %i.ay
  br i1 %.not.i67, label %nk_utf_decode.exit87.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !56  ; 7 uses
  %i.bj = icmp slt i8 %i.bi, -64
  br i1 %i.bj, label %nk_utf_decode.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = icmp slt i8 %i.bi, 0
  br i1 %i.bk, label %bb.r, label %._crit_edge.thread82.i69

._crit_edge.thread82.i69:                         ; preds = %bb.q
  %i.bl = zext nneg i8 %i.bi to i32
  br label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp samesign ult i8 %i.bi, -32
  br i1 %i.bm, label %nk_utf_decode_byte.exit.i76, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = icmp samesign ult i8 %i.bi, -16
  br i1 %i.bn, label %nk_utf_decode_byte.exit.i76, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = and i8 %i.bi, -8
  %i.bp = icmp eq i8 %i.bo, -16
  br i1 %i.bp, label %nk_utf_decode_byte.exit.i76, label %nk_utf_decode.exit87

nk_utf_decode_byte.exit.i76:                      ; preds = %bb.t, %bb.s, %bb.r
  %storemerge12.lcssa.wide.i.i77 = phi i32 [ 4, %bb.t ], [ 3, %bb.s ], [ 2, %bb.r ] ; 3 uses
  %i.bq = phi i8 [ 7, %bb.t ], [ 15, %bb.s ], [ 31, %bb.r ]
  %i.br = icmp sgt i32 %i.bh, 1
  br i1 %i.br, label %.lr.ph.preheader.i78, label %nk_utf_decode.exit87.thread

.lr.ph.preheader.i78:                             ; preds = %nk_utf_decode_byte.exit.i76
  %i.bs = and i8 %i.bq, %i.bi
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = zext nneg i32 %i.bh to i64
  %zext138 = zext nneg i32 %storemerge12.lcssa.wide.i.i77 to i64
  %i.bv = add nsw i64 %i.bu, -2
  %i.bw = add nsw i32 %storemerge12.lcssa.wide.i.i77, -2
  %i.bx = zext nneg i32 %i.bw to i64
  %umin139 = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bx) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !56  ; 2 uses
  %i.ca = icmp slt i8 %i.bz, -64
  br i1 %i.ca, label %bb.u, label %nk_utf_decode.exit87

bb.u:                                             ; preds = %.lr.ph.preheader.i78
  %i.cb = and i8 %i.bz, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.bt, 6
  %i.ce = or disjoint i32 %i.cd, %i.cc            ; 2 uses
  %exitcond140.not = icmp eq i64 %umin139, 0
  br i1 %exitcond140.not, label %._crit_edge.i86, label %.lr.ph.i79.1

.lr.ph.i79.1:                                     ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !56  ; 2 uses
  %i.ch = icmp slt i8 %i.cg, -64
  br i1 %i.ch, label %bb.v, label %nk_utf_decode.exit87

bb.v:                                             ; preds = %.lr.ph.i79.1
  %i.ci = and i8 %i.cg, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.ce, 6
  %i.cl = or disjoint i32 %i.ck, %i.cj            ; 2 uses
  %exitcond140.not.1 = icmp eq i64 %umin139, 1
  br i1 %exitcond140.not.1, label %._crit_edge.i86, label %.lr.ph.i79.2

.lr.ph.i79.2:                                     ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !56  ; 2 uses
  %i.co = icmp slt i8 %i.cn, -64
  br i1 %i.co, label %bb.w, label %nk_utf_decode.exit87

bb.w:                                             ; preds = %.lr.ph.i79.2
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cl, 6
  %i.cs = or disjoint i32 %i.cr, %i.cq
  br label %._crit_edge.i86

._crit_edge.i86:                                  ; preds = %bb.w, %bb.v, %bb.u
  %.lcssa = phi i32 [ %i.ce, %bb.u ], [ %i.cl, %bb.v ], [ %i.cs, %bb.w ]
  %indvars.iv.next.i84.lcssa = phi i64 [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ]
  %i.ct = icmp samesign ult i64 %indvars.iv.next.i84.lcssa, %zext138
  br i1 %i.ct, label %nk_utf_decode.exit87.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i86, %._crit_edge.thread82.i69
  %.0.lcssa87.i70 = phi i32 [ %i.bl, %._crit_edge.thread82.i69 ], [ %.lcssa, %._crit_edge.i86 ] ; 4 uses
  %storemerge12.lcssa.wide.i7886.i71 = phi i32 [ 1, %._crit_edge.thread82.i69 ], [ %storemerge12.lcssa.wide.i.i77, %._crit_edge.i86 ] ; 3 uses
  %i.cu = zext nneg i32 %storemerge12.lcssa.wide.i7886.i71 to i64 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !55
  %.not.i.i72 = icmp ugt i32 %i.cw, %.0.lcssa87.i70
  br i1 %.not.i.i72, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.cu
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !55
  %i.cz = icmp uge i32 %.0.lcssa87.i70, %i.cy
  %i.da = add i32 %.0.lcssa87.i70, -55296
  %or.cond.i.i73 = icmp ult i32 %i.da, 2047
  %or.cond15.i.i74 = or i1 %or.cond.i.i73, %i.cz
  br i1 %or.cond15.i.i74, label %bb.z, label %nk_utf_decode.exit87

bb.z:                                             ; preds = %bb.y, %bb.x
  br label %nk_utf_decode.exit87

nk_utf_decode.exit87.thread:                      ; preds = %bb.o, %._crit_edge.i86, %nk_utf_decode_byte.exit.i76
  %i.db = icmp slt i32 %i.ay, %2
  br i1 %i.db, label %bb.aa, label %.thread215

nk_utf_decode.exit87:                             ; preds = %.lr.ph.preheader.i78, %.lr.ph.i79.1, %.lr.ph.i79.2, %bb.p, %bb.t, %bb.y, %bb.z
  %.290 = phi i32 [ %.0.lcssa87.i70, %bb.y ], [ 65533, %bb.p ], [ 65533, %bb.t ], [ 65533, %bb.z ], [ 65533, %.lr.ph.i79.2 ], [ 65533, %.lr.ph.i79.1 ], [ 65533, %.lr.ph.preheader.i78 ]
  %.023.i75 = phi i32 [ %storemerge12.lcssa.wide.i7886.i71, %bb.y ], [ 1, %bb.p ], [ 1, %bb.t ], [ %storemerge12.lcssa.wide.i7886.i71, %bb.z ], [ 1, %.lr.ph.preheader.i78 ], [ 2, %.lr.ph.i79.1 ], [ 3, %.lr.ph.i79.2 ]
  %i.dc = fcmp olt float %i.bc, %3
  %i.dd = icmp slt i32 %i.ay, %2                  ; 2 uses
  %or.cond66 = and i1 %i.dc, %i.dd
  br i1 %or.cond66, label %.lr.ph.split, label %.critedge, !llvm.loop !732

.critedge:                                        ; preds = %nk_utf_decode.exit87, %nk_utf_decode.exit
  %.056.lcssa = phi float [ 0.000000e+00, %nk_utf_decode.exit ], [ %.055105, %nk_utf_decode.exit87 ] ; 2 uses
  %.054.lcssa = phi i32 [ 0, %nk_utf_decode.exit ], [ %i.ay, %nk_utf_decode.exit87 ] ; 2 uses
  %.053.lcssa = phi i32 [ 0, %nk_utf_decode.exit ], [ %i.be, %nk_utf_decode.exit87 ] ; 2 uses
  %.051.lcssa = phi i32 [ 0, %nk_utf_decode.exit ], [ %.152175188201, %nk_utf_decode.exit87 ]
  %.lcssa95 = phi i1 [ %i.av, %nk_utf_decode.exit ], [ %i.dd, %nk_utf_decode.exit87 ]
  br i1 %.lcssa95, label %bb.aa, label %.thread215

bb.aa:                                            ; preds = %nk_utf_decode.exit87.thread, %.critedge
  %.0.lcssa214 = phi float [ %.055105, %nk_utf_decode.exit87.thread ], [ %.056.lcssa, %.critedge ]
  %.048.lcssa213 = phi i32 [ %i.be, %nk_utf_decode.exit87.thread ], [ %.053.lcssa, %.critedge ]
  %.051.lcssa212 = phi i32 [ %.152175188201, %nk_utf_decode.exit87.thread ], [ %.051.lcssa, %.critedge ]
  %.054.lcssa209 = phi i32 [ %i.ay, %nk_utf_decode.exit87.thread ], [ %.054.lcssa, %.critedge ]
  %.051.lcssa212.fr = freeze i32 %.051.lcssa212   ; 2 uses
  %.not64 = icmp eq i32 %.051.lcssa212.fr, 0
  %spec.select = select i1 %.not64, i32 %.054.lcssa209, i32 %.051.lcssa212.fr
  br label %.thread215

.thread215:                                       ; preds = %bb.aa, %nk_utf_decode_byte.exit.i, %._crit_edge.i, %bb.a, %.critedge, %nk_utf_decode.exit87.thread
  %.053.lcssa.sink = phi i32 [ %i.be, %nk_utf_decode.exit87.thread ], [ 0, %nk_utf_decode_byte.exit.i ], [ %.053.lcssa, %.critedge ], [ %.048.lcssa213, %bb.aa ], [ 0, %bb.a ], [ 0, %._crit_edge.i ]
  %.056.lcssa.sink = phi float [ %.055105, %nk_utf_decode.exit87.thread ], [ 0.000000e+00, %nk_utf_decode_byte.exit.i ], [ %.056.lcssa, %.critedge ], [ %.0.lcssa214, %bb.aa ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %._crit_edge.i ]
  %.061 = phi i32 [ %i.ay, %nk_utf_decode.exit87.thread ], [ 0, %nk_utf_decode_byte.exit.i ], [ %.054.lcssa, %.critedge ], [ %spec.select, %bb.aa ], [ 0, %bb.a ], [ 0, %._crit_edge.i ]
  store i32 %.053.lcssa.sink, ptr %4, align 4, !tbaa !55
  store float %.056.lcssa.sink, ptr %5, align 4, !tbaa !54
  ret i32 %.061
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @nk_draw_list_init(ptr noundef %0) local_unnamed_addr #13 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %0, i8 0, i64 240, i1 false), !tbaa !55
  br label %vector.body

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.c, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(236) %scevgep.i.i, i8 0, i64 236, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 236
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.b, i1 false), !tbaa !56
  br label %vector.body

vector.body:                                      ; preds = %.loopexit46.i.i, %.loopexit46.i.i.thread
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x float> <float 9.999600e-01, float f0x0C780258, float f0x3F5DB17E, float f0x3EFFD2D5, float f0x3F00014E, float f0x3F5DD0D5, float f0x37AFE632, float 1.000840e+00>, ptr %i.d, align 4, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x float> <float f0xBF000287, float f0x3F5DC1C2, float f0xBF5DB41F, float f0x3EFFDD26, float f0xBF7FFD5E, float -6.741250e-08, float f0xBF5DB431, float f0xBEFFDD1E>, ptr %i.e, align 4, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x float> <float -5.000380e-01, float f0xBF5DC1C0, float f0x37B6FBCF, float f0xBF801B88, float f0x3F000136, float f0xBF5DD0DD, float f0x3F5DB1C5, float f0xBEFFD22A>, ptr %i.f, align 4, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_draw_list_setup(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #18 {
bb.a:
  %i.a = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.b = insertelement <4 x ptr> %i.a, ptr %1, i64 1
  %i.c = insertelement <4 x ptr> %i.b, ptr %2, i64 2
  %i.d = insertelement <4 x ptr> %i.c, ptr %3, i64 3
  %i.e = icmp ne ptr %4, null
  %i.f = icmp eq <4 x ptr> %i.d, splat (ptr null)
  %i.g = bitcast <4 x i1> %i.f to i4
  %i.h = icmp eq i4 %i.g, 0
  %op.rdx = and i1 %i.h, %i.e
  br i1 %op.rdx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %2, ptr %i.i, align 8, !tbaa !151
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !153
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %4, ptr %i.k, align 8, !tbaa !154
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %3, ptr %i.l, align 8, !tbaa !155
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %5, ptr %i.m, align 8, !tbaa !156
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %6, ptr %i.n, align 4, !tbaa !733
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) @nk_null_rect, i64 16, i1 false), !tbaa.struct !157
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.p, align 8, !tbaa !158
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.q, align 4, !tbaa !159
  store i64 0, ptr %i.o, align 8, !tbaa !160
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.r, align 8, !tbaa !161
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.s, align 8, !tbaa !162
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @nk__draw_list_begin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  %.not10 = icmp eq i64 %i.b, 0
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !161
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load i64, ptr %i.i, align 8, !tbaa !160
  %i.k = sub i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @nk__draw_list_end(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !160
  %i.i = sub i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load i32, ptr %i.k, align 8, !tbaa !161
  %i.m = add i32 %i.l, -1
  %i.n = zext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @nk__draw_list_next(ptr nofree noundef readnone captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %nk__draw_list_end.exit, label %bb.b

nk__draw_list_end.exit:                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.i = load i64, ptr %i.h, align 8, !tbaa !160
  %i.j = sub i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.m = load i32, ptr %i.l, align 8, !tbaa !161
  %i.n = add i32 %i.m, -1
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.p
  %.not = icmp ugt ptr %0, %i.q
  %i.r = getelementptr inbounds i8, ptr %0, i64 -32
  %spec.select = select i1 %.not, ptr %i.r, ptr null
  br label %bb.b

bb.b:                                             ; preds = %nk__draw_list_end.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %spec.select, %nk__draw_list_end.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_stroke_poly_line(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3, i32 noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i32 %2, 2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.critedge628, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i32 %3, 24
  %.sroa.2.0.extract.trunc = trunc nuw i32 %.sroa.2.0.extract.shift to i8
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc to float
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load float, ptr %i.d, align 8, !tbaa !163 ; 2 uses
  %i.f = fmul float %i.e, %i.c
  %i.g = fptoui float %i.f to i8
  %i.h = zext i32 %2 to i64                       ; 9 uses
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %i.i = add i32 %2, -1                           ; 3 uses
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %.0 = select i1 %.not, i64 %i.j, i64 %i.h       ; 8 uses
  %i.k = fcmp ogt float %5, 1.000000e+00          ; 5 uses
  %i.l = uitofp i8 %i.g to float
  %i.m = fmul float %i.e, %i.l
  %i.n = fptoui float %i.m to i8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %3, 16
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %i.o = bitcast i32 %3 to <4 x i8>
  %i.p = shufflevector <4 x i8> %i.o, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.q = uitofp <2 x i8> %i.p to <2 x float>
  %i.r = fmul nnan <2 x float> %i.q, splat (float f0x3B808081) ; 11 uses
  %i.s = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i, i64 0
  %i.t = insertelement <2 x i8> %i.s, i8 %i.n, i64 1
  %i.u = uitofp <2 x i8> %i.t to <2 x float>
  %i.v = fmul nnan <2 x float> %i.u, splat (float f0x3B808081) ; 8 uses
  %.sroa.7.12.vec.insert = insertelement <2 x float> %i.v, float 0.000000e+00, i64 1 ; 4 uses
  %i.w = icmp eq i32 %6, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 5 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !159  ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@stbtt_FindMatchingFont:bb.a
  %.not41.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not41.i.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %stbtt__find_table.exit59.i.i
  br i1 %.not39.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 16, i32 noundef -1)
  %.not45.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not45.i.i, label %bb.r, label %stbtt_FindMatchingFont_internal.exit

bb.r:                                             ; preds = %bb.q
  %i.az = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 1, i32 noundef -1)
  %.not46.i.i = icmp eq i32 %i.az, 0
  br i1 %.not46.i.i, label %bb.s, label %stbtt_FindMatchingFont_internal.exit

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 3, i32 noundef -1)
  %.not47.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not47.i.i, label %.loopexit.i, label %stbtt_FindMatchingFont_internal.exit

bb.t:                                             ; preds = %bb.p
  %i.bb = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 16, i32 noundef 17)
  %.not42.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not42.i.i, label %bb.u, label %stbtt_FindMatchingFont_internal.exit

bb.u:                                             ; preds = %bb.t
  %i.bc = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 1, i32 noundef 2)
  %.not43.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not43.i.i, label %bb.v, label %stbtt_FindMatchingFont_internal.exit

bb.v:                                             ; preds = %bb.u
  %i.bd = tail call fastcc i32 @stbtt__matchpair(ptr noundef nonnull readonly %0, i32 noundef %i.ax, ptr noundef nonnull readonly %1, i32 noundef %i.d, i32 noundef 3, i32 noundef -1)
  %.not44.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not44.i.i, label %.loopexit.i, label %stbtt_FindMatchingFont_internal.exit

.loopexit.i:                                      ; preds = %bb.o, %bb.v, %bb.s, %stbtt__find_table.exit59.i.i, %._crit_edge.i.i, %stbtt__find_table.exit.i.i, %bb.d, %bb.b
  %i.be = add nuw nsw i32 %.01127.i, 1            ; 2 uses
  %i.bf = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef readonly %0, i32 noundef %i.be) ; 3 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %stbtt_FindMatchingFont_internal.exit, label %bb.b

stbtt_FindMatchingFont_internal.exit:             ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %.loopexit.i, %bb.a
  %.lcssa26.i = phi i32 [ %i.a, %bb.a ], [ %i.bf, %.loopexit.i ], [ %i.f, %bb.v ], [ %i.f, %bb.u ], [ %i.f, %bb.t ], [ %i.f, %bb.s ], [ %i.f, %bb.r ], [ %i.f, %bb.q ]
  ret i32 %.lcssa26.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt_CompareUTF8toUTF16_bigendian(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call fastcc i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3)
  %i.b = icmp eq i32 %1, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_default_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_default_glyph_ranges.ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_chinese_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_chinese_glyph_ranges.ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_cyrillic_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_cyrillic_glyph_ranges.ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @nk_font_korean_glyph_ranges() local_unnamed_addr #0 {
bb.a:
  ret ptr @nk_font_korean_glyph_ranges.ranges
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @nk_font_find_glyph(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332  ; 2 uses
  %.not38 = icmp eq ptr %i.b, null
  br i1 %.not38, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !334  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.029 = phi i32 [ 0, %bb.c ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.028 = phi ptr [ %i.f, %bb.c ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.028, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !337  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %._crit_edge, label %nk_range_count.exit

nk_range_count.exit:                              ; preds = %bb.d
  %wcslen.i = tail call i64 @wcslen(ptr nonnull readonly %i.h)
  %i.i = shl i64 %wcslen.i, 2
  %i.j = add i64 %i.i, 4
  %i.k = ashr exact i64 %i.j, 2
  %i.l = sdiv i64 %i.k, 2                         ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %nk_range_count.exit
  %wide.trip.count = and i64 %i.l, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.149 = phi i32 [ %.029, %.lr.ph.preheader ], [ %i.y, %bb.f ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !55   ; 2 uses
  %.not40 = icmp ult i32 %1, %i.p
  %.not41 = icmp ugt i32 %1, %i.r
  %or.cond = select i1 %.not40, i1 true, i1 %.not41
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = add i32 %.149, %1
  %i.t = sub i32 %i.s, %i.p
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.u
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.w = add i32 %.149, 1
  %i.x = sub i32 %i.w, %i.p
  %i.y = add i32 %i.x, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.f, %bb.d, %nk_range_count.exit
  %.1.lcssa = phi i32 [ %.029, %nk_range_count.exit ], [ %.029, %bb.d ], [ %i.y, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !338 ; 2 uses
  %.not39 = icmp eq ptr %i.aa, %i.f
  br i1 %.not39, label %.loopexit, label %bb.d, !llvm.loop !34

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.a, %bb.b
  %.3 = phi ptr [ %i.v, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %._crit_edge ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_font_config(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.nk_font_config) align 8 captures(none) initializes((0, 88)) %0, float noundef %1) local_unnamed_addr #4 {
.loopexit46.i.i.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  store float %1, ptr %i.a, align 8, !tbaa !339
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 3, ptr %i.b, align 4, !tbaa !340
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 1, ptr %i.c, align 1, !tbaa !341
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !342
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_font_default_glyph_ranges.ranges, ptr %i.e, align 8, !tbaa !337
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 63, ptr %i.f, align 8, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !338
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_font_atlas_init_default(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.c, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(396) %scevgep.i.i, i8 0, i64 396, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.b, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_malloc, ptr %i.e, align 8, !tbaa !346
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @nk_mfree, ptr %i.f, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @nk_malloc, ptr %i.h, align 8, !tbaa !348
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @nk_mfree, ptr %i.i, align 8, !tbaa !349
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_zero.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_font_atlas_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.e = sub nuw nsw i64 4, %i.d                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(396) %scevgep.i.i, i8 0, i64 396, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.d, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_zero.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_font_atlas_init_custom(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = and i64 %i.d, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.f, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(396) %scevgep.i.i, i8 0, i64 396, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !75
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_zero.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_font_atlas_begin(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !348
  %.not18 = icmp eq ptr %i.c, null
  br i1 %.not18, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !349  ; 2 uses
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !346
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !347
  %.not21 = icmp eq ptr %i.i, null
  br i1 %.not21, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !350  ; 2 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.a, align 8
  tail call void %i.e(ptr %i.l, ptr noundef nonnull %i.k) #50
  store ptr null, ptr %i.j, align 8, !tbaa !350
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = load ptr, ptr %0, align 8, !tbaa !351    ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !349
  %i.o = load ptr, ptr %i.a, align 8
  tail call void %i.n(ptr %i.o, ptr noundef nonnull %i.m) #50
  store ptr null, ptr %0, align 8, !tbaa !351
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @nk_font_atlas_add(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !353
  %.not85 = icmp eq i64 %i.f, 0
  br i1 %.not85, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load float, ptr %i.g, align 8, !tbaa !339
  %i.i = fcmp ugt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !348  ; 2 uses
  %.not86 = icmp eq ptr %i.l, null
  br i1 %.not86, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !349
  %.not87 = icmp eq ptr %i.n, null
  br i1 %.not87, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !346
  %.not88 = icmp eq ptr %i.p, null
  br i1 %.not88, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !347
  %.not89 = icmp eq ptr %i.r, null
  br i1 %.not89, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = tail call ptr %i.l(ptr %i.s, ptr noundef null, i64 noundef 88) #50 ; 16 uses
  %i.u = tail call fastcc ptr @nk_memcopy(ptr noundef %i.t, ptr noundef nonnull %1, i64 noundef 88) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !338
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  store ptr %i.t, ptr %i.w, align 8, !tbaa !910
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.y = load i8, ptr %i.x, align 1, !tbaa !354
  %.not90 = icmp eq i8 %i.y, 0
  br i1 %.not90, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !355 ; 2 uses
  %.not91 = icmp eq ptr %i.aa, null
  br i1 %.not91, label %bb.k, label %.preheader102

bb.k:                                             ; preds = %bb.j
  store ptr %i.t, ptr %i.z, align 8, !tbaa !355
  br label %bb.m

.preheader102:                                    ; preds = %bb.j, %.preheader102
  %.075 = phi ptr [ %i.ab, %.preheader102 ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ab = load ptr, ptr %.075, align 8, !tbaa !356 ; 2 uses
  %.not92 = icmp eq ptr %i.ab, null
  br i1 %.not92, label %bb.l, label %.preheader102, !llvm.loop !908

bb.l:                                             ; preds = %.preheader102
  store ptr %i.t, ptr %.075, align 8, !tbaa !356
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr null, ptr %i.t, align 8, !tbaa !356
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !348
  %i.ad = load ptr, ptr %i.j, align 8
  %i.ae = tail call ptr %i.ac(ptr %i.ad, ptr noundef null, i64 noundef 128) #50 ; 10 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %nk_zero.exit.thread, label %.loopexit46.i.i

nk_zero.exit.thread:                              ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ae, i8 0, i64 120, i1 false), !tbaa !55
  br label %bb.n

.loopexit46.i.i:                                  ; preds = %bb.m
  %i.ah = sub nuw nsw i64 4, %i.ag                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 0, i64 range(i64 0, 4) %i.ah, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.ae, i64 %i.ah ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %scevgep.i.i, i8 0, i64 124, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 124
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.ag, i1 false), !tbaa !56
  br label %bb.n

bb.n:                                             ; preds = %.loopexit46.i.i, %nk_zero.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !334
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !357 ; 2 uses
  %.not94 = icmp eq ptr %i.ak, null
  br i1 %.not94, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !357
  br label %bb.q

.preheader:                                       ; preds = %bb.n, %.preheader
  %.074 = phi ptr [ %i.al, %.preheader ], [ %i.ak, %bb.n ] ; 2 uses
  %i.al = load ptr, ptr %.074, align 8, !tbaa !358 ; 2 uses
  %.not95 = icmp eq ptr %i.al, null
  br i1 %.not95, label %bb.p, label %.preheader, !llvm.loop !909

bb.p:                                             ; preds = %.preheader
  store ptr %i.ae, ptr %.074, align 8, !tbaa !358
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.ae, align 8, !tbaa !358
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !359
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !357 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !334 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %i.as, ptr %i.at, align 8, !tbaa !359
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 80 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !910 ; 2 uses
  store ptr %i.av, ptr %i.w, align 8, !tbaa !910
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store ptr %i.t, ptr %i.aw, align 8, !tbaa !338
  store ptr %i.t, ptr %i.au, align 8, !tbaa !910
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.073 = phi ptr [ null, %bb.r ], [ %i.ae, %bb.q ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !360
  %.not96 = icmp eq i8 %i.ay, 0
  br i1 %.not96, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !348
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !353
  %i.bc = load ptr, ptr %i.j, align 8
  %i.bd = tail call ptr %i.az(ptr %i.bc, ptr noundef null, i64 noundef %i.bb) #50 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !352
  %.not97 = icmp eq ptr %i.bd, null
  br i1 %.not97, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !352
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !353
  %i.bh = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.bd, ptr noundef %i.bf, i64 noundef %i.bg) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i8 1, ptr %i.bi, align 8, !tbaa !360
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.u, %bb.t
  %.0.ph = phi ptr [ null, %bb.t ], [ %.073, %bb.u ], [ %.073, %bb.s ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !361
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !361
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @nk_font_atlas_add_from_memory(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, float noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_font_config, align 8     ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !347
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  %i.g = icmp ne i64 %2, 0
  %or.cond3 = and i1 %i.g, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !348
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !349
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not24 = icmp eq ptr %4, null
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 88, i1 false), !tbaa.struct !365
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %5, i8 0, i64 27, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i8 0, i64 3, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 27
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 3, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !55
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !54
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @nk_font_default_glyph_ranges.ranges, ptr %.sroa.826.0..sroa_idx, align 8, !tbaa !363
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !364
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 63, ptr %.sroa.927.0..sroa_idx, align 8, !tbaa !55
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, i8 0, i64 20, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !352
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.m, align 8, !tbaa !353
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %3, ptr %i.n, align 8, !tbaa !339
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.o, align 8, !tbaa !360
  %i.p = call ptr @nk_font_atlas_add(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.i
  %.0 = phi ptr [ %i.p, %bb.i ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @nk_font_atlas_add_from_file(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_font_config, align 8     ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %nk_file_load.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.25) ; 7 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %nk_file_load.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.f = tail call i64 @ftell(ptr noundef nonnull %i.d) ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %nk_file_load.exit.thread28, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @fseek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = tail call ptr %i.j(ptr %i.k, ptr noundef null, i64 noundef %i.f) #50, !inline_history !911 ; 3 uses
  %.not32.i = icmp eq ptr %i.l, null
end_hunk_3
begin_hunk_4_@nk_font_atlas_add_compressed_base85:bb.a
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !347
  %i.bf = load ptr, ptr %i.c, align 8
  tail call void %i.be(ptr %i.bf, ptr noundef nonnull %i.s) #50
  br label %bb.g

bb.g:                                             ; preds = %nk_strlen.exit, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %nk_decode_85.exit
  %.0 = phi ptr [ %i.bd, %nk_decode_85.exit ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %nk_strlen.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @nk_font_atlas_bake(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %4 = alloca %struct.nk_baked_font, align 8      ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !346  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !347
  %.not134 = icmp eq ptr %i.i, null
  br i1 %.not134, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !348
  %.not135 = icmp eq ptr %i.l, null
  br i1 %.not135, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !349
  %.not136 = icmp eq ptr %i.n, null
  br i1 %.not136, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !361  ; 2 uses
  %.not137 = icmp eq i32 %i.p, 0
  br i1 %.not137, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !355  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  store i32 0, ptr %i.q, align 8, !tbaa !55
  br i1 %.not.i, label %nk_font_baker_memory.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %bb.j
  %.02843.i = phi ptr [ %i.bd, %bb.j ], [ %i.s, %bb.g ] ; 4 uses
  %.02942.i = phi i32 [ %i.az, %bb.j ], [ 0, %bb.g ]
  %.promoted3941.i = phi i32 [ %i.ba, %bb.j ], [ 0, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %.02843.i, i64 48
  br label %bb.h

bb.h:                                             ; preds = %nk_range_glyph_count.exit.i, %.preheader.i
  %i.u = phi i32 [ %i.ba, %nk_range_glyph_count.exit.i ], [ %.promoted3941.i, %.preheader.i ]
  %.1.i = phi i32 [ %i.az, %nk_range_glyph_count.exit.i ], [ %.02942.i, %.preheader.i ] ; 2 uses
  %.0.i = phi ptr [ %i.bc, %nk_range_glyph_count.exit.i ], [ %.02843.i, %.preheader.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !337  ; 2 uses
  %.not33.i = icmp eq ptr %i.w, null
  br i1 %.not33.i, label %bb.i, label %nk_range_count.exit.i

bb.i:                                             ; preds = %bb.h
  store ptr @nk_font_default_glyph_ranges.ranges, ptr %i.t, align 8, !tbaa !337
  %.pr.i = load ptr, ptr %i.v, align 8, !tbaa !337 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %nk_range_glyph_count.exit.i, label %nk_range_count.exit.i

nk_range_count.exit.i:                            ; preds = %bb.i, %bb.h
  %i.x = phi ptr [ %.pr.i, %bb.i ], [ %i.w, %bb.h ] ; 4 uses
  %wcslen.i.i = tail call i64 @wcslen(ptr nonnull readonly %i.x)
  %i.y = shl i64 %wcslen.i.i, 2
  %i.z = add i64 %i.y, 4
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = sdiv i64 %i.aa, 2                       ; 3 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = add nsw i32 %.1.i, %i.ac                ; 3 uses
  %i.ae = icmp sgt i32 %i.ac, 0
  br i1 %i.ae, label %.lr.ph.preheader.i.i, label %nk_range_glyph_count.exit.i

.lr.ph.preheader.i.i:                             ; preds = %nk_range_count.exit.i
  %wide.trip.count.i.i = and i64 %i.ab, 2147483647 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.ab, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi212 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.af = shl nuw nsw i64 %index, 3
  %i.ag = shl i64 %index, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %wide.vec = load <8 x i32>, ptr %i.ah, align 4, !tbaa !55 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec213 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec214 = load <8 x i32>, ptr %i.aj, align 4, !tbaa !55 ; 2 uses
  %strided.vec215 = shufflevector <8 x i32> %wide.vec214, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec216 = shufflevector <8 x i32> %wide.vec214, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ak = add <4 x i32> %vec.phi, splat (i32 1)
  %i.al = add <4 x i32> %vec.phi212, splat (i32 1)
  %i.am = sub <4 x i32> %i.ak, %strided.vec
  %i.an = sub <4 x i32> %i.al, %strided.vec215
  %i.ao = add <4 x i32> %i.am, %strided.vec213    ; 2 uses
  %i.ap = add <4 x i32> %i.an, %strided.vec216    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !933

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i.i, %n.vec
  br i1 %cmp.n, label %nk_range_glyph_count.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.01112.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01112.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %.01112.i.i.ph, %.lr.ph.i.i.preheader ]
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !55
  %i.aw = add i32 %.01112.i.i, 1
  %i.ax = sub i32 %i.aw, %i.at
  %i.ay = add i32 %i.ax, %i.av                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %nk_range_glyph_count.exit.i, label %.lr.ph.i.i, !llvm.loop !934

nk_range_glyph_count.exit.i:                      ; preds = %.lr.ph.i.i, %middle.block, %nk_range_count.exit.i, %bb.i
  %i.az = phi i32 [ %i.ad, %nk_range_count.exit.i ], [ %.1.i, %bb.i ], [ %i.ad, %middle.block ], [ %i.ad, %.lr.ph.i.i ] ; 3 uses
  %.011.lcssa.i.i = phi i32 [ 0, %nk_range_count.exit.i ], [ 0, %bb.i ], [ %i.ar, %middle.block ], [ %i.ay, %.lr.ph.i.i ]
  %i.ba = add nsw i32 %.011.lcssa.i.i, %i.u       ; 4 uses
  store i32 %i.ba, ptr %i.q, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !338 ; 2 uses
  %.not34.i = icmp eq ptr %i.bc, %.02843.i
  br i1 %.not34.i, label %bb.j, label %bb.h, !llvm.loop !935

bb.j:                                             ; preds = %nk_range_glyph_count.exit.i
  %i.bd = load ptr, ptr %.02843.i, align 8, !tbaa !356 ; 2 uses
  %.not32.i = icmp eq ptr %i.bd, null
  br i1 %.not32.i, label %bb.k, label %.preheader.i, !llvm.loop !936

bb.k:                                             ; preds = %bb.j
  %i.be = sext i32 %i.ba to i64
  %i.bf = sext i32 %i.az to i64
  %i.bg = mul nsw i64 %i.bf, 40
  %i.bh = sext i32 %i.p to i64
  %i.bi = mul nsw i64 %i.bh, 184
  %reass.mul.i = mul nsw i64 %i.be, 52
  %i.bj = add nsw i64 %i.bi, 152
  %i.bk = add nsw i64 %i.bj, %i.bg
  %i.bl = add nsw i64 %i.bk, %reass.mul.i
  br label %nk_font_baker_memory.exit

nk_font_baker_memory.exit:                        ; preds = %bb.g, %bb.k
  %.0157 = phi i64 [ %i.bl, %bb.k ], [ 0, %bb.g ] ; 6 uses
  %i.bm = load ptr, ptr %i.e, align 8
  %i.bn = tail call ptr %i.g(ptr %i.bm, ptr noundef null, i64 noundef %.0157) #50 ; 9 uses
  %.not138 = icmp eq ptr %i.bn, null
  br i1 %.not138, label %.critedge, label %bb.l

bb.l:                                             ; preds = %nk_font_baker_memory.exit
  %i.bo = icmp ult i64 %.0157, 12
  br i1 %i.bo, label %.preheader.i147, label %bb.m

.preheader.i147:                                  ; preds = %bb.l
  %.not4348.i = icmp eq i64 %.0157, 0
  br i1 %.not4348.i, label %nk_memset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i147
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bn, i8 0, i64 range(i64 0, 12) %.0157, i1 false), !tbaa !56
  br label %nk_memset.exit

bb.m:                                             ; preds = %bb.l
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = and i64 %i.bp, 3                        ; 2 uses
  %.not.i146 = icmp eq i64 %i.bq, 0
  br i1 %.not.i146, label %.loopexit46.i, label %.loopexit46.loopexit.i

.loopexit46.loopexit.i:                           ; preds = %bb.m
  %i.br = sub nuw nsw i64 4, %i.bq                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i8 0, i64 range(i64 0, 4) %i.br, i1 false), !tbaa !56
  %i.bs = sub nuw nsw i64 %.0157, %i.br
  %scevgep.i = getelementptr i8, ptr %i.bn, i64 %i.br
  br label %.loopexit46.i

.loopexit46.i:                                    ; preds = %.loopexit46.loopexit.i, %bb.m
  %.132.i = phi i64 [ %.0157, %bb.m ], [ %i.bs, %.loopexit46.loopexit.i ] ; 2 uses
  %.230.i = phi ptr [ %i.bn, %bb.m ], [ %scevgep.i, %.loopexit46.loopexit.i ] ; 2 uses
  %i.bt = and i64 %.132.i, -4                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.230.i, i8 0, i64 %i.bt, i1 false), !tbaa !55
  %i.bu = and i64 %.132.i, 3                      ; 2 uses
  %.not41.i = icmp eq i64 %i.bu, 0
  br i1 %.not41.i, label %nk_memset.exit, label %.preheader44.preheader.i

.preheader44.preheader.i:                         ; preds = %.loopexit46.i
  %scevgep53.i = getelementptr i8, ptr %.230.i, i64 %i.bt
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i, i8 0, i64 range(i64 0, 4) %i.bu, i1 false), !tbaa !56
  br label %nk_memset.exit

nk_memset.exit:                                   ; preds = %.preheader.i147, %.lr.ph.preheader.i, %.loopexit46.i, %.preheader44.preheader.i
  %i.bv = load i32, ptr %i.q, align 8, !tbaa !943
  %i.bw = load i32, ptr %i.o, align 8, !tbaa !361
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, -8
  %i.ca = inttoptr i64 %i.bz to ptr               ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 127
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, -8
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !369
  %i.cg = sext i32 %i.bw to i64
  %i.ch = getelementptr inbounds [184 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, -8
  %i.cl = inttoptr i64 %i.ck to ptr               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !370
  %i.cn = sext i32 %i.bv to i64                   ; 2 uses
  %i.co = getelementptr inbounds [28 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, -4
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !371
  %i.cu = getelementptr inbounds [24 x i8], ptr %i.cs, i64 %i.cn
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 7
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, -8
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !75
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !348
  %i.db = load i32, ptr %i.q, align 8, !tbaa !943
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.dc, 48
  %i.de = load ptr, ptr %i.j, align 8
  %i.df = tail call ptr %i.da(ptr %i.de, ptr noundef null, i64 noundef %i.dd) #50 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !350
  %.not139 = icmp eq ptr %i.df, null
  br i1 %.not139, label %bb.x, label %bb.n

bb.n:                                             ; preds = %nk_memset.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i16 181, ptr %i.di, align 4, !tbaa !944
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i16 28, ptr %i.dj, align 2, !tbaa !945
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !355
  %i.dl = load i32, ptr %i.o, align 8, !tbaa !361
  %i.dm = call fastcc i32 @nk_font_bake_pack(ptr noundef nonnull %i.ca, ptr noundef %i.a, ptr noundef %1, ptr noundef %2, ptr noundef %i.dh, ptr noundef %i.dk, i32 noundef %i.dl, ptr noundef %i.e)
  %.not140 = icmp eq i32 %i.dm, 0
  br i1 %.not140, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !346
  %i.do = load i64, ptr %i.a, align 8, !tbaa !79
  %i.dp = load ptr, ptr %i.e, align 8
  %i.dq = tail call ptr %i.dn(ptr %i.dp, ptr noundef null, i64 noundef %i.do) #50 ; 3 uses
  store ptr %i.dq, ptr %0, align 8, !tbaa !351
  %.not141 = icmp eq ptr %i.dq, null
  br i1 %.not141, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = load i32, ptr %1, align 4, !tbaa !55
  %i.ds = load i32, ptr %2, align 4, !tbaa !55
  %i.dt = load ptr, ptr %i.dg, align 8, !tbaa !350
  %i.du = load i32, ptr %i.q, align 8, !tbaa !943
  %i.dv = load ptr, ptr %i.r, align 8, !tbaa !355
  %i.dw = load i32, ptr %i.o, align 8, !tbaa !361
  tail call fastcc void @nk_font_bake(ptr noundef nonnull %i.ca, ptr noundef %i.dq, i32 noundef %i.dr, i32 noundef %i.ds, ptr noundef %i.dt, i32 noundef %i.du, ptr noundef %i.dv, i32 noundef %i.dw)
  %i.dx = load ptr, ptr %0, align 8, !tbaa !351
  %i.dy = load i32, ptr %1, align 4, !tbaa !55
  %i.dz = load i32, ptr %2, align 4, !tbaa !55
  %i.ea = load i64, ptr %i.dh, align 8
  tail call fastcc void @nk_font_bake_custom_data(ptr noundef %i.dx, i32 noundef %i.dy, i32 noundef %i.dz, i64 %i.ea)
  %i.eb = icmp eq i32 %3, 1
  br i1 %i.eb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !346
  %i.ed = load i32, ptr %1, align 4, !tbaa !55
  %i.ee = load i32, ptr %2, align 4, !tbaa !55
  %i.ef = shl i32 %i.ed, 2
  %i.eg = mul i32 %i.ef, %i.ee
  %i.eh = sext i32 %i.eg to i64
  %i.ei = load ptr, ptr %i.e, align 8
  %i.ej = tail call ptr %i.ec(ptr %i.ei, ptr noundef null, i64 noundef %i.eh) #50 ; 8 uses
  %.not142 = icmp eq ptr %i.ej, null
  br i1 %.not142, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = load i32, ptr %1, align 4, !tbaa !55
  %i.el = load i32, ptr %2, align 4, !tbaa !55
  %i.em = load ptr, ptr %0, align 8, !tbaa !351   ; 8 uses
  %i.en = icmp ne ptr %i.em, null
  %i.eo = mul i32 %i.el, %i.ek                    ; 8 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  %or.cond.i = and i1 %i.ep, %i.en
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %.thread

.lr.ph.i.preheader:                               ; preds = %bb.r
  %i.eq = zext nneg i32 %i.eo to i64              ; 2 uses
  %min.iters.check219 = icmp ult i32 %i.eo, 12
  br i1 %min.iters.check219, label %.lr.ph.i.preheader235, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.er = add nsw i32 %i.eo, -1
  %i.es = zext i32 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 2
  %i.eu = getelementptr i8, ptr %i.ej, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %i.ew = zext nneg i32 %i.eo to i64
  %i.ex = getelementptr i8, ptr %i.em, i64 %i.ew
  %bound0 = icmp ult ptr %i.ej, %i.ex
  %bound1 = icmp ult ptr %i.em, %i.ev
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader235, label %vector.ph220

vector.ph220:                                     ; preds = %vector.memcheck
  %n.vec221 = and i64 %i.eq, 2147483640           ; 5 uses
  %i.ey = getelementptr i8, ptr %i.em, i64 %n.vec221
  %i.ez = shl nuw nsw i64 %n.vec221, 2
  %i.fa = getelementptr i8, ptr %i.ej, i64 %i.ez
  %i.fb = trunc nuw nsw i64 %n.vec221 to i32
  %i.fc = sub nsw i32 %i.eo, %i.fb
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next226, %vector.body222 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.em, i64 %index223 ; 2 uses
  %i.fd = shl i64 %index223, 2
  %next.gep224 = getelementptr i8, ptr %i.ej, i64 %i.fd ; 2 uses
  %i.fe = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !56, !alias.scope !946
  %wide.load225 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !56, !alias.scope !946
  %i.ff = zext <4 x i8> %wide.load to <4 x i32>
  %i.fg = zext <4 x i8> %wide.load225 to <4 x i32>
  %i.fh = shl nuw <4 x i32> %i.ff, splat (i32 24)
  %i.fi = shl nuw <4 x i32> %i.fg, splat (i32 24)
  %i.fj = or disjoint <4 x i32> %i.fh, splat (i32 16777215)
  %i.fk = or disjoint <4 x i32> %i.fi, splat (i32 16777215)
  %i.fl = getelementptr i8, ptr %next.gep224, i64 16
  store <4 x i32> %i.fj, ptr %next.gep224, align 4, !tbaa !55, !alias.scope !947, !noalias !946
  store <4 x i32> %i.fk, ptr %i.fl, align 4, !tbaa !55, !alias.scope !947, !noalias !946
  %index.next226 = add nuw i64 %index223, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.fm, label %middle.block227, label %vector.body222, !llvm.loop !940

middle.block227:                                  ; preds = %vector.body222
  %cmp.n228 = icmp eq i64 %n.vec221, %i.eq
  br i1 %cmp.n228, label %.thread, label %.lr.ph.i.preheader235

.lr.ph.i.preheader235:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block227
  %.024.i.ph = phi ptr [ %i.em, %vector.memcheck ], [ %i.em, %.lr.ph.i.preheader ], [ %i.ey, %middle.block227 ]
  %.01623.i.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph.i.preheader ], [ %i.fa, %middle.block227 ]
  %.01722.i.ph = phi i32 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i.preheader ], [ %i.fc, %middle.block227 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader235, %.lr.ph.i
  %.024.i = phi ptr [ %i.fn, %.lr.ph.i ], [ %.024.i.ph, %.lr.ph.i.preheader235 ] ; 2 uses
  %.01623.i = phi ptr [ %i.fs, %.lr.ph.i ], [ %.01623.i.ph, %.lr.ph.i.preheader235 ] ; 2 uses
  %.01722.i = phi i32 [ %i.ft, %.lr.ph.i ], [ %.01722.i.ph, %.lr.ph.i.preheader235 ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %i.fo = load i8, ptr %.024.i, align 1, !tbaa !56
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw i32 %i.fp, 24
  %i.fr = or disjoint i32 %i.fq, 16777215
  %i.fs = getelementptr inbounds nuw i8, ptr %.01623.i, i64 4
  store i32 %i.fr, ptr %.01623.i, align 4, !tbaa !55
  %i.ft = add nsw i32 %.01722.i, -1
  %i.fu = icmp samesign ugt i32 %.01722.i, 1
  br i1 %i.fu, label %.lr.ph.i, label %.thread, !llvm.loop !941

.thread:                                          ; preds = %.lr.ph.i, %middle.block227, %bb.r
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !347
  %i.fw = load ptr, ptr %i.e, align 8
  tail call void %i.fv(ptr %i.fw, ptr noundef %i.em) #50
  store ptr %i.ej, ptr %0, align 8, !tbaa !351
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.p
  %i.fx = load i32, ptr %1, align 4, !tbaa !55
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !948
  %i.fz = load i32, ptr %2, align 4, !tbaa !55    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !949
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.0123165 = load ptr, ptr %i.gb, align 8, !tbaa !373 ; 2 uses
  %.not145166 = icmp eq ptr %.0123165, null
  br i1 %.not145166, label %.preheader, label %.lr.ph
end_hunk_4
begin_hunk_5_@nk_font_bake_pack:bb.a
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !55
  %i.de = sub i32 %i.dd, %i.da
  %i.df = add nsw i32 %i.de, 1                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !316
  %i.dh = sext i32 %.2219 to i64
  %i.di = getelementptr inbounds [28 x i8], ptr %i.cx, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !319
  %i.dk = add nsw i32 %i.df, %.2219               ; 2 uses
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !966

._crit_edge:                                      ; preds = %bb.i, %.critedge
  %.2.lcssa = phi i32 [ %.1, %.critedge ], [ %i.dk, %bb.i ] ; 2 uses
  %i.dl = load ptr, ptr %i.bz, align 8, !tbaa !371
  %i.dm = sext i32 %.1144 to i64
  %i.dn = getelementptr inbounds [24 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 160 ; 3 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !379
  %i.dp = add nsw i32 %.0141.lcssa, %.1144        ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.2160, i64 28
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !340 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.2160, i64 27
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !341 ; 2 uses
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = icmp ult i8 %i.dr, 9
  br i1 %i.dv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.dw = zext nneg i8 %i.dr to i32
  store i32 %i.dw, ptr %i.be, align 4, !tbaa !310
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.dx = icmp ult i8 %i.dt, 9
  br i1 %i.dx, label %bb.l, label %stbtt_PackSetOversampling.exit

bb.l:                                             ; preds = %bb.k
  store i32 %i.du, ptr %i.bf, align 8, !tbaa !311
  br label %stbtt_PackSetOversampling.exit

stbtt_PackSetOversampling.exit:                   ; preds = %bb.k, %bb.l
  %i.dy = call i32 @stbtt_PackFontRangesGatherRects(ptr noundef nonnull %i.au, ptr noundef nonnull %i.cc, ptr noundef %i.cr, i32 noundef %.0153.lcssa, ptr noundef %i.dn) ; 5 uses
  %i.dz = load ptr, ptr %i.bg, align 8, !tbaa !972
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !379
  %i.eb = call i32 @stbrp_pack_rects(ptr noundef %i.dz, ptr noundef %i.ea, i32 noundef %i.dy) ; 0 uses
  %i.ec = icmp sgt i32 %i.dy, 0
  br i1 %i.ec, label %.lr.ph223, label %._crit_edge224

.lr.ph223:                                        ; preds = %stbtt_PackSetOversampling.exit
  %i.ed = load ptr, ptr %i.do, align 8, !tbaa !379 ; 3 uses
  %wide.trip.count246 = zext nneg i32 %i.dy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count246, 1
  %i.ee = icmp eq i32 %i.dy, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph223.new

.lr.ph223.new:                                    ; preds = %.lr.ph223
  %unroll_iter = and i64 %wide.trip.count246, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph223.new
  %indvars.iv243 = phi i64 [ 0, %.lr.ph223.new ], [ %indvars.iv.next244.1, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph223.new ], [ %niter.next.1, %bb.q ]
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv243 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !257
  %.not185 = icmp eq i32 %i.eh, 0
  br i1 %.not185, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ei = load i32, ptr %3, align 4, !tbaa !55
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !261
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !259
  %i.en = add nsw i32 %i.em, %i.ek
  %. = call i32 @llvm.smax.i32(i32 %i.ei, i32 %i.en)
  store i32 %., ptr %3, align 4, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv243 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !257
  %.not185.1 = icmp eq i32 %i.eq, 0
  br i1 %.not185.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.er = load i32, ptr %3, align 4, !tbaa !55
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.et = load i32, ptr %i.es, align 4, !tbaa !261
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !259
  %i.ew = add nsw i32 %i.ev, %i.et
  %..1 = call i32 @llvm.smax.i32(i32 %i.er, i32 %i.ew)
  store i32 %..1, ptr %3, align 4, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next244.1 = add nuw nsw i64 %indvars.iv243, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge224.loopexit.unr-lcssa, label %bb.m, !llvm.loop !967

._crit_edge224.loopexit.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge224, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge224.loopexit.unr-lcssa, %.lr.ph223
  %indvars.iv243.epil.init = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next244.1, %._crit_edge224.loopexit.unr-lcssa ]
  %lcmp.mod284 = trunc i32 %i.dy to i1
  call void @llvm.assume(i1 %lcmp.mod284)
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv243.epil.init ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !257
  %.not185.epil = icmp eq i32 %i.ez, 0
  br i1 %.not185.epil, label %._crit_edge224, label %bb.r

bb.r:                                             ; preds = %.epil.preheader
  %i.fa = load i32, ptr %3, align 4, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !261
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !259
  %i.ff = add nsw i32 %i.fe, %i.fc
  %..epil = call i32 @llvm.smax.i32(i32 %i.fa, i32 %i.ff)
  store i32 %..epil, ptr %3, align 4, !tbaa !55
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.loopexit.unr-lcssa, %bb.r, %.epil.preheader, %stbtt_PackSetOversampling.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %.2160, i64 72
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !338 ; 2 uses
  %.not184 = icmp eq ptr %i.fh, %.2163225
  br i1 %.not184, label %bb.s, label %bb.g, !llvm.loop !968

bb.s:                                             ; preds = %._crit_edge224
  %i.fi = trunc nsw i64 %indvars.iv.next249 to i32
  %i.fj = load ptr, ptr %.2163225, align 8, !tbaa !356 ; 2 uses
  %i.fk = icmp sgt i32 %6, %i.fi
  %i.fl = icmp ne ptr %i.fj, null
  %i.fm = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %i.fm, label %.preheader, label %._crit_edge230.loopexit, !llvm.loop !969

._crit_edge230.loopexit:                          ; preds = %bb.s
  %.pre = load i32, ptr %3, align 4, !tbaa !55
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %.loopexit46.i.i.thread
  %i.fn = phi i32 [ %.pre, %._crit_edge230.loopexit ], [ %i.bo, %.loopexit46.i.i.thread ]
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  %i.fp = lshr i32 %i.fo, 1
  %i.fq = or i32 %i.fp, %i.fo                     ; 2 uses
  %i.fr = lshr i32 %i.fq, 2
  %i.fs = or i32 %i.fr, %i.fq                     ; 2 uses
  %i.ft = lshr i32 %i.fs, 4
  %i.fu = or i32 %i.ft, %i.fs                     ; 2 uses
  %i.fv = lshr i32 %i.fu, 8
  %i.fw = or i32 %i.fv, %i.fu                     ; 2 uses
  %i.fx = lshr i32 %i.fw, 16
  %i.fy = or i32 %i.fx, %i.fw
  %i.fz = add i32 %i.fy, 1                        ; 2 uses
  store i32 %i.fz, ptr %3, align 4, !tbaa !55
  %i.ga = load i32, ptr %2, align 4, !tbaa !55
  %i.gb = sext i32 %i.ga to i64
  %i.gc = sext i32 %i.fz to i64
  %i.gd = mul nsw i64 %i.gc, %i.gb
  store i64 %i.gd, ptr %1, align 8, !tbaa !79
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %._crit_edge230
  %.3167 = phi i32 [ 0, %bb.a ], [ 1, %._crit_edge230 ], [ 0, %bb.d ]
  ret i32 %.3167
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_font_bake(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef readonly captures(address) %6, i32 noundef %7) unnamed_addr #17 {
bb.a:
  %i.a = icmp ne i32 %2, 0
  %i.b = icmp ne i32 %3, 0
  %or.cond3 = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %6, null
  %or.cond5 = and i1 %or.cond3, %i.c
  %i.d = icmp ne i32 %7, 0
  %or.cond7 = and i1 %or.cond5, %i.d
  %i.e = icmp ne ptr %4, null
  %or.cond9 = and i1 %i.e, %or.cond7
  %i.f = icmp ne i32 %5, 0
  %or.cond11 = and i1 %i.f, %or.cond9
  br i1 %or.cond11, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %2 to i64
  %i.h = sext i32 %3 to i64
  %i.i = mul nsw i64 %i.h, %i.g                   ; 4 uses
  %i.j = icmp ult i64 %i.i, 12
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %bb.c

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 range(i64 0, 12) %i.i, i1 false), !tbaa !56
  br label %nk_zero.exit

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64
  %i.l = and i64 %i.k, 3                          ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %.loopexit46.i.i, label %.loopexit46.loopexit.i.i

.loopexit46.loopexit.i.i:                         ; preds = %bb.c
  %i.m = sub nuw nsw i64 4, %i.l                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 0, i64 range(i64 0, 4) %i.m, i1 false), !tbaa !56
  %i.n = sub nuw nsw i64 %i.i, %i.m
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.m
  br label %.loopexit46.i.i

.loopexit46.i.i:                                  ; preds = %.loopexit46.loopexit.i.i, %bb.c
  %.132.i.i = phi i64 [ %i.i, %bb.c ], [ %i.n, %.loopexit46.loopexit.i.i ] ; 2 uses
  %.230.i.i = phi ptr [ %1, %bb.c ], [ %scevgep.i.i, %.loopexit46.loopexit.i.i ] ; 2 uses
  %i.o = and i64 %.132.i.i, -4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.230.i.i, i8 0, i64 %i.o, i1 false), !tbaa !55
  %i.p = and i64 %.132.i.i, 3                     ; 2 uses
  %.not41.i.i = icmp eq i64 %i.p, 0
  br i1 %.not41.i.i, label %nk_zero.exit, label %.preheader44.preheader.i.i

.preheader44.preheader.i.i:                       ; preds = %.loopexit46.i.i
  %scevgep53.i.i = getelementptr i8, ptr %.230.i.i, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.p, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.lr.ph.preheader.i.i, %.loopexit46.i.i, %.preheader44.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.r, align 8, !tbaa !982
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %3, ptr %i.s, align 4, !tbaa !983
  %i.t = icmp sgt i32 %7, 0                       ; 2 uses
  br i1 %i.t, label %.preheader160.lr.ph, label %._crit_edge

.preheader160.lr.ph:                              ; preds = %nk_zero.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader160

.preheader160:                                    ; preds = %.preheader160.lr.ph, %bb.h
  %.0133164 = phi i64 [ 0, %.preheader160.lr.ph ], [ %indvars.iv.next, %bb.h ]
  %.0139163 = phi ptr [ %6, %.preheader160.lr.ph ], [ %i.ar, %bb.h ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader160, %stbtt_PackSetOversampling.exit
  %indvars.iv = phi i64 [ %.0133164, %.preheader160 ], [ %indvars.iv.next, %stbtt_PackSetOversampling.exit ] ; 2 uses
  %.0137 = phi ptr [ %.0139163, %.preheader160 ], [ %i.ap, %stbtt_PackSetOversampling.exit ] ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !369
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.y = getelementptr inbounds [184 x i8], ptr %i.x, i64 %indvars.iv ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0137, i64 28
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !340  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0137, i64 27
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !341 ; 2 uses
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = icmp ult i8 %i.aa, 9
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = zext nneg i8 %i.aa to i32
  store i32 %i.af, ptr %i.v, align 4, !tbaa !310
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = icmp ult i8 %i.ac, 9
  br i1 %i.ag, label %bb.g, label %stbtt_PackSetOversampling.exit

bb.g:                                             ; preds = %bb.f
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !311
  br label %stbtt_PackSetOversampling.exit

stbtt_PackSetOversampling.exit:                   ; preds = %bb.f, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !377
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !378
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !379
  %i.an = tail call i32 @stbtt_PackFontRangesRenderIntoRects(ptr noundef nonnull %i.q, ptr noundef %i.y, ptr noundef %i.ai, i32 noundef %i.ak, ptr noundef %i.am) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0137, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !338 ; 2 uses
  %.not146 = icmp eq ptr %i.ap, %.0139163
  br i1 %.not146, label %bb.h, label %bb.d, !llvm.loop !975

bb.h:                                             ; preds = %stbtt_PackSetOversampling.exit
  %i.aq = trunc nsw i64 %indvars.iv.next to i32
  %i.ar = load ptr, ptr %.0139163, align 8, !tbaa !356 ; 2 uses
  %i.as = icmp sgt i32 %7, %i.aq
  %i.at = icmp ne ptr %i.ar, null
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.preheader160, label %._crit_edge, !llvm.loop !976

._crit_edge:                                      ; preds = %bb.h, %nk_zero.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !307
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !304 ; 2 uses
  %.val5.i = load ptr, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %.val6.i = load ptr, ptr %i.ay, align 8, !tbaa !278
  tail call void %.val6.i(ptr %.val5.i, ptr noundef %i.aw) #50, !inline_history !977
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !306
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !304 ; 2 uses
  %.val.i = load ptr, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.val4.i = load ptr, ptr %i.bc, align 8, !tbaa !278
  tail call void %.val4.i(ptr %.val.i, ptr noundef %i.ba) #50, !inline_history !977
  br i1 %i.t, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !369
  %i.bf = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.bg = insertelement <2 x i32> %i.bf, i32 %3, i64 1
  %i.bh = sitofp <2 x i32> %i.bg to <2 x float>   ; 2 uses
  %i.bi = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.bh
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bk = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.n
  %.2177 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next188, %bb.n ]
  %.0135176 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fn, %bb.n ]
  %.1140175 = phi ptr [ %6, %.preheader.lr.ph ], [ %i.fr, %bb.n ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %._crit_edge173
  %indvars.iv187 = phi i64 [ %.2177, %.preheader ], [ %indvars.iv.next188, %._crit_edge173 ] ; 2 uses
  %.1138 = phi ptr [ %.1140175, %.preheader ], [ %i.fp, %._crit_edge173 ] ; 8 uses
  %.1136 = phi i32 [ %.0135176, %.preheader ], [ %i.fn, %._crit_edge173 ] ; 2 uses
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 3 uses
  %i.bl = getelementptr inbounds [184 x i8], ptr %i.be, i64 %indvars.iv187 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1138, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !359 ; 10 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1138, i64 25
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !354
  %.not = icmp eq i8 %i.bp, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.1138, i64 32
  %i.br = load float, ptr %i.bq, align 8, !tbaa !339 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !264
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !282
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %i.bw ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.val6.i147 = load i8, ptr %i.by, align 1, !tbaa !56
  %i.bz = zext i8 %.val6.i147 to i16
  %i.ca = shl nuw i16 %i.bz, 8
  %i.cb = getelementptr i8, ptr %i.bx, i64 5
  %.val7.i = load i8, ptr %i.cb, align 1, !tbaa !56
  %i.cc = zext i8 %.val7.i to i16
  %i.cd = or disjoint i16 %i.ca, %i.cc            ; 2 uses
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 6
  %.val.i148 = load i8, ptr %i.cf, align 1, !tbaa !56
  %i.cg = zext i8 %.val.i148 to i16
  %i.ch = shl nuw i16 %i.cg, 8
  %i.ci = getelementptr i8, ptr %i.bx, i64 7
  %.val5.i149 = load i8, ptr %i.ci, align 1, !tbaa !56
  %i.cj = zext i8 %.val5.i149 to i16
  %i.ck = or disjoint i16 %i.ch, %i.cj            ; 2 uses
  %i.cl = sext i16 %i.ck to i32
  %i.cm = sub nsw i32 %i.ce, %i.cl
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fdiv float %i.br, %i.cn                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1138, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !337
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !984
  store float %i.br, ptr %i.bn, align 8, !tbaa !985
  %i.cs = sitofp i16 %i.cd to float
  %i.ct = fmul float %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.ct, ptr %i.cu, align 4, !tbaa !986
  %i.cv = sitofp i16 %i.ck to float
  %i.cw = fmul float %i.co, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store float %i.cw, ptr %i.cx, align 8, !tbaa !987
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 %.1136, ptr %i.cy, align 4, !tbaa !375
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 0, ptr %i.cz, align 8, !tbaa !988
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  %i.db = load i32, ptr %i.da, align 8, !tbaa !378 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %.not178 = icmp eq i32 %i.db, 0
  br i1 %.not178, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 168
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !377
  %i.df = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.1138, i64 36
  %i.dj = getelementptr inbounds nuw i8, ptr %.1138, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %.1138, i64 26
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph172, %._crit_edge168
  %.0170 = phi i32 [ 0, %.lr.ph172 ], [ %.1.lcssa, %._crit_edge168 ] ; 2 uses
  %.0132169 = phi i64 [ 0, %.lr.ph172 ], [ %i.fj, %._crit_edge168 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %.0132169 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !316 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph, label %._crit_edge168

.lr.ph:                                           ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !319
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !318
  %i.dt = load i32, ptr %i.df, align 4, !tbaa !375
  %i.du = load i32, ptr %i.dg, align 8, !tbaa !988
end_hunk_5
begin_hunk_6_@nk_style_pop_vec2:bb.a
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !445
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !54
  store i64 %i.j, ptr %i.h, align 4, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @nk_style_pop_flags(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #31 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11448 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !446  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11456
  %i.e = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !446
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !449
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !448
  store i32 %i.i, ptr %i.j, align 4, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @nk_style_pop_color(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #31 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11968 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !450  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11976
  %i.e = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !450
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !453
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  store i32 %i.j, ptr %i.h, align 1, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @nk_style_set_cursor(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !221  ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1024
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_style_show_cursor(ptr nofree noundef writeonly captures(none) initializes((472, 476)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 1, ptr %i.a, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_style_hide_cursor(ptr nofree noundef writeonly captures(none) initializes((472, 476)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 0, ptr %i.a, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_style_load_cursor(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  store ptr %2, ptr %i.c, align 8, !tbaa !221
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_style_load_all_cursors(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %1, ptr %i.a, align 8, !tbaa !221
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.b, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.d, ptr %i.e, align 8, !tbaa !221
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.f, ptr %i.g, align 8, !tbaa !221
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.h, ptr %i.i, align 8, !tbaa !221
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.j, ptr %i.k, align 8, !tbaa !221
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.l, ptr %i.m, align 8, !tbaa !221
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 1, ptr %i.n, align 8, !tbaa !1025
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_init_default(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %2 = alloca %struct.nk_allocator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store ptr null, ptr %2, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @nk_malloc, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @nk_mfree, ptr %i.b, align 8, !tbaa !278
  %i.c = call zeroext i1 @nk_init(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #17 {
bb.a:
  %.not = icmp ne ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 3                          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18584) %0, i8 0, i64 18584, i1 false), !tbaa !55
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.c
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.c, i1 false), !tbaa !56
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18580) %scevgep.i.i.i, i8 0, i64 18580, i1 false), !tbaa !55
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 18580
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 range(i64 0, 4) %i.b, i1 false), !tbaa !56
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  tail call void @nk_style_from_table(ptr noundef nonnull %0, ptr noundef null)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18580
  store i32 1, ptr %i.d, align 4, !tbaa !237
  %.not9.i = icmp eq ptr %2, null
  br i1 %.not9.i, label %.loopexit46.i.i.thread.i.i, label %bb.d

bb.d:                                             ; preds = %nk_zero.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %2, ptr %i.e, align 8, !tbaa !426
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %nk_zero.exit.i, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.f, i8 0, i64 240, i1 false), !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12784
  store <8 x float> <float 9.999600e-01, float f0x0C780258, float f0x3F5DB17E, float f0x3EFFD2D5, float f0x3F00014E, float f0x3F5DD0D5, float f0x37AFE632, float 1.000840e+00>, ptr %i.g, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12816
  store <8 x float> <float f0xBF000287, float f0x3F5DC1C2, float f0xBF5DB41F, float f0x3EFFDD26, float f0xBF7FFD5E, float -6.741250e-08, float f0xBF5DB431, float f0xBEFFDD1E>, ptr %i.h, align 4, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12848
  store <8 x float> <float -5.000380e-01, float f0xBF5DC1C0, float f0x37B6FBCF, float f0xBF801B88, float f0x3F000136, float f0xBF5DD0DD, float f0x3F5DB1C5, float f0xBEFFD22A>, ptr %i.i, align 4, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit46.i.i.thread.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9736 ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 3                          ; 3 uses
  %.not.i.i.i10 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i10, label %.loopexit46.i.i.thread.i15, label %.loopexit46.i.i.i11

.loopexit46.i.i.thread.i15:                       ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.j, i8 0, i64 120, i1 false), !tbaa !55
  br label %nk_buffer_init.exit

.loopexit46.i.i.i11:                              ; preds = %.loopexit
  %i.m = sub nuw nsw i64 4, %i.l                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 0, i64 range(i64 0, 4) %i.m, i1 false), !tbaa !56
  %scevgep.i.i.i12 = getelementptr i8, ptr %i.j, i64 %i.m ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i12, i8 0, i64 116, i1 false), !tbaa !55
  %scevgep53.i.i.i13 = getelementptr i8, ptr %scevgep.i.i.i12, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i13, i8 0, i64 range(i64 0, 4) %i.l, i1 false), !tbaa !56
  br label %nk_buffer_init.exit

nk_buffer_init.exit:                              ; preds = %.loopexit46.i.i.thread.i15, %.loopexit46.i.i.i11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9792
  store i32 1, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.q = load ptr, ptr %1, align 8
  %i.r = tail call ptr %i.p(ptr %i.q, ptr noundef null, i64 noundef 4096) #50, !inline_history !92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9800
  store ptr %i.r, ptr %i.s, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9808
  store i64 4096, ptr %i.t, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 9848
  store i64 4096, ptr %i.u, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 9816
  store float 2.000000e+00, ptr %i.v, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, i8 0, i64 72, i1 false), !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i32 16, ptr %i.y, align 8, !tbaa !454
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18488
  store i32 1, ptr %i.z, align 8, !tbaa !455
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18496
  store ptr null, ptr %i.aa, align 8, !tbaa !456
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18460
  store i32 1, ptr %i.ab, align 4, !tbaa !457
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %nk_buffer_init.exit
  ret i1 %.not
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @nk_init_fixed(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #19 {
bb.a:
  %.not = icmp ne ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_setup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 3                          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18584) %0, i8 0, i64 18584, i1 false), !tbaa !55
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.c
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.c, i1 false), !tbaa !56
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18580) %scevgep.i.i.i, i8 0, i64 18580, i1 false), !tbaa !55
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 18580
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 range(i64 0, 4) %i.b, i1 false), !tbaa !56
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  tail call void @nk_style_from_table(ptr noundef nonnull %0, ptr noundef null)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18580
  store i32 1, ptr %i.d, align 4, !tbaa !237
  %.not9.i = icmp eq ptr %3, null
  br i1 %.not9.i, label %.loopexit46.i.i.thread.i.i, label %bb.d

bb.d:                                             ; preds = %nk_zero.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %3, ptr %i.e, align 8, !tbaa !426
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %nk_zero.exit.i, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.f, i8 0, i64 240, i1 false), !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12784
  store <8 x float> <float 9.999600e-01, float f0x0C780258, float f0x3F5DB17E, float f0x3EFFD2D5, float f0x3F00014E, float f0x3F5DD0D5, float f0x37AFE632, float 1.000840e+00>, ptr %i.g, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12816
  store <8 x float> <float f0xBF000287, float f0x3F5DC1C2, float f0xBF5DB41F, float f0x3EFFDD26, float f0xBF7FFD5E, float -6.741250e-08, float f0xBF5DB431, float f0xBEFFDD1E>, ptr %i.h, align 4, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12848
  store <8 x float> <float -5.000380e-01, float f0xBF5DC1C0, float f0x37B6FBCF, float f0xBF801B88, float f0x3F000136, float f0xBF5DD0DD, float f0x3F5DB1C5, float f0xBEFFD22A>, ptr %i.i, align 4, !tbaa !54
  br label %nk_setup.exit

nk_setup.exit:                                    ; preds = %.loopexit46.i.i.thread.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9736 ; 4 uses
  %.not14 = icmp eq i64 %2, 0
  br i1 %.not14, label %nk_buffer_init_fixed.exit, label %bb.e

bb.e:                                             ; preds = %nk_setup.exit
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 3                          ; 3 uses
  %.not.i.i.i8 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i8, label %.loopexit46.i.i.thread.i13, label %.loopexit46.i.i.i9

.loopexit46.i.i.thread.i13:                       ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.j, i8 0, i64 112, i1 false), !tbaa !55
  br label %nk_zero.exit.i12

.loopexit46.i.i.i9:                               ; preds = %bb.e
  %i.m = sub nuw nsw i64 4, %i.l                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 0, i64 range(i64 0, 4) %i.m, i1 false), !tbaa !56
  %scevgep.i.i.i10 = getelementptr i8, ptr %i.j, i64 %i.m ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i10, i8 0, i64 116, i1 false), !tbaa !55
  %scevgep53.i.i.i11 = getelementptr i8, ptr %scevgep.i.i.i10, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i11, i8 0, i64 range(i64 0, 4) %i.l, i1 false), !tbaa !56
  br label %nk_zero.exit.i12

nk_zero.exit.i12:                                 ; preds = %.loopexit46.i.i.i9, %.loopexit46.i.i.thread.i13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9792
  store i32 0, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9800
  store ptr %1, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9808
  store i64 %2, ptr %i.p, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9848
  store i64 %2, ptr %i.q, align 8, !tbaa !71
  br label %nk_buffer_init_fixed.exit

nk_buffer_init_fixed.exit:                        ; preds = %nk_setup.exit, %nk_zero.exit.i12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18460
  store i32 0, ptr %i.r, align 4, !tbaa !457
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_buffer_init_fixed.exit
  ret i1 %.not
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @nk_init_custom(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b                    ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_setup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18584) %0, i8 0, i64 18584, i1 false), !tbaa !55
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.c
  %i.e = sub nuw nsw i64 4, %i.d                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18580) %scevgep.i.i.i, i8 0, i64 18580, i1 false), !tbaa !55
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 18580
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 range(i64 0, 4) %i.d, i1 false), !tbaa !56
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  tail call void @nk_style_from_table(ptr noundef nonnull %0, ptr noundef null)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18580
  store i32 1, ptr %i.f, align 4, !tbaa !237
  %.not9.i = icmp eq ptr %3, null
  br i1 %.not9.i, label %.loopexit46.i.i.thread.i.i, label %bb.d

bb.d:                                             ; preds = %nk_zero.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %3, ptr %i.g, align 8, !tbaa !426
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %nk_zero.exit.i, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.h, i8 0, i64 240, i1 false), !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12784
  store <8 x float> <float 9.999600e-01, float f0x0C780258, float f0x3F5DB17E, float f0x3EFFD2D5, float f0x3F00014E, float f0x3F5DD0D5, float f0x37AFE632, float 1.000840e+00>, ptr %i.i, align 4, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12816
  store <8 x float> <float f0xBF000287, float f0x3F5DC1C2, float f0xBF5DB41F, float f0x3EFFDD26, float f0xBF7FFD5E, float -6.741250e-08, float f0xBF5DB431, float f0xBEFFDD1E>, ptr %i.j, align 4, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12848
  store <8 x float> <float -5.000380e-01, float f0xBF5DC1C0, float f0x37B6FBCF, float f0xBF801B88, float f0x3F000136, float f0xBF5DD0DD, float f0x3F5DB1C5, float f0xBEFFD22A>, ptr %i.k, align 4, !tbaa !54
  br label %nk_setup.exit

nk_setup.exit:                                    ; preds = %.loopexit46.i.i.thread.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !tbaa.struct !1026
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !68
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.loopexit46.i.i.thread.i23, label %.loopexit46.i.i.thread.i29

.loopexit46.i.i.thread.i23:                       ; preds = %nk_setup.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !70   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, i8 0, i64 72, i1 false), !tbaa !55
  %i.u = icmp ult i64 %i.s, 608
  br i1 %i.u, label %nk_pool_init_fixed.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit46.i.i.thread.i23
  %i.v = add i64 %i.s, -608
  %i.w = udiv i64 %i.v, 592
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i32 %i.y, ptr %i.z, align 8, !tbaa !454
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18496
  store ptr %i.q, ptr %i.aa, align 8, !tbaa !456
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18488
  store i32 0, ptr %i.ab, align 8, !tbaa !455
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18520
  store i64 %i.s, ptr %i.ac, align 8, !tbaa !1027
  br label %nk_pool_init_fixed.exit

.loopexit46.i.i.thread.i29:                       ; preds = %nk_setup.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i8 0, i64 72, i1 false), !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !75
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i32 16, ptr %i.af, align 8, !tbaa !454
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 18488
  store i32 1, ptr %i.ag, align 8, !tbaa !455
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18496
  store ptr null, ptr %i.ah, align 8, !tbaa !456
  br label %nk_pool_init_fixed.exit

nk_pool_init_fixed.exit:                          ; preds = %bb.e, %.loopexit46.i.i.thread.i23, %.loopexit46.i.i.thread.i29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18460
  store i32 1, ptr %i.ai, align 4, !tbaa !457
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_pool_init_fixed.exit
  ret i1 %or.cond
}

; Function Attrs: nounwind uwtable
define void @nk_free(ptr noundef %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9800
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %nk_buffer_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9792
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %nk_buffer_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9784
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %nk_buffer_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9768
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.h(ptr %i.j, ptr noundef nonnull %i.c) #50, !inline_history !95
  br label %nk_buffer_free.exit

nk_buffer_free.exit:                              ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.l = load i32, ptr %i.k, align 4, !tbaa !457
  %.not15 = icmp eq i32 %i.l, 0
  br i1 %.not15, label %.loopexit46.i.i.thread, label %bb.f

bb.f:                                             ; preds = %nk_buffer_free.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !456  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.q = load i32, ptr %i.p, align 8, !tbaa !455
  %i.r = icmp eq i32 %i.q, 0
  %.not10.i16 = icmp eq ptr %i.o, null
  %or.cond.i = select i1 %i.r, i1 true, i1 %.not10.i16
  br i1 %or.cond.i, label %.loopexit46.i.i.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18480
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.011.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.u, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !459  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1030
  %i.w = load ptr, ptr %i.m, align 8
  tail call void %i.v(ptr %i.w, ptr noundef nonnull %.011.i) #50, !inline_history !1028
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.loopexit46.i.i.thread, label %bb.g, !llvm.loop !1029

.loopexit46.i.i.thread:                           ; preds = %bb.g, %nk_buffer_free.exit, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %0, i8 0, i64 392, i1 false), !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9344) %i.x, i8 0, i64 9344, i1 false), !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false), !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18456
  store i32 0, ptr %i.y, align 8, !tbaa !218
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.loopexit46.i.i.thread
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_clear(ptr noundef %0) local_unnamed_addr #32 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18460 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !457
  %.not65 = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9832 ; 3 uses
  br i1 %.not65, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9824
  store i64 0, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.f = load i64, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9848
  store i64 %i.f, ptr %i.g, align 8, !tbaa !71
  store i64 0, ptr %i.c, align 8
  br label %.loopexit46.i.thread

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9736 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9824 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9744
  %i.l = load i64, ptr %i.k, align 8, !tbaa !87   ; 2 uses
  %.neg.i = sub i64 %i.l, %i.j
  %i.m = load i64, ptr %i.c, align 8, !tbaa !76
  %i.n = add i64 %.neg.i, %i.m
  store i64 %i.n, ptr %i.c, align 8, !tbaa !76
  %i.o = load i8, ptr %i.h, align 8, !tbaa !86, !range !88, !noundef !89
  %i.p = trunc nuw i8 %i.o to i1
  %spec.select.i = select i1 %i.p, i64 %i.l, i64 0
  store i64 %spec.select.i, ptr %i.i, align 8, !tbaa !77
  store i8 0, ptr %i.h, align 8, !tbaa !86
  br label %.loopexit46.i.thread

.loopexit46.i.thread:                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 18456
  store i32 0, ptr %i.q, align 8, !tbaa !218
end_hunk_6
begin_hunk_7_@nk_begin_titled:bb.a
  %i.hb = and i32 %i.go, 8192
  %.not255 = icmp eq i32 %i.hb, 0
  %or.cond333 = and i1 %.not255, %or.cond274
  br i1 %or.cond333, label %.thread322, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hc = getelementptr inbounds nuw i8, ptr %.3354, i64 360
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !464 ; 5 uses
  %.not256 = icmp eq ptr %i.hd, null
  br i1 %.not256, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.he = getelementptr inbounds nuw i8, ptr %.3354, i64 420
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !479, !range !88, !noundef !89
  %i.hg = trunc nuw i8 %i.hf to i1
  %i.hh = and i32 %i.go, 8192
  %.not257 = icmp eq i32 %i.hh, 0
  %or.cond334 = and i1 %.not257, %i.hg
  br i1 %or.cond334, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 76
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !480 ; 2 uses
  %i.hk = fcmp olt float %i.hj, %i.du
  br i1 %i.hk, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 84
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !478
  %i.hn = fadd float %i.hj, %i.hm
  %i.ho = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.hn
  br i1 %i.ho, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !481 ; 2 uses
  %i.hr = fcmp olt float %i.hq, %i.gl
  br i1 %i.hr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hd, i64 88
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !482
  %i.hu = fadd float %i.hq, %i.ht
  %i.hv = fcmp olt float %.sroa.018.4.vec.extract34, %i.hu
  br i1 %i.hv, label %.thread322, label %bb.ba

bb.ba:                                            ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  %.3.in = getelementptr inbounds nuw i8, ptr %.3354, i64 528
  %.3 = load ptr, ptr %.3.in, align 8, !tbaa !234 ; 2 uses
  %.not253 = icmp eq ptr %.3, null
  br i1 %.not253, label %.critedge277, label %bb.ap

.thread322:                                       ; preds = %bb.at, %bb.az, %bb.ao, %.thread
  %.5.ph = phi ptr [ %.2, %.thread ], [ %.2, %bb.ao ], [ %.3354, %bb.az ], [ %.3354, %bb.at ] ; 4 uses
  %i.hw = and i32 %i.cr, 4352
  %or.cond275.not = icmp eq i32 %i.hw, 256
  br i1 %or.cond275.not, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %.thread322
  %i.hx = or disjoint i32 %i.cr, 4096
  store i32 %i.hx, ptr %i.cq, align 8, !tbaa !235
  %i.hy = getelementptr inbounds nuw i8, ptr %.5.ph, i64 72 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !235 ; 2 uses
  %i.ia = and i32 %i.hz, -4097
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !235
  store ptr %.5.ph, ptr %i.gh, align 8, !tbaa !461
  %i.ib = and i32 %i.hz, 256
  %.not261 = icmp eq i32 %i.ib, 0
  br i1 %.not261, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @nk_remove_window(ptr noundef %0, ptr noundef nonnull %.5.ph)
  tail call fastcc void @nk_insert_window(ptr noundef %0, ptr noundef nonnull %.5.ph, i32 noundef 0)
  br label %bb.bi

.critedge277:                                     ; preds = %bb.an, %bb.ba, %.preheader337, %.preheader
  %i.ic = phi ptr [ %i.gh, %.preheader ], [ %i.er, %.preheader337 ], [ %i.gh, %bb.ba ], [ %i.er, %bb.an ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !463
  %.not262 = icmp eq ptr %i.ie, %.0220
  br i1 %.not262, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %.critedge277
  %i.if = and i32 %i.cr, 256
  %.not263 = icmp eq i32 %i.if, 0
  br i1 %.not263, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call fastcc void @nk_remove_window(ptr noundef %0, ptr noundef nonnull %.0220)
  tail call fastcc void @nk_insert_window(ptr noundef %0, ptr noundef nonnull %.0220, i32 noundef 0)
  %.pre = load i32, ptr %i.cq, align 8, !tbaa !235
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ig = phi i32 [ %.pre, %bb.be ], [ %i.cr, %bb.bd ]
  %i.ih = and i32 %i.ig, -4097                    ; 2 uses
  store i32 %i.ih, ptr %i.cq, align 8, !tbaa !235
  store ptr %.0220, ptr %i.ic, align 8, !tbaa !461
  br label %bb.bg

bb.bg:                                            ; preds = %.thread322, %bb.bf, %.critedge277
  %i.ii = phi i32 [ %i.cr, %.thread322 ], [ %i.ih, %bb.bf ], [ %i.cr, %.critedge277 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !463
  %.not264 = icmp ne ptr %i.ik, %.0220
  %i.il = and i32 %i.ii, 256
  %.not265 = icmp eq i32 %i.il, 0
  %or.cond387 = select i1 %.not264, i1 %.not265, i1 false
  br i1 %or.cond387, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.im = or i32 %i.ii, 4096
  store i32 %i.im, ptr %i.cq, align 8, !tbaa !235
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bc, %bb.bb, %bb.bh, %bb.bg, %bb.u
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !470 ; 3 uses
  %.not.i.i309 = icmp eq ptr %i.io, null
  br i1 %.not.i.i309, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 576
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !472
  store ptr %i.iq, ptr %i.in, align 8, !tbaa !470
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bi
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.is, 0
  br i1 %.not18.i.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !456 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !483 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.iw, %i.iy
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !455
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bn
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !454
  %i.je = add i32 %i.jd, -1
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul nuw nsw i64 %i.jf, 592
  %i.jh = add nuw nsw i64 %i.jg, 608
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !484
  %i.jk = load ptr, ptr %i.it, align 8
  %i.jl = tail call ptr %i.jj(ptr %i.jk, ptr noundef null, i64 noundef %i.jh) #50, !inline_history !37 ; 4 uses
  %i.jm = load ptr, ptr %i.iu, align 8, !tbaa !456
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !459
  store ptr %i.jl, ptr %i.iu, align 8, !tbaa !456
  store i32 0, ptr %i.jl, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.bm
  %i.jo = phi i32 [ 0, %.thread.i.i.i ], [ %i.iw, %bb.bm ] ; 2 uses
  %i.jp = phi ptr [ %i.jl, %.thread.i.i.i ], [ %i.iv, %bb.bm ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = add nuw i32 %i.jo, 1
  store i32 %i.jr, ptr %i.jp, align 8, !tbaa !483
  %i.js = zext i32 %i.jo to i64
  %i.jt = getelementptr inbounds nuw [592 x i8], ptr %i.jq, i64 %i.js
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.jv = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.ju, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.jv, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %nk_pool_alloc.exit.i.i, %bb.bj
  %.0.i.i310 = phi ptr [ %i.io, %bb.bj ], [ %i.jt, %nk_pool_alloc.exit.i.i ], [ %i.jv, %bb.bo ] ; 6 uses
  %i.jw = ptrtoint ptr %.0.i.i310 to i64
  %i.jx = and i64 %i.jw, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.bp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i310, i8 0, i64 576, i1 false), !tbaa !55
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.bp
  %i.jy = sub nuw nsw i64 4, %i.jx                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i310, i8 0, i64 range(i64 0, 4) %i.jy, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i310, i64 %i.jy ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 range(i64 0, 4) %i.jx, i1 false), !tbaa !56
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i310, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jz, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.bn, %bb.bo, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i310, %nk_zero.exit.i.i ], [ null, %bb.bo ], [ null, %bb.bn ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.0220, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.ka, align 8, !tbaa !416
  store ptr %.0220, ptr %i.a, align 8, !tbaa !415
  %i.kb = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1)
  %i.kc = getelementptr inbounds nuw i8, ptr %.0220, i64 92
  %i.kd = load ptr, ptr %i.ka, align 8, !tbaa !416 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.kc, ptr %i.ke, align 8, !tbaa !485
  %i.kf = getelementptr inbounds nuw i8, ptr %.0220, i64 96
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !486
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.a, %bb.b, %nk_create_panel.exit, %bb.t
  %.1222 = phi i1 [ false, %bb.t ], [ %i.kb, %nk_create_panel.exit ], [ false, %.loopexit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1222
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @nk_create_window(ptr nofree noundef nonnull captures(address_is_null) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !470  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !472
  store ptr %i.d, ptr %i.a, align 8, !tbaa !470
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.f = load i32, ptr %i.e, align 4, !tbaa !457
  %.not18.i = icmp eq i32 %i.f, 0
  br i1 %.not18.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !456  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.i, align 8, !tbaa !483  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.l = load i32, ptr %i.k, align 8, !tbaa !454
  %.not18.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not18.i.i, label %nk_pool_alloc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.n = load i32, ptr %i.m, align 8, !tbaa !455
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %nk_create_page_element.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.q = load i32, ptr %i.p, align 8, !tbaa !454
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw nsw i64 %i.s, 592
  %i.u = add nuw nsw i64 %i.t, 608
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !484
  %i.x = load ptr, ptr %i.g, align 8
  %i.y = tail call ptr %i.w(ptr %i.x, ptr noundef null, i64 noundef %i.u) #50, !inline_history !1036 ; 4 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !456
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !459
  store ptr %i.y, ptr %i.h, align 8, !tbaa !456
  store i32 0, ptr %i.y, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i

nk_pool_alloc.exit.i:                             ; preds = %.thread.i.i, %bb.e
  %i.ab = phi i32 [ 0, %.thread.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.ac = phi ptr [ %i.y, %.thread.i.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = add nuw i32 %i.ab, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !483
  %i.af = zext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [592 x i8], ptr %i.ad, i64 %i.af
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.ai = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.ah, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i = icmp eq ptr %i.ai, null
  br i1 %.not19.i, label %nk_create_page_element.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %nk_pool_alloc.exit.i, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.ag, %nk_pool_alloc.exit.i ], [ %i.ai, %bb.g ] ; 7 uses
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = and i64 %i.aj, 3                        ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %bb.i

.loopexit46.i.i.i:                                ; preds = %bb.h
  %i.al = sub nuw nsw i64 4, %i.ak                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i8 0, i64 range(i64 0, 4) %i.al, i1 false), !tbaa !56
  %scevgep.i.i.i = getelementptr i8, ptr %.0.i, i64 %i.al ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 range(i64 0, 4) %i.ak, i1 false), !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !237
  store i32 %i.ao, ptr %.0.i, align 8, !tbaa !56
  br label %nk_create_page_element.exit.thread

nk_create_page_element.exit.thread:               ; preds = %bb.f, %bb.g, %bb.i
  %.0 = phi ptr [ %.0.i, %bb.i ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nk_insert_window(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #19 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18536 ; 3 uses
  %.042 = load ptr, ptr %i.a, align 8, !tbaa !219 ; 4 uses
  %.not4043 = icmp eq ptr %.042, null
  br i1 %.not4043, label %._crit_edge.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.044, i64 528
  %.0 = load ptr, ptr %i.b, align 8, !tbaa !219   ; 2 uses
  %.not40 = icmp eq ptr %.0, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph, !llvm.loop !36

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.044 = phi ptr [ %.0, %bb.c ], [ %.042, %bb.b ] ; 2 uses
  %i.c = icmp eq ptr %.044, %1
  br i1 %i.c, label %.loopexit, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !225
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18544
  store ptr %1, ptr %i.e, align 8, !tbaa !463
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18576
  store i32 1, ptr %i.f, align 8, !tbaa !215
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.c
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18544 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !463  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !235
  %i.l = or i32 %i.k, 4096
  store i32 %i.l, ptr %i.j, align 8, !tbaa !235
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 528
  store ptr %1, ptr %i.m, align 8, !tbaa !234
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.i, ptr %i.n, align 8, !tbaa !462
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr null, ptr %i.o, align 8, !tbaa !234
  store ptr %1, ptr %i.h, align 8, !tbaa !463
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18552
  store ptr %1, ptr %i.p, align 8, !tbaa !461
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %.042, i64 536
  store ptr %1, ptr %i.q, align 8, !tbaa !462
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %.042, ptr %i.r, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr null, ptr %i.s, align 8, !tbaa !462
  store ptr %1, ptr %i.a, align 8, !tbaa !225
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !235
  %i.v = and i32 %i.u, -4097
  store i32 %i.v, ptr %i.t, align 8, !tbaa !235
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18576 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !215
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !215
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.f, %._crit_edge.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @nk_panel_begin(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef range(i32 1, 65) %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_text, align 8            ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415  ; 3 uses
  %.not363 = icmp eq ptr %i.d, null
  br i1 %.not363, label %bb.bd, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !416  ; 5 uses
  %.not364 = icmp eq ptr %i.f, null
  br i1 %.not364, label %bb.bd, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(464) %i.f, i8 0, i64 464, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.d
  %i.i = sub nuw nsw i64 4, %i.h                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 0, i64 range(i64 0, 4) %i.i, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.i ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %scevgep.i.i, i8 0, i64 460, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 460
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.h, i1 false), !tbaa !56
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !415
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.j = phi ptr [ %i.d, %.loopexit46.i.i.thread ], [ %.pre, %.loopexit46.i.i ] ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !235  ; 6 uses
  %i.m = and i32 %i.l, 24576
  %or.cond386 = icmp eq i32 %i.m, 0
  br i1 %or.cond386, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_zero.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !416  ; 5 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3                          ; 3 uses
  %.not.i.i391 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i391, label %.loopexit46.i.i394.thread, label %.loopexit46.i.i394

.loopexit46.i.i394.thread:                        ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(464) %i.o, i8 0, i64 464, i1 false), !tbaa !55
  br label %nk_zero.exit400

.loopexit46.i.i394:                               ; preds = %bb.e
  %i.r = sub nuw nsw i64 4, %i.q                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i8 0, i64 range(i64 0, 4) %i.r, i1 false), !tbaa !56
  %scevgep.i.i393 = getelementptr i8, ptr %i.o, i64 %i.r ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %scevgep.i.i393, i8 0, i64 460, i1 false), !tbaa !55
  %scevgep53.i.i399 = getelementptr i8, ptr %scevgep.i.i393, i64 460
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i399, i8 0, i64 range(i64 0, 4) %i.q, i1 false), !tbaa !56
  %.pre438 = load ptr, ptr %i.c, align 8, !tbaa !415
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre438, i64 168
  %.pre439 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !416
  br label %nk_zero.exit400

nk_zero.exit400:                                  ; preds = %.loopexit46.i.i394.thread, %.loopexit46.i.i394
  %i.s = phi ptr [ %i.o, %.loopexit46.i.i394.thread ], [ %.pre439, %.loopexit46.i.i394 ]
  store i32 %2, ptr %i.s, align 8, !tbaa !487
  br label %bb.bd

bb.f:                                             ; preds = %nk_zero.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !414  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !416  ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 11 uses
  %i.y = and i32 %i.l, 1024
  %.not367 = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not367, ptr %0, ptr null     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8888
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9652
  %.sroa.0163.0.copyload = load float, ptr %i.ab, align 4, !tbaa !54
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9656
  %.sroa.4164.0.copyload = load float, ptr %.sroa.4164.0..sroa_idx, align 8, !tbaa !54
  %i.ac = tail call range(i32 1, 8) i32 @llvm.ctpop.i32(i32 %2)
  %i.ad = icmp eq i32 %i.ac, 1                    ; 2 uses
  br i1 %i.ad, label %.split.i, label %nk_panel_get_padding.exit

.split.i:                                         ; preds = %bb.f
  %i.ae = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  %switch.tableidx = add nsw i32 %i.ae, -1        ; 2 uses
  %i.af = icmp ult i32 %switch.tableidx, 6
  br i1 %i.af, label %switch.lookup, label %nk_panel_get_padding.exit

switch.lookup:                                    ; preds = %.split.i
  %i.ag = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.nk_panel_begin, i64 %i.ag
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  br label %nk_panel_get_padding.exit

nk_panel_get_padding.exit:                        ; preds = %switch.lookup, %.split.i, %bb.f
  %.sink.i = phi i64 [ %switch.ext, %switch.lookup ], [ 9276, %bb.f ], [ 9276, %.split.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink.i
  %.sroa.0.0.i = load <2 x float>, ptr %i.ah, align 4, !tbaa !54 ; 3 uses
  %i.ai = and i32 %i.l, 4098
  %or.cond387 = icmp eq i32 %i.ai, 2
  br i1 %or.cond387, label %bb.g, label %nk_input_has_mouse_click_down_in_rect.exit.thread

bb.g:                                             ; preds = %nk_panel_get_padding.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 76 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !54 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.am = load float, ptr %i.al, align 4, !tbaa !478 ; 2 uses
  %i.an = and i32 %i.l, 88
  %.not.i = icmp ne i32 %i.an, 0
  %i.ao = icmp ne ptr %1, null
  %spec.select.i = and i1 %i.ao, %.not.i
  br i1 %spec.select.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.8.vec.insert = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !140
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9472
  %i.as = load float, ptr %i.ar, align 8, !tbaa !476
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float 2.000000e+00, float %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 9480
  %i.av = load float, ptr %i.au, align 8, !tbaa !477
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float 2.000000e+00, float %i.at)
  %.sroa.5.12.vec.insert151 = insertelement <2 x float> %.sroa.5.8.vec.insert, float %i.aw, i64 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.5.12.vec.insert153 = insertelement <2 x float> %.sroa.0.0.i, float %i.am, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.5.0 = phi <2 x float> [ %.sroa.5.12.vec.insert151, %bb.h ], [ %.sroa.5.12.vec.insert153, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !388, !range !88, !noundef !89
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !383
  %.not.i401 = icmp eq ptr %i.z, null
  br i1 %.not.i401, label %nk_input_has_mouse_click_down_in_rect.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !389 ; 2 uses
  %i.be = extractelement <2 x float> %i.ak, i64 0
  %i.bf = fcmp ole float %i.be, %i.bd
  %foldExtExtBinop = fadd <2 x float> %i.ak, %.sroa.5.0
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bh = fcmp olt float %i.bd, %i.bg
  %or.cond.i.i = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond.i.i, label %nk_input_has_mouse_click_in_rect.exit.i, label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_in_rect.exit.i:          ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !390 ; 2 uses
  %i.bk = extractelement <2 x float> %i.ak, i64 1
  %i.bl = fcmp ole float %i.bk, %i.bj
  %foldExtExtBinop464 = fadd <2 x float> %i.ak, %.sroa.5.0
  %i.bm = extractelement <2 x float> %foldExtExtBinop464, i64 1
  %i.bn = fcmp olt float %i.bj, %i.bm
  %or.cond16.i.i = select i1 %i.bl, i1 %i.bn, i1 false
  %i.bo = icmp eq i32 %i.bb, 0
  %i.bp = and i1 %or.cond16.i.i, %i.az
  %or.cond = select i1 %i.bp, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.l, label %nk_input_has_mouse_click_down_in_rect.exit.thread

bb.l:                                             ; preds = %nk_input_has_mouse_click_in_rect.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !54 ; 2 uses
  %i.bs = fadd <2 x float> %i.ak, %i.br
  store <2 x float> %i.bs, ptr %i.aj, align 4, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 268 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bt, align 4, !tbaa !54
  %i.bv = fadd <2 x float> %i.br, %i.bu
  store <2 x float> %i.bv, ptr %i.bt, align 4, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !221
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !220
  br label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_down_in_rect.exit.thread: ; preds = %bb.k, %nk_input_has_mouse_click_in_rect.exit.i, %bb.j, %bb.l, %nk_panel_get_padding.exit
  store i32 %2, ptr %i.w, align 8, !tbaa !487
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 8 uses
  store i32 %i.l, ptr %i.bz, align 4, !tbaa !488
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 76 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !157
  %.sroa.0158.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %i.cc = load float, ptr %i.ca, align 8, !tbaa !489
  %i.cd = fadd float %.sroa.0158.0.vec.extract, %i.cc ; 2 uses
  store float %i.cd, ptr %i.ca, align 8, !tbaa !489
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 6 uses
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !490
  %i.cg = tail call float @llvm.fmuladd.f32(float %.sroa.0158.0.vec.extract, float -2.000000e+00, float %i.cf)
  store float %i.cg, ptr %i.ce, align 8, !tbaa !490
  %i.ch = load i32, ptr %i.k, align 8, !tbaa !235 ; 5 uses
  %i.ci = and i32 %i.ch, 1
  %.not371 = icmp eq i32 %i.ci, 0
  br i1 %.not371, label %bb.n, label %bb.m

bb.m:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread
  br i1 %i.ad, label %.split.i404, label %nk_panel_get_border.exit

.split.i404:                                      ; preds = %bb.m
  %i.cj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 65) %2, i1 true)
  %switch.tableidx458 = add nsw i32 %i.cj, -1     ; 2 uses
  %i.ck = icmp ult i32 %switch.tableidx458, 6
  br i1 %i.ck, label %switch.lookup459, label %nk_panel_get_border.exit

switch.lookup459:                                 ; preds = %.split.i404
  %i.cl = zext nneg i32 %switch.tableidx458 to i64
  %switch.gep460 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.nk_panel_begin.32, i64 %i.cl
  %switch.load461 = load i16, ptr %switch.gep460, align 2
  %switch.ext462 = zext i16 %switch.load461 to i64
  br label %nk_panel_get_border.exit

nk_panel_get_border.exit:                         ; preds = %switch.lookup459, %.split.i404, %bb.m
  %.sink = phi i64 [ 9608, %.split.i404 ], [ %switch.ext462, %switch.lookup459 ], [ 9608, %bb.m ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0.i403 = load float, ptr %i.cm, align 4, !tbaa !54 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  store float %.0.i403, ptr %i.cn, align 4, !tbaa !491
  %i.co = load <2 x float>, ptr %i.ca, align 8
  %i.cp = load <2 x float>, ptr %i.ce, align 8    ; 2 uses
  %i.cq = fmul float %.0.i403, 2.000000e+00
  %i.cr = insertelement <2 x float> poison, float %.0.i403, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.018.4.vec.insert.i = fadd <2 x float> %i.cs, %i.co ; 3 uses
  %i.ct = extractelement <2 x float> %.sroa.018.4.vec.insert.i, i64 1
  %i.cu = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fcmp olt <2 x float> %i.cp, %i.cv
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.cv, <2 x float> %i.cp
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> splat (float -2.000000e+00), <2 x float> %i.cx)
  store <2 x float> %.sroa.018.4.vec.insert.i, ptr %i.ca, align 8, !tbaa !54
  store <2 x float> %i.cy, ptr %i.ce, align 8, !tbaa !54
  br label %bb.o

bb.n:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !491
  %.phi.trans.insert440 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.pre441 = load float, ptr %.phi.trans.insert440, align 4, !tbaa !492 ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.db = insertelement <2 x float> %i.da, float %.pre441, i64 1
  br label %bb.o

bb.o:                                             ; preds = %nk_panel_get_border.exit, %bb.n
  %i.dc = phi float [ %i.ct, %nk_panel_get_border.exit ], [ %.pre441, %bb.n ]
  %i.dd = phi <2 x float> [ %.sroa.018.4.vec.insert.i, %nk_panel_get_border.exit ], [ %i.db, %bb.n ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.dg = getelementptr inbounds nuw i8, ptr %i.w, i64 40
end_hunk_7
begin_hunk_8_@nk_rule_horizontal:bb.a

nk_window_get_canvas.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ null, %bb.a ], [ %spec.select.i, %bb.b ]
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %nk_window_get_canvas.exit
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load float, ptr %i.e, align 4            ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.500000e+00
  %or.cond = select i1 %2, i1 %i.g, i1 false
  %i.h = fmul float %i.f, 5.000000e-01
  %i.i = select i1 %or.cond, float %i.h, float 0.000000e+00
  %i.j = load <2 x float>, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load <2 x float>, ptr %i.k, align 8
  tail call void @nk_fill_rect(ptr noundef %.0.i, <2 x float> %i.j, <2 x float> %i.l, float noundef %i.i, i32 %1)
  br label %bb.d

bb.d:                                             ; preds = %nk_window_get_canvas.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @nk_widget(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not42 = icmp eq ptr %i.b, null
  br i1 %.not42, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not43 = icmp eq ptr %i.d, null
  br i1 %.not43, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @nk_panel_alloc_space(ptr noundef %0, ptr noundef nonnull %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !416  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.i = load <4 x float>, ptr %0, align 4, !tbaa !54
  %i.j = fptosi <4 x float> %i.i to <4 x i32>
  %i.k = sitofp <4 x i32> %i.j to <4 x float>     ; 5 uses
  %i.l = extractelement <4 x float> %i.k, i64 0
  %i.m = extractelement <4 x float> %i.k, i64 1
  %i.n = load <2 x float>, ptr %i.h, align 4, !tbaa !54
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = sitofp <2 x i32> %i.o to <2 x float>     ; 5 uses
  %i.q = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.r = fcmp ogt <2 x float> %i.q, %i.p
  %i.s = extractelement <2 x float> %i.p, i64 0
  %i.t = load <2 x float>, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !54
  %i.u = fptosi <2 x float> %i.t to <2 x i32>
  %i.v = sitofp <2 x i32> %i.u to <2 x float>
  %i.w = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.x = fadd <2 x float> %i.q, %i.w              ; 4 uses
  store <4 x float> %i.k, ptr %0, align 4, !tbaa !54
  %i.y = select <2 x i1> %i.r, <2 x float> %i.q, <2 x float> %i.p ; 5 uses
  %i.z = fadd <2 x float> %i.p, %i.v              ; 4 uses
  %i.aa = fcmp olt <2 x float> %i.z, %i.x
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> %i.x
  %i.ac = fsub <2 x float> %i.ab, %i.y            ; 2 uses
  %i.ad = fcmp ogt <2 x float> %i.ac, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x float> %i.ac, <2 x float> zeroinitializer ; 2 uses
  %i.af = extractelement <2 x float> %i.z, i64 0
  %i.ag = fcmp ogt float %i.af, %i.l
  %i.ah = extractelement <2 x float> %i.x, i64 0
  %i.ai = fcmp ogt float %i.ah, %i.s
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  %i.aj = extractelement <2 x float> %i.z, i64 1
  %i.ak = fcmp ogt float %i.aj, %i.m
  %or.cond56 = select i1 %or.cond, i1 %i.ak, i1 false
  %i.al = fcmp ogt <2 x float> %i.x, %i.p
  %i.am = extractelement <2 x i1> %i.al, i64 1
  %or.cond57 = select i1 %or.cond56, i1 %i.am, i1 false
  br i1 %or.cond57, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !475, !range !88, !noundef !89
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !391 ; 2 uses
  %i.as = extractelement <2 x float> %i.y, i64 0
  %i.at = fcmp ole float %i.as, %i.ar
  %foldExtExtBinop = fadd <2 x float> %i.y, %i.ae
  %i.au = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.av = fcmp olt float %i.ar, %i.au
  %or.cond59 = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond59, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !392 ; 2 uses
  %i.ay = extractelement <2 x float> %i.y, i64 1
  %i.az = fcmp ugt float %i.ay, %i.ax
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop65 = fadd <2 x float> %i.y, %i.ae
  %i.ba = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.bb = fcmp olt float %i.ax, %i.ba
  %spec.select = select i1 %i.bb, i32 1, i32 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 2, %bb.f ], [ 3, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select, %bb.h ], [ 2, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_popup_begin(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, <2 x float> %4, <2 x float> %5) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 19 uses
  %.not83 = icmp eq ptr %i.b, null
  br i1 %.not83, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not84 = icmp eq ptr %i.d, null
  br i1 %.not84, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.e = load i8, ptr %2, align 1, !tbaa !56
  %.not4.i97 = icmp eq i8 %i.e, 0
  br i1 %.not4.i97, label %nk_strlen.exit, label %.lr.ph.i.preheader109

.lr.ph.i.preheader109:                            ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.f = trunc i64 %strlen to i32
  %i.g = add i32 %i.f, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader109, %.lr.ph.i.preheader, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.preheader109 ]
  %i.h = tail call i32 @nk_murmur_hash(ptr noundef %2, i32 noundef %.0.lcssa.i, i32 noundef 4) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !464  ; 2 uses
  %.not85 = icmp eq ptr %i.j, null
  br i1 %.not85, label %bb.e, label %bb.f

bb.e:                                             ; preds = %nk_strlen.exit
  %i.k = tail call fastcc ptr @nk_create_window(ptr noundef %0) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  store ptr %i.b, ptr %i.l, align 8, !tbaa !506
  store ptr %i.k, ptr %i.i, align 8, !tbaa !464
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 0, ptr %i.m, align 4, !tbaa !479
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 4, ptr %i.n, align 8, !tbaa !528
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_strlen.exit
  %.077 = phi ptr [ %i.j, %nk_strlen.exit ], [ %i.k, %bb.e ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !529
  %.not86 = icmp eq i32 %i.p, %i.h
  br i1 %.not86, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 420 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !479, !range !88, !noundef !89
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = ptrtoint ptr %.077 to i64
  %i.u = and i64 %i.t, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(552) %.077, i8 0, i64 544, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.h
  %i.v = sub nuw nsw i64 4, %i.u                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.077, i8 0, i64 range(i64 0, 4) %i.v, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %.077, i64 %i.v ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(548) %scevgep.i.i, i8 0, i64 548, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 548
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.u, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  store i32 %i.h, ptr %i.o, align 8, !tbaa !529
  store i8 1, ptr %i.q, align 4, !tbaa !479
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 4, ptr %i.w, align 8, !tbaa !528
  br label %bb.i

bb.i:                                             ; preds = %nk_zero.exit, %bb.f
  store ptr %.077, ptr %i.a, align 8, !tbaa !415
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  %i.z = load <2 x float>, ptr %i.y, align 4, !tbaa !54
  %i.aa = fadd <2 x float> %4, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.077, i64 544
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !506
  %i.ac = getelementptr inbounds nuw i8, ptr %.077, i64 76
  store <2 x float> %i.aa, ptr %i.ac, align 4, !tbaa !54
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.077, i64 84
  store <2 x float> %5, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !237
  store i32 %i.ae, ptr %.077, align 8, !tbaa !236
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !470 ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 576
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !472
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !470
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not18.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !456 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !483 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.ao, %i.aq
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !455
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.av = load i32, ptr %i.au, align 8, !tbaa !454
  %i.aw = add i32 %i.av, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 592
  %i.az = add nuw nsw i64 %i.ay, 608
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !484
  %i.bc = load ptr, ptr %i.al, align 8
  %i.bd = tail call ptr %i.bb(ptr %i.bc, ptr noundef null, i64 noundef %i.az) #50, !inline_history !37 ; 4 uses
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !456
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !459
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !456
  store i32 0, ptr %i.bd, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.m
  %i.bg = phi i32 [ 0, %.thread.i.i.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bh = phi ptr [ %i.bd, %.thread.i.i.i ], [ %i.an, %bb.m ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = add nuw i32 %i.bg, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !483
  %i.bk = zext i32 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [592 x i8], ptr %i.bi, i64 %i.bk
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.bn = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.bm, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.bn, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %nk_pool_alloc.exit.i.i, %bb.j
  %.0.i.i = phi ptr [ %i.ag, %bb.j ], [ %i.bl, %nk_pool_alloc.exit.i.i ], [ %i.bn, %bb.o ] ; 6 uses
  %i.bo = ptrtoint ptr %.0.i.i to i64
  %i.bp = and i64 %i.bo, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.p
  %i.bq = sub nuw nsw i64 4, %i.bp                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 range(i64 0, 4) %i.bq, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.bq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 range(i64 0, 4) %i.bp, i1 false), !tbaa !56
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.n, %bb.o, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.o ], [ null, %bb.n ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.077, i64 168 ; 4 uses
  store ptr %.014.i.i, ptr %i.bs, align 8, !tbaa !416
  %i.bt = getelementptr inbounds nuw i8, ptr %.077, i64 72
  %i.bu = icmp eq i32 %1, 1
  %spec.select.v = select i1 %i.bu, i32 2049, i32 1
  %spec.select = or i32 %3, %spec.select.v
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !235
  %i.bv = getelementptr inbounds nuw i8, ptr %.077, i64 104 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 8 dereferenceable(64) %i.bw, i64 64, i1 false), !tbaa.struct !531
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.ca = load <2 x i64>, ptr %i.by, align 8, !tbaa !79
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !241 ; 2 uses
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !517
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !tbaa !79
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !239
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  store i8 1, ptr %i.cd, align 8, !tbaa !240
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 9824 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !216
  %i.cg = getelementptr inbounds nuw i8, ptr %.077, i64 112
  store <4 x float> <float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04>, ptr %i.cg, align 8, !tbaa !54
  %i.ch = load ptr, ptr %i.bv, align 8, !tbaa !99
  %i.ci = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.ch, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i90 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i90, label %nk_push_scissor.exit, label %bb.q

bb.q:                                             ; preds = %nk_create_panel.exit
  %i.cj = load ptr, ptr %i.bv, align 8, !tbaa !99 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !69
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.077, i64 160
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !100
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 31
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, -8
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  store i32 1, ptr %i.ci, align 8, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !77
  %i.cy = add i64 %i.cx, %i.cv                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !103
  %i.da = getelementptr inbounds nuw i8, ptr %.077, i64 152
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !104
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x i16> <i16 -8192, i16 -8192, i16 16384, i16 16384>, ptr %i.db, align 8, !tbaa !106
  br label %nk_push_scissor.exit

nk_push_scissor.exit:                             ; preds = %nk_create_panel.exit, %bb.q
  %i.dc = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 4)
  %.076104 = load ptr, ptr %i.c, align 8, !tbaa !532 ; 3 uses
  %.not88105 = icmp eq ptr %.076104, null         ; 2 uses
  br i1 %i.dc, label %.preheader, label %.preheader96

.preheader96:                                     ; preds = %nk_push_scissor.exit
  br i1 %.not88105, label %._crit_edge, label %.lr.ph103

.preheader:                                       ; preds = %nk_push_scissor.exit
  br i1 %.not88105, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader, %.lr.ph107
  %.076106 = phi ptr [ %.076, %.lr.ph107 ], [ %.076104, %.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.076106, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !488
  %i.df = and i32 %i.de, -69633
  %i.dg = or disjoint i32 %i.df, 4096
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !488
  %i.dh = getelementptr inbounds nuw i8, ptr %.076106, i64 456
  %.076 = load ptr, ptr %i.dh, align 8, !tbaa !532 ; 2 uses
  %.not88 = icmp eq ptr %.076, null
  br i1 %.not88, label %._crit_edge108.loopexit, label %.lr.ph107, !llvm.loop !1059

._crit_edge108.loopexit:                          ; preds = %.lr.ph107
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !416
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %.preheader
  %i.di = phi ptr [ %.pre, %._crit_edge108.loopexit ], [ null, %.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 1, ptr %i.dj, align 4, !tbaa !479
  %i.dk = getelementptr inbounds nuw i8, ptr %.077, i64 92
  %i.dl = load ptr, ptr %i.bs, align 8, !tbaa !416 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !485
  %i.dn = getelementptr inbounds nuw i8, ptr %.077, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !486
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 456
  store ptr %i.di, ptr %i.dp, align 8, !tbaa !505
  br label %bb.x

.lr.ph103:                                        ; preds = %.preheader96, %.lr.ph103
  %.0102 = phi ptr [ %.0, %.lr.ph103 ], [ %.076104, %.preheader96 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0102, i64 4 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !488
  %i.ds = or i32 %i.dr, 65536
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !488
  %i.dt = getelementptr inbounds nuw i8, ptr %.0102, i64 456
  %.0 = load ptr, ptr %i.dt, align 8, !tbaa !532  ; 2 uses
  %.not87 = icmp eq ptr %.0, null
  br i1 %.not87, label %._crit_edge, label %.lr.ph103, !llvm.loop !1060

._crit_edge:                                      ; preds = %.lr.ph103, %.preheader96
  store i8 0, ptr %i.cd, align 8, !tbaa !238
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 0, ptr %i.du, align 4, !tbaa !479
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !216
  store ptr %i.b, ptr %i.a, align 8, !tbaa !415
  %i.dv = load ptr, ptr %i.bs, align 8, !tbaa !416 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !457
  %.not.i.i91 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i91, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !470 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i92, label %nk_link_page_element_into_freelist.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 576
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !472
  br label %nk_link_page_element_into_freelist.exit.i.i

nk_link_page_element_into_freelist.exit.i.i:      ; preds = %bb.s, %bb.r
  store ptr %i.dv, ptr %i.af, align 8, !tbaa !470
  br label %nk_free_panel.exit

bb.t:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 592
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 9800
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !217
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 9848 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !473 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee
  %i.eg = icmp eq ptr %i.ea, %i.ef
  br i1 %i.eg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eh = add i64 %i.ee, -592
  store i64 %i.eh, ptr %i.ed, align 8, !tbaa !473
  br label %nk_free_panel.exit

bb.v:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.af, align 8, !tbaa !470 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i11.i.i, label %nk_link_page_element_into_freelist.exit12.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 576
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !472
  br label %nk_link_page_element_into_freelist.exit12.i.i

nk_link_page_element_into_freelist.exit12.i.i:    ; preds = %bb.w, %bb.v
  store ptr %i.dv, ptr %i.af, align 8, !tbaa !470
  br label %nk_free_panel.exit

nk_free_panel.exit:                               ; preds = %nk_link_page_element_into_freelist.exit.i.i, %bb.u, %nk_link_page_element_into_freelist.exit12.i.i
  store ptr null, ptr %i.bs, align 8, !tbaa !416
  br label %bb.x

bb.x:                                             ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %nk_free_panel.exit, %._crit_edge108
  %.078 = phi i1 [ false, %bb.a ], [ true, %._crit_edge108 ], [ false, %nk_free_panel.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.g ]
  ret i1 %.078
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_popup_close(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !235
  %i.e = or i32 %i.d, 8192
end_hunk_8
begin_hunk_9_@nk_nonblock_begin:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  store ptr %i.b, ptr %i.h, align 8, !tbaa !506
  store ptr %i.g, ptr %i.e, align 8, !tbaa !464
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 %6, ptr %i.i, align 8, !tbaa !528
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9736
  store ptr %i.k, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i32 1, ptr %i.l, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9824
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i64 %i.n, ptr %i.o, align 8, !tbaa !224
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store i64 %i.n, ptr %i.p, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store i64 %i.n, ptr %i.q, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store <2 x float> %4, ptr %i.r, align 8, !tbaa !54
  %.sroa.3.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store <2 x float> %5, ptr %.sroa.3.0..sroa_idx90, align 8, !tbaa !54
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.t = load i8, ptr %i.s, align 4, !tbaa !388, !range !88, !noundef !89
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = load i32, ptr %i.v, align 8, !tbaa !383
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %bb.f, label %nk_input_is_mouse_pressed.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_pressed.exit:                   ; preds = %bb.e, %bb.f
  %.0.i = phi i1 [ true, %bb.e ], [ false, %bb.f ]
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.y = load float, ptr %i.x, align 4, !tbaa !391 ; 4 uses
  %i.z = fcmp ole float %.sroa.0.0.vec.extract.i, %i.y
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = fcmp olt float %i.y, %i.aa
  %or.cond.i = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %bb.g, label %nk_input_is_mouse_hovering_rect.exit

bb.g:                                             ; preds = %nk_input_is_mouse_pressed.exit
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %2, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !392 ; 2 uses
  %i.ae = fcmp ugt float %.sroa.0.4.vec.extract.i, %i.ad
  br i1 %i.ae, label %nk_input_is_mouse_hovering_rect.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop116 = fadd <2 x float> %2, %3
  %i.af = extractelement <2 x float> %foldExtExtBinop116, i64 1
  %i.ag = fcmp uge float %i.ad, %i.af
  br label %nk_input_is_mouse_hovering_rect.exit

nk_input_is_mouse_hovering_rect.exit:             ; preds = %nk_input_is_mouse_pressed.exit, %bb.g, %bb.h
  %.0.i79 = phi i1 [ true, %bb.g ], [ %i.ag, %bb.h ], [ true, %nk_input_is_mouse_pressed.exit ]
  %.sroa.0.0.vec.extract.i80 = extractelement <2 x float> %4, i64 0
  %i.ah = fcmp ole float %.sroa.0.0.vec.extract.i80, %i.y
  %foldExtExtBinop118 = fadd <2 x float> %4, %5
  %i.ai = extractelement <2 x float> %foldExtExtBinop118, i64 0
  %i.aj = fcmp olt float %i.y, %i.ai
  %or.cond.i82 = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.i82, label %bb.i, label %bb.k

bb.i:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit
  %.sroa.0.4.vec.extract.i84 = extractelement <2 x float> %4, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.al = load float, ptr %i.ak, align 8, !tbaa !392 ; 2 uses
  %i.am = fcmp ugt float %.sroa.0.4.vec.extract.i84, %i.al
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop120 = fadd <2 x float> %4, %5
  %i.an = extractelement <2 x float> %foldExtExtBinop120, i64 1
  %i.ao = fcmp olt float %i.al, %i.an
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %nk_input_is_mouse_hovering_rect.exit
  %.0.i83 = phi i1 [ false, %bb.i ], [ %i.ao, %bb.j ], [ false, %nk_input_is_mouse_hovering_rect.exit ]
  %or.cond = select i1 %.0.i79, i1 true, i1 %.0.i83
  %or.cond78 = select i1 %.0.i, i1 %or.cond, i1 false
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store <2 x float> %4, ptr %i.ap, align 8, !tbaa !54
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store <2 x float> %5, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !54
  br i1 %or.cond78, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.06695 = phi ptr [ %.066, %.lr.ph ], [ %i.d, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.06695, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !488
  %i.as = or i32 %i.ar, 65536
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !488
  %i.at = getelementptr inbounds nuw i8, ptr %.06695, i64 456
  %.066 = load ptr, ptr %i.at, align 8, !tbaa !532 ; 2 uses
  %.not76 = icmp eq ptr %.066, null
  br i1 %.not76, label %.loopexit, label %.lr.ph, !llvm.loop !1062

bb.l:                                             ; preds = %.thread, %bb.k
  %.06891 = phi ptr [ %i.g, %.thread ], [ %i.f, %bb.k ] ; 13 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.06891, i64 76
  store <2 x float> %2, ptr %i.au, align 4, !tbaa !54
  %.sroa.364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.06891, i64 84
  store <2 x float> %3, ptr %.sroa.364.0..sroa_idx, align 4, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %.06891, i64 544
  store ptr %i.b, ptr %i.av, align 8, !tbaa !506
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !470 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 576
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !472
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !470
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not18.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !456 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !483 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.bf, %i.bh
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !455
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !454
  %i.bn = add i32 %i.bm, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, 592
  %i.bq = add nuw nsw i64 %i.bp, 608
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !484
  %i.bt = load ptr, ptr %i.bc, align 8
  %i.bu = tail call ptr %i.bs(ptr %i.bt, ptr noundef null, i64 noundef %i.bq) #50, !inline_history !37 ; 4 uses
  %i.bv = load ptr, ptr %i.bd, align 8, !tbaa !456
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !459
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !456
  store i32 0, ptr %i.bu, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.p
  %i.bx = phi i32 [ 0, %.thread.i.i.i ], [ %i.bf, %bb.p ] ; 2 uses
  %i.by = phi ptr [ %i.bu, %.thread.i.i.i ], [ %i.be, %bb.p ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = add nuw i32 %i.bx, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !483
  %i.cb = zext i32 %i.bx to i64
  %i.cc = getelementptr inbounds nuw [592 x i8], ptr %i.bz, i64 %i.cb
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.ce = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.cd, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ce, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %nk_pool_alloc.exit.i.i, %bb.m
  %.0.i.i = phi ptr [ %i.ax, %bb.m ], [ %i.cc, %nk_pool_alloc.exit.i.i ], [ %i.ce, %bb.r ] ; 6 uses
  %i.cf = ptrtoint ptr %.0.i.i to i64
  %i.cg = and i64 %i.cf, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.s
  %i.ch = sub nuw nsw i64 4, %i.cg                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 range(i64 0, 4) %i.ch, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.ch ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 range(i64 0, 4) %i.cg, i1 false), !tbaa !56
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.q, %bb.r, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.r ], [ null, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.06891, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.cj, align 8, !tbaa !416
  %i.ck = getelementptr inbounds nuw i8, ptr %.06891, i64 72
  %i.cl = or i32 %1, 2049
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !235
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !237
  store i32 %i.cn, ptr %.06891, align 8, !tbaa !236
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 1, ptr %i.co, align 4, !tbaa !479
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !tbaa !79
  %i.ct = load i64, ptr %i.cq, align 8, !tbaa !241 ; 2 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !517
  store <2 x i64> %i.cs, ptr %i.cp, align 8, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !239
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i8 1, ptr %i.cv, align 8, !tbaa !240
  %i.cw = getelementptr inbounds nuw i8, ptr %.06891, i64 104 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr noundef nonnull align 8 dereferenceable(64) %i.cx, i64 64, i1 false), !tbaa.struct !531
  %i.cy = getelementptr inbounds nuw i8, ptr %.06891, i64 112
  store <4 x float> <float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04>, ptr %i.cy, align 8, !tbaa !54
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !99
  %i.da = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.cz, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i87 = icmp eq ptr %i.da, null
  br i1 %.not.i.i87, label %nk_push_scissor.exit, label %bb.t

bb.t:                                             ; preds = %nk_create_panel.exit
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !99 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !69
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.06891, i64 160
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !100
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 31
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, -8
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  store i32 1, ptr %i.da, align 8, !tbaa !102
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 88
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !77
  %i.dq = add i64 %i.dp, %i.dn                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !103
  %i.ds = getelementptr inbounds nuw i8, ptr %.06891, i64 152
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !104
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <4 x i16> <i16 -8192, i16 -8192, i16 16384, i16 16384>, ptr %i.dt, align 8, !tbaa !106
  br label %nk_push_scissor.exit

nk_push_scissor.exit:                             ; preds = %nk_create_panel.exit, %bb.t
  store ptr %.06891, ptr %i.a, align 8, !tbaa !415
  %i.du = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef null, i32 noundef %6) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false), !tbaa.struct !531
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !416 ; 3 uses
  %i.dw = load ptr, ptr %i.cj, align 8, !tbaa !416 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 456
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !505
  %i.dy = getelementptr inbounds nuw i8, ptr %.06891, i64 92
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !485
  %i.ea = getelementptr inbounds nuw i8, ptr %.06891, i64 96
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !486
  %.not7797 = icmp eq ptr %i.dv, null
  br i1 %.not7797, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %nk_push_scissor.exit, %.lr.ph99
  %.098 = phi ptr [ %.0, %.lr.ph99 ], [ %i.dv, %nk_push_scissor.exit ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.098, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !488
  %i.ee = or i32 %i.ed, 4096
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !488
  %i.ef = getelementptr inbounds nuw i8, ptr %.098, i64 456
  %.0 = load ptr, ptr %i.ef, align 8, !tbaa !532  ; 2 uses
  %.not77 = icmp eq ptr %.0, null
  br i1 %.not77, label %.loopexit, label %.lr.ph99, !llvm.loop !1063

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph99, %nk_push_scissor.exit, %bb.a, %bb.b
  %.069 = phi i1 [ true, %nk_push_scissor.exit ], [ false, %bb.a ], [ false, %bb.b ], [ true, %.lr.ph99 ], [ false, %.lr.ph ]
  ret i1 %.069
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_contextual_item_text(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_contextual_close.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %nk_contextual_close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %nk_contextual_close.exit, label %nk_widget_fitting.exit

nk_widget_fitting.exit:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull readonly %0)
  switch i32 %i.g, label %bb.d [
    i32 0, label %nk_contextual_close.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not26 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not26, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit
  %i.l = phi ptr [ null, %nk_widget_fitting.exit ], [ %spec.select, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !414
  %i.p = load <2 x float>, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.p, <2 x float> %i.r, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %i.f, ptr noundef %i.l, ptr noundef %i.o)
  br i1 %i.s, label %bb.f, label %nk_contextual_close.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %nk_contextual_close.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  %.not6.i = icmp eq ptr %i.v, null
  br i1 %.not6.i, label %nk_contextual_close.exit, label %nk_popup_close.exit.i

nk_popup_close.exit.i:                            ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !235
  %i.y = or i32 %i.x, 8192
  store i32 %i.y, ptr %i.w, align 8, !tbaa !235
  br label %nk_contextual_close.exit

nk_contextual_close.exit:                         ; preds = %nk_popup_close.exit.i, %bb.g, %bb.f, %bb.e, %nk_widget_fitting.exit, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.e ], [ false, %nk_widget_fitting.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.g ], [ true, %nk_popup_close.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @nk_widget_fitting(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, <2 x float> %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @nk_widget(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

end_hunk_9
begin_hunk_10_@nk_tree_element_pop:bb.a
  br i1 %.not.i, label %nk_tree_state_pop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not14.i = icmp eq ptr %i.b, null
  br i1 %.not14.i, label %nk_tree_state_pop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 5 uses
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %nk_tree_state_pop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8432
  %i.f = load float, ptr %i.e, align 8, !tbaa !553 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !485
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  %i.j = uitofp i32 %i.i to float
  %i.k = fadd float %i.f, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !539
  %i.n = fsub float %i.m, %i.k
  store float %i.n, ptr %i.l, align 8, !tbaa !539
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9668
  %i.p = load float, ptr %i.o, align 4, !tbaa !554
  %i.q = fadd float %i.f, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !490
  %i.t = fadd float %i.s, %i.q
  store float %i.t, ptr %i.r, align 8, !tbaa !490
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !498
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !498
  br label %nk_tree_state_pop.exit

nk_tree_state_pop.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_group_scrolled_offset_begin(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %5 = alloca %struct.nk_rect, align 4            ; 8 uses
  %6 = alloca %struct.nk_window, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 5 uses
  call fastcc void @nk_panel_alloc_space(ptr noundef nonnull %5, ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load float, ptr %5, align 4, !tbaa !112  ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.i = load float, ptr %i.h, align 4, !tbaa !113
  %i.j = fadd float %i.g, %i.i
  %i.k = fcmp olt float %i.f, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !113
  %i.n = fadd float %i.f, %i.m
  %i.o = fcmp olt float %i.g, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.s = load float, ptr %i.r, align 4, !tbaa !114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.u = load float, ptr %i.t, align 4, !tbaa !115
  %i.v = fadd float %i.s, %i.u
  %i.w = fcmp olt float %i.q, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !115
  %i.z = fadd float %i.q, %i.y
  %i.aa = fcmp uge float %i.s, %i.z
  %i.ab = and i32 %4, 2
  %.not = icmp eq i32 %i.ab, 0
  %or.cond = and i1 %.not, %i.aa
  br i1 %or.cond, label %bb.n, label %.critedge

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.old = and i32 %4, 2
  %.not.old = icmp eq i32 %.old, 0
  br i1 %.not.old, label %bb.n, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !235
  %i.ae = and i32 %i.ad, 4096
  %.035 = or i32 %i.ae, %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %6, i8 0, i64 552, i1 false), !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !157
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 %.035, ptr %i.ag, align 8, !tbaa !235
  %i.ah = load i32, ptr %1, align 4, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 92
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !525
  %i.aj = load i32, ptr %2, align 4, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !526
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false), !tbaa.struct !531
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !470 ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 576
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !472
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !470
  br label %bb.l

bb.g:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.as, 0
  br i1 %.not18.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !456 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !483 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.aw, %i.ay
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !455
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !454
  %i.be = add i32 %i.bd, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, 592
  %i.bh = add nuw nsw i64 %i.bg, 608
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !484
  %i.bk = load ptr, ptr %i.at, align 8
  %i.bl = tail call ptr %i.bj(ptr %i.bk, ptr noundef null, i64 noundef %i.bh) #50, !inline_history !37 ; 4 uses
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !456
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !459
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !456
  store i32 0, ptr %i.bl, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.i
  %i.bo = phi i32 [ 0, %.thread.i.i.i ], [ %i.aw, %bb.i ] ; 2 uses
  %i.bp = phi ptr [ %i.bl, %.thread.i.i.i ], [ %i.av, %bb.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = add nuw i32 %i.bo, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !483
  %i.bs = zext i32 %i.bo to i64
  %i.bt = getelementptr inbounds nuw [592 x i8], ptr %i.bq, i64 %i.bs
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.bv = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.bu, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.bv, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %nk_pool_alloc.exit.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.bt, %nk_pool_alloc.exit.i.i ], [ %i.bv, %bb.k ] ; 6 uses
  %i.bw = ptrtoint ptr %.0.i.i to i64
  %i.bx = and i64 %i.bw, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.l
  %i.by = sub nuw nsw i64 4, %i.bx                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 range(i64 0, 4) %i.by, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.by ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 range(i64 0, 4) %i.bx, i1 false), !tbaa !56
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.j, %bb.k, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.k ], [ null, %bb.j ]
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.ca, align 8, !tbaa !416
  store ptr %6, ptr %i.a, align 8, !tbaa !415
  %i.cb = and i32 %4, 64
  %.not41 = icmp eq i32 %i.cb, 0
  %i.cc = select i1 %.not41, ptr null, ptr %3
  %i.cd = call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef %i.cc, i32 noundef 2) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false), !tbaa.struct !531
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !416 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !157
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %1, ptr %i.ch, align 8, !tbaa !485
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr %2, ptr %i.ci, align 8, !tbaa !486
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 456
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !505
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !416
  store ptr %i.b, ptr %i.a, align 8, !tbaa !415
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !488
  %i.cn = and i32 %i.cm, 49152
  %or.cond47 = icmp eq i32 %i.cn, 0
  br i1 %or.cond47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %nk_create_panel.exit
  call void @nk_group_scrolled_end(ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %nk_create_panel.exit, %bb.m, %bb.d, %bb.e
  %.2 = phi i1 [ false, %bb.d ], [ true, %bb.m ], [ false, %bb.e ], [ true, %nk_create_panel.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define void @nk_group_scrolled_end(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #20 {
bb.a:
  %1 = alloca %struct.nk_window, align 8          ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 8 uses
  %.not45 = icmp eq ptr %i.b, null
  br i1 %.not45, label %bb.i, label %.loopexit46.i.i.thread

.loopexit46.i.i.thread:                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !505  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %1, i8 0, i64 544, i1 false), !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9676
  %.sroa.0.0.i = load <2 x float>, ptr %i.g, align 4, !tbaa !54 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load float, ptr %i.i, align 8, !tbaa !493 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.l = load float, ptr %i.k, align 8, !tbaa !543 ; 2 uses
  %i.m = fadd float %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %.sroa.01.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.o = load <2 x float>, ptr %i.h, align 8, !tbaa !54
  %i.p = insertelement <2 x float> %.sroa.0.0.i, float %i.m, i64 1
  %i.q = fsub <2 x float> %i.o, %i.p              ; 4 uses
  %i.r = extractelement <2 x float> %i.q, i64 1
  store <2 x float> %i.q, ptr %i.n, align 4, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load float, ptr %i.s, align 8, !tbaa !490
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract, float 2.000000e+00, float %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  store float %i.u, ptr %i.v, align 4, !tbaa !478
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !502
  %i.y = fadd float %i.j, %i.x
  %i.z = fadd float %i.l, %i.y                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.z, ptr %i.aa, align 8, !tbaa !482
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !488 ; 3 uses
  %i.ad = and i32 %i.ac, 1
  %.not46 = icmp eq i32 %i.ad, 0
  %i.ae = insertelement <2 x float> poison, float %i.u, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.z, i64 1 ; 2 uses
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit46.i.i.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !491
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fsub <2 x float> %i.q, %i.aj            ; 3 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> splat (float 2.000000e+00), <2 x float> %i.af) ; 2 uses
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.an, ptr %i.n, align 4, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit46.i.i.thread
  %i.ao = phi float [ %i.al, %bb.c ], [ %i.r, %.loopexit46.i.i.thread ]
  %i.ap = phi <2 x float> [ %i.ak, %bb.c ], [ %i.q, %.loopexit46.i.i.thread ] ; 3 uses
  %i.aq = phi <2 x float> [ %i.am, %bb.c ], [ %i.af, %.loopexit46.i.i.thread ] ; 2 uses
  %i.ar = and i32 %i.ac, 32
  %.not47 = icmp eq i32 %i.ar, 0
  br i1 %.not47, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 9652
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !54
  %i.au = fadd <2 x float> %i.at, %i.aq           ; 2 uses
  store <2 x float> %i.au, ptr %i.v, align 4, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = phi <2 x float> [ %i.au, %bb.e ], [ %i.aq, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !485
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !525
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !486
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !526
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.ac, ptr %i.be, align 8, !tbaa !235
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i64 64, i1 false), !tbaa.struct !531
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.d, ptr %i.bh, align 8, !tbaa !416
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 544
  store ptr %i.b, ptr %i.bi, align 8, !tbaa !506
  store ptr %1, ptr %i.a, align 8, !tbaa !415
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 68 ; 2 uses
  %i.bk = extractelement <2 x float> %i.av, i64 1
  %i.bl = fadd float %i.ao, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 76 ; 2 uses
  %i.bn = shufflevector <2 x float> %i.ap, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 0, i32 2>
  %i.bo = insertelement <2 x float> %i.av, float %i.bl, i64 1
  %i.bp = fadd <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bj, align 4, !tbaa !54 ; 3 uses
  %i.br = fcmp olt <2 x float> %i.bq, %i.ap
  %i.bs = load <2 x float>, ptr %i.bm, align 4, !tbaa !54
  %i.bt = fadd <2 x float> %i.bq, %i.bs           ; 2 uses
  %i.bu = fcmp olt <2 x float> %i.bt, %i.bp
  %i.bv = select <2 x i1> %i.bu, <2 x float> %i.bt, <2 x float> %i.bp
  %i.bw = select <2 x i1> %i.br, <2 x float> %i.ap, <2 x float> %i.bq ; 3 uses
  %i.bx = fsub <2 x float> %i.bv, %i.bw           ; 2 uses
  %i.by = fcmp ogt <2 x float> %i.bx, zeroinitializer
  %i.bz = select <2 x i1> %i.by, <2 x float> %i.bx, <2 x float> zeroinitializer ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cb = shufflevector <2 x float> %i.bw, <2 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.cb, ptr %i.ca, align 8, !tbaa !54
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !99
  %i.cd = call fastcc ptr @nk_buffer_alloc(ptr noundef %i.cc, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i48 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i48, label %nk_push_scissor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = load ptr, ptr %i.bf, align 8, !tbaa !99 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !69
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !100
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 31
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = and i64 %i.cn, -8
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  store i32 1, ptr %i.cd, align 8, !tbaa !102
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 88
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !77
  %i.ct = add i64 %i.cs, %i.cq                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !103
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.ct, ptr %i.cv, align 8, !tbaa !104
  %i.cw = shufflevector <2 x float> %i.bw, <2 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cx = fptosi <4 x float> %i.cw to <4 x i16>
end_hunk_10
begin_hunk_11_@nk_group_begin_titled:bb.a
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !40

bb.e:                                             ; preds = %bb.d, %.lr.ph.i51
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i51 ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55
  %i.q = icmp eq i32 %i.p, %i.j
  br i1 %i.q, label %bb.g, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph29.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.r, align 8, !tbaa !555 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph29.i

.loopexit:                                        ; preds = %._crit_edge.i, %nk_strlen.exit
  %i.s = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.j) ; 3 uses
  %i.t = add i32 %i.j, 1
  %i.u = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.t) ; 3 uses
  %i.v = icmp ne ptr %i.s, null
  %i.w = icmp ne ptr %i.u, null
  %or.cond3 = and i1 %i.v, %i.w
  br i1 %or.cond3, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.loopexit
  store i32 0, ptr %i.u, align 4, !tbaa !55
  store i32 0, ptr %i.s, align 4, !tbaa !55
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.b, align 8, !tbaa !236  ; 2 uses
  store i32 %i.x, ptr %.01627.i, align 8, !tbaa !468
  %i.y = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.aa = add i32 %i.j, 1                         ; 2 uses
  br label %.lr.ph29.i54

.lr.ph29.i54:                                     ; preds = %bb.g, %._crit_edge.i62
  %.01627.i55 = phi ptr [ %.016.i63, %._crit_edge.i62 ], [ %.01625.i, %bb.g ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !556 ; 2 uses
  %.not1923.not.i56 = icmp eq i32 %i.ac, 0
  br i1 %.not1923.not.i56, label %._crit_edge.i62, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph29.i54
  %i.ad = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 8
  %wide.trip.count.i58 = zext i32 %i.ac to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i58
  br i1 %exitcond.not.i61, label %._crit_edge.i62, label %bb.i, !llvm.loop !40

bb.i:                                             ; preds = %bb.h, %.lr.ph.i57
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.i57 ], [ %indvars.iv.next.i60, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i59
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55
  %i.ag = icmp eq i32 %i.af, %i.aa
  br i1 %i.ag, label %nk_find_value.exit67, label %bb.h

._crit_edge.i62:                                  ; preds = %bb.h, %.lr.ph29.i54
  %i.ah = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 560
  %.016.i63 = load ptr, ptr %i.ah, align 8, !tbaa !555 ; 2 uses
  %.not.i64 = icmp eq ptr %.016.i63, null
  br i1 %.not.i64, label %bb.j, label %.lr.ph29.i54

nk_find_value.exit67:                             ; preds = %bb.i
  store i32 %i.x, ptr %.01627.i55, align 8, !tbaa !468
  %i.ai = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 284
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i59
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i62
  %i.ak = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.aa) ; 3 uses
  %.not50 = icmp eq ptr %i.ak, null
  br i1 %.not50, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 4, !tbaa !55
  store i32 0, ptr %i.z, align 4, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %nk_find_value.exit67, %bb.k, %bb.f
  %.037 = phi ptr [ %i.z, %nk_find_value.exit67 ], [ %i.z, %bb.k ], [ %i.s, %bb.f ]
  %.0 = phi ptr [ %i.aj, %nk_find_value.exit67 ], [ %i.ak, %bb.k ], [ %i.u, %bb.f ]
  %i.al = tail call zeroext i1 @nk_group_scrolled_offset_begin(ptr noundef nonnull %0, ptr noundef nonnull %.037, ptr noundef nonnull %.0, ptr noundef %2, i32 noundef %3)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %.loopexit, %bb.a, %bb.b, %bb.c, %bb.l
  %.038 = phi i1 [ %i.al, %bb.l ], [ false, %.loopexit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.j ]
  ret i1 %.038
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @nk_add_value(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %nk_push_table.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !465  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !556  ; 2 uses
  %i.g = icmp ugt i32 %i.f, 68
  br i1 %i.g, label %bb.d, label %nk_push_table.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !470  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 576
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !472
  store ptr %i.k, ptr %i.h, align 8, !tbaa !470
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.m = load i32, ptr %i.l, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.m, 0
  br i1 %.not18.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !456  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.p, align 8, !tbaa !483  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.s = load i32, ptr %i.r, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.q, %i.s
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.u = load i32, ptr %i.t, align 8, !tbaa !455
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %nk_push_table.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.x = load i32, ptr %i.w, align 8, !tbaa !454
  %i.y = add i32 %i.x, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 592
  %i.ab = add nuw nsw i64 %i.aa, 608
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !484
  %i.ae = load ptr, ptr %i.n, align 8
  %i.af = tail call ptr %i.ad(ptr %i.ae, ptr noundef null, i64 noundef %i.ab) #50, !inline_history !1076 ; 4 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !456
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !459
  store ptr %i.af, ptr %i.o, align 8, !tbaa !456
  store i32 0, ptr %i.af, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.h
  %i.ai = phi i32 [ 0, %.thread.i.i.i ], [ %i.q, %bb.h ] ; 2 uses
  %i.aj = phi ptr [ %i.af, %.thread.i.i.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = add nuw i32 %i.ai, 1
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !483
  %i.am = zext i32 %i.ai to i64
  %i.an = getelementptr inbounds nuw [592 x i8], ptr %i.ak, i64 %i.am
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.ap = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.ao, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ap, null
  br i1 %.not19.i.i, label %nk_push_table.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %nk_pool_alloc.exit.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.i, %bb.e ], [ %i.an, %nk_pool_alloc.exit.i.i ], [ %i.ap, %bb.j ] ; 14 uses
  %i.aq = ptrtoint ptr %.0.i.i to i64
  %i.ar = and i64 %i.aq, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %bb.l

.loopexit46.i.i.i.i:                              ; preds = %bb.k
  %i.as = sub nuw nsw i64 4, %i.ar                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 range(i64 0, 4) %i.as, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.as ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 range(i64 0, 4) %i.ar, i1 false), !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !465 ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !465
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 560
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !556
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.ax, align 8, !tbaa !1077
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !465 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre30 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !556
  br label %nk_push_table.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 568
  store ptr %.0.i.i, ptr %i.ay, align 8, !tbaa !469
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 560
  store ptr %i.au, ptr %i.az, align 8, !tbaa !467
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 568
  store ptr null, ptr %i.ba, align 8, !tbaa !469
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !556
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !465
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1077
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !1077
  br label %nk_push_table.exit.thread

nk_push_table.exit.thread:                        ; preds = %bb.n, %bb.m, %bb.c
  %i.bf = phi i32 [ 0, %bb.n ], [ %.pre30, %bb.m ], [ %i.f, %bb.c ] ; 2 uses
  %i.bg = phi ptr [ %.0.i.i, %bb.n ], [ %.pre, %bb.m ], [ %i.d, %bb.c ] ; 4 uses
  %i.bh = load i32, ptr %1, align 8, !tbaa !236
  store i32 %i.bh, ptr %i.bg, align 8, !tbaa !468
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk
  store i32 %2, ptr %i.bl, align 4, !tbaa !55
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 284
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store i32 0, ptr %i.bn, align 4, !tbaa !55
  %i.bo = add i32 %i.bf, 1
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !556
  br label %nk_push_table.exit

nk_push_table.exit:                               ; preds = %bb.i, %bb.j, %bb.a, %nk_push_table.exit.thread
  %.1 = phi ptr [ %i.bn, %nk_push_table.exit.thread ], [ null, %bb.a ], [ null, %bb.j ], [ null, %bb.i ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_group_begin(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call zeroext i1 @nk_group_begin_titled(ptr noundef %0, ptr noundef %1, ptr noundef %1, i32 noundef %2)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define void @nk_group_end(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  tail call void @nk_group_scrolled_end(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_group_get_scroll(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 7 uses
  %.not48 = icmp eq ptr %i.b, null
  br i1 %.not48, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %.lr.ph.i.preheader, label %bb.p

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.g = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i79 = icmp eq i8 %i.g, 0
  br i1 %.not4.i79, label %nk_strlen.exit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.h = trunc i64 %strlen to i32
  %i.i = add i32 %i.h, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader82, %.lr.ph.i.preheader
  %.07.i.lcssa = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.i, %.lr.ph.i.preheader82 ]
  %i.j = tail call i32 @nk_murmur_hash(ptr noundef nonnull %1, i32 noundef %.07.i.lcssa, i32 noundef 2) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.01625.i = load ptr, ptr %i.k, align 8, !tbaa !555 ; 3 uses
  %.not26.i = icmp eq ptr %.01625.i, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %nk_strlen.exit, %._crit_edge.i
  %.01627.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01625.i, %nk_strlen.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01627.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !556  ; 2 uses
  %.not1923.not.i = icmp eq i32 %i.m, 0
  br i1 %.not1923.not.i, label %._crit_edge.i, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.lr.ph29.i
  %i.n = getelementptr inbounds nuw i8, ptr %.01627.i, i64 8
  %wide.trip.count.i = zext i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !40

bb.e:                                             ; preds = %bb.d, %.lr.ph.i54
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i54 ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55
  %i.q = icmp eq i32 %i.p, %i.j
  br i1 %i.q, label %bb.g, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph29.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.r, align 8, !tbaa !555 ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph29.i

.loopexit:                                        ; preds = %._crit_edge.i, %nk_strlen.exit
  %i.s = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.j) ; 3 uses
  %i.t = add i32 %i.j, 1
  %i.u = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.t) ; 3 uses
  %i.v = icmp ne ptr %i.s, null
  %i.w = icmp ne ptr %i.u, null
  %or.cond3 = and i1 %i.v, %i.w
  br i1 %or.cond3, label %bb.f, label %bb.p

bb.f:                                             ; preds = %.loopexit
  store i32 0, ptr %i.u, align 4, !tbaa !55
  store i32 0, ptr %i.s, align 4, !tbaa !55
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.b, align 8, !tbaa !236  ; 2 uses
  store i32 %i.x, ptr %.01627.i, align 8, !tbaa !468
  %i.y = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.aa = add i32 %i.j, 1                         ; 2 uses
  br label %.lr.ph29.i57

.lr.ph29.i57:                                     ; preds = %bb.g, %._crit_edge.i65
  %.01627.i58 = phi ptr [ %.016.i66, %._crit_edge.i65 ], [ %.01625.i, %bb.g ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !556 ; 2 uses
  %.not1923.not.i59 = icmp eq i32 %i.ac, 0
  br i1 %.not1923.not.i59, label %._crit_edge.i65, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph29.i57
  %i.ad = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 8
  %wide.trip.count.i61 = zext i32 %i.ac to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %wide.trip.count.i61
  br i1 %exitcond.not.i64, label %._crit_edge.i65, label %bb.i, !llvm.loop !40

bb.i:                                             ; preds = %bb.h, %.lr.ph.i60
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.i60 ], [ %indvars.iv.next.i63, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i62
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55
  %i.ag = icmp eq i32 %i.af, %i.aa
  br i1 %i.ag, label %nk_find_value.exit70, label %bb.h

._crit_edge.i65:                                  ; preds = %bb.h, %.lr.ph29.i57
  %i.ah = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 560
  %.016.i66 = load ptr, ptr %i.ah, align 8, !tbaa !555 ; 2 uses
  %.not.i67 = icmp eq ptr %.016.i66, null
  br i1 %.not.i67, label %bb.j, label %.lr.ph29.i57

nk_find_value.exit70:                             ; preds = %bb.i
  store i32 %i.x, ptr %.01627.i58, align 8, !tbaa !468
  %i.ai = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 284
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i62
end_hunk_11
begin_hunk_12_@nk_textedit_redo:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.ad = sext i16 %i.r to i64
  %wide.trip.count = zext nneg i32 %i.t to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ac, i64 %i.ad
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !622
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = add nsw i32 %i.ae, %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  store i32 0, ptr %i.c, align 4, !tbaa !55
  %i.ah = call ptr @nk_str_at_const(ptr noundef nonnull readonly %i.ab, i32 noundef %i.ag, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) ; 0 uses
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ai, ptr %gep, align 4, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !1158

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @nk_str_delete_runes(ptr noundef nonnull %i.aj, i32 noundef %.sroa.0.0.copyload, i32 noundef %i.t)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  %.not42 = icmp eq i16 %.sroa.7.0.copyload, 0
  br i1 %.not42, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.am = sext i16 %.sroa.14.0.copyload to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.ao = icmp sgt i16 %.sroa.7.0.copyload, 0
  br i1 %i.ao, label %.lr.ph.preheader.i, label %nk_str_insert_text_runes.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i16 %.sroa.7.0.copyload to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %nk_utf_encode.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %nk_utf_encode.exit.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !55 ; 3 uses
  %i.ar = icmp ugt i32 %i.aq, 1114110
  %i.as = add i32 %i.aq, -55296
  %or.cond.i.i.i = icmp ult i32 %i.as, 2047
  %or.cond15.i.i.i = or i1 %i.ar, %or.cond.i.i.i
  %spec.select23.i.i = select i1 %or.cond15.i.i.i, i32 65533, i32 %i.aq ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %.lr.ph.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.h ], [ 1, %.lr.ph.i ] ; 7 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %indvars.iv.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !55
  %i.av = icmp ugt i32 %spec.select23.i.i, %i.au
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, 1
  br i1 %i.av, label %bb.h, label %nk_utf_validate.exit.i.i, !llvm.loop !8

nk_utf_validate.exit.i.i:                         ; preds = %bb.h
  %i.aw = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ax = icmp samesign ugt i64 %indvars.iv.i.i.i, 4
  br i1 %i.ax, label %nk_str_insert_text_runes.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %nk_utf_validate.exit.i.i
  %.not25.i.i = icmp eq i64 %indvars.iv.i.i.i, 1
  br i1 %.not25.i.i, label %nk_utf_encode.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.ay = sext i32 %indvars.iv.i.i to i64         ; 4 uses
  %i.az = add nsw i64 %i.ay, -1
  %xtraiter = and i64 %i.ay, 3
  %i.ba = and i32 %indvars.iv.i.i, 3
  %lcmp.mod.not = icmp eq i32 %i.ba, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv28.i.i.prol = phi i64 [ %indvars.iv.next29.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ay, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02226.i.i.prol = phi i32 [ %i.bf, %.lr.ph.i.i.prol ], [ %spec.select23.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bb = trunc i32 %.02226.i.i.prol to i8
  %i.bc = and i8 %i.bb, 63
  %i.bd = or disjoint i8 %i.bc, -128
  %i.be = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv28.i.i.prol
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !56
  %i.bf = lshr i32 %.02226.i.i.prol, 6            ; 3 uses
  %indvars.iv.next29.i.i.prol = add nsw i64 %indvars.iv28.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1159

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i ], [ %i.bf, %.lr.ph.i.i.prol ]
  %indvars.iv28.i.i.unr = phi i64 [ %i.ay, %.lr.ph.preheader.i.i ], [ %indvars.iv.next29.i.i.prol, %.lr.ph.i.i.prol ]
  %.02226.i.i.unr = phi i32 [ %spec.select23.i.i, %.lr.ph.preheader.i.i ], [ %i.bf, %.lr.ph.i.i.prol ]
  %i.bg = icmp ult i64 %i.az, 3
  br i1 %i.bg, label %nk_utf_encode.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv28.i.i = phi i64 [ %indvars.iv.next29.i.i.3, %.lr.ph.i.i ], [ %indvars.iv28.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.02226.i.i = phi i32 [ %i.cd, %.lr.ph.i.i ], [ %.02226.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bh = trunc i32 %.02226.i.i to i8
  %i.bi = and i8 %i.bh, 63
  %i.bj = or disjoint i8 %i.bi, -128
  %i.bk = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv28.i.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !56
  %i.bl = lshr i32 %.02226.i.i, 6
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128
  %i.bp = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !56
  %i.br = lshr i32 %.02226.i.i, 12
  %i.bs = trunc i32 %i.br to i8
  %i.bt = and i8 %i.bs, 63
  %i.bu = or disjoint i8 %i.bt, -128
  %i.bv = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 -2
  store i8 %i.bu, ptr %i.bw, align 1, !tbaa !56
  %i.bx = lshr i32 %.02226.i.i, 18
  %i.by = trunc i32 %i.bx to i8
  %i.bz = and i8 %i.by, 63
  %i.ca = or disjoint i8 %i.bz, -128
  %i.cb = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 -3
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !56
  %i.cd = lshr i32 %.02226.i.i, 24                ; 2 uses
  %indvars.iv.next29.i.i.3 = add nsw i64 %indvars.iv28.i.i, -4 ; 2 uses
  %.not.i.i.3 = icmp eq i64 %indvars.iv.next29.i.i.3, 0
  br i1 %.not.i.i.3, label %nk_utf_encode.exit.i, label %.lr.ph.i.i, !llvm.loop !9

nk_utf_encode.exit.i:                             ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.preheader.i.i
  %.022.lcssa.i.i = phi i32 [ %spec.select23.i.i, %.preheader.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr @nk_utfbyte, i64 %indvars.iv.i.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !56
  %i.cg = getelementptr inbounds nuw i8, ptr @nk_utfmask, i64 %indvars.iv.i.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !56
  %i.ci = zext i8 %i.ch to i32
  %i.cj = xor i32 %i.ci, -1
  %i.ck = and i32 %.022.lcssa.i.i, %i.cj
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = or i8 %i.cf, %i.cl
  store i8 %i.cm, ptr %i.a, align 1, !tbaa !56
  %i.cn = trunc i64 %indvars.iv.i to i32
  %i.co = add i32 %.sroa.0.0.copyload, %i.cn
  %i.cp = call i32 @nk_str_insert_at_rune(ptr noundef nonnull %i.ak, i32 noundef %i.co, ptr noundef nonnull %i.a, i32 noundef %i.aw) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %nk_str_insert_text_runes.exit, label %.lr.ph.i, !llvm.loop !11

nk_str_insert_text_runes.exit:                    ; preds = %nk_utf_validate.exit.i.i, %nk_utf_encode.exit.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.i

bb.i:                                             ; preds = %nk_str_insert_text_runes.exit, %bb.g
  %i.cq = sext i16 %.sroa.7.0.copyload to i32
  %i.cr = add nsw i32 %.sroa.0.0.copyload, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !630
  %i.ct = load <2 x i16>, ptr %i.h, align 8, !tbaa !106
  %i.cu = add <2 x i16> %i.ct, splat (i16 1)
  store <2 x i16> %i.cu, ptr %i.h, align 8, !tbaa !106
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_textedit_init_fixed(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = and i64 %i.d, 3                          ; 3 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit46.i.thread, label %.loopexit46.i

.loopexit46.i.thread:                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5384) %0, i8 0, i64 5376, i1 false), !tbaa !55
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i:                                    ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.f, i1 false), !tbaa !56
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5380) %scevgep.i, i8 0, i64 5380, i1 false), !tbaa !55
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 5380
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %.loopexit46.i, %.loopexit46.i.thread
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.g, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.h, align 4, !tbaa !628
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.i, align 8, !tbaa !629
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.j, align 8, !tbaa !630
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !634
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.l, align 8, !tbaa !632
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.m, align 4, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.o, i8 0, i64 112, i1 false), !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.p, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %i.r, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %2, ptr %i.s, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.t, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit46.i.i.thread.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_textedit_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.loopexit46.i.thread, label %.loopexit46.i

.loopexit46.i.thread:                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5384) %0, i8 0, i64 5376, i1 false), !tbaa !55
  br label %nk_memset.exit

.loopexit46.i:                                    ; preds = %bb.b
  %i.e = sub nuw nsw i64 4, %i.d                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.e, i1 false), !tbaa !56
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5380) %scevgep.i, i8 0, i64 5380, i1 false), !tbaa !55
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 5380
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i, i8 0, i64 range(i64 0, 4) %i.d, i1 false), !tbaa !56
  br label %nk_memset.exit

nk_memset.exit:                                   ; preds = %.loopexit46.i.thread, %.loopexit46.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.g, align 4, !tbaa !628
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.h, align 8, !tbaa !629
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.i, align 8, !tbaa !630
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !634
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.k, align 8, !tbaa !632
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.l, align 4, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.not = icmp eq i64 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br i1 %.not, label %nk_str_init.exit, label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %nk_memset.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.n, i8 0, i64 120, i1 false), !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.o, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.r = load ptr, ptr %1, align 8
  %i.s = tail call ptr %i.q(ptr %i.r, ptr noundef null, i64 noundef %2) #50, !inline_history !1160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.s, ptr %i.t, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %i.u, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %2, ptr %i.v, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float 2.000000e+00, ptr %i.w, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !75
  br label %nk_str_init.exit

nk_str_init.exit:                                 ; preds = %nk_memset.exit, %.loopexit46.i.i.thread.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.y, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_str_init.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @nk_textedit_init_default(ptr noundef %0) local_unnamed_addr #38 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 3                          ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.loopexit46.i.thread, label %.loopexit46.i

.loopexit46.i.thread:                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5384) %0, i8 0, i64 5376, i1 false), !tbaa !55
  br label %nk_memset.exit

.loopexit46.i:                                    ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 range(i64 0, 4) %i.c, i1 false), !tbaa !56
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5380) %scevgep.i, i8 0, i64 5380, i1 false), !tbaa !55
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 5380
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i, i8 0, i64 range(i64 0, 4) %i.b, i1 false), !tbaa !56
  br label %nk_memset.exit

nk_memset.exit:                                   ; preds = %.loopexit46.i.thread, %.loopexit46.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.d, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.e, align 4, !tbaa !628
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.f, align 8, !tbaa !629
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.g, align 8, !tbaa !630
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !634
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.i, align 8, !tbaa !632
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.j, align 4, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i8 0, i64 112, i1 false), !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.m, align 8, !tbaa !68
  %i.n = tail call noalias noundef dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.n, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 32, ptr %i.p, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 32, ptr %i.q, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float 2.000000e+00, ptr %i.r, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.s, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @nk_malloc, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !73
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @nk_mfree, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.t, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_memset.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_textedit_select_all(ptr nofree noundef captures(none) initializes((172, 180)) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.a, align 4, !tbaa !628
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !627
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.c, ptr %i.d, align 8, !tbaa !629
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_textedit_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.b, null
  br i1 %.not9.i.i, label %nk_str_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %nk_str_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i, label %nk_str_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.g(ptr %i.i, ptr noundef nonnull %i.b) #50, !inline_history !1161
  br label %nk_str_free.exit

nk_str_free.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.j, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_str_free.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_default(ptr nofree readnone captures(none) %0, i32 %1) #0 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_ascii(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 129
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_float(ptr nofree readnone captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = add i32 %1, -48
  %or.cond = icmp ult i32 %i.a, 10
  %i.b = add i32 %1, -45
  %i.c = icmp ult i32 %i.b, 2
  %or.cond5.not = or i1 %or.cond, %i.c
  ret i1 %or.cond5.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_decimal(ptr nofree readnone captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = add i32 %1, -48
  %or.cond = icmp ult i32 %i.a, 10
  %i.b = icmp eq i32 %1, 45
  %or.cond3.not = or i1 %i.b, %or.cond
  ret i1 %or.cond3.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_hex(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -48
  %or.cond = icmp ult i32 %i.a, 10
  %i.b = and i32 %1, -33
  %i.c = add i32 %i.b, -65
  %i.d = icmp ult i32 %i.c, 6
  %or.cond12.not = or i1 %or.cond, %i.d
  ret i1 %or.cond12.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_oct(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -8
  %or.cond = icmp eq i32 %i.a, 48
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @nk_filter_binary(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, -2
  %or.cond = icmp eq i32 %i.a, 48
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_edit_focus(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 5 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.e = load i32, ptr %i.d, align 4, !tbaa !521
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store i32 1, ptr %i.f, align 4, !tbaa !520
  store i32 %i.e, ptr %i.c, align 8, !tbaa !635
  %i.g = and i32 %1, 512
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store i8 1, ptr %i.h, align 8, !tbaa !636
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_edit_unfocus(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #31 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
end_hunk_12
begin_hunk_13_@nk_property_float:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_property_double(ptr noundef %0, ptr noundef %1, double noundef %2, ptr nofree noundef captures(address_is_null) %3, double noundef %4, double noundef %5, float noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.nk_property_variant, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %3, align 8, !tbaa !63
  store i32 2, ptr %7, align 8, !tbaa !55
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store double %i.f, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !56
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %5, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !56
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.g = load double, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !56 ; 2 uses
  %i.h = load double, ptr %3, align 8, !tbaa !63
  %i.i = fcmp une double %i.g, %i.h
  store double %i.g, ptr %3, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define i32 @nk_propertyi(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.nk_property_variant, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %7, align 8, !tbaa !55
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %3, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %2, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %4, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %5, ptr %.sroa.718.0..sroa_idx, align 8
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 0)
  %i.e = load i32, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define float @nk_propertyf(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.nk_property_variant, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %7, align 8, !tbaa !55
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %3, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store float %2, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float %4, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %5, ptr %.sroa.719.0..sroa_idx, align 8
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.e = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi float [ %i.e, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret float %.0
}

; Function Attrs: nounwind uwtable
define double @nk_propertyd(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, float noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.nk_property_variant, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %7, align 8, !tbaa !55
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store double %3, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !56
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %5, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !56
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.e = load double, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %i.e, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret double %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_chart_begin_colored(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 %2, i32 %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #20 {
bb.a:
  %7 = alloca %struct.nk_rect, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_zero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not83 = icmp eq ptr %i.b, null
  br i1 %.not83, label %nk_zero.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not84 = icmp eq ptr %i.d, null
  br i1 %.not84, label %nk_zero.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %7, ptr noundef nonnull %0)
  %.not85 = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !415  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !416  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 248 ; 9 uses
  br i1 %.not85, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.i, i8 0, i64 196, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.e
  %i.l = sub nuw nsw i64 4, %i.k                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 0, i64 range(i64 0, 4) %i.l, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.i, i64 %i.l ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.k, i1 false), !tbaa !56
  br label %nk_zero.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = and i64 %i.n, 3                          ; 3 uses
  %.not.i.i86 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i86, label %.loopexit46.i.i89.thread, label %.loopexit46.i.i89

.loopexit46.i.i89.thread:                         ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(176) %i.p, i8 0, i64 176, i1 false), !tbaa !55
  br label %nk_zero.exit95

.loopexit46.i.i89:                                ; preds = %bb.f
  %i.q = sub nuw nsw i64 4, %i.o                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 0, i64 range(i64 0, 4) %i.q, i1 false), !tbaa !56
  %scevgep.i.i88 = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i88, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i94 = getelementptr i8, ptr %scevgep.i.i88, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i94, i8 0, i64 range(i64 0, 4) %i.o, i1 false), !tbaa !56
  %.pre = load i32, ptr %i.i, align 4, !tbaa !642
  br label %nk_zero.exit95

nk_zero.exit95:                                   ; preds = %.loopexit46.i.i89.thread, %.loopexit46.i.i89
  %i.r = phi i32 [ 0, %.loopexit46.i.i89.thread ], [ %.pre, %.loopexit46.i.i89 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5980
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 252
  %i.u = load <2 x float>, ptr %7, align 8, !tbaa !54
  %i.v = load <2 x float>, ptr %i.s, align 4, !tbaa !54 ; 3 uses
  %i.w = fadd <2 x float> %i.u, %i.v
  store <2 x float> %i.w, ptr %i.t, align 4, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 260
  %i.z = load <2 x float>, ptr %i.x, align 8, !tbaa !54
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float -2.000000e+00), <2 x float> %i.z) ; 2 uses
  %i.ab = fmul <2 x float> %i.v, splat (float 2.000000e+00) ; 2 uses
  %i.ac = fcmp olt <2 x float> %i.aa, %i.ab
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.ab, <2 x float> %i.aa
  store <2 x float> %i.ad, ptr %i.y, align 4, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  %i.af = add nsw i32 %i.r, 1
  store i32 %i.af, ptr %i.i, align 4, !tbaa !642
  %i.ag = sext i32 %i.r to i64
  %i.ah = getelementptr inbounds [44 x i8], ptr %i.ae, i64 %i.ag ; 8 uses
  store i32 %1, ptr %i.ah, align 4, !tbaa !644
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %4, ptr %i.ai, align 4, !tbaa !645
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5988 ; 5 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !646 ; 4 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %2, 8     ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %2, 16    ; 2 uses
  %i.am = fcmp oeq float %i.al, 1.000000e+00
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %nk_zero.exit95
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %2 to i8
  br label %nk_rgb_factor.exit

bb.h:                                             ; preds = %nk_zero.exit95
  %i.an = and i32 %2, 255
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = fmul float %i.al, %i.ao
  %i.aq = fptoui float %i.ap to i8
  %i.ar = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.as = uitofp nneg i32 %i.ar to float
  %i.at = fmul float %i.al, %i.as
  %i.au = fptoui float %i.at to i8
  %i.av = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.aw = uitofp nneg i32 %i.av to float
  %i.ax = fmul float %i.al, %i.aw
  %i.ay = fptoui float %i.ax to i8
  br label %nk_rgb_factor.exit

nk_rgb_factor.exit:                               ; preds = %bb.g, %bb.h
  %.sroa.3.0.i = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.g ], [ %i.au, %bb.h ]
  %.sroa.011.0.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.g ], [ %i.aq, %bb.h ]
  %.sroa.512.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.g ], [ %i.ay, %bb.h ]
  %.sroa.9.0.extract.shift.i = and i32 %2, -16777216
  %.sroa.512.0.insert.ext.i = zext i8 %.sroa.512.0.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.3.0.i to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.011.0.insert.ext.i = zext i8 %.sroa.011.0.i to i32
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.011.0.insert.ext.i
  store i32 %.sroa.011.0.insert.insert.i, ptr %i.aj, align 4, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %3, ptr %i.az, align 4, !tbaa !56
  %i.ba = fcmp olt float %5, %6                   ; 2 uses
  %i.bb = select i1 %i.ba, float %5, float %6     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store float %i.bb, ptr %i.bc, align 4, !tbaa !647
  %i.bd = select i1 %i.ba, float %6, float %5     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store float %i.bd, ptr %i.be, align 4, !tbaa !648
  %i.bf = fsub float %i.bd, %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store float %i.bf, ptr %i.bg, align 4, !tbaa !649
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5996
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !412, !range !88, !noundef !89
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i8 %i.bi, ptr %i.bj, align 4, !tbaa !650
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !413
  switch i32 %i.bk, label %nk_zero.exit [
    i32 1, label %nk_rgb_factor.exit107
    i32 2, label %nk_rgb_factor.exit119
    i32 0, label %bb.i
  ]

nk_rgb_factor.exit107:                            ; preds = %nk_rgb_factor.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.bn = load float, ptr %i.ak, align 4, !tbaa !646 ; 2 uses
  %i.bo = fcmp oeq float %i.bn, 1.000000e+00
  %i.bp = fmul float %i.bn, 2.550000e+02
  %i.bq = fptoui float %i.bp to i8
  %i.br = zext i8 %i.bq to i32
  %.sroa.512.0.insert.ext.i99 = select i1 %i.bo, i32 255, i32 %i.br ; 3 uses
  %.sroa.512.0.insert.shift.i100 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i99, 16
  %.sroa.3.0.insert.shift.i103 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i99, 8
  %.sroa.512.0.insert.insert.i101 = or disjoint i32 %.sroa.512.0.insert.shift.i100, %.sroa.3.0.insert.shift.i103
  %.sroa.3.0.insert.insert.i104 = or disjoint i32 %.sroa.512.0.insert.insert.i101, %.sroa.512.0.insert.ext.i99
  %.sroa.011.0.insert.insert.i106 = or disjoint i32 %.sroa.3.0.insert.insert.i104, -16777216
  %i.bs = load <2 x float>, ptr %7, align 8
  %i.bt = load <2 x float>, ptr %i.x, align 8
  tail call void @nk_draw_image(ptr noundef nonnull %i.bl, <2 x float> %i.bs, <2 x float> %i.bt, ptr noundef nonnull %i.bm, i32 %.sroa.011.0.insert.insert.i106)
  br label %nk_zero.exit

nk_rgb_factor.exit119:                            ; preds = %nk_rgb_factor.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.bw = load float, ptr %i.ak, align 4, !tbaa !646 ; 2 uses
  %i.bx = fcmp oeq float %i.bw, 1.000000e+00
  %i.by = fmul float %i.bw, 2.550000e+02
  %i.bz = fptoui float %i.by to i8
  %i.ca = zext i8 %i.bz to i32
  %.sroa.512.0.insert.ext.i111 = select i1 %i.bx, i32 255, i32 %i.ca ; 3 uses
  %.sroa.512.0.insert.shift.i112 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i111, 16
  %.sroa.3.0.insert.shift.i115 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i111, 8
  %.sroa.512.0.insert.insert.i113 = or disjoint i32 %.sroa.512.0.insert.shift.i112, %.sroa.3.0.insert.shift.i115
  %.sroa.3.0.insert.insert.i116 = or disjoint i32 %.sroa.512.0.insert.insert.i113, %.sroa.512.0.insert.ext.i111
  %.sroa.011.0.insert.insert.i118 = or disjoint i32 %.sroa.3.0.insert.insert.i116, -16777216
  %i.cb = load <2 x float>, ptr %7, align 8
  %i.cc = load <2 x float>, ptr %i.x, align 8
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.bu, <2 x float> %i.cb, <2 x float> %i.cc, ptr noundef nonnull %i.bv, i32 %.sroa.011.0.insert.insert.i118)
  br label %nk_zero.exit

bb.i:                                             ; preds = %nk_rgb_factor.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5976 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !1202
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.ch = load float, ptr %i.ak, align 4, !tbaa !646 ; 4 uses
  %i.ci = load i32, ptr %i.cg, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i120 = lshr i32 %i.ci, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i121 = lshr i32 %i.ci, 16 ; 2 uses
  %i.cj = fcmp oeq float %i.ch, 1.000000e+00
  br i1 %i.cj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.7.0.extract.trunc.i134 = trunc i32 %.sroa.7.0.extract.shift.i121 to i8
  %.sroa.5.0.extract.trunc.i135 = trunc i32 %.sroa.5.0.extract.shift.i120 to i8
  %.sroa.0.0.extract.trunc.i136 = trunc i32 %i.ci to i8
  br label %nk_rgb_factor.exit137

bb.k:                                             ; preds = %bb.i
  %i.ck = and i32 %i.ci, 255
  %i.cl = uitofp nneg i32 %i.ck to float
  %i.cm = fmul float %i.ch, %i.cl
  %i.cn = fptoui float %i.cm to i8
  %i.co = and i32 %.sroa.5.0.extract.shift.i120, 255
  %i.cp = uitofp nneg i32 %i.co to float
  %i.cq = fmul float %i.ch, %i.cp
  %i.cr = fptoui float %i.cq to i8
  %i.cs = and i32 %.sroa.7.0.extract.shift.i121, 255
  %i.ct = uitofp nneg i32 %i.cs to float
  %i.cu = fmul float %i.ch, %i.ct
  %i.cv = fptoui float %i.cu to i8
  br label %nk_rgb_factor.exit137

nk_rgb_factor.exit137:                            ; preds = %bb.j, %bb.k
  %.sroa.3.0.i122 = phi i8 [ %.sroa.5.0.extract.trunc.i135, %bb.j ], [ %i.cr, %bb.k ]
  %.sroa.011.0.i123 = phi i8 [ %.sroa.0.0.extract.trunc.i136, %bb.j ], [ %i.cn, %bb.k ]
  %.sroa.512.0.i124 = phi i8 [ %.sroa.7.0.extract.trunc.i134, %bb.j ], [ %i.cv, %bb.k ]
  %.sroa.9.0.extract.shift.i125 = and i32 %i.ci, -16777216
  %.sroa.512.0.insert.ext.i126 = zext i8 %.sroa.512.0.i124 to i32
  %.sroa.512.0.insert.shift.i127 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i126, 16
  %.sroa.512.0.insert.insert.i128 = or disjoint i32 %.sroa.512.0.insert.shift.i127, %.sroa.9.0.extract.shift.i125
  %.sroa.3.0.insert.ext.i129 = zext i8 %.sroa.3.0.i122 to i32
  %.sroa.3.0.insert.shift.i130 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i129, 8
  %.sroa.3.0.insert.insert.i131 = or disjoint i32 %.sroa.512.0.insert.insert.i128, %.sroa.3.0.insert.shift.i130
  %.sroa.011.0.insert.ext.i132 = zext i8 %.sroa.011.0.i123 to i32
  %.sroa.011.0.insert.insert.i133 = or disjoint i32 %.sroa.3.0.insert.insert.i131, %.sroa.011.0.insert.ext.i132
  %i.cw = load <2 x float>, ptr %7, align 8       ; 2 uses
  %i.cx = load <2 x float>, ptr %i.x, align 8     ; 3 uses
  tail call void @nk_fill_rect(ptr noundef nonnull %i.cd, <2 x float> %i.cw, <2 x float> %i.cx, float noundef %i.cf, i32 %.sroa.011.0.insert.insert.i133)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 5972
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !1203 ; 2 uses
  %i.da = fmul float %i.cz, 2.000000e+00
  %i.db = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = fadd <2 x float> %i.cw, %i.dc
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = fcmp olt <2 x float> %i.cx, %i.df
  %i.dh = select <2 x i1> %i.dg, <2 x float> %i.df, <2 x float> %i.cx
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dh)
  %i.dj = load float, ptr %i.ce, align 8, !tbaa !1202
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.dl = load float, ptr %i.ak, align 4, !tbaa !646 ; 4 uses
  %i.dm = load i32, ptr %i.dk, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i138 = lshr i32 %i.dm, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i139 = lshr i32 %i.dm, 16 ; 2 uses
  %i.dn = fcmp oeq float %i.dl, 1.000000e+00
  br i1 %i.dn, label %bb.l, label %bb.m

end_hunk_13
begin_hunk_14_@nk_chart_push_slot:bb.a
  %.sroa.05.1.i = phi i32 [ %.sroa.05.0.copyload7.i, %nk_stroke_line.exit.i ], [ %.sroa.05.0.copyload9.i, %bb.t ], [ %.sroa.05.0.copyload7.i, %bb.q ], [ %.sroa.05.0.copyload7.i, %bb.o ], [ %.sroa.05.0.copyload7.i, %bb.p ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ev = load i8, ptr %i.eu, align 4, !tbaa !650, !range !88, !noundef !89
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.u, label %bb.v

bb.u:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit135.thread.i
  %i.ex = fadd <2 x float> %i.ct, splat (float -2.000000e+00)
  tail call void @nk_fill_rect(ptr noundef nonnull %i.p, <2 x float> %i.ex, <2 x float> splat (float 4.000000e+00), float noundef 0.000000e+00, i32 %.sroa.05.1.i)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %nk_input_is_mouse_hovering_rect.exit135.thread.i
  store <2 x float> %i.ct, ptr %i.cu, align 4, !tbaa !54
  br label %nk_chart_push_line.exit

nk_chart_push_line.exit:                          ; preds = %bb.k, %bb.l, %bb.v
  %.0.i = phi i32 [ %.1.i, %bb.v ], [ %.0119.i, %bb.l ], [ %.0119.i, %bb.k ]
  %storemerge.in.i = load i32, ptr %i.x, align 4, !tbaa !1204
  %storemerge.i = add nsw i32 %storemerge.in.i, 1
  store i32 %storemerge.i, ptr %i.x, align 4, !tbaa !1204
  br label %nk_chart_push_column.exit

bb.w:                                             ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !475, !range !88, !noundef !89
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !1204 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !645 ; 4 uses
  %.not.i27 = icmp slt i32 %i.fd, %i.ff
  br i1 %.not.i27, label %bb.x, label %nk_chart_push_column.exit

bb.x:                                             ; preds = %bb.w
  %.not112.i = icmp eq i32 %i.ff, 0
  br i1 %.not112.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fg = add nsw i32 %i.ff, -1
  %i.fh = sitofp i32 %i.fg to float
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 260
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !1210
  %i.fk = fsub float %i.fj, %i.fh
  %i.fl = sitofp i32 %i.ff to float
  %i.fm = fdiv float %i.fk, %i.fl
  %.sroa.13.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fm, i64 0
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.13.0.i = phi <2 x float> [ %.sroa.13.8.vec.insert.i, %bb.y ], [ zeroinitializer, %bb.x ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.022.0.copyload.i = load i32, ptr %i.fn, align 4, !tbaa !56 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !1208 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !649 ; 5 uses
  %i.fs = fdiv float %1, %i.fr                    ; 3 uses
  %i.ft = fcmp olt float %i.fs, 0.000000e+00
  %i.fu = fneg float %i.fs
  %i.fv = select i1 %i.ft, float %i.fu, float %i.fs
  %i.fw = fmul float %i.fp, %i.fv                 ; 3 uses
  %.sroa.13.12.vec.insert.i = insertelement <2 x float> %.sroa.13.0.i, float %i.fw, i64 1
  %i.fx = fcmp ult float %1, 0.000000e+00
  br i1 %i.fx, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !647 ; 3 uses
  %i.ga = fcmp olt float %i.fz, 0.000000e+00
  %i.gb = fneg float %i.fz
  %i.gc = select i1 %i.ga, float %i.gb, float %i.fz
  %i.gd = fadd float %1, %i.gc
  %i.ge = fcmp olt float %i.fr, 0.000000e+00
  %i.gf = fneg float %i.fr
  %i.gg = select i1 %i.ge, float %i.gf, float %i.fr
  %i.gh = fdiv float %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !1207
  %i.gk = fadd float %i.fp, %i.gj
  %i.gl = fneg float %i.fp
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gh, float %i.gk)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.go = load float, ptr %i.gn, align 4, !tbaa !648
  %i.gp = fsub float %1, %i.go
  %i.gq = fdiv float %i.gp, %i.fr                 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !1207
  %i.gt = fcmp olt float %i.gq, 0.000000e+00
  %i.gu = fneg float %i.gq
  %i.gv = select i1 %i.gt, float %i.gu, float %i.gq
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.gv, float %i.gs)
  %i.gx = fsub float %i.gw, %i.fw
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink.i = phi float [ %i.gx, %bb.ab ], [ %i.gm, %bb.aa ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 252
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !1205
  %i.ha = sitofp i32 %i.fd to float               ; 2 uses
  %.sroa.13.8.vec.extract.i = extractelement <2 x float> %.sroa.13.0.i, i64 0 ; 2 uses
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.ha, float %.sroa.13.8.vec.extract.i, float %i.gz)
  %i.hc = fadd float %i.hb, %i.ha                 ; 3 uses
  %i.hd = insertelement <2 x float> poison, float %i.hc, i64 0
  %.sroa.0.0.vec.insert5.i = insertelement <2 x float> %i.hd, float %.sink.i, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !488
  %i.hg = and i32 %i.hf, 4096
  %i.hh = icmp ne i32 %i.hg, 0
  %or.cond.not.i29 = or i1 %i.hh, %i.fb
  br i1 %or.cond.not.i29, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !391 ; 2 uses
  %i.hl = fcmp ole float %i.hc, %i.hk
  %i.hm = fadd float %.sroa.13.8.vec.extract.i, %i.hc
  %i.hn = fcmp olt float %i.hk, %i.hm
  %or.cond.i30 = select i1 %i.hl, i1 %i.hn, i1 false
  br i1 %or.cond.i30, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.hp = load float, ptr %i.ho, align 8, !tbaa !392 ; 2 uses
  %i.hq = fcmp ole float %.sink.i, %i.hp
  %i.hr = fadd float %i.fw, %.sink.i
  %i.hs = fcmp olt float %i.hp, %i.hr
  %or.cond117.i = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %or.cond117.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ht = load i8, ptr %i.hi, align 4, !tbaa !388, !range !88, !noundef !89
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !383
  %.not114.i = icmp eq i32 %i.hw, 0
  %i.hx = select i1 %.not114.i, i32 1, i32 3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hy = phi i32 [ 1, %bb.af ], [ %i.hx, %bb.ag ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.022.0.copyload23.i = load i32, ptr %i.hz, align 4, !tbaa !56
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ad, %bb.ac
  %.099.i = phi i32 [ %i.hy, %bb.ah ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.ac ]
  %.sroa.022.0.i = phi i32 [ %.sroa.022.0.copyload23.i, %bb.ah ], [ %.sroa.022.0.copyload.i, %bb.ad ], [ %.sroa.022.0.copyload.i, %bb.ae ], [ %.sroa.022.0.copyload.i, %bb.ac ]
  tail call void @nk_fill_rect(ptr noundef nonnull %i.ey, <2 x float> %.sroa.0.0.vec.insert5.i, <2 x float> %.sroa.13.12.vec.insert.i, float noundef 0.000000e+00, i32 %.sroa.022.0.i)
  %i.ia = load i32, ptr %i.fc, align 4, !tbaa !1204
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.fc, align 4, !tbaa !1204
  br label %nk_chart_push_column.exit

nk_chart_push_column.exit:                        ; preds = %bb.ai, %bb.w, %nk_chart_push_line.exit, %bb.d, %bb.c, %bb.a, %bb.b
  %.022 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ %.0.i, %nk_chart_push_line.exit ], [ %.099.i, %bb.ai ], [ 0, %bb.w ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @nk_chart_push(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @nk_chart_push_slot(ptr noundef %0, float noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_chart_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_memset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %nk_memset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 3                          ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.loopexit46.i.thread, label %.loopexit46.i

.loopexit46.i.thread:                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.e, i8 0, i64 196, i1 false), !tbaa !55
  br label %nk_memset.exit

.loopexit46.i:                                    ; preds = %bb.c
  %i.h = sub nuw nsw i64 4, %i.g                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i8 0, i64 range(i64 0, 4) %i.h, i1 false), !tbaa !56
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.h ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i, i8 0, i64 range(i64 0, 4) %i.g, i1 false), !tbaa !56
  br label %nk_memset.exit

nk_memset.exit:                                   ; preds = %.loopexit46.i, %.loopexit46.i.thread, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_plot(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %3, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_chart_end.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %4 to i64                       ; 3 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d
  %i.f = load float, ptr %i.e, align 4, !tbaa !54 ; 6 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.d ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %3, 1
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.050 = phi float [ %i.f, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ] ; 2 uses
  %.04149 = phi float [ %i.f, %.lr.ph.preheader.new ], [ %..041.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.i = load float, ptr %gep, align 4, !tbaa !54 ; 4 uses
  %i.j = fcmp olt float %i.i, %.04149
  %..041 = select i1 %i.j, float %i.i, float %.04149 ; 2 uses
  %i.k = fcmp olt float %i.i, %.050
  %i.l = select i1 %i.k, float %.050, float %i.i  ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.m, i64 4
  %i.n = load float, ptr %gep.1, align 4, !tbaa !54 ; 4 uses
  %i.o = fcmp olt float %i.n, %..041
  %..041.1 = select i1 %i.o, float %i.n, float %..041 ; 3 uses
  %i.p = fcmp olt float %i.n, %i.l
  %i.q = select i1 %i.p, float %i.l, float %i.n   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1211

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.050.epil.init = phi float [ %i.f, %.lr.ph.preheader ], [ %i.q, %._crit_edge.unr-lcssa ] ; 2 uses
  %.04149.epil.init = phi float [ %i.f, %.lr.ph.preheader ], [ %..041.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.r = load float, ptr %gep.epil, align 4, !tbaa !54 ; 4 uses
  %i.s = fcmp olt float %i.r, %.04149.epil.init
  %..041.epil = select i1 %i.s, float %i.r, float %.04149.epil.init
  %i.t = fcmp olt float %i.r, %.050.epil.init
  %i.u = select i1 %i.t, float %.050.epil.init, float %i.r
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %..041.lcssa = phi float [ %..041.1, %._crit_edge.unr-lcssa ], [ %..041.epil, %.lr.ph.epil.preheader ]
  %.lcssa = phi float [ %i.q, %._crit_edge.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.x = load i32, ptr %i.v, align 8
  %i.y = load i32, ptr %i.w, align 4
  %i.z = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.x, i32 %i.y, i32 noundef %3, float noundef %..041.lcssa, float noundef %.lcssa)
  br i1 %i.z, label %.lr.ph53.preheader, label %nk_chart_end.exit

._crit_edge.thread:                               ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.ac = load i32, ptr %i.aa, align 8
  %i.ad = load i32, ptr %i.ab, align 4
  %i.ae = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.ac, i32 %i.ad, i32 noundef %3, float noundef %i.f, float noundef %i.f)
  br i1 %i.ae, label %._crit_edge54, label %nk_chart_end.exit

.lr.ph53.preheader:                               ; preds = %._crit_edge
  %wide.trip.count59 = zext nneg i32 %3 to i64
  %invariant.gep67 = getelementptr [4 x i8], ptr %2, i64 %i.d
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %indvars.iv56 = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next57, %.lr.ph53 ] ; 2 uses
  %gep68 = getelementptr [4 x i8], ptr %invariant.gep67, i64 %indvars.iv56
  %i.af = load float, ptr %gep68, align 4, !tbaa !54
  %i.ag = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.af, i32 noundef 0) ; 0 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge54, label %.lr.ph53, !llvm.loop !1212

._crit_edge54:                                    ; preds = %.lr.ph53, %._crit_edge.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !415 ; 2 uses
  %.not6.i = icmp eq ptr %i.ai, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !416
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = and i64 %i.am, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.al, i8 0, i64 196, i1 false), !tbaa !55
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ao = sub nuw nsw i64 4, %i.an                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 0, i64 range(i64 0, 4) %i.ao, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.al, i64 %i.ao ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.an, i1 false), !tbaa !56
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge54, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_plot_function(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %4, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_chart_end.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float %3(ptr noundef %2, i32 noundef %5) #50 ; 4 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.044 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.03743 = phi float [ %i.k, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %.03842 = phi float [ %i.i, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = add nsw i32 %.044, %5
  %i.g = tail call float %3(ptr noundef %2, i32 noundef %i.f) #50 ; 4 uses
  %i.h = fcmp olt float %i.g, %.03842
  %i.i = select i1 %i.h, float %i.g, float %.03842 ; 2 uses
  %i.j = fcmp olt float %i.g, %.03743
  %i.k = select i1 %i.j, float %.03743, float %i.g ; 2 uses
  %i.l = add nuw nsw i32 %.044, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1213

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.o = load i32, ptr %i.m, align 8
  %i.p = load i32, ptr %i.n, align 4
  %i.q = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.o, i32 %i.p, i32 noundef %4, float noundef %i.i, float noundef %i.k)
  br i1 %i.q, label %.lr.ph47, label %nk_chart_end.exit

._crit_edge.thread:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.t = load i32, ptr %i.r, align 8
  %i.u = load i32, ptr %i.s, align 4
  %i.v = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.t, i32 %i.u, i32 noundef %4, float noundef %i.d, float noundef %i.d)
  br i1 %i.v, label %._crit_edge48, label %nk_chart_end.exit

.lr.ph47:                                         ; preds = %._crit_edge, %.lr.ph47
  %.146 = phi i32 [ %i.z, %.lr.ph47 ], [ 0, %._crit_edge ] ; 2 uses
  %i.w = add nsw i32 %.146, %5
  %i.x = tail call float %3(ptr noundef %2, i32 noundef %i.w) #50
  %i.y = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.x, i32 noundef 0) ; 0 uses
  %i.z = add nuw nsw i32 %.146, 1                 ; 2 uses
  %exitcond50.not = icmp eq i32 %i.z, %4
  br i1 %exitcond50.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !1214

._crit_edge48:                                    ; preds = %.lr.ph47, %._crit_edge.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !415 ; 2 uses
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !416
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 248 ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.ae, i8 0, i64 196, i1 false), !tbaa !55
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ah = sub nuw nsw i64 4, %i.ag                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 0, i64 range(i64 0, 4) %i.ah, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.ae, i64 %i.ah ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.ag, i1 false), !tbaa !56
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge48, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_color_pick(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_do_color_picker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 15 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_do_color_picker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %nk_do_color_picker.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0)
  switch i32 %i.h, label %bb.f [
    i32 0, label %nk_do_color_picker.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not29 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not29, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 21 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !414  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %nk_do_color_picker.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 5 uses
  %i.r = load <2 x float>, ptr %3, align 8        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !140 ; 5 uses
  %.sroa.0152.0.vec.extract.i = extractelement <2 x float> %i.r, i64 0 ; 3 uses
  %.sroa.0152.4.vec.extract163.i = extractelement <2 x float> %i.r, i64 1 ; 3 uses
  %i.u = fadd <2 x float> %i.r, zeroinitializer   ; 11 uses
  %i.v = extractelement <2 x float> %i.u, i64 1   ; 9 uses
  %.sroa.10.8.vec.extract166.i = extractelement <2 x float> %i.q, i64 0
  %.sroa.10.12.vec.extract.i = extractelement <2 x float> %i.q, i64 1 ; 8 uses
  %i.w = fmul float %i.t, 2.000000e+00
  %i.x = fadd float %i.w, 0.000000e+00
  %i.y = fsub float %.sroa.10.8.vec.extract166.i, %i.x ; 2 uses
  %.sroa.12.8.vec.insert.i = insertelement <2 x float> %i.q, float %i.y, i64 0 ; 5 uses
  %.sroa.20.8.vec.insert.i = insertelement <2 x float> poison, float %i.t, i64 0
  %.sroa.20.12.vec.insert.i = insertelement <2 x float> %i.q, float %i.t, i64 0 ; 3 uses
  %i.z = extractelement <2 x float> %i.u, i64 0
  %i.aa = fadd float %i.z, %i.y                   ; 6 uses
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0 ; 3 uses
  %i.ac = insertelement <2 x float> %i.u, float %i.aa, i64 0
  %i.ad = fadd float %i.t, %i.aa                  ; 4 uses
  %i.ae = insertelement <2 x float> %i.u, float %i.ad, i64 0 ; 2 uses
  %.not169.i = icmp eq i32 %2, 1                  ; 2 uses
  %i.af = load <2 x float>, ptr %1, align 4       ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4    ; 4 uses
  %.sroa.0.4.vec.extract.i.i.i.i = extractelement <2 x float> %i.af, i64 1
  %.sroa.18.8.vec.extract.i.i.i.i = extractelement <2 x float> %i.ah, i64 0
  %i.ai = fcmp olt float %.sroa.0.4.vec.extract.i.i.i.i, %.sroa.18.8.vec.extract.i.i.i.i ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.af, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i.i = shufflevector <2 x float> %i.ah, <2 x float> %i.af, <2 x i32> <i32 3, i32 1>
  %.0.i.i.i.i = select i1 %i.ai, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.ai, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, <2 x float> %i.af ; 4 uses
  %.sroa.18.0.i.i.i.i = select i1 %i.ai, <2 x float> %.sroa.18.8.vec.insert.i.i.i.i, <2 x float> %i.ah ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 1
  %i.aj = fcmp olt float %.sroa.0.0.vec.extract.i.i.i.i, %.sroa.0.4.vec.extract27.i.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fsub float f0xBEAAAAAB, %.0.i.i.i.i
  %.1.i.i.i.i = select i1 %i.aj, float %i.ak, float %.0.i.i.i.i
  %.sroa.0.1.i.i.i.i = select i1 %i.aj, <2 x float> %.sroa.0.4.vec.insert31.i.i.i.i, <2 x float> %.sroa.0.0.i.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i.i, i64 0 ; 2 uses
  %i.al = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i.i, %.sroa.18.8.vec.extract46.i.i.i.i
  %i.am = select i1 %i.al, float %.sroa.0.4.vec.extract33.i.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i.i
  %i.an = fadd float %.sroa.0.0.vec.extract18.i.i.i.i, f0x1E3CE508
  %i.ao = shufflevector <2 x float> %.sroa.18.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ap = insertelement <2 x float> %i.ao, float %i.am, i64 0
  %i.aq = fsub <2 x float> %.sroa.0.1.i.i.i.i, %i.ap ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float 6.000000e+00, float f0x1E3CE508)
  %i.at = insertelement <2 x float> poison, float %i.an, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.as, i64 1
  %i.av = fdiv <2 x float> %i.aq, %i.au           ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1
  %i.ax = fadd float %.1.i.i.i.i, %i.aw           ; 3 uses
  %i.ay = fcmp olt float %i.ax, 0.000000e+00
  %i.az = fneg float %i.ax
  %i.ba = select i1 %i.ay, float %i.az, float %i.ax
  %.sroa.18.12.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i.i, i64 1 ; 2 uses
  %i.bb = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.u, <2 x float> %.sroa.12.8.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  %i.bc = shufflevector <2 x float> %i.av, <2 x float> %.sroa.0.1.i.i.i.i, <2 x i32> <i32 0, i32 2>
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 356
  %i.be = fadd <2 x float> %.sroa.12.8.vec.insert.i, splat (float -1.000000e+00)
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !54
  %i.bg = fsub <2 x float> %i.bf, %i.u
  %i.bh = fdiv <2 x float> %i.bg, %i.be           ; 3 uses
  %i.bi = fcmp ule <2 x float> %i.bh, zeroinitializer
  %i.bj = fcmp ogt <2 x float> %i.bh, splat (float 1.000000e+00)
  %i.bk = select <2 x i1> %i.bj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bh ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 1
  %i.bm = fsub float 1.000000e+00, %i.bl
  %i.bn = insertelement <2 x float> %i.bk, float %i.bm, i64 1
  %i.bo = select <2 x i1> %i.bi, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.bn
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi i8 [ 1, %bb.h ], [ 0, %bb.g ]
  %i.bp = phi <2 x float> [ %i.bo, %bb.h ], [ %i.bc, %bb.g ] ; 5 uses
  %i.bq = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.ac, <2 x float> %.sroa.20.12.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  br i1 %i.bq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.bs = load float, ptr %i.br, align 4, !tbaa !392
  %i.bt = fsub float %i.bs, %i.v
  %i.bu = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.bv = fdiv float %i.bt, %i.bu                 ; 3 uses
  %i.bw = fcmp ogt float %i.bv, 1.000000e+00
  %i.bx = fcmp ule float %i.bv, 0.000000e+00      ; 2 uses
  %brmerge10.i.i = or i1 %i.bx, %i.bw
  %.mux11.i.i = select i1 %i.bx, float 0.000000e+00, float 1.000000e+00
  br i1 %brmerge10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i = phi float [ %i.ba, %bb.i ], [ %.mux11.i.i, %bb.j ], [ %i.bv, %bb.k ]
  %.1.i.i = phi i8 [ %.0.i.i, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ] ; 3 uses
  br i1 %.not169.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.by = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.ae, <2 x float> %.sroa.20.12.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !392
  %i.cb = fsub float %i.ca, %i.v
  %i.cc = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.cd = fdiv float %i.cb, %i.cc                 ; 3 uses
  %i.ce = fcmp ogt float %i.cd, 1.000000e+00
  %i.cf = fcmp ule float %i.cd, 0.000000e+00
  %.mux13.i.i = select i1 %i.ce, float 1.000000e+00, float %i.cd
  %i.cg = fsub float 1.000000e+00, %.mux13.i.i
  %i.ch = select i1 %i.cf, float 1.000000e+00, float %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.11.0.i.i = phi float [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.l ], [ %i.ch, %bb.n ], [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.m ] ; 2 uses
  %.2.i.i = phi i8 [ %.1.i.i, %bb.l ], [ 1, %bb.n ], [ %.1.i.i, %bb.m ]
  %i.ci = load i32, ptr %i.m, align 8, !tbaa !55
  %i.cj = and i32 %i.ci, 2
  %..i.i = or disjoint i32 %i.cj, 4               ; 2 uses
  store i32 %..i.i, ptr %i.m, align 8, !tbaa !55
  %i.ck = trunc nuw i8 %.1.i.i to i1
  br i1 %i.ck, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.cl = extractelement <2 x float> %i.bp, i64 0 ; 3 uses
  %i.cm = fcmp ugt float %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bp, <2 x i32> <i32 3, i32 1>
  %.sroa.0.4.vec.insert.i.i94.i.i = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %nk_hsva_colorfv.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.co = fdiv float %.sroa.0.0.i.i, f0x3E2AAAAB  ; 2 uses
  %i.cp = fptosi float %i.co to i32               ; 2 uses
end_hunk_14
