Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_utf_at:bb.a
  %.0.lcssa87.i = phi i32 [ %i.h, %._crit_edge.thread82.i ], [ %.lcssa136, %._crit_edge.i ] ; 4 uses
  %storemerge12.lcssa.wide.i7886.i = phi i32 [ 1, %._crit_edge.thread82.i ], [ %storemerge12.lcssa.wide.i.i, %._crit_edge.i ] ; 3 uses
  store i32 %.0.lcssa87.i, ptr %3, align 4, !tbaa !10
  %i.aq = zext nneg i32 %storemerge12.lcssa.wide.i7886.i to i64 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !10
  %.not.i.i = icmp ugt i32 %i.as, %.0.lcssa87.i
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.aq
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10
  %i.av = icmp uge i32 %.0.lcssa87.i, %i.au
  %i.aw = add i32 %.0.lcssa87.i, -55296
  %or.cond.i.i = icmp ult i32 %i.aw, 2047
  %or.cond15.i.i = or i1 %or.cond.i.i, %i.av
  br i1 %or.cond15.i.i, label %bb.o, label %.lr.ph.preheader

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 65533, ptr %3, align 4, !tbaa !10
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.o, %bb.i, %bb.e, %bb.n
  %.023.i100 = phi i32 [ %storemerge12.lcssa.wide.i7886.i, %bb.n ], [ %storemerge12.lcssa.wide.i7886.i, %bb.o ], [ 1, %bb.i ], [ 1, %bb.e ], [ 1, %.lr.ph.preheader.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ] ; 2 uses
  %i.ax = icmp eq i32 %2, 0
  br i1 %i.ax, label %.loopexit.thread, label %.lr.ph128

.loopexit.thread:                                 ; preds = %nk_utf_decode.exit60, %.lr.ph.preheader
  %.074.lcssa = phi i32 [ %.023.i100, %.lr.ph.preheader ], [ %.023.i48, %nk_utf_decode.exit60 ]
  %.03173.lcssa = phi i32 [ 0, %.lr.ph.preheader ], [ %i.az, %nk_utf_decode.exit60 ]
  store i32 %.074.lcssa, ptr %4, align 4, !tbaa !10
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
  store i32 65533, ptr %3, align 4, !tbaa !10
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !11  ; 7 uses
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
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11  ; 2 uses
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
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11  ; 2 uses
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
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !11  ; 2 uses
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
  store i32 %.0.lcssa87.i43, ptr %3, align 4, !tbaa !10
  %i.cp = zext nneg i32 %storemerge12.lcssa.wide.i7886.i44 to i64 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmin, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !10
  %.not.i.i45 = icmp ugt i32 %i.cr, %.0.lcssa87.i43
  br i1 %.not.i.i45, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.cp
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !10
  %i.cu = icmp uge i32 %.0.lcssa87.i43, %i.ct
  %i.cv = add i32 %.0.lcssa87.i43, -55296
  %or.cond.i.i46 = icmp ult i32 %i.cv, 2047
  %or.cond15.i.i47 = or i1 %or.cond.i.i46, %i.cu
  br i1 %or.cond15.i.i47, label %bb.z, label %nk_utf_decode.exit60

bb.z:                                             ; preds = %bb.y, %bb.x
  store i32 65533, ptr %3, align 4, !tbaa !10
  br label %nk_utf_decode.exit60

nk_utf_decode.exit60:                             ; preds = %.lr.ph.preheader.i51, %.lr.ph.i52.1, %.lr.ph.i52.2, %bb.p, %bb.t, %bb.y, %bb.z
  %.023.i48 = phi i32 [ %storemerge12.lcssa.wide.i7886.i44, %bb.y ], [ 1, %bb.p ], [ 1, %bb.t ], [ %storemerge12.lcssa.wide.i7886.i44, %bb.z ], [ 1, %.lr.ph.preheader.i51 ], [ 2, %.lr.ph.i52.1 ], [ 3, %.lr.ph.i52.2 ] ; 2 uses
  %i.cw = icmp eq i32 %i.ay, %2
  br i1 %i.cw, label %.loopexit.thread, label %.lr.ph128, !llvm.loop !38

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 112, i1 false), !tbaa !10
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.c, i1 false), !tbaa !11
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i, i8 0, i64 116, i1 false), !tbaa !10
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 %i.b, i1 false), !tbaa !11
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.d, align 8, !tbaa !39
  %i.e = tail call noalias noundef dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 4096, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4096, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @nk_malloc, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !48
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_mfree, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !48
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 120, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.f, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i, i8 0, i64 116, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.e, i1 false), !tbaa !11
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = load ptr, ptr %1, align 8
  %i.k = tail call ptr %i.i(ptr %i.j, ptr noundef null, i64 noundef %2) #50
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.k, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 112, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.f, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i, i8 0, i64 116, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.e, i1 false), !tbaa !11
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.j, align 8, !tbaa !46
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
  %i.e = add i64 %i.d, %2
  store i64 %i.e, ptr %i.c, align 8, !tbaa !51
  %i.f = icmp eq i32 %1, 0                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  br i1 %i.f, label %.split, label %.split67

.split:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52   ; 4 uses
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
  %i.w = load i64, ptr %i.v, align 8, !tbaa !46
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %nk_buffer_align.exit93

.split67:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load i64, ptr %i.y, align 8, !tbaa !46   ; 3 uses
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
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !52 ; 2 uses
  %.not118 = icmp ugt i64 %i.aq, %i.as
  br i1 %.not118, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %i.at = phi i64 [ %i.j, %.split ], [ %i.as, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !39
  %.not = icmp eq i32 %i.av, 1
  br i1 %.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53 ; 2 uses
  %.not81 = icmp eq ptr %i.ax, null
  br i1 %.not81, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !54
  %.not82 = icmp eq ptr %i.az, null
  br i1 %.not82, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !45 ; 4 uses
  %i.bd = uitofp i64 %i.bc to float
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load float, ptr %i.be, align 8, !tbaa !47
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
  %i.ca = tail call ptr %i.ax(ptr %i.bz, ptr noundef %i.h, i64 noundef %spec.select) #50, !inline_history !55 ; 8 uses
  %.not48.i = icmp eq ptr %i.ca, null
  br i1 %.not48.i, label %nk_buffer_realloc.exit.thread, label %bb.l

nk_buffer_realloc.exit.thread:                    ; preds = %bb.k
  store ptr null, ptr %i.ba, align 8, !tbaa !44
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  store i64 %spec.select, ptr %i.bb, align 8, !tbaa !56
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !44 ; 2 uses
  %.not49.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not49.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.ca, ptr noundef %i.cb, i64 noundef %i.bc) ; 0 uses
  %i.cd = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !44
  %i.cf = load ptr, ptr %i.by, align 8
  tail call void %i.cd(ptr %i.cf, ptr noundef %i.ce) #50, !inline_history !55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !46 ; 3 uses
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
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %.neg27 = sub i64 %i.f, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51
  %i.i = add i64 %.neg27, %i.h
  store i64 %i.i, ptr %i.g, align 8, !tbaa !51
  %i.j = load i8, ptr %i.d, align 8, !tbaa !75, !range !79, !noundef !80
  %i.k = trunc nuw i8 %i.j to i1
  %spec.select31 = select i1 %i.k, i64 %i.f, i64 %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %spec.select31, ptr %i.l, align 8, !tbaa !46
  store i8 0, ptr %i.d, align 8, !tbaa !75
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !52
  %i.o = zext i32 %1 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !78   ; 2 uses
  %.neg = sub i64 %i.r, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51
  %i.u = add i64 %.neg, %i.t
  store i64 %i.u, ptr %i.s, align 8, !tbaa !51
  %i.v = load i8, ptr %i.p, align 8, !tbaa !75, !range !79, !noundef !80
  %i.w = trunc nuw i8 %i.v to i1
  %spec.select = select i1 %i.w, i64 %i.r, i64 0
  store i64 %spec.select, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.p, align 8, !tbaa !75
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
  store i64 0, ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.c, ptr %i.d, align 8, !tbaa !46
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !81
  %i.i = load <2 x i64>, ptr %i.c, align 8, !tbaa !56
  store <2 x i64> %i.i, ptr %i.d, align 8, !tbaa !56
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !44
  store ptr %i.j, ptr %0, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %i.m, align 8, !tbaa !85
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 112, i1 false), !tbaa !10
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.c, i1 false), !tbaa !11
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i, i8 0, i64 116, i1 false), !tbaa !10
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 %i.b, i1 false), !tbaa !11
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.d, align 8, !tbaa !39
  %i.e = tail call noalias noundef dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 32, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 32, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @nk_malloc, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !48
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_mfree, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !48
  br label %nk_buffer_init.exit

nk_buffer_init.exit:                              ; preds = %bb.a, %nk_zero.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.k, align 8, !tbaa !86
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 120, i1 false), !tbaa !10
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.f, i1 false), !tbaa !11
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i, i8 0, i64 116, i1 false), !tbaa !10
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 %i.e, i1 false), !tbaa !11
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = load ptr, ptr %1, align 8
  %i.k = tail call ptr %i.i(ptr %i.j, ptr noundef null, i64 noundef %2) #50, !inline_history !88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.k, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  br label %nk_buffer_init.exit

nk_buffer_init.exit:                              ; preds = %bb.a, %nk_zero.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !86
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %0, i8 0, i64 112, i1 false), !tbaa !10
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.f, i1 false), !tbaa !11
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i, i8 0, i64 116, i1 false), !tbaa !10
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 %i.e, i1 false), !tbaa !11
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %i.j, align 8, !tbaa !46
  br label %nk_buffer_init_fixed.exit

nk_buffer_init_fixed.exit:                        ; preds = %bb.a, %nk_zero.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.k, align 8, !tbaa !86
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
  %i.i = load i32, ptr %i.h, align 8, !tbaa !86
  %i.j = add nsw i32 %i.i, %i.g
  store i32 %i.j, ptr %i.h, align 8, !tbaa !86
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
  %i.a = load i8, ptr %1, align 1, !tbaa !11
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
  %i.k = load i32, ptr %i.j, align 8, !tbaa !86
  %i.l = add nsw i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 8, !tbaa !86
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
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11    ; 4 uses
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
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = icmp slt i8 %i.m, -64
  br i1 %i.n, label %bb.e, label %nk_utf_decode.exit

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.h, label %nk_utf_decode.exit.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = icmp slt i8 %i.p, -64
  br i1 %i.q, label %bb.f, label %nk_utf_decode.exit

bb.f:                                             ; preds = %.lr.ph.i.1
  br i1 %exitcond.not.1, label %nk_utf_decode.exit.loopexit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %nk_utf_decode.exit.loopexit, label %nk_utf_decode.exit

nk_utf_decode.exit.loopexit:                      ; preds = %.lr.ph.i.2, %bb.f, %bb.e
  br label %nk_utf_decode.exit

nk_utf_decode.exit:                               ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %nk_utf_decode.exit.loopexit, %.lr.ph, %bb.d
  %.023.i = phi i32 [ %storemerge12.lcssa.wide.i.i, %nk_utf_decode.exit.loopexit ], [ 1, %.lr.ph ], [ 1, %bb.d ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ]
  %i.u = add nsw i32 %.023.i, %.024               ; 4 uses
  %i.v = add nuw nsw i32 %.01623, 1               ; 2 uses
  %exitcond27.not = icmp eq i32 %i.v, %2
  br i1 %exitcond27.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

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
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !86
  %i.ac = add nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !86
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
  %i.c = load i8, ptr %1, align 1, !tbaa !11      ; 7 uses
  %i.d = icmp slt i8 %i.c, -64
  br i1 %i.d, label %nk_utf_decode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@nk_text_clamp:bb.a
.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %nk_utf_decode.exit87
  %.051108 = phi i32 [ %.152174187200, %nk_utf_decode.exit87 ], [ 0, %.lr.ph.split.preheader ]
  %.053107 = phi i32 [ %i.be, %nk_utf_decode.exit87 ], [ 0, %.lr.ph.split.preheader ]
  %.054106 = phi i32 [ %i.ay, %nk_utf_decode.exit87 ], [ 0, %.lr.ph.split.preheader ]
  %.055105 = phi float [ %i.bc, %nk_utf_decode.exit87 ], [ 0.000000e+00, %.lr.ph.split.preheader ] ; 3 uses
  %.059103 = phi i32 [ %.023.i75, %nk_utf_decode.exit87 ], [ %.023.i, %.lr.ph.split.preheader ]
  %.088102 = phi i32 [ %.290, %nk_utf_decode.exit87 ], [ %.189, %.lr.ph.split.preheader ]
  %i.ay = add nsw i32 %.054106, %.059103          ; 11 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !164
  %i.ba = load float, ptr %i.ax, align 8, !tbaa !166
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = tail call float %i.az(ptr %i.bb, float noundef %i.ba, ptr noundef nonnull %1, i32 noundef %i.ay) #50 ; 2 uses
  br i1 %.not157, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split
  %i.bd = load i32, ptr %6, align 4, !tbaa !10
  %.not65.peel = icmp eq i32 %.088102, %i.bd
  br i1 %.not65.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split, %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.152174187200 = phi i32 [ %.051108, %bb.n ], [ %i.ay, %bb.m ] ; 3 uses
  %i.be = add nuw nsw i32 %.053107, 1             ; 4 uses
  %i.bf = sext i32 %i.ay to i64
  %i.bg = getelementptr inbounds i8, ptr %1, i64 %i.bf ; 4 uses
  %i.bh = sub i32 %2, %i.ay                       ; 2 uses
  %.not.i67 = icmp eq i32 %2, %i.ay
  br i1 %.not.i67, label %nk_utf_decode.exit87.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !11  ; 7 uses
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
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11  ; 2 uses
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
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11  ; 2 uses
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
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11  ; 2 uses
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
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !10
  %.not.i.i72 = icmp ugt i32 %i.cw, %.0.lcssa87.i70
  br i1 %.not.i.i72, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %i.cu
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !10
  %i.cz = icmp uge i32 %.0.lcssa87.i70, %i.cy
  %i.da = add i32 %.0.lcssa87.i70, -55296
  %or.cond.i.i73 = icmp ult i32 %i.da, 2047
  %or.cond15.i.i74 = or i1 %or.cond.i.i73, %i.cz
  br i1 %or.cond15.i.i74, label %bb.z, label %nk_utf_decode.exit87

bb.z:                                             ; preds = %bb.y, %bb.x
  br label %nk_utf_decode.exit87

nk_utf_decode.exit87.thread:                      ; preds = %bb.o, %._crit_edge.i86, %nk_utf_decode_byte.exit.i76
  %i.db = icmp slt i32 %i.ay, %2
  br i1 %i.db, label %bb.aa, label %.thread214

nk_utf_decode.exit87:                             ; preds = %.lr.ph.preheader.i78, %.lr.ph.i79.1, %.lr.ph.i79.2, %bb.p, %bb.t, %bb.y, %bb.z
  %.290 = phi i32 [ %.0.lcssa87.i70, %bb.y ], [ 65533, %bb.p ], [ 65533, %bb.t ], [ 65533, %bb.z ], [ 65533, %.lr.ph.i79.2 ], [ 65533, %.lr.ph.i79.1 ], [ 65533, %.lr.ph.preheader.i78 ]
  %.023.i75 = phi i32 [ %storemerge12.lcssa.wide.i7886.i71, %bb.y ], [ 1, %bb.p ], [ 1, %bb.t ], [ %storemerge12.lcssa.wide.i7886.i71, %bb.z ], [ 1, %.lr.ph.preheader.i78 ], [ 2, %.lr.ph.i79.1 ], [ 3, %.lr.ph.i79.2 ]
  %i.dc = fcmp olt float %i.bc, %3
  %i.dd = icmp slt i32 %i.ay, %2                  ; 2 uses
  %or.cond66 = and i1 %i.dc, %i.dd
  br i1 %or.cond66, label %.lr.ph.split, label %.critedge, !llvm.loop !172

.critedge:                                        ; preds = %nk_utf_decode.exit87, %nk_utf_decode.exit
  %.056.lcssa = phi float [ 0.000000e+00, %nk_utf_decode.exit ], [ %.055105, %nk_utf_decode.exit87 ] ; 2 uses
  %.054.lcssa = phi i32 [ 0, %nk_utf_decode.exit ], [ %i.ay, %nk_utf_decode.exit87 ] ; 2 uses
  %.053.lcssa = phi i32 [ 0, %nk_utf_decode.exit ], [ %i.be, %nk_utf_decode.exit87 ] ; 2 uses
  %.051.lcssa = phi i32 [ 0, %nk_utf_decode.exit ], [ %.152174187200, %nk_utf_decode.exit87 ]
  %.lcssa95 = phi i1 [ %i.av, %nk_utf_decode.exit ], [ %i.dd, %nk_utf_decode.exit87 ]
  br i1 %.lcssa95, label %bb.aa, label %.thread214

bb.aa:                                            ; preds = %nk_utf_decode.exit87.thread, %.critedge
  %.0.lcssa213 = phi float [ %.055105, %nk_utf_decode.exit87.thread ], [ %.056.lcssa, %.critedge ]
  %.048.lcssa212 = phi i32 [ %i.be, %nk_utf_decode.exit87.thread ], [ %.053.lcssa, %.critedge ]
  %.051.lcssa211 = phi i32 [ %.152174187200, %nk_utf_decode.exit87.thread ], [ %.051.lcssa, %.critedge ]
  %.054.lcssa208 = phi i32 [ %i.ay, %nk_utf_decode.exit87.thread ], [ %.054.lcssa, %.critedge ]
  %.051.lcssa211.fr = freeze i32 %.051.lcssa211   ; 2 uses
  %.not64 = icmp eq i32 %.051.lcssa211.fr, 0
  %spec.select = select i1 %.not64, i32 %.054.lcssa208, i32 %.051.lcssa211.fr
  br label %.thread214

.thread214:                                       ; preds = %bb.aa, %nk_utf_decode_byte.exit.i, %._crit_edge.i, %bb.a, %.critedge, %nk_utf_decode.exit87.thread
  %.053.lcssa.sink = phi i32 [ %i.be, %nk_utf_decode.exit87.thread ], [ 0, %nk_utf_decode_byte.exit.i ], [ %.053.lcssa, %.critedge ], [ %.048.lcssa212, %bb.aa ], [ 0, %bb.a ], [ 0, %._crit_edge.i ]
  %.056.lcssa.sink = phi float [ %.055105, %nk_utf_decode.exit87.thread ], [ 0.000000e+00, %nk_utf_decode_byte.exit.i ], [ %.056.lcssa, %.critedge ], [ %.0.lcssa213, %bb.aa ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %._crit_edge.i ]
  %.061 = phi i32 [ %i.ay, %nk_utf_decode.exit87.thread ], [ 0, %nk_utf_decode_byte.exit.i ], [ %.054.lcssa, %.critedge ], [ %spec.select, %bb.aa ], [ 0, %bb.a ], [ 0, %._crit_edge.i ]
  store i32 %.053.lcssa.sink, ptr %4, align 4, !tbaa !10
  store float %.056.lcssa.sink, ptr %5, align 4, !tbaa !8
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %0, i8 0, i64 240, i1 false), !tbaa !10
  br label %vector.body

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.c, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(236) %scevgep.i.i, i8 0, i64 236, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 236
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.b, i1 false), !tbaa !11
  br label %vector.body

vector.body:                                      ; preds = %.loopexit46.i.i, %.loopexit46.i.i.thread
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x float> <float 9.999600e-01, float f0x0C780258, float f0x3F5DB17E, float f0x3EFFD2D5, float f0x3F00014E, float f0x3F5DD0D5, float f0x37AFE632, float 1.000840e+00>, ptr %i.d, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x float> <float f0xBF000287, float f0x3F5DC1C2, float f0xBF5DB41F, float f0x3EFFDD26, float f0xBF7FFD5E, float -6.741250e-08, float f0xBF5DB431, float f0xBEFFDD1E>, ptr %i.e, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x float> <float -5.000380e-01, float f0xBF5DC1C0, float f0x37B6FBCF, float f0xBF801B88, float f0x3F000136, float f0xBF5DD0DD, float f0x3F5DB1C5, float f0xBEFFD22A>, ptr %i.f, align 4, !tbaa !8
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
  store ptr %2, ptr %i.i, align 8, !tbaa !173
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !179
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %4, ptr %i.k, align 8, !tbaa !181
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %3, ptr %i.l, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %5, ptr %i.m, align 8, !tbaa !183
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %6, ptr %i.n, align 4, !tbaa !184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) @nk_null_rect, i64 16, i1 false), !tbaa.struct !185
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.p, align 8, !tbaa !186
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.q, align 4, !tbaa !187
  store i64 0, ptr %i.o, align 8, !tbaa !188
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.r, align 8, !tbaa !189
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.s, align 8, !tbaa !190
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %.not10 = icmp eq i64 %i.b, 0
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i32, ptr %i.c, align 8, !tbaa !189
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load i64, ptr %i.i, align 8, !tbaa !188
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !188
  %i.i = sub i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load i32, ptr %i.k, align 8, !tbaa !189
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.i = load i64, ptr %i.h, align 8, !tbaa !188
  %i.j = sub i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.m = load i32, ptr %i.l, align 8, !tbaa !189
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
  %i.e = load float, ptr %i.d, align 8, !tbaa !191 ; 2 uses
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
  %.sroa.2.0.extract.shift.i.i = lshr i32 %3, 8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %3, 16
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %i.o = trunc i32 %3 to i8
  %i.p = insertelement <2 x i8> poison, i8 %i.o, i64 0
  %i.q = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %i.r = insertelement <2 x i8> %i.p, i8 %i.q, i64 1
  %i.s = uitofp <2 x i8> %i.r to <2 x float>
  %i.t = fmul nnan <2 x float> %i.s, splat (float f0x3B808081) ; 11 uses
  %i.u = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i, i64 0
  %i.v = insertelement <2 x i8> %i.u, i8 %i.n, i64 1
  %i.w = uitofp <2 x i8> %i.v to <2 x float>
  %i.x = fmul nnan <2 x float> %i.w, splat (float f0x3B808081) ; 8 uses
  %.sroa.7.12.vec.insert = insertelement <2 x float> %i.x, float 0.000000e+00, i64 1 ; 4 uses
  %i.y = icmp eq i32 %6, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !187 ; 2 uses
end_hunk_2
begin_hunk_3_@stbtt_FindMatchingFont:bb.a
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !551  ; 2 uses
  %.not38 = icmp eq ptr %i.b, null
  br i1 %.not38, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !558  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.029 = phi i32 [ 0, %bb.c ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.028 = phi ptr [ %i.f, %bb.c ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.028, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !559  ; 3 uses
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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10   ; 2 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !562

._crit_edge:                                      ; preds = %bb.f, %bb.d, %nk_range_count.exit
  %.1.lcssa = phi i32 [ %.029, %nk_range_count.exit ], [ %.029, %bb.d ], [ %i.y, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !563 ; 2 uses
  %.not39 = icmp eq ptr %i.aa, %i.f
  br i1 %.not39, label %.loopexit, label %bb.d, !llvm.loop !564

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.a, %bb.b
  %.3 = phi ptr [ %i.v, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %._crit_edge ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_font_config(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.nk_font_config) align 8 captures(none) initializes((0, 88)) %0, float noundef %1) local_unnamed_addr #4 {
.loopexit46.i.i.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  store float %1, ptr %i.a, align 8, !tbaa !565
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 3, ptr %i.b, align 4, !tbaa !566
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 1, ptr %i.c, align 1, !tbaa !567
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !568
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_font_default_glyph_ranges.ranges, ptr %i.e, align 8, !tbaa !559
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 63, ptr %i.f, align 8, !tbaa !569
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !563
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.c, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(396) %scevgep.i.i, i8 0, i64 396, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.b, i1 false), !tbaa !11
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @nk_malloc, ptr %i.e, align 8, !tbaa !570
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @nk_mfree, ptr %i.f, align 8, !tbaa !573
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @nk_malloc, ptr %i.h, align 8, !tbaa !574
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @nk_mfree, ptr %i.i, align 8, !tbaa !575
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.e = sub nuw nsw i64 4, %i.d                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.e, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(396) %scevgep.i.i, i8 0, i64 396, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.d, i1 false), !tbaa !11
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.f, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(396) %scevgep.i.i, i8 0, i64 396, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 396
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.e, i1 false), !tbaa !11
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !50
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %.not18 = icmp eq ptr %i.c, null
  br i1 %.not18, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !575  ; 2 uses
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !570
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !573
  %.not21 = icmp eq ptr %i.i, null
  br i1 %.not21, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !576  ; 2 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.a, align 8
  tail call void %i.e(ptr %i.l, ptr noundef nonnull %i.k) #50
  store ptr null, ptr %i.j, align 8, !tbaa !576
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = load ptr, ptr %0, align 8, !tbaa !577    ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !575
  %i.o = load ptr, ptr %i.a, align 8
  tail call void %i.n(ptr %i.o, ptr noundef nonnull %i.m) #50
  store ptr null, ptr %0, align 8, !tbaa !577
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !578
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !579
  %.not85 = icmp eq i64 %i.f, 0
  br i1 %.not85, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load float, ptr %i.g, align 8, !tbaa !565
  %i.i = fcmp ugt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !574  ; 2 uses
  %.not86 = icmp eq ptr %i.l, null
  br i1 %.not86, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !575
  %.not87 = icmp eq ptr %i.n, null
  br i1 %.not87, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !570
  %.not88 = icmp eq ptr %i.p, null
  br i1 %.not88, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !573
  %.not89 = icmp eq ptr %i.r, null
  br i1 %.not89, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = tail call ptr %i.l(ptr %i.s, ptr noundef null, i64 noundef 88) #50 ; 16 uses
  %i.u = tail call fastcc ptr @nk_memcopy(ptr noundef %i.t, ptr noundef nonnull %1, i64 noundef 88) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !563
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  store ptr %i.t, ptr %i.w, align 8, !tbaa !580
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.y = load i8, ptr %i.x, align 1, !tbaa !581
  %.not90 = icmp eq i8 %i.y, 0
  br i1 %.not90, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !582 ; 2 uses
  %.not91 = icmp eq ptr %i.aa, null
  br i1 %.not91, label %bb.k, label %.preheader102

bb.k:                                             ; preds = %bb.j
  store ptr %i.t, ptr %i.z, align 8, !tbaa !582
  br label %bb.m

.preheader102:                                    ; preds = %bb.j, %.preheader102
  %.075 = phi ptr [ %i.ab, %.preheader102 ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ab = load ptr, ptr %.075, align 8, !tbaa !583 ; 2 uses
  %.not92 = icmp eq ptr %i.ab, null
  br i1 %.not92, label %bb.l, label %.preheader102, !llvm.loop !584

bb.l:                                             ; preds = %.preheader102
  store ptr %i.t, ptr %.075, align 8, !tbaa !583
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr null, ptr %i.t, align 8, !tbaa !583
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !574
  %i.ad = load ptr, ptr %i.j, align 8
  %i.ae = tail call ptr %i.ac(ptr %i.ad, ptr noundef null, i64 noundef 128) #50 ; 10 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %nk_zero.exit.thread, label %.loopexit46.i.i

nk_zero.exit.thread:                              ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ae, i8 0, i64 120, i1 false), !tbaa !10
  br label %bb.n

.loopexit46.i.i:                                  ; preds = %bb.m
  %i.ah = sub nuw nsw i64 4, %i.ag                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 0, i64 %i.ah, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.ae, i64 %i.ah ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %scevgep.i.i, i8 0, i64 124, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 124
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.ag, i1 false), !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %.loopexit46.i.i, %nk_zero.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !558
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !585 ; 2 uses
  %.not94 = icmp eq ptr %i.ak, null
  br i1 %.not94, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !585
  br label %bb.q

.preheader:                                       ; preds = %bb.n, %.preheader
  %.074 = phi ptr [ %i.al, %.preheader ], [ %i.ak, %bb.n ] ; 2 uses
  %i.al = load ptr, ptr %.074, align 8, !tbaa !586 ; 2 uses
  %.not95 = icmp eq ptr %i.al, null
  br i1 %.not95, label %bb.p, label %.preheader, !llvm.loop !587

bb.p:                                             ; preds = %.preheader
  store ptr %i.ae, ptr %.074, align 8, !tbaa !586
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.ae, align 8, !tbaa !586
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !588
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !585 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !558 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %i.as, ptr %i.at, align 8, !tbaa !588
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !563
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 80 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !580 ; 2 uses
  store ptr %i.av, ptr %i.w, align 8, !tbaa !580
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store ptr %i.t, ptr %i.aw, align 8, !tbaa !563
  store ptr %i.t, ptr %i.au, align 8, !tbaa !580
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.073 = phi ptr [ null, %bb.r ], [ %i.ae, %bb.q ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !589
  %.not96 = icmp eq i8 %i.ay, 0
  br i1 %.not96, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !574
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !579
  %i.bc = load ptr, ptr %i.j, align 8
  %i.bd = tail call ptr %i.az(ptr %i.bc, ptr noundef null, i64 noundef %i.bb) #50 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !578
  %.not97 = icmp eq ptr %i.bd, null
  br i1 %.not97, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !578
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !579
  %i.bh = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.bd, ptr noundef %i.bf, i64 noundef %i.bg) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i8 1, ptr %i.bi, align 8, !tbaa !589
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.u, %bb.t
  %.0.ph = phi ptr [ null, %bb.t ], [ %.073, %bb.u ], [ %.073, %bb.s ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !590
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !590
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !570
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !573
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  %i.g = icmp ne i64 %2, 0
  %or.cond3 = and i1 %i.g, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !574
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !575
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not24 = icmp eq ptr %4, null
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 88, i1 false), !tbaa.struct !591
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %5, i8 0, i64 27, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i8 0, i64 3, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 27
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 3, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !11
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @nk_font_default_glyph_ranges.ranges, ptr %.sroa.826.0..sroa_idx, align 8, !tbaa !593
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !594
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 63, ptr %.sroa.927.0..sroa_idx, align 8, !tbaa !10
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, i8 0, i64 20, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !578
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.m, align 8, !tbaa !579
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %3, ptr %i.n, align 8, !tbaa !565
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.o, align 8, !tbaa !589
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = tail call ptr %i.j(ptr %i.k, ptr noundef null, i64 noundef %i.f) #50, !inline_history !595 ; 3 uses
  %.not32.i = icmp eq ptr %i.l, null
end_hunk_3
begin_hunk_4_@nk_font_atlas_end:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !573
  %i.v = load ptr, ptr %0, align 8, !tbaa !577
  %i.w = load ptr, ptr %i.s, align 8
  tail call void %i.u(ptr %i.w, ptr noundef %i.v) #50
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.x, align 8
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.03543 = phi ptr [ %.035, %.lr.ph ], [ %.03541, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03543, i64 112
  store ptr %1, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %.03543, i64 40
  store ptr %1, ptr %i.z, align 8, !tbaa !11
  %.035 = load ptr, ptr %.03543, align 8, !tbaa !640 ; 2 uses
  %.not39 = icmp eq ptr %.035, null
  br i1 %.not39, label %.preheader, label %.lr.ph, !llvm.loop !694

bb.f:                                             ; preds = %bb.b, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_font_atlas_cleanup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %.not22 = icmp eq ptr %i.c, null
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !575
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !582  ; 2 uses
  %.not24 = icmp eq ptr %i.g, null
  br i1 %.not24, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %._crit_edge
  %.01932 = phi ptr [ %i.p, %._crit_edge ], [ %i.g, %bb.d ] ; 5 uses
  %.0.in28 = getelementptr inbounds nuw i8, ptr %.01932, i64 72
  %.029 = load ptr, ptr %.0.in28, align 8, !tbaa !563 ; 2 uses
  %.not2630 = icmp eq ptr %.029, %.01932
  br i1 %.not2630, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.031 = phi ptr [ %.0, %.lr.ph ], [ %.029, %.preheader ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !575
  %i.i = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !578
  %i.k = load ptr, ptr %i.a, align 8
  tail call void %i.h(ptr %i.k, ptr noundef %i.j) #50
  store ptr null, ptr %i.i, align 8, !tbaa !578
  %.0.in = getelementptr inbounds nuw i8, ptr %.031, i64 72
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !563 ; 2 uses
  %.not26 = icmp eq ptr %.0, %.01932
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !695

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !575
  %i.m = getelementptr inbounds nuw i8, ptr %.01932, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !578
  %i.o = load ptr, ptr %i.a, align 8
  tail call void %i.l(ptr %i.o, ptr noundef %i.n) #50
  store ptr null, ptr %i.m, align 8, !tbaa !578
  %i.p = load ptr, ptr %.01932, align 8, !tbaa !583 ; 2 uses
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %.loopexit, label %.preheader, !llvm.loop !696

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_font_atlas_clear(ptr noundef %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_zero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %nk_zero.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !575
  %.not50 = icmp eq ptr %i.e, null
  br i1 %.not50, label %nk_zero.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !582  ; 2 uses
  %.not51 = icmp eq ptr %i.g, null
  br i1 %.not51, label %bb.j, label %.preheader62

.preheader62:                                     ; preds = %bb.d, %bb.h
  %.04365 = phi ptr [ %i.q, %bb.h ], [ %i.g, %bb.d ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.04365, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !563  ; 3 uses
  %.not5663 = icmp eq ptr %i.i, %.04365
  br i1 %.not5663, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader62, %bb.f
  %.04264 = phi ptr [ %i.k, %bb.f ], [ %i.i, %.preheader62 ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04264, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !563  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04264, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !578  ; 2 uses
  %.not58 = icmp eq ptr %i.m, null
  %.pre67 = load ptr, ptr %i.d, align 8, !tbaa !575 ; 2 uses
  br i1 %.not58, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.a, align 8
  tail call void %.pre67(ptr %i.n, ptr noundef nonnull %i.m) #50
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !575
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.o = phi ptr [ %.pre, %bb.e ], [ %.pre67, %.lr.ph ]
  %i.p = load ptr, ptr %i.a, align 8
  tail call void %i.o(ptr %i.p, ptr noundef nonnull %.04264) #50
  %.not56 = icmp eq ptr %i.k, %.04365
  br i1 %.not56, label %._crit_edge, label %.lr.ph, !llvm.loop !697

._crit_edge:                                      ; preds = %bb.f, %.preheader62
  %.042.lcssa = phi ptr [ %i.i, %.preheader62 ], [ %i.k, %bb.f ]
  %i.q = load ptr, ptr %.04365, align 8, !tbaa !583 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.042.lcssa, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !578
  %.not57 = icmp eq ptr %i.s, null
  %.pre69 = load ptr, ptr %i.d, align 8, !tbaa !575 ; 2 uses
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.04365, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !578
  %i.v = load ptr, ptr %i.a, align 8
  tail call void %.pre69(ptr %i.v, ptr noundef %i.u) #50
  %.pre68 = load ptr, ptr %i.d, align 8, !tbaa !575
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.w = phi ptr [ %.pre68, %bb.g ], [ %.pre69, %._crit_edge ]
  %i.x = load ptr, ptr %i.a, align 8
  tail call void %i.w(ptr %i.x, ptr noundef nonnull %.04365) #50
  %.not52 = icmp eq ptr %i.q, null
  br i1 %.not52, label %bb.i, label %.preheader62, !llvm.loop !698

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.f, align 8, !tbaa !582
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !585  ; 2 uses
  %.not53 = icmp eq ptr %i.z, null
  br i1 %.not53, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.j, %.preheader
  %.066 = phi ptr [ %i.aa, %.preheader ], [ %i.z, %bb.j ] ; 2 uses
  %i.aa = load ptr, ptr %.066, align 8, !tbaa !586 ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !575
  %i.ac = load ptr, ptr %i.a, align 8
  tail call void %i.ab(ptr %i.ac, ptr noundef nonnull %.066) #50
  %.not54 = icmp eq ptr %i.aa, null
  br i1 %.not54, label %bb.k, label %.preheader, !llvm.loop !699

bb.k:                                             ; preds = %.preheader
  store ptr null, ptr %i.y, align 8, !tbaa !585
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !576 ; 2 uses
  %.not55 = icmp eq ptr %i.ae, null
  br i1 %.not55, label %.loopexit46.i.i.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !575
  %i.ag = load ptr, ptr %i.a, align 8
  tail call void %i.af(ptr %i.ag, ptr noundef nonnull %i.ae) #50
  br label %.loopexit46.i.i.thread

.loopexit46.i.i.thread:                           ; preds = %bb.l, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %0, i8 0, i64 400, i1 false), !tbaa !10
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_input_begin(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #29 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.a, align 4, !tbaa !700
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 0, ptr %i.b, align 4, !tbaa !700
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.c, align 4, !tbaa !700
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.d, align 4, !tbaa !700
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.e, align 4, !tbaa !700
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 0, ptr %i.f, align 4, !tbaa !700
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 0, ptr %i.g, align 4, !tbaa !702
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 380
  store <2 x float> zeroinitializer, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.k = load <2 x float>, ptr %i.i, align 4, !tbaa !8
  store <2 x float> %i.k, ptr %i.j, align 4, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 372
  store <2 x float> zeroinitializer, ptr %i.l, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !703
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !703
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.o, align 4, !tbaa !703
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.p, align 4, !tbaa !703
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.q, align 4, !tbaa !703
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.r, align 4, !tbaa !703
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.s, align 4, !tbaa !703
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.t, align 4, !tbaa !703
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.u, align 4, !tbaa !703
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.v, align 4, !tbaa !703
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.w, align 4, !tbaa !703
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.x, align 4, !tbaa !703
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.y, align 4, !tbaa !703
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.z, align 4, !tbaa !703
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.aa, align 4, !tbaa !703
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.ab, align 4, !tbaa !703
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 0, ptr %i.ac, align 4, !tbaa !703
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.ad, align 4, !tbaa !703
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.ae, align 4, !tbaa !703
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.af, align 4, !tbaa !703
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.ag, align 4, !tbaa !703
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.ah, align 4, !tbaa !703
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.ai, align 4, !tbaa !703
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %i.aj, align 4, !tbaa !703
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.ak, align 4, !tbaa !703
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.al, align 4, !tbaa !703
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.am, align 4, !tbaa !703
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 0, ptr %i.an, align 4, !tbaa !703
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.ao, align 4, !tbaa !703
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.ap, align 4, !tbaa !703
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_input_end(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !705
  %.not8 = icmp eq i8 %i.b, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 4, !tbaa !705
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 390 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !706
  %.not9 = icmp eq i8 %i.d, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 389
  store i8 0, ptr %i.e, align 1, !tbaa !707
  store i8 0, ptr %i.c, align 2, !tbaa !706
  store i8 0, ptr %i.a, align 4, !tbaa !705
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_input_motion(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %2, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> %i.c, ptr %i.d, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !8
  %i.h = fsub <2 x float> %i.c, %i.g
  store <2 x float> %i.h, ptr %i.f, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_input_key(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i1 %2 to i8
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !703
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !703
  store i8 %i.a, ptr %i.c, align 4, !tbaa !708
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_input_button(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #18 {
bb.a:
  %i.a = zext i1 %4 to i8                         ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !709, !range !79, !noundef !80
  %i.f = icmp eq i8 %i.e, %i.a
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %3, i64 1
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x float> %i.i, ptr %i.j, align 4, !tbaa !8
  store i8 %i.a, ptr %i.d, align 4, !tbaa !709
end_hunk_4
begin_hunk_5_@nk_input_is_mouse_released:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !709, !range !79, !noundef !80
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !700
  %i.h = icmp ne i32 %i.g, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @nk_input_is_mouse_moved(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.b = load float, ptr %i.a, align 4, !tbaa !718
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.e = load float, ptr %i.d, align 4, !tbaa !719
  %i.f = fcmp une float %i.e, 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @nk_input_is_key_pressed(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !708, !range !79, !noundef !80
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !703  ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not8 = icmp eq i32 %i.f, 0
  br i1 %.not8, label %.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a, %.thread
  %.0 = phi i1 [ false, %bb.a ], [ false, %.thread ], [ true, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @nk_input_is_key_released(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !708, !range !79, !noundef !80
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !703  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not8 = icmp eq i32 %i.f, 0
  br i1 %.not8, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @nk_input_is_key_down(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 4, !tbaa !708, !range !79, !noundef !80
  %i.d = trunc nuw i8 %i.c to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_style_default(ptr noundef %0) local_unnamed_addr #22 {
bb.a:
  tail call void @nk_style_from_table(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_style_from_table(ptr noundef %0, ptr nofree noundef readonly %1) local_unnamed_addr #30 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.loopexit46.i.i.thread

.loopexit46.i.i.thread:                           ; preds = %bb.a
  %.not860 = icmp eq ptr %1, null
  %i.a = select i1 %.not860, ptr @nk_default_color_style, ptr %1 ; 95 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.c = load i32, ptr %i.a, align 1
  store i32 %i.c, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <2 x float> zeroinitializer, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 488
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.e, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(216) %i.f, i8 0, i64 216, i1 false), !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  store i32 0, ptr %i.f, align 8, !tbaa !10
  %.sroa.41402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 %i.h, ptr %.sroa.41402.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 1
  store i32 0, ptr %i.i, align 8, !tbaa !10
  %.sroa.41398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %i.k, ptr %.sroa.41398.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 1
  store i32 0, ptr %i.l, align 8, !tbaa !10
  %.sroa.41394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 %i.n, ptr %.sroa.41394.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 14 uses
  %i.q = load i32, ptr %i.p, align 1
  store i32 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.s = load i32, ptr %i.g, align 1
  store i32 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.u = load i32, ptr %i.a, align 1
  store i32 %i.u, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.w = load i32, ptr %i.a, align 1
  store i32 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.y = load i32, ptr %i.a, align 1
  store i32 %i.y, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 656
  store <2 x float> splat (float 2.000000e+00), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr null, ptr %i.ab, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store i32 18, ptr %i.ac, align 8, !tbaa !720
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 652
  store float 4.000000e+00, ptr %i.ad, align 4, !tbaa !721
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 644
  store <2 x float> splat (float 1.000000e+00), ptr %i.ae, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float 1.000000e+00, ptr %i.af, align 4, !tbaa !722
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 680
  store float 5.000000e-01, ptr %i.ag, align 8, !tbaa !723
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ai, i8 0, i64 216, i1 false), !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 15 uses
  %i.ak = load i32, ptr %i.aj, align 1
  store i32 0, ptr %i.ai, align 8, !tbaa !10
  %.sroa.41390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i32 %i.ak, ptr %.sroa.41390.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.am = load i32, ptr %i.j, align 1
  store i32 0, ptr %i.al, align 8, !tbaa !10
  %.sroa.41386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i32 %i.am, ptr %.sroa.41386.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ao = load i32, ptr %i.m, align 1
  store i32 0, ptr %i.an, align 8, !tbaa !10
  %.sroa.41382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i32 %i.ao, ptr %.sroa.41382.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.aq = load i32, ptr %i.aj, align 1
  store i32 %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.as = load i32, ptr %i.aj, align 1
  store i32 %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.au = load i32, ptr %i.a, align 1
  store i32 %i.au, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.aw = load i32, ptr %i.a, align 1
  store i32 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.ay = load i32, ptr %i.a, align 1
  store i32 %i.ay, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 872
  store <2 x float> splat (float 2.000000e+00), ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 888
  store <2 x float> zeroinitializer, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr null, ptr %i.bb, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i32 18, ptr %i.bc, align 8, !tbaa !720
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 868
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !721
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 860
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.be, align 4, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 836
  store float 1.000000e+00, ptr %i.bf, align 4, !tbaa !722
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 896
  store float 5.000000e-01, ptr %i.bg, align 8, !tbaa !723
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bi, i8 0, i64 216, i1 false), !tbaa !10
  %i.bj = load i32, ptr %i.aj, align 1
  store i32 0, ptr %i.bi, align 8, !tbaa !10
  %.sroa.41378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 %i.bj, ptr %.sroa.41378.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bl = load i32, ptr %i.aj, align 1
  store i32 0, ptr %i.bk, align 8, !tbaa !10
  %.sroa.41374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i32 %i.bl, ptr %.sroa.41374.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bn = load i32, ptr %i.aj, align 1
  store i32 0, ptr %i.bm, align 8, !tbaa !10
  %.sroa.41370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i32 %i.bn, ptr %.sroa.41370.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.bp = load i32, ptr %i.aj, align 1
  store i32 %i.bp, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.br = load i32, ptr %i.aj, align 1
  store i32 %i.br, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.bt = load i32, ptr %i.a, align 1
  store i32 %i.bt, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bv = load i32, ptr %i.a, align 1
  store i32 %i.bv, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.bx = load i32, ptr %i.a, align 1
  store i32 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store <2 x float> splat (float 2.000000e+00), ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store <2 x float> zeroinitializer, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store ptr null, ptr %i.ca, align 8, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i32 18, ptr %i.cb, align 8, !tbaa !720
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store float 1.000000e+00, ptr %i.cc, align 4, !tbaa !721
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1076
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.cd, align 4, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store float 1.000000e+00, ptr %i.ce, align 4, !tbaa !722
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store float 5.000000e-01, ptr %i.cf, align 8, !tbaa !723
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.ch, i8 0, i64 288, i1 false), !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 1
  store i32 0, ptr %i.ch, align 8, !tbaa !10
  %.sroa.41366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store i32 %i.cj, ptr %.sroa.41366.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 1
  store i32 0, ptr %i.ck, align 8, !tbaa !10
  %.sroa.41362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 %i.cm, ptr %.sroa.41362.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.co = load i32, ptr %i.cl, align 1
  store i32 0, ptr %i.cn, align 8, !tbaa !10
  %.sroa.41358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store i32 %i.co, ptr %.sroa.41358.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 1
  store i32 0, ptr %i.cp, align 8, !tbaa !10
  %.sroa.41354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1568
  store i32 %i.cr, ptr %.sroa.41354.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ct = load i32, ptr %i.cq, align 1
  store i32 0, ptr %i.cs, align 8, !tbaa !10
  %.sroa.41350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store i32 %i.ct, ptr %.sroa.41350.0..sroa_idx, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1696
  store ptr null, ptr %i.cu, align 8, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1652
  %i.cw = load i32, ptr %i.aj, align 1
  store i32 %i.cw, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.cy = load i32, ptr %i.a, align 1
  store i32 %i.cy, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1644
  %i.da = load i32, ptr %i.a, align 1
  store i32 %i.da, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.dc = load i32, ptr %i.a, align 1
  store i32 %i.dc, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1660
  store <2 x float> splat (float 2.000000e+00), ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1668
  store <2 x float> zeroinitializer, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i32 0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1676
  store <4 x float> <float 4.000000e+00, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01>, ptr %i.dg, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.dh, i8 0, i64 288, i1 false), !tbaa !10
  %i.di = load i32, ptr %i.ci, align 1
  store i32 0, ptr %i.dh, align 8, !tbaa !10
  %.sroa.41346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 %i.di, ptr %.sroa.41346.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.dk = load i32, ptr %i.cl, align 1
  store i32 0, ptr %i.dj, align 8, !tbaa !10
  %.sroa.41342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i32 %i.dk, ptr %.sroa.41342.0..sroa_idx, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.dm = load i32, ptr %i.cl, align 1
  store i32 0, ptr %i.dl, align 8, !tbaa !10
  %.sroa.41338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i32 %i.dm, ptr %.sroa.41338.0..sroa_idx, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.do = load i32, ptr %i.cq, align 1
  store i32 0, ptr %i.dn, align 8, !tbaa !10
  %.sroa.41334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i32 %i.do, ptr %.sroa.41334.0..sroa_idx, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.dq = load i32, ptr %i.cq, align 1
  store i32 0, ptr %i.dp, align 8, !tbaa !10
  %.sroa.41330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store i32 %i.dq, ptr %.sroa.41330.0..sroa_idx, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store ptr null, ptr %i.dr, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.dt = load i32, ptr %i.aj, align 1
  store i32 %i.dt, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.dv = load i32, ptr %i.a, align 1
  store i32 %i.dv, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.dx = load i32, ptr %i.a, align 1
  store i32 %i.dx, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.dz = load i32, ptr %i.a, align 1
  store i32 %i.dz, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1372
  store <2 x float> splat (float 3.000000e+00), ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store <2 x float> zeroinitializer, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i32 0, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store <4 x float> <float 4.000000e+00, float 0.000000e+00, float 1.000000e+00, float 5.000000e-01>, ptr %i.ed, align 4, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.ee, i8 0, i64 336, i1 false), !tbaa !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 1
  store i32 0, ptr %i.ee, align 8, !tbaa !10
  %.sroa.41326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1728
  store i32 %i.eg, ptr %.sroa.41326.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.ei = load i32, ptr %i.ef, align 1
  store i32 0, ptr %i.eh, align 8, !tbaa !10
  %.sroa.41322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i32 %i.ei, ptr %.sroa.41322.0..sroa_idx, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.ek = load i32, ptr %i.ef, align 1
  store i32 0, ptr %i.ej, align 8, !tbaa !10
  %.sroa.41318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i32 %i.ek, ptr %.sroa.41318.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 3 uses
  %i.en = load i32, ptr %i.em, align 1
  store i32 0, ptr %i.el, align 8, !tbaa !10
  %.sroa.41314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i32 %i.en, ptr %.sroa.41314.0..sroa_idx, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.ep = load i32, ptr %i.em, align 1
  store i32 0, ptr %i.eo, align 8, !tbaa !10
  %.sroa.41310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store i32 %i.ep, ptr %.sroa.41310.0..sroa_idx, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.er = load i32, ptr %i.em, align 1
  store i32 0, ptr %i.eq, align 8, !tbaa !10
  %.sroa.41306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store i32 %i.er, ptr %.sroa.41306.0..sroa_idx, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.et = load i32, ptr %i.a, align 1
  store i32 %i.et, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1964
  %i.ev = load i32, ptr %i.a, align 1
  store i32 %i.ev, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.ex = load i32, ptr %i.a, align 1
  store i32 %i.ex, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1972
  %i.ez = load i32, ptr %i.a, align 1
  store i32 %i.ez, ptr %i.ey, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.fb = load i32, ptr %i.a, align 1
  store i32 %i.fb, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1980
  %i.fd = load i32, ptr %i.a, align 1
  store i32 %i.fd, ptr %i.fc, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1996
  store <2 x float> splat (float 2.000000e+00), ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2012
  store <2 x float> splat (float 2.000000e+00), ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2004
  store <2 x float> zeroinitializer, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2032
  store ptr null, ptr %i.fh, align 8, !tbaa !11
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1992
  store float 0.000000e+00, ptr %i.fi, align 8, !tbaa !724
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2020
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.fj, align 4, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2060
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(772) %i.fm, i8 0, i64 772, i1 false), !tbaa !10
  store i32 0, ptr %i.fl, align 8, !tbaa !10
  %.sroa.41302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store i32 0, ptr %.sroa.41302.0..sroa_idx, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2096
  store i32 0, ptr %i.fn, align 8, !tbaa !10
  %.sroa.41298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2104
  store i32 0, ptr %.sroa.41298.0..sroa_idx, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2136
  store i32 0, ptr %i.fo, align 8, !tbaa !10
  %.sroa.41294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2144
  store i32 0, ptr %.sroa.41294.0..sroa_idx, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2180
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 6 uses
  %i.fr = load i32, ptr %i.fq, align 1
  store i32 %i.fr, ptr %i.fp, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.ft = load i32, ptr %i.fq, align 1
  store i32 %i.ft, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 2188
  %i.fv = load i32, ptr %i.fq, align 1
  store i32 %i.fv, ptr %i.fu, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 1
  store i32 %i.fy, ptr %i.fw, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.ga = load i32, ptr %i.fx, align 1
  store i32 0, ptr %i.fz, align 8, !tbaa !10
  %.sroa.41290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2208
  store i32 %i.ga, ptr %.sroa.41290.0..sroa_idx, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 1
  store i32 0, ptr %i.gb, align 8, !tbaa !10
  %.sroa.41286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2248
  store i32 %i.gd, ptr %.sroa.41286.0..sroa_idx, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 1
  store i32 0, ptr %i.ge, align 8, !tbaa !10
  %.sroa.41282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2288
  store i32 %i.gg, ptr %.sroa.41282.0..sroa_idx, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i32 10, ptr %i.gh, align 8, !tbaa !725
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i32 9, ptr %i.gi, align 4, !tbaa !726
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 2348
  store <2 x float> splat (float 1.600000e+01), ptr %i.gj, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 2332
  store <2 x float> splat (float 2.000000e+00), ptr %i.gk, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 2340
  store <2 x float> splat (float 2.000000e+00), ptr %i.gl, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store ptr null, ptr %i.gm, align 8, !tbaa !11
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 2364
  store i32 0, ptr %i.gn, align 4, !tbaa !727
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 2324
  store <2 x float> <float 0.000000e+00, float 4.000000e+00>, ptr %i.go, align 4, !tbaa !8
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 2356
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.gp, align 4, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 2368 ; 2 uses
  store i32 0, ptr %i.gr, align 8, !tbaa !10
  %.sroa.41278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i8 0, i64 16, i1 false)
  store i32 -14145496, ptr %.sroa.41278.0..sroa_idx, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 2408
  store i32 0, ptr %i.gs, align 8, !tbaa !10
  %.sroa.41274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store i32 -14013910, ptr %.sroa.41274.0..sroa_idx, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 2448
  store i32 0, ptr %i.gt, align 8, !tbaa !10
  %.sroa.41270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2456
  store i32 -13882324, ptr %.sroa.41270.0..sroa_idx, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 2488
  store i32 -12500671, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 2496
  store <4 x i32> <i32 -14145496, i32 -5263441, i32 -5263441, i32 -5263441>, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store <2 x float> splat (float 8.000000e+00), ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store <2 x float> zeroinitializer, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store ptr null, ptr %i.gy, align 8, !tbaa !11
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i32 18, ptr %i.gz, align 8, !tbaa !720
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store float 0.000000e+00, ptr %i.ha, align 4, !tbaa !721
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store <2 x float> splat (float 1.000000e+00), ptr %i.hb, align 4, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2492
  store float 1.000000e+00, ptr %i.hc, align 4, !tbaa !722
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store float 5.000000e-01, ptr %i.hd, align 8, !tbaa !723
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 2584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.hf, ptr noundef nonnull align 8 dereferenceable(216) %i.gr, i64 216, i1 false), !tbaa.struct !728
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 2836
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %i.hh, i8 0, i64 212, i1 false), !tbaa !10
  store i32 0, ptr %i.hg, align 8, !tbaa !10
  %.sroa.41266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store i32 0, ptr %.sroa.41266.0..sroa_idx, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2872
  store i32 0, ptr %i.hi, align 8, !tbaa !10
  %.sroa.41262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2880
  store i32 0, ptr %.sroa.41262.0..sroa_idx, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store i32 0, ptr %i.hj, align 8, !tbaa !10
  %.sroa.41258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store i32 0, ptr %.sroa.41258.0..sroa_idx, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 2956
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 1
  store i32 %i.hm, ptr %i.hk, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 2960
  %i.ho = load i32, ptr %i.hl, align 1
  store i32 %i.ho, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 2964
  %i.hq = load i32, ptr %i.hl, align 1
  store i32 %i.hq, ptr %i.hp, align 4
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 2972
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.ht = load i32, ptr %i.hs, align 1
  store i32 %i.ht, ptr %i.hr, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.hw = load i32, ptr %i.hv, align 1
  store i32 %i.hw, ptr %i.hu, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 2980
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.hz = load i32, ptr %i.hy, align 1
  store i32 %i.hz, ptr %i.hx, align 4
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.ib = load i32, ptr %i.p, align 1
  store i32 %i.ib, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 2988
  store float 1.000000e+00, ptr %i.ic, align 4, !tbaa !729
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 2992
  store <2 x float> splat (float 2.000000e+00), ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 3000
  store <2 x float> splat (float 2.000000e+00), ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 3008
  store <2 x float> <float 2.000000e+00, float 1.000000e+00>, ptr %i.if, align 8, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 3016
  store float 5.000000e-01, ptr %i.ig, align 8, !tbaa !730
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ii, i8 0, i64 312, i1 false), !tbaa !10
  %i.ij = load i32, ptr %i.fq, align 1
  store i32 0, ptr %i.ii, align 8, !tbaa !10
  %.sroa.41254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3056
  store i32 %i.ij, ptr %.sroa.41254.0..sroa_idx, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.il = load i32, ptr %i.fq, align 1
  store i32 0, ptr %i.ik, align 8, !tbaa !10
  %.sroa.41250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3096
  store i32 %i.il, ptr %.sroa.41250.0..sroa_idx, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.in = load i32, ptr %i.fq, align 1
  store i32 0, ptr %i.im, align 8, !tbaa !10
  %.sroa.41246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3136
  store i32 %i.in, ptr %.sroa.41246.0..sroa_idx, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.ip = load i32, ptr %i.fx, align 1
  store i32 0, ptr %i.io, align 8, !tbaa !10
  %.sroa.41242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store i32 %i.ip, ptr %.sroa.41242.0..sroa_idx, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.ir = load i32, ptr %i.gc, align 1
  store i32 0, ptr %i.iq, align 8, !tbaa !10
  %.sroa.41238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3224
  store i32 %i.ir, ptr %.sroa.41238.0..sroa_idx, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 3256
  %i.it = load i32, ptr %i.gf, align 1
  store i32 0, ptr %i.is, align 8, !tbaa !10
  %.sroa.41234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3264
  store i32 %i.it, ptr %.sroa.41234.0..sroa_idx, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 3168
  store i32 0, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 3296
  store i32 0, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 3336
  store ptr null, ptr %i.iw, align 8, !tbaa !11
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 3316
  store <2 x float> splat (float 4.000000e+00), ptr %i.ix, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 3300
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 3324
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.iz, align 4, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 3344
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 6000 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.jb, i8 0, i64 752, i1 false), !tbaa !10
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 92 ; 5 uses
  %i.jd = load i32, ptr %i.jc, align 1
  store i32 0, ptr %i.jb, align 8, !tbaa !10
  %.sroa.41230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6008
  store i32 %i.jd, ptr %.sroa.41230.0..sroa_idx, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 6040
  %i.jf = load i32, ptr %i.jc, align 1
  store i32 0, ptr %i.je, align 8, !tbaa !10
  %.sroa.41226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6048
  store i32 %i.jf, ptr %.sroa.41226.0..sroa_idx, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %i.jh = load i32, ptr %i.jc, align 1
  store i32 0, ptr %i.jg, align 8, !tbaa !10
  %.sroa.41222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6088
  store i32 %i.jh, ptr %.sroa.41222.0..sroa_idx, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 6128
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.jk = load i32, ptr %i.jj, align 1
  store i32 0, ptr %i.ji, align 8, !tbaa !10
  %.sroa.41218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6136
  store i32 %i.jk, ptr %.sroa.41218.0..sroa_idx, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 6168
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.jn = load i32, ptr %i.jm, align 1
  store i32 0, ptr %i.jl, align 8, !tbaa !10
  %.sroa.41214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6176
  store i32 %i.jn, ptr %.sroa.41214.0..sroa_idx, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 6208
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.jq = load i32, ptr %i.jp, align 1
  store i32 0, ptr %i.jo, align 8, !tbaa !10
  %.sroa.41210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6216
  store i32 %i.jq, ptr %.sroa.41210.0..sroa_idx, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 6724
  store i32 3, ptr %i.jr, align 4, !tbaa !731
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 6720
  store i32 3, ptr %i.js, align 8, !tbaa !732
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 6728
  store ptr null, ptr %i.jt, align 8, !tbaa !11
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.jv = load i32, ptr %i.jc, align 1
  store i32 %i.jv, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 6248
  %i.jx = load i32, ptr %i.jc, align 1
  store i32 %i.jx, ptr %i.jw, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 6284
  store i32 0, ptr %i.jy, align 4, !tbaa !733
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 6252
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 6276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.jz, i8 0, i64 24, i1 false)
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.ka, align 4, !tbaa !8
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 6736
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 6752 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.kc, ptr noundef nonnull align 8 dereferenceable(752) %i.jb, i64 752, i1 false), !tbaa.struct !734
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 4 uses
  store i32 0, ptr %i.kd, align 8, !tbaa !10
  %.sroa.41206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6296
  store i32 -14145496, ptr %.sroa.41206.0..sroa_idx, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 6328
  store i32 0, ptr %i.ke, align 8, !tbaa !10
  %.sroa.41202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6336
  store i32 -14013910, ptr %.sroa.41202.0..sroa_idx, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 6368
  store i32 0, ptr %i.kf, align 8, !tbaa !10
  %.sroa.41198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6376
  store i32 -13882324, ptr %.sroa.41198.0..sroa_idx, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 6408
  store i32 -12500671, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 6416
  store <4 x i32> <i32 -14145496, i32 -5263441, i32 -5263441, i32 -5263441>, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 6448
  store <2 x float> splat (float 4.000000e+00), ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 6464
  store <2 x float> zeroinitializer, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 6480
  store ptr null, ptr %i.kk, align 8, !tbaa !11
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 6432
  store i32 18, ptr %i.kl, align 8, !tbaa !720
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 6444
  store float 0.000000e+00, ptr %i.km, align 4, !tbaa !721
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 6436
  store <2 x float> splat (float 1.000000e+00), ptr %i.kn, align 4, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 6412
  store float 1.000000e+00, ptr %i.ko, align 4, !tbaa !722
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 6472
  store float 5.000000e-01, ptr %i.kp, align 8, !tbaa !723
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 6488
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 6504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kq, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.kr, ptr noundef nonnull align 8 dereferenceable(216) %i.kd, i64 216, i1 false), !tbaa.struct !728
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 7040
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ks, ptr noundef nonnull align 8 dereferenceable(216) %i.kd, i64 216, i1 false), !tbaa.struct !728
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 7256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.kt, ptr noundef nonnull align 8 dereferenceable(216) %i.kd, i64 216, i1 false), !tbaa.struct !728
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 4952 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %i.ku, i8 0, i64 968, i1 false), !tbaa !10
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 11 uses
  %i.kw = load i32, ptr %i.kv, align 1
  store i32 0, ptr %i.ku, align 8, !tbaa !10
  %.sroa.41194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4960
  store i32 %i.kw, ptr %.sroa.41194.0..sroa_idx, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.ky = load i32, ptr %i.kv, align 1
  store i32 0, ptr %i.kx, align 8, !tbaa !10
  %.sroa.41190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5000
  store i32 %i.ky, ptr %.sroa.41190.0..sroa_idx, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 5032
  %i.la = load i32, ptr %i.kv, align 1
  store i32 0, ptr %i.kz, align 8, !tbaa !10
  %.sroa.41186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5040
  store i32 %i.la, ptr %.sroa.41186.0..sroa_idx, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 5832
  %i.lc = load i32, ptr %i.a, align 1
  store i32 %i.lc, ptr %i.lb, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 5836
  %i.le = load i32, ptr %i.a, align 1
  store i32 %i.le, ptr %i.ld, align 4
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 5840
  %i.lg = load i32, ptr %i.kv, align 1
  store i32 %i.lg, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 5844
  %i.li = load i32, ptr %i.kv, align 1
  store i32 %i.li, ptr %i.lh, align 4
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 5072
  %i.lk = load i32, ptr %i.p, align 1
  store i32 %i.lk, ptr %i.lj, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 5848
  %i.lm = load i32, ptr %i.a, align 1
  store i32 %i.lm, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 5852
  %i.lo = load i32, ptr %i.a, align 1
  store i32 %i.lo, ptr %i.ln, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 5856
  %i.lq = load i32, ptr %i.a, align 1
  store i32 %i.lq, ptr %i.lp, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 5860
  %i.ls = load i32, ptr %i.a, align 1
  store i32 %i.ls, ptr %i.lr, align 4
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 5864
  %i.lu = load i32, ptr %i.a, align 1
  store i32 %i.lu, ptr %i.lt, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 5868
  %i.lw = load i32, ptr %i.kv, align 1
  store i32 %i.lw, ptr %i.lv, align 4
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 5872
  %i.ly = load i32, ptr %i.kv, align 1
  store i32 %i.ly, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 5888
  store <2 x float> splat (float 1.000000e+01), ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 5080
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.ma, ptr noundef nonnull align 8 dereferenceable(752) %i.kc, i64 752, i1 false), !tbaa.struct !734
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 5896
  store <2 x float> splat (float 4.000000e+00), ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 5884
  store float 4.000000e+00, ptr %i.md, align 4, !tbaa !735
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 5876
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.me, align 4, !tbaa !8
  store <2 x float> <float 2.000000e+00, float 1.000000e+00>, ptr %i.mc, align 8, !tbaa !8
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 5912
  store float 5.000000e-01, ptr %i.mf, align 8, !tbaa !736
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1592) %i.mg, i8 0, i64 1592, i1 false), !tbaa !10
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 10 uses
  %i.mi = load i32, ptr %i.mh, align 1
  store i32 0, ptr %i.mg, align 8, !tbaa !10
  %.sroa.41182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3368
  store i32 %i.mi, ptr %.sroa.41182.0..sroa_idx, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.mk = load i32, ptr %i.mh, align 1
  store i32 0, ptr %i.mj, align 8, !tbaa !10
  %.sroa.41178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3408
  store i32 %i.mk, ptr %.sroa.41178.0..sroa_idx, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.mm = load i32, ptr %i.mh, align 1
  store i32 0, ptr %i.ml, align 8, !tbaa !10
  %.sroa.41174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3448
  store i32 %i.mm, ptr %.sroa.41174.0..sroa_idx, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.mo = load i32, ptr %i.p, align 1
  store i32 %i.mo, ptr %i.mn, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 3484
  %i.mq = load i32, ptr %i.a, align 1
  store i32 %i.mq, ptr %i.mp, align 4
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.ms = load i32, ptr %i.a, align 1
  store i32 %i.ms, ptr %i.mr, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 3492
  %i.mu = load i32, ptr %i.a, align 1
  store i32 %i.mu, ptr %i.mt, align 4
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 3496
  store i32 9, ptr %i.mv, align 8, !tbaa !737
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 3500
  store i32 10, ptr %i.mw, align 4, !tbaa !738
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 4928
  store ptr null, ptr %i.mx, align 8, !tbaa !11
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 3512
  store <2 x float> splat (float 4.000000e+00), ptr %i.my, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store <2 x float> <float 1.000000e+00, float 1.000000e+01>, ptr %i.mz, align 8, !tbaa !8
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 4936
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 3520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.na, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.nb, align 8, !tbaa !8
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 4712 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.nc, i8 0, i64 216, i1 false), !tbaa !10
  %i.nd = load i32, ptr %i.mh, align 1
  store i32 0, ptr %i.nc, align 8, !tbaa !10
  %.sroa.41170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4720
  store i32 %i.nd, ptr %.sroa.41170.0..sroa_idx, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 4752
  %i.nf = load i32, ptr %i.mh, align 1
  store i32 0, ptr %i.ne, align 8, !tbaa !10
  %.sroa.41166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4760
  store i32 %i.nf, ptr %.sroa.41166.0..sroa_idx, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 4792
  %i.nh = load i32, ptr %i.mh, align 1
  store i32 0, ptr %i.ng, align 8, !tbaa !10
  %.sroa.41162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4800
  store i32 %i.nh, ptr %.sroa.41162.0..sroa_idx, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 4832
  store i32 0, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 4840
  %i.nk = load i32, ptr %i.mh, align 1
  store i32 %i.nk, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 4844
  %i.nm = load i32, ptr %i.a, align 1
  store i32 %i.nm, ptr %i.nl, align 4
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 4848
  %i.no = load i32, ptr %i.a, align 1
  store i32 %i.no, ptr %i.nn, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 4852
  %i.nq = load i32, ptr %i.a, align 1
  store i32 %i.nq, ptr %i.np, align 4
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 4872
  store <2 x float> zeroinitializer, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 4888
  store <2 x float> zeroinitializer, ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 4904
  store ptr null, ptr %i.nt, align 8, !tbaa !11
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 4856
  store i32 18, ptr %i.nu, align 8, !tbaa !720
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 4868
  store float 0.000000e+00, ptr %i.nv, align 4, !tbaa !721
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 4860
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.nw, align 4, !tbaa !8
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 4836
  store float 1.000000e+00, ptr %i.nx, align 4, !tbaa !722
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 4896
  store float 5.000000e-01, ptr %i.ny, align 8, !tbaa !723
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 4912
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 4496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.oa, ptr noundef nonnull align 8 dereferenceable(216) %i.nc, i64 216, i1 false), !tbaa.struct !728
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 3528 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %i.ob, i8 0, i64 968, i1 false), !tbaa !10
  %i.oc = load i32, ptr %i.mh, align 1
  store i32 0, ptr %i.ob, align 8, !tbaa !10
  %.sroa.41158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3536
  store i32 %i.oc, ptr %.sroa.41158.0..sroa_idx, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 3568
  %i.oe = load i32, ptr %i.mh, align 1
  store i32 0, ptr %i.od, align 8, !tbaa !10
  %.sroa.41154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3576
  store i32 %i.oe, ptr %.sroa.41154.0..sroa_idx, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 3608
  %i.og = load i32, ptr %i.mh, align 1
  store i32 0, ptr %i.of, align 8, !tbaa !10
  %.sroa.41150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3616
  store i32 %i.og, ptr %.sroa.41150.0..sroa_idx, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 3648
  store i32 0, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.oj = load i32, ptr %i.a, align 1
  store i32 %i.oj, ptr %i.oi, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 4412
  %i.ol = load i32, ptr %i.a, align 1
  store i32 %i.ol, ptr %i.ok, align 4
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.on = load i32, ptr %i.kv, align 1
  store i32 %i.on, ptr %i.om, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 4420
  %i.op = load i32, ptr %i.kv, align 1
  store i32 %i.op, ptr %i.oo, align 4
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.or = load i32, ptr %i.a, align 1
  store i32 %i.or, ptr %i.oq, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 4428
  %i.ot = load i32, ptr %i.a, align 1
  store i32 %i.ot, ptr %i.os, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 4432
  %i.ov = load i32, ptr %i.a, align 1
  store i32 %i.ov, ptr %i.ou, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.ox = load i32, ptr %i.a, align 1
  store i32 %i.ox, ptr %i.ow, align 4
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 4440
  %i.oz = load i32, ptr %i.a, align 1
  store i32 %i.oz, ptr %i.oy, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 4444
  %i.pb = load i32, ptr %i.kv, align 1
  store i32 %i.pb, ptr %i.pa, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %i.pd = load i32, ptr %i.kv, align 1
  store i32 %i.pd, ptr %i.pc, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 4472
  store <2 x float> zeroinitializer, ptr %i.pe, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 4460
  store float 8.000000e+00, ptr %i.pf, align 4, !tbaa !735
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 4452
  store <2 x float> zeroinitializer, ptr %i.pg, align 4, !tbaa !8
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 4484
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.ph, align 4, !tbaa !8
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.pi, i8 0, i64 80, i1 false), !tbaa !10
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.pk = load i32, ptr %i.pj, align 1
  store i32 0, ptr %i.pi, align 8, !tbaa !10
  %.sroa.41146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 %i.pk, ptr %.sroa.41146.0..sroa_idx, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.pm = load i32, ptr %i.p, align 1
  store i32 %i.pm, ptr %i.pl, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.po = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.pp = load i32, ptr %i.po, align 1
  store i32 %i.pp, ptr %i.pn, align 4
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.ps = load i32, ptr %i.pr, align 1
  store i32 %i.ps, ptr %i.pq, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 5980
  store <2 x float> splat (float 4.000000e+00), ptr %i.pt, align 4
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 5972
  store <2 x float> zeroinitializer, ptr %i.pu, align 4, !tbaa !8
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 5988
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.pv, align 4, !tbaa !8
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 5996
  store i8 1, ptr %i.pw, align 4, !tbaa !739
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8464
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 7 uses
  %i.pz = load i32, ptr %i.py, align 1
  store i32 0, ptr %i.px, align 8, !tbaa !10
  %.sroa.41142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8472
  store i32 %i.pz, ptr %.sroa.41142.0..sroa_idx, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 8504
  %i.qb = load i32, ptr %i.py, align 1
  store i32 0, ptr %i.qa, align 8, !tbaa !10
  %.sroa.41138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8512
  store i32 %i.qb, ptr %.sroa.41138.0..sroa_idx, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 8544
  %i.qd = load i32, ptr %i.py, align 1
  store i32 0, ptr %i.qc, align 8, !tbaa !10
  %.sroa.41134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8552
  store i32 %i.qd, ptr %.sroa.41134.0..sroa_idx, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 8584
  %i.qf = load i32, ptr %i.p, align 1
  store i32 %i.qf, ptr %i.qe, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 8588
  %i.qh = load i32, ptr %i.a, align 1
  store i32 %i.qh, ptr %i.qg, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 8592
  %i.qj = load i32, ptr %i.a, align 1
  store i32 %i.qj, ptr %i.qi, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 8596
  %i.ql = load i32, ptr %i.a, align 1
  store i32 %i.ql, ptr %i.qk, align 4
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 8832
  store i32 8, ptr %i.qm, align 8, !tbaa !740
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 8836
  store i32 8, ptr %i.qn, align 4, !tbaa !741
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 8840
  store i32 8, ptr %i.qo, align 8, !tbaa !742
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 8852
  store <2 x float> splat (float 4.000000e+00), ptr %i.qp, align 4
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 8860
  store <2 x float> <float 0.000000e+00, float 4.000000e+00>, ptr %i.qq, align 4
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 8868
  store <2 x float> <float 4.000000e+00, float 0.000000e+00>, ptr %i.qr, align 4
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 8844
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.qs, align 4, !tbaa !8
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8876
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.qt, align 4, !tbaa !8
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.qu, i8 0, i64 216, i1 false), !tbaa !10
  %i.qv = load i32, ptr %i.py, align 1
  store i32 0, ptr %i.qu, align 8, !tbaa !10
  %.sroa.41130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8624
  store i32 %i.qv, ptr %.sroa.41130.0..sroa_idx, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 8656
  %i.qx = load i32, ptr %i.py, align 1
  store i32 0, ptr %i.qw, align 8, !tbaa !10
  %.sroa.41126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8664
  store i32 %i.qx, ptr %.sroa.41126.0..sroa_idx, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 8696
  %i.qz = load i32, ptr %i.py, align 1
  store i32 0, ptr %i.qy, align 8, !tbaa !10
  %.sroa.41122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8704
  store i32 %i.qz, ptr %.sroa.41122.0..sroa_idx, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 8736
  store i32 0, ptr %i.ra, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %i.rc = load i32, ptr %i.py, align 1
  store i32 %i.rc, ptr %i.rb, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 8748
  %i.re = load i32, ptr %i.a, align 1
  store i32 %i.re, ptr %i.rd, align 4
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8752
  %i.rg = load i32, ptr %i.a, align 1
  store i32 %i.rg, ptr %i.rf, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 8756
  %i.ri = load i32, ptr %i.a, align 1
  store i32 %i.ri, ptr %i.rh, align 4
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 8776
  store <2 x float> splat (float 2.000000e+00), ptr %i.rj, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 8792
  store <2 x float> zeroinitializer, ptr %i.rk, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 8808
  store ptr null, ptr %i.rl, align 8, !tbaa !11
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 8760
  store i32 18, ptr %i.rm, align 8, !tbaa !720
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 8772
  store float 0.000000e+00, ptr %i.rn, align 4, !tbaa !721
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 8764
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ro, align 4, !tbaa !8
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 8740
  store float 1.000000e+00, ptr %i.rp, align 4, !tbaa !722
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 8800
  store float 5.000000e-01, ptr %i.rq, align 8, !tbaa !723
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 8816
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 7504
  %i.rt = getelementptr inbounds nuw i8, ptr %i.a, i64 108 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rr, i8 0, i64 16, i1 false)
  %i.ru = load i32, ptr %i.rt, align 1
  store i32 0, ptr %i.rs, align 8, !tbaa !10
  %.sroa.41118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7512
  store i32 %i.ru, ptr %.sroa.41118.0..sroa_idx, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 7544
  %i.rw = load i32, ptr %i.p, align 1
  store i32 %i.rw, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 7548
  %i.ry = load i32, ptr %i.a, align 1
  store i32 %i.ry, ptr %i.rx, align 4
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 8416
  store i32 10, ptr %i.rz, align 8, !tbaa !743
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 8420
  store i32 8, ptr %i.sa, align 4, !tbaa !744
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 8436
  store <2 x float> splat (float 4.000000e+00), ptr %i.sb, align 4
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 8444
  store <2 x float> splat (float 4.000000e+00), ptr %i.sc, align 4
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 8432
  store float 1.000000e+01, ptr %i.sd, align 8, !tbaa !745
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 8424
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.se, align 8, !tbaa !8
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8452
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %i.sf, align 4, !tbaa !8
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 7768 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.sg, i8 0, i64 216, i1 false), !tbaa !10
  %i.sh = load i32, ptr %i.rt, align 1
  store i32 0, ptr %i.sg, align 8, !tbaa !10
  %.sroa.41114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7776
  store i32 %i.sh, ptr %.sroa.41114.0..sroa_idx, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 7808
  %i.sj = load i32, ptr %i.rt, align 1
  store i32 0, ptr %i.si, align 8, !tbaa !10
  %.sroa.41110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7816
  store i32 %i.sj, ptr %.sroa.41110.0..sroa_idx, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 7848
  %i.sl = load i32, ptr %i.rt, align 1
  store i32 0, ptr %i.sk, align 8, !tbaa !10
  %.sroa.41106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7856
  store i32 %i.sl, ptr %.sroa.41106.0..sroa_idx, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 7888
  store i32 0, ptr %i.sm, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 7896
  %i.so = load i32, ptr %i.rt, align 1
  store i32 %i.so, ptr %i.sn, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 7900
  %i.sq = load i32, ptr %i.a, align 1
  store i32 %i.sq, ptr %i.sp, align 4
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 7904
  %i.ss = load i32, ptr %i.a, align 1
  store i32 %i.ss, ptr %i.sr, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 7908
  %i.su = load i32, ptr %i.a, align 1
  store i32 %i.su, ptr %i.st, align 4
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 7928
  store <2 x float> splat (float 2.000000e+00), ptr %i.sv, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 7944
  store <2 x float> zeroinitializer, ptr %i.sw, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 7960
  store ptr null, ptr %i.sx, align 8, !tbaa !11
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 7912
  store i32 18, ptr %i.sy, align 8, !tbaa !720
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 7924
  store float 0.000000e+00, ptr %i.sz, align 4, !tbaa !721
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 7916
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ta, align 4, !tbaa !8
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 7892
  store float 1.000000e+00, ptr %i.tb, align 4, !tbaa !722
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 7952
  store float 5.000000e-01, ptr %i.tc, align 8, !tbaa !723
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 7968
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 7552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.td, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.te, ptr noundef nonnull align 8 dereferenceable(216) %i.sg, i64 216, i1 false), !tbaa.struct !728
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 8200 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.tf, i8 0, i64 216, i1 false), !tbaa !10
  %i.tg = load i32, ptr %i.aj, align 1
  store i32 0, ptr %i.tf, align 8, !tbaa !10
  %.sroa.41102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8208
  store i32 %i.tg, ptr %.sroa.41102.0..sroa_idx, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 8240
  %i.ti = load i32, ptr %i.aj, align 1
  store i32 0, ptr %i.th, align 8, !tbaa !10
  %.sroa.41098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8248
  store i32 %i.ti, ptr %.sroa.41098.0..sroa_idx, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 8280
  %i.tk = load i32, ptr %i.aj, align 1
  store i32 0, ptr %i.tj, align 8, !tbaa !10
  %.sroa.41094.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8288
  store i32 %i.tk, ptr %.sroa.41094.0..sroa_idx, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 8320
  store i32 0, ptr %i.tl, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 8328
  %i.tn = load i32, ptr %i.rt, align 1
  store i32 %i.tn, ptr %i.tm, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 8332
  %i.tp = load i32, ptr %i.a, align 1
  store i32 %i.tp, ptr %i.to, align 4
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 8336
  %i.tr = load i32, ptr %i.a, align 1
  store i32 %i.tr, ptr %i.tq, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 8340
  %i.tt = load i32, ptr %i.a, align 1
  store i32 %i.tt, ptr %i.ts, align 4
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8360
  store <2 x float> splat (float 2.000000e+00), ptr %i.tu, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 8376
  store <2 x float> zeroinitializer, ptr %i.tv, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 8392
  store ptr null, ptr %i.tw, align 8, !tbaa !11
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 8344
  store i32 18, ptr %i.tx, align 8, !tbaa !720
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 8356
  store float 0.000000e+00, ptr %i.ty, align 4, !tbaa !721
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 8348
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.tz, align 4, !tbaa !8
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 8324
  store float 1.000000e+00, ptr %i.ua, align 4, !tbaa !722
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 8384
  store float 5.000000e-01, ptr %i.ub, align 8, !tbaa !723
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 8400
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 7984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uc, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ud, ptr noundef nonnull align 8 dereferenceable(216) %i.tf, i64 216, i1 false), !tbaa.struct !728
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 8888
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 9464
  store i32 1, ptr %i.uf, align 8, !tbaa !746
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 9440
  store i32 1, ptr %i.ug, align 8, !tbaa !747
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 9444
  store i32 12, ptr %i.uh, align 4, !tbaa !748
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 9448
  store i32 11, ptr %i.ui, align 8, !tbaa !749
  %i.uj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.uk = load i32, ptr %i.uj, align 1
  store i32 0, ptr %i.ue, align 8, !tbaa !10
  %.sroa.41090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8896
  store i32 %i.uk, ptr %.sroa.41090.0..sroa_idx, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.um = load i32, ptr %i.uj, align 1
  store i32 0, ptr %i.ul, align 8, !tbaa !10
  %.sroa.41086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8936
  store i32 %i.um, ptr %.sroa.41086.0..sroa_idx, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.uo = load i32, ptr %i.uj, align 1
  store i32 0, ptr %i.un, align 8, !tbaa !10
  %.sroa.41082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8976
  store i32 %i.uo, ptr %.sroa.41082.0..sroa_idx, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 9452
  %i.uq = load i32, ptr %i.a, align 1
  store i32 %i.uq, ptr %i.up, align 4
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 9456
  %i.us = load i32, ptr %i.a, align 1
  store i32 %i.us, ptr %i.ur, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 9460
  %i.uu = load i32, ptr %i.a, align 1
  store i32 %i.uu, ptr %i.ut, align 4
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 9476
  store <2 x float> splat (float 4.000000e+00), ptr %i.uv, align 4
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 9468
  store <2 x float> splat (float 4.000000e+00), ptr %i.uw, align 4
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 9484
  store <2 x float> zeroinitializer, ptr %i.ux, align 4
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 9008 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.uy, i8 0, i64 216, i1 false), !tbaa !10
  %i.uz = load i32, ptr %i.uj, align 1
  store i32 0, ptr %i.uy, align 8, !tbaa !10
  %.sroa.41078.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9016
  store i32 %i.uz, ptr %.sroa.41078.0..sroa_idx, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 9048
  %i.vb = load i32, ptr %i.uj, align 1
  store i32 0, ptr %i.va, align 8, !tbaa !10
  %.sroa.41074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9056
  store i32 %i.vb, ptr %.sroa.41074.0..sroa_idx, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 9088
  %i.vd = load i32, ptr %i.uj, align 1
  store i32 0, ptr %i.vc, align 8, !tbaa !10
  %.sroa.41070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9096
  store i32 %i.vd, ptr %.sroa.41070.0..sroa_idx, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 9128
  store i32 0, ptr %i.ve, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 9136
  %i.vg = load i32, ptr %i.uj, align 1
  store i32 %i.vg, ptr %i.vf, align 8
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 9140
  %i.vi = load i32, ptr %i.a, align 1
  store i32 %i.vi, ptr %i.vh, align 4
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 9144
  %i.vk = load i32, ptr %i.a, align 1
  store i32 %i.vk, ptr %i.vj, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 9148
  %i.vm = load i32, ptr %i.a, align 1
  store i32 %i.vm, ptr %i.vl, align 4
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 9168
  store <2 x float> zeroinitializer, ptr %i.vn, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 9184
  store <2 x float> zeroinitializer, ptr %i.vo, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 9200
  store ptr null, ptr %i.vp, align 8, !tbaa !11
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 9152
  store i32 18, ptr %i.vq, align 8, !tbaa !720
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 9164
  store float 0.000000e+00, ptr %i.vr, align 4, !tbaa !721
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 9156
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.vs, align 4, !tbaa !8
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 9132
  store float 1.000000e+00, ptr %i.vt, align 4, !tbaa !722
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 9192
  store float 5.000000e-01, ptr %i.vu, align 8, !tbaa !723
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 9208
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 9224 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vv, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.vw, i8 0, i64 216, i1 false), !tbaa !10
  %i.vx = load i32, ptr %i.uj, align 1
  store i32 0, ptr %i.vw, align 8, !tbaa !10
  %.sroa.41066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9232
  store i32 %i.vx, ptr %.sroa.41066.0..sroa_idx, align 8
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 9264
  %i.vz = load i32, ptr %i.uj, align 1
  store i32 0, ptr %i.vy, align 8, !tbaa !10
  %.sroa.41062.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9272
  store i32 %i.vz, ptr %.sroa.41062.0..sroa_idx, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 9304
  %i.wb = load i32, ptr %i.uj, align 1
  store i32 0, ptr %i.wa, align 8, !tbaa !10
  %.sroa.41058.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9312
  store i32 %i.wb, ptr %.sroa.41058.0..sroa_idx, align 8
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 9344
  store i32 0, ptr %i.wc, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 9352
  %i.we = load i32, ptr %i.uj, align 1
  store i32 %i.we, ptr %i.wd, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 9356
  %i.wg = load i32, ptr %i.a, align 1
  store i32 %i.wg, ptr %i.wf, align 4
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 9360
  %i.wi = load i32, ptr %i.a, align 1
  store i32 %i.wi, ptr %i.wh, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 9364
  %i.wk = load i32, ptr %i.a, align 1
  store i32 %i.wk, ptr %i.wj, align 4
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 9384
  store <2 x float> zeroinitializer, ptr %i.wl, align 8
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 9400
  store <2 x float> zeroinitializer, ptr %i.wm, align 8
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 9416
  store ptr null, ptr %i.wn, align 8, !tbaa !11
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 9368
  store i32 18, ptr %i.wo, align 8, !tbaa !720
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 9380
  store float 0.000000e+00, ptr %i.wp, align 4, !tbaa !721
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 9372
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.wq, align 4, !tbaa !8
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 9348
  store float 1.000000e+00, ptr %i.wr, align 4, !tbaa !722
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 9408
  store float 5.000000e-01, ptr %i.ws, align 8, !tbaa !723
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 9424
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 9536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wt, i8 0, i64 16, i1 false)
  %i.wv = load i32, ptr %i.aj, align 1
  store i32 %i.wv, ptr %i.wu, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 9496
  %i.wx = load i32, ptr %i.aj, align 1
  store i32 0, ptr %i.ww, align 8, !tbaa !10
  %.sroa.41054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9504
  store i32 %i.wx, ptr %.sroa.41054.0..sroa_idx, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 9540
  %i.wz = load i32, ptr %i.p, align 1
  store i32 %i.wz, ptr %i.wy, align 4
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 9544
  %i.xb = load i32, ptr %i.p, align 1
  store i32 %i.xb, ptr %i.xa, align 8
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 9548
  %i.xd = load i32, ptr %i.p, align 1
  store i32 %i.xd, ptr %i.xc, align 4
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 9552
  %i.xf = load i32, ptr %i.p, align 1
  store i32 %i.xf, ptr %i.xe, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 9556
  %i.xh = load i32, ptr %i.p, align 1
  store i32 %i.xh, ptr %i.xg, align 4
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 9560
  %i.xj = load i32, ptr %i.p, align 1
  store i32 %i.xj, ptr %i.xi, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 9564
  %i.xl = load i32, ptr %i.p, align 1
  store i32 %i.xl, ptr %i.xk, align 4
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 9568
  %i.xn = load i32, ptr %i.a, align 1
  store i32 0, ptr %i.xm, align 8, !tbaa !10
  %.sroa.41051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9576
  store i32 %i.xn, ptr %.sroa.41051.0..sroa_idx, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 9640
  store float 0.000000e+00, ptr %i.xo, align 8, !tbaa !750
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 9644
  store <2 x float> splat (float 4.000000e+00), ptr %i.xp, align 4
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 9652
  store <2 x float> splat (float 1.000000e+01), ptr %i.xq, align 4
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 9660
  store <2 x float> splat (float 6.400000e+01), ptr %i.xr, align 4
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 9624
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 9608
  store <4 x float> <float 2.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.xt, align 8, !tbaa !8
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 8.000000e+00>, ptr %i.xs, align 8, !tbaa !8
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 9668
  store <2 x float> splat (float 4.000000e+00), ptr %i.xu, align 4
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 9676
  store <2 x float> splat (float 4.000000e+00), ptr %i.xv, align 4
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 9684
  store <2 x float> splat (float 4.000000e+00), ptr %i.xw, align 4
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 9692
  store <2 x float> splat (float 4.000000e+00), ptr %i.xx, align 4
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 9700
  store <2 x float> splat (float 4.000000e+00), ptr %i.xy, align 4
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 9708
  store <2 x float> splat (float 4.000000e+00), ptr %i.xz, align 4
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 9716
  store <2 x float> splat (float 4.000000e+00), ptr %i.ya, align 4
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 9724
  store i32 0, ptr %i.yb, align 4, !tbaa !751
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 9728
  store <2 x float> splat (float 1.200000e+01), ptr %i.yc, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit46.i.i.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @nk_style_get_color_by_name(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @nk_color_names, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_style_item_color(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.nk_style_item) align 8 captures(none) initializes((0, 4), (8, 12)) %0, i32 %1) local_unnamed_addr #11 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !752
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_style_item_image(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.nk_style_item) align 8 captures(none) initializes((0, 4), (8, 32)) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1) local_unnamed_addr #18 {
bb.a:
  store i32 1, ptr %0, align 8, !tbaa !752
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !155
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_style_item_nine_slice(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.nk_style_item) align 8 captures(none) initializes((0, 4), (8, 40)) %0, ptr nofree noundef readonly byval(%struct.nk_nine_slice) align 8 captures(none) %1) local_unnamed_addr #18 {
bb.a:
  store i32 2, ptr %0, align 8, !tbaa !752
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !753
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_style_item_hide(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.nk_style_item) align 8 captures(none) initializes((0, 4), (8, 12)) %0) local_unnamed_addr #11 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !752
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_style_set_font(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_layout_reset_min_row_height.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %1, ptr %i.a, align 8, !tbaa !754
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12488
  store i32 0, ptr %i.b, align 8, !tbaa !755
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756  ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %nk_layout_reset_min_row_height.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !757  ; 2 uses
  %.not14.i = icmp eq ptr %i.f, null
  br i1 %.not14.i, label %nk_layout_reset_min_row_height.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !166
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.k = load float, ptr %i.j, align 4, !tbaa !758
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float 2.000000e+00, float %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9636
  %i.n = load float, ptr %i.m, align 4, !tbaa !759
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float 2.000000e+00, float %i.l)
  store float %i.o, ptr %i.i, align 4, !tbaa !760
  br label %nk_layout_reset_min_row_height.exit

nk_layout_reset_min_row_height.exit:              ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

end_hunk_5
begin_hunk_6_@nk_style_pop_vec2:bb.a
  %i.j = load i64, ptr %i.i, align 8
  store i64 %i.j, ptr %i.h, align 4
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !788  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11456
  %i.e = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !788
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !791
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !789
  store i32 %i.i, ptr %i.j, align 4, !tbaa !10
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !792  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11976
  %i.e = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !792
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !793
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %i.h, align 1
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !296  ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.d, ptr %i.e, align 8, !tbaa !796
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_style_show_cursor(ptr nofree noundef writeonly captures(none) initializes((472, 476)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 1, ptr %i.a, align 8, !tbaa !298
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_style_hide_cursor(ptr nofree noundef writeonly captures(none) initializes((472, 476)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 0, ptr %i.a, align 8, !tbaa !298
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
  store ptr %2, ptr %i.c, align 8, !tbaa !296
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
  store ptr %1, ptr %i.a, align 8, !tbaa !296
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.b, ptr %i.c, align 8, !tbaa !296
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.d, ptr %i.e, align 8, !tbaa !296
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.f, ptr %i.g, align 8, !tbaa !296
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.h, ptr %i.i, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.j, ptr %i.k, align 8, !tbaa !296
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.l, ptr %i.m, align 8, !tbaa !296
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 1, ptr %i.n, align 8, !tbaa !797
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_init_default(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 {
bb.a:
  %2 = alloca %struct.nk_allocator, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store ptr null, ptr %2, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @nk_malloc, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @nk_mfree, ptr %i.b, align 8, !tbaa !385
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18584) %0, i8 0, i64 18584, i1 false), !tbaa !10
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.c
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.c, i1 false), !tbaa !11
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18580) %scevgep.i.i.i, i8 0, i64 18580, i1 false), !tbaa !10
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 18580
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 %i.b, i1 false), !tbaa !11
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  tail call void @nk_style_from_table(ptr noundef nonnull %0, ptr noundef null)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18580
  store i32 1, ptr %i.d, align 4, !tbaa !314
  %.not9.i = icmp eq ptr %2, null
  br i1 %.not9.i, label %.loopexit46.i.i.thread.i.i, label %bb.d

bb.d:                                             ; preds = %nk_zero.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %2, ptr %i.e, align 8, !tbaa !767
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %nk_zero.exit.i, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.f, i8 0, i64 240, i1 false), !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12784
  store <8 x float> <float 9.999600e-01, float f0x0C780258, float f0x3F5DB17E, float f0x3EFFD2D5, float f0x3F00014E, float f0x3F5DD0D5, float f0x37AFE632, float 1.000840e+00>, ptr %i.g, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12816
  store <8 x float> <float f0xBF000287, float f0x3F5DC1C2, float f0xBF5DB41F, float f0x3EFFDD26, float f0xBF7FFD5E, float -6.741250e-08, float f0xBF5DB431, float f0xBEFFDD1E>, ptr %i.h, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12848
  store <8 x float> <float -5.000380e-01, float f0xBF5DC1C0, float f0x37B6FBCF, float f0xBF801B88, float f0x3F000136, float f0xBF5DD0DD, float f0x3F5DB1C5, float f0xBEFFD22A>, ptr %i.i, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit46.i.i.thread.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9736 ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 3                          ; 3 uses
  %.not.i.i.i10 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i10, label %.loopexit46.i.i.thread.i15, label %.loopexit46.i.i.i11

.loopexit46.i.i.thread.i15:                       ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.j, i8 0, i64 120, i1 false), !tbaa !10
  br label %nk_buffer_init.exit

.loopexit46.i.i.i11:                              ; preds = %.loopexit
  %i.m = sub nuw nsw i64 4, %i.l                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 0, i64 %i.m, i1 false), !tbaa !11
  %scevgep.i.i.i12 = getelementptr i8, ptr %i.j, i64 %i.m ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i12, i8 0, i64 116, i1 false), !tbaa !10
  %scevgep53.i.i.i13 = getelementptr i8, ptr %scevgep.i.i.i12, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i13, i8 0, i64 %i.l, i1 false), !tbaa !11
  br label %nk_buffer_init.exit

nk_buffer_init.exit:                              ; preds = %.loopexit46.i.i.thread.i15, %.loopexit46.i.i.i11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9792
  store i32 1, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = load ptr, ptr %1, align 8
  %i.r = tail call ptr %i.p(ptr %i.q, ptr noundef null, i64 noundef 4096) #50, !inline_history !88
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9800
  store ptr %i.r, ptr %i.s, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9808
  store i64 4096, ptr %i.t, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 9848
  store i64 4096, ptr %i.u, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 9816
  store float 2.000000e+00, ptr %i.v, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, i8 0, i64 72, i1 false), !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i32 16, ptr %i.y, align 8, !tbaa !798
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18488
  store i32 1, ptr %i.z, align 8, !tbaa !799
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18496
  store ptr null, ptr %i.aa, align 8, !tbaa !800
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18460
  store i32 1, ptr %i.ab, align 4, !tbaa !801
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18584) %0, i8 0, i64 18584, i1 false), !tbaa !10
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.c
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.c, i1 false), !tbaa !11
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18580) %scevgep.i.i.i, i8 0, i64 18580, i1 false), !tbaa !10
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 18580
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 %i.b, i1 false), !tbaa !11
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  tail call void @nk_style_from_table(ptr noundef nonnull %0, ptr noundef null)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18580
  store i32 1, ptr %i.d, align 4, !tbaa !314
  %.not9.i = icmp eq ptr %3, null
  br i1 %.not9.i, label %.loopexit46.i.i.thread.i.i, label %bb.d

bb.d:                                             ; preds = %nk_zero.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %3, ptr %i.e, align 8, !tbaa !767
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %nk_zero.exit.i, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.f, i8 0, i64 240, i1 false), !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12784
  store <8 x float> <float 9.999600e-01, float f0x0C780258, float f0x3F5DB17E, float f0x3EFFD2D5, float f0x3F00014E, float f0x3F5DD0D5, float f0x37AFE632, float 1.000840e+00>, ptr %i.g, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12816
  store <8 x float> <float f0xBF000287, float f0x3F5DC1C2, float f0xBF5DB41F, float f0x3EFFDD26, float f0xBF7FFD5E, float -6.741250e-08, float f0xBF5DB431, float f0xBEFFDD1E>, ptr %i.h, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12848
  store <8 x float> <float -5.000380e-01, float f0xBF5DC1C0, float f0x37B6FBCF, float f0xBF801B88, float f0x3F000136, float f0xBF5DD0DD, float f0x3F5DB1C5, float f0xBEFFD22A>, ptr %i.i, align 4, !tbaa !8
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.j, i8 0, i64 112, i1 false), !tbaa !10
  br label %nk_zero.exit.i12

.loopexit46.i.i.i9:                               ; preds = %bb.e
  %i.m = sub nuw nsw i64 4, %i.l                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i8 0, i64 %i.m, i1 false), !tbaa !11
  %scevgep.i.i.i10 = getelementptr i8, ptr %i.j, i64 %i.m ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %scevgep.i.i.i10, i8 0, i64 116, i1 false), !tbaa !10
  %scevgep53.i.i.i11 = getelementptr i8, ptr %scevgep.i.i.i10, i64 116
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i11, i8 0, i64 %i.l, i1 false), !tbaa !11
  br label %nk_zero.exit.i12

nk_zero.exit.i12:                                 ; preds = %.loopexit46.i.i.i9, %.loopexit46.i.i.thread.i13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9792
  store i32 0, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9800
  store ptr %1, ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9808
  store i64 %2, ptr %i.p, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9848
  store i64 %2, ptr %i.q, align 8, !tbaa !46
  br label %nk_buffer_init_fixed.exit

nk_buffer_init_fixed.exit:                        ; preds = %nk_setup.exit, %nk_zero.exit.i12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18460
  store i32 0, ptr %i.r, align 4, !tbaa !801
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
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_setup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 3                          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18584) %0, i8 0, i64 18584, i1 false), !tbaa !10
  br label %nk_zero.exit.i

.loopexit46.i.i.i:                                ; preds = %bb.c
  %i.e = sub nuw nsw i64 4, %i.d                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.e, i1 false), !tbaa !11
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(18580) %scevgep.i.i.i, i8 0, i64 18580, i1 false), !tbaa !10
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 18580
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 %i.d, i1 false), !tbaa !11
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  tail call void @nk_style_from_table(ptr noundef nonnull %0, ptr noundef null)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18580
  store i32 1, ptr %i.f, align 4, !tbaa !314
  %.not9.i = icmp eq ptr %3, null
  br i1 %.not9.i, label %.loopexit46.i.i.thread.i.i, label %bb.d

bb.d:                                             ; preds = %nk_zero.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %3, ptr %i.g, align 8, !tbaa !767
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %nk_zero.exit.i, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(240) %i.h, i8 0, i64 240, i1 false), !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12784
  store <8 x float> <float 9.999600e-01, float f0x0C780258, float f0x3F5DB17E, float f0x3EFFD2D5, float f0x3F00014E, float f0x3F5DD0D5, float f0x37AFE632, float 1.000840e+00>, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12816
  store <8 x float> <float f0xBF000287, float f0x3F5DC1C2, float f0xBF5DB41F, float f0x3EFFDD26, float f0xBF7FFD5E, float -6.741250e-08, float f0xBF5DB431, float f0xBEFFDD1E>, ptr %i.j, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12848
  store <8 x float> <float -5.000380e-01, float f0xBF5DC1C0, float f0x37B6FBCF, float f0xBF801B88, float f0x3F000136, float f0xBF5DD0DD, float f0x3F5DB1C5, float f0xBEFFD22A>, ptr %i.k, align 4, !tbaa !8
  br label %nk_setup.exit

nk_setup.exit:                                    ; preds = %.loopexit46.i.i.thread.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !tbaa.struct !802
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !39
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %nk_pool_init.exit

bb.e:                                             ; preds = %nk_setup.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45   ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 18464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false), !tbaa !10
  %5 = icmp ult i64 %i.s, 608
  br i1 %5, label %nk_pool_init_fixed.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %i.s, -608
  %i.u = udiv i64 %i.t, 592
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i32 %i.w, ptr %i.x, align 8, !tbaa !798
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18496
  store ptr %i.q, ptr %i.y, align 8, !tbaa !800
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18488
  store i32 0, ptr %i.z, align 8, !tbaa !799
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18520
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !803
  br label %nk_pool_init_fixed.exit

nk_pool_init.exit:                                ; preds = %nk_setup.exit
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false), !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull readonly align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !50
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i32 16, ptr %i.ab, align 8, !tbaa !798
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18488
  store i32 1, ptr %i.ac, align 8, !tbaa !799
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18496
  store ptr null, ptr %i.ad, align 8, !tbaa !800
  br label %nk_pool_init_fixed.exit

nk_pool_init_fixed.exit:                          ; preds = %bb.f, %bb.e, %nk_pool_init.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 18460
  store i32 1, ptr %i.ae, align 4, !tbaa !801
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %nk_pool_init_fixed.exit
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %nk_buffer_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9792
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %nk_buffer_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9784
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %nk_buffer_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9768
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.h(ptr %i.j, ptr noundef nonnull %i.c) #50, !inline_history !111
  br label %nk_buffer_free.exit

nk_buffer_free.exit:                              ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.l = load i32, ptr %i.k, align 4, !tbaa !801
  %.not15 = icmp eq i32 %i.l, 0
  br i1 %.not15, label %.loopexit46.i.i.thread, label %bb.f

bb.f:                                             ; preds = %nk_buffer_free.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !800  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.q = load i32, ptr %i.p, align 8, !tbaa !799
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !804  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !806
  %i.w = load ptr, ptr %i.m, align 8
  tail call void %i.v(ptr %i.w, ptr noundef nonnull %.011.i) #50, !inline_history !807
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.loopexit46.i.i.thread, label %bb.g, !llvm.loop !808

.loopexit46.i.i.thread:                           ; preds = %bb.g, %nk_buffer_free.exit, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %0, i8 0, i64 392, i1 false), !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9344) %i.x, i8 0, i64 9344, i1 false), !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false), !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18456
  store i32 0, ptr %i.y, align 8, !tbaa !293
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !801
  %.not65 = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9832 ; 3 uses
  br i1 %.not65, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9824
  store i64 0, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9808
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9848
  store i64 %i.f, ptr %i.g, align 8, !tbaa !46
  store i64 0, ptr %i.c, align 8
  br label %.loopexit46.i.thread

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9736 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9824 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9744
  %i.l = load i64, ptr %i.k, align 8, !tbaa !78   ; 2 uses
  %.neg.i = sub i64 %i.l, %i.j
  %i.m = load i64, ptr %i.c, align 8, !tbaa !51
  %i.n = add i64 %.neg.i, %i.m
  store i64 %i.n, ptr %i.c, align 8, !tbaa !51
  %i.o = load i8, ptr %i.h, align 8, !tbaa !75, !range !79, !noundef !80
  %i.p = trunc nuw i8 %i.o to i1
  %spec.select.i = select i1 %i.p, i64 %i.l, i64 0
  store i64 %spec.select.i, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !75
  br label %.loopexit46.i.thread

.loopexit46.i.thread:                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 18456
  store i32 0, ptr %i.q, align 8, !tbaa !293
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 9840
  store i64 0, ptr %i.r, align 8, !tbaa !809
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9880
  store i32 0, ptr %i.s, align 8, !tbaa !810
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !296
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.u, ptr %i.v, align 8, !tbaa !295
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i8 0, i64 64, i1 false), !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 18536 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !300  ; 2 uses
  %.not6693 = icmp eq ptr %i.y, null
  br i1 %.not6693, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %.loopexit46.i.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18580 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18544 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9800
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 9848 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18576 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph97, %.backedge
  %.06194 = phi ptr [ %i.y, %.lr.ph97 ], [ %.061.be, %.backedge ] ; 18 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.06194, i64 72 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !312 ; 2 uses
  %i.ai = and i32 %i.ah, 49152
  %or.cond = icmp eq i32 %i.ai, 32768
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %.06194, align 8, !tbaa !313
  %i.ak = load i32, ptr %i.z, align 4, !tbaa !314
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.06194, i64 528
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !301
  br label %.backedge

.backedge:                                        ; preds = %nk_remove_window.exit, %bb.an, %bb.g
  %.061.be = phi ptr [ %i.an, %bb.g ], [ %i.cd, %nk_remove_window.exit ], [ %i.da, %bb.an ] ; 2 uses
  %.not66 = icmp eq ptr %.061.be, null
  br i1 %.not66, label %._crit_edge98, label %bb.e, !llvm.loop !811

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ao = and i32 %i.ah, 24576
  %or.cond79 = icmp eq i32 %i.ao, 0
  br i1 %or.cond79, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !812
  %i.aq = icmp eq ptr %.06194, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.06194, i64 536
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !813 ; 4 uses
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !812
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !814
  %.not71 = icmp eq ptr %i.as, null
  br i1 %.not71, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  store ptr null, ptr %i.x, align 8, !tbaa !300
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !312
  %i.av = and i32 %i.au, -4097
  store i32 %i.av, ptr %i.at, align 8, !tbaa !312
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.h, %bb.k, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.06194, i64 360 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !815 ; 3 uses
  %.not73 = icmp eq ptr %i.ax, null
  br i1 %.not73, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !313
  %i.az = load i32, ptr %i.z, align 4, !tbaa !314
  %.not74 = icmp eq i32 %i.ay, %i.az
  br i1 %.not74, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @nk_free_window(ptr noundef %0, ptr noundef %i.ax)
  store ptr null, ptr %i.aw, align 8, !tbaa !815
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.06194, i64 512 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !816 ; 3 uses
  %.not7591 = icmp eq ptr %i.bb, null
  br i1 %.not7591, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.aa
  %i.bc = phi ptr [ %i.bx, %bb.aa ], [ %i.bb, %bb.o ] ; 2 uses
  %.092 = phi ptr [ %i.be, %bb.aa ], [ %i.bb, %bb.o ] ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.092, i64 560 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !817 ; 8 uses
  %i.bf = load i32, ptr %.092, align 8, !tbaa !819
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !314
  %.not78 = icmp eq i32 %i.bf, %i.bg
  br i1 %.not78, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bh = icmp eq ptr %i.bc, %.092
  br i1 %i.bh, label %bb.q, label %._crit_edge.i

bb.q:                                             ; preds = %bb.p
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !816
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.q, %bb.p
  %.not.i80 = icmp eq ptr %i.be, null
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %.092, i64 568
  %.pre17.i = load ptr, ptr %.phi.trans.insert16.i, align 8, !tbaa !820 ; 3 uses
  br i1 %.not.i80, label %._crit_edge15.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 568
  store ptr %.pre17.i, ptr %i.bi, align 8, !tbaa !820
  br label %._crit_edge15.i

._crit_edge15.i:                                  ; preds = %bb.r, %._crit_edge.i
  %.not14.i = icmp eq ptr %.pre17.i, null
  br i1 %.not14.i, label %nk_remove_table.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge15.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre17.i, i64 560
  store ptr %i.be, ptr %i.bj, align 8, !tbaa !817
  br label %nk_remove_table.exit

nk_remove_table.exit:                             ; preds = %._crit_edge15.i, %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %.092, i8 0, i64 576, i1 false), !tbaa !10
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !801
  %.not.i.i81 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i81, label %bb.v, label %bb.t

bb.t:                                             ; preds = %nk_remove_table.exit
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !821 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %nk_link_page_element_into_freelist.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %.092, i64 576
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !822
  br label %nk_link_page_element_into_freelist.exit.i.i

nk_link_page_element_into_freelist.exit.i.i:      ; preds = %bb.u, %bb.t
  store ptr %.092, ptr %i.ac, align 8, !tbaa !821
  br label %nk_free_table.exit

bb.v:                                             ; preds = %nk_remove_table.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.092, i64 592
  %i.bo = load ptr, ptr %i.ad, align 8, !tbaa !291
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !824 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %i.br = icmp eq ptr %i.bn, %i.bq
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = add i64 %i.bp, -592
  store i64 %i.bs, ptr %i.ae, align 8, !tbaa !824
  br label %nk_free_table.exit

bb.x:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !821 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i11.i.i, label %nk_link_page_element_into_freelist.exit12.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %.092, i64 576
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !822
  br label %nk_link_page_element_into_freelist.exit12.i.i

nk_link_page_element_into_freelist.exit12.i.i:    ; preds = %bb.y, %bb.x
  store ptr %.092, ptr %i.ac, align 8, !tbaa !821
  br label %nk_free_table.exit

nk_free_table.exit:                               ; preds = %nk_link_page_element_into_freelist.exit.i.i, %bb.w, %nk_link_page_element_into_freelist.exit12.i.i
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !816 ; 2 uses
  %i.bw = icmp eq ptr %.092, %i.bv
  br i1 %i.bw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %nk_free_table.exit
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !816
  br label %bb.aa

bb.aa:                                            ; preds = %nk_free_table.exit, %bb.z, %.lr.ph
  %i.bx = phi ptr [ %i.bv, %nk_free_table.exit ], [ %i.be, %bb.z ], [ %i.bc, %.lr.ph ]
  %.not75 = icmp eq ptr %i.be, null
  br i1 %.not75, label %._crit_edge, label %.lr.ph, !llvm.loop !825

._crit_edge:                                      ; preds = %bb.aa, %bb.o
  %i.by = load i32, ptr %.06194, align 8, !tbaa !313
  %i.bz = load i32, ptr %i.z, align 4, !tbaa !314
  %.not76 = icmp eq i32 %i.by, %i.bz
  br i1 %.not76, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  %i.ca = load i32, ptr %i.ag, align 8, !tbaa !312
  %i.cb = and i32 %i.ca, 16384
  %.not77 = icmp eq i32 %i.cb, 0
  br i1 %.not77, label %bb.an, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %.06194, i64 528 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !301 ; 7 uses
  %i.ce = load ptr, ptr %i.x, align 8, !tbaa !300
  %i.cf = icmp eq ptr %.06194, %i.ce
  br i1 %i.cf, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr %i.ab, align 8, !tbaa !814 ; 3 uses
  %i.ch = icmp eq ptr %.06194, %i.cg
  br i1 %i.ch, label %bb.ag, label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  store ptr %i.cd, ptr %i.x, align 8, !tbaa !300
  %.not39.i = icmp eq ptr %i.cd, null
  br i1 %.not39.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 536
  store ptr null, ptr %i.ci, align 8, !tbaa !813
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.cj = load ptr, ptr %i.ab, align 8, !tbaa !814 ; 2 uses
  %i.ck = icmp eq ptr %.06194, %i.cj
  br i1 %i.ck, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %.06194, i64 536
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !813 ; 4 uses
  store ptr %i.cm, ptr %i.ab, align 8, !tbaa !814
  %.not40.i = icmp eq ptr %i.cm, null
  br i1 %.not40.i, label %.thread.i, label %.sink.split.i

bb.ai:                                            ; preds = %bb.ad
  %.not.i82 = icmp eq ptr %i.cd, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.06194, i64 536
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !813 ; 3 uses
  br i1 %.not.i82, label %._crit_edge.i83, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 536
  store ptr %.pre.i, ptr %i.cn, align 8, !tbaa !813
  br label %._crit_edge.i83

._crit_edge.i83:                                  ; preds = %bb.aj, %bb.ai
  %.not38.i = icmp eq ptr %.pre.i, null
  br i1 %.not38.i, label %bb.ak, label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge.i83, %bb.ah
  %.pre.sink.i = phi ptr [ %i.cm, %bb.ah ], [ %.pre.i, %._crit_edge.i83 ]
  %.sink.i = phi ptr [ null, %bb.ah ], [ %i.cd, %._crit_edge.i83 ]
  %.ph.i = phi ptr [ %i.cm, %bb.ah ], [ %i.cg, %._crit_edge.i83 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.sink.i, i64 528
  store ptr %.sink.i, ptr %i.co, align 8, !tbaa !301
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split.i, %._crit_edge.i83, %bb.ag
  %i.cp = phi ptr [ %i.cg, %._crit_edge.i83 ], [ %i.cj, %bb.ag ], [ %.ph.i, %.sink.split.i ] ; 3 uses
  %i.cq = load ptr, ptr %i.aa, align 8, !tbaa !812 ; 2 uses
  %i.cr = icmp eq ptr %.06194, %i.cq
  %.not41.i84 = icmp eq ptr %i.cq, null
  %or.cond.i = or i1 %i.cr, %.not41.i84
  br i1 %or.cond.i, label %bb.al, label %nk_remove_window.exit

.thread.i:                                        ; preds = %bb.ah
  %i.cs = load ptr, ptr %i.aa, align 8, !tbaa !812 ; 2 uses
  %i.ct = icmp eq ptr %.06194, %i.cs
  %.not4150.i = icmp eq ptr %i.cs, null
  %or.cond51.i = or i1 %i.ct, %.not4150.i
  br i1 %or.cond51.i, label %.thread52.i, label %nk_remove_window.exit

.thread52.i:                                      ; preds = %.thread.i
  store ptr null, ptr %i.aa, align 8, !tbaa !812
  br label %nk_remove_window.exit

bb.al:                                            ; preds = %bb.ak
  store ptr %i.cp, ptr %i.aa, align 8, !tbaa !812
  %.not42.i = icmp eq ptr %i.cp, null
  br i1 %.not42.i, label %nk_remove_window.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 72 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !312
  %i.cw = and i32 %i.cv, -4097
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !312
  br label %nk_remove_window.exit

nk_remove_window.exit:                            ; preds = %bb.ak, %.thread.i, %.thread52.i, %bb.al, %bb.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.cx = load i32, ptr %i.af, align 8, !tbaa !252
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr %i.af, align 8, !tbaa !252
  tail call fastcc void @nk_free_window(ptr noundef %0, ptr noundef %.06194)
  br label %.backedge

bb.an:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %.06194, i64 528
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !301
  br label %.backedge

._crit_edge98:                                    ; preds = %.backedge, %.loopexit46.i.thread
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 18580 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !314
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !314
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %._crit_edge98
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nk_free_window(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull initializes((528, 544)) %1) unnamed_addr #32 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !816  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !815  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @nk_free_window(ptr noundef %0, ptr noundef %i.d)
  store ptr null, ptr %i.c, align 8, !tbaa !815
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 528
end_hunk_6
begin_hunk_7_@nk_begin_titled:bb.a

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hc = getelementptr inbounds nuw i8, ptr %.3353, i64 360
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !815 ; 5 uses
  %.not256 = icmp eq ptr %i.hd, null
  br i1 %.not256, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.he = getelementptr inbounds nuw i8, ptr %.3353, i64 420
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !834, !range !79, !noundef !80
  %i.hg = trunc nuw i8 %i.hf to i1
  %i.hh = and i32 %i.go, 8192
  %.not257 = icmp eq i32 %i.hh, 0
  %or.cond333 = and i1 %.not257, %i.hg
  br i1 %or.cond333, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 76
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !835 ; 2 uses
  %i.hk = fcmp olt float %i.hj, %i.du
  br i1 %i.hk, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 84
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !833
  %i.hn = fadd float %i.hj, %i.hm
  %i.ho = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.hn
  br i1 %i.ho, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !836 ; 2 uses
  %i.hr = fcmp olt float %i.hq, %i.gl
  br i1 %i.hr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hd, i64 88
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !837
  %i.hu = fadd float %i.hq, %i.ht
  %i.hv = fcmp olt float %.sroa.018.4.vec.extract34, %i.hu
  br i1 %i.hv, label %.thread322, label %bb.ba

bb.ba:                                            ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  %.3.in = getelementptr inbounds nuw i8, ptr %.3353, i64 528
  %.3 = load ptr, ptr %.3.in, align 8, !tbaa !301 ; 2 uses
  %.not253 = icmp eq ptr %.3, null
  br i1 %.not253, label %.critedge277, label %bb.ap

.thread322:                                       ; preds = %bb.at, %bb.az, %bb.ao, %.thread
  %.5.ph = phi ptr [ %.2, %.thread ], [ %.2, %bb.ao ], [ %.3353, %bb.az ], [ %.3353, %bb.at ] ; 4 uses
  %i.hw = and i32 %i.cr, 4352
  %or.cond275.not = icmp eq i32 %i.hw, 256
  br i1 %or.cond275.not, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %.thread322
  %i.hx = or disjoint i32 %i.cr, 4096
  store i32 %i.hx, ptr %i.cq, align 8, !tbaa !312
  %i.hy = getelementptr inbounds nuw i8, ptr %.5.ph, i64 72 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !312 ; 2 uses
  %i.ia = and i32 %i.hz, -4097
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !312
  store ptr %.5.ph, ptr %i.gh, align 8, !tbaa !812
  %i.ib = and i32 %i.hz, 256
  %.not261 = icmp eq i32 %i.ib, 0
  br i1 %.not261, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @nk_remove_window(ptr noundef %0, ptr noundef nonnull %.5.ph)
  tail call fastcc void @nk_insert_window(ptr noundef %0, ptr noundef nonnull %.5.ph, i32 noundef 0)
  br label %bb.bi

.critedge277:                                     ; preds = %bb.an, %bb.ba, %.preheader336, %.preheader
  %i.ic = phi ptr [ %i.gh, %.preheader ], [ %i.er, %.preheader336 ], [ %i.gh, %bb.ba ], [ %i.er, %bb.an ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !814
  %.not262 = icmp eq ptr %i.ie, %.0220
  br i1 %.not262, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %.critedge277
  %i.if = and i32 %i.cr, 256
  %.not263 = icmp eq i32 %i.if, 0
  br i1 %.not263, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call fastcc void @nk_remove_window(ptr noundef %0, ptr noundef nonnull %.0220)
  tail call fastcc void @nk_insert_window(ptr noundef %0, ptr noundef nonnull %.0220, i32 noundef 0)
  %.pre = load i32, ptr %i.cq, align 8, !tbaa !312
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ig = phi i32 [ %.pre, %bb.be ], [ %i.cr, %bb.bd ]
  %i.ih = and i32 %i.ig, -4097                    ; 2 uses
  store i32 %i.ih, ptr %i.cq, align 8, !tbaa !312
  store ptr %.0220, ptr %i.ic, align 8, !tbaa !812
  br label %bb.bg

bb.bg:                                            ; preds = %.thread322, %bb.bf, %.critedge277
  %i.ii = phi i32 [ %i.cr, %.thread322 ], [ %i.ih, %bb.bf ], [ %i.cr, %.critedge277 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !814
  %.not264 = icmp ne ptr %i.ik, %.0220
  %i.il = and i32 %i.ii, 256
  %.not265 = icmp eq i32 %i.il, 0
  %or.cond387 = select i1 %.not264, i1 %.not265, i1 false
  br i1 %or.cond387, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.im = or i32 %i.ii, 4096
  store i32 %i.im, ptr %i.cq, align 8, !tbaa !312
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bc, %bb.bb, %bb.bh, %bb.bg, %bb.u
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !821 ; 3 uses
  %.not.i.i309 = icmp eq ptr %i.io, null
  br i1 %.not.i.i309, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 576
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !822
  store ptr %i.iq, ptr %i.in, align 8, !tbaa !821
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bi
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !801
  %.not18.i.i = icmp eq i32 %i.is, 0
  br i1 %.not18.i.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !800 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !839 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !798
  %.not18.i.i.i = icmp ult i32 %i.iw, %i.iy
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !799
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bn
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !798
  %i.je = add i32 %i.jd, -1
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul nuw nsw i64 %i.jf, 592
  %i.jh = add nuw nsw i64 %i.jg, 608
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !840
  %i.jk = load ptr, ptr %i.it, align 8
  %i.jl = tail call ptr %i.jj(ptr %i.jk, ptr noundef null, i64 noundef %i.jh) #50, !inline_history !841 ; 4 uses
  %i.jm = load ptr, ptr %i.iu, align 8, !tbaa !800
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !804
  store ptr %i.jl, ptr %i.iu, align 8, !tbaa !800
  store i32 0, ptr %i.jl, align 8, !tbaa !839
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.bm
  %i.jo = phi i32 [ 0, %.thread.i.i.i ], [ %i.iw, %bb.bm ] ; 2 uses
  %i.jp = phi ptr [ %i.jl, %.thread.i.i.i ], [ %i.iv, %bb.bm ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = add nuw i32 %i.jo, 1
  store i32 %i.jr, ptr %i.jp, align 8, !tbaa !839
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i310, i8 0, i64 576, i1 false), !tbaa !10
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.bp
  %i.jy = sub nuw nsw i64 4, %i.jx                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i310, i8 0, i64 %i.jy, i1 false), !tbaa !11
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i310, i64 %i.jy ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !10
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.jx, i1 false), !tbaa !11
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i310, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jz, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.bn, %bb.bo, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i310, %nk_zero.exit.i.i ], [ null, %bb.bo ], [ null, %bb.bn ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.0220, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.ka, align 8, !tbaa !757
  store ptr %.0220, ptr %i.a, align 8, !tbaa !756
  %i.kb = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1)
  %i.kc = getelementptr inbounds nuw i8, ptr %.0220, i64 92
  %i.kd = load ptr, ptr %i.ka, align 8, !tbaa !757 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store ptr %i.kc, ptr %i.ke, align 8, !tbaa !842
  %i.kf = getelementptr inbounds nuw i8, ptr %.0220, i64 96
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !843
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.a, %bb.b, %nk_create_panel.exit, %bb.t
  %.1222 = phi i1 [ false, %bb.t ], [ %i.kb, %nk_create_panel.exit ], [ false, %.loopexit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1222
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @nk_create_window(ptr nofree noundef nonnull captures(address_is_null) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !821  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !822
  store ptr %i.d, ptr %i.a, align 8, !tbaa !821
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.f = load i32, ptr %i.e, align 4, !tbaa !801
  %.not18.i = icmp eq i32 %i.f, 0
  br i1 %.not18.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !800  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.i, align 8, !tbaa !839  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.l = load i32, ptr %i.k, align 8, !tbaa !798
  %.not18.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not18.i.i, label %nk_pool_alloc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.n = load i32, ptr %i.m, align 8, !tbaa !799
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %nk_create_page_element.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.q = load i32, ptr %i.p, align 8, !tbaa !798
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw nsw i64 %i.s, 592
  %i.u = add nuw nsw i64 %i.t, 608
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !840
  %i.x = load ptr, ptr %i.g, align 8
  %i.y = tail call ptr %i.w(ptr %i.x, ptr noundef null, i64 noundef %i.u) #50, !inline_history !844 ; 4 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !800
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !804
  store ptr %i.y, ptr %i.h, align 8, !tbaa !800
  store i32 0, ptr %i.y, align 8, !tbaa !839
  br label %nk_pool_alloc.exit.i

nk_pool_alloc.exit.i:                             ; preds = %.thread.i.i, %bb.e
  %i.ab = phi i32 [ 0, %.thread.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.ac = phi ptr [ %i.y, %.thread.i.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = add nuw i32 %i.ab, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !839
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i, i8 0, i64 576, i1 false), !tbaa !10
  br label %bb.i

.loopexit46.i.i.i:                                ; preds = %bb.h
  %i.al = sub nuw nsw i64 4, %i.ak                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i8 0, i64 %i.al, i1 false), !tbaa !11
  %scevgep.i.i.i = getelementptr i8, ptr %.0.i, i64 %i.al ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i, i8 0, i64 588, i1 false), !tbaa !10
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i, i8 0, i64 %i.ak, i1 false), !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !314
  store i32 %i.ao, ptr %.0.i, align 8, !tbaa !11
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
  %.042 = load ptr, ptr %i.a, align 8, !tbaa !294 ; 4 uses
  %.not4043 = icmp eq ptr %.042, null
  br i1 %.not4043, label %._crit_edge.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.044, i64 528
  %.0 = load ptr, ptr %i.b, align 8, !tbaa !294   ; 2 uses
  %.not40 = icmp eq ptr %.0, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph, !llvm.loop !829

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.044 = phi ptr [ %.0, %bb.c ], [ %.042, %bb.b ] ; 2 uses
  %i.c = icmp eq ptr %.044, %1
  br i1 %i.c, label %.loopexit, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !300
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18544
  store ptr %1, ptr %i.e, align 8, !tbaa !814
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18576
  store i32 1, ptr %i.f, align 8, !tbaa !252
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.c
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18544 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !814  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !312
  %i.l = or i32 %i.k, 4096
  store i32 %i.l, ptr %i.j, align 8, !tbaa !312
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 528
  store ptr %1, ptr %i.m, align 8, !tbaa !301
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.i, ptr %i.n, align 8, !tbaa !813
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr null, ptr %i.o, align 8, !tbaa !301
  store ptr %1, ptr %i.h, align 8, !tbaa !814
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18552
  store ptr %1, ptr %i.p, align 8, !tbaa !812
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %.042, i64 536
  store ptr %1, ptr %i.q, align 8, !tbaa !813
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %.042, ptr %i.r, align 8, !tbaa !301
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr null, ptr %i.s, align 8, !tbaa !813
  store ptr %1, ptr %i.a, align 8, !tbaa !300
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !312
  %i.v = and i32 %i.u, -4097
  store i32 %i.v, ptr %i.t, align 8, !tbaa !312
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18576 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !252
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !252
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.f, %._crit_edge.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @nk_panel_begin(ptr nofree noundef %0, ptr noundef %1, i32 noundef range(i32 1, 65) %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_text, align 8            ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756  ; 3 uses
  %.not363 = icmp eq ptr %i.d, null
  br i1 %.not363, label %bb.bd, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !757  ; 5 uses
  %.not364 = icmp eq ptr %i.f, null
  br i1 %.not364, label %bb.bd, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(464) %i.f, i8 0, i64 464, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.d
  %i.i = sub nuw nsw i64 4, %i.h                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 0, i64 %i.i, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.i ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %scevgep.i.i, i8 0, i64 460, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 460
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.h, i1 false), !tbaa !11
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !756
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.j = phi ptr [ %i.d, %.loopexit46.i.i.thread ], [ %.pre, %.loopexit46.i.i ] ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !312  ; 6 uses
  %i.m = and i32 %i.l, 24576
  %or.cond386 = icmp eq i32 %i.m, 0
  br i1 %or.cond386, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_zero.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !757  ; 5 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3                          ; 3 uses
  %.not.i.i391 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i391, label %.loopexit46.i.i394.thread, label %.loopexit46.i.i394

.loopexit46.i.i394.thread:                        ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(464) %i.o, i8 0, i64 464, i1 false), !tbaa !10
  br label %nk_zero.exit400

.loopexit46.i.i394:                               ; preds = %bb.e
  %i.r = sub nuw nsw i64 4, %i.q                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i8 0, i64 %i.r, i1 false), !tbaa !11
  %scevgep.i.i393 = getelementptr i8, ptr %i.o, i64 %i.r ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %scevgep.i.i393, i8 0, i64 460, i1 false), !tbaa !10
  %scevgep53.i.i399 = getelementptr i8, ptr %scevgep.i.i393, i64 460
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i399, i8 0, i64 %i.q, i1 false), !tbaa !11
  %.pre438 = load ptr, ptr %i.c, align 8, !tbaa !756
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre438, i64 168
  %.pre439 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !757
  br label %nk_zero.exit400

nk_zero.exit400:                                  ; preds = %.loopexit46.i.i394.thread, %.loopexit46.i.i394
  %i.s = phi ptr [ %i.o, %.loopexit46.i.i394.thread ], [ %.pre439, %.loopexit46.i.i394 ]
  store i32 %2, ptr %i.s, align 8, !tbaa !845
  br label %bb.bd

bb.f:                                             ; preds = %nk_zero.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !754  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !757  ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 11 uses
  %i.y = and i32 %i.l, 1024
  %.not367 = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not367, ptr %0, ptr null     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8888
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9652
  %.sroa.0163.0.copyload = load float, ptr %i.ab, align 4, !tbaa !8
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9656
  %.sroa.4164.0.copyload = load float, ptr %.sroa.4164.0..sroa_idx, align 8, !tbaa !8
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
  %.sroa.0.0.i = load <2 x float>, ptr %i.ah, align 4 ; 3 uses
  %i.ai = and i32 %i.l, 4098
  %or.cond387 = icmp eq i32 %i.ai, 2
  br i1 %or.cond387, label %bb.g, label %nk_input_has_mouse_click_down_in_rect.exit.thread

bb.g:                                             ; preds = %nk_panel_get_padding.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 76 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.am = load float, ptr %i.al, align 4, !tbaa !833 ; 2 uses
  %i.an = and i32 %i.l, 88
  %.not.i = icmp ne i32 %i.an, 0
  %i.ao = icmp ne ptr %1, null
  %spec.select.i = and i1 %i.ao, %.not.i
  br i1 %spec.select.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.8.vec.insert = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !166
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9472
  %i.as = load float, ptr %i.ar, align 8, !tbaa !831
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float 2.000000e+00, float %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 9480
  %i.av = load float, ptr %i.au, align 8, !tbaa !832
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float 2.000000e+00, float %i.at)
  %.sroa.5.12.vec.insert151 = insertelement <2 x float> %.sroa.5.8.vec.insert, float %i.aw, i64 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.5.12.vec.insert153 = insertelement <2 x float> %.sroa.0.0.i, float %i.am, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.5.0 = phi <2 x float> [ %.sroa.5.12.vec.insert151, %bb.h ], [ %.sroa.5.12.vec.insert153, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !709, !range !79, !noundef !80
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !700
  %.not.i401 = icmp eq ptr %i.z, null
  br i1 %.not.i401, label %nk_input_has_mouse_click_down_in_rect.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !712 ; 2 uses
  %i.be = extractelement <2 x float> %i.ak, i64 0
  %i.bf = fcmp ole float %i.be, %i.bd
  %foldExtExtBinop = fadd <2 x float> %i.ak, %.sroa.5.0
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bh = fcmp olt float %i.bd, %i.bg
  %or.cond.i.i = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond.i.i, label %nk_input_has_mouse_click_in_rect.exit.i, label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_in_rect.exit.i:          ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !713 ; 2 uses
  %i.bk = extractelement <2 x float> %i.ak, i64 1
  %i.bl = fcmp ole float %i.bk, %i.bj
  %foldExtExtBinop465 = fadd <2 x float> %i.ak, %.sroa.5.0
  %i.bm = extractelement <2 x float> %foldExtExtBinop465, i64 1
  %i.bn = fcmp olt float %i.bj, %i.bm
  %or.cond16.i.i = select i1 %i.bl, i1 %i.bn, i1 false
  %i.bo = icmp eq i32 %i.bb, 0
  %i.bp = and i1 %or.cond16.i.i, %i.az
  %or.cond = select i1 %i.bp, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.l, label %nk_input_has_mouse_click_down_in_rect.exit.thread

bb.l:                                             ; preds = %nk_input_has_mouse_click_in_rect.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !8 ; 2 uses
  %i.bs = fadd <2 x float> %i.ak, %i.br
  store <2 x float> %i.bs, ptr %i.aj, align 4, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 268 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bt, align 4, !tbaa !8
  %i.bv = fadd <2 x float> %i.br, %i.bu
  store <2 x float> %i.bv, ptr %i.bt, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !296
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !295
  br label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_down_in_rect.exit.thread: ; preds = %bb.k, %nk_input_has_mouse_click_in_rect.exit.i, %bb.j, %bb.l, %nk_panel_get_padding.exit
  store i32 %2, ptr %i.w, align 8, !tbaa !845
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 8 uses
  store i32 %i.l, ptr %i.bz, align 4, !tbaa !846
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 76 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !185
  %.sroa.0158.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %i.cc = load float, ptr %i.ca, align 8, !tbaa !847
  %i.cd = fadd float %.sroa.0158.0.vec.extract, %i.cc ; 2 uses
  store float %i.cd, ptr %i.ca, align 8, !tbaa !847
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 6 uses
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !848
  %i.cg = tail call float @llvm.fmuladd.f32(float %.sroa.0158.0.vec.extract, float -2.000000e+00, float %i.cf)
  store float %i.cg, ptr %i.ce, align 8, !tbaa !848
  %i.ch = load i32, ptr %i.k, align 8, !tbaa !312
  %i.ci = and i32 %i.ch, 1
  %.not371 = icmp eq i32 %i.ci, 0
  br i1 %.not371, label %bb.n, label %bb.m

bb.m:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread
  br i1 %i.ad, label %.split.i404, label %nk_panel_get_border.exit

.split.i404:                                      ; preds = %bb.m
  %i.cj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 65) %2, i1 true)
  %switch.tableidx459 = add nsw i32 %i.cj, -1     ; 2 uses
  %i.ck = icmp ult i32 %switch.tableidx459, 6
  br i1 %i.ck, label %switch.lookup460, label %nk_panel_get_border.exit

switch.lookup460:                                 ; preds = %.split.i404
  %i.cl = zext nneg i32 %switch.tableidx459 to i64
  %switch.gep461 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.nk_panel_begin.32, i64 %i.cl
  %switch.load462 = load i16, ptr %switch.gep461, align 2
  %switch.ext463 = zext i16 %switch.load462 to i64
  br label %nk_panel_get_border.exit

nk_panel_get_border.exit:                         ; preds = %switch.lookup460, %.split.i404, %bb.m
  %.sink = phi i64 [ 9608, %.split.i404 ], [ %switch.ext463, %switch.lookup460 ], [ 9608, %bb.m ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0.i403 = load float, ptr %i.cm, align 4, !tbaa !8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  store float %.0.i403, ptr %i.cn, align 4, !tbaa !849
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
  store <2 x float> %.sroa.018.4.vec.insert.i, ptr %i.ca, align 8
  store <2 x float> %i.cy, ptr %i.ce, align 8
  br label %bb.o

bb.n:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !849
  %.phi.trans.insert440 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.pre441 = load float, ptr %.phi.trans.insert440, align 4, !tbaa !850 ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.db = insertelement <2 x float> %i.da, float %.pre441, i64 1
  br label %bb.o

bb.o:                                             ; preds = %nk_panel_get_border.exit, %bb.n
  %i.dc = phi float [ %i.ct, %nk_panel_get_border.exit ], [ %.pre441, %bb.n ]
  %i.dd = phi <2 x float> [ %.sroa.018.4.vec.insert.i, %nk_panel_get_border.exit ], [ %i.db, %bb.n ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.dg = getelementptr inbounds nuw i8, ptr %i.w, i64 40
end_hunk_7
begin_hunk_8_@nk_end:bb.a
  %.0.i = phi float [ %i.qa, %bb.bx ], [ %i.px, %bb.bw ] ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.e, i64 84 ; 2 uses
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !833
  %i.qg = fadd float %.0.i, %i.qf                 ; 2 uses
  %i.qh = fcmp ult float %i.qg, %.sroa.0.0.copyload.i
  br i1 %i.qh, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qi = fcmp olt float %.0.i, 0.000000e+00
  br i1 %i.qi, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qj = fcmp ogt float %.0.i, 0.000000e+00
  br i1 %i.qj, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !714
  %i.qm = fcmp ult float %i.ql, %.sroa.0.0.vec.extract.i.i478.i
  br i1 %i.qm, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  store float %i.qg, ptr %i.qe, align 4, !tbaa !833
  %i.qn = fadd float %.sroa.0.0.vec.extract.i.i478.i, %i.px
  %.sroa.026.0.vec.insert51.i = insertelement <2 x float> %.sroa.026.1.i, float %i.qn, i64 0
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.by
  %.sroa.026.2.i = phi <2 x float> [ %.sroa.026.0.vec.insert51.i, %bb.cc ], [ %.sroa.026.1.i, %bb.cb ], [ %.sroa.026.1.i, %bb.ca ], [ %.sroa.026.1.i, %bb.by ] ; 7 uses
  %i.qo = and i32 %i.py, 2048
  %.not455.i = icmp eq i32 %i.qo, 0
  br i1 %.not455.i, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd
  %i.qp = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.qq = load float, ptr %i.qp, align 8, !tbaa !837
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.qs = load float, ptr %i.qr, align 8, !tbaa !719 ; 4 uses
  %i.qt = fadd float %i.qq, %i.qs                 ; 2 uses
  %i.qu = fcmp olt float %.sroa.4.0.copyload.i, %i.qt
  br i1 %i.qu, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.qv = fcmp olt float %i.qs, 0.000000e+00
  br i1 %i.qv, label %._crit_edge528.i, label %bb.cg

._crit_edge528.i:                                 ; preds = %bb.cf
  %.pre529.i = extractelement <2 x float> %.sroa.026.2.i, i64 1
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.qw = fcmp ogt float %i.qs, 0.000000e+00
  br i1 %i.qw, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.qy = load float, ptr %i.qx, align 8, !tbaa !715
  %.sroa.026.4.vec.extract66.i = extractelement <2 x float> %.sroa.026.2.i, i64 1 ; 2 uses
  %i.qz = fcmp ult float %i.qy, %.sroa.026.4.vec.extract66.i
  br i1 %i.qz, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge528.i
  %.sroa.026.4.vec.extract68.pre-phi.i = phi float [ %.pre529.i, %._crit_edge528.i ], [ %.sroa.026.4.vec.extract66.i, %bb.ch ]
  store float %i.qt, ptr %i.qp, align 8, !tbaa !837
  %i.ra = fadd float %i.qs, %.sroa.026.4.vec.extract68.pre-phi.i
  %.sroa.026.4.vec.insert70.i = insertelement <2 x float> %.sroa.026.2.i, float %i.ra, i64 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.cd
  %.sroa.026.3.i = phi <2 x float> [ %.sroa.026.2.i, %bb.cd ], [ %.sroa.026.4.vec.insert70.i, %bb.ci ], [ %.sroa.026.2.i, %bb.ch ], [ %.sroa.026.2.i, %bb.cg ], [ %.sroa.026.2.i, %bb.ce ]
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !296
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !295
  %i.re = fmul <2 x float> %i.be, splat (float 5.000000e-01)
  %i.rf = fadd <2 x float> %i.re, %.sroa.026.3.i
  store <2 x float> %i.rf, ptr %i.pj, align 4, !tbaa !8
  br label %nk_input_has_mouse_click_down_in_rect.exit.thread.i

nk_input_has_mouse_click_down_in_rect.exit.thread.i: ; preds = %bb.cj, %nk_input_has_mouse_click_in_rect.exit.i.i, %bb.bv, %bb.bu, %bb.bl
  %i.rg = load i32, ptr %i.g, align 8, !tbaa !845
  %i.rh = and i32 %i.rg, 246
  %.not513.i = icmp eq i32 %i.rh, 0
  %.pre521.i = load i32, ptr %i.ba, align 4, !tbaa !846 ; 4 uses
  br i1 %.not513.i, label %bb.ck, label %nk_finish.exit.i

bb.ck:                                            ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread.i
  %i.ri = and i32 %.pre521.i, 8192
  %.not456.i = icmp eq i32 %i.ri, 0
  br i1 %.not456.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rj = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.rk = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rj, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rk, ptr noundef nonnull align 4 dereferenceable(16) @nk_null_rect, i64 16, i1 false), !tbaa.struct !185
  %.pre520.i = load i32, ptr %i.ba, align 4, !tbaa !846
  br label %nk_finish.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.rl = getelementptr i8, ptr %0, i64 9824
  %.val.i.i = load i64, ptr %i.rl, align 8, !tbaa !290
  %i.rm = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store i64 %.val.i.i, ptr %i.rm, align 8, !tbaa !120
  %i.rn = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  %i.ro = load i8, ptr %i.rn, align 8, !tbaa !317, !range !79, !noundef !80
  %i.rp = trunc nuw i8 %i.ro to i1
  br i1 %i.rp, label %bb.cn, label %nk_finish.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 9800
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !291
  %i.rs = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !891
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !892
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store i64 %i.rw, ptr %i.rx, align 8, !tbaa !119
  br label %nk_finish.exit.i

nk_finish.exit.i:                                 ; preds = %bb.cn, %bb.cm, %bb.cl, %nk_input_has_mouse_click_down_in_rect.exit.thread.i
  %i.ry = phi i32 [ %.pre521.i, %bb.cn ], [ %.pre521.i, %bb.cm ], [ %.pre520.i, %bb.cl ], [ %.pre521.i, %nk_input_has_mouse_click_down_in_rect.exit.thread.i ] ; 3 uses
  %i.rz = and i32 %i.ry, 65536
  %.not457.i = icmp eq i32 %i.rz, 0
  br i1 %.not457.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %nk_finish.exit.i
  %i.sa = and i32 %i.ry, -69633                   ; 2 uses
  store i32 %i.sa, ptr %i.ba, align 4, !tbaa !846
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %nk_finish.exit.i
  %i.sb = phi i32 [ %i.sa, %bb.co ], [ %i.ry, %nk_finish.exit.i ]
  store i32 %i.sb, ptr %i.kv, align 8, !tbaa !312
  %i.sc = getelementptr inbounds nuw i8, ptr %i.e, i64 180 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !893 ; 3 uses
  %.not458.i = icmp eq i32 %i.sd, 0
  br i1 %.not458.i, label %._crit_edge522.i, label %bb.cq

._crit_edge522.i:                                 ; preds = %bb.cp
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %.pre523.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !894
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.se = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !895 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !894 ; 2 uses
  %.not459.i = icmp eq i32 %i.sf, %i.sh
  br i1 %.not459.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.si = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !896
  %i.sk = icmp eq i32 %i.sd, %i.sj
  br i1 %i.sk, label %.loopexit46.i.i.thread.i, label %bb.cs

.loopexit46.i.i.thread.i:                         ; preds = %bb.cr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(180) %i.sc, i8 0, i64 180, i1 false), !tbaa !10
  br label %nk_zero.exit.i

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %._crit_edge522.i
  %i.sl = phi i32 [ %.pre523.i, %._crit_edge522.i ], [ %i.sh, %bb.cr ], [ %i.sf, %bb.cq ]
  %i.sm = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.sn = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  store i32 %i.sl, ptr %i.sn, align 4, !tbaa !895
  %i.so = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store i32 %i.sd, ptr %i.so, align 8, !tbaa !896
  store i32 0, ptr %i.sm, align 8, !tbaa !894
  br label %nk_zero.exit.i

nk_zero.exit.i:                                   ; preds = %bb.cs, %.loopexit46.i.i.thread.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  %i.sq = getelementptr inbounds nuw i8, ptr %i.e, i64 468
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !897 ; 3 uses
  %.not460.i = icmp eq i32 %i.sr, 0
  br i1 %.not460.i, label %nk_zero.exit._crit_edge.i, label %bb.ct

nk_zero.exit._crit_edge.i:                        ; preds = %nk_zero.exit.i
  %.phi.trans.insert524.i = getelementptr inbounds nuw i8, ptr %i.e, i64 460
  %.pre525.i = load i32, ptr %.phi.trans.insert524.i, align 4, !tbaa !898
  br label %bb.cv

bb.ct:                                            ; preds = %nk_zero.exit.i
  %i.ss = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !899 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.e, i64 460
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !898 ; 2 uses
  %.not461.i = icmp eq i32 %i.st, %i.sv
  br i1 %.not461.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sw = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !900
  %i.sy = icmp eq i32 %i.sr, %i.sx
  br i1 %i.sy, label %.loopexit46.i.i488.thread.i, label %bb.cv

.loopexit46.i.i488.thread.i:                      ; preds = %bb.cu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.sp, i8 0, i64 44, i1 false), !tbaa !10
  br label %nk_zero.exit494.i

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %nk_zero.exit._crit_edge.i
  %i.sz = phi i32 [ %.pre525.i, %nk_zero.exit._crit_edge.i ], [ %i.sv, %bb.cu ], [ %i.st, %bb.ct ]
  %i.ta = getelementptr inbounds nuw i8, ptr %i.e, i64 460
  %i.tb = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  store i32 %i.sz, ptr %i.tb, align 8, !tbaa !899
  %i.tc = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  store i32 %i.sr, ptr %i.tc, align 8, !tbaa !900
  store i32 0, ptr %i.ta, align 4, !tbaa !898
  br label %nk_zero.exit494.i

nk_zero.exit494.i:                                ; preds = %bb.cv, %.loopexit46.i.i488.thread.i
  %i.td = getelementptr inbounds nuw i8, ptr %i.e, i64 436 ; 2 uses
  %i.te = load i32, ptr %i.td, align 4, !tbaa !901
  %.not462.i = icmp eq i32 %i.te, 0
  br i1 %.not462.i, label %nk_zero.exit494._crit_edge.i, label %bb.cw

nk_zero.exit494._crit_edge.i:                     ; preds = %nk_zero.exit494.i
  %.phi.trans.insert526.i = getelementptr inbounds nuw i8, ptr %i.e, i64 428
  %.pre527.i = load i32, ptr %.phi.trans.insert526.i, align 4, !tbaa !902
  br label %bb.cy

bb.cw:                                            ; preds = %nk_zero.exit494.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.e, i64 432 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !903 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.e, i64 428 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !902
  %.not463.i = icmp eq i32 %i.tg, %i.ti
  br i1 %.not463.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.th, align 4, !tbaa !902
  store i32 0, ptr %i.tf, align 8, !tbaa !903
  store i32 0, ptr %i.td, align 4, !tbaa !901
  br label %nk_panel_end.exit

bb.cy:                                            ; preds = %bb.cw, %nk_zero.exit494._crit_edge.i
  %i.tj = phi i32 [ %.pre527.i, %nk_zero.exit494._crit_edge.i ], [ %i.tg, %bb.cw ]
  %i.tk = getelementptr inbounds nuw i8, ptr %i.e, i64 428
  %i.tl = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  store i32 %i.tj, ptr %i.tl, align 8, !tbaa !903
  store i32 0, ptr %i.tk, align 4, !tbaa !902
  br label %nk_panel_end.exit

nk_panel_end.exit:                                ; preds = %bb.cx, %bb.cy
  %i.tm = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  store i32 0, ptr %i.tm, align 8, !tbaa !904
  %i.tn = load ptr, ptr %i.d, align 8, !tbaa !756
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 168
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !757 ; 5 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !801
  %.not.i.i = icmp eq i32 %i.tr, 0
  br i1 %.not.i.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %nk_panel_end.exit
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !821 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.tt, null
  br i1 %.not.i.i.i16, label %nk_link_page_element_into_freelist.exit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tp, i64 576
  store ptr %i.tt, ptr %i.tu, align 8, !tbaa !822
  br label %nk_link_page_element_into_freelist.exit.i.i

nk_link_page_element_into_freelist.exit.i.i:      ; preds = %bb.da, %bb.cz
  store ptr %i.tp, ptr %i.ts, align 8, !tbaa !821
  br label %.sink.split

bb.db:                                            ; preds = %nk_panel_end.exit
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tp, i64 592
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 9800
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !291
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 9848 ; 2 uses
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !824 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tz
  %i.ub = icmp eq ptr %i.tv, %i.ua
  br i1 %i.ub, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.uc = add i64 %i.tz, -592
  store i64 %i.uc, ptr %i.ty, align 8, !tbaa !824
  br label %.sink.split

bb.dd:                                            ; preds = %bb.db
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !821 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.ue, null
  br i1 %.not.i11.i.i, label %nk_link_page_element_into_freelist.exit12.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tp, i64 576
  store ptr %i.ue, ptr %i.uf, align 8, !tbaa !822
  br label %nk_link_page_element_into_freelist.exit12.i.i

nk_link_page_element_into_freelist.exit12.i.i:    ; preds = %bb.de, %bb.dd
  store ptr %i.tp, ptr %i.ud, align 8, !tbaa !821
  br label %.sink.split

.sink.split:                                      ; preds = %nk_link_page_element_into_freelist.exit12.i.i, %bb.dc, %nk_link_page_element_into_freelist.exit.i.i, %bb.c, %bb.e
  store ptr null, ptr %i.d, align 8, !tbaa !756
  br label %bb.df

bb.df:                                            ; preds = %.sink.split, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_window_get_bounds(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #33 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 3 uses
  %.not4 = icmp eq ptr %i.b, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %.sroa.3.0.copyload = load <2 x float>, ptr %.sroa.3.0..sroa_idx, align 4
  %i.d = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %i.e = insertvalue { <2 x float>, <2 x float> } %i.d, <2 x float> %.sroa.3.0.copyload, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.fca.1.insert.merged = phi { <2 x float>, <2 x float> } [ %i.e, %bb.c ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, <2 x float> } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @nk_window_get_position(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #33 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi <2 x float> [ %i.d, %bb.c ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @nk_window_get_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #33 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi <2 x float> [ %i.d, %bb.c ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @nk_window_get_width(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #27 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load float, ptr %i.c, align 4, !tbaa !833
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi float [ %i.d, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}
end_hunk_8
begin_hunk_9_@nk_rule_horizontal:bb.a
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
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not42 = icmp eq ptr %i.b, null
  br i1 %.not42, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757
  %.not43 = icmp eq ptr %i.d, null
  br i1 %.not43, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @nk_panel_alloc_space(ptr noundef %0, ptr noundef nonnull %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !757  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.i = load <4 x float>, ptr %0, align 4, !tbaa !8
  %i.j = fptosi <4 x float> %i.i to <4 x i32>
  %i.k = sitofp <4 x i32> %i.j to <4 x float>     ; 5 uses
  %i.l = extractelement <4 x float> %i.k, i64 0
  %i.m = extractelement <4 x float> %i.k, i64 1
  %i.n = load <2 x float>, ptr %i.h, align 4, !tbaa !8
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = sitofp <2 x i32> %i.o to <2 x float>     ; 5 uses
  %i.q = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.r = fcmp ogt <2 x float> %i.q, %i.p
  %i.s = extractelement <2 x float> %i.p, i64 0
  %i.t = load <2 x float>, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !8
  %i.u = fptosi <2 x float> %i.t to <2 x i32>
  %i.v = sitofp <2 x i32> %i.u to <2 x float>
  %i.w = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.x = fadd <2 x float> %i.q, %i.w              ; 4 uses
  store <4 x float> %i.k, ptr %0, align 4, !tbaa !8
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
  br i1 %or.cond57, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !830, !range !79, !noundef !80
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !714 ; 2 uses
  %i.as = extractelement <2 x float> %i.y, i64 0
  %i.at = fcmp ole float %i.as, %i.ar
  %foldExtExtBinop = fadd <2 x float> %i.y, %i.ae
  %i.au = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.av = fcmp olt float %i.ar, %i.au
  %or.cond59 = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond59, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !715 ; 2 uses
  %i.ay = extractelement <2 x float> %i.y, i64 1
  %i.az = fcmp ole float %i.ay, %i.ax
  %foldExtExtBinop65 = fadd <2 x float> %i.y, %i.ae
  %i.ba = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.bb = fcmp olt float %i.ax, %i.ba
  %or.cond61 = select i1 %i.az, i1 %i.bb, i1 false
  %spec.select = select i1 %or.cond61, i32 1, i32 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 2, %bb.f ], [ 3, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_popup_begin(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, <2 x float> %4, <2 x float> %5) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 19 uses
  %.not83 = icmp eq ptr %i.b, null
  br i1 %.not83, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757
  %.not84 = icmp eq ptr %i.d, null
  br i1 %.not84, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.e = load i8, ptr %2, align 1, !tbaa !11
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !815  ; 2 uses
  %.not85 = icmp eq ptr %i.j, null
  br i1 %.not85, label %bb.e, label %bb.f

bb.e:                                             ; preds = %nk_strlen.exit
  %i.k = tail call fastcc ptr @nk_create_window(ptr noundef %0) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  store ptr %i.b, ptr %i.l, align 8, !tbaa !871
  store ptr %i.k, ptr %i.i, align 8, !tbaa !815
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 0, ptr %i.m, align 4, !tbaa !834
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 4, ptr %i.n, align 8, !tbaa !909
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_strlen.exit
  %.077 = phi ptr [ %i.j, %nk_strlen.exit ], [ %i.k, %bb.e ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !910
  %.not86 = icmp eq i32 %i.p, %i.h
  br i1 %.not86, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 420 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !834, !range !79, !noundef !80
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = ptrtoint ptr %.077 to i64
  %i.u = and i64 %i.t, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(552) %.077, i8 0, i64 544, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.h
  %i.v = sub nuw nsw i64 4, %i.u                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.077, i8 0, i64 %i.v, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %.077, i64 %i.v ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(548) %scevgep.i.i, i8 0, i64 548, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 548
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.u, i1 false), !tbaa !11
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  store i32 %i.h, ptr %i.o, align 8, !tbaa !910
  store i8 1, ptr %i.q, align 4, !tbaa !834
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 4, ptr %i.w, align 8, !tbaa !909
  br label %bb.i

bb.i:                                             ; preds = %nk_zero.exit, %bb.f
  store ptr %.077, ptr %i.a, align 8, !tbaa !756
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !757
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  %i.z = load <2 x float>, ptr %i.y, align 4, !tbaa !8
  %i.aa = fadd <2 x float> %4, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.077, i64 544
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !871
  %i.ac = getelementptr inbounds nuw i8, ptr %.077, i64 76
  store <2 x float> %i.aa, ptr %i.ac, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.077, i64 84
  store <2 x float> %5, ptr %.sroa.6.0..sroa_idx, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314
  store i32 %i.ae, ptr %.077, align 8, !tbaa !313
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !821 ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 576
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !822
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !821
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !801
  %.not18.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not18.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !800 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !839 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !798
  %.not18.i.i.i = icmp ult i32 %i.ao, %i.aq
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !799
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.av = load i32, ptr %i.au, align 8, !tbaa !798
  %i.aw = add i32 %i.av, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 592
  %i.az = add nuw nsw i64 %i.ay, 608
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !840
  %i.bc = load ptr, ptr %i.al, align 8
  %i.bd = tail call ptr %i.bb(ptr %i.bc, ptr noundef null, i64 noundef %i.az) #50, !inline_history !841 ; 4 uses
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !800
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !804
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !800
  store i32 0, ptr %i.bd, align 8, !tbaa !839
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.m
  %i.bg = phi i32 [ 0, %.thread.i.i.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bh = phi ptr [ %i.bd, %.thread.i.i.i ], [ %i.an, %bb.m ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = add nuw i32 %i.bg, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !839
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !10
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.p
  %i.bq = sub nuw nsw i64 4, %i.bp                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %i.bq, i1 false), !tbaa !11
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.bq ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !10
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.bp, i1 false), !tbaa !11
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.n, %bb.o, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.o ], [ null, %bb.n ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.077, i64 168 ; 4 uses
  store ptr %.014.i.i, ptr %i.bs, align 8, !tbaa !757
  %i.bt = getelementptr inbounds nuw i8, ptr %.077, i64 72
  %i.bu = icmp eq i32 %1, 1
  %spec.select.v = select i1 %i.bu, i32 2049, i32 1
  %spec.select = or i32 %3, %spec.select.v
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !312
  %i.bv = getelementptr inbounds nuw i8, ptr %.077, i64 104 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 8 dereferenceable(64) %i.bw, i64 64, i1 false), !tbaa.struct !911
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.ca = load <2 x i64>, ptr %i.by, align 8, !tbaa !56
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !324 ; 2 uses
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !892
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !319
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  store i8 1, ptr %i.cd, align 8, !tbaa !320
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 9824 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !290
  %i.cg = getelementptr inbounds nuw i8, ptr %.077, i64 112
  store <4 x float> <float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04>, ptr %i.cg, align 8, !tbaa !8
  %i.ch = load ptr, ptr %i.bv, align 8, !tbaa !112
  %i.ci = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.ch, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i90 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i90, label %nk_push_scissor.exit, label %bb.q

bb.q:                                             ; preds = %nk_create_panel.exit
  %i.cj = load ptr, ptr %i.bv, align 8, !tbaa !112 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !44
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.077, i64 160
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !116
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 31
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, -8
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  store i32 1, ptr %i.ci, align 8, !tbaa !117
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !52
  %i.cy = add i64 %i.cx, %i.cv                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !119
  %i.da = getelementptr inbounds nuw i8, ptr %.077, i64 152
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !120
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <4 x i16> <i16 -8192, i16 -8192, i16 16384, i16 16384>, ptr %i.db, align 8, !tbaa !121
  br label %nk_push_scissor.exit

nk_push_scissor.exit:                             ; preds = %nk_create_panel.exit, %bb.q
  %i.dc = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 4)
  %.076104 = load ptr, ptr %i.c, align 8, !tbaa !913 ; 3 uses
  %.not88105 = icmp eq ptr %.076104, null         ; 2 uses
  br i1 %i.dc, label %.preheader, label %.preheader96

.preheader96:                                     ; preds = %nk_push_scissor.exit
  br i1 %.not88105, label %._crit_edge, label %.lr.ph103

.preheader:                                       ; preds = %nk_push_scissor.exit
  br i1 %.not88105, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader, %.lr.ph107
  %.076106 = phi ptr [ %.076, %.lr.ph107 ], [ %.076104, %.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.076106, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !846
  %i.df = and i32 %i.de, -69633
  %i.dg = or disjoint i32 %i.df, 4096
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !846
  %i.dh = getelementptr inbounds nuw i8, ptr %.076106, i64 456
  %.076 = load ptr, ptr %i.dh, align 8, !tbaa !913 ; 2 uses
  %.not88 = icmp eq ptr %.076, null
  br i1 %.not88, label %._crit_edge108.loopexit, label %.lr.ph107, !llvm.loop !914

._crit_edge108.loopexit:                          ; preds = %.lr.ph107
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !757
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %.preheader
  %i.di = phi ptr [ %.pre, %._crit_edge108.loopexit ], [ null, %.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 1, ptr %i.dj, align 4, !tbaa !834
  %i.dk = getelementptr inbounds nuw i8, ptr %.077, i64 92
  %i.dl = load ptr, ptr %i.bs, align 8, !tbaa !757 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !842
  %i.dn = getelementptr inbounds nuw i8, ptr %.077, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !843
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 456
  store ptr %i.di, ptr %i.dp, align 8, !tbaa !869
  br label %bb.x

.lr.ph103:                                        ; preds = %.preheader96, %.lr.ph103
  %.0102 = phi ptr [ %.0, %.lr.ph103 ], [ %.076104, %.preheader96 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0102, i64 4 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !846
  %i.ds = or i32 %i.dr, 65536
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !846
  %i.dt = getelementptr inbounds nuw i8, ptr %.0102, i64 456
  %.0 = load ptr, ptr %i.dt, align 8, !tbaa !913  ; 2 uses
  %.not87 = icmp eq ptr %.0, null
  br i1 %.not87, label %._crit_edge, label %.lr.ph103, !llvm.loop !915

._crit_edge:                                      ; preds = %.lr.ph103, %.preheader96
  store i8 0, ptr %i.cd, align 8, !tbaa !317
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 0, ptr %i.du, align 4, !tbaa !834
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !290
  store ptr %i.b, ptr %i.a, align 8, !tbaa !756
  %i.dv = load ptr, ptr %i.bs, align 8, !tbaa !757 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !801
  %.not.i.i91 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i91, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !821 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i92, label %nk_link_page_element_into_freelist.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 576
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !822
  br label %nk_link_page_element_into_freelist.exit.i.i

nk_link_page_element_into_freelist.exit.i.i:      ; preds = %bb.s, %bb.r
  store ptr %i.dv, ptr %i.af, align 8, !tbaa !821
  br label %nk_free_panel.exit

bb.t:                                             ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 592
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 9800
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !291
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 9848 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !824 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee
  %i.eg = icmp eq ptr %i.ea, %i.ef
  br i1 %i.eg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eh = add i64 %i.ee, -592
  store i64 %i.eh, ptr %i.ed, align 8, !tbaa !824
  br label %nk_free_panel.exit

bb.v:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr %i.af, align 8, !tbaa !821 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i11.i.i, label %nk_link_page_element_into_freelist.exit12.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 576
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !822
  br label %nk_link_page_element_into_freelist.exit12.i.i

nk_link_page_element_into_freelist.exit12.i.i:    ; preds = %bb.w, %bb.v
  store ptr %i.dv, ptr %i.af, align 8, !tbaa !821
  br label %nk_free_panel.exit

nk_free_panel.exit:                               ; preds = %nk_link_page_element_into_freelist.exit.i.i, %bb.u, %nk_link_page_element_into_freelist.exit12.i.i
  store ptr null, ptr %i.bs, align 8, !tbaa !757
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !312
  %i.e = or i32 %i.d, 8192
end_hunk_9
begin_hunk_10_@nk_nonblock_begin:bb.a
  store i32 %6, ptr %i.i, align 8, !tbaa !909
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9736
  store ptr %i.k, ptr %i.j, align 8, !tbaa !112
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i32 1, ptr %i.l, align 8, !tbaa !128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9824
  %i.n = load i64, ptr %i.m, align 8, !tbaa !52   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i64 %i.n, ptr %i.o, align 8, !tbaa !299
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store i64 %i.n, ptr %i.p, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store i64 %i.n, ptr %i.q, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store <2 x float> %4, ptr %i.r, align 8
  %.sroa.3.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store <2 x float> %5, ptr %.sroa.3.0..sroa_idx90, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.t = load i8, ptr %i.s, align 4, !tbaa !709, !range !79, !noundef !80
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = load i32, ptr %i.v, align 8, !tbaa !700
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %bb.f, label %nk_input_is_mouse_pressed.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_pressed.exit:                   ; preds = %bb.e, %bb.f
  %.0.i = phi i1 [ true, %bb.e ], [ false, %bb.f ]
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.y = load float, ptr %i.x, align 4, !tbaa !714 ; 4 uses
  %i.z = fcmp ole float %.sroa.0.0.vec.extract.i, %i.y
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = fcmp olt float %i.y, %i.aa
  %or.cond.i = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %bb.g, label %nk_input_is_mouse_hovering_rect.exit

bb.g:                                             ; preds = %nk_input_is_mouse_pressed.exit
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %2, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !715 ; 2 uses
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
  %i.al = load float, ptr %i.ak, align 8, !tbaa !715 ; 2 uses
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
  store <2 x float> %4, ptr %i.ap, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store <2 x float> %5, ptr %.sroa.3.0..sroa_idx, align 8
  br i1 %or.cond78, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.06695 = phi ptr [ %.066, %.lr.ph ], [ %i.d, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.06695, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !846
  %i.as = or i32 %i.ar, 65536
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !846
  %i.at = getelementptr inbounds nuw i8, ptr %.06695, i64 456
  %.066 = load ptr, ptr %i.at, align 8, !tbaa !913 ; 2 uses
  %.not76 = icmp eq ptr %.066, null
  br i1 %.not76, label %.loopexit, label %.lr.ph, !llvm.loop !917

bb.l:                                             ; preds = %.thread, %bb.k
  %.06891 = phi ptr [ %i.g, %.thread ], [ %i.f, %bb.k ] ; 13 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.06891, i64 76
  store <2 x float> %2, ptr %i.au, align 4
  %.sroa.364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.06891, i64 84
  store <2 x float> %3, ptr %.sroa.364.0..sroa_idx, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.06891, i64 544
  store ptr %i.b, ptr %i.av, align 8, !tbaa !871
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !821 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 576
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !822
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !821
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !801
  %.not18.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not18.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !800 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !839 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !798
  %.not18.i.i.i = icmp ult i32 %i.bf, %i.bh
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !799
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !798
  %i.bn = add i32 %i.bm, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, 592
  %i.bq = add nuw nsw i64 %i.bp, 608
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !840
  %i.bt = load ptr, ptr %i.bc, align 8
  %i.bu = tail call ptr %i.bs(ptr %i.bt, ptr noundef null, i64 noundef %i.bq) #50, !inline_history !841 ; 4 uses
  %i.bv = load ptr, ptr %i.bd, align 8, !tbaa !800
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !804
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !800
  store i32 0, ptr %i.bu, align 8, !tbaa !839
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.p
  %i.bx = phi i32 [ 0, %.thread.i.i.i ], [ %i.bf, %bb.p ] ; 2 uses
  %i.by = phi ptr [ %i.bu, %.thread.i.i.i ], [ %i.be, %bb.p ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = add nuw i32 %i.bx, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !839
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !10
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.s
  %i.ch = sub nuw nsw i64 4, %i.cg                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %i.ch, i1 false), !tbaa !11
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.ch ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !10
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.cg, i1 false), !tbaa !11
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.q, %bb.r, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.r ], [ null, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.06891, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.cj, align 8, !tbaa !757
  %i.ck = getelementptr inbounds nuw i8, ptr %.06891, i64 72
  %i.cl = or i32 %1, 2049
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !312
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !314
  store i32 %i.cn, ptr %.06891, align 8, !tbaa !313
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 1, ptr %i.co, align 4, !tbaa !834
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !tbaa !56
  %i.ct = load i64, ptr %i.cq, align 8, !tbaa !324 ; 2 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !892
  store <2 x i64> %i.cs, ptr %i.cp, align 8, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !319
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i8 1, ptr %i.cv, align 8, !tbaa !320
  %i.cw = getelementptr inbounds nuw i8, ptr %.06891, i64 104 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr noundef nonnull align 8 dereferenceable(64) %i.cx, i64 64, i1 false), !tbaa.struct !911
  %i.cy = getelementptr inbounds nuw i8, ptr %.06891, i64 112
  store <4 x float> <float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04>, ptr %i.cy, align 8, !tbaa !8
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !112
  %i.da = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.cz, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i87 = icmp eq ptr %i.da, null
  br i1 %.not.i.i87, label %nk_push_scissor.exit, label %bb.t

bb.t:                                             ; preds = %nk_create_panel.exit
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !112 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.06891, i64 160
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !116
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 31
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, -8
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  store i32 1, ptr %i.da, align 8, !tbaa !117
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 88
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !52
  %i.dq = add i64 %i.dp, %i.dn                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !119
  %i.ds = getelementptr inbounds nuw i8, ptr %.06891, i64 152
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !120
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <4 x i16> <i16 -8192, i16 -8192, i16 16384, i16 16384>, ptr %i.dt, align 8, !tbaa !121
  br label %nk_push_scissor.exit

nk_push_scissor.exit:                             ; preds = %nk_create_panel.exit, %bb.t
  store ptr %.06891, ptr %i.a, align 8, !tbaa !756
  %i.du = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef null, i32 noundef %6) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false), !tbaa.struct !911
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !757 ; 3 uses
  %i.dw = load ptr, ptr %i.cj, align 8, !tbaa !757 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 456
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !869
  %i.dy = getelementptr inbounds nuw i8, ptr %.06891, i64 92
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !842
  %i.ea = getelementptr inbounds nuw i8, ptr %.06891, i64 96
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !843
  %.not7797 = icmp eq ptr %i.dv, null
  br i1 %.not7797, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %nk_push_scissor.exit, %.lr.ph99
  %.098 = phi ptr [ %.0, %.lr.ph99 ], [ %i.dv, %nk_push_scissor.exit ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.098, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !846
  %i.ee = or i32 %i.ed, 4096
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !846
  %i.ef = getelementptr inbounds nuw i8, ptr %.098, i64 456
  %.0 = load ptr, ptr %i.ef, align 8, !tbaa !913  ; 2 uses
  %.not77 = icmp eq ptr %.0, null
  br i1 %.not77, label %.loopexit, label %.lr.ph99, !llvm.loop !918

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 3 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %nk_contextual_close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757
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
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !757
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !846
  %i.k = and i32 %i.j, 4096
  %.not26 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not26, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit
  %i.l = phi ptr [ null, %nk_widget_fitting.exit ], [ %spec.select, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !754
  %i.p = load <2 x float>, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.p, <2 x float> %i.r, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %i.f, ptr noundef %i.l, ptr noundef %i.o)
  br i1 %i.s, label %bb.f, label %nk_contextual_close.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !756  ; 3 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %nk_contextual_close.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !757
  %.not6.i = icmp eq ptr %i.v, null
  br i1 %.not6.i, label %nk_contextual_close.exit, label %nk_popup_close.exit.i

nk_popup_close.exit.i:                            ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !312
  %i.y = or i32 %i.x, 8192
  store i32 %i.y, ptr %i.w, align 8, !tbaa !312
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @nk_widget(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

end_hunk_10
begin_hunk_11_@nk_layout_row_template_end:bb.a
  %predphi139 = select <4 x i1> %i.au, <4 x float> %i.aw, <4 x float> %predphi
  %predphi140 = select <4 x i1> %i.at, <4 x float> %broadcast.splat134, <4 x float> %wide.load138
  %predphi141 = select <4 x i1> %i.av, <4 x float> %i.ax, <4 x float> %predphi140
  store <4 x float> %predphi139, ptr %i.aq, align 4, !tbaa !8
  store <4 x float> %predphi141, ptr %i.ar, align 4, !tbaa !8
  %index.next142 = add nuw i64 %index136, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next142, %n.vec132
  br i1 %i.ay, label %middle.block143, label %vector.body135, !llvm.loop !939

middle.block143:                                  ; preds = %vector.body135
  %cmp.n144 = icmp eq i64 %n.vec132, %wide.trip.count
  br i1 %cmp.n144, label %.loopexit, label %.lr.ph94.split.preheader

.lr.ph94.split.preheader:                         ; preds = %.thread, %middle.block143
  %indvars.iv97.ph = phi i64 [ 0, %.thread ], [ %n.vec132, %middle.block143 ]
  br label %.lr.ph94.split

.lr.ph94.split.us.preheader:                      ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 180 ; 2 uses
  %wide.trip.count105 = zext nneg i32 %i.h to i64
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph94.split.us.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph94.split.us.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ba, align 4, !tbaa !8 ; 2 uses
  %wide.load128 = load <4 x float>, ptr %i.bb, align 4, !tbaa !8 ; 2 uses
  %i.bc = fcmp ult <4 x float> %wide.load, zeroinitializer
  %i.bd = fcmp ult <4 x float> %wide.load128, zeroinitializer
  %i.be = select <4 x i1> %i.bc, <4 x float> %broadcast.splat, <4 x float> %wide.load
  %i.bf = select <4 x i1> %i.bd, <4 x float> %broadcast.splat, <4 x float> %wide.load128
  store <4 x float> %i.be, ptr %i.ba, align 4, !tbaa !8
  store <4 x float> %i.bf, ptr %i.bb, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !940

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph94.split.us.preheader146

.lr.ph94.split.us.preheader146:                   ; preds = %.lr.ph94.split.us.preheader, %middle.block
  %indvars.iv102.ph = phi i64 [ 0, %.lr.ph94.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph94.split.us

.lr.ph94.split.us:                                ; preds = %.lr.ph94.split.us.preheader146, %.lr.ph94.split.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.lr.ph94.split.us ], [ %indvars.iv102.ph, %.lr.ph94.split.us.preheader146 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv102 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !8 ; 2 uses
  %i.bj = fcmp ult float %i.bi, 0.000000e+00
  %i.bk = select i1 %i.bj, float %i.aj, float %i.bi
  store float %i.bk, ptr %i.bh, align 4, !tbaa !8
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %.lr.ph94.split.us, !llvm.loop !941

.lr.ph94.split:                                   ; preds = %.lr.ph94.split.preheader, %bb.n
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.n ], [ %indvars.iv97.ph, %.lr.ph94.split.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv97 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !8 ; 4 uses
  %i.bn = fcmp ult float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph94.split
  %i.bo = fcmp uge float %i.bm, -1.000000e+00
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = fneg float %i.bm
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.lr.ph94.split, %bb.m
  %i.bq = phi float [ %i.bm, %.lr.ph94.split ], [ %i.bp, %bb.m ], [ %i.ao, %bb.l ]
  store float %i.bq, ptr %i.bl, align 4, !tbaa !8
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %.loopexit, label %.lr.ph94.split, !llvm.loop !942

.loopexit:                                        ; preds = %.lr.ph94.split.us, %bb.n, %middle.block, %middle.block143, %.preheader, %._crit_edge, %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_layout_space_begin(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 5 uses
  %.not17 = icmp eq ptr %i.b, null
  br i1 %.not17, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 11 uses
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.03.0.copyload.i = load i32, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store i32 0, ptr %i.g, align 4, !tbaa !852
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !857
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !860
  %i.l = fadd float %i.i, %i.k                    ; 2 uses
  store float %i.l, ptr %i.j, align 4, !tbaa !860
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i32 %3, ptr %i.m, align 8, !tbaa !853
  %i.n = fcmp oeq float %2, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.p = load float, ptr %i.o, align 4, !tbaa !760 ; 2 uses
  %i.q = fcmp olt float %2, %i.p
  %..i = select i1 %i.q, float %i.p, float %2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi float [ %..i, %bb.e ], [ %2, %bb.d ]
  %storemerge.i = fadd float %.sroa.3.0.copyload.i, %.pn.i ; 2 uses
  store float %storemerge.i, ptr %i.h, align 8, !tbaa !857
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  store float 0.000000e+00, ptr %i.r, align 8, !tbaa !934
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !846
  %i.u = and i32 %i.t, 2048
  %.not36.i = icmp eq i32 %i.u, 0
  br i1 %.not36.i, label %nk_panel_layout.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.w = load float, ptr %i.v, align 4, !tbaa !835
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.w, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.y = load float, ptr %i.x, align 4, !tbaa !833
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %i.z = fadd float %i.l, -1.000000e+00
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.z, i64 1
  %i.aa = fadd float %storemerge.i, 1.000000e+00
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i, float %i.aa, i64 1
  tail call void @nk_fill_rect(ptr noundef nonnull %i.e, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.5.12.vec.insert.i, float noundef 0.000000e+00, i32 %.sroa.03.0.copyload.i)
  br label %nk_panel_layout.exit

nk_panel_layout.exit:                             ; preds = %bb.f, %bb.g
  %i.ab = icmp eq i32 %1, 1
  %spec.select = select i1 %i.ab, i32 6, i32 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 %spec.select, ptr %i.ac, align 8, !tbaa !935
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr null, ptr %i.ad, align 8, !tbaa !854
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float 0.000000e+00, ptr %i.ae, align 8, !tbaa !855
  store <2 x float> zeroinitializer, ptr %i.r, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %nk_panel_layout.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_space_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_zero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %nk_zero.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 4 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %nk_zero.exit, label %.loopexit46.i.i.thread

.loopexit46.i.i.thread:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <2 x float> zeroinitializer, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !934
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !tbaa !10
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_space_push(ptr nofree noundef readonly captures(address_is_null) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #36 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 3 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store <2 x float> %1, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store <2 x float> %2, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_layout_space_bounds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.h = load float, ptr %i.g, align 4, !tbaa !874
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %i.h, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.j = load float, ptr %i.i, align 8, !tbaa !857
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %i.j, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.f, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_layout_widget_bounds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load <2 x float>, ptr %i.e, align 8, !tbaa !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load float, ptr %i.h, align 8, !tbaa !848
  %i.j = load float, ptr %i.g, align 8, !tbaa !847
  %i.k = extractelement <2 x float> %i.f, i64 0
  %i.l = fsub float %i.k, %i.j                    ; 2 uses
  %i.m = fcmp olt float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 0.000000e+00, float %i.l
  %i.o = fsub float %i.i, %i.n
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %i.o, i64 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.q = load float, ptr %i.p, align 8, !tbaa !857
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %i.q, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.f, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @nk_layout_space_to_screen(ptr nofree noundef readonly captures(none) %0, <2 x float> %1) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !842
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !843
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %i.l = load <2 x float>, ptr %i.e, align 8, !tbaa !8
  %i.m = uitofp i32 %i.k to float
  %i.n = uitofp i32 %i.h to float
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.m, i64 1
  %i.q = fsub <2 x float> %i.l, %i.p
  %i.r = fadd <2 x float> %1, %i.q
  ret <2 x float> %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @nk_layout_space_to_local(ptr nofree noundef readonly captures(none) %0, <2 x float> %1) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !842
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !843
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %i.l = load <2 x float>, ptr %i.e, align 8, !tbaa !8
  %i.m = uitofp i32 %i.k to float
  %i.n = uitofp i32 %i.h to float
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.m, i64 1
  %i.q = fsub <2 x float> %i.p, %i.l
  %i.r = fadd <2 x float> %1, %i.q
  ret <2 x float> %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_layout_space_rect_to_screen(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !842
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !843
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %i.l = load <2 x float>, ptr %i.e, align 8, !tbaa !8
  %i.m = uitofp i32 %i.k to float
  %i.n = uitofp i32 %i.h to float
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.m, i64 1
  %i.q = fsub <2 x float> %i.l, %i.p
  %i.r = fadd <2 x float> %1, %i.q
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.r, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_layout_space_rect_to_local(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !842
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !843
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  %i.l = load <2 x float>, ptr %i.e, align 8, !tbaa !8
  %i.m = uitofp i32 %i.k to float
  %i.n = uitofp i32 %i.h to float
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.m, i64 1
  %i.q = fsub <2 x float> %i.p, %i.l
  %i.r = fadd <2 x float> %1, %i.q
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.r, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @nk_spacer(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %1 = alloca %struct.nk_rect, align 4            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  call fastcc void @nk_panel_alloc_space(ptr noundef nonnull %1, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_panel_alloc_space(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18560
end_hunk_11
begin_hunk_12_@nk_tree_element_pop:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not14.i = icmp eq ptr %i.b, null
  br i1 %.not14.i, label %nk_tree_state_pop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 5 uses
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %nk_tree_state_pop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8432
  %i.f = load float, ptr %i.e, align 8, !tbaa !950 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !842
  %i.i = load i32, ptr %i.h, align 4, !tbaa !10
  %i.j = uitofp i32 %i.i to float
  %i.k = fadd float %i.f, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !925
  %i.n = fsub float %i.m, %i.k
  store float %i.n, ptr %i.l, align 8, !tbaa !925
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9668
  %i.p = load float, ptr %i.o, align 4, !tbaa !951
  %i.q = fadd float %i.f, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !848
  %i.t = fadd float %i.s, %i.q
  store float %i.t, ptr %i.r, align 8, !tbaa !848
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !856
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !856
  br label %nk_tree_state_pop.exit

nk_tree_state_pop.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_group_scrolled_offset_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %5 = alloca %struct.nk_rect, align 4            ; 8 uses
  %6 = alloca %struct.nk_window, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 5 uses
  call fastcc void @nk_panel_alloc_space(ptr noundef nonnull %5, ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load float, ptr %5, align 4, !tbaa !129  ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !129 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.i = load float, ptr %i.h, align 4, !tbaa !130
  %i.j = fadd float %i.g, %i.i
  %i.k = fcmp olt float %i.f, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !130
  %i.n = fadd float %i.f, %i.m
  %i.o = fcmp olt float %i.g, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !131 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.s = load float, ptr %i.r, align 4, !tbaa !131 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.u = load float, ptr %i.t, align 4, !tbaa !132
  %i.v = fadd float %i.s, %i.u
  %i.w = fcmp olt float %i.q, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !132
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
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !312
  %i.ae = and i32 %i.ad, 4096
  %.035 = or i32 %i.ae, %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %6, i8 0, i64 552, i1 false), !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !185
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 %.035, ptr %i.ag, align 8, !tbaa !312
  %i.ah = load i32, ptr %1, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 92
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !905
  %i.aj = load i32, ptr %2, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !906
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false), !tbaa.struct !911
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !821 ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 576
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !822
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !821
  br label %bb.l

bb.g:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !801
  %.not18.i.i = icmp eq i32 %i.as, 0
  br i1 %.not18.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !800 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !839 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !798
  %.not18.i.i.i = icmp ult i32 %i.aw, %i.ay
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !799
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !798
  %i.be = add i32 %i.bd, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, 592
  %i.bh = add nuw nsw i64 %i.bg, 608
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !840
  %i.bk = load ptr, ptr %i.at, align 8
  %i.bl = tail call ptr %i.bj(ptr %i.bk, ptr noundef null, i64 noundef %i.bh) #50, !inline_history !841 ; 4 uses
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !800
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !804
  store ptr %i.bl, ptr %i.au, align 8, !tbaa !800
  store i32 0, ptr %i.bl, align 8, !tbaa !839
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.i
  %i.bo = phi i32 [ 0, %.thread.i.i.i ], [ %i.aw, %bb.i ] ; 2 uses
  %i.bp = phi ptr [ %i.bl, %.thread.i.i.i ], [ %i.av, %bb.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = add nuw i32 %i.bo, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !839
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !10
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.l
  %i.by = sub nuw nsw i64 4, %i.bx                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %i.by, i1 false), !tbaa !11
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.by ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !10
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.bx, i1 false), !tbaa !11
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.j, %bb.k, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.k ], [ null, %bb.j ]
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.ca, align 8, !tbaa !757
  store ptr %6, ptr %i.a, align 8, !tbaa !756
  %i.cb = and i32 %4, 64
  %.not41 = icmp eq i32 %i.cb, 0
  %i.cc = select i1 %.not41, ptr null, ptr %3
  %i.cd = call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef %i.cc, i32 noundef 2) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false), !tbaa.struct !911
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !757 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !185
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %1, ptr %i.ch, align 8, !tbaa !842
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr %2, ptr %i.ci, align 8, !tbaa !843
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !757
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 456
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !869
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !757
  store ptr %i.b, ptr %i.a, align 8, !tbaa !756
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !846
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
define void @nk_group_scrolled_end(ptr noundef %0) local_unnamed_addr #20 {
bb.a:
  %1 = alloca %struct.nk_window, align 8          ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 8 uses
  %.not45 = icmp eq ptr %i.b, null
  br i1 %.not45, label %bb.i, label %.loopexit46.i.i.thread

.loopexit46.i.i.thread:                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !869  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %1, i8 0, i64 544, i1 false), !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9676
  %.sroa.0.0.i = load <2 x float>, ptr %i.g, align 4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load float, ptr %i.i, align 8, !tbaa !851 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.l = load float, ptr %i.k, align 8, !tbaa !932 ; 2 uses
  %i.m = fadd float %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  %.sroa.01.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.o = load <2 x float>, ptr %i.h, align 8, !tbaa !8
  %i.p = insertelement <2 x float> %.sroa.0.0.i, float %i.m, i64 1
  %i.q = fsub <2 x float> %i.o, %i.p              ; 4 uses
  %i.r = extractelement <2 x float> %i.q, i64 1
  store <2 x float> %i.q, ptr %i.n, align 4, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load float, ptr %i.s, align 8, !tbaa !848
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract, float 2.000000e+00, float %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  store float %i.u, ptr %i.v, align 4, !tbaa !833
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !859
  %i.y = fadd float %i.j, %i.x
  %i.z = fadd float %i.l, %i.y                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.z, ptr %i.aa, align 8, !tbaa !837
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !846 ; 3 uses
  %i.ad = and i32 %i.ac, 1
  %.not46 = icmp eq i32 %i.ad, 0
  %i.ae = insertelement <2 x float> poison, float %i.u, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.z, i64 1 ; 2 uses
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit46.i.i.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !849
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fsub <2 x float> %i.q, %i.aj            ; 3 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> splat (float 2.000000e+00), <2 x float> %i.af) ; 2 uses
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.an, ptr %i.n, align 4, !tbaa !8
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
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !8
  %i.au = fadd <2 x float> %i.at, %i.aq           ; 2 uses
  store <2 x float> %i.au, ptr %i.v, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = phi <2 x float> [ %i.au, %bb.e ], [ %i.aq, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !842
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !905
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !843
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !906
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.ac, ptr %i.be, align 8, !tbaa !312
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i64 64, i1 false), !tbaa.struct !911
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.d, ptr %i.bh, align 8, !tbaa !757
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 544
  store ptr %i.b, ptr %i.bi, align 8, !tbaa !871
  store ptr %1, ptr %i.a, align 8, !tbaa !756
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 68 ; 2 uses
  %i.bk = extractelement <2 x float> %i.av, i64 1
  %i.bl = fadd float %i.ao, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 76 ; 2 uses
  %i.bn = shufflevector <2 x float> %i.ap, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 0, i32 2>
  %i.bo = insertelement <2 x float> %i.av, float %i.bl, i64 1
  %i.bp = fadd <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bj, align 4, !tbaa !8 ; 3 uses
  %i.br = fcmp olt <2 x float> %i.bq, %i.ap
  %i.bs = load <2 x float>, ptr %i.bm, align 4, !tbaa !8
  %i.bt = fadd <2 x float> %i.bq, %i.bs           ; 2 uses
  %i.bu = fcmp olt <2 x float> %i.bt, %i.bp
  %i.bv = select <2 x i1> %i.bu, <2 x float> %i.bt, <2 x float> %i.bp
  %i.bw = select <2 x i1> %i.br, <2 x float> %i.ap, <2 x float> %i.bq ; 3 uses
  %i.bx = fsub <2 x float> %i.bv, %i.bw           ; 2 uses
  %i.by = fcmp ogt <2 x float> %i.bx, zeroinitializer
  %i.bz = select <2 x i1> %i.by, <2 x float> %i.bx, <2 x float> zeroinitializer ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cb = shufflevector <2 x float> %i.bw, <2 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.cb, ptr %i.ca, align 8, !tbaa !8
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !112
  %i.cd = call fastcc ptr @nk_buffer_alloc(ptr noundef %i.cc, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i48 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i48, label %nk_push_scissor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = load ptr, ptr %i.bf, align 8, !tbaa !112 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !44
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !116
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 31
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = and i64 %i.cn, -8
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  store i32 1, ptr %i.cd, align 8, !tbaa !117
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 88
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !52
  %i.ct = add i64 %i.cs, %i.cq                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !119
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %i.ct, ptr %i.cv, align 8, !tbaa !120
  %i.cw = shufflevector <2 x float> %i.bw, <2 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cx = fptosi <4 x float> %i.cw to <4 x i16>
end_hunk_12
begin_hunk_13_@nk_group_begin_titled:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i51 ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = icmp eq i32 %i.p, %i.j
  br i1 %i.q, label %bb.g, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph29.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.r, align 8, !tbaa !952 ; 2 uses
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
  store i32 0, ptr %i.u, align 4, !tbaa !10
  store i32 0, ptr %i.s, align 4, !tbaa !10
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.b, align 8, !tbaa !313  ; 2 uses
  store i32 %i.x, ptr %.01627.i, align 8, !tbaa !819
  %i.y = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.aa = add i32 %i.j, 1                         ; 2 uses
  br label %.lr.ph29.i54

.lr.ph29.i54:                                     ; preds = %bb.g, %._crit_edge.i62
  %.01627.i55 = phi ptr [ %.016.i63, %._crit_edge.i62 ], [ %.01625.i, %bb.g ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !953 ; 2 uses
  %.not1923.not.i56 = icmp eq i32 %i.ac, 0
  br i1 %.not1923.not.i56, label %._crit_edge.i62, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph29.i54
  %i.ad = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 8
  %wide.trip.count.i58 = zext i32 %i.ac to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i58
  br i1 %exitcond.not.i61, label %._crit_edge.i62, label %bb.i, !llvm.loop !954

bb.i:                                             ; preds = %bb.h, %.lr.ph.i57
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.i57 ], [ %indvars.iv.next.i60, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i59
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10
  %i.ag = icmp eq i32 %i.af, %i.aa
  br i1 %i.ag, label %nk_find_value.exit67, label %bb.h

._crit_edge.i62:                                  ; preds = %bb.h, %.lr.ph29.i54
  %i.ah = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 560
  %.016.i63 = load ptr, ptr %i.ah, align 8, !tbaa !952 ; 2 uses
  %.not.i64 = icmp eq ptr %.016.i63, null
  br i1 %.not.i64, label %bb.j, label %.lr.ph29.i54

nk_find_value.exit67:                             ; preds = %bb.i
  store i32 %i.x, ptr %.01627.i55, align 8, !tbaa !819
  %i.ai = getelementptr inbounds nuw i8, ptr %.01627.i55, i64 284
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i59
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i62
  %i.ak = tail call fastcc ptr @nk_add_value(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.aa) ; 3 uses
  %.not50 = icmp eq ptr %i.ak, null
  br i1 %.not50, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 4, !tbaa !10
  store i32 0, ptr %i.z, align 4, !tbaa !10
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !816  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !953  ; 2 uses
  %i.g = icmp ugt i32 %i.f, 68
  br i1 %i.g, label %bb.d, label %nk_push_table.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !821  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 576
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !822
  store ptr %i.k, ptr %i.h, align 8, !tbaa !821
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.m = load i32, ptr %i.l, align 4, !tbaa !801
  %.not18.i.i = icmp eq i32 %i.m, 0
  br i1 %.not18.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !800  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.p, align 8, !tbaa !839  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.s = load i32, ptr %i.r, align 8, !tbaa !798
  %.not18.i.i.i = icmp ult i32 %i.q, %i.s
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.u = load i32, ptr %i.t, align 8, !tbaa !799
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %nk_push_table.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.x = load i32, ptr %i.w, align 8, !tbaa !798
  %i.y = add i32 %i.x, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = mul nuw nsw i64 %i.z, 592
  %i.ab = add nuw nsw i64 %i.aa, 608
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !840
  %i.ae = load ptr, ptr %i.n, align 8
  %i.af = tail call ptr %i.ad(ptr %i.ae, ptr noundef null, i64 noundef %i.ab) #50, !inline_history !960 ; 4 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !800
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !804
  store ptr %i.af, ptr %i.o, align 8, !tbaa !800
  store i32 0, ptr %i.af, align 8, !tbaa !839
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.h
  %i.ai = phi i32 [ 0, %.thread.i.i.i ], [ %i.q, %bb.h ] ; 2 uses
  %i.aj = phi ptr [ %i.af, %.thread.i.i.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = add nuw i32 %i.ai, 1
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !839
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !10
  br label %bb.l

.loopexit46.i.i.i.i:                              ; preds = %bb.k
  %i.as = sub nuw nsw i64 4, %i.ar                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %i.as, i1 false), !tbaa !11
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.as ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !10
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.ar, i1 false), !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !816 ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !816
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 560
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !953
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.ax, align 8, !tbaa !961
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !816 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre30 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !953
  br label %nk_push_table.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 568
  store ptr %.0.i.i, ptr %i.ay, align 8, !tbaa !820
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 560
  store ptr %i.au, ptr %i.az, align 8, !tbaa !817
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 568
  store ptr null, ptr %i.ba, align 8, !tbaa !820
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !953
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !816
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !961
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !961
  br label %nk_push_table.exit.thread

nk_push_table.exit.thread:                        ; preds = %bb.n, %bb.m, %bb.c
  %i.bf = phi i32 [ 0, %bb.n ], [ %.pre30, %bb.m ], [ %i.f, %bb.c ] ; 2 uses
  %i.bg = phi ptr [ %.0.i.i, %bb.n ], [ %.pre, %bb.m ], [ %i.d, %bb.c ] ; 4 uses
  %i.bh = load i32, ptr %1, align 8, !tbaa !313
  store i32 %i.bh, ptr %i.bg, align 8, !tbaa !819
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk
  store i32 %2, ptr %i.bl, align 4, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 284
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store i32 0, ptr %i.bn, align 4, !tbaa !10
  %i.bo = add i32 %i.bf, 1
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !953
  br label %nk_push_table.exit

nk_push_table.exit:                               ; preds = %bb.i, %bb.j, %bb.a, %nk_push_table.exit.thread
  %.1 = phi ptr [ %i.bn, %nk_push_table.exit.thread ], [ null, %bb.a ], [ null, %bb.j ], [ null, %bb.i ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_group_begin(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call zeroext i1 @nk_group_begin_titled(ptr noundef %0, ptr noundef %1, ptr noundef %1, i32 noundef %2)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define void @nk_group_end(ptr noundef %0) local_unnamed_addr #17 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 7 uses
  %.not48 = icmp eq ptr %i.b, null
  br i1 %.not48, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %.lr.ph.i.preheader, label %bb.p

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.g = load i8, ptr %1, align 1, !tbaa !11
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
  %.01625.i = load ptr, ptr %i.k, align 8, !tbaa !952 ; 3 uses
  %.not26.i = icmp eq ptr %.01625.i, null
  br i1 %.not26.i, label %.loopexit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %nk_strlen.exit, %._crit_edge.i
  %.01627.i = phi ptr [ %.016.i, %._crit_edge.i ], [ %.01625.i, %nk_strlen.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01627.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !953  ; 2 uses
  %.not1923.not.i = icmp eq i32 %i.m, 0
  br i1 %.not1923.not.i, label %._crit_edge.i, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.lr.ph29.i
  %i.n = getelementptr inbounds nuw i8, ptr %.01627.i, i64 8
  %wide.trip.count.i = zext i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !954

bb.e:                                             ; preds = %bb.d, %.lr.ph.i54
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i54 ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = icmp eq i32 %i.p, %i.j
  br i1 %i.q, label %bb.g, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph29.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01627.i, i64 560
  %.016.i = load ptr, ptr %i.r, align 8, !tbaa !952 ; 2 uses
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
  store i32 0, ptr %i.u, align 4, !tbaa !10
  store i32 0, ptr %i.s, align 4, !tbaa !10
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.b, align 8, !tbaa !313  ; 2 uses
  store i32 %i.x, ptr %.01627.i, align 8, !tbaa !819
  %i.y = getelementptr inbounds nuw i8, ptr %.01627.i, i64 284
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.aa = add i32 %i.j, 1                         ; 2 uses
  br label %.lr.ph29.i57

.lr.ph29.i57:                                     ; preds = %bb.g, %._crit_edge.i65
  %.01627.i58 = phi ptr [ %.016.i66, %._crit_edge.i65 ], [ %.01625.i, %bb.g ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !953 ; 2 uses
  %.not1923.not.i59 = icmp eq i32 %i.ac, 0
  br i1 %.not1923.not.i59, label %._crit_edge.i65, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph29.i57
  %i.ad = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 8
  %wide.trip.count.i61 = zext i32 %i.ac to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %wide.trip.count.i61
  br i1 %exitcond.not.i64, label %._crit_edge.i65, label %bb.i, !llvm.loop !954

bb.i:                                             ; preds = %bb.h, %.lr.ph.i60
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.i60 ], [ %indvars.iv.next.i63, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i62
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10
  %i.ag = icmp eq i32 %i.af, %i.aa
  br i1 %i.ag, label %nk_find_value.exit70, label %bb.h

._crit_edge.i65:                                  ; preds = %bb.h, %.lr.ph29.i57
  %i.ah = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 560
  %.016.i66 = load ptr, ptr %i.ah, align 8, !tbaa !952 ; 2 uses
  %.not.i67 = icmp eq ptr %.016.i66, null
  br i1 %.not.i67, label %bb.j, label %.lr.ph29.i57

nk_find_value.exit70:                             ; preds = %bb.i
  store i32 %i.x, ptr %.01627.i58, align 8, !tbaa !819
  %i.ai = getelementptr inbounds nuw i8, ptr %.01627.i58, i64 284
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i62
end_hunk_13
begin_hunk_14_@nk_textedit_redo:bb.a
  %invariant.gep = getelementptr [4 x i8], ptr %i.ac, i64 %i.ad
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !1097
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = add nsw i32 %i.ae, %i.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  store i32 0, ptr %i.c, align 4, !tbaa !10
  %i.ah = call ptr @nk_str_at_const(ptr noundef nonnull readonly %i.ab, i32 noundef %i.ag, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) ; 0 uses
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ai, ptr %gep, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !1118

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
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !10 ; 3 uses
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
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10
  %i.av = icmp ugt i32 %spec.select23.i.i, %i.au
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, 1
  br i1 %i.av, label %bb.h, label %nk_utf_validate.exit.i.i, !llvm.loop !34

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
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !11
  %i.bf = lshr i32 %.02226.i.i.prol, 6            ; 3 uses
  %indvars.iv.next29.i.i.prol = add nsw i64 %indvars.iv28.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1119

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
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !11
  %i.bl = lshr i32 %.02226.i.i, 6
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128
  %i.bp = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !11
  %i.br = lshr i32 %.02226.i.i, 12
  %i.bs = trunc i32 %i.br to i8
  %i.bt = and i8 %i.bs, 63
  %i.bu = or disjoint i8 %i.bt, -128
  %i.bv = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 -2
  store i8 %i.bu, ptr %i.bw, align 1, !tbaa !11
  %i.bx = lshr i32 %.02226.i.i, 18
  %i.by = trunc i32 %i.bx to i8
  %i.bz = and i8 %i.by, 63
  %i.ca = or disjoint i8 %i.bz, -128
  %i.cb = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 -3
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !11
  %i.cd = lshr i32 %.02226.i.i, 24                ; 2 uses
  %indvars.iv.next29.i.i.3 = add nsw i64 %indvars.iv28.i.i, -4 ; 2 uses
  %.not.i.i.3 = icmp eq i64 %indvars.iv.next29.i.i.3, 0
  br i1 %.not.i.i.3, label %nk_utf_encode.exit.i, label %.lr.ph.i.i, !llvm.loop !36

nk_utf_encode.exit.i:                             ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.preheader.i.i
  %.022.lcssa.i.i = phi i32 [ %spec.select23.i.i, %.preheader.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr @nk_utfbyte, i64 %indvars.iv.i.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr @nk_utfmask, i64 %indvars.iv.i.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = zext i8 %i.ch to i32
  %i.cj = xor i32 %i.ci, -1
  %i.ck = and i32 %.022.lcssa.i.i, %i.cj
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = or i8 %i.cf, %i.cl
  store i8 %i.cm, ptr %i.a, align 1, !tbaa !11
  %i.cn = trunc i64 %indvars.iv.i to i32
  %i.co = add i32 %.sroa.0.0.copyload, %i.cn
  %i.cp = call i32 @nk_str_insert_at_rune(ptr noundef nonnull %i.ak, i32 noundef %i.co, ptr noundef nonnull %i.a, i32 noundef %i.aw) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %nk_str_insert_text_runes.exit, label %.lr.ph.i, !llvm.loop !107

nk_str_insert_text_runes.exit:                    ; preds = %nk_utf_validate.exit.i.i, %nk_utf_encode.exit.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.i

bb.i:                                             ; preds = %nk_str_insert_text_runes.exit, %bb.g
  %i.cq = sext i16 %.sroa.7.0.copyload to i32
  %i.cr = add nsw i32 %.sroa.0.0.copyload, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !1107
  %i.ct = load <2 x i16>, ptr %i.h, align 8, !tbaa !121
  %i.cu = add <2 x i16> %i.ct, splat (i16 1)
  store <2 x i16> %i.cu, ptr %i.h, align 8, !tbaa !121
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5384) %0, i8 0, i64 5376, i1 false), !tbaa !10
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i:                                    ; preds = %bb.b
  %i.f = sub nuw nsw i64 4, %i.e                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.f, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5380) %scevgep.i, i8 0, i64 5380, i1 false), !tbaa !10
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 5380
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i, i8 0, i64 %i.e, i1 false), !tbaa !11
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %.loopexit46.i, %.loopexit46.i.thread
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.g, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.h, align 4, !tbaa !1105
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.i, align 8, !tbaa !1106
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.j, align 8, !tbaa !1107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !1120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.l, align 8, !tbaa !1110
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.m, align 4, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.o, i8 0, i64 112, i1 false), !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %i.r, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %2, ptr %i.s, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.t, align 8, !tbaa !86
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5384) %0, i8 0, i64 5376, i1 false), !tbaa !10
  br label %nk_memset.exit

.loopexit46.i:                                    ; preds = %bb.b
  %i.e = sub nuw nsw i64 4, %i.d                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.e, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5380) %scevgep.i, i8 0, i64 5380, i1 false), !tbaa !10
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 5380
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i, i8 0, i64 %i.d, i1 false), !tbaa !11
  br label %nk_memset.exit

nk_memset.exit:                                   ; preds = %.loopexit46.i.thread, %.loopexit46.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.f, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.g, align 4, !tbaa !1105
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.h, align 8, !tbaa !1106
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.i, align 8, !tbaa !1107
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !1120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.k, align 8, !tbaa !1110
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.l, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.not = icmp eq i64 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br i1 %.not, label %nk_str_init.exit, label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %nk_memset.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.n, i8 0, i64 120, i1 false), !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.o, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = load ptr, ptr %1, align 8
  %i.s = tail call ptr %i.q(ptr %i.r, ptr noundef null, i64 noundef %2) #50, !inline_history !1121
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.s, ptr %i.t, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %i.u, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %2, ptr %i.v, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float 2.000000e+00, ptr %i.w, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  br label %nk_str_init.exit

nk_str_init.exit:                                 ; preds = %nk_memset.exit, %.loopexit46.i.i.thread.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.y, align 8, !tbaa !86
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5384) %0, i8 0, i64 5376, i1 false), !tbaa !10
  br label %nk_memset.exit

.loopexit46.i:                                    ; preds = %bb.b
  %i.c = sub nuw nsw i64 4, %i.b                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.c, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5380) %scevgep.i, i8 0, i64 5380, i1 false), !tbaa !10
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 5380
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i, i8 0, i64 %i.b, i1 false), !tbaa !11
  br label %nk_memset.exit

nk_memset.exit:                                   ; preds = %.loopexit46.i.thread, %.loopexit46.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5376
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.d, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.e, align 4, !tbaa !1105
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.f, align 8, !tbaa !1106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.g, align 8, !tbaa !1107
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !1120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.i, align 8, !tbaa !1110
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.j, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i8 0, i64 112, i1 false), !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.m, align 8, !tbaa !39
  %i.n = tail call noalias noundef dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.n, ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 32, ptr %i.p, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 32, ptr %i.q, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float 2.000000e+00, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.s, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @nk_malloc, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !48
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @nk_mfree, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.t, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %nk_memset.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @nk_textedit_select_all(ptr nofree noundef captures(none) initializes((172, 180)) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.a, align 4, !tbaa !1105
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.c, ptr %i.d, align 8, !tbaa !1106
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_textedit_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.b, null
  br i1 %.not9.i.i, label %nk_str_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %nk_str_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i, label %nk_str_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.g(ptr %i.i, ptr noundef nonnull %i.b) #50, !inline_history !1122
  br label %nk_str_free.exit

nk_str_free.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.j, align 8, !tbaa !86
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 5 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.e = load i32, ptr %i.d, align 4, !tbaa !898
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store i32 1, ptr %i.f, align 4, !tbaa !897
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1123
  %i.g = and i32 %1, 512
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store i8 1, ptr %i.h, align 8, !tbaa !1124
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 3 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store i32 0, ptr %i.d, align 4, !tbaa !897
  store i32 0, ptr %i.c, align 8, !tbaa !1123
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 32) i32 @nk_edit_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %5, null
  %i.d = select i1 %.not, ptr @nk_filter_default, ptr %5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !756  ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 460
  %i.h = load i32, ptr %i.g, align 4, !tbaa !898
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 13008
  %i.j = lshr i32 %1, 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18384
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.k, align 8, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13180 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !1105
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 13184 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !1106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 13176 ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !1107
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 13196
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !1120
  %i.p = trunc i32 %i.j to i8
  %i.q = and i8 %i.p, 1
  %i.r = xor i8 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 13192
  store i8 %i.r, ptr %i.s, align 8, !tbaa !1110
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 13188 ; 3 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13160
  store ptr %i.d, ptr %i.u, align 8, !tbaa !1111
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 13168 ; 3 uses
  store <2 x float> zeroinitializer, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 468
  %i.x = load i32, ptr %i.w, align 4, !tbaa !897
  %.not81 = icmp eq i32 %i.x, 0
  br i1 %.not81, label %.loopexit46.i.i.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1123
  %i.aa = icmp eq i32 %i.h, %i.z
  br i1 %i.aa, label %bb.d, label %.loopexit46.i.i.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = and i32 %1, 16
  %.not82 = icmp eq i32 %i.ab, 0
  br i1 %.not82, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %3, align 4, !tbaa !10
  %i.ad = tail call i32 @nk_utf_len(ptr noundef nonnull %2, i32 noundef %i.ac)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 476
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1125
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.af, %bb.f ], [ %i.ad, %bb.e ]
  store i32 %.sink, ptr %i.n, align 8, !tbaa !1107
  %i.ag = and i32 %1, 32
  %.not83 = icmp eq i32 %i.ag, 0
  br i1 %.not83, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 476
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1125
  %i.aj = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.ak = shufflevector <2 x i32> %i.aj, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.am = load <2 x i32>, ptr %i.al, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = phi <2 x i32> [ %i.ak, %bb.h ], [ %i.am, %bb.i ]
  store <2 x i32> %i.an, ptr %i.l, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !1124
  store i8 %i.ap, ptr %i.t, align 4, !tbaa !1108
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.ar = load <2 x i32>, ptr %i.aq, align 8, !tbaa !10
  %i.as = uitofp <2 x i32> %i.ar to <2 x float>
  store <2 x float> %i.as, ptr %i.v, align 8, !tbaa !8
  br label %.loopexit46.i.i.thread.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.b, %bb.c, %bb.j
  %.sink91 = phi i8 [ 1, %bb.j ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 13193
  store i8 %.sink91, ptr %i.at, align 1, !tbaa !1126
  %i.au = tail call i32 @llvm.smax.i32(i32 %4, i32 1) ; 2 uses
  %i.av = load i32, ptr %3, align 4, !tbaa !10
  %i.aw = add nsw i32 %i.au, -1
  %. = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.aw)
  store i32 %., ptr %3, align 4, !tbaa !10
  %i.ax = zext nneg i32 %i.au to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 13032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ay, i8 0, i64 112, i1 false), !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 13088
  store i32 0, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 13096
  store ptr %2, ptr %i.ba, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 13104
  store i64 %i.ax, ptr %i.bb, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 13144
  store i64 %i.ax, ptr %i.bc, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 13152 ; 2 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !86
  %i.be = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 13120 ; 2 uses
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !1127
  %i.bh = tail call i32 @nk_utf_len(ptr noundef nonnull %2, i32 noundef %i.be)
  store i32 %i.bh, ptr %i.bd, align 8, !tbaa !1104
  %i.bi = tail call i32 @nk_edit_buffer(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d) ; 2 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !1127
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %3, align 4, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 13193
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !1126
  %.not84 = icmp eq i8 %i.bm, 0
  br i1 %.not84, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit46.i.i.thread.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 476
  %i.bo = load <2 x i32>, ptr %i.n, align 8, !tbaa !10
  store <2 x i32> %i.bo, ptr %i.bn, align 4, !tbaa !10
  %i.bp = load i32, ptr %i.m, align 8, !tbaa !1106
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 484
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !1128
  %i.br = load i8, ptr %i.t, align 4, !tbaa !1108
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  store i8 %i.br, ptr %i.bs, align 8, !tbaa !1124
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.bu = load <2 x float>, ptr %i.v, align 8, !tbaa !8
  %i.bv = fptoui <2 x float> %i.bu to <2 x i32>
  store <2 x i32> %i.bv, ptr %i.bt, align 8, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %.loopexit46.i.i.thread.i.i, %bb.k, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.bi, %bb.k ], [ %i.bi, %.loopexit46.i.i.thread.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 32) i32 @nk_edit_buffer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 7 uses
  %.not63 = icmp eq ptr %i.b, null
  br i1 %.not63, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757
  %.not64 = icmp eq ptr %i.d, null
  br i1 %.not64, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.f, label %bb.f [
    i32 0, label %bb.u
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = or i32 %1, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.058 = phi i32 [ %i.g, %bb.e ], [ %1, %bb.d ]  ; 5 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !757
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !846
  %i.k = and i32 %i.j, 4096
  %.not66 = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 456 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 460 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !898  ; 3 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !898
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 468 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !897  ; 2 uses
  %.not67 = icmp eq i32 %i.q, 0
  br i1 %.not67, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.l, align 8, !tbaa !1123
  %i.s = icmp eq i32 %i.n, %i.r
  br i1 %i.s, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.t = and i32 %.058, 16
  %.not68 = icmp eq i32 %i.t, 0
  br i1 %.not68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1104
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 %i.v, ptr %i.w, align 8, !tbaa !1107
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = and i32 %.058, 32
  %.not69 = icmp eq i32 %i.x, 0
  br i1 %.not69, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1107 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !1105
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i32 %i.z, ptr %i.ab, align 8, !tbaa !1106
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = and i32 %.058, 64
  %.not70 = icmp eq i32 %i.ac, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !50
  %.pre = load i32, ptr %i.p, align 4, !tbaa !897
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = phi i32 [ %.pre, %bb.m ], [ %i.q, %bb.l ]
  %i.af = trunc i32 %i.ae to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.n
  %.sink = phi i8 [ %i.af, %bb.n ], [ 0, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %.sink, ptr %i.ag, align 1, !tbaa !1126
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !1124
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 180
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !1108
  %.not71 = icmp eq ptr %3, null
  %i.ak = select i1 %.not71, ptr @nk_filter_default, ptr %3
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 185
  %i.am = and i32 %.058, 1
  %.not72 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not72, i1 %.not66, i1 false
  %i.ao = select i1 %i.an, ptr %0, ptr null
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4952
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !754
  %i.at = load <2 x float>, ptr %4, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load <2 x float>, ptr %i.au, align 8
  %i.aw = tail call fastcc i32 @nk_do_edit(ptr noundef %i.ap, ptr noundef %i.aq, <2 x float> %i.at, <2 x float> %i.av, i32 noundef %.058, ptr noundef nonnull %i.ak, ptr noundef nonnull %2, ptr noundef %i.ar, ptr noundef %i.ao, ptr noundef %i.as) ; 3 uses
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !810
  %i.ay = and i32 %i.ax, 16
  %.not73 = icmp eq i32 %i.ay, 0
  br i1 %.not73, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !296
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !295
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = load i8, ptr %i.al, align 1, !tbaa !1126 ; 2 uses
  %.not74 = icmp eq i8 %i.bc, 0                   ; 2 uses
  %.not75 = icmp eq i8 %.sink, %i.bc
  %or.cond = select i1 %.not74, i1 true, i1 %.not75
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.p, align 4, !tbaa !897
  store i32 %i.n, ptr %i.l, align 8, !tbaa !1123
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.not76 = icmp ne i8 %.sink, 0
  %brmerge.not = and i1 %.not76, %.not74
  br i1 %brmerge.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.p, align 4, !tbaa !897
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.aw, %bb.s ], [ %i.aw, %bb.r ], [ %i.aw, %bb.t ]
end_hunk_14
begin_hunk_15_@nk_property_float:bb.a
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %3, align 8, !tbaa !32
  store i32 2, ptr %7, align 8, !tbaa !10
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store double %i.f, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %5, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !11
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.g = load double, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !11 ; 2 uses
  %i.h = load double, ptr %3, align 8, !tbaa !32
  %i.i = fcmp une double %i.g, %i.h
  store double %i.g, ptr %3, align 8, !tbaa !32
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %7, align 8, !tbaa !10
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %3, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %2, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %4, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %5, ptr %.sroa.718.0..sroa_idx, align 8
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 0)
  %i.e = load i32, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !11
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %7, align 8, !tbaa !10
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %3, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store float %2, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float %4, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %5, ptr %.sroa.719.0..sroa_idx, align 8
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.e = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !11
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %7, align 8, !tbaa !10
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store double %3, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %5, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !11
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.e = load double, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !11
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not83 = icmp eq ptr %i.b, null
  br i1 %.not83, label %nk_zero.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757
  %.not84 = icmp eq ptr %i.d, null
  br i1 %.not84, label %nk_zero.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %7, ptr noundef nonnull %0)
  %.not85 = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !756  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !757  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 248 ; 9 uses
  br i1 %.not85, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.i, i8 0, i64 196, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.e
  %i.l = sub nuw nsw i64 4, %i.k                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 0, i64 %i.l, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.i, i64 %i.l ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.k, i1 false), !tbaa !11
  br label %nk_zero.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = and i64 %i.n, 3                          ; 3 uses
  %.not.i.i86 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i86, label %.loopexit46.i.i89.thread, label %.loopexit46.i.i89

.loopexit46.i.i89.thread:                         ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(176) %i.p, i8 0, i64 176, i1 false), !tbaa !10
  br label %nk_zero.exit95

.loopexit46.i.i89:                                ; preds = %bb.f
  %i.q = sub nuw nsw i64 4, %i.o                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 0, i64 %i.q, i1 false), !tbaa !11
  %scevgep.i.i88 = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i88, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i.i94 = getelementptr i8, ptr %scevgep.i.i88, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i94, i8 0, i64 %i.o, i1 false), !tbaa !11
  %.pre = load i32, ptr %i.i, align 4, !tbaa !1171
  br label %nk_zero.exit95

nk_zero.exit95:                                   ; preds = %.loopexit46.i.i89.thread, %.loopexit46.i.i89
  %i.r = phi i32 [ 0, %.loopexit46.i.i89.thread ], [ %.pre, %.loopexit46.i.i89 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5980
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 252
  %i.u = load <2 x float>, ptr %7, align 8, !tbaa !8
  %i.v = load <2 x float>, ptr %i.s, align 4, !tbaa !8 ; 3 uses
  %i.w = fadd <2 x float> %i.u, %i.v
  store <2 x float> %i.w, ptr %i.t, align 4, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 260
  %i.z = load <2 x float>, ptr %i.x, align 8, !tbaa !8
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float -2.000000e+00), <2 x float> %i.z) ; 2 uses
  %i.ab = fmul <2 x float> %i.v, splat (float 2.000000e+00) ; 2 uses
  %i.ac = fcmp olt <2 x float> %i.aa, %i.ab
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.ab, <2 x float> %i.aa
  store <2 x float> %i.ad, ptr %i.y, align 4, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  %i.af = add nsw i32 %i.r, 1
  store i32 %i.af, ptr %i.i, align 4, !tbaa !1171
  %i.ag = sext i32 %i.r to i64
  %i.ah = getelementptr inbounds [44 x i8], ptr %i.ae, i64 %i.ag ; 8 uses
  store i32 %1, ptr %i.ah, align 4, !tbaa !1172
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %4, ptr %i.ai, align 4, !tbaa !1174
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5988 ; 5 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !1175 ; 4 uses
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
  store i32 %.sroa.011.0.insert.insert.i, ptr %i.aj, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %3, ptr %i.az, align 4
  %i.ba = fcmp olt float %5, %6                   ; 2 uses
  %i.bb = select i1 %i.ba, float %5, float %6     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store float %i.bb, ptr %i.bc, align 4, !tbaa !1176
  %i.bd = select i1 %i.ba, float %6, float %5     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store float %i.bd, ptr %i.be, align 4, !tbaa !1177
  %i.bf = fsub float %i.bd, %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store float %i.bf, ptr %i.bg, align 4, !tbaa !1178
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5996
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !739, !range !79, !noundef !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i8 %i.bi, ptr %i.bj, align 4, !tbaa !1179
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !752
  switch i32 %i.bk, label %nk_zero.exit [
    i32 1, label %nk_rgb_factor.exit107
    i32 2, label %nk_rgb_factor.exit119
    i32 0, label %bb.i
  ]

nk_rgb_factor.exit107:                            ; preds = %nk_rgb_factor.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.bn = load float, ptr %i.ak, align 4, !tbaa !1175 ; 2 uses
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
  %i.bw = load float, ptr %i.ak, align 4, !tbaa !1175 ; 2 uses
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
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !1180
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.ch = load float, ptr %i.ak, align 4, !tbaa !1175 ; 4 uses
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
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !1181 ; 2 uses
  %i.da = fmul float %i.cz, 2.000000e+00
  %i.db = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = fadd <2 x float> %i.cw, %i.dc
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = fcmp olt <2 x float> %i.cx, %i.df
  %i.dh = select <2 x i1> %i.dg, <2 x float> %i.df, <2 x float> %i.cx
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dh)
  %i.dj = load float, ptr %i.ce, align 8, !tbaa !1180
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.dl = load float, ptr %i.ak, align 4, !tbaa !1175 ; 4 uses
  %i.dm = load i32, ptr %i.dk, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i138 = lshr i32 %i.dm, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i139 = lshr i32 %i.dm, 16 ; 2 uses
  %i.dn = fcmp oeq float %i.dl, 1.000000e+00
  br i1 %i.dn, label %bb.l, label %bb.m

end_hunk_15
begin_hunk_16_@nk_chart_push_slot:bb.a
  br i1 %i.ew, label %bb.u, label %bb.v

bb.u:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit135.thread.i
  %i.ex = fadd <2 x float> %i.ct, splat (float -2.000000e+00)
  tail call void @nk_fill_rect(ptr noundef nonnull %i.p, <2 x float> %i.ex, <2 x float> splat (float 4.000000e+00), float noundef 0.000000e+00, i32 %.sroa.05.1.i)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %nk_input_is_mouse_hovering_rect.exit135.thread.i
  store <2 x float> %i.ct, ptr %i.cu, align 4, !tbaa !8
  br label %nk_chart_push_line.exit

nk_chart_push_line.exit:                          ; preds = %bb.k, %bb.l, %bb.v
  %.0.i = phi i32 [ %.1.i, %bb.v ], [ %.0119.i, %bb.l ], [ %.0119.i, %bb.k ]
  %storemerge.in.i = load i32, ptr %i.x, align 4, !tbaa !1183
  %storemerge.i = add nsw i32 %storemerge.in.i, 1
  store i32 %storemerge.i, ptr %i.x, align 4, !tbaa !1183
  br label %nk_chart_push_column.exit

bb.w:                                             ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !830, !range !79, !noundef !80
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !1183 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !1174 ; 4 uses
  %.not.i27 = icmp slt i32 %i.fd, %i.ff
  br i1 %.not.i27, label %bb.x, label %nk_chart_push_column.exit

bb.x:                                             ; preds = %bb.w
  %.not112.i = icmp eq i32 %i.ff, 0
  br i1 %.not112.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fg = add nsw i32 %i.ff, -1
  %i.fh = sitofp i32 %i.fg to float
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 260
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !1189
  %i.fk = fsub float %i.fj, %i.fh
  %i.fl = sitofp i32 %i.ff to float
  %i.fm = fdiv float %i.fk, %i.fl
  %.sroa.13.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fm, i64 0
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.13.0.i = phi <2 x float> [ %.sroa.13.8.vec.insert.i, %bb.y ], [ zeroinitializer, %bb.x ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.022.0.copyload.i = load i32, ptr %i.fn, align 4 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !1187 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !1178 ; 5 uses
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
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !1176 ; 3 uses
  %i.ga = fcmp olt float %i.fz, 0.000000e+00
  %i.gb = fneg float %i.fz
  %i.gc = select i1 %i.ga, float %i.gb, float %i.fz
  %i.gd = fadd float %1, %i.gc
  %i.ge = fcmp olt float %i.fr, 0.000000e+00
  %i.gf = fneg float %i.fr
  %i.gg = select i1 %i.ge, float %i.gf, float %i.fr
  %i.gh = fdiv float %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !1186
  %i.gk = fadd float %i.fp, %i.gj
  %i.gl = fneg float %i.fp
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gh, float %i.gk)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.go = load float, ptr %i.gn, align 4, !tbaa !1177
  %i.gp = fsub float %1, %i.go
  %i.gq = fdiv float %i.gp, %i.fr                 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !1186
  %i.gt = fcmp olt float %i.gq, 0.000000e+00
  %i.gu = fneg float %i.gq
  %i.gv = select i1 %i.gt, float %i.gu, float %i.gq
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.gv, float %i.gs)
  %i.gx = fsub float %i.gw, %i.fw
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink.i = phi float [ %i.gx, %bb.ab ], [ %i.gm, %bb.aa ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 252
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !1184
  %i.ha = sitofp i32 %i.fd to float               ; 2 uses
  %.sroa.13.8.vec.extract.i = extractelement <2 x float> %.sroa.13.0.i, i64 0 ; 2 uses
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.ha, float %.sroa.13.8.vec.extract.i, float %i.gz)
  %i.hc = fadd float %i.hb, %i.ha                 ; 3 uses
  %i.hd = insertelement <2 x float> poison, float %i.hc, i64 0
  %.sroa.0.0.vec.insert5.i = insertelement <2 x float> %i.hd, float %.sink.i, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !846
  %i.hg = and i32 %i.hf, 4096
  %i.hh = icmp ne i32 %i.hg, 0
  %or.cond.not.i29 = or i1 %i.hh, %i.fb
  br i1 %or.cond.not.i29, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !714 ; 2 uses
  %i.hl = fcmp ole float %i.hc, %i.hk
  %i.hm = fadd float %.sroa.13.8.vec.extract.i, %i.hc
  %i.hn = fcmp olt float %i.hk, %i.hm
  %or.cond.i30 = select i1 %i.hl, i1 %i.hn, i1 false
  br i1 %or.cond.i30, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.hp = load float, ptr %i.ho, align 8, !tbaa !715 ; 2 uses
  %i.hq = fcmp ole float %.sink.i, %i.hp
  %i.hr = fadd float %i.fw, %.sink.i
  %i.hs = fcmp olt float %i.hp, %i.hr
  %or.cond117.i = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %or.cond117.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ht = load i8, ptr %i.hi, align 4, !tbaa !709, !range !79, !noundef !80
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !700
  %.not114.i = icmp eq i32 %i.hw, 0
  %i.hx = select i1 %.not114.i, i32 1, i32 3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hy = phi i32 [ 1, %bb.af ], [ %i.hx, %bb.ag ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.022.0.copyload23.i = load i32, ptr %i.hz, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ad, %bb.ac
  %.099.i = phi i32 [ %i.hy, %bb.ah ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.ac ]
  %.sroa.022.0.i = phi i32 [ %.sroa.022.0.copyload23.i, %bb.ah ], [ %.sroa.022.0.copyload.i, %bb.ad ], [ %.sroa.022.0.copyload.i, %bb.ae ], [ %.sroa.022.0.copyload.i, %bb.ac ]
  tail call void @nk_fill_rect(ptr noundef nonnull %i.ey, <2 x float> %.sroa.0.0.vec.insert5.i, <2 x float> %.sroa.13.12.vec.insert.i, float noundef 0.000000e+00, i32 %.sroa.022.0.i)
  %i.ia = load i32, ptr %i.fc, align 4, !tbaa !1183
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.fc, align 4, !tbaa !1183
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %nk_memset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 3                          ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.loopexit46.i.thread, label %.loopexit46.i

.loopexit46.i.thread:                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.e, i8 0, i64 196, i1 false), !tbaa !10
  br label %nk_memset.exit

.loopexit46.i:                                    ; preds = %bb.c
  %i.h = sub nuw nsw i64 4, %i.g                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i8 0, i64 %i.h, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.h ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i, i8 0, i64 %i.g, i1 false), !tbaa !11
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
  %i.f = load float, ptr %i.e, align 4, !tbaa !8  ; 6 uses
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
  %i.i = load float, ptr %gep, align 4, !tbaa !8  ; 4 uses
  %i.j = fcmp olt float %i.i, %.04149
  %..041 = select i1 %i.j, float %i.i, float %.04149 ; 2 uses
  %i.k = fcmp olt float %i.i, %.050
  %i.l = select i1 %i.k, float %.050, float %i.i  ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.m, i64 4
  %i.n = load float, ptr %gep.1, align 4, !tbaa !8 ; 4 uses
  %i.o = fcmp olt float %i.n, %..041
  %..041.1 = select i1 %i.o, float %i.n, float %..041 ; 3 uses
  %i.p = fcmp olt float %i.n, %i.l
  %i.q = select i1 %i.p, float %i.l, float %i.n   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1190

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
  %i.r = load float, ptr %gep.epil, align 4, !tbaa !8 ; 4 uses
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
  %i.af = load float, ptr %gep68, align 4, !tbaa !8
  %i.ag = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.af, i32 noundef 0) ; 0 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge54, label %.lr.ph53, !llvm.loop !1191

._crit_edge54:                                    ; preds = %.lr.ph53, %._crit_edge.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !756 ; 2 uses
  %.not6.i = icmp eq ptr %i.ai, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !757
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = and i64 %i.am, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.al, i8 0, i64 196, i1 false), !tbaa !10
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ao = sub nuw nsw i64 4, %i.an                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 0, i64 %i.ao, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.al, i64 %i.ao ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.an, i1 false), !tbaa !11
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1192

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
  br i1 %exitcond50.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !1193

._crit_edge48:                                    ; preds = %.lr.ph47, %._crit_edge.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !756 ; 2 uses
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !757
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 248 ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.ae, i8 0, i64 196, i1 false), !tbaa !10
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ah = sub nuw nsw i64 4, %i.ag                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 0, i64 %i.ah, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.ae, i64 %i.ah ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.ag, i1 false), !tbaa !11
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 15 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_do_color_picker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 2 uses
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
  %i.j = load i32, ptr %i.i, align 4, !tbaa !846
  %i.k = and i32 %i.j, 4096
  %.not29 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not29, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 21 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !754  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %nk_do_color_picker.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 5 uses
  %i.r = load <2 x float>, ptr %3, align 8        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !166 ; 5 uses
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
  %i.an = shufflevector <2 x float> %.sroa.18.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x float> %i.an, float %i.am, i64 0
  %i.ap = fsub <2 x float> %.sroa.0.1.i.i.i.i, %i.ao ; 2 uses
  %i.aq = fadd float %.sroa.0.0.vec.extract18.i.i.i.i, f0x1E3CE508
  %i.ar = extractelement <2 x float> %i.ap, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float 6.000000e+00, float f0x1E3CE508)
  %i.at = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.as, i64 1
  %i.av = fdiv <2 x float> %i.ap, %i.au           ; 2 uses
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
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !8
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
  %i.bs = load float, ptr %i.br, align 4, !tbaa !715
  %i.bt = fsub float %i.bs, %i.v
  %i.bu = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.bv = fdiv float %i.bt, %i.bu                 ; 3 uses
  %i.bw = fcmp ogt float %i.bv, 1.000000e+00
  %i.bx = fcmp ule float %i.bv, 0.000000e+00      ; 2 uses
  %brmerge13.i.i = or i1 %i.bx, %i.bw
  %.mux14.i.i = select i1 %i.bx, float 0.000000e+00, float 1.000000e+00
  br i1 %brmerge13.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i = phi float [ %i.ba, %bb.i ], [ %.mux14.i.i, %bb.j ], [ %i.bv, %bb.k ]
  %.1.i.i = phi i8 [ %.0.i.i, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ] ; 3 uses
  br i1 %.not169.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.by = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.ae, <2 x float> %.sroa.20.12.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !715
  %i.cb = fsub float %i.ca, %i.v
  %i.cc = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.cd = fdiv float %i.cb, %i.cc                 ; 3 uses
  %i.ce = fcmp ogt float %i.cd, 1.000000e+00
  %i.cf = fcmp ule float %i.cd, 0.000000e+00
  %.mux17.i.i = select i1 %i.ce, float 1.000000e+00, float %i.cd
  %i.cg = fsub float 1.000000e+00, %.mux17.i.i
  %i.ch = select i1 %i.cf, float 1.000000e+00, float %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.11.0.i.i = phi float [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.l ], [ %i.ch, %bb.n ], [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.m ] ; 2 uses
  %.2.i.i = phi i8 [ %.1.i.i, %bb.l ], [ 1, %bb.n ], [ %.1.i.i, %bb.m ]
  %i.ci = load i32, ptr %i.m, align 8, !tbaa !10
  %i.cj = and i32 %i.ci, 2
  %..i.i = or disjoint i32 %i.cj, 4               ; 2 uses
  store i32 %..i.i, ptr %i.m, align 8, !tbaa !10
  %i.ck = trunc nuw i8 %.1.i.i to i1
  br i1 %i.ck, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.cl = extractelement <2 x float> %i.bp, i64 0 ; 3 uses
  %i.cm = fcmp ugt float %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bp, <2 x i32> <i32 3, i32 1>
  %.sroa.0.4.vec.insert.i.i91.i.i = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %nk_hsva_colorfv.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.co = fdiv float %.sroa.0.0.i.i, f0x3E2AAAAB  ; 2 uses
  %i.cp = fptosi float %i.co to i32               ; 2 uses
end_hunk_16
begin_hunk_17_@nk_draw_selectable:bb.a

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @nk_textedit_discard_undo(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !1094 ; 2 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %nk_memcopy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 4, !tbaa !1101
  %i.f = icmp sgt i16 %i.e, -1
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !1099 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5188 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !1095
  %i.k = sub i16 %i.j, %i.h                       ; 2 uses
  store i16 %i.k, ptr %i.i, align 4, !tbaa !1095
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  %i.m = sext i16 %i.h to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = sext i16 %i.k to i64
  %i.p = shl nsw i64 %i.o, 2
  %i.q = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, i64 noundef %i.p) ; 0 uses
  %i.r = load i16, ptr %i.a, align 4, !tbaa !1094 ; 5 uses
  %i.s = icmp sgt i16 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i16 %i.r to i64    ; 3 uses
  %min.iters.check = icmp ult i16 %i.r, 9
  br i1 %min.iters.check, label %.lr.ph.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.t = and i64 %wide.trip.count, 7              ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 8, i64 %i.t
  %n.vec = sub nsw i64 %wide.trip.count, %i.v     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue52, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue52 ] ; 9 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 44 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 68 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.am = load i16, ptr %i.ae, align 4, !tbaa !1101 ; 2 uses
  %i.an = load i16, ptr %i.af, align 4, !tbaa !1101 ; 2 uses
  %i.ao = load i16, ptr %i.ag, align 4, !tbaa !1101 ; 2 uses
  %i.ap = load i16, ptr %i.ah, align 4, !tbaa !1101 ; 2 uses
  %i.aq = load i16, ptr %i.ai, align 4, !tbaa !1101 ; 2 uses
  %i.ar = load i16, ptr %i.aj, align 4, !tbaa !1101 ; 2 uses
  %i.as = load i16, ptr %i.ak, align 4, !tbaa !1101 ; 2 uses
  %i.at = load i16, ptr %i.al, align 4, !tbaa !1101 ; 2 uses
  %i.au = insertelement <8 x i16> poison, i16 %i.am, i64 0
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 1
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 2
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ap, i64 3
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.aq, i64 4
  %i.az = insertelement <8 x i16> %i.ay, i16 %i.ar, i64 5
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 6
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 7
  %i.bc = icmp sgt <8 x i16> %i.bb, splat (i16 -1) ; 8 uses
  %i.bd = extractelement <8 x i1> %i.bc, i64 0
  br i1 %i.bd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.be = sub i16 %i.am, %i.h
  store i16 %i.be, ptr %i.ae, align 4, !tbaa !1101
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bf = extractelement <8 x i1> %i.bc, i64 1
  br i1 %i.bf, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue
  %i.bg = sub i16 %i.an, %i.h
  store i16 %i.bg, ptr %i.af, align 4, !tbaa !1101
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue
  %i.bh = extractelement <8 x i1> %i.bc, i64 2
  br i1 %i.bh, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.bi = sub i16 %i.ao, %i.h
  store i16 %i.bi, ptr %i.ag, align 4, !tbaa !1101
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.bj = extractelement <8 x i1> %i.bc, i64 3
  br i1 %i.bj, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.bk = sub i16 %i.ap, %i.h
  store i16 %i.bk, ptr %i.ah, align 4, !tbaa !1101
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.bl = extractelement <8 x i1> %i.bc, i64 4
  br i1 %i.bl, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.bm = sub i16 %i.aq, %i.h
  store i16 %i.bm, ptr %i.ai, align 4, !tbaa !1101
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.bn = extractelement <8 x i1> %i.bc, i64 5
  br i1 %i.bn, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.bo = sub i16 %i.ar, %i.h
  store i16 %i.bo, ptr %i.aj, align 4, !tbaa !1101
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.bp = extractelement <8 x i1> %i.bc, i64 6
  br i1 %i.bp, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.bq = sub i16 %i.as, %i.h
  store i16 %i.bq, ptr %i.ak, align 4, !tbaa !1101
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.br = extractelement <8 x i1> %i.bc, i64 7
  br i1 %i.br, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.bs = sub i16 %i.at, %i.h
  store i16 %i.bs, ptr %i.al, align 4, !tbaa !1101
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %.lr.ph.preheader70, label %vector.body, !llvm.loop !1249

.lr.ph.preheader70:                               ; preds = %pred.store.continue52, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %pred.store.continue52 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader70, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.ph, %.lr.ph.preheader70 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !1101 ; 2 uses
  %i.bx = icmp sgt i16 %i.bw, -1
  br i1 %i.bx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.by = sub i16 %i.bw, %i.h
  store i16 %i.by, ptr %i.bv, align 4, !tbaa !1101
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1250

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.b
  %i.bz = phi i16 [ %i.b, %bb.b ], [ %i.r, %bb.c ], [ %i.r, %bb.e ]
  %i.ca = add i16 %i.bz, -1                       ; 3 uses
  store i16 %i.ca, ptr %i.a, align 4, !tbaa !1094
  %i.cb = getelementptr i8, ptr %0, i64 12        ; 3 uses
  %i.cc = sext i16 %i.ca to i64
  %i.cd = mul nsw i64 %i.cc, 12                   ; 3 uses
  %i.ce = icmp eq i16 %i.ca, 0
  br i1 %i.ce, label %nk_memcopy.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.cf = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cg = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ch = or i64 %i.cf, %i.cg
  %i.ci = and i64 %i.ch, 3
  %.not96.i = icmp eq i64 %i.ci, 0
  br i1 %.not96.i, label %.loopexit105.i, label %.loopexit105.loopexit.i

.loopexit105.loopexit.i:                          ; preds = %bb.f
  %i.cj = xor i64 %i.cf, %i.cg
  %i.ck = and i64 %i.cj, 3
  %.not = icmp eq i64 %i.ck, 0
  %.074.i = select i1 %.not, i64 4, i64 %i.cd     ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %0, ptr align 4 %i.cb, i64 %.074.i, i1 false), !tbaa !11
  %i.cl = getelementptr i8, ptr %0, i64 %.074.i
  %scevgep = getelementptr i8, ptr %i.cl, i64 12
  %scevgep32 = getelementptr i8, ptr %0, i64 %.074.i
  %i.cm = sub nsw i64 %i.cd, %.074.i
  br label %.loopexit105.i

.loopexit105.i:                                   ; preds = %.loopexit105.loopexit.i, %bb.f
  %.082.i = phi i64 [ %i.cd, %bb.f ], [ %i.cm, %.loopexit105.loopexit.i ] ; 3 uses
  %.165.i = phi ptr [ %0, %bb.f ], [ %scevgep32, %.loopexit105.loopexit.i ] ; 5 uses
  %.1.i = phi ptr [ %i.cb, %bb.f ], [ %scevgep, %.loopexit105.loopexit.i ] ; 5 uses
  %i.cn = lshr i64 %.082.i, 2                     ; 5 uses
  %.not98.i = icmp eq i64 %i.cn, 0
  br i1 %.not98.i, label %.loopexit104.i, label %.preheader103.i.preheader

.preheader103.i.preheader:                        ; preds = %.loopexit105.i
  %.1.i54 = ptrtoaddr ptr %.1.i to i64
  %.165.i53 = ptrtoaddr ptr %.165.i to i64
  %min.iters.check56 = icmp ult i64 %.082.i, 32
  %i.co = sub i64 %.1.i54, %.165.i53
  %diff.check = icmp ugt i64 %i.co, -32
  %or.cond = select i1 %min.iters.check56, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader103.i.preheader68, label %vector.ph57

vector.ph57:                                      ; preds = %.preheader103.i.preheader
  %n.vec58 = and i64 %i.cn, 4611686018427387896   ; 3 uses
  %i.cp = and i64 %i.cn, 7
  %i.cq = shl nuw i64 %n.vec58, 2                 ; 2 uses
  %i.cr = getelementptr i8, ptr %.165.i, i64 %i.cq ; 2 uses
  %i.cs = getelementptr i8, ptr %.1.i, i64 %i.cq  ; 2 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next63, %vector.body59 ] ; 2 uses
  %i.ct = shl i64 %index60, 2                     ; 2 uses
  %next.gep = getelementptr i8, ptr %.165.i, i64 %i.ct ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.1.i, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !10
  %wide.load62 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !10
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !10
  store <4 x i32> %wide.load62, ptr %i.cv, align 4, !tbaa !10
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %i.cw = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.cw, label %middle.block64, label %vector.body59, !llvm.loop !1251

middle.block64:                                   ; preds = %vector.body59
  %cmp.n = icmp eq i64 %i.cn, %n.vec58
  br i1 %cmp.n, label %.loopexit104.i, label %.preheader103.i.preheader68

.preheader103.i.preheader68:                      ; preds = %.preheader103.i.preheader, %middle.block64
  %.276.i.ph = phi i64 [ %i.cn, %.preheader103.i.preheader ], [ %i.cp, %middle.block64 ] ; 4 uses
  %.266.i.ph = phi ptr [ %.165.i, %.preheader103.i.preheader ], [ %i.cr, %middle.block64 ] ; 2 uses
  %.2.i.ph = phi ptr [ %.1.i, %.preheader103.i.preheader ], [ %i.cs, %middle.block64 ] ; 2 uses
  %i.cx = add nsw i64 %.276.i.ph, -1
  %xtraiter = and i64 %.276.i.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader103.i.prol.loopexit, label %.preheader103.i.prol

.preheader103.i.prol:                             ; preds = %.preheader103.i.preheader68, %.preheader103.i.prol
  %.276.i.prol = phi i64 [ %i.db, %.preheader103.i.prol ], [ %.276.i.ph, %.preheader103.i.preheader68 ]
  %.266.i.prol = phi ptr [ %i.da, %.preheader103.i.prol ], [ %.266.i.ph, %.preheader103.i.preheader68 ] ; 2 uses
  %.2.i.prol = phi ptr [ %i.cz, %.preheader103.i.prol ], [ %.2.i.ph, %.preheader103.i.preheader68 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader103.i.prol ], [ 0, %.preheader103.i.preheader68 ]
  %i.cy = load i32, ptr %.2.i.prol, align 4, !tbaa !10
  store i32 %i.cy, ptr %.266.i.prol, align 4, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %.2.i.prol, i64 4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.266.i.prol, i64 4 ; 3 uses
  %i.db = add nsw i64 %.276.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader103.i.prol.loopexit, label %.preheader103.i.prol, !llvm.loop !1252

.preheader103.i.prol.loopexit:                    ; preds = %.preheader103.i.prol, %.preheader103.i.preheader68
  %.lcssa69.unr = phi ptr [ poison, %.preheader103.i.preheader68 ], [ %i.cz, %.preheader103.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.preheader103.i.preheader68 ], [ %i.da, %.preheader103.i.prol ]
  %.276.i.unr = phi i64 [ %.276.i.ph, %.preheader103.i.preheader68 ], [ %i.db, %.preheader103.i.prol ]
  %.266.i.unr = phi ptr [ %.266.i.ph, %.preheader103.i.preheader68 ], [ %i.da, %.preheader103.i.prol ]
  %.2.i.unr = phi ptr [ %.2.i.ph, %.preheader103.i.preheader68 ], [ %i.cz, %.preheader103.i.prol ]
  %i.dc = icmp ult i64 %i.cx, 7
  br i1 %i.dc, label %.loopexit104.i, label %.preheader103.i

.preheader103.i:                                  ; preds = %.preheader103.i.prol.loopexit, %.preheader103.i
  %.276.i = phi i64 [ %i.eb, %.preheader103.i ], [ %.276.i.unr, %.preheader103.i.prol.loopexit ]
  %.266.i = phi ptr [ %i.ea, %.preheader103.i ], [ %.266.i.unr, %.preheader103.i.prol.loopexit ] ; 9 uses
  %.2.i = phi ptr [ %i.dz, %.preheader103.i ], [ %.2.i.unr, %.preheader103.i.prol.loopexit ] ; 9 uses
  %i.dd = load i32, ptr %.2.i, align 4, !tbaa !10
  store i32 %i.dd, ptr %.266.i, align 4, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %.266.i, i64 4
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !10
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.266.i, i64 8
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !10
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %.2.i, i64 12
  %i.dl = getelementptr inbounds nuw i8, ptr %.266.i, i64 12
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !10
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %.266.i, i64 16
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !10
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %.2.i, i64 20
  %i.dr = getelementptr inbounds nuw i8, ptr %.266.i, i64 20
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !10
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %.2.i, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %.266.i, i64 24
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !10
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !10
  %i.dw = getelementptr inbounds nuw i8, ptr %.2.i, i64 28
  %i.dx = getelementptr inbounds nuw i8, ptr %.266.i, i64 28
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !10
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %.2.i, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.266.i, i64 32 ; 2 uses
  %i.eb = add nsw i64 %.276.i, -8                 ; 2 uses
  %.not99.i.7 = icmp eq i64 %i.eb, 0
  br i1 %.not99.i.7, label %.loopexit104.i, label %.preheader103.i, !llvm.loop !1253

.loopexit104.i:                                   ; preds = %.preheader103.i.prol.loopexit, %.preheader103.i, %middle.block64, %.loopexit105.i
  %.367.i = phi ptr [ %.165.i, %.loopexit105.i ], [ %i.cr, %middle.block64 ], [ %.lcssa.unr, %.preheader103.i.prol.loopexit ], [ %i.ea, %.preheader103.i ] ; 3 uses
  %.3.i = phi ptr [ %.1.i, %.loopexit105.i ], [ %i.cs, %middle.block64 ], [ %.lcssa69.unr, %.preheader103.i.prol.loopexit ], [ %i.dz, %.preheader103.i ] ; 3 uses
  %i.ec = and i64 %.082.i, 3                      ; 3 uses
  %.not100.i = icmp eq i64 %i.ec, 0
  br i1 %.not100.i, label %nk_memcopy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit104.i
  %i.ed = load i8, ptr %.3.i, align 1, !tbaa !11
  store i8 %i.ed, ptr %.367.i, align 1, !tbaa !11
  %.not101.i = icmp eq i64 %i.ec, 1
  br i1 %.not101.i, label %nk_memcopy.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.367.i, i64 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !11
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !11
  %.not101.i.1 = icmp eq i64 %i.ec, 2
  br i1 %.not101.i.1, label %nk_memcopy.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.eh = getelementptr inbounds nuw i8, ptr %.367.i, i64 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.3.i, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !11
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !11
  br label %nk_memcopy.exit

nk_memcopy.exit:                                  ; preds = %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.loopexit104.i, %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_textedit_key(ptr noundef %0, i32 noundef range(i32 -2147483648, 30) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef readonly captures(address_is_null) %3, float noundef %4) unnamed_addr #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 3 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 3 uses
  %i.p = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %struct.nk_text_find, align 4       ; 7 uses
  %6 = alloca %struct.nk_text_find, align 4       ; 7 uses
  %7 = alloca %struct.nk_text_find, align 4       ; 4 uses
  %8 = alloca %struct.nk_text_find, align 4       ; 4 uses
  %9 = alloca %struct.nk_text_find, align 4       ; 5 uses
  %10 = alloca %struct.nk_text_find, align 4      ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  switch i32 %1, label %nk_textedit_clamp.exit295 [
    i32 18, label %bb.fl
    i32 17, label %bb.er
    i32 20, label %bb.en
    i32 19, label %bb.ej
    i32 6, label %bb.ed
    i32 3, label %bb.dx
    i32 10, label %bb.cu
    i32 11, label %bb.bo
    i32 25, label %bb.ba
    i32 21, label %bb.d
    i32 22, label %bb.e
    i32 23, label %bb.f
    i32 14, label %bb.g
    i32 15, label %bb.h
    i32 16, label %bb.i
    i32 12, label %bb.j
    i32 13, label %bb.aa
    i32 24, label %bb.al
  ]
end_hunk_17
