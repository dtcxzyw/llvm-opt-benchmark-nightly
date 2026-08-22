Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lzw?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mask = internal unnamed_addr constant [17 x i16] [i16 0, i16 1, i16 3, i16 7, i16 15, i16 31, i16 63, i16 127, i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383, i16 32767, i16 -1], align 16
@.str = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @ff_lzw_decode_tail(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16472 ; 3 uses
  %.promoted = load i32, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.e = icmp sgt i32 %.promoted, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bytestream2_get_byte.exit
  %i.i = phi ptr [ %.pre, %.lr.ph ], [ %i.s, %bytestream2_get_byte.exit ] ; 3 uses
  %i.j = phi i32 [ %.promoted, %.lr.ph ], [ %i.u, %bytestream2_get_byte.exit ]
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.h, %i.k                       ; 2 uses
  %i.m = and i64 %i.l, 4294967295
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.j to i64
  %..i11 = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %i.n)
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 %..i11 ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.h, %i.p
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %bytestream2_get_byte.exit.thread, label %bytestream2_get_byte.exit

bytestream2_get_byte.exit.thread:                 ; preds = %bb.c
  store ptr %i.g, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %i.d, align 8, !tbaa !14
  br label %.critedge

bytestream2_get_byte.exit:                        ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !15
  %i.t = load i8, ptr %i.o, align 1, !tbaa !18    ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  store i32 %i.u, ptr %i.d, align 8, !tbaa !14
  %.not14 = icmp eq i8 %i.t, 0
  br i1 %.not14, label %.critedge, label %bb.b, !llvm.loop !19

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.x = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = and i64 %i.aa, 4294967295
  %..i = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.ab)
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %..i ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !17
  br label %.critedge

.critedge:                                        ; preds = %bytestream2_get_byte.exit, %bb.b, %bytestream2_get_byte.exit.thread, %.preheader, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %.pre, %.preheader ], [ %i.g, %bytestream2_get_byte.exit.thread ], [ %i.s, %bytestream2_get_byte.exit ], [ %i.i, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  ret i32 %i.aj
}

; Function Attrs: cold nounwind optsize uwtable
define void @ff_lzw_decode_open(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 16480) #7
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  ret void
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define void @ff_lzw_decode_close(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @av_freep(ptr noundef %0) #7
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ff_lzw_decode_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = add i32 %1, -12
  %or.cond = icmp ult i32 %i.a, -11
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %2, null
  %i.c = icmp sgt i32 %3, -1
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit:                            ; preds = %bb.b
  store ptr %2, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !21
  %i.e = zext nneg i32 %3 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.h, align 4, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16472
  store i32 0, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %i.k, align 4, !tbaa !25
  %i.l = add nuw nsw i32 %1, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.l, ptr %i.m, align 4, !tbaa !26
  %i.n = zext nneg i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @mask, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.q, ptr %i.r, align 8, !tbaa !29
  %i.s = shl nuw nsw i32 2, %1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.s, ptr %i.t, align 4, !tbaa !30
  %i.u = shl nuw nsw i32 1, %1                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.u, ptr %i.v, align 8, !tbaa !31
  %i.w = add nuw nsw i32 %i.u, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.w, ptr %i.x, align 4, !tbaa !32
  %i.y = add nuw nsw i32 %i.u, 2                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.y, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %i.ab, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 -1, ptr %i.ac, align 4, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %4, ptr %i.af, align 8, !tbaa !9
  %i.ag = icmp eq i32 %4, 1
  %i.ah = zext i1 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bytestream2_init.exit
  %.0 = phi i32 [ 0, %bytestream2_init.exit ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @ff_lzw_decode(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = ptrtoaddr ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.phi.trans.insert49.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16472 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4184 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8280 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.y = add i64 %3, 88                           ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %bb.b
  %.082 = phi ptr [ %1, %bb.b ], [ %.183, %.backedge ] ; 6 uses
  %.078 = phi i32 [ %2, %bb.b ], [ %.179, %.backedge ]
  %.074 = phi i32 [ %i.g, %bb.b ], [ %.074.be, %.backedge ] ; 4 uses
  %.072 = phi i32 [ %i.i, %bb.b ], [ %.072.be, %.backedge ] ; 3 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ %.0.be, %.backedge ] ; 7 uses
  %.078.fr = freeze i32 %.078                     ; 5 uses
  %.0158 = ptrtoaddr ptr %.0 to i64               ; 2 uses
  %i.z = add i32 %.078.fr, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %.0158, i64 %i.y)
  %umin164 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab) ; 2 uses
  %i.ac = add nuw nsw i64 %umin164, 1             ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin164, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %.082, i64 1
  %i.ad = add i32 %.078.fr, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call i64 @llvm.usub.sat.i64(i64 %.0158, i64 %i.y)
  %umin159 = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %scevgep160 = getelementptr i8, ptr %scevgep, i64 %umin159
  %scevgep161 = getelementptr i8, ptr %.0, i64 -1
  %i.ag = sub nsw i64 0, %umin159
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.ag
  %bound0 = icmp ult ptr %.082, %.0
  %bound1 = icmp ult ptr %scevgep162, %scevgep160
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ah = and i64 %i.ac, 31                       ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = select i1 %i.ai, i64 32, i64 %i.ah
  %n.vec = sub nsw i64 %i.ac, %i.aj               ; 4 uses
  %i.ak = getelementptr i8, ptr %.082, i64 %n.vec
  %i.al = trunc i64 %n.vec to i32
  %i.am = sub i32 %.078.fr, %i.al
  %i.an = sub nsw i64 0, %n.vec
  %i.ao = getelementptr i8, ptr %.0, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.082, i64 %index ; 2 uses
  %i.ap = sub i64 0, %index
  %next.gep165 = getelementptr i8, ptr %.0, i64 %i.ap ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %next.gep165, i64 -16
  %i.ar = getelementptr inbounds i8, ptr %next.gep165, i64 -32
  %wide.load = load <16 x i8>, ptr %i.aq, align 1, !tbaa !18, !alias.scope !39
  %wide.load166 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !18, !alias.scope !39
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse167 = shufflevector <16 x i8> %wide.load166, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !18, !alias.scope !42, !noalias !39
  store <16 x i8> %reverse167, ptr %i.as, align 1, !tbaa !18, !alias.scope !42, !noalias !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %scalar.ph.preheader, label %vector.body, !llvm.loop !44

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.c
  %.183.ph = phi ptr [ %.082, %vector.memcheck ], [ %.082, %bb.c ], [ %i.ak, %vector.body ]
  %.179.ph = phi i32 [ %.078.fr, %vector.memcheck ], [ %.078.fr, %bb.c ], [ %i.am, %vector.body ]
  %.1.ph = phi ptr [ %.0, %vector.memcheck ], [ %.0, %bb.c ], [ %i.ao, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.183 = phi ptr [ %i.ax, %bb.d ], [ %.183.ph, %scalar.ph.preheader ] ; 3 uses
  %.179 = phi i32 [ %i.ay, %bb.d ], [ %.179.ph, %scalar.ph.preheader ] ; 3 uses
  %.1 = phi ptr [ %i.av, %bb.d ], [ %.1.ph, %scalar.ph.preheader ] ; 7 uses
  %i.au = icmp ugt ptr %.1, %i.j
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %scalar.ph
  %i.av = getelementptr inbounds i8, ptr %.1, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.183, i64 1
  store i8 %i.aw, ptr %.183, align 1, !tbaa !18
  %i.ay = add nsw i32 %.179, -1                   ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %scalar.ph, !llvm.loop !47

bb.e:                                             ; preds = %scalar.ph
  %i.ba = load i32, ptr %i.k, align 8, !tbaa !24  ; 5 uses
  %i.bb = load i32, ptr %i.l, align 4, !tbaa !26  ; 6 uses
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !16  ; 6 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 4 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %lzw_get_code.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !9
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph43.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.e
  %i.bm = load i32, ptr %i.m, align 8, !tbaa !9
  %i.bn = icmp eq i32 %i.bm, 0
  %.pre50.i = load i32, ptr %.phi.trans.insert49.i, align 4, !tbaa !23 ; 2 uses
  br i1 %i.bn, label %._crit_edge44.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g
  %.promoted40.i = load i32, ptr %.phi.trans.insert49.i, align 4, !tbaa !23
  br label %bb.n

.lr.ph43.i:                                       ; preds = %bb.g
  %.promoted45.i = load i32, ptr %i.o, align 8, !tbaa !14
  %.promoted47.i = load i32, ptr %.phi.trans.insert49.i, align 4, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bytestream2_get_byte.exit36.i, %.lr.ph43.i
  %i.bo = phi i32 [ %.promoted47.i, %.lr.ph43.i ], [ %i.cj, %bytestream2_get_byte.exit36.i ]
  %i.bp = phi ptr [ %i.be, %.lr.ph43.i ], [ %i.ch, %bytestream2_get_byte.exit36.i ] ; 4 uses
  %i.bq = phi i32 [ %.promoted45.i, %.lr.ph43.i ], [ %i.cl, %bytestream2_get_byte.exit36.i ] ; 2 uses
  %i.br = phi i32 [ %i.ba, %.lr.ph43.i ], [ %i.ck, %bytestream2_get_byte.exit36.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.bf, %i.bs
  %i.bu = icmp slt i64 %i.bt, 1
  br i1 %i.bu, label %bytestream2_get_byte.exit38.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !15
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.bx = zext i8 %i.bw to i32
  br label %bytestream2_get_byte.exit38.i

bytestream2_get_byte.exit38.i:                    ; preds = %bb.j, %bb.i
  %i.by = phi ptr [ %i.bv, %bb.j ], [ %i.bd, %bb.i ]
  %.0.i37.i = phi i32 [ %i.bx, %bb.j ], [ 0, %bb.i ] ; 2 uses
  store i32 %.0.i37.i, ptr %i.o, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bytestream2_get_byte.exit38.i, %bb.h
  %i.bz = phi ptr [ %i.by, %bytestream2_get_byte.exit38.i ], [ %i.bp, %bb.h ] ; 3 uses
  %i.ca = phi i32 [ %.0.i37.i, %bytestream2_get_byte.exit38.i ], [ %i.bq, %bb.h ]
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.bf, %i.cb
  %i.cd = icmp slt i64 %i.cc, 1
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.bd, ptr %0, align 8, !tbaa !17
  br label %bytestream2_get_byte.exit36.i

bb.m:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  store ptr %i.ce, ptr %0, align 8, !tbaa !15
  %i.cf = load i8, ptr %i.bz, align 1, !tbaa !18
  %i.cg = zext i8 %i.cf to i32
  br label %bytestream2_get_byte.exit36.i

bytestream2_get_byte.exit36.i:                    ; preds = %bb.m, %bb.l
  %i.ch = phi ptr [ %i.bd, %bb.l ], [ %i.ce, %bb.m ]
  %.0.i35.i = phi i32 [ 0, %bb.l ], [ %i.cg, %bb.m ]
  %i.ci = shl i32 %.0.i35.i, %i.br
  %i.cj = or i32 %i.ci, %i.bo                     ; 3 uses
  store i32 %i.cj, ptr %.phi.trans.insert49.i, align 4, !tbaa !23
  %i.ck = add nsw i32 %i.br, 8                    ; 4 uses
  store i32 %i.ck, ptr %i.k, align 8, !tbaa !24
  %i.cl = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.o, align 8, !tbaa !14
  %i.cm = icmp slt i32 %i.ck, %i.bb
  br i1 %i.cm, label %bb.h, label %._crit_edge44.i, !llvm.loop !48

._crit_edge44.i:                                  ; preds = %bytestream2_get_byte.exit36.i, %.thread.i
  %i.cn = phi i32 [ %i.ba, %.thread.i ], [ %i.ck, %bytestream2_get_byte.exit36.i ]
  %i.co = phi i32 [ %.pre50.i, %.thread.i ], [ %i.cj, %bytestream2_get_byte.exit36.i ] ; 2 uses
  %i.cp = lshr i32 %i.co, %i.bb
  store i32 %i.cp, ptr %.phi.trans.insert49.i, align 4, !tbaa !23
  %.pre51.i = sub nsw i32 %i.cn, %i.bb
  br label %lzw_get_code.exit

bb.n:                                             ; preds = %bytestream2_get_byte.exit.i, %.lr.ph.i
  %i.cq = phi ptr [ %i.be, %.lr.ph.i ], [ %i.db, %bytestream2_get_byte.exit.i ] ; 3 uses
  %i.cr = phi i32 [ %.promoted40.i, %.lr.ph.i ], [ %.0.i.i, %bytestream2_get_byte.exit.i ]
  %i.cs = phi i32 [ %i.ba, %.lr.ph.i ], [ %i.dc, %bytestream2_get_byte.exit.i ]
  %i.ct = shl i32 %i.cr, 8                        ; 2 uses
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.bf, %i.cu
  %i.cw = icmp slt i64 %i.cv, 1
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.bd, ptr %0, align 8, !tbaa !17
  br label %bytestream2_get_byte.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cx, ptr %0, align 8, !tbaa !15
  %i.cy = load i8, ptr %i.cq, align 1, !tbaa !18
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.ct, %i.cz
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.p, %bb.o
  %i.db = phi ptr [ %i.bd, %bb.o ], [ %i.cx, %bb.p ]
  %.0.i.i = phi i32 [ %i.ct, %bb.o ], [ %i.da, %bb.p ] ; 3 uses
  store i32 %.0.i.i, ptr %.phi.trans.insert49.i, align 4, !tbaa !23
  %i.dc = add nsw i32 %i.cs, 8                    ; 4 uses
  store i32 %i.dc, ptr %i.k, align 8, !tbaa !24
  %i.dd = icmp slt i32 %i.dc, %i.bb
  br i1 %i.dd, label %bb.n, label %._crit_edge.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %bytestream2_get_byte.exit.i, %.thread.i
  %i.de = phi i32 [ %.pre50.i, %.thread.i ], [ %.0.i.i, %bytestream2_get_byte.exit.i ]
  %.lcssa.i = phi i32 [ %i.ba, %.thread.i ], [ %i.dc, %bytestream2_get_byte.exit.i ]
  %i.df = sub nsw i32 %.lcssa.i, %i.bb            ; 2 uses
end_hunk_0
