Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/pkcs12?download=true
inline.NumInlined: 48
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@wc_PKCS12_create:bb.a
  %i.iz = call i32 @wc_FreeRng(ptr noundef nonnull %14) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge, %bb.a, %bb.ai, %bb.z, %bb.u, %PKCS12_create_key_content.exit.thread, %bb.c
  %.1 = phi ptr [ null, %.critedge ], [ null, %bb.c ], [ null, %PKCS12_create_key_content.exit.thread ], [ null, %bb.u ], [ null, %bb.z ], [ %i.n, %bb.ai ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  ret ptr %.1
}

declare i32 @wc_InitRng_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_FreeRng(ptr noundef) local_unnamed_addr #2

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wc_PKCS12_create_mac(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %6 = alloca [1 x %struct.Hmac], align 16        ; 7 uses
  %i.a = alloca [256 x i8], align 16              ; 21 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %ForceZero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %4, 127
  br i1 %i.g, label %.lr.ph25.preheader.i, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not67 = icmp eq i32 %4, 0
  br i1 %.not67, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp ult i32 %4, 16
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 112          ; 10 uses
  %i.i = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.load = load <8 x i8>, ptr %3, align 1, !tbaa !32
  %wide.load2 = load <8 x i8>, ptr %i.k, align 1, !tbaa !32
  %interleaved.vec = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.a, align 16, !tbaa !32
  %interleaved.vec3 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load2, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3, ptr %i.j, align 16, !tbaa !32
  %i.l = icmp eq i64 %n.vec, 16
  br i1 %i.l, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.o, align 1, !tbaa !32
  %wide.load2.1 = load <8 x i8>, ptr %i.p, align 1, !tbaa !32
  %interleaved.vec.1 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load.1, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.m, align 16, !tbaa !32
  %interleaved.vec3.1 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load2.1, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3.1, ptr %i.n, align 16, !tbaa !32
  %i.q = icmp eq i64 %n.vec, 32
  br i1 %i.q, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.t, align 1, !tbaa !32
  %wide.load2.2 = load <8 x i8>, ptr %i.u, align 1, !tbaa !32
  %interleaved.vec.2 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load.2, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.r, align 16, !tbaa !32
  %interleaved.vec3.2 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load2.2, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3.2, ptr %i.s, align 16, !tbaa !32
  %i.v = icmp eq i64 %n.vec, 48
  br i1 %i.v, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %wide.load.3 = load <8 x i8>, ptr %i.y, align 1, !tbaa !32
  %wide.load2.3 = load <8 x i8>, ptr %i.z, align 1, !tbaa !32
  %interleaved.vec.3 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load.3, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.w, align 16, !tbaa !32
  %interleaved.vec3.3 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load2.3, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3.3, ptr %i.x, align 16, !tbaa !32
  %i.aa = icmp eq i64 %n.vec, 64
  br i1 %i.aa, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 72
  %wide.load.4 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !32
  %wide.load2.4 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !32
  %interleaved.vec.4 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load.4, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.4, ptr %i.ab, align 16, !tbaa !32
  %interleaved.vec3.4 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load2.4, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3.4, ptr %i.ac, align 16, !tbaa !32
  %i.af = icmp eq i64 %n.vec, 80
  br i1 %i.af, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 88
  %wide.load.5 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !32
  %wide.load2.5 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !32
  %interleaved.vec.5 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load.5, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.5, ptr %i.ag, align 16, !tbaa !32
  %interleaved.vec3.5 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load2.5, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3.5, ptr %i.ah, align 16, !tbaa !32
  %i.ak = icmp eq i64 %n.vec, 96
  br i1 %i.ak, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 104
  %wide.load.6 = load <8 x i8>, ptr %i.an, align 1, !tbaa !32
  %wide.load2.6 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !32
  %interleaved.vec.6 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load.6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.6, ptr %i.al, align 16, !tbaa !32
  %interleaved.vec3.6 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load2.6, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3.6, ptr %i.am, align 16, !tbaa !32
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4 = and i64 %wide.trip.count, 124         ; 4 uses
  %i.ap = shl nuw nsw i64 %n.vec4, 1              ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.aq = shl nuw i64 %index5, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %index5
  %wide.load6 = load <4 x i8>, ptr %i.as, align 1, !tbaa !32
  %interleaved.vec7 = shufflevector <4 x i8> zeroinitializer, <4 x i8> %wide.load6, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec7, ptr %i.ar, align 8, !tbaa !32
  %index.next8 = add nuw i64 %index5, 4           ; 2 uses
  %i.at = icmp eq i64 %index.next8, %n.vec4
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %n.vec4, %wide.trip.count
  br i1 %cmp.n9, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv68.ph = phi i64 [ 0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec4, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph ], [ %indvars.iv68.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv68 ; 2 uses
  store i8 0, ptr %i.au, align 2, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !32
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !66

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next69.lcssa = phi i64 [ %i.ap, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %indvars.iv.next69, %.lr.ph ]
  %i.ay = trunc nuw i64 %indvars.iv.next69.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.045.lcssa = phi i32 [ 0, %.preheader ], [ %i.ay, %._crit_edge.loopexit ] ; 2 uses
  %i.az = zext nneg i32 %.045.lcssa to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az ; 2 uses
  store i8 0, ptr %i.ba, align 1, !tbaa !32
  %i.bb = add nuw nsw i32 %.045.lcssa, 2
  %i.bc = getelementptr i8, ptr %i.ba, i64 1
  store i8 0, ptr %i.bc, align 1, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !41
  %i.bf = tail call i32 @wc_OidGetHash(i32 noundef %i.be) #9 ; 4 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph25.preheader.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bh = tail call i32 @wc_HashGetDigestSize(i32 noundef %i.bf) #9 ; 4 uses
  %i.bi = icmp ugt i32 %i.bh, 64
  br i1 %i.bi, label %.lr.ph25.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !43
  %i.bp = load ptr, ptr %0, align 8, !tbaa !15
  %i.bq = call i32 @wc_PKCS12_PBKDF_ex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %i.bb, ptr noundef %i.bk, i32 noundef %i.bm, i32 noundef %i.bo, i32 noundef %i.bh, i32 noundef %i.bf, i32 noundef 3, ptr noundef %i.bp) #9 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph25.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = load ptr, ptr %0, align 8, !tbaa !15
  %i.bt = call i32 @wc_HmacInit(ptr noundef nonnull %6, ptr noundef %i.bs, i32 noundef -2) #9 ; 2 uses
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.f, label %.lr.ph25.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.bu = call i32 @wc_HmacSetKey(ptr noundef nonnull %6, i32 noundef %i.bf, ptr noundef nonnull %i.b, i32 noundef %i.bh) #9 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bw = call i32 @wc_HmacUpdate(ptr noundef nonnull %6, ptr noundef nonnull %1, i32 noundef %2) #9 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.by = call i32 @wc_HmacFinal(ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.h, %bb.g
  %.1 = phi i32 [ %i.by, %bb.h ], [ %i.bw, %bb.g ], [ %i.bu, %bb.f ] ; 2 uses
  call void @wc_HmacFree(ptr noundef nonnull %6) #9
  %i.bz = icmp eq i32 %.1, 0
  %spec.select = select i1 %i.bz, i32 %i.bh, i32 %.1
  br label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.thread, %bb.c, %._crit_edge, %bb.b, %bb.e, %bb.d
  %.2 = phi i32 [ %spec.select, %.thread ], [ -175, %bb.b ], [ -173, %._crit_edge ], [ %i.bq, %bb.d ], [ %i.bt, %bb.e ], [ -173, %bb.c ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !tbaa !36
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph25.preheader.i, %bb.a
  %.047 = phi i32 [ -173, %bb.a ], [ %.2, %.lr.ph25.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret i32 %.047
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 1) i32 @wc_PKCS12_SetHeap(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @wc_PKCS12_GetHeap(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @GetAlgoId(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @InitDecodedCert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ParseCertRelative(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_CheckPrivateKeyCert(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @FreeDecodedCert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wc_PKCS12_encrypt_content(ptr %.0.val, ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef range(i32 -1, 6) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 2125886499, 2125886501) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca [6 x i8], align 1                 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = icmp eq i32 %9, 2125886500
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add nsw i32 %5, -1           ; 5 uses
  %i.d = icmp ult i32 %switch.tableidx, 5
  br i1 %i.d, label %switch.lookup, label %wc_PKCS12_get_enc_params.exit

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.wc_PKCS12_shroud_key.9, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep28 = getelementptr inbounds nuw i8, ptr @switch.table.wc_PKCS12_shroud_key.8, i64 %i.f
  %switch.load29 = load i8, ptr %switch.gep28, align 1
  %switch.ext30 = zext i8 %switch.load29 to i32   ; 2 uses
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep31 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.wc_PKCS12_shroud_key.7, i64 %i.g
  %switch.load32 = load i32, ptr %switch.gep31, align 4 ; 2 uses
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep33 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.wc_PKCS12_shroud_key, i64 %i.h
  %switch.load34 = load i32, ptr %switch.gep33, align 4 ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !37
  %i.i = call i32 @EncryptContent(ptr noundef null, i32 noundef %4, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %6, i32 noundef %7, i32 noundef %switch.ext, i32 noundef %switch.ext30, i32 noundef %switch.load32, ptr noundef null, i32 noundef 0, i32 noundef %8, i32 noundef %switch.load34, ptr noundef nonnull %0, ptr noundef %.0.val) #9 ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  %i.k = icmp ne i32 %i.i, -202
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %wc_PKCS12_get_enc_params.exit, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.l = call i32 @SetObjectId(i32 noundef 9, ptr noundef nonnull %i.b) #9
  %i.m = call i32 @SetMyVersion(i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 0) #9
  %i.n = call i32 @SetObjectId(i32 noundef 9, ptr noundef nonnull %i.b) #9
  %i.o = add i32 %i.n, 9
  %i.p = load i32, ptr %i.a, align 4, !tbaa !37
  %i.q = add i32 %i.o, %i.p                       ; 2 uses
  %i.r = call i32 @SetSequence(i32 noundef %i.q, ptr noundef nonnull %i.b) #9
  %i.s = add i32 %i.q, %i.m
  %i.t = add i32 %i.s, %i.r                       ; 3 uses
  %i.u = call i32 @SetSequence(i32 noundef %i.t, ptr noundef nonnull %i.b) #9
  %i.v = add i32 %i.t, %i.u                       ; 3 uses
  %i.w = call i32 @SetLength(i32 noundef %i.v, ptr noundef nonnull %i.b) #9
  %i.x = add i32 %i.l, 10
  %i.y = add i32 %i.x, %i.w
  %i.z = add i32 %i.y, %i.v                       ; 5 uses
  %i.aa = icmp eq ptr %1, null
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = call i32 @SetSequence(i32 noundef %i.z, ptr noundef nonnull %i.b) #9
  %i.ac = add i32 %i.ab, %i.z
  store i32 %i.ac, ptr %2, align 4, !tbaa !37
  br label %wc_PKCS12_get_enc_params.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %2, align 4, !tbaa !37
  %i.ae = call i32 @SetSequence(i32 noundef %i.z, ptr noundef nonnull %i.b) #9
  %i.af = add i32 %i.ae, %i.z
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %wc_PKCS12_get_enc_params.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = call i32 @SetSequence(i32 noundef %i.z, ptr noundef nonnull %1) #9 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = call i32 @SetObjectId(i32 noundef 9, ptr noundef nonnull %i.aj) #9
  %i.al = add i32 %i.ak, %i.ah                    ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.am, 9
  %i.ao = load i32, ptr %2, align 4, !tbaa !37
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %wc_PKCS12_get_enc_params.exit, label %bb.g

end_hunk_0
