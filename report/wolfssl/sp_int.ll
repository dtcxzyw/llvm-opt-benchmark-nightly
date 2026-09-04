Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@sp_forcezero:bb.a
  %i.k = add nsw i64 %.01320.i10, -1
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.preheader16.i.loopexit.split.loop.exit14, %.preheader16.i.loopexit.split.loop.exit17, %.preheader16.i.loopexit.split.loop.exit20, %.lr.ph.i.2, %bb.b
  %.013.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.j, %.preheader16.i.loopexit.split.loop.exit17 ], [ %i.i, %.preheader16.i.loopexit.split.loop.exit14 ], [ %i.k, %.preheader16.i.loopexit.split.loop.exit20 ], [ %i.v, %.lr.ph.i.2 ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.a, %bb.b ], [ %i.o, %.preheader16.i.loopexit.split.loop.exit17 ], [ %i.r, %.preheader16.i.loopexit.split.loop.exit14 ], [ %i.z, %.preheader16.i.loopexit.split.loop.exit20 ], [ %i.u, %.lr.ph.i.2 ] ; 3 uses
  %i.l = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.l, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.m = and i64 %.013.lcssa.i, -8                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.m, i1 false), !tbaa !36
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.m
  %i.n = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.01221.i9, i64 2 ; 3 uses
  store i8 0, ptr %i.z, align 1, !tbaa !41
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 7
  %.not.i.1 = icmp eq i64 %i.q, 0
  br i1 %.not.i.1, label %.preheader16.i.loopexit.split.loop.exit17, label %.lr.ph.i.1, !llvm.loop !51

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01221.i9, i64 3 ; 3 uses
  store i8 0, ptr %i.o, align 1, !tbaa !41
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 7
  %.not.i.2 = icmp eq i64 %i.t, 0
  br i1 %.not.i.2, label %.preheader16.i.loopexit.split.loop.exit14, label %.lr.ph.i.2, !llvm.loop !51

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.u = getelementptr inbounds nuw i8, ptr %.01221.i9, i64 4 ; 3 uses
  store i8 0, ptr %i.r, align 1, !tbaa !41
  %i.v = add nsw i64 %.01320.i10, -4              ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = and i64 %i.w, 7
  %.not.i.3 = icmp eq i64 %i.x, 0
  br i1 %.not.i.3, label %.preheader16.i, label %.lr.ph.i.3, !llvm.loop !51

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %ForceZero.exit, label %.lr.ph, !llvm.loop !51

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i.3
  %.01320.i10 = phi i64 [ %i.v, %.lr.ph.i.3 ], [ %i.e, %.lr.ph.i.preheader ] ; 4 uses
  %.01221.i9 = phi ptr [ %i.u, %.lr.ph.i.3 ], [ %i.a, %.lr.ph.i.preheader ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01221.i9, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i9, align 1, !tbaa !41
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 7
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %.preheader16.i.loopexit.split.loop.exit20, label %.lr.ph.i, !llvm.loop !51

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.n, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.012.lcssa.i, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !41
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph31.preheader.i, %.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i.3, %.lr.ph.i.preheader, %._crit_edge.i
  store volatile i16 0, ptr %0, align 8, !tbaa !34
  store volatile i64 0, ptr %i.a, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %ForceZero.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_copy(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.not.not20 = or i1 %i.a, %i.b           ; 2 uses
  %.not = icmp eq ptr %0, %1                      ; 2 uses
  %brmerge = or i1 %.not, %or.cond.not.not20
  %i.c = xor i1 %or.cond.not.not20, true
  %i.d = and i1 %.not, %i.c
  %spec.store.select.mux = select i1 %i.d, i32 0, i32 -98
  br i1 %brmerge, label %.thread16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = icmp ugt i16 %i.e, %i.g
  br i1 %i.h, label %.thread16, label %.thread

.thread:                                          ; preds = %bb.b
  %i.i = icmp eq i16 %i.e, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !36
  br label %_sp_copy.exit

bb.d:                                             ; preds = %.thread
  %i.k = zext i16 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.m, i64 %i.n, i1 false)
  %.pre.i = load i16, ptr %0, align 8, !tbaa !40
  br label %_sp_copy.exit

_sp_copy.exit:                                    ; preds = %bb.c, %bb.d
  %i.o = phi i16 [ %.pre.i, %bb.d ], [ 0, %bb.c ]
  store i16 %i.o, ptr %1, align 8, !tbaa !40
  br label %.thread16

.thread16:                                        ; preds = %bb.a, %bb.b, %_sp_copy.exit
  %.1 = phi i32 [ 0, %_sp_copy.exit ], [ -98, %bb.b ], [ %spec.store.select.mux, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_init_copy(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sp_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store volatile i16 0, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store volatile i64 0, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store volatile i16 129, ptr %i.c, align 2, !tbaa !37
  %i.d = icmp eq ptr %1, null
  %.not.i = icmp eq ptr %1, %0                    ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.d
  %spec.store.select.mux.i = select i1 %.not.i, i32 0, i32 -98
  br i1 %brmerge.i, label %sp_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.f = icmp ugt i16 %i.e, 129
  br i1 %i.f, label %sp_init.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.g = icmp eq i16 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread.i
  store i64 0, ptr %i.b, align 8, !tbaa !36
  br label %_sp_copy.exit.i

bb.e:                                             ; preds = %.thread.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = shl nuw nsw i16 %i.e, 3
  %i.j = zext nneg i16 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 8 %i.h, i64 %i.j, i1 false)
  %.pre.i.i = load i16, ptr %1, align 8, !tbaa !40
  br label %_sp_copy.exit.i

_sp_copy.exit.i:                                  ; preds = %bb.e, %bb.d
  %i.k = phi i16 [ %.pre.i.i, %bb.e ], [ 0, %bb.d ]
  store i16 %i.k, ptr %0, align 8, !tbaa !40
  br label %sp_init.exit

sp_init.exit:                                     ; preds = %_sp_copy.exit.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -98, %bb.a ], [ 0, %_sp_copy.exit.i ], [ -98, %bb.c ], [ %spec.store.select.mux.i, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define range(i32 -98, 1) i32 @sp_exch(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %.thread39

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !39
  %i.e = load i16, ptr %1, align 8, !tbaa !40
  %i.f = icmp ult i16 %i.d, %i.e
  br i1 %i.f, label %.thread39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !39
  %i.i = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.j = icmp ult i16 %i.h, %i.i
  br i1 %i.j, label %.thread39, label %.thread

.thread:                                          ; preds = %bb.c
  %i.k = icmp ult i16 %i.i, 2
  %i.l = zext i16 %i.i to i64
  %2 = add nuw nsw i64 %i.l, 4294967295
  %3 = and i64 %2, 4294967295
  %i.m = add nuw nsw i64 %3, 2
  %i.n = select i1 %i.k, i64 2, i64 %i.m
  %i.o = tail call ptr @llvm.stacksave.p0()
  %i.p = alloca i64, i64 %i.n, align 16           ; 3 uses
  %i.q = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.r = icmp ult i16 %i.q, 130                   ; 2 uses
  %.1 = select i1 %i.r, i32 0, i32 -98
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.s = load i16, ptr %i.c, align 2, !tbaa !39
  %i.t = load i16, ptr %i.g, align 2, !tbaa !39
  %i.u = icmp samesign ult i16 %i.q, 2
  %i.v = shl nuw nsw i16 %i.q, 3
  %4 = zext nneg i16 %i.v to i64
  %5 = add nuw nsw i64 %4, 34359738360
  %6 = and i64 %5, 34359738360
  %7 = add nuw nsw i64 %6, 16
  %8 = select i1 %i.u, i64 16, i64 %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %8, i1 false)
  %i.w = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.x = icmp ult i16 %i.w, 2
  %i.y = zext i16 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %9 = add nuw nsw i64 %i.z, 34359738360
  %10 = and i64 %9, 34359738360
  %i.aa = add nuw nsw i64 %10, 16
  %i.ab = select i1 %i.x, i64 16, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(1) %1, i64 %i.ab, i1 false)
  %i.ac = load i16, ptr %i.p, align 16, !tbaa !40 ; 2 uses
  %i.ad = icmp ult i16 %i.ac, 2
  %i.ae = zext i16 %i.ac to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %11 = add nuw nsw i64 %i.af, 34359738360
  %12 = and i64 %11, 34359738360
  %i.ag = add nuw nsw i64 %12, 16
  %i.ah = select i1 %i.ad, i64 16, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(1) %i.p, i64 %i.ah, i1 false)
  store i16 %i.s, ptr %i.c, align 2, !tbaa !39
  store i16 %i.t, ptr %i.g, align 2, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  call void @llvm.stackrestore.p0(ptr %i.o)
  br label %.thread39

.thread39:                                        ; preds = %bb.a, %bb.c, %bb.b, %bb.e
  %.2 = phi i32 [ %.1, %bb.e ], [ -98, %bb.c ], [ -98, %bb.b ], [ -98, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @sp_cond_swap_ct_ex(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 2)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = sext i32 %3 to i64
  %i.c = sub nsw i64 0, %i.b
  store volatile i64 %i.c, ptr %i.a, align 8, !tbaa !36
  %i.d = load i16, ptr %0, align 8, !tbaa !40
  %i.e = load i16, ptr %1, align 8, !tbaa !40
  %i.f = xor i16 %i.e, %i.d
  %.0..0..0..0. = load volatile i64, ptr %i.a, align 8, !tbaa !36
  %i.g = trunc i64 %.0..0..0..0. to i16
  %i.h = and i16 %i.f, %i.g                       ; 3 uses
  store i16 %i.h, ptr %4, align 8, !tbaa !40
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge37.thread, label %.lr.ph

._crit_edge37.thread:                             ; preds = %bb.a
  %i.i = load i16, ptr %0, align 8, !tbaa !40
  %i.j = xor i16 %i.i, %i.h
  store i16 %i.j, ptr %0, align 8, !tbaa !40
  %i.k = load i16, ptr %4, align 8, !tbaa !40
  %i.l = load i16, ptr %1, align 8, !tbaa !40
  %i.m = xor i16 %i.l, %i.k
  store i16 %i.m, ptr %1, align 8, !tbaa !40
  br label %._crit_edge41

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 12 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %2, 1
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %i.v = xor i64 %i.u, %i.s
  %.0..0..0..0.1 = load volatile i64, ptr %i.a, align 8, !tbaa !36
  %i.w = and i64 %i.v, %.0..0..0..0.1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store i64 %i.w, ptr %i.x, align 8, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !36
  %i.ac = xor i64 %i.ab, %i.z
  %.0..0..0..0.1.1 = load volatile i64, ptr %i.a, align 8, !tbaa !36
  %i.ad = and i64 %i.ac, %.0..0..0..0.1.1
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph36.unr-lcssa, label %bb.b, !llvm.loop !0

.lr.ph36.unr-lcssa:                               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph36, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph36.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph36.unr-lcssa ] ; 3 uses
  %lcmp.mod79 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.epil.init
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !36
  %i.aj = xor i64 %i.ai, %i.ag
  %.0..0..0..0.1.epil = load volatile i64, ptr %i.a, align 8, !tbaa !36
  %i.ak = and i64 %i.aj, %.0..0..0..0.1.epil
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !36
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.unr-lcssa, %.epil.preheader
  %i.am = load i16, ptr %0, align 8, !tbaa !40
  %i.an = xor i16 %i.am, %i.h
  store i16 %i.an, ptr %0, align 8, !tbaa !40
  %i.ao = getelementptr i8, ptr %4, i64 8         ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %wide.trip.count48 = zext i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph36
  %i.aq = shl nuw nsw i64 %wide.trip.count, 3
  %i.ar = add nuw nsw i64 %i.aq, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ar
  %scevgep55 = getelementptr i8, ptr %4, i64 %i.ar
  %bound0 = icmp ult ptr %i.n, %scevgep55
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x i64>, ptr %i.as, align 8, !tbaa !36, !alias.scope !64
  %wide.load56 = load <2 x i64>, ptr %i.at, align 8, !tbaa !36, !alias.scope !64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load57 = load <2 x i64>, ptr %i.au, align 8, !tbaa !36, !alias.scope !65, !noalias !64
  %wide.load58 = load <2 x i64>, ptr %i.av, align 8, !tbaa !36, !alias.scope !65, !noalias !64
  %i.aw = xor <2 x i64> %wide.load57, %wide.load
  %i.ax = xor <2 x i64> %wide.load58, %wide.load56
  store <2 x i64> %i.aw, ptr %i.au, align 8, !tbaa !36, !alias.scope !65, !noalias !64
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !36, !alias.scope !65, !noalias !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph40, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph36, %middle.block
  %indvars.iv45.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph36 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter80 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv45.prol = phi i64 [ %indvars.iv.next46.prol, %scalar.ph.prol ], [ %indvars.iv45.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv45.prol
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv45.prol ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !36
  %i.bd = xor i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !36
  %indvars.iv.next46.prol = add nuw nsw i64 %indvars.iv45.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter80
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !56

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv45.unr = phi i64 [ %indvars.iv45.ph, %scalar.ph.preheader ], [ %indvars.iv.next46.prol, %scalar.ph.prol ]
  %i.be = sub nsw i64 %indvars.iv45.ph, %wide.trip.count
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.lr.ph40, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv45 = phi i64 [ %indvars.iv.next46.3, %scalar.ph ], [ %indvars.iv45.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv45
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv45 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !36
  %i.bk = xor i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !36
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next46
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next46 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36
  %i.bp = xor i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !36
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next46.1
end_hunk_0
begin_hunk_1_@sp_cmp_mag:bb.a

.preheader.i:                                     ; preds = %bb.e
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %_sp_cmp_abs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i
  %i.h = zext i16 %i.d to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %indvars.iv.next.i16 = add nsw i64 %indvars.iv.i15, -1
  %i.i = icmp sgt i64 %indvars.iv.i15, 1
  br i1 %i.i, label %bb.g, label %_sp_cmp_abs.exit, !llvm.loop !1

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.i15 = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next.i16, %bb.f ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i15
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i15
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %_sp_cmp_abs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ult i64 %i.k, %i.m
  br i1 %i.o, label %._sp_cmp_abs.exit.loopexit_crit_edge19, label %bb.f, !llvm.loop !1

._sp_cmp_abs.exit.loopexit_crit_edge19:           ; preds = %bb.h
  br label %_sp_cmp_abs.exit, !llvm.loop !1

_sp_cmp_abs.exit:                                 ; preds = %bb.f, %bb.g, %.preheader.i, %._sp_cmp_abs.exit.loopexit_crit_edge19, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.e ], [ 1, %bb.d ], [ -1, %._sp_cmp_abs.exit.loopexit_crit_edge19 ], [ 0, %.preheader.i ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @sp_cmp(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_sp_cmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %_sp_cmp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %_sp_cmp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i16, ptr %0, align 8, !tbaa !40     ; 4 uses
  %i.e = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.f = icmp ugt i16 %i.d, %i.e
  br i1 %i.f, label %_sp_cmp.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult i16 %i.d, %i.e
  br i1 %i.g, label %_sp_cmp.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %_sp_cmp.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i
  %i.h = zext i16 %i.d to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %indvars.iv.next.i.i16 = add nsw i64 %indvars.iv.i.i15, -1
  %i.i = icmp sgt i64 %indvars.iv.i.i15, 1
  br i1 %i.i, label %bb.g, label %_sp_cmp.exit, !llvm.loop !1

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.i.i15 = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next.i.i16, %bb.f ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i.i15
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i15
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %i.n = icmp ugt i64 %i.k, %i.m
  br i1 %i.n, label %_sp_cmp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ult i64 %i.k, %i.m
  br i1 %i.o, label %._sp_cmp.exit.loopexit_crit_edge19, label %bb.f, !llvm.loop !1

._sp_cmp.exit.loopexit_crit_edge19:               ; preds = %bb.h
  br label %_sp_cmp.exit, !llvm.loop !1

_sp_cmp.exit:                                     ; preds = %bb.f, %bb.g, %.preheader.i.i, %._sp_cmp.exit.loopexit_crit_edge19, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.e ], [ 1, %bb.d ], [ 0, %.preheader.i.i ], [ -1, %._sp_cmp.exit.loopexit_crit_edge19 ], [ 1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @sp_is_bit_set(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = lshr i32 %1, 6                           ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !40
  %i.c = zext i16 %i.b to i32
  %i.d = icmp samesign ult i32 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %1, 63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = zext nneg i32 %i.a to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36
  %i.j = zext nneg i32 %i.e to i64
  %i.k = lshr i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -2147483648, 2147483647) i32 @sp_count_bits(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not25 = icmp eq i16 %i.a, 0
  br i1 %.not25, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i16 %i.a to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.c = icmp sgt i64 %indvars.iv48, 1
  br i1 %i.c, label %bb.e, label %.critedge.thread, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv48 = phi i64 [ %i.b, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv48, -1 ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %indvars.iv48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %.critedge, !llvm.loop !2

.critedge:                                        ; preds = %bb.e
  %i.g = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.h = getelementptr [8 x i8], ptr %0, i64 %indvars.iv48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 5 uses
  %i.j = shl nuw nsw i32 %i.g, 6                  ; 3 uses
  %i.k = icmp ugt i64 %i.i, 4294967295
  br i1 %i.k, label %bb.f, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.not2631 = icmp eq i64 %i.i, 0
  br i1 %.not2631, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.l = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %reass.sub = sub nsw i32 %i.j, %i.m
  %i.n = add i32 %reass.sub, 64
  br label %.critedge.thread

bb.f:                                             ; preds = %.critedge
  %i.o = add nuw nsw i32 %i.j, 64                 ; 2 uses
  %i.p = icmp sgt i64 %i.i, -1
  br i1 %i.p, label %.lr.ph36, label %.critedge.thread

.lr.ph36:                                         ; preds = %bb.f, %.lr.ph36
  %.035 = phi i64 [ %i.r, %.lr.ph36 ], [ %i.i, %bb.f ]
  %.234 = phi i32 [ %i.q, %.lr.ph36 ], [ %i.o, %bb.f ]
  %i.q = add nsw i32 %.234, -1                    ; 2 uses
  %i.r = shl nuw i64 %.035, 1                     ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %.lr.ph36, label %.critedge.thread, !llvm.loop !3

.critedge.thread:                                 ; preds = %bb.d, %.lr.ph36, %.lr.ph.preheader, %.preheader, %bb.f, %bb.a, %bb.b
  %.5 = phi i32 [ %i.q, %.lr.ph36 ], [ 0, %bb.a ], [ %i.n, %.lr.ph.preheader ], [ 0, %bb.b ], [ %i.o, %bb.f ], [ %i.j, %.preheader ], [ 0, %bb.d ]
  ret i32 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @sp_leading_bit(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not10 = icmp eq i16 %i.a, 0
  br i1 %.not10, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i16 %i.a to i64
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = add nuw nsw i64 %i.b, 4294967295
  %3 = and i64 %2, 4294967295
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.d, %bb.c ], [ %i.f, %bb.d ]  ; 3 uses
  %i.e = icmp ugt i64 %.0, 255
  %i.f = lshr i64 %.0, 8
  br i1 %i.e, label %bb.d, label %bb.e, !llvm.loop !72

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i64 %.0, 7
  %i.h = trunc nuw nsw i64 %i.g to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.07 = phi i32 [ %i.h, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_set_bit(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.b = lshr i32 %i.a, 6                         ; 6 uses
  %i.c = icmp sgt i32 %1, 8256
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %1, 0
  %i.e = icmp eq ptr %0, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %.not = icmp samesign ult i32 %i.b, %i.h
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 63                           ; 2 uses
  %i.j = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %.not2731 = icmp samesign ult i32 %i.b, %i.k
  br i1 %.not2731, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d
  %i.l = zext nneg i32 %i.i to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = zext nneg i32 %i.b to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36
  %i.r = or i64 %i.q, %i.m
  store i64 %i.r, ptr %i.p, align 8, !tbaa !36
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.s = zext i16 %i.j to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 8
  %i.v = sub nuw nsw i32 %i.b, %i.k
  %i.w = shl nuw nsw i32 %i.v, 3
  %narrow = add nuw nsw i32 %i.w, 8
  %i.x = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.x, i1 false), !tbaa !36
  %i.y = zext nneg i32 %i.i to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = zext nneg i32 %i.b to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36
  %i.ae = or i64 %i.ad, %i.z
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !36
  %i.af = trunc nuw i32 %i.b to i16
  %i.ag = add nuw i16 %i.af, 1
  store i16 %i.ag, ptr %0, align 8, !tbaa !40
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.b, %bb.c, %bb.a, %bb.e
  %.02430 = phi i32 [ 0, %bb.e ], [ 0, %._crit_edge.thread ], [ -98, %bb.a ], [ -98, %bb.c ], [ -98, %bb.b ]
  ret i32 %.02430
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_2expt(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp sgt i32 %1, -1
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %sp_set_bit.exit

bb.b:                                             ; preds = %bb.a
  store volatile i16 0, ptr %0, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store volatile i64 0, ptr %i.c, align 8, !tbaa !36
  %i.d = lshr i32 %1, 6                           ; 4 uses
  %i.e = icmp samesign ugt i32 %1, 8256
  br i1 %i.e, label %sp_set_bit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp samesign ult i32 %i.d, %i.h
  br i1 %.not.i, label %bb.d, label %sp_set_bit.exit

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 63
  %i.j = shl nuw nsw i32 %i.d, 3
  %narrow.i = add nuw nsw i32 %i.j, 8
  %i.k = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.l = zext nneg i32 %i.i to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = zext nneg i32 %i.d to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = or i64 %i.p, %i.m
  store i64 %i.q, ptr %i.o, align 8, !tbaa !36
  %i.r = trunc nuw i32 %i.d to i16
  %i.s = add nuw nsw i16 %i.r, 1
  store i16 %i.s, ptr %0, align 8, !tbaa !40
  br label %sp_set_bit.exit

sp_set_bit.exit:                                  ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -98, %bb.a ], [ 0, %bb.d ], [ -98, %bb.c ], [ -98, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -98, 1) i32 @sp_set(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  %i.b = icmp ne i64 %1, 0
  %i.c = zext i1 %i.b to i16
  store i16 %i.c, ptr %0, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.store.select = phi i32 [ 0, %bb.b ], [ -98, %bb.a ]
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -98, 1) i32 @sp_set_int(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !36
  %i.b = icmp ne i64 %1, 0
  %i.c = zext i1 %i.b to i16
  store i16 %i.c, ptr %0, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.store.select = phi i32 [ 0, %bb.b ], [ -98, %bb.a ]
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @sp_cmp_d(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.c = icmp ugt i16 %i.b, 1
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i16 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not = icmp ne i64 %1, 0
  %spec.select = sext i1 %.not to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = icmp ugt i64 %i.f, %1
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult i64 %i.f, %1
  %spec.select12 = sext i1 %i.h to i32
  br label %bb.g
end_hunk_1
begin_hunk_2_@sp_div_d:bb.a
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond.not = and i1 %i.a, %i.b                ; 2 uses
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond.not, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !39
  %i.g = icmp ugt i16 %i.d, %i.f
  br i1 %i.g, label %_sp_div_10.exit, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %or.cond.not, label %.thread, label %_sp_div_10.exit

.thread:                                          ; preds = %bb.b, %bb.c
  %i.h = icmp eq i64 %1, 10
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.thread
  %i.i = icmp eq ptr %2, null
  %i.j = load i16, ptr %0, align 8, !tbaa !40     ; 3 uses
  %.not57.i = icmp eq i16 %i.j, 0                 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.not57.i, label %_sp_div_10.exit.sink.split, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.e
  %i.k = zext i16 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph53.i
  %indvars.iv63.i = phi i64 [ %i.k, %.lr.ph53.i ], [ %indvars.iv.next64.i, %bb.f ] ; 3 uses
  %.04051.i = phi i64 [ 0, %.lr.ph53.i ], [ %i.w, %bb.f ]
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, -1
  %i.l = zext nneg i64 %.04051.i to i128
  %i.m = shl nuw nsw i128 %i.l, 64
  %i.n = getelementptr [8 x i8], ptr %0, i64 %indvars.iv63.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %i.p = zext i64 %i.o to i128
  %i.q = or disjoint i128 %i.m, %i.p
  %i.r = mul nuw i128 %i.q, 1844674407370955161
  %i.s = lshr i128 %i.r, 64
  %i.t = trunc nuw i128 %i.s to i64
  %i.u = mul i64 %i.t, -10
  %i.v = add i64 %i.u, %i.o
  %i.w = urem i64 %i.v, 10                        ; 2 uses
  %i.x = icmp samesign ugt i64 %indvars.iv63.i, 1
  br i1 %i.x, label %bb.f, label %_sp_div_10.exit.sink.split, !llvm.loop !9

bb.g:                                             ; preds = %bb.d
  br i1 %.not57.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.y = zext i16 %i.j to i64                     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.y, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %.149.i = phi i64 [ 0, %.lr.ph.i ], [ %i.am, %bb.h ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.z = zext nneg i64 %.149.i to i128
  %i.aa = shl nuw nsw i128 %i.z, 64
  %i.ab = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.ad = zext i64 %i.ac to i128
  %i.ae = or disjoint i128 %i.aa, %i.ad
  %i.af = mul nuw i128 %i.ae, 1844674407370955161
  %i.ag = lshr i128 %i.af, 64
  %i.ah = trunc nuw i128 %i.ag to i64             ; 2 uses
  %i.ai = mul i64 %i.ah, -10
  %i.aj = add i64 %i.ai, %i.ac                    ; 2 uses
  %i.ak = udiv i64 %i.aj, 10
  %i.al = add i64 %i.ak, %i.ah
  %i.am = urem i64 %i.aj, 10                      ; 3 uses
  %i.an = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i
  store i64 %i.al, ptr %i.an, align 8, !tbaa !36
  %i.ao = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ao, label %bb.h, label %.preheader.i.preheader, !llvm.loop !10

.preheader.i:                                     ; preds = %.preheader.i.preheader
  %indvars.iv.next61.i = add nsw i64 %indvars.iv60.i88, -1
  %i.ap = icmp sgt i64 %indvars.iv60.i88, 1
  br i1 %i.ap, label %.preheader.i.preheader, label %._crit_edge.thread.i, !llvm.loop !11

.preheader.i.preheader:                           ; preds = %bb.h, %.preheader.i
  %indvars.iv60.i88 = phi i64 [ %indvars.iv.next61.i, %.preheader.i ], [ %i.y, %bb.h ] ; 4 uses
  %i.aq = getelementptr [8 x i8], ptr %2, i64 %indvars.iv60.i88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36
  %.not46.i = icmp eq i64 %i.ar, 0
  br i1 %.not46.i, label %.preheader.i, label %.split.loop.exit.i, !llvm.loop !11

.split.loop.exit.i:                               ; preds = %.preheader.i.preheader
  %i.as = trunc nuw i64 %indvars.iv60.i88 to i16
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.preheader.i, %.split.loop.exit.i, %bb.g
  %.sink.i = phi i16 [ 0, %bb.g ], [ %i.as, %.split.loop.exit.i ], [ 0, %.preheader.i ]
  %.1.lcssa70.i = phi i64 [ 0, %bb.g ], [ %i.am, %.split.loop.exit.i ], [ %i.am, %.preheader.i ]
  store i16 %.sink.i, ptr %2, align 8, !tbaa !40
  %.not47.i = icmp eq ptr %3, null
  br i1 %.not47.i, label %_sp_div_10.exit, label %_sp_div_10.exit.sink.split

bb.i:                                             ; preds = %.thread
  %i.at = icmp ult i64 %1, 4294967296
  br i1 %i.at, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.au = udiv i64 -1, %1                         ; 2 uses
  %i.av = icmp eq ptr %2, null
  %i.aw = load i16, ptr %0, align 8, !tbaa !40    ; 3 uses
  %.not65.i = icmp eq i16 %i.aw, 0                ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not65.i, label %_sp_div_10.exit.sink.split, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %bb.k
  %i.ax = zext i64 %i.au to i128
  %i.ay = zext i16 %i.aw to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph61.i
  %indvars.iv71.i = phi i64 [ %i.ay, %.lr.ph61.i ], [ %indvars.iv.next72.i, %bb.l ] ; 3 uses
  %.04859.i = phi i64 [ 0, %.lr.ph61.i ], [ %i.bk, %bb.l ]
  %indvars.iv.next72.i = add nsw i64 %indvars.iv71.i, -1
  %i.az = zext i64 %.04859.i to i128
  %i.ba = shl nuw i128 %i.az, 64
  %i.bb = getelementptr [8 x i8], ptr %0, i64 %indvars.iv71.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !36 ; 2 uses
  %i.bd = zext i64 %i.bc to i128
  %i.be = or disjoint i128 %i.ba, %i.bd
  %i.bf = mul i128 %i.be, %i.ax
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = trunc nuw i128 %i.bg to i64
  %i.bi = mul i64 %1, %i.bh
  %i.bj = sub i64 %i.bc, %i.bi
  %i.bk = urem i64 %i.bj, %1                      ; 2 uses
  %i.bl = icmp samesign ugt i64 %indvars.iv71.i, 1
  br i1 %i.bl, label %bb.l, label %_sp_div_10.exit.sink.split, !llvm.loop !12

bb.m:                                             ; preds = %bb.j
  br i1 %.not65.i, label %._crit_edge.thread.i30, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.m
  %i.bm = zext i64 %i.au to i128
  %i.bn = zext i16 %i.aw to i64                   ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i26
  %indvars.iv.i27 = phi i64 [ %i.bn, %.lr.ph.i26 ], [ %indvars.iv.next.i28, %bb.n ] ; 4 uses
  %.157.i = phi i64 [ 0, %.lr.ph.i26 ], [ %i.cb, %bb.n ]
  %indvars.iv.next.i28 = add nsw i64 %indvars.iv.i27, -1
  %i.bo = zext i64 %.157.i to i128
  %i.bp = shl nuw i128 %i.bo, 64
  %i.bq = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i27
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !36 ; 2 uses
  %i.bs = zext i64 %i.br to i128
  %i.bt = or disjoint i128 %i.bp, %i.bs
  %i.bu = mul i128 %i.bt, %i.bm
  %i.bv = lshr i128 %i.bu, 64
  %i.bw = trunc nuw i128 %i.bv to i64             ; 2 uses
  %i.bx = mul i64 %1, %i.bw
  %i.by = sub i64 %i.br, %i.bx                    ; 2 uses
  %i.bz = udiv i64 %i.by, %1
  %i.ca = add i64 %i.bz, %i.bw
  %i.cb = urem i64 %i.by, %1                      ; 3 uses
  %i.cc = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !36
  %i.cd = icmp samesign ugt i64 %indvars.iv.i27, 1
  br i1 %i.cd, label %bb.n, label %.preheader.i29.preheader, !llvm.loop !79

.preheader.i29:                                   ; preds = %.preheader.i29.preheader
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i87, -1
  %i.ce = icmp sgt i64 %indvars.iv68.i87, 1
  br i1 %i.ce, label %.preheader.i29.preheader, label %._crit_edge.thread.i30, !llvm.loop !80

.preheader.i29.preheader:                         ; preds = %bb.n, %.preheader.i29
  %indvars.iv68.i87 = phi i64 [ %indvars.iv.next69.i, %.preheader.i29 ], [ %i.bn, %bb.n ] ; 4 uses
  %i.cf = getelementptr [8 x i8], ptr %2, i64 %indvars.iv68.i87
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !36
  %.not54.i = icmp eq i64 %i.cg, 0
  br i1 %.not54.i, label %.preheader.i29, label %.split.loop.exit.i33, !llvm.loop !80

.split.loop.exit.i33:                             ; preds = %.preheader.i29.preheader
  %i.ch = trunc nuw i64 %indvars.iv68.i87 to i16
  br label %._crit_edge.thread.i30

._crit_edge.thread.i30:                           ; preds = %.preheader.i29, %.split.loop.exit.i33, %bb.m
  %.sink.i31 = phi i16 [ 0, %bb.m ], [ %i.ch, %.split.loop.exit.i33 ], [ 0, %.preheader.i29 ]
  %.1.lcssa78.i = phi i64 [ 0, %bb.m ], [ %i.cb, %.split.loop.exit.i33 ], [ %i.cb, %.preheader.i29 ]
  store i16 %.sink.i31, ptr %2, align 8, !tbaa !40
  %.not55.i = icmp eq ptr %3, null
  br i1 %.not55.i, label %_sp_div_10.exit, label %_sp_div_10.exit.sink.split

bb.o:                                             ; preds = %bb.i
  %i.ci = load i16, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not42.i = icmp eq i16 %i.ci, 0
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.o
  %i.cj = zext i16 %i.ci to i64                   ; 2 uses
  %.03139.i = add nuw nsw i64 %i.cj, 4294967295   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cl = zext i64 %1 to i128                     ; 5 uses
  %.not38.i = icmp eq ptr %2, null
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = and i64 %.03139.i, 4294967295              ; 5 uses
  br i1 %.not38.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i34
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %i.cn = icmp eq i64 %4, 0
  br i1 %i.cn, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter = and i64 %5, 8589934590
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %indvars.iv46.i = phi i64 [ %4, %.lr.ph.split.us.i.preheader.new ], [ %indvars.iv.next47.i.1, %.lr.ph.split.us.i ] ; 3 uses
  %.03040.us.i = phi i128 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.cz, %.lr.ph.split.us.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.us.i ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv46.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !36
  %i.cq = shl nuw i128 %.03040.us.i, 64
  %.fr.i = freeze i64 %i.cp
  %i.cr = zext i64 %.fr.i to i128
  %i.cs = or disjoint i128 %i.cq, %i.cr
  %i.ct = urem i128 %i.cs, %i.cl
  %i.cu = getelementptr [8 x i8], ptr %0, i64 %indvars.iv46.i
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !36
  %i.cw = shl nuw i128 %i.ct, 64
  %.fr.i.1 = freeze i64 %i.cv
  %i.cx = zext i64 %.fr.i.1 to i128
  %i.cy = or disjoint i128 %i.cw, %i.cx
  %i.cz = urem i128 %i.cy, %i.cl                  ; 3 uses
  %indvars.iv.next47.i.1 = add nsw i64 %indvars.iv46.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.i39.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !81

.lr.ph.split.i:                                   ; preds = %.lr.ph.i34, %.lr.ph.split.i
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i36, %.lr.ph.split.i ], [ %4, %.lr.ph.i34 ] ; 4 uses
  %.03040.i = phi i128 [ %i.dh, %.lr.ph.split.i ], [ 0, %.lr.ph.i34 ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i35
  %i.db = load i64, ptr %i.da, align 8, !tbaa !36
  %i.dc = shl i128 %.03040.i, 64
  %i.dd = zext i64 %i.db to i128
  %i.de = or disjoint i128 %i.dc, %i.dd           ; 2 uses
  %i.df = udiv i128 %i.de, %i.cl                  ; 2 uses
  %i.dg = mul i128 %i.df, %i.cl
  %i.dh = sub i128 %i.de, %i.dg                   ; 2 uses
  %i.di = trunc i128 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i35
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !36
  %indvars.iv.next.i36 = add nsw i64 %indvars.iv.i35, -1
  %.not66.i = icmp eq i64 %indvars.iv.i35, 0
  br i1 %.not66.i, label %.preheader.i37, label %.lr.ph.split.i, !llvm.loop !81

._crit_edge.thread.i39.unr-lcssa:                 ; preds = %.lr.ph.split.us.i
  %6 = and i64 %.03139.i, 1
  %lcmp.mod.not.not = icmp eq i64 %6, 0
  %extract.t = trunc nuw i128 %i.cz to i64
  br i1 %lcmp.mod.not.not, label %.lr.ph.split.us.i.epil.preheader, label %._crit_edge.thread.i39

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.thread.i39.unr-lcssa, %.lr.ph.split.us.i.preheader
  %indvars.iv46.i.epil.init = phi i64 [ %4, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next47.i.1, %._crit_edge.thread.i39.unr-lcssa ]
  %.03040.us.i.epil.init = phi i128 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.cz, %._crit_edge.thread.i39.unr-lcssa ]
  %lcmp.mod99 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv46.i.epil.init
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !36
  %i.dm = shl nuw i128 %.03040.us.i.epil.init, 64
  %.fr.i.epil = freeze i64 %i.dl
  %i.dn = zext i64 %.fr.i.epil to i128
  %i.do = or disjoint i128 %i.dm, %i.dn
  %i.dp = urem i128 %i.do, %i.cl
  %extract.t100 = trunc nuw i128 %i.dp to i64
  br label %._crit_edge.thread.i39

._crit_edge.i:                                    ; preds = %bb.o
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %._crit_edge.thread.i39, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  store i16 0, ptr %2, align 8, !tbaa !40
  br label %._crit_edge.thread.i39

.preheader.i37:                                   ; preds = %.lr.ph.split.i
  %extract.t43.i = trunc i128 %i.dh to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next50.i = add nsw i64 %indvars.iv49.i86, -1
  %i.dq = icmp sgt i64 %indvars.iv49.i86, 1
  br i1 %i.dq, label %bb.q, label %.split.loop.exit64.i, !llvm.loop !82

bb.q:                                             ; preds = %.preheader.i37, %bb.p
  %indvars.iv49.i86 = phi i64 [ %i.cj, %.preheader.i37 ], [ %indvars.iv.next50.i, %bb.p ] ; 4 uses
  %i.dr = getelementptr [8 x i8], ptr %2, i64 %indvars.iv49.i86
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !36
  %.not36.i = icmp eq i64 %i.ds, 0
  br i1 %.not36.i, label %bb.p, label %.split.loop.exit.i38, !llvm.loop !82

.split.loop.exit.i38:                             ; preds = %bb.q
  %i.dt = trunc nuw i64 %indvars.iv49.i86 to i16
  br label %.split.loop.exit64.i

.split.loop.exit64.i:                             ; preds = %bb.p, %.split.loop.exit.i38
  %.0.in.lcssa.i = phi i16 [ %i.dt, %.split.loop.exit.i38 ], [ 0, %bb.p ]
  store i16 %.0.in.lcssa.i, ptr %2, align 8, !tbaa !40
  br label %._crit_edge.thread.i39

._crit_edge.thread.i39:                           ; preds = %.lr.ph.split.us.i.epil.preheader, %._crit_edge.thread.i39.unr-lcssa, %.split.loop.exit64.i, %.thread.i, %._crit_edge.i
  %.030.lcssa.off057.i = phi i64 [ 0, %._crit_edge.i ], [ 0, %.thread.i ], [ %extract.t43.i, %.split.loop.exit64.i ], [ %extract.t, %._crit_edge.thread.i39.unr-lcssa ], [ %extract.t100, %.lr.ph.split.us.i.epil.preheader ]
  %.not37.i = icmp eq ptr %3, null
  br i1 %.not37.i, label %_sp_div_10.exit, label %_sp_div_10.exit.sink.split

_sp_div_10.exit.sink.split:                       ; preds = %bb.l, %bb.f, %._crit_edge.thread.i39, %bb.k, %._crit_edge.thread.i30, %bb.e, %._crit_edge.thread.i
  %.030.lcssa.off057.i.sink = phi i64 [ %i.w, %bb.f ], [ %.030.lcssa.off057.i, %._crit_edge.thread.i39 ], [ %.1.lcssa70.i, %._crit_edge.thread.i ], [ 0, %bb.e ], [ %.1.lcssa78.i, %._crit_edge.thread.i30 ], [ 0, %bb.k ], [ %i.bk, %bb.l ]
  store i64 %.030.lcssa.off057.i.sink, ptr %3, align 8, !tbaa !36
  br label %_sp_div_10.exit

_sp_div_10.exit:                                  ; preds = %_sp_div_10.exit.sink.split, %bb.b, %._crit_edge.thread.i39, %._crit_edge.thread.i30, %._crit_edge.thread.i, %bb.c
  %.041 = phi i32 [ 0, %._crit_edge.thread.i30 ], [ 0, %._crit_edge.thread.i39 ], [ -98, %bb.b ], [ -98, %bb.c ], [ 0, %._crit_edge.thread.i ], [ 0, %_sp_div_10.exit.sink.split ]
  ret i32 %.041
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_mod_d(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond.not27 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %1, 0
  %or.cond3.not = and i1 %i.c, %or.cond.not27
  br i1 %or.cond3.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, -1
  %i.e = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.f = icmp samesign ult i64 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load i16, ptr %0, align 8, !tbaa !40
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36
  %i.k = and i64 %i.j, %i.d
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %1, 10
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not57.i = icmp eq i16 %i.m, 0
  br i1 %.not57.i, label %.sink.split, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.f
  %i.n = zext i16 %i.m to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph53.i
  %indvars.iv63.i = phi i64 [ %i.n, %.lr.ph53.i ], [ %indvars.iv.next64.i, %bb.g ] ; 3 uses
  %.04051.i = phi i64 [ 0, %.lr.ph53.i ], [ %i.z, %bb.g ]
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, -1
  %i.o = zext nneg i64 %.04051.i to i128
  %i.p = shl nuw nsw i128 %i.o, 64
  %i.q = getelementptr [8 x i8], ptr %0, i64 %indvars.iv63.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = zext i64 %i.r to i128
  %i.t = or disjoint i128 %i.p, %i.s
  %i.u = mul nuw i128 %i.t, 1844674407370955161
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = mul i64 %i.w, -10
  %i.y = add i64 %i.x, %i.r
  %i.z = urem i64 %i.y, 10                        ; 2 uses
  %i.aa = icmp samesign ugt i64 %indvars.iv63.i, 1
  br i1 %i.aa, label %bb.g, label %.sink.split, !llvm.loop !9

bb.h:                                             ; preds = %bb.e
  %i.ab = icmp ult i64 %1, 4294967296
  %i.ac = load i16, ptr %0, align 8, !tbaa !40    ; 5 uses
  %.not65.i = icmp eq i16 %i.ac, 0                ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %.not65.i, label %.sink.split, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %bb.i
  %i.ad = udiv i64 -1, %1
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = zext i16 %i.ac to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph61.i
  %indvars.iv71.i = phi i64 [ %i.af, %.lr.ph61.i ], [ %indvars.iv.next72.i, %bb.j ] ; 3 uses
  %.04859.i = phi i64 [ 0, %.lr.ph61.i ], [ %i.ar, %bb.j ]
  %indvars.iv.next72.i = add nsw i64 %indvars.iv71.i, -1
  %i.ag = zext nneg i64 %.04859.i to i128
  %i.ah = shl nuw nsw i128 %i.ag, 64
  %i.ai = getelementptr [8 x i8], ptr %0, i64 %indvars.iv71.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !36 ; 2 uses
  %i.ak = zext i64 %i.aj to i128
  %i.al = or disjoint i128 %i.ah, %i.ak
  %i.am = mul i128 %i.al, %i.ae
  %i.an = lshr i128 %i.am, 64
  %i.ao = trunc nuw i128 %i.an to i64
  %i.ap = mul i64 %1, %i.ao
  %i.aq = sub i64 %i.aj, %i.ap
  %i.ar = urem i64 %i.aq, %1                      ; 2 uses
  %i.as = icmp samesign ugt i64 %indvars.iv71.i, 1
  br i1 %i.as, label %bb.j, label %.sink.split, !llvm.loop !12

bb.k:                                             ; preds = %bb.h
  br i1 %.not65.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.at = zext i64 %1 to i128                     ; 3 uses
  %i.au = zext i16 %i.ac to i64                   ; 4 uses
  %xtraiter = and i64 %i.au, 1
  %i.av = icmp eq i16 %i.ac, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.au, 65534
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %i.au, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.01415.i = phi i128 [ 0, %.lr.ph.i.new ], [ %i.bi, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.aw = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.ay = shl nuw i128 %.01415.i, 64
  %.fr.i = freeze i64 %i.ax
  %i.az = zext i64 %.fr.i to i128
  %i.ba = or disjoint i128 %i.ay, %i.az
  %i.bb = urem i128 %i.ba, %i.at
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  %i.bf = shl nuw i128 %i.bb, 64
  %.fr.i.1 = freeze i64 %i.be
  %i.bg = zext i64 %.fr.i.1 to i128
  %i.bh = or disjoint i128 %i.bf, %i.bg
  %i.bi = urem i128 %i.bh, %i.at                  ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.l, !llvm.loop !83

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %extract.t = trunc nuw i128 %i.bi to i64
  br i1 %lcmp.mod.not, label %.sink.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ %i.au, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01415.i.epil.init = phi i128 [ 0, %.lr.ph.i ], [ %i.bi, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod46 = trunc i16 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
end_hunk_2
begin_hunk_3_@sp_todecimal:bb.a
  %i.ak = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv60.i.i69
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !36
  %.not46.i.i = icmp eq i64 %i.al, 0
  br i1 %.not46.i.i, label %.preheader.i.i, label %.split.loop.exit.i.i, !llvm.loop !11

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i.preheader
  %i.am = trunc nuw nsw i64 %indvars.iv60.i.i69 to i16
  br label %sp_div_d.exit

sp_div_d.exit:                                    ; preds = %.preheader.i.i, %.thread.i, %.split.loop.exit.i.i, %_sp_copy.exit
  %i.an = phi i16 [ %i.r, %_sp_copy.exit ], [ 0, %.thread.i ], [ %i.am, %.split.loop.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.149 = phi i64 [ %.048, %_sp_copy.exit ], [ 0, %.thread.i ], [ %i.ah, %.split.loop.exit.i.i ], [ %i.ah, %.preheader.i.i ] ; 2 uses
  %i.ao = trunc nuw nsw i64 %.149 to i8
  %i.ap = or disjoint i8 %i.ao, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !41
  %.not = icmp eq i16 %i.an, 0
  %indvars.iv.next59 = add nuw i32 %indvars.iv58, 1
  br i1 %.not, label %bb.i, label %_sp_copy.exit, !llvm.loop !186

bb.i:                                             ; preds = %sp_div_d.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 0, ptr %i.ar, align 1, !tbaa !41
  %i.as = lshr i32 %indvars.iv58, 1
  %i.at = add nuw nsw i32 %i.as, 1                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.at to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.au = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.au, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %indvars.iv55 = phi i64 [ 0, %.new ], [ %indvars.iv.next56.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv55 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !41
  %i.ax = sub nuw nsw i64 %indvars.iv, %indvars.iv55
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !41
  store i8 %i.az, ptr %i.av, align 1, !tbaa !41
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !41
  %indvars.iv.next56 = or disjoint i64 %indvars.iv55, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next56 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !41
  %i.bc = sub nuw nsw i64 %indvars.iv, %indvars.iv.next56
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !41
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !41
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !41
  %indvars.iv.next56.1 = add nuw nsw i64 %indvars.iv55, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge47.loopexit.unr-lcssa, label %bb.j, !llvm.loop !187

.critedge47.loopexit.unr-lcssa:                   ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge47, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge47.loopexit.unr-lcssa, %bb.i
  %indvars.iv55.epil.init = phi i64 [ 0, %bb.i ], [ %indvars.iv.next56.1, %.critedge47.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i32 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv55.epil.init ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !41
  %i.bh = sub nuw nsw i64 %indvars.iv, %indvars.iv55.epil.init
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !41
  store i8 %i.bj, ptr %i.bf, align 1, !tbaa !41
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !41
  br label %.critedge47

.critedge47:                                      ; preds = %.epil.preheader, %.critedge47.loopexit.unr-lcssa, %bb.e
  call void @llvm.stackrestore.p0(ptr %i.h)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.a, %bb.c, %.critedge47
  %.1 = phi i32 [ %.0, %.critedge47 ], [ 0, %bb.c ], [ -98, %bb.a ], [ -98, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define range(i32 -98, 1) i32 @sp_toradix(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.e [
    i32 16, label %bb.c
    i32 10, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @sp_tohex(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @sp_todecimal(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.0 = phi i32 [ -98, %bb.a ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ -98, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define range(i32 -98, 1) i32 @sp_radix_size(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.o [
    i32 16, label %bb.c
    i32 10, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %2, align 4, !tbaa !50
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.e = zext i16 %i.c to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.f = icmp sgt i64 %indvars.iv.i61, 1
  br i1 %i.f, label %bb.g, label %sp_count_bits.exit, !llvm.loop !2

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.i61 = phi i64 [ %i.e, %bb.e ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i61
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36   ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.g
  %i.j = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.k = shl nuw nsw i32 %i.j, 6                  ; 2 uses
  %i.l = icmp ugt i64 %i.h, 4294967295
  br i1 %i.l, label %bb.h, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.m = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %reass.sub.i = add nuw nsw i32 %i.k, 64
  %i.o = sub nuw nsw i32 %reass.sub.i, %i.n
  br label %sp_count_bits.exit

bb.h:                                             ; preds = %.critedge.i
  %i.p = add nuw nsw i32 %i.k, 64                 ; 2 uses
  %i.q = icmp sgt i64 %i.h, -1
  br i1 %i.q, label %.lr.ph36.i, label %sp_count_bits.exit

.lr.ph36.i:                                       ; preds = %bb.h, %.lr.ph36.i
  %.035.i = phi i64 [ %i.s, %.lr.ph36.i ], [ %i.h, %bb.h ]
  %.234.i = phi i32 [ %i.r, %.lr.ph36.i ], [ %i.p, %bb.h ]
  %i.r = add nsw i32 %.234.i, -1                  ; 2 uses
  %i.s = shl nuw i64 %.035.i, 1                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %.lr.ph36.i, label %sp_count_bits.exit, !llvm.loop !3

sp_count_bits.exit:                               ; preds = %bb.f, %.lr.ph36.i, %.lr.ph.preheader.i, %bb.h
  %.5.i = phi i32 [ %i.p, %bb.h ], [ %i.r, %.lr.ph36.i ], [ %i.o, %.lr.ph.preheader.i ], [ 0, %bb.f ]
  %i.u = add nsw i32 %.5.i, 3                     ; 2 uses
  %i.v = ashr i32 %i.u, 2
  %i.w = lshr i32 %i.u, 2
  %i.x = and i32 %i.w, 1
  %spec.select = add nsw i32 %i.v, 1
  %i.y = add nsw i32 %spec.select, %i.x
  store i32 %i.y, ptr %2, align 4, !tbaa !50
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.z = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  switch i16 %i.z, label %bb.k [
    i16 0, label %bb.j
    i16 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %2, align 4, !tbaa !50
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.aa = zext i16 %i.z to i64
  %3 = add nuw nsw i64 %i.aa, 4294967295
  %4 = and i64 %3, 4294967295
  %i.ab = add nuw nsw i64 %4, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %i.ac = phi i64 [ %i.ab, %bb.k ], [ 2, %bb.i ]
  %i.ad = tail call ptr @llvm.stacksave.p0()
  %i.ae = alloca i64, i64 %i.ac, align 16         ; 3 uses
  %i.af = load i16, ptr %0, align 8, !tbaa !40    ; 5 uses
  %i.ag = icmp ult i16 %i.af, 130                 ; 2 uses
  %.0 = select i1 %i.ag, i32 0, i32 -98
  br i1 %i.ag, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp eq i16 %i.af, 0
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = shl nuw nsw i16 %i.af, 3
  %i.al = zext nneg i16 %i.ak to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull readonly align 8 %i.aj, i64 %i.al, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sp_div_d.exit
  %.pr47 = phi i16 [ %.pr, %sp_div_d.exit ], [ %i.af, %.lr.ph.preheader ] ; 3 uses
  %.03242 = phi i32 [ %i.bh, %sp_div_d.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.am = icmp ugt i16 %.pr47, %i.af
  br i1 %i.am, label %sp_div_d.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.an = zext nneg i16 %.pr47 to i64             ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 3 uses
  %.149.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %bb.n ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.ao = zext nneg i64 %.149.i.i to i128
  %i.ap = shl nuw nsw i128 %i.ao, 64
  %i.aq = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv.i.i ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.as = zext i64 %i.ar to i128
  %i.at = or disjoint i128 %i.ap, %i.as
  %i.au = mul nuw i128 %i.at, 1844674407370955161
  %i.av = lshr i128 %i.au, 64
  %i.aw = trunc nuw i128 %i.av to i64             ; 2 uses
  %i.ax = mul i64 %i.aw, -10
  %i.ay = add i64 %i.ax, %i.ar                    ; 2 uses
  %i.az = udiv i64 %i.ay, 10
  %i.ba = add i64 %i.az, %i.aw
  %i.bb = urem i64 %i.ay, 10
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !36
  %i.bc = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.bc, label %bb.n, label %.preheader.i.i.preheader, !llvm.loop !10

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader
  %indvars.iv.next61.i.i = add nsw i64 %indvars.iv60.i.i60, -1
  %i.bd = icmp sgt i64 %indvars.iv60.i.i60, 1
  br i1 %i.bd, label %.preheader.i.i.preheader, label %sp_div_d.exit, !llvm.loop !11

.preheader.i.i.preheader:                         ; preds = %bb.n, %.preheader.i.i
  %indvars.iv60.i.i60 = phi i64 [ %indvars.iv.next61.i.i, %.preheader.i.i ], [ %i.an, %bb.n ] ; 4 uses
  %i.be = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv60.i.i60
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !36
  %.not46.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not46.i.i, label %.preheader.i.i, label %.split.loop.exit.i.i, !llvm.loop !11

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i.preheader
  %i.bg = trunc nuw nsw i64 %indvars.iv60.i.i60 to i16
  br label %sp_div_d.exit

sp_div_d.exit:                                    ; preds = %.preheader.i.i, %.split.loop.exit.i.i, %.lr.ph
  %.pr = phi i16 [ %.pr47, %.lr.ph ], [ %i.bg, %.split.loop.exit.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.bh = add nuw nsw i32 %.03242, 1
  %.not = icmp eq i16 %.pr, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !188

._crit_edge.loopexit:                             ; preds = %sp_div_d.exit
  %i.bi = add nuw nsw i32 %.03242, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %._crit_edge.loopexit
  %.032.lcssa = phi i32 [ %i.bi, %._crit_edge.loopexit ], [ 1, %bb.m ]
  store i32 %.032.lcssa, ptr %2, align 4, !tbaa !50
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %._crit_edge
  call void @llvm.stackrestore.p0(ptr %i.ad)
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %.critedge, %bb.b, %bb.a, %sp_count_bits.exit, %bb.d
  %.2 = phi i32 [ -98, %bb.a ], [ 0, %bb.d ], [ 0, %sp_count_bits.exit ], [ -98, %bb.b ], [ 0, %bb.j ], [ %.0, %.critedge ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define range(i32 -98, 1) i32 @sp_prime_is_prime(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %sp_cmp_primes.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !50
  br label %sp_cmp_primes.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.e = icmp ugt i16 %i.d, 64
  br i1 %i.e, label %sp_cmp_primes.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add i32 %1, -257
  %or.cond3 = icmp ult i32 %i.f, -256
  br i1 %or.cond3, label %bb.f, label %.thread52

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %2, align 4, !tbaa !50
  br label %sp_cmp_primes.exit.thread

.thread52:                                        ; preds = %bb.e
  %i.g = icmp eq i16 %i.d, 1
  br i1 %i.g, label %bb.g, label %sp_cmp_primes.exit

bb.g:                                             ; preds = %.thread52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %2, align 4, !tbaa !50
  br label %sp_cmp_primes.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36   ; 5 uses
  %i.m = icmp ult i64 %i.l, 1620
  br i1 %i.m, label %.split.split.i, label %sp_cmp_primes.exit

.split.split.i:                                   ; preds = %bb.i
  store i32 0, ptr %2, align 4, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %sp_cmp_d.exit.thread.i.3, %.split.split.i
  %indvars.iv.i = phi i64 [ 0, %.split.split.i ], [ %indvars.iv.next.i.3, %sp_cmp_d.exit.thread.i.3 ] ; 5 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @sp_primes, i64 %indvars.iv.i
  %i.o = load i16, ptr %i.n, align 8, !tbaa !46
  %i.p = zext i16 %i.o to i64
  %or.cond8.i = icmp eq i64 %i.l, %i.p
  br i1 %or.cond8.i, label %.thread64, label %sp_cmp_d.exit.thread.i

.thread64:                                        ; preds = %sp_cmp_d.exit.thread.i.2, %sp_cmp_d.exit.thread.i.1, %sp_cmp_d.exit.thread.i, %bb.j
  store i32 1, ptr %2, align 4, !tbaa !50
  br label %bb.m

sp_cmp_d.exit.thread.i:                           ; preds = %bb.j
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @sp_primes, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !46
  %i.t = zext i16 %i.s to i64
  %or.cond8.i.1 = icmp eq i64 %i.l, %i.t
  br i1 %or.cond8.i.1, label %.thread64, label %sp_cmp_d.exit.thread.i.1

sp_cmp_d.exit.thread.i.1:                         ; preds = %sp_cmp_d.exit.thread.i
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @sp_primes, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i16, ptr %i.v, align 4, !tbaa !46
  %i.x = zext i16 %i.w to i64
  %or.cond8.i.2 = icmp eq i64 %i.l, %i.x
  br i1 %or.cond8.i.2, label %.thread64, label %sp_cmp_d.exit.thread.i.2

sp_cmp_d.exit.thread.i.2:                         ; preds = %sp_cmp_d.exit.thread.i.1
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @sp_primes, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !46
  %i.ab = zext i16 %i.aa to i64
  %or.cond8.i.3 = icmp eq i64 %i.l, %i.ab
  br i1 %or.cond8.i.3, label %.thread64, label %sp_cmp_d.exit.thread.i.3

sp_cmp_d.exit.thread.i.3:                         ; preds = %sp_cmp_d.exit.thread.i.2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %sp_cmp_primes.exit, label %bb.j, !llvm.loop !21

sp_cmp_primes.exit:                               ; preds = %sp_cmp_d.exit.thread.i.3, %.thread52, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %sp_cmp_primes.exit, %.loopexit.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %.loopexit.i ], [ 0, %sp_cmp_primes.exit ] ; 3 uses
  %.01624.i = phi i32 [ %.11720.i, %.loopexit.i ], [ 0, %sp_cmp_primes.exit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @sp_comp, i64 %indvars.iv32.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36
  %i.ae = call i32 @sp_mod_d(ptr noundef nonnull readonly %0, i64 noundef %i.ad, ptr noundef nonnull %i.a) ; 2 uses
end_hunk_3
begin_hunk_4_@_sp_prime_random_trials:bb.a
  fence seq_cst
  store volatile i16 0, ptr %i.x, align 16, !tbaa !34
  store volatile i64 0, ptr %i.ar, align 8, !tbaa !36
  br label %.critedge94

.critedge94:                                      ; preds = %sp_count_bits.exit, %bb.f, %._crit_edge.i.i135
  %.4 = phi i32 [ %.3, %._crit_edge.i.i135 ], [ -98, %bb.f ], [ -98, %sp_count_bits.exit ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @CheckRunTimeSettings() local_unnamed_addr #2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @CheckRunTimeFastMath() local_unnamed_addr #2 {
bb.a:
  ret i32 64
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_sp_div_same_size(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #10 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !40     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = zext i16 %i.a to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.pre.pre = load i16, ptr %0, align 8, !tbaa !40 ; 6 uses
  %i.e = zext i16 %.pre.pre to i32                ; 2 uses
  %invariant.op = sub nsw i32 %i.e, %i.c
  %.041 = add i16 %i.a, -1                        ; 3 uses
  %i.f = zext i16 %.041 to i32                    ; 2 uses
  %.not42 = icmp eq i16 %.041, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.0 = add i16 %.043, -1                         ; 3 uses
  %i.g = zext i16 %.0 to i32                      ; 2 uses
  %.not = icmp eq i16 %.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !192

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.f, %bb.a ], [ %i.g, %bb.b ]
  %.pre31 = load i64, ptr %i.d, align 8, !tbaa !36
  %.pre = zext i16 %.pre.pre to i32
  br label %split

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %.043 = phi i16 [ %.0, %bb.b ], [ %.041, %bb.a ] ; 2 uses
  %.reass = add nsw i32 %invariant.op, %i.h
  %i.i = sext i32 %.reass to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %i.l = zext i16 %.043 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %.not26 = icmp eq i64 %i.k, %i.n
  br i1 %.not26, label %bb.b, label %split, !llvm.loop !192

split:                                            ; preds = %.lr.ph, %._crit_edge
  %i.o = phi i32 [ %.lcssa, %._crit_edge ], [ %i.h, %.lr.ph ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %.lr.ph ]
  %i.p = phi i64 [ %.pre31, %._crit_edge ], [ %i.n, %.lr.ph ]
  %i.q = sub nsw i32 %.pre-phi, %i.c              ; 2 uses
  %i.r = add nsw i32 %i.q, %i.o
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %.not27 = icmp ult i64 %i.u, %i.p
  br i1 %.not27, label %_sp_sub_off.exit, label %bb.c

bb.c:                                             ; preds = %split
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !36
  %i.aa = sub i16 %.pre.pre, %i.a                 ; 3 uses
  %i.ab = icmp ult i16 %i.aa, %.pre.pre
  br i1 %i.ab, label %.lr.ph64.i, label %.critedge2.i

.lr.ph64.i:                                       ; preds = %bb.c
  %i.ac = zext i16 %i.aa to i64
  %wide.trip.count87.i = zext i16 %i.a to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph64.i
  %indvars.iv82.i = phi i64 [ %i.ac, %.lr.ph64.i ], [ %indvars.iv.next83.i, %bb.e ] ; 3 uses
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next81.i, %bb.e ] ; 3 uses
  %.04963.i = phi i128 [ 0, %.lr.ph64.i ], [ %i.am, %bb.e ] ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv80.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %.critedge2.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv82.i ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.af = zext i64 %i.ae to i128
  %i.ag = add nsw i128 %.04963.i, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv80.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !36
  %i.aj = zext i64 %i.ai to i128
  %i.ak = sub nsw i128 %i.ag, %i.aj               ; 2 uses
  %i.al = trunc i128 %i.ak to i64
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !36
  %i.am = ashr i128 %i.ak, 64                     ; 2 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next81.i to i16
  %exitcond = icmp eq i16 %i.a, %lftr.wideiv
  br i1 %exitcond, label %.critedge2.loopexit.i, label %bb.d, !llvm.loop !17

.critedge2.loopexit.i:                            ; preds = %bb.e, %bb.d
  %.2.lcssa.ph.in.i = phi i64 [ %indvars.iv82.i, %bb.d ], [ %indvars.iv.next83.i, %bb.e ]
  %.049.lcssa.ph.i = phi i128 [ %.04963.i, %bb.d ], [ %i.am, %bb.e ]
  %.2.lcssa.ph.i = trunc i64 %.2.lcssa.ph.in.i to i16
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %bb.c
  %.2.lcssa.i = phi i16 [ %i.aa, %bb.c ], [ %.2.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %.049.lcssa.i = phi i128 [ 0, %bb.c ], [ %.049.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %i.an = icmp ult i16 %.2.lcssa.i, %.pre.pre
  br i1 %i.an, label %.lr.ph74.i, label %_sp_sub_off.exit

.lr.ph74.i:                                       ; preds = %.critedge2.i
  %i.ao = zext i16 %.2.lcssa.i to i64             ; 5 uses
  %wide.trip.count93.i = zext i16 %.pre.pre to i64 ; 3 uses
  %i.ap = sub nsw i64 %wide.trip.count93.i, %i.ao
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph74.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.as = zext i64 %i.ar to i128
  %i.at = add nsw i128 %.049.lcssa.i, %i.as       ; 2 uses
  %i.au = trunc i128 %i.at to i64
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !36
  %i.av = ashr i128 %i.at, 64
  %indvars.iv.next91.i.prol = add nuw nsw i64 %i.ao, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph74.i
  %indvars.iv90.i.unr = phi i64 [ %i.ao, %.lr.ph74.i ], [ %indvars.iv.next91.i.prol, %.prol.loopexit.unr-lcssa ]
  %.173.i.unr = phi i128 [ %.049.lcssa.i, %.lr.ph74.i ], [ %i.av, %.prol.loopexit.unr-lcssa ]
  %i.aw = add nsw i64 %wide.trip.count93.i, -1
  %i.ax = icmp eq i64 %i.aw, %i.ao
  br i1 %i.ax, label %_sp_sub_off.exit, label %.lr.ph74.i.new

.lr.ph74.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph74.i.new
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.lr.ph74.i.new ], [ %indvars.iv90.i.unr, %.prol.loopexit ] ; 3 uses
  %.173.i = phi i128 [ %i.bk, %.lr.ph74.i.new ], [ %.173.i.unr, %.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv90.i ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36
  %i.ba = zext i64 %i.az to i128
  %i.bb = add nsw i128 %.173.i, %i.ba             ; 2 uses
  %i.bc = trunc i128 %i.bb to i64
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !36
  %i.bd = ashr i128 %i.bb, 64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv90.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36
  %i.bh = zext i64 %i.bg to i128
  %i.bi = add nsw i128 %i.bd, %i.bh               ; 2 uses
  %i.bj = trunc i128 %i.bi to i64
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !36
  %i.bk = ashr i128 %i.bi, 64
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %exitcond94.not.i.1 = icmp eq i64 %indvars.iv.next91.i.1, %wide.trip.count93.i
  br i1 %exitcond94.not.i.1, label %_sp_sub_off.exit, label %.lr.ph74.i.new, !llvm.loop !18

_sp_sub_off.exit:                                 ; preds = %.prol.loopexit, %.lr.ph74.i.new, %.critedge2.i, %split
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_mulmod_tmp(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address) %3) unnamed_addr #13 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = zext i16 %i.a to i64
  %i.c = icmp eq i16 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store volatile i16 0, ptr %3, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store volatile i64 0, ptr %i.f, align 8, !tbaa !36
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = zext i16 %i.d to i64
  %4 = add nuw nsw i64 %i.b, 4294967295
  %i.h = add nuw nsw i64 %4, %i.g
  %5 = and i64 %i.h, 4294967295
  %i.i = add nuw nsw i64 %5, 2
  %i.j = tail call ptr @llvm.stacksave.p0()
  %i.k = alloca i64, i64 %i.i, align 16           ; 6 uses
  %i.l = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.m = zext i16 %i.l to i32
  %i.n = load i16, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.o = zext i16 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, %i.m
  %i.q = icmp samesign ult i32 %i.p, 130
  br i1 %i.q, label %bb.e, label %sp_mod.exit

bb.e:                                             ; preds = %bb.d
  %i.r = add i16 %i.n, %i.l                       ; 2 uses
  %i.s = add i16 %i.r, -1
  %i.t = icmp ult i16 %i.s, 129
  br i1 %i.t, label %sp_init_size.exit, label %sp_mod.exit

sp_init_size.exit:                                ; preds = %bb.e
  store volatile i16 0, ptr %i.k, align 16, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store volatile i64 0, ptr %i.u, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store volatile i16 %i.r, ptr %i.v, align 2, !tbaa !37
  %i.w = call i32 @sp_mul(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.k) ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %sp_mod.exit

bb.f:                                             ; preds = %sp_init_size.exit
  %i.y = icmp eq ptr %2, null
  %i.z = icmp eq ptr %3, null
  %or.cond3.i = or i1 %i.y, %i.z
  br i1 %or.cond3.i, label %sp_mod.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i16, ptr %i.k, align 16, !tbaa !40
  %i.ab = icmp ult i16 %i.aa, 129
  br i1 %i.ab, label %bb.h, label %sp_mod.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = call i32 @sp_div(ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %3)
  br label %sp_mod.exit

sp_mod.exit:                                      ; preds = %bb.d, %bb.e, %bb.h, %bb.g, %bb.f, %sp_init_size.exit
  %.3 = phi i32 [ -98, %bb.f ], [ %i.w, %sp_init_size.exit ], [ %i.ac, %bb.h ], [ -98, %bb.g ], [ -98, %bb.e ], [ -98, %bb.d ]
  call void @llvm.stackrestore.p0(ptr %i.j)
  br label %bb.i

bb.i:                                             ; preds = %sp_mod.exit, %bb.c
  %.4 = phi i32 [ 0, %bb.c ], [ %.3, %sp_mod.exit ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_invmod_div(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address) %2, ptr nofree noundef captures(address) %3, ptr nofree noundef %4, ptr nofree noundef nonnull %5, ptr nofree noundef nonnull captures(address) %6) unnamed_addr #11 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !40     ; 4 uses
  %i.b = zext i16 %i.a to i64
  %i.c = add nuw nsw i64 %i.b, 2
  %i.d = alloca i64, i64 %i.c, align 16           ; 12 uses
  %i.e = icmp ult i16 %i.a, 129
  br i1 %i.e, label %sp_init_size.exit.thread, label %sp_copy.exit

sp_init_size.exit.thread:                         ; preds = %bb.a
  %i.f = add nuw nsw i16 %i.a, 1
  store volatile i16 0, ptr %i.d, align 16, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store volatile i64 0, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store volatile i16 %i.f, ptr %i.h, align 2, !tbaa !37
  %.not = icmp eq ptr %0, %3
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %sp_init_size.exit.thread
  %i.i = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !36
  br label %_sp_copy.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i16 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull readonly align 8 %i.n, i64 %i.o, i1 false)
  %.pre.i = load i16, ptr %0, align 8, !tbaa !40
  br label %_sp_copy.exit

_sp_copy.exit:                                    ; preds = %bb.c, %bb.d
  %i.p = phi i16 [ %.pre.i, %bb.d ], [ 0, %bb.c ]
  store i16 %i.p, ptr %3, align 8, !tbaa !40
  %.pre = load i16, ptr %1, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %_sp_copy.exit, %sp_init_size.exit.thread
  %i.q = phi i16 [ %.pre, %_sp_copy.exit ], [ %i.a, %sp_init_size.exit.thread ] ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !36
  br label %.lr.ph

bb.g:                                             ; preds = %bb.e
  %i.t = zext i16 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.v, i64 %i.w, i1 false)
  %.pre.i103 = load i16, ptr %1, align 8, !tbaa !40
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %i.x = phi i16 [ %.pre.i103, %bb.g ], [ 0, %bb.f ]
  store i16 %i.x, ptr %2, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.y, align 8, !tbaa !36
  store i16 1, ptr %4, align 8, !tbaa !34
  store volatile i16 0, ptr %5, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store volatile i64 0, ptr %i.z, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 10 uses
  br label %_sp_add_off.exit

_sp_add_off.exit:                                 ; preds = %_sp_add_off.exit.backedge, %.lr.ph
  %.0406 = phi ptr [ %2, %.lr.ph ], [ %.080405, %_sp_add_off.exit.backedge ] ; 5 uses
  %.080405 = phi ptr [ %3, %.lr.ph ], [ %.0406, %_sp_add_off.exit.backedge ] ; 3 uses
  %.082404 = phi i32 [ 0, %.lr.ph ], [ %.084403, %_sp_add_off.exit.backedge ] ; 13 uses
  %.084403 = phi i32 [ 0, %.lr.ph ], [ %.084403.be, %_sp_add_off.exit.backedge ] ; 3 uses
  %.089402 = phi ptr [ %4, %.lr.ph ], [ %.091401, %_sp_add_off.exit.backedge ] ; 10 uses
  %.091401 = phi ptr [ %5, %.lr.ph ], [ %.089402, %_sp_add_off.exit.backedge ] ; 40 uses
  %i.ab = load i16, ptr %.0406, align 8, !tbaa !40
  switch i16 %i.ab, label %.thread [
    i16 1, label %bb.h
    i16 0, label %.critedge102
  ]

bb.h:                                             ; preds = %_sp_add_off.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.0406, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !36
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %.critedge102, label %.thread

.thread:                                          ; preds = %_sp_add_off.exit, %bb.h
  %i.af = call i32 @sp_div(ptr noundef nonnull %.0406, ptr noundef %.080405, ptr noundef nonnull %i.d, ptr noundef nonnull %.0406) ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %sp_copy.exit

bb.i:                                             ; preds = %.thread
  %i.ah = load i16, ptr %i.d, align 16, !tbaa !40
  %i.ai = icmp eq i16 %i.ah, 1
  br i1 %i.ai, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !36
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %bb.j
  %i.al = xor i32 %.082404, %.084403
  %i.am = icmp eq i32 %i.al, 1
  %i.an = load i16, ptr %.091401, align 8, !tbaa !40 ; 14 uses
  br i1 %i.am, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %.not75.i = icmp eq i16 %i.an, 0
  br i1 %.not75.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ao = load i16, ptr %.089402, align 8, !tbaa !40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.091401, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.089402, i64 8
  %i.ar = add i16 %i.an, -1
  %umin.i = call i16 @llvm.umin.i16(i16 %i.ao, i16 %i.ar) ; 2 uses
  %i.as = add nuw i16 %umin.i, 1
  %wide.trip.count.i = zext i16 %i.ao to i64
  %wide.trip.count80.i = zext i16 %i.an to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %.05058.i = phi i128 [ 0, %.lr.ph.i ], [ %i.bc, %bb.n ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !36
  %i.av = zext i64 %i.au to i128
  %i.aw = add nuw nsw i128 %.05058.i, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !36
  %i.az = zext i64 %i.ay to i128
  %i.ba = add nuw nsw i128 %i.aw, %i.az           ; 2 uses
  %i.bb = trunc i128 %i.ba to i64
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !36
  %i.bc = lshr i128 %i.ba, 64                     ; 2 uses
end_hunk_4
