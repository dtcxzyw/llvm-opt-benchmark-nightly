Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/p12_utl?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@OPENSSL_utf82uni:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load = load <8 x i8>, ptr %i.z, align 1, !tbaa !8
  %wide.load91 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !8
  %interleaved.vec = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.w, align 1, !tbaa !8
  %interleaved.vec92 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load91, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec92, ptr %i.y, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !12

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
  %wide.load95 = load <4 x i8>, ptr %i.af, align 1, !tbaa !8
  %interleaved.vec96 = shufflevector <4 x i8> zeroinitializer, <4 x i8> %wide.load95, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec96, ptr %i.ae, align 1, !tbaa !8
  %index.next97 = add nuw i64 %index94, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next97, %n.vec93
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.s, %n.vec93
  br i1 %cmp.n98, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.i ; 2 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !8
  %i.ai = lshr exact i64 %indvars.iv.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next.i, %i.p
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 2 uses
  store i8 0, ptr %i.an, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !8
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  store i32 %i.l, ptr %3, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.not32.i = icmp eq ptr %2, null
  br i1 %.not32.i, label %OPENSSL_asc2uni.exit, label %OPENSSL_asc2uni.exit.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1114111
  br i1 %i.aq, label %OPENSSL_asc2uni.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp samesign ugt i64 %i.ap, 65535
  %.152.v = select i1 %i.ar, i32 4, i32 2
  %.152 = add nuw nsw i32 %.152.v, %.05164        ; 2 uses
  %i.as = add nuw nsw i32 %i.i, %.04965           ; 2 uses
  %i.at = icmp slt i32 %i.as, %.047
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !29

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
  %i.be = load i64, ptr %i.a, align 8, !tbaa !32  ; 5 uses
  %i.bf = icmp ugt i64 %i.be, 65535
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph68
  %i.bg = add i64 %i.be, -65536                   ; 2 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !32
  %i.bh = lshr i64 %i.bg, 10                      ; 2 uses
  %i.bi = trunc i64 %i.bh to i16
  %i.bj = add i16 %i.bi, -10240
  %i.bk = lshr i16 %i.bj, 8
  %i.bl = trunc nuw i16 %i.bk to i8
  store i8 %i.bl, ptr %.04867, align 1, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.04867, i64 2
  %i.bn = lshr i64 %i.be, 8
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = and i8 %i.bo, 3
  %i.bq = or disjoint i8 %i.bp, -36
  %i.br = getelementptr inbounds nuw i8, ptr %.04867, i64 3
  store i8 %i.bq, ptr %i.bm, align 1, !tbaa !8
  %i.bs = trunc i64 %i.be to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.04867, i64 4
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !8
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph68
  %i.bu = lshr i64 %i.be, 8
  %i.bv = trunc nuw i64 %i.bu to i8
  store i8 %i.bv, ptr %.04867, align 1, !tbaa !8
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %.04867, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink.in = phi i64 [ %i.bh, %bb.i ], [ %i.bw, %bb.j ]
  %.1 = phi ptr [ %i.bt, %bb.i ], [ %i.bx, %bb.j ] ; 2 uses
  %.sink = trunc i64 %.sink.in to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.04867, i64 1
  store i8 %.sink, ptr %i.by, align 1, !tbaa !8
  %i.bz = add nsw i32 %i.bd, %.15066              ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %.047
  br i1 %i.ca, label %.lr.ph68, label %._crit_edge69, !llvm.loop !30

._crit_edge69:                                    ; preds = %bb.k, %._crit_edge.thread
  %.051.lcssa8688 = phi i32 [ 2, %._crit_edge.thread ], [ %i.au, %bb.k ]
  %i.cb = phi ptr [ %i.ay, %._crit_edge.thread ], [ %i.aw, %bb.k ] ; 2 uses
  %.048.lcssa = phi ptr [ %i.ay, %._crit_edge.thread ], [ %.1, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.048.lcssa, i64 1
  store i8 0, ptr %.048.lcssa, align 1, !tbaa !8
  store i8 0, ptr %i.cc, align 1, !tbaa !8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge69
  store i32 %.051.lcssa8688, ptr %3, align 4, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge69
  %.not61 = icmp eq ptr %2, null
  br i1 %.not61, label %OPENSSL_asc2uni.exit, label %OPENSSL_asc2uni.exit.sink.split

OPENSSL_asc2uni.exit.sink.split:                  ; preds = %bb.m, %bb.f
  %.sink89 = phi ptr [ %i.n, %bb.f ], [ %i.cb, %bb.m ] ; 2 uses
  store ptr %.sink89, ptr %2, align 8, !tbaa !16
  br label %OPENSSL_asc2uni.exit

OPENSSL_asc2uni.exit:                             ; preds = %bb.g, %OPENSSL_asc2uni.exit.sink.split, %._crit_edge.thread, %bb.f, %bb.d, %bb.m, %._crit_edge
  %.0 = phi ptr [ %i.cb, %bb.m ], [ null, %._crit_edge ], [ %i.n, %bb.f ], [ %.sink89, %OPENSSL_asc2uni.exit.sink.split ], [ null, %bb.d ], [ null, %._crit_edge.thread ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

declare i32 @UTF8_getc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @OPENSSL_uni2utf8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader87, label %OPENSSL_uni2asc.exit

.preheader87:                                     ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader87, %bb.g
  %.091 = phi i32 [ %spec.select, %bb.g ], [ 0, %.preheader87 ] ; 3 uses
  %.04590 = phi i32 [ %i.fh, %bb.g ], [ 0, %.preheader87 ]
  %i.c = zext nneg i32 %.091 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = sub nsw i32 %1, %.091                    ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i8, ptr %i.d, align 1, !tbaa !8     ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = zext i8 %i.k to i64
  %i.m = or disjoint i64 %i.i, %i.l               ; 2 uses
  %i.n = and i8 %i.g, -8
  %or.cond.i = icmp eq i8 %i.n, -40
  br i1 %or.cond.i, label %bb.c, label %bmp_to_utf8.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.e, 4
  br i1 %i.o, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %i.r = add i8 %i.q, 32
  %or.cond3.i = icmp ult i8 %i.r, -4
  br i1 %or.cond3.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = shl nuw nsw i64 %i.m, 10
  %i.t = zext i8 %i.q to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i64
  %.masked.i = and i64 %i.u, 768
  %i.y = or disjoint i64 %.masked.i, %i.x
  %i.z = add nsw i64 %i.s, -56557568
  %i.aa = or disjoint i64 %i.y, %i.z
  br label %bmp_to_utf8.exit

bmp_to_utf8.exit:                                 ; preds = %bb.b, %bb.e
  %.1.i = phi i64 [ %i.aa, %bb.e ], [ %i.m, %bb.b ]
  %i.ab = tail call i32 @UTF8_putc(ptr noundef null, i32 noundef 4, i64 noundef %.1.i) #6
  %.fr86 = freeze i32 %i.ab                       ; 3 uses
  %i.ac = icmp slt i32 %.fr86, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d, %.lr.ph, %bmp_to_utf8.exit
  %i.ad = lshr exact i32 %1, 1                    ; 2 uses
  %i.ae = zext nneg i32 %1 to i64                 ; 3 uses
  %i.af = getelementptr i8, ptr %0, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %.not24.i = icmp eq i8 %i.ah, 0
  br i1 %.not24.i, label %.thread, label %.thread83

.thread83:                                        ; preds = %bb.f
  %i.ai = add nuw nsw i32 %i.ad, 1
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.aj, ptr noundef nonnull @.str, i32 noundef 60) #6 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %OPENSSL_uni2asc.exit, label %iter.check

.thread:                                          ; preds = %bb.f
  %i.am = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.an = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.am, ptr noundef nonnull @.str, i32 noundef 60) #6 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %OPENSSL_uni2asc.exit, label %iter.check

iter.check:                                       ; preds = %.thread83, %.thread
  %i.ap = phi i64 [ %i.am, %.thread ], [ %i.aj, %.thread83 ]
  %i.aq = phi ptr [ %i.an, %.thread ], [ %i.ak, %.thread83 ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 25 uses
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 2) ; 3 uses
  %i.at = lshr exact i64 %i.as, 1
  %i.au = add nuw nsw i64 %i.at, 1                ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.as, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp samesign ult i64 %i.as, 32
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %i.au, 15                       ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 16, i64 %i.av      ; 2 uses
  %n.vec = sub nsw i64 %i.au, %i.ax               ; 3 uses
  %i.ay = shl nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = shl nuw i64 %index, 1                   ; 16 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 30
  %i.cf = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.cg = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.ch = load i8, ptr %i.be, align 1, !tbaa !8
  %i.ci = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.cj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.ck = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.cl = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.cm = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.cn = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.co = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.cp = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.cq = load i8, ptr %i.bw, align 1, !tbaa !8
  %i.cr = load i8, ptr %i.by, align 1, !tbaa !8
  %i.cs = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.ct = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.cu = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cv = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 1
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 2
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 3
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 4
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 5
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 6
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 7
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 8
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 9
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 10
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 11
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 12
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 13
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 14
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 15
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index
  store <16 x i8> %i.dk, ptr %i.dl, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !33

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.ax, 9
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dn = and i64 %i.au, 7                        ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  %i.dp = select i1 %i.do, i64 8, i64 %i.dn
  %n.vec106 = sub nsw i64 %i.au, %i.dp            ; 2 uses
  %i.dq = shl nsw i64 %n.vec106, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next108, %vec.epilog.vector.body ] ; 3 uses
  %i.dr = shl nuw i64 %index107, 1                ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ar, i64 %i.dr
  %i.du = getelementptr i8, ptr %i.dt, i64 2
  %i.dv = getelementptr i8, ptr %i.ar, i64 %i.dr
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  %i.dx = getelementptr i8, ptr %i.ar, i64 %i.dr
  %i.dy = getelementptr i8, ptr %i.dx, i64 6
  %i.dz = getelementptr i8, ptr %i.ar, i64 %i.dr
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = getelementptr i8, ptr %i.ar, i64 %i.dr
  %i.ec = getelementptr i8, ptr %i.eb, i64 10
  %i.ed = getelementptr i8, ptr %i.ar, i64 %i.dr
  %i.ee = getelementptr i8, ptr %i.ed, i64 12
  %i.ef = getelementptr i8, ptr %i.ar, i64 %i.dr
  %i.eg = getelementptr i8, ptr %i.ef, i64 14
  %i.eh = load i8, ptr %i.ds, align 1, !tbaa !8
  %i.ei = load i8, ptr %i.du, align 1, !tbaa !8
  %i.ej = load i8, ptr %i.dw, align 1, !tbaa !8
  %i.ek = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.el = load i8, ptr %i.ea, align 1, !tbaa !8
  %i.em = load i8, ptr %i.ec, align 1, !tbaa !8
  %i.en = load i8, ptr %i.ee, align 1, !tbaa !8
  %i.eo = load i8, ptr %i.eg, align 1, !tbaa !8
  %i.ep = insertelement <8 x i8> poison, i8 %i.eh, i64 0
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 1
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 2
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 3
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 4
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.em, i64 5
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 6
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.eo, i64 7
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index107
  store <8 x i8> %i.ew, ptr %i.ex, align 1, !tbaa !8
  %index.next108 = add nuw i64 %index107, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next108, %n.vec106
  br i1 %i.ey, label %.lr.ph.i.preheader, label %vec.epilog.vector.body, !llvm.loop !34

.lr.ph.i.preheader:                               ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !8
  %i.fb = lshr exact i64 %indvars.iv.i, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.fb
  store i8 %i.fa, ptr %i.fc, align 1, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fd = icmp samesign ult i64 %indvars.iv.next.i, %i.ae
  br i1 %i.fd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.fe = getelementptr i8, ptr %i.aq, i64 %i.ap
  %i.ff = getelementptr i8, ptr %i.fe, i64 -1
  store i8 0, ptr %i.ff, align 1, !tbaa !8
  br label %OPENSSL_uni2asc.exit

bb.g:                                             ; preds = %bmp_to_utf8.exit
  %i.fg = icmp eq i32 %.fr86, 4
  %spec.select.v = select i1 %i.fg, i32 4, i32 2
  %spec.select = add nuw nsw i32 %spec.select.v, %.091 ; 2 uses
  %i.fh = add nuw nsw i32 %.fr86, %.04590         ; 2 uses
  %i.fi = icmp slt i32 %spec.select, %1
  br i1 %i.fi, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.g, %.preheader87
  %.045.lcssa = phi i32 [ 0, %.preheader87 ], [ %i.fh, %bb.g ] ; 2 uses
  %.not54 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not54, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.fj = sext i32 %1 to i64
  %i.fk = getelementptr i8, ptr %0, i64 %i.fj     ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !8
  %.not55 = icmp eq i8 %i.fm, 0
  br i1 %.not55, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fn = getelementptr i8, ptr %i.fk, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !8
  %.not56 = icmp eq i8 %i.fo, 0
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge
  %i.fp = add nuw nsw i32 %.045.lcssa, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.146 = phi i32 [ %i.fp, %bb.j ], [ %.045.lcssa, %bb.i ]
  %i.fq = zext nneg i32 %.146 to i64
  %i.fr = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.fq, ptr noundef nonnull @.str, i32 noundef 210) #6 ; 6 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %OPENSSL_uni2asc.exit, label %.preheader

.preheader:                                       ; preds = %bb.k
  br i1 %i.b, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %.preheader, %bb.p
  %.293 = phi i32 [ %spec.select85, %bb.p ], [ 0, %.preheader ] ; 3 uses
  %.24792 = phi i32 [ %i.gx, %bb.p ], [ 0, %.preheader ] ; 2 uses
  %i.ft = zext nneg i32 %.24792 to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ft
  %i.fv = zext nneg i32 %.293 to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 %i.fv ; 4 uses
  %i.fx = sub nsw i32 %1, %.293                   ; 2 uses
  %i.fy = icmp slt i32 %i.fx, 2
  br i1 %i.fy, label %bmp_to_utf8.exit64.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph94
  %i.fz = load i8, ptr %i.fw, align 1, !tbaa !8   ; 2 uses
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !8
  %i.ge = zext i8 %i.gd to i64
  %i.gf = or disjoint i64 %i.gb, %i.ge            ; 2 uses
  %i.gg = and i8 %i.fz, -8
  %or.cond.i59 = icmp eq i8 %i.gg, -40
  br i1 %or.cond.i59, label %bb.m, label %bmp_to_utf8.exit64

bb.m:                                             ; preds = %bb.l
  %i.gh = icmp samesign ult i32 %i.fx, 4
  br i1 %i.gh, label %bmp_to_utf8.exit64.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !8   ; 2 uses
  %i.gk = add i8 %i.gj, 32
  %or.cond3.i62 = icmp ult i8 %i.gk, -4
  br i1 %or.cond3.i62, label %bmp_to_utf8.exit64.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gl = shl nuw nsw i64 %i.gf, 10
  %i.gm = zext i8 %i.gj to i64
  %i.gn = shl nuw nsw i64 %i.gm, 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.fw, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !8
  %i.gq = zext i8 %i.gp to i64
  %.masked.i63 = and i64 %i.gn, 768
  %i.gr = or disjoint i64 %.masked.i63, %i.gq
  %i.gs = add nsw i64 %i.gl, -56557568
  %i.gt = or disjoint i64 %i.gr, %i.gs
  br label %bmp_to_utf8.exit64

bmp_to_utf8.exit64:                               ; preds = %bb.l, %bb.o
  %.1.i60 = phi i64 [ %i.gt, %bb.o ], [ %i.gf, %bb.l ]
  %i.gu = tail call i32 @UTF8_putc(ptr noundef nonnull %i.fu, i32 noundef 4, i64 noundef %.1.i60) #6
  %.fr = freeze i32 %i.gu                         ; 3 uses
  %i.gv = icmp slt i32 %.fr, 0
  br i1 %i.gv, label %bmp_to_utf8.exit64.thread, label %bb.p

bmp_to_utf8.exit64.thread:                        ; preds = %bb.m, %bb.n, %.lr.ph94, %bmp_to_utf8.exit64
  tail call void @CRYPTO_free(ptr noundef nonnull %i.fr, ptr noundef nonnull @.str, i32 noundef 218) #6
  br label %OPENSSL_uni2asc.exit

bb.p:                                             ; preds = %bmp_to_utf8.exit64
  %i.gw = icmp eq i32 %.fr, 4
  %spec.select85.v = select i1 %i.gw, i32 4, i32 2
  %spec.select85 = add nuw nsw i32 %spec.select85.v, %.293 ; 2 uses
  %i.gx = add nuw nsw i32 %.fr, %.24792           ; 2 uses
  %i.gy = icmp slt i32 %spec.select85, %1
  br i1 %i.gy, label %.lr.ph94, label %._crit_edge95.loopexit, !llvm.loop !37

._crit_edge95.loopexit:                           ; preds = %bb.p
  %i.gz = zext nneg i32 %i.gx to i64
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit, %.preheader
  %.247.lcssa = phi i64 [ 0, %.preheader ], [ %i.gz, %._crit_edge95.loopexit ]
  br i1 %.not54, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge95
  %i.ha = sext i32 %1 to i64
  %i.hb = getelementptr i8, ptr %0, i64 %i.ha     ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 -2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !8
  %.not57 = icmp eq i8 %i.hd, 0
  br i1 %.not57, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.he = getelementptr i8, ptr %i.hb, i64 -1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !8
  %.not58 = icmp eq i8 %i.hf, 0
  br i1 %.not58, label %OPENSSL_uni2asc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge95
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.247.lcssa
  store i8 0, ptr %i.hg, align 1, !tbaa !8
  br label %OPENSSL_uni2asc.exit

OPENSSL_uni2asc.exit:                             ; preds = %.thread83, %._crit_edge.i, %.thread, %bb.r, %bb.s, %bb.k, %bb.a, %bmp_to_utf8.exit64.thread
  %.048 = phi ptr [ null, %bb.k ], [ %i.fr, %bb.r ], [ null, %bb.a ], [ null, %bmp_to_utf8.exit64.thread ], [ %i.fr, %bb.s ], [ %i.aq, %._crit_edge.i ], [ null, %.thread83 ], [ null, %.thread ]
  ret ptr %.048
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @i2d_PKCS12_bio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PKCS12_it() #6
  %i.b = tail call i32 @ASN1_item_i2d_bio(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #6
  ret i32 %i.b
}

declare i32 @ASN1_item_i2d_bio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PKCS12_it() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @i2d_PKCS12_fp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PKCS12_it() #6
  %i.b = tail call i32 @ASN1_item_i2d_fp(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #6
  ret i32 %i.b
}

declare i32 @ASN1_item_i2d_fp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @d2i_PKCS12_bio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
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
define ptr @d2i_PKCS12_fp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
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
declare i64 @llvm.usub.sat.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 4, i32 12}
!13 = !{!5, !5, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"branch_weights", i32 8, i32 8}
!18 = !{!"p1 _ZTS9PKCS12_st", !14, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !9, !10, !11}
!21 = distinct !{!21, !9, !10, !11}
!22 = distinct !{!22, !9, !11, !10}
!23 = distinct !{!23, !9, !10, !11}
!24 = distinct !{!24, !9, !10, !11}
!25 = distinct !{!25, !9, !11, !10}
!26 = distinct !{!26, !9, !10, !11}
!27 = distinct !{!27, !9, !10, !11}
!28 = distinct !{!28, !9, !11, !10}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = !{!"long", !4, i64 0}
!32 = !{!31, !31, i64 0}
!33 = distinct !{!33, !9, !10, !11}
!34 = distinct !{!34, !9, !10, !11}
!35 = distinct !{!35, !9, !11, !10}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
end_hunk_0
