Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/kwset?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@tolower_trans_tbl = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@.str = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"kwset.c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot allocate a negative amount: %ld\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kwsalloc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @xmalloc(i64 noundef 2440) #13 ; 17 uses
  %i.b = tail call i32 @_obstack_begin(ptr noundef %i.a, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @obstack_chunk_alloc, ptr noundef nonnull @free) #13 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp slt i64 %i.j, 56
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_obstack_newchunk(ptr noundef nonnull %i.a, i32 noundef 56) #13
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22   ; 5 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = or i8 %i.r, 2
  store i8 %i.s, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = add nsw i64 %i.w, %i.t
  %i.y = xor i32 %i.v, -1
  %i.z = sext i32 %i.y to i64
  %i.aa = and i64 %i.x, %i.z                      ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = sub i64 %i.aa, %i.ae
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.ae
  %i.aj = icmp sgt i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi ptr [ %i.ag, %bb.f ], [ %i.ab, %bb.e ]
  store ptr %i.ak, ptr %i.n, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.o, ptr %i.al, align 8, !tbaa !25
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @obstack_free(ptr noundef nonnull %i.a, ptr noundef null) #13
  tail call void @free(ptr noundef nonnull %i.a) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %i.o, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, i8 0, i64 40, i1 false)
  store i32 2147483647, ptr %i.an, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 -1, ptr %i.ao, align 4, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 2416
  store ptr null, ptr %i.ap, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 2432
  store ptr %0, ptr %i.aq, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.a, %bb.i ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @obstack_chunk_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.1, i32 noundef 47, ptr noundef nonnull @.str.2, i64 noundef %0) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @xmalloc(i64 noundef %0) #13
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #3

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @kwsfree(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @obstack_free(ptr noundef %0, ptr noundef null) #13
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kwsincr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x ptr], align 16              ; 6 uses
  %i.b = alloca [12 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0210274 = load ptr, ptr %i.c, align 8, !tbaa !33 ; 2 uses
  %.not275 = icmp eq i64 %2, 0
  br i1 %.not275, label %._crit_edge, label %.lr.ph278

.lr.ph278:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2432
  store i32 0, ptr %i.b, align 16, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph278, %.critedge232
  %.in281 = phi i64 [ %2, %.lr.ph278 ], [ %i.l, %.critedge232 ]
  %.0210277 = phi ptr [ %.0210274, %.lr.ph278 ], [ %.0210, %.critedge232 ] ; 3 uses
  %.0202276 = phi ptr [ %i.d, %.lr.ph278 ], [ %i.n, %.critedge232 ]
  %i.l = add i64 %.in281, -1                      ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %.not218 = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds i8, ptr %.0202276, i64 -1 ; 3 uses
  br i1 %.not218, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.in = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ]
  %i.r = load i8, ptr %.in, align 1, !tbaa !34    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0210277, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  store ptr %i.s, ptr %i.a, align 16, !tbaa !36
  %.not219268 = icmp eq ptr %i.t, null
  br i1 %.not219268, label %.critedge231, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %.0207269 = phi ptr [ %.1208, %bb.e ], [ %i.t, %bb.d ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0207269, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !38    ; 2 uses
  %.not220 = icmp eq i8 %i.r, %i.v
  br i1 %.not220, label %.critedge232, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.0207269, ptr %i.w, align 8, !tbaa !36
  %3 = icmp uge i8 %i.r, %i.v                     ; 2 uses
  %spec.select = zext i1 %3 to i32
  %spec.select351.idx = select i1 %3, i64 8, i64 0
  %spec.select351 = getelementptr inbounds nuw i8, ptr %.0207269, i64 %spec.select351.idx
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %spec.select, ptr %i.x, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.1208 = load ptr, ptr %spec.select351, align 8, !tbaa !36 ; 2 uses
  %.not219 = icmp eq ptr %.1208, null
  br i1 %.not219, label %.critedge231.loopexit, label %.lr.ph, !llvm.loop !49

.critedge231.loopexit:                            ; preds = %bb.e
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge231

.critedge231:                                     ; preds = %.critedge231.loopexit, %bb.d
  %i.z = phi ptr [ %i.s, %bb.d ], [ %.0207269, %.critedge231.loopexit ] ; 2 uses
  %.0205.lcssa = phi i32 [ 0, %bb.d ], [ %i.y, %.critedge231.loopexit ] ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !21  ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp slt i64 %i.ae, 32
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge231
  tail call void @_obstack_newchunk(ptr noundef nonnull %0, i32 noundef 32) #13
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge231
  %i.ag = phi ptr [ %.pre, %bb.f ], [ %i.ab, %.critedge231 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !22  ; 20 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load i8, ptr %i.i, align 8
  %i.al = or i8 %i.ak, 2
  store i8 %i.al, ptr %i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = load i32, ptr %i.j, align 8, !tbaa !23  ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = add nsw i64 %i.ao, %i.am
  %i.aq = xor i32 %i.an, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = and i64 %i.ap, %i.ar                    ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = sub i64 %i.as, %i.av
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.az = sub i64 %i.ay, %i.av
  %i.ba = icmp sgt i64 %i.aw, %i.az
  %spec.store.select280 = select i1 %i.ba, ptr %i.ax, ptr %i.at ; 5 uses
  store ptr %spec.store.select280, ptr %i.g, align 8, !tbaa !21
  store ptr %spec.store.select280, ptr %i.h, align 8, !tbaa !22
  %.not221 = icmp eq ptr %i.ai, null
  br i1 %.not221, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = ptrtoint ptr %spec.store.select280 to i64
  %i.bc = sub i64 %i.ay, %i.bb
  %i.bd = icmp slt i64 %i.bc, 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_obstack_newchunk(ptr noundef nonnull %0, i32 noundef 56) #13
  %.pre311 = load ptr, ptr %i.g, align 8, !tbaa !21
  %.pre312 = load ptr, ptr %i.h, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.be = phi ptr [ %.pre312, %bb.k ], [ %spec.store.select280, %bb.j ] ; 9 uses
  %i.bf = phi ptr [ %.pre311, %bb.k ], [ %spec.store.select280, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.be
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = load i8, ptr %i.i, align 8
  %i.bj = or i8 %i.bi, 2
  store i8 %i.bj, ptr %i.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = load i32, ptr %i.j, align 8, !tbaa !23  ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = add nsw i64 %i.bm, %i.bk
  %i.bo = xor i32 %i.bl, -1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = and i64 %i.bn, %i.bp                    ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load ptr, ptr %i.k, align 8, !tbaa !24  ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = sub i64 %i.bq, %i.bt
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.bt
  %i.by = icmp sgt i64 %i.bu, %i.bx
  %spec.store.select = select i1 %i.by, ptr %i.bv, ptr %i.br ; 2 uses
  store ptr %spec.store.select, ptr %i.g, align 8, !tbaa !21
  store ptr %spec.store.select, ptr %i.h, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.be, ptr %i.bz, align 8, !tbaa !40
  %.not222 = icmp eq ptr %i.be, null
  br i1 %.not222, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ca = icmp ugt ptr %i.ai, %i.bs
  %i.cb = icmp ult ptr %i.ai, %i.bv
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !22
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !21
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  tail call void @obstack_free(ptr noundef nonnull %0, ptr noundef nonnull %i.ai) #13
  br label %.loopexit

bb.r:                                             ; preds = %bb.n
  store i32 0, ptr %i.be, align 8, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr null, ptr %i.cc, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %.0210277, ptr %i.cd, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %.0210277, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !42
  %i.ch = add nsw i32 %i.cg, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  store i32 0, ptr %i.cj, align 4, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i8 %i.r, ptr %i.ck, align 8, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ai, i64 25
  store i8 0, ptr %i.cl, align 1, !tbaa !53
  %i.cm = zext nneg i32 %.0205.lcssa to i64       ; 2 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cm
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !44
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ai, ptr %i.cn, align 8, !tbaa !45
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not223271 = icmp eq i32 %.0205.lcssa, 0
  br i1 %.not223271, label %.critedge232, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.u, %bb.v
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %bb.v ], [ %i.cm, %bb.u ] ; 5 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv308
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !36 ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 25 ; 8 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !53  ; 3 uses
  %.not224 = icmp eq i8 %i.cr, 0
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv308
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !52 ; 2 uses
  br i1 %.not224, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %.lr.ph273
  %i.cu = icmp eq i32 %i.ct, 0
  %. = select i1 %i.cu, i8 -1, i8 1
  store i8 %., ptr %i.cq, align 1, !tbaa !53
  %indvars.iv.next309 = add nsw i64 %indvars.iv308, -1 ; 2 uses
  %i.cv = icmp eq i64 %indvars.iv.next309, 0
  br i1 %i.cv, label %.critedge232, label %.lr.ph273, !llvm.loop !50

.critedge2:                                       ; preds = %.lr.ph273
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv308 ; 2 uses
  switch i32 %i.ct, label %.critedge232 [
    i32 0, label %bb.w
    i32 1, label %bb.x
  ]

bb.w:                                             ; preds = %.critedge2
  %i.cx = add i8 %i.cr, -1                        ; 3 uses
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !53
  %.not225 = icmp eq i8 %i.cx, 0
  br i1 %.not225, label %.critedge232, label %bb.y

bb.x:                                             ; preds = %.critedge2
  %i.cy = add i8 %i.cr, 1                         ; 3 uses
  store i8 %i.cy, ptr %i.cq, align 1, !tbaa !53
  %.not226 = icmp eq i8 %i.cy, 0
  br i1 %.not226, label %.critedge232, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cz = phi i8 [ %i.cy, %bb.x ], [ %i.cx, %bb.w ]
  switch i8 %i.cz, label %bb.ah [
    i8 -2, label %bb.z
    i8 2, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr i8, ptr %i.cw, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !52
  switch i32 %i.db, label %bb.ac [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dc = load ptr, ptr %i.cp, align 8, !tbaa !44 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !45
  store ptr %i.cp, ptr %i.dd, align 8, !tbaa !45
  store ptr %i.de, ptr %i.cp, align 8, !tbaa !44
  store i8 0, ptr %i.cq, align 1, !tbaa !53
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 25
  store i8 0, ptr %i.df, align 1, !tbaa !53
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.dg = load ptr, ptr %i.cp, align 8, !tbaa !44 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !45 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !45
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !44
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !44
  store ptr %i.dl, ptr %i.dh, align 8, !tbaa !45
  store ptr %i.cp, ptr %i.dj, align 8, !tbaa !45
  store ptr %i.dk, ptr %i.cp, align 8, !tbaa !44
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 25 ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !53
  %.not229 = icmp eq i8 %i.dn, 1
  %i.do = sext i1 %.not229 to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 25
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !53
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !53
  %.not230 = icmp eq i8 %i.dq, -1
  %i.dr = zext i1 %.not230 to i8
  store i8 %i.dr, ptr %i.cq, align 1, !tbaa !53
  store i8 0, ptr %i.dm, align 1, !tbaa !53
  br label %bb.ai

bb.ac:                                            ; preds = %bb.z
  tail call void @abort() #14
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ds = getelementptr i8, ptr %i.cw, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !52
  switch i32 %i.dt, label %bb.ag [
    i32 1, label %bb.ae
    i32 0, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !45 ; 4 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !44
  store ptr %i.cp, ptr %i.dv, align 8, !tbaa !44
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !45
  store i8 0, ptr %i.cq, align 1, !tbaa !53
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 25
  store i8 0, ptr %i.dx, align 1, !tbaa !53
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !45 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !44 ; 5 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !44
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !45
  store ptr %i.cp, ptr %i.ea, align 8, !tbaa !44
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !45
  store ptr %i.dz, ptr %i.ec, align 8, !tbaa !45
  store ptr %i.ed, ptr %i.dz, align 8, !tbaa !44
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 25 ; 3 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !53
  %.not227 = icmp eq i8 %i.ef, 1
  %i.eg = sext i1 %.not227 to i8
  store i8 %i.eg, ptr %i.cq, align 1, !tbaa !53
  %i.eh = load i8, ptr %i.ee, align 1, !tbaa !53
  %.not228 = icmp eq i8 %i.eh, -1
  %i.ei = zext i1 %.not228 to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 25
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !53
  store i8 0, ptr %i.ee, align 1, !tbaa !53
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  tail call void @abort() #14
  unreachable

bb.ah:                                            ; preds = %bb.y
  tail call void @abort() #14
  unreachable

bb.ai:                                            ; preds = %bb.ae, %bb.af, %bb.aa, %bb.ab
  %.0204 = phi ptr [ %i.dc, %bb.aa ], [ %i.di, %bb.ab ], [ %i.dv, %bb.ae ], [ %i.ea, %bb.af ] ; 2 uses
  %i.ek = shl i64 %indvars.iv308, 32
  %sext = add i64 %i.ek, -4294967296
  %i.el = ashr exact i64 %sext, 32                ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !52
  %i.eo = icmp eq i32 %i.en, 0
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.el
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !36 ; 2 uses
  br i1 %i.eo, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr %.0204, ptr %i.eq, align 8, !tbaa !44
  br label %.critedge232

bb.ak:                                            ; preds = %bb.ai
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %.0204, ptr %i.er, align 8, !tbaa !45
  br label %.critedge232

.critedge232:                                     ; preds = %.lr.ph, %bb.v, %bb.u, %.critedge2, %bb.w, %bb.x, %bb.ak, %bb.aj
  %.2209 = phi ptr [ %i.ai, %bb.w ], [ %i.ai, %bb.aj ], [ %i.ai, %bb.ak ], [ %i.ai, %bb.x ], [ %i.ai, %.critedge2 ], [ %i.ai, %bb.u ], [ %i.ai, %bb.v ], [ %.0207269, %.lr.ph ]
  %i.es = getelementptr inbounds nuw i8, ptr %.2209, i64 16
  %.0210 = load ptr, ptr %i.es, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !51

._crit_edge:                                      ; preds = %.critedge232, %bb.a
  %.0210.lcssa = phi ptr [ %.0210274, %bb.a ], [ %.0210, %.critedge232 ] ; 3 uses
  %i.et = load i32, ptr %.0210.lcssa, align 8, !tbaa !28
  %.not217 = icmp eq i32 %i.et, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !19 ; 2 uses
  br i1 %.not217, label %bb.al, label %._crit_edge._crit_edge

bb.al:                                            ; preds = %._crit_edge
  %i.ew = shl nsw i32 %i.ev, 1
  %i.ex = or disjoint i32 %i.ew, 1
  store i32 %i.ex, ptr %.0210.lcssa, align 8, !tbaa !28
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.al
end_hunk_0
