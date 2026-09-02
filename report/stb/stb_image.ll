Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__jpeg_info:bb.a
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 65536) i32 @stbi__bitreverse16(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %trunc = trunc i32 %0 to i16
  %rev = tail call i16 @llvm.bitreverse.i16(i16 %trunc)
  %i.a = zext i16 %rev to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 65536) i32 @stbi__bit_reverse(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %trunc.i = trunc i32 %0 to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.a = zext i16 %rev.i to i32
  %i.b = sub nsw i32 16, %1
  %i.c = lshr i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__zbuild_huffman(ptr nofree noundef captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #22 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !37
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !40
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !428

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !40
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !429

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70.sink.split, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8, !tbaa !40
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr160 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr160, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4, !tbaa !40
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !74
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !74
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !40 ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !40
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c, !llvm.loop !430

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4, !tbaa !40
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !37  ; 6 uses
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !40 ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !74
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !74
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %3 = trunc i64 %indvars.iv94 to i16
  %.tr = zext i8 %i.ca to i16
  %4 = shl i16 %.tr, 9
  %5 = or i16 %4, %3
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.bx, i64 %i.cn
  store i8 %i.ca, ptr %i.co, align 1, !tbaa !37
  %i.cp = trunc i64 %indvars.iv94 to i16
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cn
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !74
  %i.cr = icmp ult i8 %i.ca, 10
  br i1 %i.cr, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cs = zext i16 %rev.i.i to i32
  %i.ct = sub nuw nsw i32 16, %i.cb
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = shl nuw nsw i32 1, %i.cb
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = zext nneg i32 %i.cv to i64
  br label %bb.h

bb.h:                                             ; preds = %iter.check, %bb.h
  %indvars.iv91 = phi i64 [ %i.cw, %iter.check ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %5, ptr %i.cy, align 2, !tbaa !74
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.cx ; 2 uses
  %i.cz = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.cz, label %bb.h, label %.loopexit, !llvm.loop !431

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.da = add nsw i32 %i.ce, 1
  store i32 %i.da, ptr %i.cd, align 4, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f, !llvm.loop !432

.loopexit70.sink.split:                           ; preds = %bb.c, %._crit_edge, %._crit_edge.thread, %bb.b
  %.str.39.sink = phi ptr [ @.str.38, %._crit_edge ], [ @.str.38, %bb.b ], [ @.str.38, %._crit_edge.thread ], [ @.str.39, %bb.c ]
  %i.db = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr %.str.39.sink, ptr %i.db, align 8, !tbaa !39
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.i, %.loopexit70.sink.split, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %.loopexit70.sink.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %.065
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbi__zeof(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #25 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = icmp uge ptr %i.a, %i.c
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i8 @stbi__zget8(ptr nofree noundef captures(none) %0) local_unnamed_addr #26 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %.not2 = icmp ult ptr %i.a, %i.c
  br i1 %.not2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.d, ptr %0, align 8, !tbaa !133
  %i.e = load i8, ptr %i.a, align 1, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i8 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi__fill_bits(ptr nofree noundef captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !135
  %.promoted9 = load i32, ptr %i.b, align 8, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %stbi__zget8.exit, %bb.a
  %i.d = phi i32 [ %i.o, %stbi__zget8.exit ], [ %.promoted9, %bb.a ] ; 4 uses
  %i.e = phi i32 [ %i.n, %stbi__zget8.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.highbits = lshr i32 %i.e, %i.d
  %.not = icmp eq i32 %.highbits, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !134
  store ptr %i.f, ptr %0, align 8, !tbaa !133
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !134
  %.not2.i = icmp ult ptr %i.g, %i.h
  br i1 %.not2.i, label %bb.e, label %stbi__zget8.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.i, ptr %0, align 8, !tbaa !133
  %i.j = load i8, ptr %i.g, align 1, !tbaa !37
  %i.k = zext i8 %i.j to i32
  br label %stbi__zget8.exit

stbi__zget8.exit:                                 ; preds = %bb.d, %bb.e
  %i.l = phi i32 [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.m = shl i32 %i.l, %i.d
  %i.n = or i32 %i.m, %i.e                        ; 2 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !135
  %i.o = add nsw i32 %i.d, 8                      ; 2 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !136
  %i.p = icmp slt i32 %i.d, 17
  br i1 %i.p, label %bb.b, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %stbi__zget8.exit, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @stbi__zreceive(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = icmp slt i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted.i = load i32, ptr %i.d, align 8, !tbaa !135 ; 2 uses
  br i1 %i.c, label %bb.b, label %stbi__fill_bits.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %stbi__zget8.exit.i, %bb.b
  %i.f = phi i32 [ %i.q, %stbi__zget8.exit.i ], [ %i.b, %bb.b ] ; 5 uses
  %i.g = phi i32 [ %i.p, %stbi__zget8.exit.i ], [ %.promoted.i, %bb.b ] ; 3 uses
  %.highbits.i = lshr i32 %i.g, %i.f
  %.not.i = icmp eq i32 %.highbits.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !134
  store ptr %i.h, ptr %0, align 8, !tbaa !133
  br label %stbi__fill_bits.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !134
  %.not2.i.i = icmp ult ptr %i.i, %i.j
  br i1 %.not2.i.i, label %bb.f, label %stbi__zget8.exit.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.k, ptr %0, align 8, !tbaa !133
  %i.l = load i8, ptr %i.i, align 1, !tbaa !37
  %i.m = zext i8 %i.l to i32
  br label %stbi__zget8.exit.i

stbi__zget8.exit.i:                               ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.o = shl i32 %i.n, %i.f
  %i.p = or i32 %i.o, %i.g                        ; 3 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !135
  %i.q = add nsw i32 %i.f, 8                      ; 3 uses
  store i32 %i.q, ptr %i.a, align 8, !tbaa !136
  %i.r = icmp slt i32 %i.f, 17
  br i1 %i.r, label %bb.c, label %stbi__fill_bits.exit, !llvm.loop !10

stbi__fill_bits.exit:                             ; preds = %stbi__zget8.exit.i, %bb.a, %bb.d
  %i.s = phi i32 [ %i.b, %bb.a ], [ %i.f, %bb.d ], [ %i.q, %stbi__zget8.exit.i ]
  %i.t = phi i32 [ %.promoted.i, %bb.a ], [ %i.g, %bb.d ], [ %i.p, %stbi__zget8.exit.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %notmask = shl nsw i32 -1, %1
  %i.v = xor i32 %notmask, -1
  %i.w = and i32 %i.t, %i.v
  %i.x = lshr i32 %i.t, %1
  store i32 %i.x, ptr %i.u, align 8, !tbaa !135
  %i.y = sub nsw i32 %i.s, %1
  store i32 %i.y, ptr %i.a, align 8, !tbaa !136
  ret i32 %i.w
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1, 65536) i32 @stbi__zhuffman_decode_slowpath(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %trunc.i.i = trunc i32 %i.b to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.c = zext i16 %rev.i.i to i32                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1056
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 10, %bb.a ] ; 7 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40
  %i.g = icmp sgt i32 %i.f, %i.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.g, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.i = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub nuw nsw i32 16, %i.h
  %i.k = lshr i32 %i.c, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i16, ptr %i.m, align 2, !tbaa !74
end_hunk_0
begin_hunk_1_@stbi__expand_png_palette:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu
  %i.bw = load <4 x i8>, ptr %i.bv, align 1, !tbaa !37
  store <4 x i8> %i.bw, ptr %i.bp, align 1, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %.14651, i64 16 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit69.unr-lcssa, label %.lr.ph, !llvm.loop !502

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph55
  %lcmp.mod73.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod73.not, label %.loopexit, label %.lr.ph55.epil.preheader

.lr.ph55.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55.preheader
  %indvars.iv59.epil.init = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next60.1, %.loopexit.loopexit.unr-lcssa ]
  %.04553.epil.init = phi ptr [ %i.m, %.lr.ph55.preheader ], [ %i.as, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59.epil.init
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !37
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !37
  store i8 %i.cd, ptr %.04553.epil.init, align 1, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !37
  %i.cj = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !37
  br label %.loopexit

.loopexit.loopexit69.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit69.unr-lcssa ]
  %.14651.epil.init = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.bx, %.loopexit.loopexit69.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.14651.epil = phi ptr [ %.14651.epil.init, %.lr.ph.epil.preheader ], [ %i.cq, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !37
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.cp = load <4 x i8>, ptr %i.co, align 1, !tbaa !37
  store <4 x i8> %i.cp, ptr %.14651.epil, align 1, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %.14651.epil, i64 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !503

.loopexit:                                        ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.epil, %.lr.ph55.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader49, %.preheader
  tail call void @free(ptr noundef %i.g) #37
  store ptr %i.m, ptr %i.f, align 8, !tbaa !142
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %stbi__malloc_mad2.exit.thread
  %.0 = phi i32 [ 0, %stbi__malloc_mad2.exit.thread ], [ 1, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_unpremultiply_on_load(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @stbi__unpremultiply_on_load_global, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_convert_iphone_png_to_rgb(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @stbi__de_iphone_flag_global, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_unpremultiply_on_load_thread(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_local)
  store i32 %0, ptr %i.a, align 4, !tbaa !40
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_set)
  store i32 1, ptr %i.b, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_convert_iphone_png_to_rgb_thread(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__de_iphone_flag_local)
  store i32 %0, ptr %i.a, align 4, !tbaa !40
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__de_iphone_flag_set)
  store i32 1, ptr %i.b, align 4, !tbaa !40
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi__de_iphone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !143
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not71 = icmp eq i32 %i.e, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader
  %xtraiter85 = and i32 %i.e, 3                   ; 3 uses
  %i.k = icmp ult i32 %i.e, 4
  br i1 %i.k, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter89 = and i32 %i.e, -4
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %.04666 = phi ptr [ %i.g, %.lr.ph68.preheader.new ], [ %i.aa, %.lr.ph68 ] ; 10 uses
  %niter90 = phi i32 [ 0, %.lr.ph68.preheader.new ], [ %niter90.next.3, %.lr.ph68 ]
  %i.l = load i8, ptr %.04666, align 1, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %.04666, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !37
  store i8 %i.n, ptr %.04666, align 1, !tbaa !37
  store i8 %i.l, ptr %i.m, align 1, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %.04666, i64 3 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %.04666, i64 5 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37
  store i8 %i.r, ptr %i.o, align 1, !tbaa !37
  store i8 %i.p, ptr %i.q, align 1, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %.04666, i64 6 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %.04666, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37
  store i8 %i.v, ptr %i.s, align 1, !tbaa !37
  store i8 %i.t, ptr %i.u, align 1, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %.04666, i64 9 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %.04666, i64 11 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  store i8 %i.z, ptr %i.w, align 1, !tbaa !37
  store i8 %i.x, ptr %i.y, align 1, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %.04666, i64 12 ; 2 uses
  %niter90.next.3 = add i32 %niter90, 4           ; 2 uses
  %niter90.ncmp.3 = icmp eq i32 %niter90.next.3, %unroll_iter89
  br i1 %niter90.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !504

bb.b:                                             ; preds = %bb.a
  %i.ab = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_set)
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !40
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_local)
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %.not51 = icmp eq i32 %i.ae, 0
  br i1 %.not51, label %bb.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.af = load i32, ptr @stbi__unpremultiply_on_load_global, align 4, !tbaa !40
  %.not50 = icmp eq i32 %i.af, 0
  br i1 %.not50, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not69 = icmp eq i32 %i.e, 0
  br i1 %.not69, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.162 = phi i32 [ %i.ax, %bb.h ], [ 0, %bb.e ]
  %.14761 = phi ptr [ %i.aw, %bb.h ], [ %i.g, %bb.e ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.14761, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37  ; 3 uses
  %i.ai = load i8, ptr %.14761, align 1, !tbaa !37 ; 2 uses
  %.not52 = icmp eq i8 %i.ah, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aj = lshr i8 %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.14761, i64 2 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  %1 = zext i8 %i.al to i16
  %2 = mul nuw i16 %1, 255
  %3 = zext nneg i8 %i.aj to i16                  ; 3 uses
  %.lhs.trunc = add nuw i16 %2, %3
  %.rhs.trunc = zext i8 %i.ah to i16              ; 3 uses
  %i.am = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.an = trunc i16 %i.am to i8
  store i8 %i.an, ptr %.14761, align 1, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %.14761, i64 1 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %4 = zext i8 %i.ap to i16
  %5 = mul nuw i16 %4, 255
  %.lhs.trunc53 = add nuw i16 %5, %3
  %i.aq = udiv i16 %.lhs.trunc53, %.rhs.trunc
  %i.ar = trunc i16 %i.aq to i8
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !37
  %6 = zext i8 %i.ai to i16
  %7 = mul nuw i16 %6, 255
  %.lhs.trunc56 = add nuw i16 %7, %3
  %i.as = udiv i16 %.lhs.trunc56, %.rhs.trunc
  %i.at = trunc i16 %i.as to i8
  store i8 %i.at, ptr %i.ak, align 1, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.14761, i64 2 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  store i8 %i.av, ptr %.14761, align 1, !tbaa !37
  store i8 %i.ai, ptr %i.au, align 1, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.14761, i64 4
  %i.ax = add nuw i32 %.162, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !505

bb.i:                                             ; preds = %bb.d, %bb.c
  %.not70 = icmp eq i32 %i.e, 0
  br i1 %.not70, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.i
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.ay = icmp ult i32 %i.e, 4
  br i1 %i.ay, label %.lr.ph65.epil.preheader, label %.lr.ph65.preheader.new

.lr.ph65.preheader.new:                           ; preds = %.lr.ph65.preheader
  %unroll_iter = and i32 %i.e, -4
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65, %.lr.ph65.preheader.new
  %.24863 = phi ptr [ %i.g, %.lr.ph65.preheader.new ], [ %i.bo, %.lr.ph65 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph65.preheader.new ], [ %niter.next.3, %.lr.ph65 ]
  %i.az = load i8, ptr %.24863, align 1, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %.24863, i64 2 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  store i8 %i.bb, ptr %.24863, align 1, !tbaa !37
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %.24863, i64 4 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %.24863, i64 6 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !37
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %.24863, i64 8 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %.24863, i64 10 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !37
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !37
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %.24863, i64 12 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %.24863, i64 14 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !37
  store i8 %i.bn, ptr %i.bk, align 1, !tbaa !37
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %.24863, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit82.unr-lcssa, label %.lr.ph65, !llvm.loop !506

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph68
  %lcmp.mod87.not = icmp eq i32 %xtraiter85, 0
  br i1 %lcmp.mod87.not, label %.loopexit, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.04666.epil.init = phi ptr [ %i.g, %.lr.ph68.preheader ], [ %i.aa, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod88 = icmp ne i32 %xtraiter85, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph68.epil

.lr.ph68.epil:                                    ; preds = %.lr.ph68.epil, %.lr.ph68.epil.preheader
  %.04666.epil = phi ptr [ %i.bs, %.lr.ph68.epil ], [ %.04666.epil.init, %.lr.ph68.epil.preheader ] ; 4 uses
  %epil.iter86 = phi i32 [ %epil.iter86.next, %.lr.ph68.epil ], [ 0, %.lr.ph68.epil.preheader ]
  %i.bp = load i8, ptr %.04666.epil, align 1, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %.04666.epil, i64 2 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !37
  store i8 %i.br, ptr %.04666.epil, align 1, !tbaa !37
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %.04666.epil, i64 3
  %epil.iter86.next = add i32 %epil.iter86, 1     ; 2 uses
  %epil.iter86.cmp.not = icmp eq i32 %epil.iter86.next, %xtraiter85
  br i1 %epil.iter86.cmp.not, label %.loopexit, label %.lr.ph68.epil, !llvm.loop !507

.loopexit.loopexit82.unr-lcssa:                   ; preds = %.lr.ph65
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph65.epil.preheader

.lr.ph65.epil.preheader:                          ; preds = %.loopexit.loopexit82.unr-lcssa, %.lr.ph65.preheader
  %.24863.epil.init = phi ptr [ %i.g, %.lr.ph65.preheader ], [ %i.bo, %.loopexit.loopexit82.unr-lcssa ]
  %lcmp.mod84 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph65.epil

.lr.ph65.epil:                                    ; preds = %.lr.ph65.epil, %.lr.ph65.epil.preheader
  %.24863.epil = phi ptr [ %i.bw, %.lr.ph65.epil ], [ %.24863.epil.init, %.lr.ph65.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph65.epil ], [ 0, %.lr.ph65.epil.preheader ]
  %i.bt = load i8, ptr %.24863.epil, align 1, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %.24863.epil, i64 2 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37
  store i8 %i.bv, ptr %.24863.epil, align 1, !tbaa !37
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %.24863.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph65.epil, !llvm.loop !508

.loopexit:                                        ; preds = %bb.h, %.loopexit.loopexit82.unr-lcssa, %.lr.ph65.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph68.epil, %bb.e, %bb.i, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__parse_png_file(ptr nofree noundef captures(none) initializes((8, 32)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.stbi__zbuf, align 8         ; 10 uses
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [3 x i16], align 2                ; 4 uses
  %i.d = alloca [25 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.e = load ptr, ptr %0, align 8, !tbaa !44     ; 35 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 61 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 25 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 56 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 57 ; 40 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !29 ; 3 uses
  %.pre7.i = load ptr, ptr %i.i, align 8, !tbaa !31 ; 2 uses
  %i.r = icmp ult ptr %.pre.i, %.pre7.i
  br i1 %i.r, label %bb.ar, label %bb.as

bb.b:                                             ; preds = %stbi__get8.exit.i
  %i.s = icmp ult ptr %i.gj, %i.gi
  br i1 %i.s, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.j, align 8, !tbaa !26
  %.not.i.i.1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.1, label %stbi__check_png_header.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.w = load i32, ptr %i.n, align 4, !tbaa !35
  %i.x = tail call i32 %i.u(ptr noundef %i.v, ptr noundef nonnull %i.m, i32 noundef %i.w) #37, !inline_history !51 ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !27
  %i.af = add nsw i32 %i.ae, %i.ad
  store i32 %i.af, ptr %i.p, align 8, !tbaa !27
  %i.ag = icmp eq i32 %i.x, 0
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = sext i32 %i.x to i64
  %i.ai = getelementptr inbounds i8, ptr %i.m, i64 %i.ah
  %.pre.i.i.1 = load i8, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i.1

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !26
  store i8 0, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i.1

stbi__refill_buffer.exit.i.i.1:                   ; preds = %bb.f, %bb.e
  %i.aj = phi i8 [ 0, %bb.f ], [ %.pre.i.i.1, %bb.e ]
  %.sink.i.i.i.1 = phi ptr [ %i.q, %bb.f ], [ %i.ai, %bb.e ] ; 2 uses
  store ptr %.sink.i.i.i.1, ptr %i.i, align 8, !tbaa !31
  store ptr %i.q, ptr %i.h, align 8, !tbaa !29
  br label %stbi__get8.exit.i.1

bb.g:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !29
  %i.al = load i8, ptr %i.gj, align 1, !tbaa !37
  br label %stbi__get8.exit.i.1

stbi__get8.exit.i.1:                              ; preds = %bb.g, %stbi__refill_buffer.exit.i.i.1
  %i.am = phi ptr [ %i.gi, %bb.g ], [ %.sink.i.i.i.1, %stbi__refill_buffer.exit.i.i.1 ] ; 2 uses
  %i.an = phi ptr [ %i.ak, %bb.g ], [ %i.q, %stbi__refill_buffer.exit.i.i.1 ] ; 3 uses
  %.0.i.i.1 = phi i8 [ %i.al, %bb.g ], [ %i.aj, %stbi__refill_buffer.exit.i.i.1 ]
  %.not.i.1 = icmp eq i8 %.0.i.i.1, 80
  br i1 %.not.i.1, label %bb.h, label %stbi__check_png_header.exit.thread

end_hunk_1
