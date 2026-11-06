Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/wp_dgst?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WHIRLPOOL_CTX = type { %union.anon, [64 x i8], i32, [4 x i64] }
%union.anon = type { [8 x double] }

@WHIRLPOOL.m = internal global [64 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @WHIRLPOOL_Init(ptr nofree noundef writeonly captures(none) initializes((0, 168)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, i8 0, i64 168, i1 false)
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define noundef i32 @WHIRLPOOL_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.01314 = phi i64 [ %i.b, %.lr.ph ], [ %2, %bb.a ]
  tail call void @WHIRLPOOL_BitUpdate(ptr noundef %0, ptr noundef %.015, i64 noundef -9223372036854775808)
  %i.b = add i64 %.01314, -1152921504606846976    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.015, i64 1152921504606846976 ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1152921504606846975
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.013.lcssa = phi i64 [ %2, %bb.a ], [ %i.b, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.c, %.lr.ph ]
  %.not = icmp eq i64 %.013.lcssa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = shl nuw nsw i64 %.013.lcssa, 3
  tail call void @WHIRLPOOL_BitUpdate(ptr noundef %0, ptr noundef %.0.lcssa, i64 noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define void @WHIRLPOOL_BitUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = and i32 %i.b, 7                          ; 10 uses
  %i.d = trunc i64 %2 to i32
  %i.e = sub i32 0, %i.d
  %i.f = and i32 %i.e, 7                          ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = add i64 %i.h, %2                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !13
  %i.j = icmp ult i64 %i.i, %2
  br i1 %i.j, label %.preheader160, label %.critedge

.preheader160:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !13
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.preheader160.1, label %.critedge

.preheader160.1:                                  ; preds = %.preheader160
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = add i64 %i.p, 1                          ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !13
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.preheader160.2, label %.critedge

.preheader160.2:                                  ; preds = %.preheader160.1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !13
  br label %.critedge

.critedge:                                        ; preds = %.preheader160, %.preheader160.1, %.preheader160.2, %bb.a
  %i.v = icmp eq i32 %i.f, 0
  %i.w = icmp eq i32 %i.c, 0
  %or.cond164 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond164, label %.preheader, label %.preheader157.lr.ph

.preheader157.lr.ph:                              ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %.not156 = icmp eq i32 %i.c, %i.f
  %.not149 = icmp eq i32 %i.c, 0                  ; 2 uses
  %i.y = sub nuw nsw i32 8, %i.c
  %i.z = sub nuw nsw i32 8, %i.f
  %.not150 = icmp eq i32 %i.c, 0                  ; 2 uses
  %i.aa = sub nuw nsw i32 8, %i.c
  %.not206 = icmp eq i64 %2, 0
  br i1 %.not206, label %.loopexit, label %.lr.ph210

.loopexit159:                                     ; preds = %bb.j, %bb.k
  %storemerge.ph = phi i32 [ 0, %bb.k ], [ %i.bg, %bb.j ] ; 2 uses
  store i32 %storemerge.ph, ptr %i.a, align 8, !tbaa !11
  br label %.preheader

.preheader:                                       ; preds = %.loopexit159, %.critedge
  %.0135.lcssa = phi i64 [ %2, %.critedge ], [ %i.bi, %.loopexit159 ] ; 2 uses
  %.0127.lcssa = phi i32 [ %i.b, %.critedge ], [ %storemerge.ph, %.loopexit159 ]
  %.0117.lcssa = phi ptr [ %1, %.critedge ], [ %i.bj, %.loopexit159 ]
  %.not151172 = icmp eq i64 %.0135.lcssa, 0
  br i1 %.not151172, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.1118175 = phi ptr [ %.0117.lcssa, %.lr.ph ], [ %.3120, %bb.i ] ; 6 uses
  %.1128174 = phi i32 [ %.0127.lcssa, %.lr.ph ], [ %.3130, %bb.i ] ; 4 uses
  %.1136173 = phi i64 [ %.0135.lcssa, %.lr.ph ], [ %.3138, %bb.i ] ; 7 uses
  %i.ac = icmp eq i32 %.1128174, 0
  br i1 %i.ac, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr i64 %.1136173, 9                   ; 2 uses
  %.not152 = icmp eq i64 %i.ad, 0
  br i1 %.not152, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @whirlpool_block(ptr noundef %0, ptr noundef %.1118175, i64 noundef %i.ad) #5
  %i.ae = lshr i64 %.1136173, 3
  %i.af = and i64 %i.ae, 2305843009213693888
  %i.ag = getelementptr inbounds nuw i8, ptr %.1118175, i64 %i.af
  %i.ah = and i64 %.1136173, 511
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ai = lshr i32 %.1128174, 3                   ; 2 uses
  %i.aj = sub i32 512, %.1128174                  ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %.not153 = icmp ult i64 %.1136173, %i.ak
  br i1 %.not153, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sub nuw i64 %.1136173, %i.ak
  %i.am = lshr i32 %i.aj, 3
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.an
  %i.ap = zext nneg i32 %i.am to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %.1118175, i64 %i.ap, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.1118175, i64 %i.ap
  tail call void @whirlpool_block(ptr noundef %0, ptr noundef nonnull %i.ab, i64 noundef 1) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ar = zext nneg i32 %i.ai to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ar
  %i.at = lshr i64 %.1136173, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %.1118175, i64 %i.at, i1 false)
  %i.au = trunc nuw i64 %.1136173 to i32
  %i.av = add i32 %.1128174, %i.au
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2137 = phi i64 [ %i.al, %bb.f ], [ 0, %bb.g ]
  %.2129 = phi i32 [ 0, %bb.f ], [ %i.av, %bb.g ] ; 2 uses
  %.2119 = phi ptr [ %i.aq, %bb.f ], [ %.1118175, %bb.g ]
  store i32 %.2129, ptr %i.a, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.3138 = phi i64 [ %i.ah, %bb.d ], [ %.2137, %bb.h ] ; 2 uses
  %.3130 = phi i32 [ 0, %bb.d ], [ %.2129, %bb.h ]
  %.3120 = phi ptr [ %i.ag, %bb.d ], [ %.2119, %bb.h ]
  %.not151 = icmp eq i64 %.3138, 0
  br i1 %.not151, label %.loopexit, label %bb.b, !llvm.loop !15

.lr.ph210:                                        ; preds = %.preheader157.lr.ph, %bb.aa
  %.4209 = phi ptr [ %.6, %bb.aa ], [ %1, %.preheader157.lr.ph ] ; 6 uses
  %.4131208 = phi i32 [ %storemerge, %bb.aa ], [ %i.b, %.preheader157.lr.ph ] ; 4 uses
  %.4139207 = phi i64 [ %.6141, %bb.aa ], [ %2, %.preheader157.lr.ph ] ; 4 uses
  %i.aw = lshr i32 %.4131208, 3                   ; 7 uses
  br i1 %.not156, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph210
  %i.ax = load i8, ptr %.4209, align 1, !tbaa !14
  %i.ay = lshr i32 255, %i.c
  %i.az = zext nneg i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = trunc nuw i32 %i.ay to i8
  %i.bd = and i8 %i.ax, %i.bc
  %i.be = or i8 %i.bd, %i.bb
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !14
  %i.bf = sub nuw nsw i32 8, %i.c                 ; 2 uses
  %i.bg = add i32 %i.bf, %.4131208                ; 2 uses
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = sub i64 %.4139207, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.4209, i64 1
  %i.bk = icmp eq i32 %i.bg, 512
  br i1 %i.bk, label %bb.k, label %.loopexit159

bb.k:                                             ; preds = %bb.j
  tail call void @whirlpool_block(ptr noundef nonnull %0, ptr noundef nonnull %i.x, i64 noundef 1) #5
  br label %.loopexit159

bb.l:                                             ; preds = %.lr.ph210
  %i.bl = icmp ugt i64 %.4139207, 8
  %i.bm = load i8, ptr %.4209, align 1, !tbaa !14
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, %i.f             ; 4 uses
  br i1 %i.bl, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.4209, i64 1 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = zext i8 %i.bq to i32
  %i.bs = lshr i32 %i.br, %i.z
  %i.bt = or i32 %i.bs, %i.bo                     ; 3 uses
  br i1 %.not150, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = and i32 %i.bt, 255
  %i.bv = lshr i32 %i.bu, %i.c
  %i.bw = zext nneg i32 %i.aw to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = trunc nuw nsw i32 %i.bv to i8
  %i.ca = or i8 %i.by, %i.bz
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !14
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cb = trunc i32 %i.bt to i8
  %i.cc = zext nneg i32 %i.aw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cc
  store i8 %i.cb, ptr %i.cd, align 1, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0116 = add nuw nsw i32 %i.aw, 1
  %i.ce = add i32 %.4131208, 8                    ; 3 uses
  %i.cf = add i64 %.4139207, -8                   ; 2 uses
  %i.cg = icmp ugt i32 %i.ce, 511
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @whirlpool_block(ptr noundef nonnull %0, ptr noundef nonnull %i.x, i64 noundef 1) #5
  %i.ch = and i32 %i.ce, 511
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.6133 = phi i32 [ %i.ch, %bb.q ], [ %i.ce, %bb.p ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.q ], [ %.0116, %bb.p ]
  br i1 %.not150, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = shl nuw nsw i32 %i.bt, %i.aa
  br label %.sink.split

bb.t:                                             ; preds = %bb.l
  br i1 %.not149, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = and i32 %i.bo, 255
  %i.ck = lshr i32 %i.cj, %i.c
  %i.cl = zext nneg i32 %i.aw to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !14
  %i.co = trunc nuw nsw i32 %i.ck to i8
  %i.cp = or i8 %i.cn, %i.co
  store i8 %i.cp, ptr %i.cm, align 1, !tbaa !14
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cq = trunc i32 %i.bo to i8
  %i.cr = zext nneg i32 %i.aw to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2 = add nuw nsw i32 %i.aw, 1
  %i.ct = trunc nuw nsw i64 %.4139207 to i32
  %i.cu = add i32 %.4131208, %i.ct                ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 512
  br i1 %i.cv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @whirlpool_block(ptr noundef nonnull %0, ptr noundef nonnull %i.x, i64 noundef 1) #5
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.7 = phi i32 [ 0, %bb.x ], [ %i.cu, %bb.w ]    ; 2 uses
  %.3 = phi i32 [ 0, %bb.x ], [ %.2, %bb.w ]
  br i1 %.not149, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = shl nuw nsw i32 %i.bo, %i.y
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.s
  %.sink201 = phi i32 [ %i.ci, %bb.s ], [ %i.cw, %bb.z ]
  %.1.sink = phi i32 [ %.1, %bb.s ], [ %.3, %bb.z ]
  %storemerge.ph198 = phi i32 [ %.6133, %bb.s ], [ %.7, %bb.z ]
  %.6141.ph = phi i64 [ %i.cf, %bb.s ], [ 0, %bb.z ]
  %.6.ph = phi ptr [ %i.bp, %bb.s ], [ %.4209, %bb.z ]
  %i.cx = trunc i32 %.sink201 to i8
  %i.cy = zext nneg i32 %.1.sink to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cy
  store i8 %i.cx, ptr %i.cz, align 1, !tbaa !14
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.r, %bb.y
  %storemerge = phi i32 [ %.6133, %bb.r ], [ %.7, %bb.y ], [ %storemerge.ph198, %.sink.split ] ; 2 uses
  %.6141 = phi i64 [ %i.cf, %bb.r ], [ 0, %bb.y ], [ %.6141.ph, %.sink.split ] ; 2 uses
  %.6 = phi ptr [ %i.bp, %bb.r ], [ %.4209, %bb.y ], [ %.6.ph, %.sink.split ]
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i64 %.6141, 0
  br i1 %.not, label %.loopexit, label %.lr.ph210

.loopexit:                                        ; preds = %bb.aa, %bb.i, %.preheader157.lr.ph, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @whirlpool_block(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WHIRLPOOL_Final(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  %i.c = lshr i32 %i.b, 3                         ; 4 uses
  %i.d = and i32 %i.b, 7                          ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr exact i32 128, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = trunc nuw nsw i32 %i.e to i8
  %i.k = or i8 %i.i, %i.j
  store i8 %i.k, ptr %i.h, align 1, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = zext nneg i32 %i.c to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 -128, ptr %i.n, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.p = icmp ugt i32 %i.b, 255
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult i32 %i.b, 504
  br i1 %i.q, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = zext nneg i32 %i.o to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = sub nuw nsw i32 63, %i.c
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.v, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @whirlpool_block(ptr noundef nonnull %1, ptr noundef nonnull %i.w, i64 noundef 1) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.x = icmp samesign ult i32 %i.b, 248
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  %.04048 = phi i32 [ 0, %.thread ], [ %i.o, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = zext nneg i32 %.04048 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = sub nuw nsw i32 32, %.04048
  %i.ac = zext nneg i32 %i.ab to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.ac, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136
  %2 = load <8 x i8>, ptr %i.ad, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.ae, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144
  %4 = load <8 x i8>, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 152
  %6 = load <8 x i8>, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  %7 = shufflevector <8 x i8> %6, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %7, ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %8 = load <8 x i8>, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  %9 = shufflevector <8 x i8> %8, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %9, ptr %i.ak, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @whirlpool_block(ptr noundef nonnull %1, ptr noundef nonnull %i.al, i64 noundef 1) #5
  %.not46 = icmp eq ptr %0, null
  br i1 %.not46, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 168) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.041 = phi i32 [ 1, %bb.j ], [ 0, %bb.i ]
  ret i32 %.041
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @WHIRLPOOL(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.WHIRLPOOL_CTX, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %3, i8 0, i64 168, i1 false)
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.015.i = phi ptr [ %i.c, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %.01314.i = phi i64 [ %i.b, %.lr.ph.i ], [ %1, %bb.a ]
  call void @WHIRLPOOL_BitUpdate(ptr noundef nonnull %3, ptr noundef %.015.i, i64 noundef -9223372036854775808)
  %i.b = add i64 %.01314.i, -1152921504606846976  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.015.i, i64 1152921504606846976 ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1152921504606846975
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.013.lcssa.i = phi i64 [ %1, %bb.a ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.c, %.lr.ph.i ]
  %.not.i = icmp eq i64 %.013.lcssa.i, 0
  br i1 %.not.i, label %WHIRLPOOL_Update.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.e = shl nuw nsw i64 %.013.lcssa.i, 3
  call void @WHIRLPOOL_BitUpdate(ptr noundef nonnull %3, ptr noundef %.0.lcssa.i, i64 noundef %i.e)
  br label %WHIRLPOOL_Update.exit

WHIRLPOOL_Update.exit:                            ; preds = %._crit_edge.i, %bb.b
  %i.f = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.f, ptr @WHIRLPOOL.m, ptr %2 ; 2 uses
  %i.g = call i32 @WHIRLPOOL_Final(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %spec.store.select
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"", !5, i64 0, !5, i64 64, !6, i64 128, !5, i64 136}
!11 = !{!10, !6, i64 128}
!12 = !{!"long", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !9}
end_hunk_0
