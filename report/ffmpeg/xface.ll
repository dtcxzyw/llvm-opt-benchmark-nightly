Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xface?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ff_big_mul:bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 9 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i8 %1, 0
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %i.b, 546
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 104) #6
  tail call void @abort() #7
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  %i.g = sext i32 %i.b to i64                     ; 2 uses
  %i.h = add nsw i64 %i.g, 4
  %i.i = add i32 %i.b, -1
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = sub nsw i64 %i.h, %i.j
  %scevgep = getelementptr i8, ptr %0, i64 %i.k
  %i.l = add nsw i64 %i.g, 3
  %i.m = sub nsw i64 %i.l, %i.j
  %scevgep41 = getelementptr i8, ptr %0, i64 %i.m ; 2 uses
  %i.n = zext i32 %i.b to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep, ptr align 1 %scevgep41, i64 %i.n, i1 false), !tbaa !11
  store i8 0, ptr %scevgep41, align 1, !tbaa !11
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = zext i8 %1 to i16                        ; 5 uses
  %xtraiter = and i32 %i.b, 3                     ; 3 uses
  %i.q = icmp ult i32 %i.b, 4
  br i1 %i.q, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i32 %i.b, -4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.new
  %.036 = phi i16 [ 0, %.new ], [ %i.as, %bb.h ]
  %.135 = phi ptr [ %i.o, %.new ], [ %i.ar, %bb.h ] ; 6 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.h ]
  %i.r = load i8, ptr %.135, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i16
  %i.t = mul nuw i16 %i.s, %i.p
  %i.u = add nuw i16 %i.t, %.036                  ; 2 uses
  %i.v = trunc i16 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %.135, i64 1 ; 2 uses
  store i8 %i.v, ptr %.135, align 1, !tbaa !11
  %i.x = lshr i16 %i.u, 8
  %i.y = load i8, ptr %i.w, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i16
  %i.aa = mul nuw i16 %i.z, %i.p
  %i.ab = add nuw i16 %i.aa, %i.x                 ; 2 uses
  %i.ac = trunc i16 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.135, i64 2 ; 2 uses
  store i8 %i.ac, ptr %i.w, align 1, !tbaa !11
  %i.ae = lshr i16 %i.ab, 8
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i16
  %i.ah = mul nuw i16 %i.ag, %i.p
  %i.ai = add nuw i16 %i.ah, %i.ae                ; 2 uses
  %i.aj = trunc i16 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %.135, i64 3 ; 2 uses
  store i8 %i.aj, ptr %i.ad, align 1, !tbaa !11
  %i.al = lshr i16 %i.ai, 8
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i16
  %i.ao = mul nuw i16 %i.an, %i.p
  %i.ap = add nuw i16 %i.ao, %i.al                ; 2 uses
  %i.aq = trunc i16 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.135, i64 4 ; 3 uses
  store i8 %i.aq, ptr %i.ak, align 1, !tbaa !11
  %i.as = lshr i16 %i.ap, 8                       ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.h, !llvm.loop !15

.unr-lcssa:                                       ; preds = %bb.h
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.g
  %.036.epil.init = phi i16 [ 0, %bb.g ], [ %i.as, %.unr-lcssa ]
  %.135.epil.init = phi ptr [ %i.o, %bb.g ], [ %i.ar, %.unr-lcssa ]
  %lcmp.mod51 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.036.epil = phi i16 [ %.036.epil.init, %.epil.preheader ], [ %i.az, %bb.i ]
  %.135.epil = phi ptr [ %.135.epil.init, %.epil.preheader ], [ %i.ay, %bb.i ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.at = load i8, ptr %.135.epil, align 1, !tbaa !11
  %i.au = zext i8 %i.at to i16
  %i.av = mul nuw i16 %i.au, %i.p
  %i.aw = add nuw i16 %i.av, %.036.epil           ; 2 uses
  %i.ax = trunc i16 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.135.epil, i64 1 ; 2 uses
  store i8 %i.ax, ptr %.135.epil, align 1, !tbaa !11
  %i.az = lshr i16 %i.aw, 8                       ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.i, !llvm.loop !16

.epilog-lcssa:                                    ; preds = %bb.i, %.unr-lcssa
  %.lcssa48 = phi ptr [ %i.ar, %.unr-lcssa ], [ %i.ay, %bb.i ]
  %.lcssa = phi i16 [ %i.as, %.unr-lcssa ], [ %i.az, %bb.i ] ; 2 uses
  %.not32 = icmp eq i16 %.lcssa, 0
  br i1 %.not32, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.epilog-lcssa
  %i.ba = load i32, ptr %0, align 4, !tbaa !10    ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 546
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 123) #6
  tail call void @abort() #7
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bc = add nsw i32 %i.ba, 1
  store i32 %i.bc, ptr %0, align 4, !tbaa !10
  %i.bd = trunc nuw i16 %.lcssa to i8
  store i8 %i.bd, ptr %.lcssa48, align 1, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa, %bb.l, %bb.a, %bb.b, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_xface_generate_face(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.x
  %indvars.iv140 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next141, %bb.x ] ; 24 uses
  %i.a = mul nuw nsw i64 %indvars.iv140, 48       ; 3 uses
  %i.b = add nsw i64 %indvars.iv140, -2           ; 5 uses
  %i.c = icmp samesign ugt i64 %indvars.iv140, 2
  %i.d = icmp samesign ugt i64 %indvars.iv140, 1
  %.not = icmp eq i64 %indvars.iv140, 0
  %i.e = mul nuw nsw i64 %i.b, 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = mul i64 %indvars.iv140, 48
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.k = icmp samesign ugt i64 %indvars.iv140, 2
  %i.l = icmp samesign ugt i64 %indvars.iv140, 1
  %.not165 = icmp eq i64 %indvars.iv140, 0
  %i.m = mul nuw nsw i64 %i.b, 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = mul i64 %indvars.iv140, 48
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.s = icmp samesign ugt i64 %indvars.iv140, 2
  %i.t = icmp samesign ugt i64 %indvars.iv140, 1
  %i.u = mul i64 %i.b, 48
  %i.v = and i64 %i.u, 4294967280
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = mul i64 %indvars.iv140, 48
  %i.y = add i64 %i.x, 4294967248
  %i.z = and i64 %i.y, 4294967280
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = icmp samesign ugt i64 %indvars.iv140, 2
  %i.ac = icmp samesign ugt i64 %indvars.iv140, 1
  %i.ad = mul i64 %i.b, 48
  %i.ae = and i64 %i.ad, 4294967280
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = mul i64 %indvars.iv140, 48
  %i.ah = add i64 %i.ag, 4294967248
  %i.ai = and i64 %i.ah, 4294967280
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = icmp samesign ugt i64 %indvars.iv140, 2
  %i.al = icmp samesign ugt i64 %indvars.iv140, 1
  %i.am = mul i64 %i.b, 48
  %i.an = and i64 %i.am, 4294967280
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ap = mul i64 %indvars.iv140, 48
  %i.aq = add i64 %i.ap, 4294967248
  %i.ar = and i64 %i.aq, 4294967280
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.au = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.av = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.aw = trunc nuw nsw i64 %indvars.iv140 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.w
  %indvars.iv137 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next138189192, %bb.w ] ; 13 uses
  %i.ax = add nsw i64 %indvars.iv137, -2          ; 4 uses
  %i.ay = icmp samesign ult i64 %indvars.iv137, 3
  br i1 %i.ay, label %.split101.us, label %.split

.split:                                           ; preds = %bb.b
  %2 = icmp ult i64 %i.ax, 49
  br i1 %2, label %.split.split.split.us.preheader, label %.split.split.split.preheader.2

.split.split.split.us.preheader:                  ; preds = %.split
  br i1 %i.c, label %.split.split.split.us.1.thread, label %.split.split.split.us.1

.split.split.split.us.1.thread:                   ; preds = %.split.split.split.us.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 1
  br label %.split.split.split.us.2.thread

.split.split.split.us.1:                          ; preds = %.split.split.split.us.preheader
  br i1 %i.d, label %.split.split.split.us.2.thread, label %.split.split.split.us.2

.split.split.split.us.2.thread:                   ; preds = %.split.split.split.us.1, %.split.split.split.us.1.thread
  %.2.us111167 = phi i32 [ %i.bc, %.split.split.split.us.1.thread ], [ 0, %.split.split.split.us.1 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %.2.us111167, %i.bf
  %i.bh = shl nuw nsw i32 %i.bg, 1
  br label %bb.c

.split.split.split.us.2:                          ; preds = %.split.split.split.us.1
  br i1 %.not, label %.split.1, label %bb.c

bb.c:                                             ; preds = %.split.split.split.us.2.thread, %.split.split.split.us.2
  %.2.us111.1170 = phi i32 [ %i.bh, %.split.split.split.us.2.thread ], [ 0, %.split.split.split.us.2 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ax
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nuw nsw i32 %.2.us111.1170, %i.bk
  br label %.split.1

.split101.us:                                     ; preds = %bb.b
  switch i64 %indvars.iv137, label %.split.split.split.preheader.2 [
    i64 2, label %.split.split.split.us.preheader.1
    i64 0, label %.split.split.split.preheader.3
  ]

.split.1:                                         ; preds = %.split.split.split.us.2, %bb.c
  %.us-phi.ph = phi i32 [ %i.bl, %bb.c ], [ 0, %.split.split.split.us.2 ] ; 2 uses
  %i.bm = add nsw i64 %indvars.iv137, -1
  %3 = icmp samesign ult i64 %indvars.iv137, 50
  br i1 %3, label %.split.split.split.us.preheader.1, label %.split.split.split.preheader.2

.split.split.split.us.preheader.1:                ; preds = %.split101.us, %.split.1
  %.us-phi172174 = phi i32 [ %.us-phi.ph, %.split.1 ], [ 0, %.split101.us ] ; 4 uses
  %4 = phi i64 [ %i.bm, %.split.1 ], [ 1, %.split101.us ] ; 3 uses
  br i1 %i.k, label %.split.split.split.us.1.1.thread, label %.split.split.split.us.1.1

.split.split.split.us.1.1.thread:                 ; preds = %.split.split.split.us.preheader.1
  %i.bn = shl nuw nsw i32 %.us-phi172174, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 %4
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bn, %i.bq
  br label %.split.split.split.us.2.1.thread

.split.split.split.us.1.1:                        ; preds = %.split.split.split.us.preheader.1
  br i1 %i.l, label %.split.split.split.us.2.1.thread, label %.split.split.split.us.2.1

.split.split.split.us.2.1.thread:                 ; preds = %.split.split.split.us.1.1, %.split.split.split.us.1.1.thread
  %.2.us111.1130179 = phi i32 [ %i.br, %.split.split.split.us.1.1.thread ], [ %.us-phi172174, %.split.split.split.us.1.1 ]
  %i.bs = shl nuw nsw i32 %.2.us111.1130179, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 %4
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bs, %i.bv
  br label %bb.d

.split.split.split.us.2.1:                        ; preds = %.split.split.split.us.1.1
  br i1 %.not165, label %.split.split.split.1.3.thread195, label %bb.d

bb.d:                                             ; preds = %.split.split.split.us.2.1.thread, %.split.split.split.us.2.1
  %.2.us111.1.1182 = phi i32 [ %i.bw, %.split.split.split.us.2.1.thread ], [ %.us-phi172174, %.split.split.split.us.2.1 ]
  %i.bx = shl nuw nsw i32 %.2.us111.1.1182, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 %4
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.bx, %i.ca
  br label %.split.split.split.preheader.2

.split.split.split.preheader.2:                   ; preds = %.split101.us, %.split, %.split.1, %bb.d
  %.us-phi.1184 = phi i32 [ 0, %.split101.us ], [ 0, %.split ], [ %i.cb, %bb.d ], [ %.us-phi.ph, %.split.1 ] ; 3 uses
  br i1 %i.s, label %.split.split.split.1.2.thread, label %.split.split.split.1.2

.split.split.split.1.2.thread:                    ; preds = %.split.split.split.preheader.2
  %i.cc = shl nuw nsw i32 %.us-phi.1184, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv137
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cc, %i.cf
  br label %bb.e

.split.split.split.1.2:                           ; preds = %.split.split.split.preheader.2
  br i1 %i.t, label %bb.e, label %.split.split.split.1.3.thread195

.split.split.split.1.3.thread195:                 ; preds = %.split.split.split.us.2.1, %.split.split.split.1.2
  %.2.2136203 = phi i32 [ %.us-phi.1184, %.split.split.split.1.2 ], [ %.us-phi172174, %.split.split.split.us.2.1 ]
  %indvars.iv.next138188 = add nuw nsw i64 %indvars.iv137, 1
  br label %.split.4

bb.e:                                             ; preds = %.split.split.split.1.2.thread, %.split.split.split.1.2
  %.2.2136186 = phi i32 [ %i.cg, %.split.split.split.1.2.thread ], [ %.us-phi.1184, %.split.split.split.1.2 ]
  %i.ch = shl nuw nsw i32 %.2.2136186, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv137
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ch, %i.ck
  br label %.split.split.split.preheader.3

.split.split.split.preheader.3:                   ; preds = %.split101.us, %bb.e
  %.us-phi.2 = phi i32 [ 0, %.split101.us ], [ %i.cl, %bb.e ] ; 3 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 4 uses
  br i1 %i.ab, label %.split.split.split.1.3.thread, label %.split.split.split.1.3

.split.split.split.1.3.thread:                    ; preds = %.split.split.split.preheader.3
  %i.cm = shl nuw nsw i32 %.us-phi.2, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next138
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cm, %i.cp
  br label %bb.f

.split.split.split.1.3:                           ; preds = %.split.split.split.preheader.3
  br i1 %i.ac, label %bb.f, label %.split.4

bb.f:                                             ; preds = %.split.split.split.1.3.thread, %.split.split.split.1.3
  %.2.3194 = phi i32 [ %i.cq, %.split.split.split.1.3.thread ], [ %.us-phi.2, %.split.split.split.1.3 ]
  %i.cr = shl nuw nsw i32 %.2.3194, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next138
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.cr, %i.cu
  br label %.split.4

.split.4:                                         ; preds = %.split.split.split.1.3, %bb.f, %.split.split.split.1.3.thread195
  %indvars.iv.next138189192 = phi i64 [ %indvars.iv.next138, %bb.f ], [ %indvars.iv.next138, %.split.split.split.1.3 ], [ %indvars.iv.next138188, %.split.split.split.1.3.thread195 ] ; 2 uses
  %.2.1.3 = phi i32 [ %i.cv, %bb.f ], [ %.us-phi.2, %.split.split.split.1.3 ], [ %.2.2136203, %.split.split.split.1.3.thread195 ] ; 4 uses
  %i.cw = add nuw nsw i64 %indvars.iv137, 2       ; 2 uses
  %i.cx = icmp samesign ult i64 %indvars.iv137, 47
  br i1 %i.cx, label %.split.split.split.preheader.4, label %.split101.us.4

.split.split.split.preheader.4:                   ; preds = %.split.4
  br i1 %i.ak, label %.split.split.split.1.4.thread, label %.split.split.split.1.4

.split.split.split.1.4.thread:                    ; preds = %.split.split.split.preheader.4
  %i.cy = shl nuw nsw i32 %.2.1.3, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cw
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !11
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %i.cy, %i.db
  br label %bb.g

.split.split.split.1.4:                           ; preds = %.split.split.split.preheader.4
  br i1 %i.al, label %bb.g, label %.split101.us.4

bb.g:                                             ; preds = %.split.split.split.1.4.thread, %.split.split.split.1.4
  %.2.4199 = phi i32 [ %i.dc, %.split.split.split.1.4.thread ], [ %.2.1.3, %.split.split.split.1.4 ]
  %i.dd = shl nuw nsw i32 %.2.4199, 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cw
  %i.df = load i8, ptr %i.de, align 1, !tbaa !11
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dd, %i.dg
  br label %.split101.us.4

.split101.us.4:                                   ; preds = %bb.g, %.split.split.split.1.4, %.split.4
  %.us-phi.4 = phi i32 [ %.2.1.3, %.split.4 ], [ %i.dh, %bb.g ], [ %.2.1.3, %.split.split.split.1.4 ] ; 18 uses
  %i.di = add nuw nsw i64 %indvars.iv137, %i.a    ; 11 uses
  %i.dj = trunc nuw nsw i64 %indvars.iv137 to i32
  switch i32 %i.dj, label %bb.s [
    i32 1, label %bb.h
    i32 2, label %bb.k
    i32 47, label %bb.o
  ]

bb.h:                                             ; preds = %.split101.us.4
  switch i32 %i.av, label %bb.j [
    i32 1, label %bb.w
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.dk = and i32 %.us-phi.4, 7
  %i.dl = xor i32 %i.dk, 7
  %i.dm = lshr i32 23, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !11
  %i.dp = trunc nuw nsw i32 %i.dm to i8
  %i.dq = and i8 %i.dp, 1
  %i.dr = xor i8 %i.do, %i.dq
  store i8 %i.dr, ptr %i.dn, align 1, !tbaa !11
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.ds = lshr i32 %.us-phi.4, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @g_20, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !11
  %i.dw = zext i8 %i.dv to i32
  %i.dx = and i32 %.us-phi.4, 7
  %i.dy = xor i32 %i.dx, 7
  %i.dz = lshr i32 %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11
  %i.ec = trunc nuw i32 %i.dz to i8
  %i.ed = and i8 %i.ec, 1
  %i.ee = xor i8 %i.ed, %i.eb
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !11
  br label %bb.w

bb.k:                                             ; preds = %.split101.us.4
  switch i32 %i.au, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ef = and i32 %.us-phi.4, 7
  %i.eg = icmp eq i32 %i.ef, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !11
  %i.ej = zext i1 %i.eg to i8
  %i.ek = xor i8 %i.ei, %i.ej
  store i8 %i.ek, ptr %i.eh, align 1, !tbaa !11
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.el = lshr i32 %.us-phi.4, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @g_11, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !11
  %i.ep = zext i8 %i.eo to i32
  %i.eq = and i32 %.us-phi.4, 7
  %i.er = xor i32 %i.eq, 7
  %i.es = lshr i32 %i.ep, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !11
  %i.ev = trunc nuw i32 %i.es to i8
  %i.ew = and i8 %i.ev, 1
  %i.ex = xor i8 %i.ew, %i.eu
  store i8 %i.ex, ptr %i.et, align 1, !tbaa !11
  br label %bb.w

bb.n:                                             ; preds = %bb.k
  %i.ey = lshr i32 %.us-phi.4, 3
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @g_10, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fc = zext i8 %i.fb to i32
  %i.fd = and i32 %.us-phi.4, 7
  %i.fe = xor i32 %i.fd, 7
  %i.ff = lshr i32 %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !11
  %i.fi = trunc nuw i32 %i.ff to i8
  %i.fj = and i8 %i.fi, 1
  %i.fk = xor i8 %i.fj, %i.fh
  store i8 %i.fk, ptr %i.fg, align 1, !tbaa !11
  br label %bb.w

bb.o:                                             ; preds = %.split101.us.4
  switch i32 %i.at, label %bb.r [
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.fl = and i32 %.us-phi.4, 7
  %i.fm = icmp eq i32 %i.fl, 3
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !11
  %i.fp = zext i1 %i.fm to i8
  %i.fq = xor i8 %i.fo, %i.fp
  store i8 %i.fq, ptr %i.fn, align 1, !tbaa !11
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.fr = lshr i32 %.us-phi.4, 3
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @g_41, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !11
  %i.fv = zext i8 %i.fu to i32
  %i.fw = and i32 %.us-phi.4, 7
  %i.fx = xor i32 %i.fw, 7
  %i.fy = lshr i32 %i.fv, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !11
  %i.gb = trunc nuw i32 %i.fy to i8
  %i.gc = and i8 %i.gb, 1
  %i.gd = xor i8 %i.gc, %i.ga
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !11
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.ge = lshr i32 %.us-phi.4, 3
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @g_40, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !11
  %i.gi = zext i8 %i.gh to i32
  %i.gj = and i32 %.us-phi.4, 7
  %i.gk = xor i32 %i.gj, 7
  %i.gl = lshr i32 %i.gi, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 2 uses
end_hunk_0
