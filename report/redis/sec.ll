Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sec?download=true
inline.NumInlined: 71
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.edata_list_active_t = type { %struct.anon.1 }
%struct.anon.1 = type { ptr }

@.str = private unnamed_addr constant [10 x i8] c"sec_shard\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_sec_init(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60
  %i.c = and i64 %i.b, -4096                      ; 4 uses
  %i.d = icmp ugt i64 %i.c, 8070450532247928832
  br i1 %i.d, label %sz_psz2ind.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.c, -1                     ; 2 uses
  %i.g = tail call range(i64 0, 53) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.h) ; 2 uses
  %i.j = icmp samesign ult i64 %i.c, 16385
  %i.k = add nuw nsw i32 %i.i, 11
  %i.l = zext nneg i32 %i.k to i64
  %i.m = select i1 %i.j, i64 12, i64 %i.l
  %i.n = lshr i64 %i.f, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  %i.q = shl nuw nsw i32 %i.i, 2
  %i.r = or disjoint i32 %i.q, 1
  %i.s = add nuw nsw i32 %i.r, %i.p
  br label %sz_psz2ind.exit

sz_psz2ind.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.s, %bb.b ], [ 200, %bb.a ] ; 3 uses
  %i.t = load i64, ptr %4, align 8, !tbaa !61
  %i.u = zext nneg i32 %.0.i to i64               ; 3 uses
  %i.v = mul nuw nsw i64 %i.u, 24
  %reass.add = add nuw nsw i64 %i.v, 144
  %reass.mul = mul i64 %reass.add, %i.t
  %i.w = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %2, i64 noundef %reass.mul, i64 noundef 64) #8 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.c

bb.c:                                             ; preds = %sz_psz2ind.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.w, ptr %i.y, align 8, !tbaa !21
  %i.z = load i64, ptr %4, align 8, !tbaa !61     ; 2 uses
  %.not62.not = icmp eq i64 %i.z, 0
  br i1 %.not62.not, label %.critedge59, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw [144 x i8], ptr %i.w, i64 %i.z
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.ab = add nsw i32 %.0.i, -1
  %i.ac = icmp ult i32 %i.ab, 3
  %unroll_iter = and i64 %i.u, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.epilog-lcssa
  %.05065 = phi i64 [ %i.am, %.epilog-lcssa ], [ 0, %.lr.ph.preheader ]
  %.05164 = phi ptr [ %.lcssa, %.epilog-lcssa ], [ %i.aa, %.lr.ph.preheader ] ; 3 uses
  %.05263 = phi ptr [ %i.ad, %.epilog-lcssa ], [ %i.w, %.lr.ph.preheader ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05263, i64 144
  %i.ae = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull %.05263, ptr noundef nonnull @.str, i32 noundef 16, i32 noundef 0) #8
  br i1 %i.ae, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.05263, i64 112
  store i8 1, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %.05263, i64 120 ; 6 uses
  store ptr %.05164, ptr %i.ag, align 8, !tbaa !27
  br i1 %i.ac, label %.epil.preheader, label %.new

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.d
  %indvars.iv.epil.init = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.160.epil.init = phi ptr [ %.05164, %bb.d ], [ %6, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %.160.epil = phi ptr [ %.160.epil.init, %.epil.preheader ], [ %5, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv.epil ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %.160.epil, i64 24 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !57

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %.lcssa = phi ptr [ %6, %.unr-lcssa ], [ %5, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.05263, i64 128
  store i64 0, ptr %i.ak, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %.05263, i64 136
  store i32 0, ptr %i.al, align 8, !tbaa !34
  %i.am = add nuw i64 %.05065, 1                  ; 2 uses
  %i.an = load i64, ptr %4, align 8, !tbaa !61
  %.not = icmp ult i64 %i.am, %i.an
  br i1 %.not, label %.lr.ph, label %.critedge59, !llvm.loop !58

.new:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.new ], [ 0, %bb.d ] ; 5 uses
  %.160 = phi ptr [ %6, %.new ], [ %.05164, %bb.d ]
  %niter = phi i64 [ %niter.next.3, %.new ], [ 0, %bb.d ]
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  store i8 0, ptr %i.ap, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i8 0, ptr %i.at, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i8 0, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store i8 0, ptr %i.bb, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %.160, i64 96 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.new, !llvm.loop !59

.critedge59:                                      ; preds = %.epilog-lcssa, %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %3, ptr %i.bd, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !63
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %.0.i, ptr %i.bf, align 8, !tbaa !38
  store ptr @sec_alloc, ptr %1, align 8, !tbaa !64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @je_pai_alloc_batch_default, ptr %i.bg, align 8, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @sec_expand, ptr %i.bh, align 8, !tbaa !66
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr @sec_shrink, ptr %i.bi, align 8, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @sec_dalloc, ptr %i.bj, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @je_pai_dalloc_batch_default, ptr %i.bk, align 8, !tbaa !69
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge59, %sz_psz2ind.exit
  %.4 = phi i1 [ true, %sz_psz2ind.exit ], [ false, %.critedge59 ], [ true, %.lr.ph ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal ptr @sec_alloc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 zeroext %5, i1 noundef zeroext %6, ptr noundef %7) #0 {
bb.a:
  %i.a = icmp ugt i64 %3, 4096
  %or.cond = or i1 %4, %i.a
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = tail call ptr %i.j(ptr noundef %0, ptr noundef nonnull %i.i, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext false, i1 noundef zeroext %6, ptr noundef %7) #8, !inline_history !70
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.l, label %sz_psz2ind.exit, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.m = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i64 %2, -1                       ; 2 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 false)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.p) ; 2 uses
  %i.r = icmp samesign ult i64 %2, 16385
  %i.s = add nuw nsw i32 %i.q, 11
  %i.t = zext nneg i32 %i.s to i64
  %i.u = select i1 %i.r, i64 12, i64 %i.t
  %i.v = lshr i64 %i.n, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 3
  %i.y = shl nuw nsw i32 %i.q, 2
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  br label %sz_psz2ind.exit

sz_psz2ind.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.aa, %bb.f ], [ 199, %bb.e ]
  %i.ab = icmp eq ptr %0, null
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sz_psz2ind.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  br label %sec_shard_pick.exit

bb.h:                                             ; preds = %sz_psz2ind.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !41  ; 2 uses
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.aj = mul i64 %i.ai, 6364136223846793005
  %i.ak = add i64 %i.aj, 1442695040888963407      ; 2 uses
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !37
  %i.al = lshr i64 %i.ak, 32
  %i.am = load i64, ptr %i.b, align 8, !tbaa !39
  %i.an = mul i64 %i.al, %i.am
  %i.ao = lshr i64 %i.an, 32
  %i.ap = trunc i64 %i.ao to i8                   ; 2 uses
  store i8 %i.ap, ptr %i.ae, align 8, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = phi i8 [ %i.ap, %bb.i ], [ %i.af, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = zext i8 %i.aq to i64
  %i.au = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %i.at
  br label %sec_shard_pick.exit

sec_shard_pick.exit:                              ; preds = %bb.g, %bb.j
  %.0.i52 = phi ptr [ %i.ad, %bb.g ], [ %i.au, %bb.j ] ; 13 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i52, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.0.i ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i52, i64 64 ; 4 uses
  %i.az = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ay) #8
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sec_shard_pick.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i52) #8
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i52, i64 104
  store atomic i8 1, ptr %i.ba monotonic, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %sec_shard_pick.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i52, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !46
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i52, i64 48 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.bf, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %0, ptr %i.be, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i52, i64 40 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !48
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !48
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.l, %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i52, i64 112
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !26, !range !49, !noundef !50
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.n, label %bb.q

bb.n:                                             ; preds = %malloc_mutex_lock.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %.val15.i = load ptr, ptr %i.bm, align 8, !tbaa !51 ; 7 uses
  %.not.i54 = icmp eq ptr %.val15.i, null
  br i1 %.not.i54, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.val15.i, i64 40 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !41 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !51
  %i.bp = icmp eq ptr %i.bo, %.val15.i
  br i1 %i.bp, label %bb.p, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.val15.i, i64 48 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !41
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !41 ; 2 uses
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !41
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !41
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !41
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !41 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !41
  %i.ce = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr %.val15.i, ptr %i.cf, align 8, !tbaa !41
  br label %.critedge

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.bm, align 8, !tbaa !51
  br label %.critedge

bb.q:                                             ; preds = %malloc_mutex_lock.exit, %bb.n
  %i.cg = load i8, ptr %i.ax, align 8, !tbaa !32, !range !49, !noundef !50
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !52
  %.not = icmp eq i64 %i.cj, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.ax, align 8, !tbaa !32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i52, i64 104
  store atomic i8 0, ptr %i.ck monotonic, align 8
  %i.cl = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ay) #8 ; 0 uses
  %i.cm = tail call fastcc ptr @sec_batch_fill_and_alloc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %.0.i52, ptr noundef nonnull %i.ax, i64 noundef %2)
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i52, i64 104
  store atomic i8 0, ptr %i.cn monotonic, align 8
  %i.co = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ay) #8 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !36 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !71
  %i.cs = tail call ptr %i.cr(ptr noundef %0, ptr noundef nonnull %i.cq, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext %6, ptr noundef %7) #8, !inline_history !70
  br label %bb.u

.critedge:                                        ; preds = %bb.p, %.thread.i.i
  %i.ct = getelementptr i8, ptr %.val15.i, i64 16 ; 2 uses
  %.val14.i = load i64, ptr %i.ct, align 8, !tbaa !41
  %i.cu = and i64 %.val14.i, -4096
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !53
  %i.cx = sub i64 %i.cw, %i.cu
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !53
  %.val.i = load i64, ptr %i.ct, align 8, !tbaa !41
  %i.cy = and i64 %.val.i, -4096
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i52, i64 128 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !33
  %i.db = sub i64 %i.da, %i.cy
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i52, i64 104
  store atomic i8 0, ptr %i.dc monotonic, align 8
  %i.dd = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ay) #8 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.critedge, %bb.d
  %.047 = phi ptr [ %i.k, %bb.d ], [ %i.cm, %bb.s ], [ %i.cs, %bb.t ], [ %.val15.i, %.critedge ]
  ret ptr %.047
}

declare i64 @je_pai_alloc_batch_default(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @sec_expand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, ptr noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = tail call zeroext i1 %i.d(ptr noundef %0, ptr noundef %i.b, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, ptr noundef %6) #8, !inline_history !72
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @sec_shrink(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = tail call zeroext i1 %i.d(ptr noundef %0, ptr noundef %i.b, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #8, !inline_history !74
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define internal void @sec_dalloc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %.val = load i64, ptr %i.d, align 8, !tbaa !41
  %i.e = and i64 %.val, -4096
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  tail call void %i.l(ptr noundef %0, ptr noundef %i.j, ptr noundef %2, ptr noundef %3) #8, !inline_history !76
  br label %sec_shard_dalloc_and_unlock.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %0, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %sec_shard_pick.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !41    ; 2 uses
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !37
  %i.u = mul i64 %i.t, 6364136223846793005
  %i.v = add i64 %i.u, 1442695040888963407        ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !tbaa !37
  %i.w = lshr i64 %i.v, 32
  %i.x = load i64, ptr %i.a, align 8, !tbaa !39
  %i.y = mul i64 %i.w, %i.x
  %i.z = lshr i64 %i.y, 32
  %i.aa = trunc i64 %i.z to i8                    ; 2 uses
  store i8 %i.aa, ptr %i.p, align 8, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi i8 [ %i.aa, %bb.g ], [ %i.q, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ae = zext i8 %i.ab to i64
  %i.af = getelementptr inbounds nuw [144 x i8], ptr %i.ad, i64 %i.ae
  br label %sec_shard_pick.exit

sec_shard_pick.exit:                              ; preds = %bb.e, %bb.h
  %.0.i = phi ptr [ %i.o, %bb.e ], [ %i.af, %bb.h ] ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 3 uses
  %i.ah = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ag) #8
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %sec_shard_pick.exit
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %.0.i) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  store atomic i8 1, ptr %i.ai monotonic, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sec_shard_pick.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.an, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %0, ptr %i.am, align 8, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !48
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !48
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.j, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !26, !range !49, !noundef !50
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.q

bb.l:                                             ; preds = %malloc_mutex_lock.exit
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !41
  %i.au = and i64 %.val.i, -4096                  ; 6 uses
  %i.av = icmp ugt i64 %i.au, 8070450532247928832
  br i1 %i.av, label %sz_psz2ind.exit.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nsw i64 %i.au, -1                   ; 2 uses
  %i.ay = tail call range(i64 0, 53) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.az) ; 2 uses
  %i.bb = icmp samesign ult i64 %i.au, 16385
  %i.bc = add nuw nsw i32 %i.ba, 11
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = select i1 %i.bb, i64 12, i64 %i.bd
  %i.bf = lshr i64 %i.ax, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 3
  %i.bi = shl nuw nsw i32 %i.ba, 2
  %i.bj = or disjoint i32 %i.bh, %i.bi
  %i.bk = zext nneg i32 %i.bj to i64
  br label %sz_psz2ind.exit.i

sz_psz2ind.exit.i:                                ; preds = %bb.m, %bb.l
  %.0.i.i = phi i64 [ %i.bk, %bb.m ], [ 199, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.0.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %2, ptr %i.bp, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  store ptr %2, ptr %i.bq, align 8, !tbaa !41
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !51 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %edata_list_active_prepend.exit.i, label %bb.n

bb.n:                                             ; preds = %sz_psz2ind.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !41
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !41
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr %2, ptr %i.bw, align 8, !tbaa !41
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !41
  store ptr %i.bz, ptr %i.bq, align 8, !tbaa !41
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !51 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !41
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr %2, ptr %i.cf, align 8, !tbaa !41
  br label %edata_list_active_prepend.exit.i

edata_list_active_prepend.exit.i:                 ; preds = %bb.n, %sz_psz2ind.exit.i
  store ptr %2, ptr %i.bo, align 8, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !53
  %i.ci = add i64 %i.ch, %i.au
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !53
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 128 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !33
  %i.cl = add i64 %i.ck, %i.au                    ; 2 uses
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !54
  %i.co = icmp ugt i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %edata_list_active_prepend.exit.i
  tail call fastcc void @sec_flush_some_and_unlock(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %.0.i)
  br label %sec_shard_dalloc_and_unlock.exit

bb.p:                                             ; preds = %edata_list_active_prepend.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  store atomic i8 0, ptr %i.cp monotonic, align 8
  %i.cq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #8 ; 0 uses
  br label %sec_shard_dalloc_and_unlock.exit

bb.q:                                             ; preds = %malloc_mutex_lock.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  store atomic i8 0, ptr %i.cr monotonic, align 8
  %i.cs = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ag) #8 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !77
  tail call void %i.cw(ptr noundef %0, ptr noundef %i.cu, ptr noundef nonnull %2, ptr noundef %3) #8, !inline_history !76
  br label %sec_shard_dalloc_and_unlock.exit

sec_shard_dalloc_and_unlock.exit:                 ; preds = %bb.p, %bb.o, %bb.q, %bb.c
  ret void
}

declare void @je_pai_dalloc_batch_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @je_sec_flush(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.edata_list_active_t, align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.b

._crit_edge:                                      ; preds = %sec_flush_all_locked.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %sec_flush_all_locked.exit
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %sec_flush_all_locked.exit ] ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw [144 x i8], ptr %i.g, i64 %.013 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.i) #8
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.h) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store atomic i8 1, ptr %i.k monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.p, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.o, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !48
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.d, %bb.e
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw [144 x i8], ptr %i.t, i64 %.013 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store i64 0, ptr %i.v, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr null, ptr %2, align 8, !tbaa !51
  %i.w = load i32, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %.not.i12 = icmp eq i32 %i.w, 0
  br i1 %.not.i12, label %sec_flush_all_locked.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %malloc_mutex_lock.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  br label %bb.f

bb.f:                                             ; preds = %edata_list_active_concat.exit.i, %.lr.ph.i
  %.pre13.i = phi i32 [ %i.w, %.lr.ph.i ], [ %.pre14.i, %edata_list_active_concat.exit.i ] ; 2 uses
  %i.y = phi i32 [ %i.w, %.lr.ph.i ], [ %i.bb, %edata_list_active_concat.exit.i ]
  %i.z = phi ptr [ null, %.lr.ph.i ], [ %i.bc, %edata_list_active_concat.exit.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %edata_list_active_concat.exit.i ] ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.z, null
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !51 ; 4 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.af, ptr %2, align 8, !tbaa !51
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %edata_list_active_concat.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !41
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !41
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !41
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr %i.z, ptr %i.av, align 8, !tbaa !41
end_hunk_0
