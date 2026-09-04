Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/tool_getparam?download=true
inline.NumInlined: 71
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@GetSizeParameter:bb.a
  %i.q = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GetSizeParameter, i64 %i.q
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59   ; 6 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %.not48 = icmp eq i64 %i.t, 0
  br i1 %.not48, label %getunit.exit.thread59, label %.preheader64

.preheader64:                                     ; preds = %switch.lookup
  %i.u = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60   ; 3 uses
  %.not4965 = icmp ugt i64 %i.v, %.131
  br i1 %.not4965, label %.preheader, label %.lr.ph

..preheader_crit_edge:                            ; preds = %.lr.ph
  %i.w = add i64 %.131, -1
  %i.x = add i64 %i.v, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.x)
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader64
  %i.y = phi i64 [ %i.ab, %..preheader_crit_edge ], [ %i.t, %.preheader64 ] ; 3 uses
  %.232.lcssa = phi i64 [ %umin, %..preheader_crit_edge ], [ %.131, %.preheader64 ] ; 4 uses
  %.not5067 = icmp eq i64 %.232.lcssa, 0
  br i1 %.not5067, label %._crit_edge, label %.lr.ph70.preheader

.lr.ph70.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.232.lcssa, 7              ; 3 uses
  %i.z = icmp ult i64 %.232.lcssa, 8
  br i1 %i.z, label %.lr.ph70.epil.preheader, label %.lr.ph70.preheader.new

.lr.ph70.preheader.new:                           ; preds = %.lr.ph70.preheader
  %unroll_iter = and i64 %.232.lcssa, -8
  br label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader64, %.lr.ph
  %.23266 = phi i64 [ %i.ac, %.lr.ph ], [ %.131, %.preheader64 ]
  %i.aa = phi i64 [ %i.ab, %.lr.ph ], [ %i.t, %.preheader64 ]
  %i.ab = sdiv i64 %i.aa, 10                      ; 2 uses
  %i.ac = add i64 %.23266, -1                     ; 2 uses
  %.not49 = icmp ugt i64 %i.v, %i.ac
  br i1 %.not49, label %..preheader_crit_edge, label %.lr.ph, !llvm.loop !55

.lr.ph70:                                         ; preds = %.lr.ph70, %.lr.ph70.preheader.new
  %.069 = phi i64 [ 1, %.lr.ph70.preheader.new ], [ %i.ad, %.lr.ph70 ]
  %niter = phi i64 [ 0, %.lr.ph70.preheader.new ], [ %niter.next.7, %.lr.ph70 ]
  %i.ad = mul nuw nsw i64 %.069, 100000000        ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph70, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph70
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph70.epil.preheader

.lr.ph70.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph70.preheader
  %.069.epil.init = phi i64 [ 1, %.lr.ph70.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph70.epil

.lr.ph70.epil:                                    ; preds = %.lr.ph70.epil, %.lr.ph70.epil.preheader
  %.069.epil = phi i64 [ %i.ae, %.lr.ph70.epil ], [ %.069.epil.init, %.lr.ph70.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph70.epil ], [ 0, %.lr.ph70.epil.preheader ]
  %i.ae = mul nuw nsw i64 %.069.epil, 10          ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph70.epil, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph70.epil, %.preheader
  %.0.lcssa = phi i64 [ 1, %.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph70.epil ] ; 2 uses
  %i.af = sdiv i64 9223372036854775807, %i.s
  %i.ag = icmp sgt i64 %i.af, %i.y
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ah = mul nsw i64 %i.y, %i.s
  %i.ai = sdiv i64 %i.ah, %.0.lcssa
  br label %getunit.exit.thread59

bb.j:                                             ; preds = %._crit_edge
  %i.aj = sdiv i64 %i.s, %.0.lcssa
  %i.ak = mul nsw i64 %i.aj, %i.y
  br label %getunit.exit.thread59

getunit.exit.thread59:                            ; preds = %bb.j, %bb.i, %switch.lookup, %bb.g
  %.3 = phi i64 [ 0, %bb.g ], [ %i.ai, %bb.i ], [ 0, %switch.lookup ], [ %i.ak, %bb.j ] ; 2 uses
  %.127 = phi i64 [ 1, %bb.g ], [ %i.s, %bb.i ], [ %i.s, %switch.lookup ], [ %i.s, %bb.j ] ; 2 uses
  %i.al = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.am = sub nsw i64 9223372036854775807, %.3
  %i.an = sdiv i64 %i.am, %.127
  %i.ao = icmp sgt i64 %i.al, %i.an
  br i1 %i.ao, label %getunit.exit, label %bb.k

bb.k:                                             ; preds = %getunit.exit.thread59
  %i.ap = mul nsw i64 %i.al, %.127
  %i.aq = add nsw i64 %i.ap, %.3
  store i64 %i.aq, ptr %1, align 8, !tbaa !16
  br label %getunit.exit

getunit.exit:                                     ; preds = %switch.hole_check, %bb.h, %getunit.exit.thread59, %bb.g, %bb.e, %bb.a, %bb.d, %bb.k, %bb.b
  %.337 = phi i32 [ 11, %bb.d ], [ 11, %bb.b ], [ 18, %bb.a ], [ 4, %bb.e ], [ 4, %bb.g ], [ 0, %bb.k ], [ 18, %getunit.exit.thread59 ], [ 4, %bb.h ], [ 4, %switch.hole_check ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.337
}

declare i32 @curlx_str_number(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @curlx_str_single(ptr noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @findshortopt(i8 noundef signext %0) local_unnamed_addr #7 {
bb.a:
  %i.a = add i8 %0, -127
  %or.cond = icmp ult i8 %i.a, -94
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @findshortopt.singles_done, align 1
  br i1 %.b, label %bb.c, label %vector.body

vector.body:                                      ; preds = %bb.b, %pred.store.continue22
  %index = phi i64 [ %index.next, %pred.store.continue22 ], [ 0, %bb.b ] ; 5 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @aliases, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @aliases, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw [16 x i8], ptr @aliases, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @aliases, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 41
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  %i.m = load i8, ptr %i.i, align 1, !tbaa !19    ; 2 uses
  %i.n = load i8, ptr %i.j, align 1, !tbaa !19    ; 2 uses
  %i.o = insertelement <2 x i8> poison, i8 %i.m, i64 0
  %i.p = insertelement <2 x i8> %i.o, i8 %i.n, i64 1
  %i.q = load i8, ptr %i.k, align 1, !tbaa !19    ; 2 uses
  %i.r = load i8, ptr %i.l, align 1, !tbaa !19    ; 2 uses
  %i.s = insertelement <2 x i8> poison, i8 %i.q, i64 0
  %i.t = insertelement <2 x i8> %i.s, i8 %i.r, i64 1
  %i.u = icmp ne <2 x i8> %i.p, splat (i8 32)     ; 2 uses
  %i.v = icmp ne <2 x i8> %i.t, splat (i8 32)     ; 2 uses
  %i.w = extractelement <2 x i1> %i.u, i64 0
  br i1 %i.w, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.x = zext i8 %i.m to i64
  %i.y = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -256
  store ptr %i.b, ptr %i.z, align 8, !tbaa !21
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.aa = extractelement <2 x i1> %i.u, i64 1
  br i1 %i.aa, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue
  %i.ab = zext i8 %i.n to i64
  %i.ac = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -256
  store ptr %i.d, ptr %i.ad, align 8, !tbaa !21
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue
  %i.ae = extractelement <2 x i1> %i.v, i64 0
  br i1 %i.ae, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.af = zext i8 %i.q to i64
  %i.ag = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -256
  store ptr %i.f, ptr %i.ah, align 8, !tbaa !21
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.ai = extractelement <2 x i1> %i.v, i64 1
  br i1 %i.ai, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.aj = zext i8 %i.r to i64
  %i.ak = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -256
  store ptr %i.h, ptr %i.al, align 8, !tbaa !21
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, 280
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %pred.store.continue22
  store i1 true, ptr @findshortopt.singles_done, align 1
  br label %bb.c

bb.c:                                             ; preds = %middle.block, %bb.b
  %1 = zext nneg i8 %0 to i64
  %2 = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %1
  %3 = getelementptr i8, ptr %2, i64 -256
  %i.an = load ptr, ptr %3, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi ptr [ %i.an, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @findlongopt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.a
  %.021.i = phi i64 [ %.1.i, %bb.d ], [ 280, %bb.a ] ; 2 uses
  %.01620.i = phi i64 [ %.117.i, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.a = add i64 %.01620.i, %.021.i
  %i.b = lshr i64 %i.a, 1                         ; 3 uses
  %i.c = shl i64 %i.b, 4                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr @aliases, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !24
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.e) #15 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bsearch.exit.split.loop.exit4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.b, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.117.i = phi i64 [ %i.h, %bb.c ], [ %.01620.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i64 [ %.021.i, %bb.c ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.i = icmp ult i64 %.117.i, %.1.i
  br i1 %i.i, label %.lr.ph.i, label %bsearch.exit, !llvm.loop !0

bsearch.exit.split.loop.exit4:                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr @aliases, i64 %i.c
  br label %bsearch.exit

bsearch.exit:                                     ; preds = %bb.d, %bsearch.exit.split.loop.exit4
  %.018.i = phi ptr [ %i.j, %bsearch.exit.split.loop.exit4 ], [ null, %bb.d ]
  ret ptr %.018.i
}

; Function Attrs: nounwind uwtable
define i32 @getparameter(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((0, 1)) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.stat, align 8               ; 3 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.stat, align 8               ; 3 uses
  %7 = alloca %struct.stat, align 8               ; 3 uses
  %8 = alloca %struct.stat, align 8               ; 3 uses
  %9 = alloca %struct.stat, align 8               ; 3 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %struct.stat, align 8              ; 3 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %11 = alloca %struct.Curl_str, align 8          ; 6 uses
  %i.k = alloca [27 x i8], align 16               ; 6 uses
  %12 = alloca %struct.dynbuf, align 8            ; 6 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  store i64 0, ptr @verbose_nopts, align 8, !tbaa !16
  store i8 0, ptr %2, align 1, !tbaa !26
  %i.m = load i8, ptr %0, align 1, !tbaa !13      ; 2 uses
  %.not = icmp eq i8 %i.m, 45
  br i1 %.not, label %bb.b, label %sub_0

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = icmp eq i8 %i.o, 45
  br i1 %i.p, label %.sub_0_crit_edge, label %bb.v

.sub_0_crit_edge:                                 ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %sub_0

sub_0:                                            ; preds = %.sub_0_crit_edge, %bb.a
  %i.q = phi i8 [ %.pre, %.sub_0_crit_edge ], [ %i.m, %bb.a ]
  %.idx = phi i64 [ 2, %.sub_0_crit_edge ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %.not255 = icmp eq i8 %i.q, 110
  br i1 %.not255, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %.not256 = icmp eq i8 %i.t, 111
  br i1 %.not256, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 45
  br i1 %i.w, label %bb.c, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.x = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(8) @.str.3, i64 noundef 7) #15
  %.not123 = icmp eq i32 %i.x, 0                  ; 2 uses
  %spec.select140.idx = select i1 %.not123, i64 7, i64 0
  br label %bb.c

bb.c:                                             ; preds = %.tail, %.tail.thread
  %spec.select140.idx.sink = phi i64 [ %spec.select140.idx, %.tail.thread ], [ 3, %.tail ]
  %.not122338 = phi i1 [ false, %.tail.thread ], [ true, %.tail ]
  %.092 = phi i8 [ 1, %.tail.thread ], [ 0, %.tail ]
  %.081 = phi i1 [ %.not123, %.tail.thread ], [ false, %.tail ]
  %spec.select140 = getelementptr inbounds nuw i8, ptr %i.r, i64 %spec.select140.idx.sink ; 2 uses
  store ptr %spec.select140, ptr %i.j, align 8, !tbaa !12
  %i.y = call i32 @curlx_str_until(ptr noundef nonnull %i.j, ptr noundef nonnull %11, i64 noundef 26, i8 noundef signext 61) #16
  %.not124 = icmp eq i32 %i.y, 0
  br i1 %.not124, label %bb.d, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %bb.d, %bb.c
  br label %.lr.ph.i.i148

bb.d:                                             ; preds = %bb.c
  %i.z = call i32 @curlx_str_single(ptr noundef nonnull %i.j, i8 noundef signext 61) #16
  %.not125 = icmp eq i32 %i.z, 0
  br i1 %.not125, label %bb.e, label %.lr.ph.i.i148.preheader

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.aa = load ptr, ptr %11, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !68 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.k, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ac
  store i8 0, ptr %i.ad, align 1, !tbaa !13
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.e
  %.021.i.i = phi i64 [ %.1.i.i, %bb.h ], [ 280, %bb.e ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.ae = add i64 %.01620.i.i, %.021.i.i
  %i.af = lshr i64 %i.ae, 1                       ; 3 uses
  %i.ag = shl i64 %i.af, 4                        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr @aliases, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !24
  %i.aj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.ai) #15 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %findlongopt.exit156.thread195, label %bb.g

findlongopt.exit156.thread195:                    ; preds = %bb.f
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br label %findlongopt.exit156.thread

bb.g:                                             ; preds = %bb.f
  %i.am = add nuw i64 %i.af, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.117.i.i = phi i64 [ %i.am, %bb.g ], [ %.01620.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.021.i.i, %bb.g ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  %i.an = icmp ult i64 %.117.i.i, %.1.i.i
  br i1 %i.an, label %.lr.ph.i.i, label %findlongopt.exit156, !llvm.loop !0

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader, %bb.k
  %.021.i.i149 = phi i64 [ %.1.i.i153, %bb.k ], [ 280, %.lr.ph.i.i148.preheader ] ; 2 uses
  %.01620.i.i150 = phi i64 [ %.117.i.i152, %bb.k ], [ 0, %.lr.ph.i.i148.preheader ] ; 2 uses
  %i.ao = add i64 %.01620.i.i150, %.021.i.i149
  %i.ap = lshr i64 %i.ao, 1                       ; 3 uses
  %i.aq = shl i64 %i.ap, 4                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @aliases, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !24
  %i.at = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %spec.select140, ptr noundef nonnull dereferenceable(1) %i.as) #15 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i148
  %.not.i.i151 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i151, label %findlongopt.exit156.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = add nuw i64 %i.ap, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i148
  %.117.i.i152 = phi i64 [ %i.av, %bb.j ], [ %.01620.i.i150, %.lr.ph.i.i148 ] ; 2 uses
  %.1.i.i153 = phi i64 [ %.021.i.i149, %bb.j ], [ %i.ap, %.lr.ph.i.i148 ] ; 2 uses
  %i.aw = icmp ult i64 %.117.i.i152, %.1.i.i153
  br i1 %i.aw, label %.lr.ph.i.i148, label %.critedge.thread, !llvm.loop !0
end_hunk_0
begin_hunk_1_@getparameter:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 640
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 784
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 760
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 672
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 736
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 744
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 656
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 648
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 584 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 568
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 536
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 528
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 600 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 592
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 616 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 576 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 560
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 776
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 800
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 792
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 328
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 1096
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 816
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 1160
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 808
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 960 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 840
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 848
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 400
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 1016 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 936
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 912
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 904
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 416
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 824
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 832 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 552 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 520 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 456 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 504 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 488 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 344 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 544 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 392 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 632 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 624
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 512 ; 3 uses
  %i.gb = icmp slt i32 %4, 1
  %i.gc = add nsw i32 %4, -1
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 448 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 496 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.sj, %bb.v
  %.6116 = phi ptr [ %.5115, %bb.v ], [ %.8, %bb.sj ] ; 51 uses
  %.1108 = phi ptr [ %.0107, %bb.v ], [ %i.aqh, %bb.sj ] ; 3 uses
  %.294 = phi i8 [ %.193, %bb.v ], [ %.395, %bb.sj ]
  %.2 = phi ptr [ %.185, %bb.v ], [ %.3, %bb.sj ] ; 2 uses
  br i1 %.1106, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.phi.trans.insert274 = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %.pre275 = load i8, ptr %.phi.trans.insert274, align 8, !tbaa !69
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gg = load i8, ptr %.1108, align 1, !tbaa !13 ; 2 uses
  %i.gh = add i8 %i.gg, -127
  %or.cond.i = icmp ult i8 %i.gh, -94
  br i1 %or.cond.i, label %findshortopt.exit.thread, label %bb.y

findshortopt.exit.thread:                         ; preds = %bb.x
  br i1 %.4, label %bb.sk, label %bb.sl

bb.y:                                             ; preds = %bb.x
  %.b.i = load i1, ptr @findshortopt.singles_done, align 1
  br i1 %.b.i, label %findshortopt.exit, label %vector.body

vector.body:                                      ; preds = %bb.y, %pred.store.continue380
  %index = phi i64 [ %index.next, %pred.store.continue380 ], [ 0, %bb.y ] ; 5 uses
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr @aliases, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr @aliases, i64 %index ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr @aliases, i64 %index ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr @aliases, i64 %index ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 9
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 25
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 41
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 57
  %i.gt = load i8, ptr %i.gp, align 1, !tbaa !19  ; 2 uses
  %i.gu = load i8, ptr %i.gq, align 1, !tbaa !19  ; 2 uses
  %i.gv = insertelement <2 x i8> poison, i8 %i.gt, i64 0
  %i.gw = insertelement <2 x i8> %i.gv, i8 %i.gu, i64 1
  %i.gx = load i8, ptr %i.gr, align 1, !tbaa !19  ; 2 uses
  %i.gy = load i8, ptr %i.gs, align 1, !tbaa !19  ; 2 uses
  %i.gz = insertelement <2 x i8> poison, i8 %i.gx, i64 0
  %i.ha = insertelement <2 x i8> %i.gz, i8 %i.gy, i64 1
  %i.hb = icmp ne <2 x i8> %i.gw, splat (i8 32)   ; 2 uses
  %i.hc = icmp ne <2 x i8> %i.ha, splat (i8 32)   ; 2 uses
  %i.hd = extractelement <2 x i1> %i.hb, i64 0
  br i1 %i.hd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.he = zext i8 %i.gt to i64
  %i.hf = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 -256
  store ptr %i.gi, ptr %i.hg, align 8, !tbaa !21
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.hh = extractelement <2 x i1> %i.hb, i64 1
  br i1 %i.hh, label %pred.store.if375, label %pred.store.continue376

pred.store.if375:                                 ; preds = %pred.store.continue
  %i.hi = zext i8 %i.gu to i64
  %i.hj = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 -256
  store ptr %i.gk, ptr %i.hk, align 8, !tbaa !21
  br label %pred.store.continue376

pred.store.continue376:                           ; preds = %pred.store.if375, %pred.store.continue
  %i.hl = extractelement <2 x i1> %i.hc, i64 0
  br i1 %i.hl, label %pred.store.if377, label %pred.store.continue378

pred.store.if377:                                 ; preds = %pred.store.continue376
  %i.hm = zext i8 %i.gx to i64
  %i.hn = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -256
  store ptr %i.gm, ptr %i.ho, align 8, !tbaa !21
  br label %pred.store.continue378

pred.store.continue378:                           ; preds = %pred.store.if377, %pred.store.continue376
  %i.hp = extractelement <2 x i1> %i.hc, i64 1
  br i1 %i.hp, label %pred.store.if379, label %pred.store.continue380

pred.store.if379:                                 ; preds = %pred.store.continue378
  %i.hq = zext i8 %i.gy to i64
  %i.hr = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 -256
  store ptr %i.go, ptr %i.hs, align 8, !tbaa !21
  br label %pred.store.continue380

pred.store.continue380:                           ; preds = %pred.store.if379, %pred.store.continue378
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ht = icmp eq i64 %index.next, 280
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %pred.store.continue380
  store i1 true, ptr @findshortopt.singles_done, align 1
  br label %findshortopt.exit

findshortopt.exit:                                ; preds = %bb.y, %middle.block
  %13 = zext nneg i8 %i.gg to i64
  %14 = getelementptr [8 x i8], ptr @findshortopt.singles, i64 %13
  %15 = getelementptr i8, ptr %14, i64 -256
  %i.hu = load ptr, ptr %15, align 8, !tbaa !21   ; 3 uses
  %.not129 = icmp eq ptr %i.hu, null
  br i1 %.not129, label %.critedge, label %bb.z

bb.z:                                             ; preds = %findshortopt.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !69  ; 2 uses
  %.not130 = icmp sgt i8 %i.hw, -1
  %i.hx = zext i1 %.not130 to i8
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z
  %i.hy = phi i8 [ %.pre275, %._crit_edge ], [ %i.hw, %bb.z ] ; 5 uses
  %.395 = phi i8 [ %.294, %._crit_edge ], [ %i.hx, %bb.z ] ; 11 uses
  %.3 = phi ptr [ %.2, %._crit_edge ], [ %i.hu, %bb.z ] ; 21 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  %i.ia = zext i8 %i.hy to i32                    ; 3 uses
  %i.ib = and i32 %i.ia, 64
  %i.ic = icmp eq i32 %i.ib, 0
  %i.id = load i8, ptr @feature_ssl, align 1, !range !27
  %i.ie = trunc nuw i8 %i.id to i1
  %or.cond3 = select i1 %i.ic, i1 true, i1 %i.ie
  br i1 %or.cond3, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.if = and i32 %i.ia, 7                        ; 2 uses
  %i.ig = icmp samesign ugt i32 %i.if, 1
  br i1 %i.ig, label %bb.ac, label %bb.mc

bb.ac:                                            ; preds = %bb.ab
  br i1 %.1106, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ih = getelementptr inbounds nuw i8, ptr %.1108, i64 1 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !13
  %.not132 = icmp eq i8 %i.ii, 0
  br i1 %.not132, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ij = getelementptr inbounds nuw i8, ptr %.3, i64 10
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !70
  %i.il = icmp eq i16 %i.ik, 85
  %.not138 = icmp eq ptr %.6116, null             ; 2 uses
  br i1 %i.il, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  br i1 %.not138, label %.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.im = load i8, ptr %.6116, align 1, !tbaa !13
  %.not139 = icmp eq i8 %i.im, 0
  %spec.select = select i1 %.not139, ptr null, ptr %.6116
  br label %.split

.split:                                           ; preds = %bb.ag, %bb.af
  %i.in = phi ptr [ null, %bb.af ], [ %spec.select, %bb.ag ]
  call void @tool_help(ptr noundef %i.in) #16
  br i1 %.4, label %bb.sk, label %bb.sl

bb.ah:                                            ; preds = %bb.ae
  br i1 %.not138, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 %.187, ptr %2, align 1, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ad, %bb.ai
  %.7117 = phi ptr [ %.6116, %bb.ai ], [ %i.ih, %bb.ad ] ; 175 uses
  %.1103 = phi i1 [ false, %bb.ai ], [ true, %bb.ad ] ; 2 uses
  %i.io = and i8 %i.hy, 16
  %.not134 = icmp eq i8 %i.io, 0
  br i1 %.not134, label %bb.ak, label %.split226

.split226:                                        ; preds = %bb.aj
  %.3.val145 = load ptr, ptr %.3, align 8, !tbaa !24
  call void (ptr, ...) @warnf(ptr noundef nonnull @.str.292, ptr noundef %.3.val145) #16
  br i1 %.4, label %bb.sk, label %bb.sl

bb.ak:                                            ; preds = %bb.aj
  %i.ip = load i8, ptr %.7117, align 1, !tbaa !13
  %i.iq = icmp eq i8 %i.ip, -30
  br i1 %i.iq, label %bb.al, label %has_leading_unicode.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.ir = getelementptr inbounds nuw i8, ptr %.7117, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !13
  %i.it = icmp eq i8 %i.is, -128
  br i1 %i.it, label %has_leading_unicode.exit, label %has_leading_unicode.exit.thread

has_leading_unicode.exit:                         ; preds = %bb.al
  %i.iu = getelementptr inbounds nuw i8, ptr %.7117, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !13
  %i.iw = icmp slt i8 %i.iv, 0
  br i1 %i.iw, label %bb.am, label %has_leading_unicode.exit.thread

bb.am:                                            ; preds = %has_leading_unicode.exit
  call void (ptr, ...) @warnf(ptr noundef nonnull @.str.4, ptr noundef nonnull %.7117) #16
  %.pre276 = load i8, ptr %i.hz, align 8, !tbaa !69
  br label %has_leading_unicode.exit.thread

has_leading_unicode.exit.thread:                  ; preds = %bb.ak, %bb.al, %bb.am, %has_leading_unicode.exit
  %i.ix = phi i8 [ %i.hy, %bb.ak ], [ %i.hy, %bb.al ], [ %.pre276, %bb.am ], [ %i.hy, %has_leading_unicode.exit ]
  %i.iy = and i8 %i.ix, 7
  switch i8 %i.iy, label %opt_file.exit [
    i8 3, label %bb.an
    i8 2, label %bb.eu
    i8 4, label %bb.kx
    i8 5, label %bb.le
  ]

bb.an:                                            ; preds = %has_leading_unicode.exit.thread
  %i.iz = load i8, ptr %.7117, align 1, !tbaa !13
  %i.ja = icmp eq i8 %i.iz, 45
  br i1 %i.ja, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jb = getelementptr inbounds nuw i8, ptr %.7117, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !13
  %.not.i160 = icmp eq i8 %i.jc, 0
  br i1 %.not.i160, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @warnf(ptr noundef nonnull @.str.293, ptr noundef nonnull %.7117) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.jd = getelementptr inbounds nuw i8, ptr %.3, i64 10
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !70
  switch i16 %i.je, label %opt_file.exit [
    i16 0, label %bb.ar
    i16 9, label %bb.av
    i16 10, label %bb.bb
    i16 11, label %bb.bf
    i16 18, label %bb.bi
    i16 27, label %bb.bl
    i16 48, label %bb.br
    i16 55, label %bb.bv
    i16 54, label %bb.by
    i16 108, label %bb.ce
    i16 110, label %bb.ci
    i16 132, label %bb.co
    i16 141, label %bb.cu
    i16 163, label %bb.da
    i16 164, label %bb.dg
    i16 165, label %bb.dk
    i16 168, label %bb.dn
    i16 174, label %bb.dt
    i16 236, label %bb.dv
    i16 239, label %bb.dx
    i16 262, label %bb.dy
    i16 263, label %bb.ee
    i16 268, label %bb.ek
    i16 269, label %bb.eo
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.jf = load i32, ptr %i.bs, align 1
  %i.jg = or i32 %i.jf, 1024
  store i32 %i.jg, ptr %i.bs, align 1
  %i.jh = load ptr, ptr %i.fm, align 8, !tbaa !12 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i159, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.jh) #16
  store ptr null, ptr %i.fm, align 8, !tbaa !12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ji = load i8, ptr %.7117, align 1, !tbaa !13
  %.not9.i.i = icmp eq i8 %i.ji, 0
  br i1 %.not9.i.i, label %opt_file.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jj = call noalias ptr @strdup(ptr noundef nonnull readonly %.7117) #16 ; 2 uses
  store ptr %i.jj, ptr %i.fm, align 8, !tbaa !12
  %.not10.i.i = icmp eq ptr %i.jj, null
  %..i.i = select i1 %.not10.i.i, i32 15, i32 0
  br label %opt_file.exit

bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.jk = call i32 @stat(ptr noundef nonnull %.7117, ptr noundef nonnull %10) #16
  %.not.i75.i = icmp eq i32 %i.jk, 0
  br i1 %.not.i75.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jl = load ptr, ptr %.3, align 8, !tbaa !24
  call void (ptr, ...) @errorf(ptr noundef nonnull @.str.298, ptr noundef nonnull %.7117, ptr noundef %i.jl) #16
  br label %existingfile.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.jm = load ptr, ptr %i.gf, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef nonnull %i.jm) #16
  store ptr null, ptr %i.gf, align 8, !tbaa !12
  br label %bb.az
end_hunk_1
