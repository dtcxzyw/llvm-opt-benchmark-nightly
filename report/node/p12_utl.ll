Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/p12_utl?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@OPENSSL_utf82uni:bb.a
vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check90 = icmp ult i64 %i.q, 30
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 4 uses
  %i.u = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl nuw i64 %index, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load = load <8 x i8>, ptr %i.z, align 1, !tbaa !11
  %wide.load91 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !11
  %interleaved.vec = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.w, align 1, !tbaa !11
  %interleaved.vec92 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load91, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec92, ptr %i.y, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.s, -4                     ; 3 uses
  %i.ac = shl i64 %n.vec93, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = shl nuw i64 %index94, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %index94
  %wide.load95 = load <4 x i8>, ptr %i.af, align 1, !tbaa !11
  %interleaved.vec96 = shufflevector <4 x i8> zeroinitializer, <4 x i8> %wide.load95, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec96, ptr %i.ae, align 1, !tbaa !11
  %index.next97 = add nuw i64 %index94, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next97, %n.vec93
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.s, %n.vec93
  br i1 %cmp.n98, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i ; 2 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !11
  %i.ai = lshr exact i64 %indvars.iv.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next.i, %i.p
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 2 uses
  store i8 0, ptr %i.an, align 1, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !11
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  store i32 %i.l, ptr %3, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.not32.i = icmp eq ptr %2, null
  br i1 %.not32.i, label %OPENSSL_asc2uni.exit, label %OPENSSL_asc2uni.exit.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1114111
  br i1 %i.aq, label %OPENSSL_asc2uni.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp samesign ugt i64 %i.ap, 65535
  %.152.v = select i1 %i.ar, i32 4, i32 2
  %.152 = add nuw nsw i32 %.152.v, %.05164        ; 2 uses
  %i.as = add nuw nsw i32 %i.i, %.04965           ; 2 uses
  %i.at = icmp slt i32 %i.as, %.047
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.h
  %i.au = add nuw nsw i32 %.152, 2                ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = call noalias ptr @CRYPTO_malloc(i64 noundef %i.av, ptr noundef nonnull @.str, i32 noundef 120) #6 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %OPENSSL_asc2uni.exit, label %.lr.ph68

._crit_edge.thread:                               ; preds = %bb.c
  %i.ay = tail call noalias ptr @CRYPTO_malloc(i64 noundef 2, ptr noundef nonnull @.str, i32 noundef 120) #6 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %OPENSSL_asc2uni.exit, label %._crit_edge69

.lr.ph68:                                         ; preds = %._crit_edge, %bb.k
  %.04867 = phi ptr [ %.1, %bb.k ], [ %i.aw, %._crit_edge ] ; 7 uses
  %.15066 = phi i32 [ %i.bz, %bb.k ], [ 0, %._crit_edge ] ; 3 uses
  %i.ba = sext i32 %.15066 to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba
  %i.bc = sub nsw i32 %.047, %.15066
  %i.bd = call i32 @UTF8_getc(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef nonnull %i.a) #6
  %i.be = load i64, ptr %i.a, align 8, !tbaa !38  ; 5 uses
  %i.bf = icmp ugt i64 %i.be, 65535
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph68
  %i.bg = add i64 %i.be, -65536                   ; 2 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !38
  %i.bh = lshr i64 %i.bg, 10                      ; 2 uses
  %i.bi = trunc i64 %i.bh to i16
  %i.bj = add i16 %i.bi, -10240
  %i.bk = lshr i16 %i.bj, 8
  %i.bl = trunc nuw i16 %i.bk to i8
  store i8 %i.bl, ptr %.04867, align 1, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %.04867, i64 2
  %i.bn = lshr i64 %i.be, 8
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = and i8 %i.bo, 3
  %i.bq = or disjoint i8 %i.bp, -36
  %i.br = getelementptr inbounds nuw i8, ptr %.04867, i64 3
  store i8 %i.bq, ptr %i.bm, align 1, !tbaa !11
  %i.bs = trunc i64 %i.be to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.04867, i64 4
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !11
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph68
  %i.bu = lshr i64 %i.be, 8
  %i.bv = trunc nuw i64 %i.bu to i8
  store i8 %i.bv, ptr %.04867, align 1, !tbaa !11
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %.04867, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink.in = phi i64 [ %i.bh, %bb.i ], [ %i.bw, %bb.j ]
  %.1 = phi ptr [ %i.bt, %bb.i ], [ %i.bx, %bb.j ] ; 2 uses
  %.sink = trunc i64 %.sink.in to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.04867, i64 1
  store i8 %.sink, ptr %i.by, align 1, !tbaa !11
  %i.bz = add nsw i32 %i.bd, %.15066              ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %.047
  br i1 %i.ca, label %.lr.ph68, label %._crit_edge69, !llvm.loop !35

._crit_edge69:                                    ; preds = %bb.k, %._crit_edge.thread
  %.051.lcssa8688 = phi i32 [ 2, %._crit_edge.thread ], [ %i.au, %bb.k ]
  %i.cb = phi ptr [ %i.ay, %._crit_edge.thread ], [ %i.aw, %bb.k ] ; 2 uses
  %.048.lcssa = phi ptr [ %i.ay, %._crit_edge.thread ], [ %.1, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.048.lcssa, i64 1
  store i8 0, ptr %.048.lcssa, align 1, !tbaa !11
  store i8 0, ptr %i.cc, align 1, !tbaa !11
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge69
  store i32 %.051.lcssa8688, ptr %3, align 4, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge69
  %.not61 = icmp eq ptr %2, null
  br i1 %.not61, label %OPENSSL_asc2uni.exit, label %OPENSSL_asc2uni.exit.sink.split

OPENSSL_asc2uni.exit.sink.split:                  ; preds = %bb.m, %bb.f
  %.sink89 = phi ptr [ %i.n, %bb.f ], [ %i.cb, %bb.m ] ; 2 uses
  store ptr %.sink89, ptr %2, align 8, !tbaa !19
  br label %OPENSSL_asc2uni.exit

OPENSSL_asc2uni.exit:                             ; preds = %bb.g, %OPENSSL_asc2uni.exit.sink.split, %._crit_edge.thread, %bb.f, %bb.d, %bb.m, %._crit_edge
  %.0 = phi ptr [ %i.cb, %bb.m ], [ null, %._crit_edge ], [ %i.n, %bb.f ], [ %.sink89, %OPENSSL_asc2uni.exit.sink.split ], [ null, %bb.d ], [ null, %._crit_edge.thread ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

declare i32 @UTF8_getc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @OPENSSL_uni2utf8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 !guid !44 {
bb.a:
  %2 = and i32 %1, 1
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader87, label %OPENSSL_uni2asc.exit

.preheader87:                                     ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader87, %bb.f
  %.091 = phi i32 [ %spec.select, %bb.f ], [ 0, %.preheader87 ] ; 3 uses
  %.04590 = phi i32 [ %i.fg, %bb.f ], [ 0, %.preheader87 ]
  %i.b = zext nneg i32 %.091 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = sub nuw nsw i32 %1, %.091                ; 3 uses
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bmp_to_utf8.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i64
  %i.l = or disjoint i64 %i.h, %i.k               ; 2 uses
  %i.m = and i8 %i.f, -8
  %or.cond.i = icmp eq i8 %i.m, -40
  br i1 %or.cond.i, label %bb.c, label %bmp_to_utf8.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %i.d, 4
  br i1 %i.n, label %bmp_to_utf8.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11    ; 2 uses
  %i.q = add i8 %i.p, 32
  %or.cond3.i = icmp ult i8 %i.q, -4
  br i1 %or.cond3.i, label %bmp_to_utf8.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl nuw nsw i64 %i.l, 10
  %i.s = zext i8 %i.p to i64
  %i.t = shl nuw nsw i64 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = zext i8 %i.v to i64
  %.masked.i = and i64 %i.t, 768
  %i.x = or disjoint i64 %.masked.i, %i.w
  %i.y = add nsw i64 %i.r, -56557568
  %i.z = or disjoint i64 %i.x, %i.y
  br label %bmp_to_utf8.exit

bmp_to_utf8.exit:                                 ; preds = %bb.b, %bb.e
  %.1.i = phi i64 [ %i.z, %bb.e ], [ %i.l, %bb.b ]
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.d, i32 4)
  %i.ab = tail call i32 @UTF8_putc(ptr noundef null, i32 noundef %i.aa, i64 noundef %.1.i) #6
  %.fr86 = freeze i32 %i.ab                       ; 3 uses
  %i.ac = icmp slt i32 %.fr86, 0
  br i1 %i.ac, label %bmp_to_utf8.exit.thread, label %bb.f

bmp_to_utf8.exit.thread:                          ; preds = %bmp_to_utf8.exit, %.lr.ph, %bb.d, %bb.c
  %i.ad = lshr exact i32 %1, 1                    ; 2 uses
  %i.ae = zext nneg i32 %1 to i64                 ; 3 uses
  %i.af = getelementptr i8, ptr %0, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %.not24.i = icmp eq i8 %i.ah, 0
  br i1 %.not24.i, label %.thread, label %.thread83

.thread83:                                        ; preds = %bmp_to_utf8.exit.thread
  %i.ai = add nuw nsw i32 %i.ad, 1
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.aj, ptr noundef nonnull @.str, i32 noundef 60) #6 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %OPENSSL_uni2asc.exit, label %iter.check

.thread:                                          ; preds = %bmp_to_utf8.exit.thread
  %i.am = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.an = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.am, ptr noundef nonnull @.str, i32 noundef 60) #6 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %OPENSSL_uni2asc.exit, label %iter.check

iter.check:                                       ; preds = %.thread83, %.thread
  %i.ap = phi i64 [ %i.am, %.thread ], [ %i.aj, %.thread83 ]
  %i.aq = phi ptr [ %i.an, %.thread ], [ %i.ak, %.thread83 ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 25 uses
  %3 = add nsw i64 %i.ae, -2                      ; 3 uses
  %i.as = lshr exact i64 %3, 1
  %i.at = add nuw i64 %i.as, 1                    ; 4 uses
  %min.iters.check = icmp ult i64 %3, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp ult i64 %3, 32
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %i.at, 15                       ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = select i1 %i.av, i64 16, i64 %i.au      ; 2 uses
  %n.vec = sub i64 %i.at, %i.aw                   ; 3 uses
  %i.ax = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = shl nuw i64 %index, 1                   ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 30
  %i.ce = load i8, ptr %i.az, align 1, !tbaa !11
  %i.cf = load i8, ptr %i.bb, align 1, !tbaa !11
  %i.cg = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.ch = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.ci = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.cj = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.ck = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.cl = load i8, ptr %i.bn, align 1, !tbaa !11
  %i.cm = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.cn = load i8, ptr %i.br, align 1, !tbaa !11
  %i.co = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.cp = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.cq = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.cr = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cs = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.ct = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cu = insertelement <16 x i8> poison, i8 %i.ce, i64 0
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 1
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 2
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 3
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 4
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 5
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 6
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 7
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 8
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 9
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 10
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 11
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 12
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 13
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 14
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index
  store <16 x i8> %i.dj, ptr %i.dk, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !39

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.aw, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dm = and i64 %i.at, 7                        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = select i1 %i.dn, i64 8, i64 %i.dm
  %n.vec106 = sub i64 %i.at, %i.do                ; 2 uses
  %i.dp = shl i64 %n.vec106, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next108, %vec.epilog.vector.body ] ; 3 uses
  %i.dq = shl nuw i64 %index107, 1                ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.ar, i64 %i.dq
  %i.dt = getelementptr i8, ptr %i.ds, i64 2
  %i.du = getelementptr i8, ptr %i.ar, i64 %i.dq
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %i.dw = getelementptr i8, ptr %i.ar, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 6
  %i.dy = getelementptr i8, ptr %i.ar, i64 %i.dq
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = getelementptr i8, ptr %i.ar, i64 %i.dq
  %i.eb = getelementptr i8, ptr %i.ea, i64 10
  %i.ec = getelementptr i8, ptr %i.ar, i64 %i.dq
  %i.ed = getelementptr i8, ptr %i.ec, i64 12
  %i.ee = getelementptr i8, ptr %i.ar, i64 %i.dq
  %i.ef = getelementptr i8, ptr %i.ee, i64 14
  %i.eg = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.eh = load i8, ptr %i.dt, align 1, !tbaa !11
  %i.ei = load i8, ptr %i.dv, align 1, !tbaa !11
  %i.ej = load i8, ptr %i.dx, align 1, !tbaa !11
  %i.ek = load i8, ptr %i.dz, align 1, !tbaa !11
  %i.el = load i8, ptr %i.eb, align 1, !tbaa !11
  %i.em = load i8, ptr %i.ed, align 1, !tbaa !11
  %i.en = load i8, ptr %i.ef, align 1, !tbaa !11
  %i.eo = insertelement <8 x i8> poison, i8 %i.eg, i64 0
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 1
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 2
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 3
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 4
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 5
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.em, i64 6
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index107
  store <8 x i8> %i.ev, ptr %i.ew, align 1, !tbaa !11
  %index.next108 = add nuw i64 %index107, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next108, %n.vec106
  br i1 %i.ex, label %.lr.ph.i.preheader, label %vec.epilog.vector.body, !llvm.loop !40

.lr.ph.i.preheader:                               ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !11
  %i.fa = lshr exact i64 %indvars.iv.i, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.fa
  store i8 %i.ez, ptr %i.fb, align 1, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fc = icmp samesign ult i64 %indvars.iv.next.i, %i.ae
  br i1 %i.fc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.fd = getelementptr i8, ptr %i.aq, i64 %i.ap
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  store i8 0, ptr %i.fe, align 1, !tbaa !11
  br label %OPENSSL_uni2asc.exit

bb.f:                                             ; preds = %bmp_to_utf8.exit
  %i.ff = icmp eq i32 %.fr86, 4
  %spec.select.v = select i1 %i.ff, i32 4, i32 2
  %spec.select = add nuw nsw i32 %spec.select.v, %.091 ; 2 uses
  %i.fg = add nuw nsw i32 %.fr86, %.04590         ; 2 uses
  %i.fh = icmp slt i32 %spec.select, %1
  br i1 %i.fh, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.f, %.preheader87
  %.045.lcssa = phi i32 [ 0, %.preheader87 ], [ %i.fg, %bb.f ] ; 2 uses
  %.not54 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not54, label %bb.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.fi = sext i32 %1 to i64
  %i.fj = getelementptr i8, ptr %0, i64 %i.fi     ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !11
  %.not55 = icmp eq i8 %i.fl, 0
  br i1 %.not55, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fm = getelementptr i8, ptr %i.fj, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !11
  %.not56 = icmp eq i8 %i.fn, 0
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge
  %i.fo = add nuw nsw i32 %.045.lcssa, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.146 = phi i32 [ %i.fo, %bb.i ], [ %.045.lcssa, %bb.h ]
  %i.fp = zext nneg i32 %.146 to i64
  %i.fq = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.fp, ptr noundef nonnull @.str, i32 noundef 210) #6 ; 6 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %OPENSSL_uni2asc.exit, label %.preheader

.preheader:                                       ; preds = %bb.j
  br i1 %i.a, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %.preheader, %bb.o
  %.293 = phi i32 [ %spec.select85, %bb.o ], [ 0, %.preheader ] ; 3 uses
  %.24792 = phi i32 [ %i.gx, %bb.o ], [ 0, %.preheader ] ; 2 uses
  %i.fs = zext nneg i32 %.24792 to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fs
  %i.fu = zext nneg i32 %.293 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 %i.fu ; 4 uses
  %i.fw = sub nuw nsw i32 %1, %.293               ; 3 uses
  %i.fx = icmp slt i32 %i.fw, 2
  br i1 %i.fx, label %bmp_to_utf8.exit64.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph94
  %i.fy = load i8, ptr %i.fv, align 1, !tbaa !11  ; 2 uses
  %i.fz = zext i8 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !11
  %i.gd = zext i8 %i.gc to i64
  %i.ge = or disjoint i64 %i.ga, %i.gd            ; 2 uses
  %i.gf = and i8 %i.fy, -8
  %or.cond.i59 = icmp eq i8 %i.gf, -40
  br i1 %or.cond.i59, label %bb.l, label %bmp_to_utf8.exit64

bb.l:                                             ; preds = %bb.k
  %i.gg = icmp samesign ult i32 %i.fw, 4
  br i1 %i.gg, label %bmp_to_utf8.exit64.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !11  ; 2 uses
  %i.gj = add i8 %i.gi, 32
  %or.cond3.i62 = icmp ult i8 %i.gj, -4
  br i1 %or.cond3.i62, label %bmp_to_utf8.exit64.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gk = shl nuw nsw i64 %i.ge, 10
  %i.gl = zext i8 %i.gi to i64
  %i.gm = shl nuw nsw i64 %i.gl, 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fv, i64 3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !11
  %i.gp = zext i8 %i.go to i64
  %.masked.i63 = and i64 %i.gm, 768
  %i.gq = or disjoint i64 %.masked.i63, %i.gp
  %i.gr = add nsw i64 %i.gk, -56557568
  %i.gs = or disjoint i64 %i.gq, %i.gr
  br label %bmp_to_utf8.exit64

bmp_to_utf8.exit64:                               ; preds = %bb.k, %bb.n
  %.1.i60 = phi i64 [ %i.gs, %bb.n ], [ %i.ge, %bb.k ]
  %i.gt = tail call i32 @llvm.umin.i32(i32 %i.fw, i32 4)
  %i.gu = tail call i32 @UTF8_putc(ptr noundef nonnull %i.ft, i32 noundef %i.gt, i64 noundef %.1.i60) #6
  %.fr = freeze i32 %i.gu                         ; 3 uses
  %i.gv = icmp slt i32 %.fr, 0
  br i1 %i.gv, label %bmp_to_utf8.exit64.thread, label %bb.o

bmp_to_utf8.exit64.thread:                        ; preds = %bb.l, %bb.m, %.lr.ph94, %bmp_to_utf8.exit64
  tail call void @CRYPTO_free(ptr noundef nonnull %i.fq, ptr noundef nonnull @.str, i32 noundef 218) #6
  br label %OPENSSL_uni2asc.exit

bb.o:                                             ; preds = %bmp_to_utf8.exit64
  %i.gw = icmp eq i32 %.fr, 4
  %spec.select85.v = select i1 %i.gw, i32 4, i32 2
  %spec.select85 = add nuw nsw i32 %spec.select85.v, %.293 ; 2 uses
  %i.gx = add nuw nsw i32 %.fr, %.24792           ; 2 uses
  %i.gy = icmp slt i32 %spec.select85, %1
  br i1 %i.gy, label %.lr.ph94, label %._crit_edge95.loopexit, !llvm.loop !43

._crit_edge95.loopexit:                           ; preds = %bb.o
  %i.gz = zext nneg i32 %i.gx to i64
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit, %.preheader
  %.247.lcssa = phi i64 [ 0, %.preheader ], [ %i.gz, %._crit_edge95.loopexit ]
  br i1 %.not54, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge95
  %i.ha = sext i32 %1 to i64
  %i.hb = getelementptr i8, ptr %0, i64 %i.ha     ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 -2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !11
  %.not57 = icmp eq i8 %i.hd, 0
  br i1 %.not57, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.he = getelementptr i8, ptr %i.hb, i64 -1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !11
  %.not58 = icmp eq i8 %i.hf, 0
  br i1 %.not58, label %OPENSSL_uni2asc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge95
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.247.lcssa
  store i8 0, ptr %i.hg, align 1, !tbaa !11
  br label %OPENSSL_uni2asc.exit

OPENSSL_uni2asc.exit:                             ; preds = %.thread83, %._crit_edge.i, %.thread, %bb.q, %bb.r, %bb.j, %bb.a, %bmp_to_utf8.exit64.thread
  %.048 = phi ptr [ null, %bb.j ], [ %i.fq, %bb.q ], [ null, %bb.a ], [ null, %bmp_to_utf8.exit64.thread ], [ %i.fq, %bb.r ], [ %i.aq, %._crit_edge.i ], [ null, %.thread ], [ null, %.thread83 ]
  ret ptr %.048
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_PKCS12_bio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !45 {
bb.a:
  %i.a = tail call ptr @PKCS12_it() #6
  %i.b = tail call i32 @ASN1_item_i2d_bio(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #6
  ret i32 %i.b
}

declare i32 @ASN1_item_i2d_bio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PKCS12_it() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_PKCS12_fp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !46 {
bb.a:
  %i.a = tail call ptr @PKCS12_it() #6
  %i.b = tail call i32 @ASN1_item_i2d_fp(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #6
  ret i32 %i.b
}

declare i32 @ASN1_item_i2d_fp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @d2i_PKCS12_bio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !47 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = tail call ptr @ossl_pkcs12_get0_pkcs7ctx(ptr noundef %i.a) #6 ; 3 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef nonnull %i.b) #6
  %i.d = tail call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef nonnull %i.b) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.09 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.e = tail call ptr @PKCS12_it() #6
  %i.f = tail call ptr @ASN1_item_d2i_bio_ex(ptr noundef %i.e, ptr noundef %0, ptr noundef %1, ptr noundef %.09, ptr noundef %.0) #6
  ret ptr %i.f
}

declare ptr @ossl_pkcs12_get0_pkcs7ctx(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef) local_unnamed_addr #3

declare ptr @ASN1_item_d2i_bio_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @d2i_PKCS12_fp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !48 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = tail call ptr @ossl_pkcs12_get0_pkcs7ctx(ptr noundef %i.a) #6 ; 3 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @ossl_pkcs7_ctx_get0_libctx(ptr noundef nonnull %i.b) #6
  %i.d = tail call ptr @ossl_pkcs7_ctx_get0_propq(ptr noundef nonnull %i.b) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.09 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.e = tail call ptr @PKCS12_it() #6
  %i.f = tail call ptr @ASN1_item_d2i_fp_ex(ptr noundef %i.e, ptr noundef %0, ptr noundef %1, ptr noundef %.09, ptr noundef %.0) #6
  ret ptr %i.f
}

declare ptr @ASN1_item_d2i_fp_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @UTF8_putc(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{i64 -5765295521328747109}
!11 = !{!6, !6, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = !{!7, !7, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"branch_weights", i32 8, i32 8}
!21 = !{!"p1 _ZTS9PKCS12_st", !17, i64 0}
!22 = !{!21, !21, i64 0}
!23 = distinct !{!23, !12, !13, !14}
!24 = distinct !{!24, !12, !13, !14}
!25 = distinct !{!25, !12, !14, !13}
!26 = !{i64 3911323285507466319}
!27 = distinct !{!27, !12, !13, !14}
!28 = distinct !{!28, !12, !13, !14}
!29 = distinct !{!29, !12, !14, !13}
!30 = !{i64 -7567112922617808148}
!31 = distinct !{!31, !12, !13, !14}
!32 = distinct !{!32, !12, !13, !14}
!33 = distinct !{!33, !12, !14, !13}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = !{i64 -5719193701919323958}
!37 = !{!"long", !6, i64 0}
!38 = !{!37, !37, i64 0}
!39 = distinct !{!39, !12, !13, !14}
!40 = distinct !{!40, !12, !13, !14}
!41 = distinct !{!41, !12, !14, !13}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = !{i64 -943777420304196273}
!45 = !{i64 -5465036125521279141}
!46 = !{i64 241491710276344831}
!47 = !{i64 2643449951692548813}
!48 = !{i64 -4060043298058132929}
end_hunk_0
