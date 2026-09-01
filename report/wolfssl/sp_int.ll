Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_sp_exptmod_ex:bb.a
  %i.ee = icmp eq i32 %.0.i93, 0
  br i1 %i.ee, label %.critedge.thread.thread139thread-pre-split, label %.critedge.thread.thread

.critedge.thread.thread139thread-pre-split:       ; preds = %.critedge.thread
  %.pr = load i16, ptr %i.l, align 16, !tbaa !16
  br label %.critedge.thread.thread139

.critedge.thread.thread139:                       ; preds = %.critedge.thread.thread139thread-pre-split, %_sp_copy.exit67
  %i.ef = phi i16 [ %.pr, %.critedge.thread.thread139thread-pre-split ], [ %i.ao, %_sp_copy.exit67 ] ; 4 uses
  %i.eg = icmp eq i16 %i.ef, 0
  br i1 %i.eg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge.thread.thread139
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.eh, align 8, !tbaa !11
  br label %.critedge.thread.thread.sink.split

bb.ac:                                            ; preds = %.critedge.thread.thread139
  %i.ei = zext i16 %i.ef to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.el = shl nuw nsw i64 %i.ei, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull readonly align 8 %i.ek, i64 %i.el, i1 false)
  br label %.critedge.thread.thread.sink.split

.critedge.thread.thread.sink.split:               ; preds = %bb.ac, %bb.ab, %bb.h
  %.sink = phi i16 [ 0, %bb.h ], [ %i.ef, %bb.ab ], [ %i.ef, %bb.ac ]
  store i16 %.sink, ptr %4, align 8, !tbaa !85
  br label %.critedge.thread.thread

.critedge.thread.thread:                          ; preds = %_sp_copy.exit72, %.critedge.thread.thread.sink.split, %bb.a, %.loopexit, %sp_mod.exit, %.critedge.thread
  %.4100 = phi i32 [ -98, %bb.a ], [ %.0.i93, %.critedge.thread ], [ -98, %.loopexit ], [ %i.af, %sp_mod.exit ], [ 0, %.critedge.thread.thread.sink.split ], [ %.3.i89, %_sp_copy.exit72 ]
  ret i32 %.4100
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define range(i32 -98, 1) i32 @sp_exptmod(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.b = insertelement <4 x ptr> %i.a, ptr %1, i64 1
  %i.c = insertelement <4 x ptr> %i.b, ptr %2, i64 2
  %i.d = insertelement <4 x ptr> %i.c, ptr %3, i64 3
  %i.e = icmp eq <4 x ptr> %i.d, splat (ptr null)
  %i.f = bitcast <4 x i1> %i.e to i4
  %i.g = icmp eq i4 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %1, align 8, !tbaa !16
  %i.i = zext i16 %i.h to i32
  %i.j = tail call i32 @sp_exptmod_ex(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.i, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %i.j, %bb.b ], [ -98, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -98, 1) i32 @sp_exptmod_nct(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [34 x ptr], align 16              ; 20 uses
  %i.b = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.c = insertelement <4 x ptr> %i.b, ptr %1, i64 1
  %i.d = insertelement <4 x ptr> %i.c, ptr %2, i64 2
  %i.e = insertelement <4 x ptr> %i.d, ptr %3, i64 3
  %i.f = icmp eq <4 x ptr> %i.e, splat (ptr null)
  %i.g = bitcast <4 x i1> %i.f to i4
  %i.h = icmp eq i4 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.bn

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr %2, align 8, !tbaa !16     ; 4 uses
  switch i16 %i.i, label %bb.e [
    i16 0, label %bb.bn
    i16 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !11
  store i16 0, ptr %3, align 8, !tbaa !8
  br label %bb.bn

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.n = load i16, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.o = zext i16 %i.n to i32
  %i.p = icmp eq i16 %i.n, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.q, align 8, !tbaa !11
  store i16 1, ptr %3, align 8, !tbaa !8
  br label %bb.bn

bb.g:                                             ; preds = %bb.e
  %i.r = load i16, ptr %0, align 8, !tbaa !16
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !11
  store i16 0, ptr %3, align 8, !tbaa !8
  br label %bb.bn

bb.i:                                             ; preds = %bb.g
  %i.u = zext i16 %i.i to i32
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !14
  %i.y = zext i16 %i.x to i32
  %.not = icmp samesign ult i32 %i.v, %i.y
  br i1 %.not, label %bb.j, label %bb.bn

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ab = and i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = shl nuw nsw i32 %i.o, 6
  %i.ae = tail call fastcc i32 @_sp_exptmod_ex(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.ad, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %bb.bn

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.a, i8 0, i64 272, i1 false)
  %i.af = zext i16 %i.n to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.ag = icmp sgt i64 %indvars.iv.i.i121, 1
  br i1 %i.ag, label %bb.n, label %.thread.i, !llvm.loop !45

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.i.i121 = phi i64 [ %i.af, %bb.l ], [ %indvars.iv.next.i.i, %bb.m ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i121, -1 ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i121
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11 ; 5 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %.critedge.i.i, !llvm.loop !45

.critedge.i.i:                                    ; preds = %bb.n
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.al = shl nuw nsw i32 %i.ak, 6                ; 2 uses
  %i.am = icmp ugt i64 %i.ai, 4294967295
  br i1 %i.am, label %bb.o, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.i.i
  %i.an = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %reass.sub.i.i = add nuw nsw i32 %i.al, 64
  %i.ap = sub nuw nsw i32 %reass.sub.i.i, %i.ao
  br label %sp_count_bits.exit.i

bb.o:                                             ; preds = %.critedge.i.i
  %i.aq = add nuw nsw i32 %i.al, 64               ; 2 uses
  %i.ar = icmp sgt i64 %i.ai, -1
  br i1 %i.ar, label %.lr.ph36.i.i, label %sp_count_bits.exit.i

.lr.ph36.i.i:                                     ; preds = %bb.o, %.lr.ph36.i.i
  %.035.i.i = phi i64 [ %i.at, %.lr.ph36.i.i ], [ %i.ai, %bb.o ]
  %.234.i.i = phi i32 [ %i.as, %.lr.ph36.i.i ], [ %i.aq, %bb.o ]
  %i.as = add nsw i32 %.234.i.i, -1               ; 2 uses
  %i.at = shl nuw i64 %.035.i.i, 1                ; 2 uses
  %i.au = icmp sgt i64 %i.at, -1
  br i1 %i.au, label %.lr.ph36.i.i, label %sp_count_bits.exit.i, !llvm.loop !46

sp_count_bits.exit.i:                             ; preds = %.lr.ph36.i.i, %bb.o, %.lr.ph.preheader.i.i
  %.5.i.i = phi i32 [ %i.ap, %.lr.ph.preheader.i.i ], [ %i.aq, %bb.o ], [ %i.as, %.lr.ph36.i.i ] ; 8 uses
  %i.av = icmp sgt i32 %.5.i.i, 450
  br i1 %i.av, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %sp_count_bits.exit.i
  %i.aw = icmp slt i32 %.5.i.i, 22
  br i1 %i.aw, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp samesign ult i32 %.5.i.i, 37
  br i1 %i.ax, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = icmp samesign ult i32 %.5.i.i, 141
  %..i = select i1 %i.ay, i32 4, i32 5
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.r, %bb.q, %bb.p, %sp_count_bits.exit.i
  %.5.i311.i = phi i32 [ %.5.i.i, %bb.q ], [ %.5.i.i, %sp_count_bits.exit.i ], [ %.5.i.i, %bb.p ], [ %.5.i.i, %bb.r ], [ 0, %bb.m ] ; 3 uses
  %.0262.i = phi i32 [ 3, %bb.q ], [ 6, %sp_count_bits.exit.i ], [ 2, %bb.p ], [ %..i, %bb.r ], [ 2, %bb.m ] ; 18 uses
  %i.az = add nsw i32 %.0262.i, -1
  %i.ba = shl nuw nsw i32 1, %i.az
  %.fr = freeze i32 %i.ba                         ; 4 uses
  %i.bb = icmp ult i16 %i.i, 65
  br i1 %i.bb, label %bb.s, label %_sp_exptmod_nct.exit

bb.s:                                             ; preds = %.thread.i
  %i.bc = shl nuw nsw i16 %i.i, 4
  %narrow390.i = add nuw nsw i16 %i.bc, 16
  %i.bd = zext nneg i16 %narrow390.i to i64
  %narrow.i = add nuw nsw i32 %.fr, 2
  %i.be = zext nneg i32 %narrow.i to i64
  %i.bf = mul nuw nsw i64 %i.be, %i.bd
  %i.bg = tail call ptr @wolfSSL_Malloc(i64 noundef %i.bf) #20 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_sp_exptmod_nct.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.bg, ptr %i.a, align 16, !tbaa !126
  %i.bi = load i16, ptr %2, align 8, !tbaa !16    ; 4 uses
  %i.bj = shl i16 %i.bi, 1
  %i.bk = or disjoint i16 %i.bj, 1                ; 13 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !14
  %i.bm = zext i16 %i.bi to i64
  %i.bn = shl nuw nsw i64 %i.bm, 4                ; 5 uses
  %load_initial = load ptr, ptr %i.a, align 16    ; 2 uses
  %i.bo = zext i32 %.fr to i64                    ; 3 uses
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %i.bq = icmp samesign ult i32 %.0262.i, 3
  br i1 %i.bq, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.t
  %unroll_iter = and i64 %i.bp, 4294967292
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.new
  %store_forwarded = phi ptr [ %load_initial, %.new ], [ %i.ci, %bb.u ]
  %indvars.iv.i = phi i64 [ 1, %.new ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.u ]
  %i.br = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %store_forwarded, i64 %i.bn ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !126
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 18
  store i16 %i.bk, ptr %i.bu, align 2, !tbaa !14
  %i.bv = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bn ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !126
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 18
  store i16 %i.bk, ptr %i.bz, align 2, !tbaa !14
  %i.ca = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bn ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !126
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 18
  store i16 %i.bk, ptr %i.ce, align 2, !tbaa !14
  %i.cf = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bn ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !126
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 18
  store i16 %i.bk, ptr %i.cj, align 2, !tbaa !14
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread313.i.unr-lcssa, label %bb.u, !llvm.loop !139

.thread313.i.unr-lcssa:                           ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread313.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread313.i.unr-lcssa, %bb.t
  %store_forwarded.epil.init = phi ptr [ %load_initial, %bb.t ], [ %i.ci, %.thread313.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %bb.t ], [ %indvars.iv.next.i.3, %.thread313.i.unr-lcssa ]
  %lcmp.mod141 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod141)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %store_forwarded.epil = phi ptr [ %store_forwarded.epil.init, %.epil.preheader ], [ %i.cm, %bb.v ]
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ck = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i.epil
  %i.cl = getelementptr inbounds nuw i8, ptr %store_forwarded.epil, i64 %i.bn ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !126
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 18
  store i16 %i.bk, ptr %i.cn, align 2, !tbaa !14
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread313.i, label %bb.v, !llvm.loop !140

.thread313.i:                                     ; preds = %bb.v, %.thread313.i.unr-lcssa
  %i.co = zext nneg i32 %.fr to i64               ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !126 ; 20 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !126 ; 15 uses
  %xtraiter143 = and i64 %i.bo, 3                 ; 3 uses
  %i.ct = add i32 %.fr, -1
  %i.cu = icmp ult i32 %i.ct, 3
  br i1 %i.cu, label %.epil.preheader142, label %.thread313.i.new

.thread313.i.new:                                 ; preds = %.thread313.i
  %unroll_iter147 = and i64 %i.bo, 4294967292
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.thread313.i.new
  %indvars.iv425.i = phi i64 [ 0, %.thread313.i.new ], [ %indvars.iv.next426.i.3, %bb.w ] ; 5 uses
  %niter148 = phi i64 [ 0, %.thread313.i.new ], [ %niter148.next.3, %bb.w ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv425.i
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !126 ; 3 uses
  store volatile i16 0, ptr %i.cw, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store volatile i64 0, ptr %i.cx, align 8, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store volatile i16 %i.bk, ptr %i.cy, align 2, !tbaa !13
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv425.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !126 ; 3 uses
  store volatile i16 0, ptr %i.db, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store volatile i64 0, ptr %i.dc, align 8, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store volatile i16 %i.bk, ptr %i.dd, align 2, !tbaa !13
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv425.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 16, !tbaa !126 ; 3 uses
  store volatile i16 0, ptr %i.dg, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store volatile i64 0, ptr %i.dh, align 8, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store volatile i16 %i.bk, ptr %i.di, align 2, !tbaa !13
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv425.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !126 ; 3 uses
  store volatile i16 0, ptr %i.dl, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store volatile i64 0, ptr %i.dm, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store volatile i16 %i.bk, ptr %i.dn, align 2, !tbaa !13
  %indvars.iv.next426.i.3 = add nuw nsw i64 %indvars.iv425.i, 4 ; 2 uses
  %niter148.next.3 = add i64 %niter148, 4         ; 2 uses
  %niter148.ncmp.3 = icmp eq i64 %niter148.next.3, %unroll_iter147
  br i1 %niter148.ncmp.3, label %.unr-lcssa, label %bb.w, !llvm.loop !141

.unr-lcssa:                                       ; preds = %bb.w
  %lcmp.mod145.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod145.not, label %.epilog-lcssa, label %.epil.preheader142

.epil.preheader142:                               ; preds = %.unr-lcssa, %.thread313.i
  %indvars.iv425.i.epil.init = phi i64 [ 0, %.thread313.i ], [ %indvars.iv.next426.i.3, %.unr-lcssa ]
  %lcmp.mod146 = icmp ne i64 %xtraiter143, 0
  tail call void @llvm.assume(i1 %lcmp.mod146)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader142
  %indvars.iv425.i.epil = phi i64 [ %indvars.iv425.i.epil.init, %.epil.preheader142 ], [ %indvars.iv.next426.i.epil, %bb.x ] ; 2 uses
  %epil.iter144 = phi i64 [ 0, %.epil.preheader142 ], [ %epil.iter144.next, %bb.x ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv425.i.epil
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !126 ; 3 uses
  store volatile i16 0, ptr %i.dp, align 8, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store volatile i64 0, ptr %i.dq, align 8, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store volatile i16 %i.bk, ptr %i.dr, align 2, !tbaa !13
  %indvars.iv.next426.i.epil = add nuw nsw i64 %indvars.iv425.i.epil, 1
  %epil.iter144.next = add i64 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i64 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %.epilog-lcssa, label %bb.x, !llvm.loop !142

.epilog-lcssa:                                    ; preds = %bb.x, %.unr-lcssa
  store volatile i16 0, ptr %i.cq, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  store volatile i64 0, ptr %i.ds, align 8, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store volatile i16 %i.bk, ptr %i.dt, align 2, !tbaa !13
  store volatile i16 0, ptr %i.cs, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  store volatile i64 0, ptr %i.du, align 8, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store volatile i16 %i.bk, ptr %i.dv, align 2, !tbaa !13
  %i.dw = load i16, ptr %0, align 8, !tbaa !16    ; 7 uses
  %i.dx = icmp ugt i16 %i.dw, %i.bi
  br i1 %i.dx, label %.loopexit.i, label %bb.y

bb.y:                                             ; preds = %.epilog-lcssa
  %i.dy = icmp ult i16 %i.dw, %i.bi
  br i1 %i.dy, label %_sp_cmp_abs.exit.i, label %.preheader.i293.i

.preheader.i293.i:                                ; preds = %bb.y
  %.not126 = icmp eq i16 %i.dw, 0
  br i1 %.not126, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i293.i
  %i.dz = zext i16 %i.dw to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.ab
  %indvars.iv.next.i295.i124 = add nsw i64 %indvars.iv.i294.i123, -1
  %i.ea = icmp sgt i64 %indvars.iv.i294.i123, 1
  br i1 %i.ea, label %bb.aa, label %.loopexit.i, !llvm.loop !44

bb.aa:                                            ; preds = %.lr.ph, %bb.z
  %indvars.iv.i294.i123 = phi i64 [ %i.dz, %.lr.ph ], [ %indvars.iv.next.i295.i124, %bb.z ] ; 4 uses
  %i.eb = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i294.i123
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !11 ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i294.i123
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !11 ; 2 uses
  %i.ef = icmp ugt i64 %i.ec, %i.ee
  br i1 %i.ef, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = icmp ult i64 %i.ec, %i.ee
  br i1 %i.eg, label %_sp_cmp_abs.exit.i, label %bb.z, !llvm.loop !44

.loopexit.i:                                      ; preds = %bb.z, %bb.aa, %.preheader.i293.i, %.epilog-lcssa
  %i.eh = icmp ult i16 %i.dw, 129
  br i1 %i.eh, label %sp_mod.exit.i, label %.thread375.i

sp_mod.exit.i:                                    ; preds = %.loopexit.i
  %i.ei = tail call i32 @sp_div(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %2, ptr noundef null, ptr noundef nonnull %i.cs) ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ac, label %.thread375.i

bb.ac:                                            ; preds = %sp_mod.exit.i
  %i.ek = load i16, ptr %i.cs, align 8, !tbaa !16
  %i.el = icmp eq i16 %i.ek, 0
end_hunk_0
