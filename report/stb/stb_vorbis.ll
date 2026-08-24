Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 46
begin_hunk_0_@compute_codewords:bb.a
.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit72, label %.lr.ph, !llvm.loop !37

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.054.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %._crit_edge.loopexit ] ; 4 uses
  %i.f = icmp eq i32 %.054.lcssa, %2
  br i1 %i.f, label %.loopexit72, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = zext nneg i32 %.054.lcssa to i64         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !30
  %.not.i = icmp eq i8 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g
  store i32 0, ptr %i.m, align 4, !tbaa !25
  br label %add_entry.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.h, align 1, !tbaa !29
  store i32 0, ptr %i.l, align 4, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  store i8 %i.n, ptr %i.p, align 1, !tbaa !29
  store i32 %.054.lcssa, ptr %3, align 4, !tbaa !25
  br label %add_entry.exit

add_entry.exit:                                   ; preds = %bb.d, %bb.e
  %i.q = load i8, ptr %i.h, align 1, !tbaa !29    ; 3 uses
  %.not6279 = icmp eq i8 %i.q, 0
  br i1 %.not6279, label %.preheader73, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %add_entry.exit
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = icmp ult i8 %i.q, 4
  br i1 %i.s, label %.lr.ph81.epil.preheader, label %.lr.ph81.preheader.new

.lr.ph81.preheader.new:                           ; preds = %.lr.ph81.preheader
  %unroll_iter = and i64 %i.r, 252
  br label %.lr.ph81

.preheader73.loopexit.unr-lcssa:                  ; preds = %.lr.ph81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader73, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %.preheader73.loopexit.unr-lcssa, %.lr.ph81.preheader
  %indvars.iv95.epil.init = phi i64 [ 1, %.lr.ph81.preheader ], [ %indvars.iv.next96.3, %.preheader73.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph81.epil

.lr.ph81.epil:                                    ; preds = %.lr.ph81.epil, %.lr.ph81.epil.preheader
  %indvars.iv95.epil = phi i64 [ %indvars.iv95.epil.init, %.lr.ph81.epil.preheader ], [ %indvars.iv.next96.epil, %.lr.ph81.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph81.epil.preheader ], [ %epil.iter.next, %.lr.ph81.epil ]
  %i.t = trunc i64 %indvars.iv95.epil to i32
  %i.u = sub i32 32, %i.t
  %i.v = shl nuw i32 1, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv95.epil
  store i32 %i.v, ptr %i.w, align 4, !tbaa !25
  %indvars.iv.next96.epil = add nuw nsw i64 %indvars.iv95.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader73, label %.lr.ph81.epil, !llvm.loop !38

.preheader73:                                     ; preds = %.preheader73.loopexit.unr-lcssa, %.lr.ph81.epil, %add_entry.exit
  %.15687 = add nuw nsw i32 %.054.lcssa, 1        ; 2 uses
  %i.x = icmp slt i32 %.15687, %2
  br i1 %i.x, label %.lr.ph91, label %.loopexit72

.lr.ph91:                                         ; preds = %.preheader73
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = zext i32 %.15687 to i64
  br label %bb.f

.lr.ph81:                                         ; preds = %.lr.ph81, %.lr.ph81.preheader.new
  %indvars.iv95 = phi i64 [ 1, %.lr.ph81.preheader.new ], [ %indvars.iv.next96.3, %.lr.ph81 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.preheader.new ], [ %niter.next.3, %.lr.ph81 ]
  %i.aa = trunc i64 %indvars.iv95 to i32
  %i.ab = sub i32 32, %i.aa
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv95
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !25
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.ae = trunc i64 %indvars.iv.next96 to i32
  %i.af = sub i32 32, %i.ae
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next96
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !25
  %indvars.iv.next96.1 = add nuw nsw i64 %indvars.iv95, 2 ; 2 uses
  %i.ai = trunc i64 %indvars.iv.next96.1 to i32
  %i.aj = sub i32 32, %i.ai
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next96.1
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !25
  %indvars.iv.next96.2 = add nuw nsw i64 %indvars.iv95, 3 ; 2 uses
  %i.am = trunc i64 %indvars.iv.next96.2 to i32
  %i.an = sub i32 32, %i.am
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next96.2
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !25
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader73.loopexit.unr-lcssa, label %.lr.ph81, !llvm.loop !39

bb.f:                                             ; preds = %.lr.ph91, %.loopexit
  %indvars.iv100 = phi i64 [ %i.z, %.lr.ph91 ], [ %indvars.iv.next101, %.loopexit ] ; 4 uses
  %.05388 = phi i32 [ 1, %.lr.ph91 ], [ %.1.ph, %.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv100 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29  ; 3 uses
  switch i8 %i.ar, label %.lr.ph84.preheader [
    i8 -1, label %.loopexit
    i8 0, label %.loopexit72
  ]

.lr.ph84.preheader:                               ; preds = %bb.f
  %i.as = zext i8 %i.ar to i32                    ; 3 uses
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %bb.g
  %indvar = phi i32 [ 0, %.lr.ph84.preheader ], [ %indvar.next, %bb.g ] ; 3 uses
  %.05183 = phi i32 [ %i.as, %.lr.ph84.preheader ], [ %i.aw, %bb.g ] ; 4 uses
  %i.at = zext nneg i32 %.05183 to i64            ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !25 ; 7 uses
  %.not63 = icmp eq i32 %i.av, 0
  br i1 %.not63, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph84
  %i.aw = add nsw i32 %.05183, -1                 ; 2 uses
  %.not70 = icmp eq i32 %i.aw, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not70, label %.loopexit72, label %.lr.ph84, !llvm.loop !40

.critedge:                                        ; preds = %.lr.ph84
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store i32 0, ptr %i.ax, align 4, !tbaa !25
  %i.ay = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.av) ; 2 uses
  %i.az = add nsw i32 %.05388, 1                  ; 3 uses
  %i.ba = load i8, ptr %i.i, align 1, !tbaa !30
  %.not.i65 = icmp eq i8 %i.ba, 0
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !35  ; 2 uses
  br i1 %.not.i65, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv100
  store i32 %i.ay, ptr %i.bc, align 4, !tbaa !25
  br label %add_entry.exit66

bb.i:                                             ; preds = %.critedge
  %i.bd = sext i32 %.05388 to i64                 ; 3 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !25
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.bd
  store i8 %i.ar, ptr %i.bg, align 1, !tbaa !29
  %i.bh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bd
  %i.bi = trunc nuw i64 %indvars.iv100 to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !25
  br label %add_entry.exit66

add_entry.exit66:                                 ; preds = %bb.h, %bb.i
  %i.bj = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.bk = zext i8 %i.bj to i32                    ; 5 uses
  %i.bl = icmp slt i32 %.05183, %i.bk
  br i1 %i.bl, label %.lr.ph86.preheader, label %.loopexit

.lr.ph86.preheader:                               ; preds = %add_entry.exit66
  %i.bm = sub i32 %indvar, %i.as
  %i.bn = add i32 %i.bm, %i.bk
  %xtraiter133 = and i32 %i.bn, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i32 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph86.prol.loopexit, label %.lr.ph86.prol

.lr.ph86.prol:                                    ; preds = %.lr.ph86.preheader, %.lr.ph86.prol
  %.085.prol = phi i32 [ %i.bt, %.lr.ph86.prol ], [ %i.bk, %.lr.ph86.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph86.prol ], [ 0, %.lr.ph86.preheader ]
  %i.bo = sub nsw i32 32, %.085.prol
  %i.bp = shl nuw nsw i32 1, %i.bo
  %i.bq = add i32 %i.bp, %i.av
  %i.br = zext nneg i32 %.085.prol to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !25
  %i.bt = add nsw i32 %.085.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter133
  br i1 %prol.iter.cmp.not, label %.lr.ph86.prol.loopexit, label %.lr.ph86.prol, !llvm.loop !41

.lr.ph86.prol.loopexit:                           ; preds = %.lr.ph86.prol, %.lr.ph86.preheader
  %.085.unr = phi i32 [ %i.bk, %.lr.ph86.preheader ], [ %i.bt, %.lr.ph86.prol ]
  %i.bu = add i32 %indvar, %i.bk
  %i.bv = sub i32 %i.as, %i.bu
  %i.bw = icmp ugt i32 %i.bv, -4
  br i1 %i.bw, label %.loopexit, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86.prol.loopexit, %.lr.ph86
  %.085 = phi i32 [ %i.cu, %.lr.ph86 ], [ %.085.unr, %.lr.ph86.prol.loopexit ] ; 9 uses
  %i.bx = sub nsw i32 32, %.085
  %i.by = shl nuw nsw i32 1, %i.bx
  %i.bz = add i32 %i.by, %i.av
  %i.ca = zext nneg i32 %.085 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ca
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !25
  %i.cc = sub nsw i32 33, %.085
  %i.cd = shl nuw nsw i32 1, %i.cc
  %i.ce = add i32 %i.cd, %i.av
  %i.cf = sext i32 %.085 to i64
  %i.cg = getelementptr [4 x i8], ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !25
  %i.ci = sub nsw i32 34, %.085
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = add i32 %i.cj, %i.av
  %i.cl = sext i32 %.085 to i64
  %i.cm = getelementptr [4 x i8], ptr %i.a, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -8
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !25
  %i.co = sub nsw i32 35, %.085
  %i.cp = shl nuw nsw i32 1, %i.co
  %i.cq = add i32 %i.cp, %i.av
  %i.cr = sext i32 %.085 to i64
  %i.cs = getelementptr [4 x i8], ptr %i.a, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 -12
  store i32 %i.cq, ptr %i.ct, align 4, !tbaa !25
  %i.cu = add nsw i32 %.085, -4                   ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, %.05183
  br i1 %i.cv, label %.lr.ph86, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %.lr.ph86.prol.loopexit, %.lr.ph86, %bb.f, %add_entry.exit66
  %.1.ph = phi i32 [ %i.az, %add_entry.exit66 ], [ %.05388, %bb.f ], [ %i.az, %.lr.ph86 ], [ %i.az, %.lr.ph86.prol.loopexit ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.cw = trunc nuw i64 %indvars.iv.next101 to i32
  %i.cx = icmp sgt i32 %2, %i.cw
  br i1 %i.cx, label %bb.f, label %.loopexit72, !llvm.loop !43

.loopexit72:                                      ; preds = %bb.b, %.loopexit, %bb.f, %bb.g, %.preheader73, %._crit_edge
  %.2 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.f ], [ 1, %.preheader73 ], [ 0, %bb.g ], [ 1, %.loopexit ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @compute_accelerated_huffman(ptr nofree noundef captures(none) initializes((48, 2096)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.a, i8 -1, i64 2048, i1 false), !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.c = load i8, ptr %i.b, align 1, !tbaa !30
  %.fr = freeze i8 %i.c
  %.not = icmp eq i8 %.fr, 0                      ; 2 uses
  %.in.v = select i1 %.not, i64 4, i64 2112
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.d = load i32, ptr %.in, align 4, !tbaa !25   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph30, label %._crit_edge

.lr.ph30:                                         ; preds = %bb.a
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.d, i32 32767)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.trip.count37 = zext nneg i32 %spec.store.select to i64 ; 2 uses
  br i1 %.not, label %.lr.ph30.split.us, label %.lr.ph30.split

.lr.ph30.split.us:                                ; preds = %.lr.ph30, %.loopexit.us
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %.loopexit.us ], [ 0, %.lr.ph30 ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv34 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = icmp ult i8 %i.k, 11
  br i1 %i.l, label %bb.b, label %.loopexit.us

bb.b:                                             ; preds = %.lr.ph30.split.us
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv34
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25   ; 2 uses
  %i.p = icmp ult i32 %i.o, 1024
  br i1 %i.p, label %.lr.ph.us, label %.loopexit.us

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %.027.us = phi i32 [ %i.o, %.lr.ph.us ], [ %i.v, %bb.c ] ; 2 uses
  %i.q = zext nneg i32 %.027.us to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.q
  store i16 %i.x, ptr %i.r, align 2, !tbaa !44
  %i.s = load i8, ptr %i.j, align 1, !tbaa !29
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw i32 1, %i.t
  %i.v = add nuw i32 %i.u, %.027.us               ; 2 uses
  %i.w = icmp ult i32 %i.v, 1024
  br i1 %i.w, label %bb.c, label %.loopexit.us, !llvm.loop !46

.loopexit.us:                                     ; preds = %bb.c, %bb.b, %.lr.ph30.split.us
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %._crit_edge, label %.lr.ph30.split.us, !llvm.loop !47

.lr.ph.us:                                        ; preds = %bb.b
  %i.x = trunc i64 %indvars.iv34 to i16
  br label %bb.c

.lr.ph30.split:                                   ; preds = %.lr.ph30, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.lr.ph30 ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29
  %i.aa = icmp ult i8 %i.z, 11
  br i1 %i.aa, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph30.split
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !25
  %i.ae = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.ad) ; 2 uses
  %i.af = icmp ult i32 %i.ae, 1024
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ag = trunc i64 %indvars.iv to i16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.027 = phi i32 [ %i.ae, %.lr.ph ], [ %i.am, %bb.e ] ; 2 uses
  %i.ah = zext nneg i32 %.027 to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ah
  store i16 %i.ag, ptr %i.ai, align 2, !tbaa !44
  %i.aj = load i8, ptr %i.y, align 1, !tbaa !29
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = add nuw i32 %i.al, %.027                ; 2 uses
  %i.an = icmp ult i32 %i.am, 1024
  br i1 %i.an, label %bb.e, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %bb.e, %bb.d, %.lr.ph30.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count37
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph30.split, !llvm.loop !47

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @uint32_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !25
  %i.b = load i32, ptr %1, align 4, !tbaa !25
  %i.c = tail call i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @include_in_sort(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.b = load i8, ptr %i.a, align 1, !tbaa !30
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %1, -1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i8 %1, 10
  %. = zext i1 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define void @compute_sorted_huffman(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !30
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.preheader, label %.preheader96

.preheader96:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph101, label %.loopexit

.lr.ph101:                                        ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2096
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101, %include_in_sort.exit.thread
  %i.o = phi i32 [ %i.k, %.lr.ph101 ], [ %i.aa, %include_in_sort.exit.thread ]
  %indvars.iv111 = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next112, %include_in_sort.exit.thread ] ; 3 uses
  %.061100 = phi i32 [ 0, %.lr.ph101 ], [ %.162, %include_in_sort.exit.thread ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv111
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = add i8 %i.q, 1
  %or.cond = icmp ult i8 %i.r, 12
  br i1 %or.cond, label %include_in_sort.exit.thread, label %include_in_sort.exit.thread78

include_in_sort.exit.thread78:                    ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv111
  %i.u = load i32, ptr %i.t, align 4, !tbaa !25
  %i.v = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.u)
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.x = add nsw i32 %.061100, 1
  %i.y = sext i32 %.061100 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 %i.v, ptr %i.z, align 4, !tbaa !25
  %.pre = load i32, ptr %i.j, align 4, !tbaa !50
  br label %include_in_sort.exit.thread

include_in_sort.exit.thread:                      ; preds = %bb.b, %include_in_sort.exit.thread78
  %i.aa = phi i32 [ %.pre, %include_in_sort.exit.thread78 ], [ %i.o, %bb.b ] ; 2 uses
  %.162 = phi i32 [ %i.x, %include_in_sort.exit.thread78 ], [ %.061100, %bb.b ]
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next112, %i.ab
  br i1 %i.ac, label %bb.b, label %.loopexit, !llvm.loop !51

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.af = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.ae)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !49
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.c, label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %bb.c, %include_in_sort.exit.thread, %.preheader96, %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 4 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !49
  %i.ao = sext i32 %i.an to i64
  tail call void @qsort(ptr noundef %i.al, i64 noundef %i.ao, i64 noundef 4, ptr noundef nonnull @uint32_compare) #30
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.aq = load i32, ptr %i.am, align 8, !tbaa !49
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar
  store i32 -1, ptr %i.as, align 4, !tbaa !25
  %i.at = load i8, ptr %i.a, align 1, !tbaa !30
  %.not66 = icmp eq i8 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.in = select i1 %.not66, ptr %i.au, ptr %i.am
  %i.av = load i32, ptr %.in, align 4, !tbaa !25  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph107, %include_in_sort.exit75.thread
  %indvars.iv114 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next115, %include_in_sort.exit75.thread ] ; 6 uses
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !30
  %.not67 = icmp eq i8 %i.ba, 0                   ; 2 uses
  br i1 %.not67, label %bb.e, label %include_in_sort.exit75.thread90

include_in_sort.exit75.thread90:                  ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv114
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !25
  %.pn = zext i32 %i.bc to i64
  %.in68.in = getelementptr inbounds nuw i8, ptr %1, i64 %.pn
  %.in68 = load i8, ptr %.in68.in, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.in68.in83 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv114
  %.in6884 = load i8, ptr %.in68.in83, align 1, !tbaa !29 ; 2 uses
  %i.bd = add i8 %.in6884, 1
  %or.cond95 = icmp ult i8 %i.bd, 12
  br i1 %or.cond95, label %include_in_sort.exit75.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %include_in_sort.exit75.thread90
  %.in688594 = phi i8 [ %.in68, %include_in_sort.exit75.thread90 ], [ %.in6884, %bb.e ]
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv114
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !25
  %i.bh = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.bg)
  %i.bi = load i32, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %.lr.ph104, label %._crit_edge

.lr.ph104:                                        ; preds = %bb.f
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph104, %bb.g
  %.0103 = phi i32 [ %i.bi, %.lr.ph104 ], [ %.1, %bb.g ] ; 2 uses
  %.059102 = phi i32 [ 0, %.lr.ph104 ], [ %.160, %bb.g ] ; 2 uses
  %i.bl = lshr i32 %.0103, 1                      ; 3 uses
  %i.bm = add nuw nsw i32 %i.bl, %.059102         ; 2 uses
  %3 = zext nneg i32 %i.bm to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %3
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !25
  %.not71 = icmp ugt i32 %i.bo, %i.bh             ; 2 uses
  %i.bp = sub nsw i32 %.0103, %i.bl
  %.160 = select i1 %.not71, i32 %.059102, i32 %i.bm ; 2 uses
  %.1 = select i1 %.not71, i32 %i.bl, i32 %i.bp   ; 2 uses
  %4 = icmp sgt i32 %.1, 1
  br i1 %4, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %bb.g
  %5 = zext nneg i32 %.160 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.059.lcssa = phi i64 [ 0, %bb.f ], [ %5, %._crit_edge.loopexit ] ; 3 uses
  br i1 %.not67, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv114
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !25
  %i.bs = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.059.lcssa
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !25
  %i.bu = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.059.lcssa
  store i8 %.in688594, ptr %i.bv, align 1, !tbaa !29
  br label %include_in_sort.exit75.thread

bb.i:                                             ; preds = %._crit_edge
  %i.bw = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.059.lcssa
  %i.by = trunc nuw nsw i64 %indvars.iv114 to i32
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !25
  br label %include_in_sort.exit75.thread

include_in_sort.exit75.thread:                    ; preds = %bb.e, %bb.h, %bb.i
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge108, label %bb.d, !llvm.loop !55

._crit_edge108:                                   ; preds = %include_in_sort.exit75.thread, %.loopexit
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @vorbis_validate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1651666806
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 29545
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define i32 @lookup1_values(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = sitofp i32 %0 to float
  %i.b = fpext float %i.a to double
  %i.c = tail call double @log(double noundef %i.b) #30
  %i.d = fptrunc double %i.c to float
  %i.e = sitofp i32 %1 to float
  %i.f = fdiv float %i.d, %i.e
  %i.g = fpext float %i.f to double
  %i.h = tail call double @exp(double noundef %i.g) #30
  %i.i = tail call double @llvm.floor.f64(double %i.h)
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = sitofp i32 %i.j to float
  %i.l = fadd float %i.k, 1.000000e+00
  %i.m = fpext float %i.l to double
  %i.n = sitofp i32 %1 to double                  ; 3 uses
  %i.o = tail call double @pow(double noundef %i.m, double noundef %i.n) #30
  %i.p = tail call double @llvm.floor.f64(double %i.o)
  %i.q = fptosi double %i.p to i32
  %.not = icmp sge i32 %0, %i.q
  %i.r = zext i1 %.not to i32
  %spec.select = add nsw i32 %i.r, %i.j           ; 2 uses
  %i.s = sitofp i32 %spec.select to float         ; 2 uses
  %i.t = fadd float %i.s, 1.000000e+00
  %i.u = fpext float %i.t to double
  %i.v = tail call double @pow(double noundef %i.u, double noundef %i.n) #30
  %i.w = sitofp i32 %0 to double
  %i.x = fcmp ugt double %i.v, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = fpext float %i.s to double
  %i.z = tail call double @pow(double noundef %i.y, double noundef %i.n) #30
  %i.aa = tail call double @llvm.floor.f64(double %i.z)
  %i.ab = fptosi double %i.aa to i32
  %i.ac = icmp slt i32 %0, %i.ab
  %.spec.select = select i1 %i.ac, i32 -1, i32 %spec.select
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ -1, %bb.a ], [ %.spec.select, %bb.b ]
  ret i32 %.014
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable
define void @compute_twiddle_factors(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #19 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 2 uses
  %i.b = ashr i32 %0, 3                           ; 2 uses
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = uitofp nneg i32 %0 to double
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph39, label %._crit_edge

.lr.ph39:                                         ; preds = %.preheader
  %i.h = uitofp nneg i32 %0 to double
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.03335 = phi i32 [ 0, %.lr.ph ], [ %i.ai, %bb.b ] ; 2 uses
  %i.i = shl nuw nsw i32 %.03335, 2
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.m = trunc nuw nsw i64 %i.k to i32
  %i.n = uitofp nneg i32 %i.i to double
  %i.o = uitofp nneg i32 %i.m to double
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.n, i64 1
  %i.r = fmul nnan <2 x double> %i.q, splat (double f0x400921FB54442D18)
  %i.s = fdiv <2 x double> %i.r, %i.f             ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1  ; 2 uses
  %i.u = tail call double @cos(double noundef %i.t) #30
  %i.v = fptrunc double %i.u to float
  store float %i.v, ptr %i.j, align 4, !tbaa !56
  %i.w = tail call double @sin(double noundef %i.t) #30
  %i.x = fptrunc double %i.w to float
  %i.y = fneg float %i.x
  store float %i.y, ptr %i.l, align 4, !tbaa !56
  %i.z = extractelement <2 x double> %i.s, i64 0
  %i.aa = fmul double %i.z, 5.000000e-01          ; 2 uses
  %i.ab = tail call double @cos(double noundef %i.aa) #30
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ad = tail call double @sin(double noundef %i.aa) #30
  %i.ae = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = fptrunc <2 x double> %i.af to <2 x float>
  %i.ah = fmul <2 x float> %i.ag, splat (float 5.000000e-01)
  store <2 x float> %i.ah, ptr %i.ac, align 4, !tbaa !56
  %i.ai = add nuw nsw i32 %.03335, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not = icmp eq i32 %i.ai, %i.a
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !57

bb.c:                                             ; preds = %.lr.ph39, %bb.c
  %indvars.iv41 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next42, %bb.c ] ; 3 uses
  %.13437 = phi i32 [ 0, %.lr.ph39 ], [ %i.av, %bb.c ]
  %i.aj = or disjoint i64 %indvars.iv41, 1        ; 2 uses
  %.tr = trunc i64 %i.aj to i32
  %i.ak = shl i32 %.tr, 1
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = fmul nnan double %i.al, f0x400921FB54442D18
  %i.an = fdiv double %i.am, %i.h                 ; 2 uses
  %i.ao = tail call double @cos(double noundef %i.an) #30
  %i.ap = fptrunc double %i.ao to float
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv41
  store float %i.ap, ptr %i.aq, align 4, !tbaa !56
  %i.ar = tail call double @sin(double noundef %i.an) #30
  %i.as = fptrunc double %i.ar to float
  %i.at = fneg float %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aj
  store float %i.at, ptr %i.au, align 4, !tbaa !56
  %i.av = add nuw nsw i32 %.13437, 1              ; 2 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 2
  %exitcond44.not = icmp eq i32 %i.av, %i.b
  br i1 %exitcond44.not, label %._crit_edge, label %bb.c, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable
define void @compute_window(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = ashr i32 %0, 1                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = uitofp nneg i32 %i.a to double
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = uitofp nneg i32 %i.d to double
  %i.f = fadd nnan double %i.e, 5.000000e-01
  %i.g = fdiv nnan double %i.f, %i.c
end_hunk_0
begin_hunk_1_@get_bits:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, %1
  br i1 %i.d, label %bb.c, label %.loopexit32

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i32 %1, 24
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = icmp samesign ult i32 %i.b, 24
  br i1 %i.f, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i32 %i.b, 0
  br i1 %i.g, label %bb.f, label %.lr.ph33

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1780
  store i32 0, ptr %i.h, align 4, !tbaa !97
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.e, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph33, %bb.h
  %i.j = tail call i32 @get8_packet_raw(ptr noundef nonnull %0), !inline_history !98 ; 2 uses
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %get_bits.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load i32, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.l = shl i32 %i.j, %i.k
  %i.m = load i32, ptr %i.i, align 4, !tbaa !97
  %i.n = add i32 %i.m, %i.l
  store i32 %i.n, ptr %i.i, align 4, !tbaa !97
  %i.o = add nsw i32 %i.k, 8                      ; 2 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !92
  %i.p = icmp slt i32 %i.k, 16
  br i1 %i.p, label %bb.g, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %bb.h, %bb.d
  %i.q = phi i32 [ %i.b, %bb.d ], [ %i.o, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97   ; 2 uses
  %i.t = and i32 %i.s, 16777215
  %i.u = lshr i32 %i.s, 24
  store i32 %i.u, ptr %i.r, align 4, !tbaa !97
  %i.v = add nsw i32 %i.q, -24
  br label %get_bits.exit

common.ret42:                                     ; preds = %.critedge, %bb.a, %.loopexit32, %get_bits.exit
  %common.ret42.op = phi i32 [ %i.z, %get_bits.exit ], [ 0, %.critedge ], [ %i.ao, %.loopexit32 ], [ 0, %bb.a ]
  ret i32 %common.ret42.op

get_bits.exit:                                    ; preds = %bb.g, %.loopexit
  %storemerge = phi i32 [ %i.v, %.loopexit ], [ -1, %bb.g ]
  %.2.i = phi i32 [ %i.t, %.loopexit ], [ 0, %bb.g ]
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !92
  %i.w = add nsw i32 %1, -24
  %i.x = tail call i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.w)
  %i.y = shl i32 %i.x, 24
  %i.z = or disjoint i32 %i.y, %.2.i
  br label %common.ret42

bb.i:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %i.b, 0
  br i1 %i.aa, label %bb.j, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1780
  store i32 0, ptr %i.ab, align 4, !tbaa !97
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.l
  %i.ad = tail call i32 @get8_packet_raw(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.ad, -1
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !92  ; 2 uses
  %i.af = shl i32 %i.ad, %i.ae
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !97
  %i.ah = add i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !97
  %i.ai = add nsw i32 %i.ae, 8                    ; 3 uses
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !92
  %i.aj = icmp slt i32 %i.ai, %1
  br i1 %i.aj, label %bb.k, label %.loopexit32, !llvm.loop !99

.loopexit32:                                      ; preds = %bb.l, %bb.b
  %i.ak = phi i32 [ %i.b, %bb.b ], [ %i.ai, %bb.l ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !97 ; 2 uses
  %notmask = shl nsw i32 -1, %1
  %i.an = xor i32 %notmask, -1
  %i.ao = and i32 %i.am, %i.an
  %i.ap = lshr i32 %i.am, %1
  store i32 %i.ap, ptr %i.al, align 4, !tbaa !97
  %i.aq = sub nsw i32 %i.ak, %1
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !92
  br label %common.ret42

.critedge:                                        ; preds = %bb.k
  store i32 -1, ptr %i.a, align 8, !tbaa !92
  br label %common.ret42
}

; Function Attrs: nofree nounwind uwtable
define i32 @codebook_decode_scalar_raw(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = icmp slt i32 %i.b, 25
  br i1 %i.c, label %bb.b, label %prep_huffman.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1780
  store i32 0, ptr %i.e, align 4, !tbaa !97
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1764
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1772
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.i = load i32, ptr %i.g, align 4, !tbaa !91
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.f, align 4, !tbaa !94
  %.not14.i = icmp eq i8 %i.j, 0
  br i1 %.not14.i, label %prep_huffman.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = tail call i32 @get8_packet_raw(ptr noundef nonnull %0) ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %prep_huffman.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.n = shl i32 %i.k, %i.m
  %i.o = load i32, ptr %i.h, align 4, !tbaa !97
  %i.p = add i32 %i.o, %i.n
  store i32 %i.p, ptr %i.h, align 4, !tbaa !97
  %i.q = add nsw i32 %i.m, 8
  store i32 %i.q, ptr %i.a, align 8, !tbaa !92
  %i.r = icmp slt i32 %i.m, 17
  br i1 %i.r, label %bb.e, label %prep_huffman.exit, !llvm.loop !100

prep_huffman.exit:                                ; preds = %bb.f, %bb.g, %bb.h, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %.thread

bb.i:                                             ; preds = %prep_huffman.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.s, label %.thread96

.thread:                                          ; preds = %prep_huffman.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !50   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 8
  br i1 %i.aa, label %bb.j, label %.thread66

bb.j:                                             ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 2 uses
  %.not61 = icmp eq ptr %.pre, null
  br i1 %.not61, label %.lr.ph76, label %.thread96

.thread96:                                        ; preds = %bb.i, %bb.j
  %i.ab = phi ptr [ %.pre, %bb.j ], [ %i.w, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !97 ; 2 uses
  %i.ae = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2112
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !49 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread96, %.lr.ph
  %.072 = phi i32 [ %.1, %.lr.ph ], [ %i.ag, %.thread96 ] ; 2 uses
  %.05471 = phi i32 [ %.155, %.lr.ph ], [ 0, %.thread96 ] ; 2 uses
  %i.ai = lshr i32 %.072, 1                       ; 3 uses
  %i.aj = add nuw nsw i32 %i.ai, %.05471          ; 2 uses
  %2 = zext nneg i32 %i.aj to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %2
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %.not65 = icmp ugt i32 %i.al, %i.ae             ; 2 uses
  %i.am = sub nsw i32 %.072, %i.ai
  %.155 = select i1 %.not65, i32 %.05471, i32 %i.aj ; 2 uses
  %.1 = select i1 %.not65, i32 %i.ai, i32 %i.am   ; 2 uses
  %3 = icmp sgt i32 %.1, 1
  br i1 %3, label %.lr.ph, label %._crit_edge, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph, %.thread96
  %.054.lcssa = phi i32 [ 0, %.thread96 ], [ %.155, %.lr.ph ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !30
  %.not63 = icmp eq i8 %i.ao, 0
  br i1 %.not63, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54
  %4 = zext nneg i32 %.054.lcssa to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.2 = phi i32 [ %.054.lcssa, %._crit_edge ], [ %i.as, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.av = sext i32 %.2 to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.ay = zext i8 %i.ax to i32                    ; 3 uses
  %i.az = load i32, ptr %i.a, align 8, !tbaa !92  ; 2 uses
  %.not64 = icmp slt i32 %i.az, %i.ay
  br i1 %.not64, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = lshr i32 %i.ad, %i.ay
  store i32 %i.ba, ptr %i.ac, align 4, !tbaa !97
  %i.bb = sub nsw i32 %i.az, %i.ay
  br label %.sink.split

.thread66:                                        ; preds = %.thread
  %i.bc = icmp sgt i32 %i.z, 0
  br i1 %i.bc, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %bb.j, %.thread66
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph76, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !29  ; 2 uses
  %i.bi = icmp eq i8 %i.bh, -1
  br i1 %i.bi, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = zext i8 %i.bh to i32                    ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !25
  %i.bm = load i32, ptr %i.bf, align 4, !tbaa !97 ; 2 uses
  %notmask = shl nsw i32 -1, %i.bj
  %i.bn = xor i32 %notmask, -1
  %i.bo = and i32 %i.bm, %i.bn
  %i.bp = icmp eq i32 %i.bl, %i.bo
  br i1 %i.bp, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !92  ; 2 uses
  %.not62 = icmp slt i32 %i.bq, %i.bj
  br i1 %.not62, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32
  %i.bt = lshr i32 %i.bm, %i.bj
  store i32 %i.bt, ptr %i.bf, align 4, !tbaa !97
  %i.bu = load i8, ptr %i.br, align 1, !tbaa !29
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bq, %i.bv
  br label %.sink.split

bb.r:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge77, label %bb.n, !llvm.loop !102

._crit_edge77:                                    ; preds = %bb.r, %.thread66
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 21, ptr %i.bx, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.m, %bb.l, %bb.q, %._crit_edge77
  %.sink = phi i32 [ 0, %._crit_edge77 ], [ 0, %bb.l ], [ %i.bw, %bb.q ], [ %i.bb, %bb.m ], [ 0, %bb.p ]
  %.158.ph = phi i32 [ -1, %._crit_edge77 ], [ -1, %bb.l ], [ %i.bs, %bb.q ], [ %.2, %bb.m ], [ -1, %bb.p ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !92
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.i
  %.158 = phi i32 [ -1, %bb.i ], [ %.158.ph, %.sink.split ]
  ret i32 %.158
}

; Function Attrs: nofree nounwind uwtable
define i32 @codebook_decode_start(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !103
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.thread31.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.f = icmp slt i32 %i.e, 10
  br i1 %i.f, label %bb.c, label %prep_huffman.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1780
  store i32 0, ptr %i.h, align 4, !tbaa !97
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1764
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1772
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %i.l = load i32, ptr %i.j, align 4, !tbaa !91
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %i.i, align 4, !tbaa !94
  %.not14.i = icmp eq i8 %i.m, 0
  br i1 %.not14.i, label %prep_huffman.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = tail call i32 @get8_packet_raw(ptr noundef nonnull %0) ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %prep_huffman.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load i32, ptr %i.d, align 8, !tbaa !92   ; 3 uses
  %i.q = shl i32 %i.n, %i.p
  %i.r = load i32, ptr %i.k, align 4, !tbaa !97
  %i.s = add i32 %i.r, %i.q
  store i32 %i.s, ptr %i.k, align 4, !tbaa !97
  %i.t = add nsw i32 %i.p, 8
  store i32 %i.t, ptr %i.d, align 8, !tbaa !92
  %i.u = icmp slt i32 %i.p, 17
  br i1 %i.u, label %bb.f, label %prep_huffman.exit, !llvm.loop !100

prep_huffman.exit:                                ; preds = %bb.i, %bb.h, %bb.g, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !97   ; 2 uses
  %i.x = and i32 %i.w, 1023
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !44 ; 3 uses
  %i.ac = icmp sgt i16 %i.ab, -1
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %prep_huffman.exit
  %i.ad = zext nneg i16 %i.ab to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = zext nneg i16 %i.ab to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = lshr i32 %i.w, %i.aj
  store i32 %i.ak, ptr %i.v, align 4, !tbaa !97
  %i.al = load i32, ptr %i.d, align 8, !tbaa !92
  %i.am = sub nsw i32 %i.al, %i.aj                ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  store i32 %spec.select, ptr %i.d, align 8, !tbaa !92
  br i1 %i.an, label %.thread, label %.thread31

bb.k:                                             ; preds = %prep_huffman.exit
  %i.ao = tail call i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.thread, label %.thread31

.thread:                                          ; preds = %bb.j, %bb.k
  %.130 = phi i32 [ %i.ao, %bb.k ], [ -1, %bb.j ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1764
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !94
  %.not = icmp eq i8 %i.ar, 0
  br i1 %.not, label %bb.l, label %.thread31.sink.split

bb.l:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1772
  %i.at = load i32, ptr %i.as, align 4, !tbaa !91
  %.not27 = icmp eq i32 %i.at, 0
  br i1 %.not27, label %.thread31.sink.split, label %.thread31

.thread31.sink.split:                             ; preds = %.thread, %bb.l, %bb.a
  %.025.ph = phi i32 [ -1, %bb.a ], [ %.130, %bb.l ], [ %.130, %.thread ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 21, ptr %i.au, align 4
  br label %.thread31

.thread31:                                        ; preds = %.thread31.sink.split, %bb.j, %bb.k, %bb.l
  %.025 = phi i32 [ %.130, %bb.l ], [ %i.ao, %bb.k ], [ %i.ad, %bb.j ], [ %.025.ph, %.thread31.sink.split ]
  ret i32 %.025
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @codebook_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call i32 @codebook_decode_start(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !104    ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.c) ; 6 uses
  %i.d = mul nsw i32 %i.c, %i.a                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.f = load i8, ptr %i.e, align 2, !tbaa !105
  %.not = icmp eq i8 %i.f, 0
  %i.g = icmp sgt i32 %spec.select, 0             ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader36

.preheader36:                                     ; preds = %bb.b
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader36
end_hunk_1
begin_hunk_2_@decode_residue:bb.a
bb.dv:                                            ; preds = %bb.du
  %i.sm = load i32, ptr %i.dc, align 8, !tbaa !81
  %i.sn = add nsw i32 %i.sm, -1
  store i32 %i.sn, ptr %i.dd, align 8, !tbaa !95
  %i.so = call i32 @capture_pattern(ptr noundef nonnull %0)
  %.not.i.i.i492.us.us.us = icmp eq i32 %i.so, 0
  br i1 %.not.i.i.i492.us.us.us, label %start_page.exit.thread.i.i498.us.us.us, label %start_page.exit.i.i493.us.us.us

start_page.exit.i.i493.us.us.us:                  ; preds = %bb.dv
  %i.sp = call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i494.us.us.us = icmp eq i32 %i.sp, 0
  br i1 %.not20.i.i494.us.us.us, label %.loopexit646.us.us.us, label %bb.dw

bb.dw:                                            ; preds = %start_page.exit.i.i493.us.us.us
  %i.sq = load i8, ptr %i.de, align 1, !tbaa !79
  %i.sr = and i8 %i.sq, 1
  %.not21.i.i495.us.us.us = icmp eq i8 %i.sr, 0
  br i1 %.not21.i.i495.us.us.us, label %bb.eh, label %._crit_edge.i.i496.us.us.us

._crit_edge.i.i496.us.us.us:                      ; preds = %bb.dw
  %.pre.i.i497.us.us.us = load i32, ptr %i.db, align 8, !tbaa !89
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge.i.i496.us.us.us, %bb.du
  %i.ss = phi i32 [ %.pre.i.i497.us.us.us, %._crit_edge.i.i496.us.us.us ], [ %i.sk, %bb.du ] ; 3 uses
  %i.st = add nsw i32 %i.ss, 1                    ; 2 uses
  store i32 %i.st, ptr %i.db, align 8, !tbaa !89
  %i.su = sext i32 %i.ss to i64
  %i.sv = getelementptr inbounds i8, ptr %i.df, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !29  ; 4 uses
  %.not22.i.i488.us.us.us = icmp eq i8 %i.sw, -1
  br i1 %.not22.i.i488.us.us.us, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 1, ptr %i.da, align 4, !tbaa !91
  store i32 %i.ss, ptr %i.dd, align 8, !tbaa !95
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.sx = load i32, ptr %i.dc, align 8, !tbaa !81
  %.not23.i.i489.us.us.us = icmp slt i32 %i.st, %i.sx
  br i1 %.not23.i.i489.us.us.us, label %next_segment.exit.i490.us.us.us, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store i32 -1, ptr %i.db, align 8, !tbaa !89
  br label %next_segment.exit.i490.us.us.us

next_segment.exit.i490.us.us.us:                  ; preds = %bb.ea, %bb.dz
  store i8 %i.sw, ptr %i.cz, align 4, !tbaa !94
  %.not7.i491.us.us.us = icmp eq i8 %i.sw, 0
  br i1 %.not7.i491.us.us.us, label %prep_huffman.exit.i402.us.us.us, label %.thread589.us.us.us

.thread589.us.us.us:                              ; preds = %next_segment.exit.i490.us.us.us, %bb.dt, %bb.ds
  %i.sy = phi i8 [ %i.sw, %next_segment.exit.i490.us.us.us ], [ %.pr588.us.us.us, %bb.dt ], [ %.pr588.us.us.us, %bb.ds ]
  %i.sz = add i8 %i.sy, -1
  store i8 %i.sz, ptr %i.cz, align 4, !tbaa !94
  %i.ta = load i32, ptr %i.dg, align 4, !tbaa !93
  %i.tb = add nsw i32 %i.ta, 1
  store i32 %i.tb, ptr %i.dg, align 4, !tbaa !93
  %i.tc = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i8.i482.us.us.us = icmp eq ptr %i.tc, null
  br i1 %.not.i8.i482.us.us.us, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %.thread589.us.us.us
  %i.td = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i483.us.us.us = icmp ult ptr %i.tc, %i.td
  br i1 %.not11.i.i483.us.us.us, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit499.thread593.us.us.us

bb.ed:                                            ; preds = %bb.eb
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 1
  store ptr %i.te, ptr %i.dh, align 8, !tbaa !70
  %i.tf = load i8, ptr %i.tc, align 1, !tbaa !29
  br label %get8_packet_raw.exit499.us.us.us

bb.ee:                                            ; preds = %.thread589.us.us.us
  %i.tg = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.th = call i32 @fgetc(ptr noundef %i.tg)      ; 2 uses
  %i.ti = icmp eq i32 %i.th, -1
  br i1 %i.ti, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.tj = trunc i32 %i.th to i8
  br label %get8_packet_raw.exit499.us.us.us

get8_packet_raw.exit499.us.us.us:                 ; preds = %bb.ef, %bb.ed
  %.1.i.i485.us.us.us = phi i8 [ %i.tj, %bb.ef ], [ %i.tf, %bb.ed ]
  %i.tk = zext i8 %.1.i.i485.us.us.us to i32
  br label %get8_packet_raw.exit499.thread593.us.us.us

bb.eg:                                            ; preds = %bb.ee
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit499.thread593.us.us.us

get8_packet_raw.exit499.thread593.us.us.us:       ; preds = %bb.eg, %get8_packet_raw.exit499.us.us.us, %bb.ec
  %i.tl = phi i32 [ %i.tk, %get8_packet_raw.exit499.us.us.us ], [ 0, %bb.ec ], [ 0, %bb.eg ]
  %i.tm = load i32, ptr %i.cx, align 8, !tbaa !92 ; 3 uses
  %i.tn = shl i32 %i.tl, %i.tm
  %i.to = load i32, ptr %i.cy, align 4, !tbaa !97
  %i.tp = add i32 %i.to, %i.tn
  store i32 %i.tp, ptr %i.cy, align 4, !tbaa !97
  %i.tq = add nsw i32 %i.tm, 8
  store i32 %i.tq, ptr %i.cx, align 8, !tbaa !92
  %i.tr = icmp slt i32 %i.tm, 17
  br i1 %i.tr, label %bb.dr, label %prep_huffman.exit.i402.us.us.us, !llvm.loop !100

bb.eh:                                            ; preds = %bb.dw
  store i32 32, ptr %i.dl, align 4
  br label %prep_huffman.exit.i402.us.us.us

start_page.exit.thread.i.i498.us.us.us:           ; preds = %bb.dv
  store i32 30, ptr %i.dl, align 4
  br label %.loopexit646.us.us.us

.loopexit646.us.us.us:                            ; preds = %start_page.exit.i.i493.us.us.us, %start_page.exit.thread.i.i498.us.us.us
  store i32 1, ptr %i.da, align 4, !tbaa !91
  br label %prep_huffman.exit.i402.us.us.us

prep_huffman.exit.i402.us.us.us:                  ; preds = %bb.ds, %next_segment.exit.i490.us.us.us, %get8_packet_raw.exit499.thread593.us.us.us, %.loopexit646.us.us.us, %bb.eh, %bb.do
  %i.ts = load ptr, ptr %i.oz, align 8, !tbaa !35 ; 2 uses
  %i.tt = icmp eq ptr %i.ts, null
  br i1 %i.tt, label %bb.eo, label %.thread.i403.us.us.us

.thread.i403.us.us.us:                            ; preds = %prep_huffman.exit.i402.us.us.us
  %i.tu = load i32, ptr %i.pa, align 4, !tbaa !50 ; 3 uses
  %i.tv = icmp sgt i32 %i.tu, 8
  br i1 %i.tv, label %bb.ei, label %.thread66.i404.us.us.us

.thread66.i404.us.us.us:                          ; preds = %.thread.i403.us.us.us
  %i.tw = icmp sgt i32 %i.tu, 0
  br i1 %i.tw, label %.lr.ph76.i410.us.us.us, label %._crit_edge77.i405

bb.ei:                                            ; preds = %.thread.i403.us.us.us
  %.pre.i418.us.us.us = load ptr, ptr %.phi.trans.insert.i417.us.us.us, align 8, !tbaa !48 ; 2 uses
  %.not61.i419.us.us.us = icmp eq ptr %.pre.i418.us.us.us, null
  br i1 %.not61.i419.us.us.us, label %.lr.ph76.i410.us.us.us, label %.thread96.i420.us.us.us

.lr.ph76.i410.us.us.us:                           ; preds = %bb.ei, %.thread66.i404.us.us.us
  %i.tx = load ptr, ptr %i.pb, align 8, !tbaa !36 ; 2 uses
  %wide.trip.count.i411.us.us.us = zext nneg i32 %i.tu to i64
  br label %bb.ej

bb.ej:                                            ; preds = %bb.el, %.lr.ph76.i410.us.us.us
  %indvars.iv.i412.us.us.us = phi i64 [ 0, %.lr.ph76.i410.us.us.us ], [ %indvars.iv.next.i414.us.us.us, %bb.el ] ; 5 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %indvars.iv.i412.us.us.us
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !29  ; 2 uses
  %i.ua = icmp eq i8 %i.tz, -1
  br i1 %i.ua, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ub = zext i8 %i.tz to i32                    ; 3 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv.i412.us.us.us
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !25
  %i.ue = load i32, ptr %i.cy, align 4, !tbaa !97 ; 2 uses
  %notmask.i413.us.us.us = shl nsw i32 -1, %i.ub
  %i.uf = xor i32 %notmask.i413.us.us.us, -1
  %i.ug = and i32 %i.ue, %i.uf
  %i.uh = icmp eq i32 %i.ud, %i.ug
  br i1 %i.uh, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %indvars.iv.next.i414.us.us.us = add nuw nsw i64 %indvars.iv.i412.us.us.us, 1 ; 2 uses
  %exitcond.not.i415.us.us.us = icmp eq i64 %indvars.iv.next.i414.us.us.us, %wide.trip.count.i411.us.us.us
  br i1 %exitcond.not.i415.us.us.us, label %._crit_edge77.i405, label %bb.ej, !llvm.loop !102

bb.em:                                            ; preds = %bb.ek
  %i.ui = load i32, ptr %i.cx, align 8, !tbaa !92 ; 2 uses
  %.not62.i416.us.us.us = icmp slt i32 %i.ui, %i.ub
  br i1 %.not62.i416.us.us.us, label %codebook_decode_scalar_raw.exit434.thread596, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tx, i64 %indvars.iv.i412.us.us.us
  %i.uk = trunc nuw nsw i64 %indvars.iv.i412.us.us.us to i32
  %i.ul = lshr i32 %i.ue, %i.ub
  store i32 %i.ul, ptr %i.cy, align 4, !tbaa !97
  %i.um = load i8, ptr %i.uj, align 1, !tbaa !29
  %i.un = zext i8 %i.um to i32
  %i.uo = sub nsw i32 %i.ui, %i.un
  br label %codebook_decode_scalar_raw.exit434.us.us.us

bb.eo:                                            ; preds = %prep_huffman.exit.i402.us.us.us
  %i.up = load ptr, ptr %.phi.trans.insert.i417.us.us.us, align 8, !tbaa !48 ; 2 uses
  %i.uq = icmp eq ptr %i.up, null
  br i1 %i.uq, label %.thread.i364, label %.thread96.i420.us.us.us

.thread96.i420.us.us.us:                          ; preds = %bb.eo, %bb.ei
  %i.ur = phi ptr [ %.pre.i418.us.us.us, %bb.ei ], [ %i.up, %bb.eo ]
  %i.us = load i32, ptr %i.cy, align 4, !tbaa !97 ; 2 uses
  %i.ut = call noundef i32 @llvm.bitreverse.i32(i32 %i.us)
  %i.uu = load i32, ptr %i.pc, align 8, !tbaa !49 ; 2 uses
  %i.uv = icmp sgt i32 %i.uu, 1
  br i1 %i.uv, label %.lr.ph.i426.us.us.us, label %._crit_edge.i421.us.us.us

.lr.ph.i426.us.us.us:                             ; preds = %.thread96.i420.us.us.us, %.lr.ph.i426.us.us.us
  %.072.i427.us.us.us = phi i32 [ %.1.i431.us.us.us, %.lr.ph.i426.us.us.us ], [ %i.uu, %.thread96.i420.us.us.us ] ; 2 uses
  %.05471.i428.us.us.us = phi i32 [ %.155.i430.us.us.us, %.lr.ph.i426.us.us.us ], [ 0, %.thread96.i420.us.us.us ] ; 2 uses
  %i.uw = lshr i32 %.072.i427.us.us.us, 1         ; 3 uses
  %i.ux = add nuw nsw i32 %i.uw, %.05471.i428.us.us.us ; 2 uses
  %6 = zext nneg i32 %i.ux to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %6
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !25
  %.not65.i429.us.us.us = icmp ugt i32 %i.uz, %i.ut ; 2 uses
  %i.va = sub nsw i32 %.072.i427.us.us.us, %i.uw
  %.155.i430.us.us.us = select i1 %.not65.i429.us.us.us, i32 %.05471.i428.us.us.us, i32 %i.ux ; 2 uses
  %.1.i431.us.us.us = select i1 %.not65.i429.us.us.us, i32 %i.uw, i32 %i.va ; 2 uses
  %7 = icmp sgt i32 %.1.i431.us.us.us, 1
  br i1 %7, label %.lr.ph.i426.us.us.us, label %._crit_edge.i421.us.us.us, !llvm.loop !101

._crit_edge.i421.us.us.us:                        ; preds = %.lr.ph.i426.us.us.us, %.thread96.i420.us.us.us
  %.054.lcssa.i422.us.us.us = phi i32 [ 0, %.thread96.i420.us.us.us ], [ %.155.i430.us.us.us, %.lr.ph.i426.us.us.us ] ; 2 uses
  %i.vb = load i8, ptr %i.pd, align 1, !tbaa !30
  %.not63.i423.us.us.us = icmp eq i8 %i.vb, 0
  br i1 %.not63.i423.us.us.us, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %._crit_edge.i421.us.us.us
  %i.vc = load ptr, ptr %i.pe, align 8, !tbaa !54
  %8 = zext nneg i32 %.054.lcssa.i422.us.us.us to i64
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %8
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !25
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge.i421.us.us.us
  %.2.i424.us.us.us = phi i32 [ %.054.lcssa.i422.us.us.us, %._crit_edge.i421.us.us.us ], [ %i.ve, %bb.ep ] ; 2 uses
  %i.vf = load ptr, ptr %i.pb, align 8, !tbaa !36
  %i.vg = sext i32 %.2.i424.us.us.us to i64
  %i.vh = getelementptr inbounds i8, ptr %i.vf, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !29
  %i.vj = zext i8 %i.vi to i32                    ; 3 uses
  %i.vk = load i32, ptr %i.cx, align 8, !tbaa !92 ; 2 uses
  %.not64.i425.us.us.us = icmp slt i32 %i.vk, %i.vj
  br i1 %.not64.i425.us.us.us, label %codebook_decode_scalar_raw.exit434.thread596, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.vl = lshr i32 %i.us, %i.vj
  store i32 %i.vl, ptr %i.cy, align 4, !tbaa !97
  %i.vm = sub nsw i32 %i.vk, %i.vj
  br label %codebook_decode_scalar_raw.exit434.us.us.us

codebook_decode_scalar_raw.exit434.us.us.us:      ; preds = %bb.er, %bb.en
  %.sink.i407.us.us.us = phi i32 [ %i.uo, %bb.en ], [ %i.vm, %bb.er ]
  %.158.ph.i408.us.us.us = phi i32 [ %i.uk, %bb.en ], [ %.2.i424.us.us.us, %bb.er ] ; 2 uses
  store i32 %.sink.i407.us.us.us, ptr %i.cx, align 8, !tbaa !92
  %i.vn = icmp slt i32 %.158.ph.i408.us.us.us, 0
  br i1 %i.vn, label %.thread.i364, label %codebook_decode_start.exit373.us.us.us

bb.es:                                            ; preds = %prep_huffman.exit.i362.us.us.us
  %i.vo = zext nneg i16 %i.se to i32
  %i.vp = load ptr, ptr %i.pb, align 8, !tbaa !36
  %i.vq = zext nneg i16 %i.se to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !29
  %i.vt = zext i8 %i.vs to i32                    ; 2 uses
  %i.vu = lshr i32 %i.sa, %i.vt
  store i32 %i.vu, ptr %i.cy, align 4, !tbaa !97
  %i.vv = load i32, ptr %i.cx, align 8, !tbaa !92
  %i.vw = sub nsw i32 %i.vv, %i.vt                ; 2 uses
  %i.vx = icmp slt i32 %i.vw, 0
  %spec.select.i370.us.us.us = call i32 @llvm.smax.i32(i32 %i.vw, i32 0)
  store i32 %spec.select.i370.us.us.us, ptr %i.cx, align 8, !tbaa !92
  br i1 %i.vx, label %.thread.i364, label %codebook_decode_start.exit373.us.us.us

codebook_decode_start.exit373.us.us.us:           ; preds = %bb.es, %codebook_decode_scalar_raw.exit434.us.us.us
  %.025.i363.us.us.us = phi i32 [ %i.vo, %bb.es ], [ %.158.ph.i408.us.us.us, %codebook_decode_scalar_raw.exit434.us.us.us ]
  %i.vy = trunc nuw nsw i64 %indvars.iv.i354.us.us.us to i32
  %i.vz = add i32 %i.on, %i.vy
  %i.wa = sub i32 %i.ol, %i.vz
  %i.wb = load i32, ptr %i.op, align 8, !tbaa !104 ; 2 uses
  %spec.select.i.i.us.us.us = call i32 @llvm.smin.i32(i32 %i.wa, i32 %i.wb) ; 5 uses
  %i.wc = icmp sgt i32 %spec.select.i.i.us.us.us, 0
  br i1 %i.wc, label %.lr.ph.i.i.us.us.us, label %.loopexit.i.us.us.us

.lr.ph.i.i.us.us.us:                              ; preds = %codebook_decode_start.exit373.us.us.us
  %i.wd = mul i32 %i.wb, %.025.i363.us.us.us
  %i.we = load ptr, ptr %i.ou, align 8, !tbaa !106 ; 2 uses
  %i.wf = load i8, ptr %i.ov, align 2, !tbaa !105
  %.fr.i.i.us.us.us = freeze i8 %i.wf
  %.not.i.i.us.us.us = icmp eq i8 %.fr.i.i.us.us.us, 0
  %i.wg = sext i32 %i.wd to i64                   ; 2 uses
  %wide.trip.count34.i.i.us.us.us = zext nneg i32 %spec.select.i.i.us.us.us to i64 ; 9 uses
  %invariant.gep37.i.i.us.us.us = getelementptr [4 x i8], ptr %i.we, i64 %i.wg ; 8 uses
  br i1 %.not.i.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader, label %.lr.ph.split.i.i.us.us.us.preheader

.lr.ph.split.i.i.us.us.us.preheader:              ; preds = %.lr.ph.i.i.us.us.us
  %xtraiter1055 = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %i.wh = icmp eq i32 %spec.select.i.i.us.us.us, 1
  br i1 %i.wh, label %.lr.ph.split.i.i.us.us.us.epil.preheader, label %.lr.ph.split.i.i.us.us.us.preheader.new

.lr.ph.split.i.i.us.us.us.preheader.new:          ; preds = %.lr.ph.split.i.i.us.us.us.preheader
  %unroll_iter1059 = and i64 %wide.trip.count34.i.i.us.us.us, 2147483646
  br label %.lr.ph.split.i.i.us.us.us

.lr.ph.split.us.i.i.us.us.us.preheader:           ; preds = %.lr.ph.i.i.us.us.us
  %min.iters.check = icmp ugt i32 %spec.select.i.i.us.us.us, 7
  %or.cond1009 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond1009, label %vector.memcheck, label %.lr.ph.split.us.i.i.us.us.us.preheader1016

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader
  %i.wi = shl nuw nsw i64 %wide.trip.count34.i.i.us.us.us, 2
  %scevgep = getelementptr i8, ptr %i.pf, i64 %i.wi
  %i.wj = add nsw i64 %i.wg, %wide.trip.count34.i.i.us.us.us
  %i.wk = shl nsw i64 %i.wj, 2
  %scevgep985 = getelementptr i8, ptr %i.we, i64 %i.wk
  %bound0 = icmp ult ptr %i.pf, %scevgep985
  %bound1 = icmp ult ptr %invariant.gep37.i.i.us.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.i.i.us.us.us.preheader1016, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count34.i.i.us.us.us, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.wl = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %index ; 2 uses
  %i.wm = getelementptr i8, ptr %i.wl, i64 16
  %wide.load = load <4 x float>, ptr %i.wl, align 4, !tbaa !56, !alias.scope !164
  %wide.load986 = load <4 x float>, ptr %i.wm, align 4, !tbaa !56, !alias.scope !164
  %i.wn = fadd <4 x float> %wide.load, zeroinitializer
  %i.wo = fadd <4 x float> %wide.load986, zeroinitializer
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %index ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16 ; 2 uses
  %wide.load987 = load <4 x float>, ptr %i.wp, align 4, !tbaa !56, !alias.scope !167, !noalias !164
  %wide.load988 = load <4 x float>, ptr %i.wq, align 4, !tbaa !56, !alias.scope !167, !noalias !164
  %i.wr = fadd <4 x float> %wide.load987, %i.wn
  %i.ws = fadd <4 x float> %wide.load988, %i.wo
  store <4 x float> %i.wr, ptr %i.wp, align 4, !tbaa !56, !alias.scope !167, !noalias !164
  store <4 x float> %i.ws, ptr %i.wq, align 4, !tbaa !56, !alias.scope !167, !noalias !164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wt = icmp eq i64 %index.next, %n.vec
  br i1 %i.wt, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count34.i.i.us.us.us
  br i1 %cmp.n, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us.preheader1016

.lr.ph.split.us.i.i.us.us.us.preheader1016:       ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.us.us.us.preheader, %middle.block
  %indvars.iv31.i.i.us.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter1061 = and i64 %wide.trip.count34.i.i.us.us.us, 1
  %lcmp.mod1062.not = icmp eq i64 %xtraiter1061, 0
  br i1 %lcmp.mod1062.not, label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, label %.lr.ph.split.us.i.i.us.us.us.prol

.lr.ph.split.us.i.i.us.us.us.prol:                ; preds = %.lr.ph.split.us.i.i.us.us.us.preheader1016
  %gep38.i.i.us.us.us.prol = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us.ph
  %i.wu = load float, ptr %gep38.i.i.us.us.us.prol, align 4, !tbaa !56
  %i.wv = fadd float %i.wu, 0.000000e+00
  %i.ww = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us.ph, %i.ow
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.ww ; 2 uses
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !56
  %i.wz = fadd float %i.wy, %i.wv
  store float %i.wz, ptr %i.wx, align 4, !tbaa !56
  %indvars.iv.next32.i.i.us.us.us.prol = or disjoint i64 %indvars.iv31.i.i.us.us.us.ph, 1
  br label %.lr.ph.split.us.i.i.us.us.us.prol.loopexit

.lr.ph.split.us.i.i.us.us.us.prol.loopexit:       ; preds = %.lr.ph.split.us.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.preheader1016
  %indvars.iv31.i.i.us.us.us.unr = phi i64 [ %indvars.iv31.i.i.us.us.us.ph, %.lr.ph.split.us.i.i.us.us.us.preheader1016 ], [ %indvars.iv.next32.i.i.us.us.us.prol, %.lr.ph.split.us.i.i.us.us.us.prol ]
  %i.xa = add nsw i64 %wide.trip.count34.i.i.us.us.us, -1
  %i.xb = icmp eq i64 %indvars.iv31.i.i.us.us.us.ph, %i.xa
  br i1 %i.xb, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us

.lr.ph.split.i.i.us.us.us:                        ; preds = %.lr.ph.split.i.i.us.us.us, %.lr.ph.split.i.i.us.us.us.preheader.new
  %indvars.iv.i.i.us.us.us = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %indvars.iv.next.i.i.us.us.us.1, %.lr.ph.split.i.i.us.us.us ] ; 4 uses
  %.028.i.i.us.us.us = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %i.xj, %.lr.ph.split.i.i.us.us.us ]
  %niter1060 = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader.new ], [ %niter1060.next.1, %.lr.ph.split.i.i.us.us.us ]
  %gep.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us
  %i.xc = load float, ptr %gep.i.i.us.us.us, align 4, !tbaa !56
  %i.xd = fadd float %.028.i.i.us.us.us, %i.xc    ; 2 uses
  %i.xe = mul nuw nsw i64 %indvars.iv.i.i.us.us.us, %i.ow
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.xe ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !56
  %i.xh = fadd float %i.xg, %i.xd
  store float %i.xh, ptr %i.xf, align 4, !tbaa !56
  %indvars.iv.next.i.i.us.us.us = or disjoint i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %gep.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next.i.i.us.us.us
  %i.xi = load float, ptr %gep.i.i.us.us.us.1, align 4, !tbaa !56
  %i.xj = fadd float %i.xd, %i.xi                 ; 3 uses
  %i.xk = mul nuw nsw i64 %indvars.iv.next.i.i.us.us.us, %i.ow
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.xk ; 2 uses
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !56
  %i.xn = fadd float %i.xm, %i.xj
  store float %i.xn, ptr %i.xl, align 4, !tbaa !56
  %indvars.iv.next.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 2 ; 2 uses
  %niter1060.next.1 = add i64 %niter1060, 2       ; 2 uses
  %niter1060.ncmp.1 = icmp eq i64 %niter1060.next.1, %unroll_iter1059
  br i1 %niter1060.ncmp.1, label %.loopexit.i.us.us.us.loopexit1017.unr-lcssa, label %.lr.ph.split.i.i.us.us.us, !llvm.loop !123

.lr.ph.split.us.i.i.us.us.us:                     ; preds = %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us
  %indvars.iv31.i.i.us.us.us = phi i64 [ %indvars.iv.next32.i.i.us.us.us.1, %.lr.ph.split.us.i.i.us.us.us ], [ %indvars.iv31.i.i.us.us.us.unr, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit ] ; 4 uses
  %gep38.i.i.us.us.us = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv31.i.i.us.us.us
  %i.xo = load float, ptr %gep38.i.i.us.us.us, align 4, !tbaa !56
  %i.xp = fadd float %i.xo, 0.000000e+00
  %i.xq = mul nuw nsw i64 %indvars.iv31.i.i.us.us.us, %i.ow
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.xq ; 2 uses
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !56
  %i.xt = fadd float %i.xs, %i.xp
  store float %i.xt, ptr %i.xr, align 4, !tbaa !56
  %indvars.iv.next32.i.i.us.us.us = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 1 ; 2 uses
  %gep38.i.i.us.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.next32.i.i.us.us.us
  %i.xu = load float, ptr %gep38.i.i.us.us.us.1, align 4, !tbaa !56
  %i.xv = fadd float %i.xu, 0.000000e+00
  %i.xw = mul nuw nsw i64 %indvars.iv.next32.i.i.us.us.us, %i.ow
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.xw ; 2 uses
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !56
  %i.xz = fadd float %i.xy, %i.xv
  store float %i.xz, ptr %i.xx, align 4, !tbaa !56
  %indvars.iv.next32.i.i.us.us.us.1 = add nuw nsw i64 %indvars.iv31.i.i.us.us.us, 2 ; 2 uses
  %exitcond35.not.i.i.us.us.us.1 = icmp eq i64 %indvars.iv.next32.i.i.us.us.us.1, %wide.trip.count34.i.i.us.us.us
  br i1 %exitcond35.not.i.i.us.us.us.1, label %.loopexit.i.us.us.us, label %.lr.ph.split.us.i.i.us.us.us, !llvm.loop !170

.loopexit.i.us.us.us.loopexit1017.unr-lcssa:      ; preds = %.lr.ph.split.i.i.us.us.us
  %lcmp.mod1057.not = icmp eq i64 %xtraiter1055, 0
  br i1 %lcmp.mod1057.not, label %.loopexit.i.us.us.us, label %.lr.ph.split.i.i.us.us.us.epil.preheader

.lr.ph.split.i.i.us.us.us.epil.preheader:         ; preds = %.loopexit.i.us.us.us.loopexit1017.unr-lcssa, %.lr.ph.split.i.i.us.us.us.preheader
  %indvars.iv.i.i.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.i.i.us.us.us.preheader ], [ %indvars.iv.next.i.i.us.us.us.1, %.loopexit.i.us.us.us.loopexit1017.unr-lcssa ] ; 2 uses
  %.028.i.i.us.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.i.i.us.us.us.preheader ], [ %i.xj, %.loopexit.i.us.us.us.loopexit1017.unr-lcssa ]
  %lcmp.mod1058 = trunc i32 %spec.select.i.i.us.us.us to i1
  call void @llvm.assume(i1 %lcmp.mod1058)
  %gep.i.i.us.us.us.epil = getelementptr [4 x i8], ptr %invariant.gep37.i.i.us.us.us, i64 %indvars.iv.i.i.us.us.us.epil.init
  %i.ya = load float, ptr %gep.i.i.us.us.us.epil, align 4, !tbaa !56
  %i.yb = fadd float %.028.i.i.us.us.us.epil.init, %i.ya
  %i.yc = mul nuw nsw i64 %indvars.iv.i.i.us.us.us.epil.init, %i.ow
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.yc ; 2 uses
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !56
  %i.yf = fadd float %i.ye, %i.yb
  store float %i.yf, ptr %i.yd, align 4, !tbaa !56
  br label %.loopexit.i.us.us.us

.loopexit.i.us.us.us:                             ; preds = %.lr.ph.split.i.i.us.us.us.epil.preheader, %.loopexit.i.us.us.us.loopexit1017.unr-lcssa, %.lr.ph.split.us.i.i.us.us.us.prol.loopexit, %.lr.ph.split.us.i.i.us.us.us, %middle.block, %codebook_decode_start.exit373.us.us.us
  %indvars.iv.next.i355.us.us.us = add nuw nsw i64 %indvars.iv.i354.us.us.us, 1 ; 2 uses
  %exitcond.not.i356.us.us.us = icmp eq i64 %indvars.iv.next.i355.us.us.us, %i.ow
  br i1 %exitcond.not.i356.us.us.us, label %.thread629.us.us.us, label %bb.ca, !llvm.loop !134

.thread629.us.us.us:                              ; preds = %.loopexit.i.us.us.us, %bb.bz, %bb.by, %bb.bx
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next796, %wide.trip.count798
  br i1 %exitcond799.not, label %._crit_edge700.split.us.us.us, label %bb.bx, !llvm.loop !171
end_hunk_2
begin_hunk_3_@decode_residue:bb.a
  %.1.i17.i542.us = phi i8 [ %i.aej, %bb.hj ], [ %i.aef, %bb.hh ]
  %.not6.i543.not.us = icmp eq i8 %.1.i17.i542.us, 83
  br i1 %.not6.i543.not.us, label %start_page.exit.i.i466.us, label %start_page.exit.thread.i.i471.us

start_page.exit.i.i466.us:                        ; preds = %capture_pattern.exit545.us
  %i.aek = call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i467.us = icmp eq i32 %i.aek, 0
  br i1 %.not20.i.i467.us, label %.loopexit649.us, label %bb.hk

bb.hk:                                            ; preds = %start_page.exit.i.i466.us
  %i.ael = load i8, ptr %i.de, align 1, !tbaa !79
  %i.aem = and i8 %i.ael, 1
  %.not21.i.i468.us = icmp eq i8 %i.aem, 0
  br i1 %.not21.i.i468.us, label %bb.hv, label %._crit_edge.i.i469.us

._crit_edge.i.i469.us:                            ; preds = %bb.hk
  %.pre.i.i470.us = load i32, ptr %i.db, align 8, !tbaa !89
  br label %bb.hl

bb.hl:                                            ; preds = %._crit_edge.i.i469.us, %bb.gp
  %i.aen = phi i32 [ %.pre.i.i470.us, %._crit_edge.i.i469.us ], [ %i.acz, %bb.gp ] ; 3 uses
  %i.aeo = add nsw i32 %i.aen, 1                  ; 2 uses
  store i32 %i.aeo, ptr %i.db, align 8, !tbaa !89
  %i.aep = sext i32 %i.aen to i64
  %i.aeq = getelementptr inbounds i8, ptr %i.df, i64 %i.aep
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !29 ; 4 uses
  %.not22.i.i461.us = icmp eq i8 %i.aer, -1
  br i1 %.not22.i.i461.us, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  store i32 1, ptr %i.da, align 4, !tbaa !91
  store i32 %i.aen, ptr %i.dd, align 8, !tbaa !95
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.aes = load i32, ptr %i.dc, align 8, !tbaa !81
  %.not23.i.i462.us = icmp slt i32 %i.aeo, %i.aes
  br i1 %.not23.i.i462.us, label %next_segment.exit.i463.us, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  store i32 -1, ptr %i.db, align 8, !tbaa !89
  br label %next_segment.exit.i463.us

next_segment.exit.i463.us:                        ; preds = %bb.ho, %bb.hn
  store i8 %i.aer, ptr %i.cz, align 4, !tbaa !94
  %.not7.i464.us = icmp eq i8 %i.aer, 0
  br i1 %.not7.i464.us, label %prep_huffman.exit.i374.us, label %.thread612.us

.thread612.us:                                    ; preds = %next_segment.exit.i463.us, %bb.go, %bb.gn
  %i.aet = phi i8 [ %i.aer, %next_segment.exit.i463.us ], [ %.pr611.us, %bb.go ], [ %.pr611.us, %bb.gn ]
  %i.aeu = add i8 %i.aet, -1
  store i8 %i.aeu, ptr %i.cz, align 4, !tbaa !94
  %i.aev = load i32, ptr %i.dg, align 4, !tbaa !93
  %i.aew = add nsw i32 %i.aev, 1
  store i32 %i.aew, ptr %i.dg, align 4, !tbaa !93
  %i.aex = load ptr, ptr %i.dh, align 8, !tbaa !70 ; 4 uses
  %.not.i8.i455.us = icmp eq ptr %i.aex, null
  br i1 %.not.i8.i455.us, label %bb.hs, label %bb.hp

bb.hp:                                            ; preds = %.thread612.us
  %i.aey = load ptr, ptr %i.di, align 8, !tbaa !71
  %.not11.i.i456.us = icmp ult ptr %i.aex, %i.aey
  br i1 %.not11.i.i456.us, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit472.thread618.us

bb.hr:                                            ; preds = %bb.hp
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 1
  store ptr %i.aez, ptr %i.dh, align 8, !tbaa !70
  %i.afa = load i8, ptr %i.aex, align 1, !tbaa !29
  br label %get8_packet_raw.exit472.us

bb.hs:                                            ; preds = %.thread612.us
  %i.afb = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.afc = call i32 @fgetc(ptr noundef %i.afb)    ; 2 uses
  %i.afd = icmp eq i32 %i.afc, -1
  br i1 %i.afd, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.afe = trunc i32 %i.afc to i8
  br label %get8_packet_raw.exit472.us

get8_packet_raw.exit472.us:                       ; preds = %bb.ht, %bb.hr
  %.1.i.i458.us = phi i8 [ %i.afe, %bb.ht ], [ %i.afa, %bb.hr ]
  %i.aff = zext i8 %.1.i.i458.us to i32
  br label %get8_packet_raw.exit472.thread618.us

bb.hu:                                            ; preds = %bb.hs
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %get8_packet_raw.exit472.thread618.us

get8_packet_raw.exit472.thread618.us:             ; preds = %bb.hu, %get8_packet_raw.exit472.us, %bb.hq
  %i.afg = phi i32 [ %i.aff, %get8_packet_raw.exit472.us ], [ 0, %bb.hq ], [ 0, %bb.hu ]
  %i.afh = load i32, ptr %i.cx, align 8, !tbaa !92 ; 3 uses
  %i.afi = shl i32 %i.afg, %i.afh
  %i.afj = load i32, ptr %i.cy, align 4, !tbaa !97
  %i.afk = add i32 %i.afj, %i.afi
  store i32 %i.afk, ptr %i.cy, align 4, !tbaa !97
  %i.afl = add nsw i32 %i.afh, 8
  store i32 %i.afl, ptr %i.cx, align 8, !tbaa !92
  %i.afm = icmp slt i32 %i.afh, 17
  br i1 %i.afm, label %bb.gm, label %prep_huffman.exit.i374.us, !llvm.loop !100

bb.hv:                                            ; preds = %bb.hk
  store i32 32, ptr %i.dl, align 4
  br label %prep_huffman.exit.i374.us

start_page.exit.thread.i.i471.us.sink.split:      ; preds = %bb.gt, %bb.gy, %bb.hd, %bb.hi, %bb.hg, %bb.hb, %bb.gw, %bb.gr
  store i32 1, ptr %i.dj, align 8, !tbaa !72
  br label %start_page.exit.thread.i.i471.us

start_page.exit.thread.i.i471.us:                 ; preds = %get8.exit.i526.us, %get8.exit10.i531.us, %get8.exit14.i536.us, %capture_pattern.exit545.us, %start_page.exit.thread.i.i471.us.sink.split
  store i32 30, ptr %i.dl, align 4
  br label %.loopexit649.us

.loopexit649.us:                                  ; preds = %start_page.exit.i.i466.us, %start_page.exit.thread.i.i471.us
  store i32 1, ptr %i.da, align 4, !tbaa !91
  br label %prep_huffman.exit.i374.us

prep_huffman.exit.i374.us:                        ; preds = %bb.gn, %next_segment.exit.i463.us, %get8_packet_raw.exit472.thread618.us, %.loopexit649.us, %bb.hv, %bb.gj
  %i.afn = load ptr, ptr %i.zn, align 8, !tbaa !35 ; 2 uses
  %i.afo = icmp eq ptr %i.afn, null
  br i1 %i.afo, label %bb.ic, label %.thread.i375.us

.thread.i375.us:                                  ; preds = %prep_huffman.exit.i374.us
  %i.afp = load i32, ptr %i.zo, align 4, !tbaa !50 ; 3 uses
  %i.afq = icmp sgt i32 %i.afp, 8
  br i1 %i.afq, label %bb.hw, label %.thread66.i.us

.thread66.i.us:                                   ; preds = %.thread.i375.us
  %i.afr = icmp sgt i32 %i.afp, 0
  br i1 %i.afr, label %.lr.ph76.i.us, label %._crit_edge77.i

bb.hw:                                            ; preds = %.thread.i375.us
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !48 ; 2 uses
  %.not61.i.us = icmp eq ptr %.pre.i.us, null
  br i1 %.not61.i.us, label %.lr.ph76.i.us, label %.thread96.i.us

.lr.ph76.i.us:                                    ; preds = %bb.hw, %.thread66.i.us
  %i.afs = load ptr, ptr %i.zp, align 8, !tbaa !36 ; 2 uses
  %wide.trip.count.i376.us = zext nneg i32 %i.afp to i64
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hz, %.lr.ph76.i.us
  %indvars.iv.i377.us = phi i64 [ 0, %.lr.ph76.i.us ], [ %indvars.iv.next.i378.us, %bb.hz ] ; 5 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 %indvars.iv.i377.us
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !29 ; 2 uses
  %i.afv = icmp eq i8 %i.afu, -1
  br i1 %i.afv, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.afw = zext i8 %i.afu to i32                  ; 3 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %indvars.iv.i377.us
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !25
  %i.afz = load i32, ptr %i.cy, align 4, !tbaa !97 ; 2 uses
  %notmask.i.us = shl nsw i32 -1, %i.afw
  %i.aga = xor i32 %notmask.i.us, -1
  %i.agb = and i32 %i.afz, %i.aga
  %i.agc = icmp eq i32 %i.afy, %i.agb
  br i1 %i.agc, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %indvars.iv.next.i378.us = add nuw nsw i64 %indvars.iv.i377.us, 1 ; 2 uses
  %exitcond.not.i379.us = icmp eq i64 %indvars.iv.next.i378.us, %wide.trip.count.i376.us
  br i1 %exitcond.not.i379.us, label %._crit_edge77.i, label %bb.hx, !llvm.loop !102

bb.ia:                                            ; preds = %bb.hy
  %i.agd = load i32, ptr %i.cx, align 8, !tbaa !92 ; 2 uses
  %.not62.i.us = icmp slt i32 %i.agd, %i.afw
  br i1 %.not62.i.us, label %codebook_decode_scalar_raw.exit.thread621, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.age = getelementptr inbounds nuw i8, ptr %i.afs, i64 %indvars.iv.i377.us
  %i.agf = trunc nuw nsw i64 %indvars.iv.i377.us to i32
  %i.agg = lshr i32 %i.afz, %i.afw
  store i32 %i.agg, ptr %i.cy, align 4, !tbaa !97
  %i.agh = load i8, ptr %i.age, align 1, !tbaa !29
  %i.agi = zext i8 %i.agh to i32
  %i.agj = sub nsw i32 %i.agd, %i.agi
  br label %codebook_decode_scalar_raw.exit.us

bb.ic:                                            ; preds = %prep_huffman.exit.i374.us
  %i.agk = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !48 ; 2 uses
  %i.agl = icmp eq ptr %i.agk, null
  br i1 %i.agl, label %.thread.i, label %.thread96.i.us

.thread96.i.us:                                   ; preds = %bb.ic, %bb.hw
  %i.agm = phi ptr [ %.pre.i.us, %bb.hw ], [ %i.agk, %bb.ic ]
  %i.agn = load i32, ptr %i.cy, align 4, !tbaa !97 ; 2 uses
  %i.ago = call noundef i32 @llvm.bitreverse.i32(i32 %i.agn)
  %i.agp = load i32, ptr %i.zq, align 8, !tbaa !49 ; 2 uses
  %i.agq = icmp sgt i32 %i.agp, 1
  br i1 %i.agq, label %.lr.ph.i380.us, label %._crit_edge.i.us

.lr.ph.i380.us:                                   ; preds = %.thread96.i.us, %.lr.ph.i380.us
  %.072.i.us = phi i32 [ %.1.i.us, %.lr.ph.i380.us ], [ %i.agp, %.thread96.i.us ] ; 2 uses
  %.05471.i.us = phi i32 [ %.155.i.us, %.lr.ph.i380.us ], [ 0, %.thread96.i.us ] ; 2 uses
  %i.agr = lshr i32 %.072.i.us, 1                 ; 3 uses
  %i.ags = add nuw nsw i32 %i.agr, %.05471.i.us   ; 2 uses
  %9 = zext nneg i32 %i.ags to i64
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %9
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !25
  %.not65.i.us = icmp ugt i32 %i.agu, %i.ago      ; 2 uses
  %i.agv = sub nsw i32 %.072.i.us, %i.agr
  %.155.i.us = select i1 %.not65.i.us, i32 %.05471.i.us, i32 %i.ags ; 2 uses
  %.1.i.us = select i1 %.not65.i.us, i32 %i.agr, i32 %i.agv ; 2 uses
  %10 = icmp sgt i32 %.1.i.us, 1
  br i1 %10, label %.lr.ph.i380.us, label %._crit_edge.i.us, !llvm.loop !101

._crit_edge.i.us:                                 ; preds = %.lr.ph.i380.us, %.thread96.i.us
  %.054.lcssa.i.us = phi i32 [ 0, %.thread96.i.us ], [ %.155.i.us, %.lr.ph.i380.us ] ; 2 uses
  %i.agw = load i8, ptr %i.zr, align 1, !tbaa !30
  %.not63.i.us = icmp eq i8 %i.agw, 0
  br i1 %.not63.i.us, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %._crit_edge.i.us
  %i.agx = load ptr, ptr %i.zs, align 8, !tbaa !54
  %11 = zext nneg i32 %.054.lcssa.i.us to i64
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %11
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !25
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %._crit_edge.i.us
  %.2.i.us = phi i32 [ %.054.lcssa.i.us, %._crit_edge.i.us ], [ %i.agz, %bb.id ] ; 2 uses
  %i.aha = load ptr, ptr %i.zp, align 8, !tbaa !36
  %i.ahb = sext i32 %.2.i.us to i64
  %i.ahc = getelementptr inbounds i8, ptr %i.aha, i64 %i.ahb
  %i.ahd = load i8, ptr %i.ahc, align 1, !tbaa !29
  %i.ahe = zext i8 %i.ahd to i32                  ; 3 uses
  %i.ahf = load i32, ptr %i.cx, align 8, !tbaa !92 ; 2 uses
  %.not64.i.us = icmp slt i32 %i.ahf, %i.ahe
  br i1 %.not64.i.us, label %codebook_decode_scalar_raw.exit.thread621, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ahg = lshr i32 %i.agn, %i.ahe
  store i32 %i.ahg, ptr %i.cy, align 4, !tbaa !97
  %i.ahh = sub nsw i32 %i.ahf, %i.ahe
  br label %codebook_decode_scalar_raw.exit.us

codebook_decode_scalar_raw.exit.us:               ; preds = %bb.if, %bb.ib
  %.sink.i.us = phi i32 [ %i.agj, %bb.ib ], [ %i.ahh, %bb.if ]
  %.158.ph.i.us = phi i32 [ %i.agf, %bb.ib ], [ %.2.i.us, %bb.if ] ; 2 uses
  store i32 %.sink.i.us, ptr %i.cx, align 8, !tbaa !92
  %i.ahi = icmp slt i32 %.158.ph.i.us, 0
  br i1 %i.ahi, label %.thread.i, label %codebook_decode_start.exit.us

bb.ig:                                            ; preds = %prep_huffman.exit.i.us
  %i.ahj = zext nneg i16 %i.act to i32
  %i.ahk = load ptr, ptr %i.zp, align 8, !tbaa !36
  %i.ahl = zext nneg i16 %i.act to i64
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahl
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !29
  %i.aho = zext i8 %i.ahn to i32                  ; 2 uses
  %i.ahp = lshr i32 %i.acp, %i.aho
  store i32 %i.ahp, ptr %i.cy, align 4, !tbaa !97
  %i.ahq = load i32, ptr %i.cx, align 8, !tbaa !92
  %i.ahr = sub nsw i32 %i.ahq, %i.aho             ; 2 uses
  %i.ahs = icmp slt i32 %i.ahr, 0
  %spec.select.i.us = call i32 @llvm.smax.i32(i32 %i.ahr, i32 0)
  store i32 %spec.select.i.us, ptr %i.cx, align 8, !tbaa !92
  br i1 %i.ahs, label %.thread.i, label %codebook_decode_start.exit.us

codebook_decode_start.exit.us:                    ; preds = %bb.ig, %codebook_decode_scalar_raw.exit.us
  %.025.i.us = phi i32 [ %i.ahj, %bb.ig ], [ %.158.ph.i.us, %codebook_decode_scalar_raw.exit.us ]
  %i.aht = sub i32 %i.zb, %.154.i.us
  %i.ahu = load i32, ptr %i.zd, align 8, !tbaa !104 ; 4 uses
  %spec.select.i36.i.us = call i32 @llvm.smin.i32(i32 %i.aht, i32 %i.ahu) ; 6 uses
  %i.ahv = mul nsw i32 %i.ahu, %.025.i.us         ; 2 uses
  %i.ahw = load i8, ptr %i.zi, align 2, !tbaa !105
  %.not.i37.i.us = icmp eq i8 %i.ahw, 0
  %i.ahx = icmp sgt i32 %spec.select.i36.i.us, 0  ; 2 uses
  br i1 %.not.i37.i.us, label %.preheader.i.i.us, label %.preheader36.i.i.us

.preheader36.i.i.us:                              ; preds = %codebook_decode_start.exit.us
  br i1 %i.ahx, label %.lr.ph.i38.i.us, label %.loopexit49.i.us

.lr.ph.i38.i.us:                                  ; preds = %.preheader36.i.i.us
  %i.ahy = load ptr, ptr %i.zj, align 8, !tbaa !106
  %i.ahz = sext i32 %i.ahv to i64
  %wide.trip.count.i.i.us = zext nneg i32 %spec.select.i36.i.us to i64 ; 2 uses
  %invariant.gep.i.i.us = getelementptr [4 x i8], ptr %i.ahy, i64 %i.ahz ; 3 uses
  %xtraiter1047 = and i64 %wide.trip.count.i.i.us, 1
  %i.aia = icmp eq i32 %spec.select.i36.i.us, 1
  br i1 %i.aia, label %.epil.preheader1046, label %.lr.ph.i38.i.us.new

.lr.ph.i38.i.us.new:                              ; preds = %.lr.ph.i38.i.us
  %unroll_iter1051 = and i64 %wide.trip.count.i.i.us, 2147483646
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ih, %.lr.ph.i38.i.us.new
  %indvars.iv.i39.i.us = phi i64 [ 0, %.lr.ph.i38.i.us.new ], [ %indvars.iv.next.i41.i.us.1, %bb.ih ] ; 4 uses
  %.03039.i.i.us = phi float [ 0.000000e+00, %.lr.ph.i38.i.us.new ], [ %i.aio, %bb.ih ]
  %niter1052 = phi i64 [ 0, %.lr.ph.i38.i.us.new ], [ %niter1052.next.1, %bb.ih ]
  %gep.i40.i.us = getelementptr [4 x i8], ptr %invariant.gep.i.i.us, i64 %indvars.iv.i39.i.us
  %i.aib = load float, ptr %gep.i40.i.us, align 4, !tbaa !56
  %i.aic = fadd float %.03039.i.i.us, %i.aib      ; 2 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %indvars.iv.i39.i.us ; 2 uses
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !56
  %i.aif = fadd float %i.aie, %i.aic
  store float %i.aif, ptr %i.aid, align 4, !tbaa !56
  %i.aig = load float, ptr %i.zk, align 8, !tbaa !113
  %i.aih = fadd float %i.aic, %i.aig
  %indvars.iv.next.i41.i.us = or disjoint i64 %indvars.iv.i39.i.us, 1 ; 2 uses
  %gep.i40.i.us.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.us, i64 %indvars.iv.next.i41.i.us
  %i.aii = load float, ptr %gep.i40.i.us.1, align 4, !tbaa !56
  %i.aij = fadd float %i.aih, %i.aii              ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %indvars.iv.next.i41.i.us ; 2 uses
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !56
  %i.aim = fadd float %i.ail, %i.aij
  store float %i.aim, ptr %i.aik, align 4, !tbaa !56
  %i.ain = load float, ptr %i.zk, align 8, !tbaa !113
  %i.aio = fadd float %i.aij, %i.ain              ; 2 uses
  %indvars.iv.next.i41.i.us.1 = add nuw nsw i64 %indvars.iv.i39.i.us, 2 ; 2 uses
  %niter1052.next.1 = add i64 %niter1052, 2       ; 2 uses
  %niter1052.ncmp.1 = icmp eq i64 %niter1052.next.1, %unroll_iter1051
  br i1 %niter1052.ncmp.1, label %.loopexit49.i.us.loopexit1020.unr-lcssa, label %bb.ih, !llvm.loop !114

.preheader.i.i.us:                                ; preds = %codebook_decode_start.exit.us
  br i1 %i.ahx, label %.lr.ph41.i.i.us, label %.loopexit49.i.us

.lr.ph41.i.i.us:                                  ; preds = %.preheader.i.i.us
  %i.aip = load ptr, ptr %i.zj, align 8, !tbaa !106 ; 2 uses
  %i.aiq = sext i32 %i.ahv to i64                 ; 2 uses
  %wide.trip.count47.i.i.us = zext nneg i32 %spec.select.i36.i.us to i64 ; 7 uses
  %invariant.gep51.i.i.us = getelementptr [4 x i8], ptr %i.aip, i64 %i.aiq ; 5 uses
  %min.iters.check996 = icmp ult i32 %spec.select.i36.i.us, 8
  br i1 %min.iters.check996, label %scalar.ph995.preheader, label %vector.memcheck989

vector.memcheck989:                               ; preds = %.lr.ph41.i.i.us
  %i.air = add nsw i64 %i.zt, %wide.trip.count47.i.i.us
  %i.ais = shl nsw i64 %i.air, 2
  %scevgep990 = getelementptr i8, ptr %i.za, i64 %i.ais
  %i.ait = add nsw i64 %i.aiq, %wide.trip.count47.i.i.us
  %i.aiu = shl nsw i64 %i.ait, 2
  %scevgep991 = getelementptr i8, ptr %i.aip, i64 %i.aiu
  %bound0992 = icmp ult ptr %i.zu, %scevgep991
  %bound1993 = icmp ult ptr %invariant.gep51.i.i.us, %scevgep990
  %found.conflict994 = and i1 %bound0992, %bound1993
  br i1 %found.conflict994, label %scalar.ph995.preheader, label %vector.ph997

vector.ph997:                                     ; preds = %vector.memcheck989
  %n.vec998 = and i64 %wide.trip.count47.i.i.us, 2147483640 ; 3 uses
  br label %vector.body999

vector.body999:                                   ; preds = %vector.body999, %vector.ph997
  %index1000 = phi i64 [ 0, %vector.ph997 ], [ %index.next1005, %vector.body999 ] ; 3 uses
  %i.aiv = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %index1000 ; 2 uses
  %i.aiw = getelementptr i8, ptr %i.aiv, i64 16
  %wide.load1001 = load <4 x float>, ptr %i.aiv, align 4, !tbaa !56, !alias.scope !173
  %wide.load1002 = load <4 x float>, ptr %i.aiw, align 4, !tbaa !56, !alias.scope !173
  %i.aix = fadd <4 x float> %wide.load1001, zeroinitializer
  %i.aiy = fadd <4 x float> %wide.load1002, zeroinitializer
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %index1000 ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16 ; 2 uses
  %wide.load1003 = load <4 x float>, ptr %i.aiz, align 4, !tbaa !56, !alias.scope !176, !noalias !173
  %wide.load1004 = load <4 x float>, ptr %i.aja, align 4, !tbaa !56, !alias.scope !176, !noalias !173
  %i.ajb = fadd <4 x float> %wide.load1003, %i.aix
  %i.ajc = fadd <4 x float> %wide.load1004, %i.aiy
  store <4 x float> %i.ajb, ptr %i.aiz, align 4, !tbaa !56, !alias.scope !176, !noalias !173
  store <4 x float> %i.ajc, ptr %i.aja, align 4, !tbaa !56, !alias.scope !176, !noalias !173
  %index.next1005 = add nuw i64 %index1000, 8     ; 2 uses
  %i.ajd = icmp eq i64 %index.next1005, %n.vec998
  br i1 %i.ajd, label %middle.block1006, label %vector.body999, !llvm.loop !178

middle.block1006:                                 ; preds = %vector.body999
  %cmp.n1007 = icmp eq i64 %n.vec998, %wide.trip.count47.i.i.us
  br i1 %cmp.n1007, label %.loopexit49.i.us, label %scalar.ph995.preheader

scalar.ph995.preheader:                           ; preds = %vector.memcheck989, %.lr.ph41.i.i.us, %middle.block1006
  %indvars.iv44.i.i.us.ph = phi i64 [ 0, %vector.memcheck989 ], [ 0, %.lr.ph41.i.i.us ], [ %n.vec998, %middle.block1006 ] ; 5 uses
  %xtraiter1053 = and i64 %wide.trip.count47.i.i.us, 1
  %lcmp.mod1054.not = icmp eq i64 %xtraiter1053, 0
  br i1 %lcmp.mod1054.not, label %scalar.ph995.prol.loopexit, label %scalar.ph995.prol

scalar.ph995.prol:                                ; preds = %scalar.ph995.preheader
  %gep52.i.i.us.prol = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %indvars.iv44.i.i.us.ph
  %i.aje = load float, ptr %gep52.i.i.us.prol, align 4, !tbaa !56
  %i.ajf = fadd float %i.aje, 0.000000e+00
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %indvars.iv44.i.i.us.ph ; 2 uses
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !56
  %i.aji = fadd float %i.ajh, %i.ajf
  store float %i.aji, ptr %i.ajg, align 4, !tbaa !56
  %indvars.iv.next45.i.i.us.prol = or disjoint i64 %indvars.iv44.i.i.us.ph, 1
  br label %scalar.ph995.prol.loopexit

scalar.ph995.prol.loopexit:                       ; preds = %scalar.ph995.prol, %scalar.ph995.preheader
  %indvars.iv44.i.i.us.unr = phi i64 [ %indvars.iv44.i.i.us.ph, %scalar.ph995.preheader ], [ %indvars.iv.next45.i.i.us.prol, %scalar.ph995.prol ]
  %i.ajj = add nsw i64 %wide.trip.count47.i.i.us, -1
  %i.ajk = icmp eq i64 %indvars.iv44.i.i.us.ph, %i.ajj
  br i1 %i.ajk, label %.loopexit49.i.us, label %scalar.ph995

scalar.ph995:                                     ; preds = %scalar.ph995.prol.loopexit, %scalar.ph995
  %indvars.iv44.i.i.us = phi i64 [ %indvars.iv.next45.i.i.us.1, %scalar.ph995 ], [ %indvars.iv44.i.i.us.unr, %scalar.ph995.prol.loopexit ] ; 4 uses
  %gep52.i.i.us = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %indvars.iv44.i.i.us
  %i.ajl = load float, ptr %gep52.i.i.us, align 4, !tbaa !56
  %i.ajm = fadd float %i.ajl, 0.000000e+00
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %indvars.iv44.i.i.us ; 2 uses
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !56
  %i.ajp = fadd float %i.ajo, %i.ajm
  store float %i.ajp, ptr %i.ajn, align 4, !tbaa !56
  %indvars.iv.next45.i.i.us = add nuw nsw i64 %indvars.iv44.i.i.us, 1 ; 2 uses
  %gep52.i.i.us.1 = getelementptr [4 x i8], ptr %invariant.gep51.i.i.us, i64 %indvars.iv.next45.i.i.us
  %i.ajq = load float, ptr %gep52.i.i.us.1, align 4, !tbaa !56
  %i.ajr = fadd float %i.ajq, 0.000000e+00
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %indvars.iv.next45.i.i.us ; 2 uses
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !56
  %i.aju = fadd float %i.ajt, %i.ajr
  store float %i.aju, ptr %i.ajs, align 4, !tbaa !56
  %indvars.iv.next45.i.i.us.1 = add nuw nsw i64 %indvars.iv44.i.i.us, 2 ; 2 uses
  %exitcond48.not.i.i.us.1 = icmp eq i64 %indvars.iv.next45.i.i.us.1, %wide.trip.count47.i.i.us
  br i1 %exitcond48.not.i.i.us.1, label %.loopexit49.i.us, label %scalar.ph995, !llvm.loop !179

.loopexit49.i.us.loopexit1020.unr-lcssa:          ; preds = %bb.ih
  %lcmp.mod1049.not = icmp eq i64 %xtraiter1047, 0
  br i1 %lcmp.mod1049.not, label %.loopexit49.i.us, label %.epil.preheader1046

.epil.preheader1046:                              ; preds = %.loopexit49.i.us.loopexit1020.unr-lcssa, %.lr.ph.i38.i.us
  %indvars.iv.i39.i.us.epil.init = phi i64 [ 0, %.lr.ph.i38.i.us ], [ %indvars.iv.next.i41.i.us.1, %.loopexit49.i.us.loopexit1020.unr-lcssa ] ; 2 uses
  %.03039.i.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i38.i.us ], [ %i.aio, %.loopexit49.i.us.loopexit1020.unr-lcssa ]
  %lcmp.mod1050 = trunc i32 %spec.select.i36.i.us to i1
  call void @llvm.assume(i1 %lcmp.mod1050)
  %gep.i40.i.us.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i.us, i64 %indvars.iv.i39.i.us.epil.init
  %i.ajv = load float, ptr %gep.i40.i.us.epil, align 4, !tbaa !56
  %i.ajw = fadd float %.03039.i.i.us.epil.init, %i.ajv
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %indvars.iv.i39.i.us.epil.init ; 2 uses
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !56
  %i.ajz = fadd float %i.ajy, %i.ajw
  store float %i.ajz, ptr %i.ajx, align 4, !tbaa !56
  br label %.loopexit49.i.us

.loopexit49.i.us:                                 ; preds = %.epil.preheader1046, %.loopexit49.i.us.loopexit1020.unr-lcssa, %scalar.ph995.prol.loopexit, %scalar.ph995, %middle.block1006, %.preheader.i.i.us, %.preheader36.i.i.us
  %i.aka = add nsw i32 %i.ahu, %.154.i.us         ; 2 uses
  %i.akb = add nsw i32 %i.ahu, %.03153.i.us
  %i.akc = icmp slt i32 %i.aka, %i.zb
  br i1 %i.akc, label %bb.ev, label %.thread629.us709, !llvm.loop !142

.thread629.us709:                                 ; preds = %.loopexit49.i.us, %.preheader.i.us, %bb.eu, %bb.et
end_hunk_3
begin_hunk_4_@vorbis_decode_packet_rest:bb.a
  %i.nl = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.nm = tail call i32 @fgetc(ptr noundef %i.nl) ; 2 uses
  %i.nn = icmp eq i32 %i.nm, -1
  br i1 %i.nn, label %start_page.exit.thread.i.i456.sink.split, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.no = trunc i32 %i.nm to i8
  br label %get8.exit14.i478

get8.exit14.i478:                                 ; preds = %bb.dj, %bb.dh
  %.1.i13.i479 = phi i8 [ %i.no, %bb.dj ], [ %i.nk, %bb.dh ]
  %.not5.i480 = icmp eq i8 %.1.i13.i479, 103
  br i1 %.not5.i480, label %bb.dk, label %start_page.exit.thread.i.i456

bb.dk:                                            ; preds = %get8.exit14.i478
  %i.np = load ptr, ptr %i.al, align 8, !tbaa !70 ; 4 uses
  %.not.i15.i481 = icmp eq ptr %i.np, null
  br i1 %.not.i15.i481, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nq = load ptr, ptr %i.am, align 8, !tbaa !71
  %.not11.i16.i482 = icmp ult ptr %i.np, %i.nq
  br i1 %.not11.i16.i482, label %bb.dm, label %start_page.exit.thread.i.i456.sink.split

bb.dm:                                            ; preds = %bb.dl
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  store ptr %i.nr, ptr %i.al, align 8, !tbaa !70
  %i.ns = load i8, ptr %i.np, align 1, !tbaa !29
  %i.nt = freeze i8 %i.ns
  br label %capture_pattern.exit487

bb.dn:                                            ; preds = %bb.dk
  %i.nu = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.nv = tail call i32 @fgetc(ptr noundef %i.nu) ; 2 uses
  %i.nw = icmp eq i32 %i.nv, -1
  br i1 %i.nw, label %start_page.exit.thread.i.i456.sink.split, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nx = trunc i32 %i.nv to i8
  br label %capture_pattern.exit487

capture_pattern.exit487:                          ; preds = %bb.dm, %bb.do
  %.1.i17.i484 = phi i8 [ %i.nx, %bb.do ], [ %i.nt, %bb.dm ]
  %.not6.i485.not = icmp eq i8 %.1.i17.i484, 83
  br i1 %.not6.i485.not, label %start_page.exit.i.i451, label %start_page.exit.thread.i.i456

start_page.exit.thread.i.i456.sink.split:         ; preds = %bb.dn, %bb.dl, %bb.di, %bb.dg, %bb.dd, %bb.db, %bb.cy, %bb.cw
  store i32 1, ptr %i.an, align 8, !tbaa !72
  br label %start_page.exit.thread.i.i456

start_page.exit.thread.i.i456:                    ; preds = %get8.exit10.i473, %get8.exit.i468, %get8.exit14.i478, %capture_pattern.exit487, %start_page.exit.thread.i.i456.sink.split
  store i32 30, ptr %i.ap, align 4
  br label %.loopexit525

start_page.exit.i.i451:                           ; preds = %capture_pattern.exit487
  %i.ny = tail call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i452 = icmp eq i32 %i.ny, 0
  br i1 %.not20.i.i452, label %.loopexit525, label %bb.dp

.loopexit525:                                     ; preds = %start_page.exit.i.i451, %start_page.exit.thread.i.i456
  store i32 1, ptr %i.ae, align 4, !tbaa !91
  br label %prep_huffman.exit.i

bb.dp:                                            ; preds = %start_page.exit.i.i451
  %i.nz = load i8, ptr %i.ai, align 1, !tbaa !79
  %i.oa = and i8 %i.nz, 1
  %.not21.i.i453 = icmp eq i8 %i.oa, 0
  br i1 %.not21.i.i453, label %bb.dq, label %._crit_edge.i.i454

._crit_edge.i.i454:                               ; preds = %bb.dp
  %.pre.i.i455 = load i32, ptr %i.af, align 8, !tbaa !89
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 32, ptr %i.ap, align 4
  br label %prep_huffman.exit.i

bb.dr:                                            ; preds = %._crit_edge.i.i454, %bb.cu
  %i.ob = phi i32 [ %.pre.i.i455, %._crit_edge.i.i454 ], [ %i.mn, %bb.cu ] ; 3 uses
  %i.oc = add nsw i32 %i.ob, 1                    ; 2 uses
  store i32 %i.oc, ptr %i.af, align 8, !tbaa !89
  %i.od = sext i32 %i.ob to i64
  %i.oe = getelementptr inbounds i8, ptr %i.aj, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !29  ; 4 uses
  %.not22.i.i446 = icmp eq i8 %i.of, -1
  br i1 %.not22.i.i446, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i32 1, ptr %i.ae, align 4, !tbaa !91
  store i32 %i.ob, ptr %i.ah, align 8, !tbaa !95
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.og = load i32, ptr %i.ag, align 8, !tbaa !81
  %.not23.i.i447 = icmp slt i32 %i.oc, %i.og
  br i1 %.not23.i.i447, label %next_segment.exit.i448, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i32 -1, ptr %i.af, align 8, !tbaa !89
  br label %next_segment.exit.i448

next_segment.exit.i448:                           ; preds = %bb.du, %bb.dt
  store i8 %i.of, ptr %i.ad, align 4, !tbaa !94
  %.not7.i449 = icmp eq i8 %i.of, 0
  br i1 %.not7.i449, label %prep_huffman.exit.i, label %.thread508

.thread508:                                       ; preds = %bb.cs, %next_segment.exit.i448, %bb.ct
  %i.oh = phi i8 [ %i.of, %next_segment.exit.i448 ], [ %.pr507, %bb.ct ], [ %.pr507, %bb.cs ]
  %i.oi = add i8 %i.oh, -1
  store i8 %i.oi, ptr %i.ad, align 4, !tbaa !94
  %i.oj = load i32, ptr %i.ak, align 4, !tbaa !93
  %i.ok = add nsw i32 %i.oj, 1
  store i32 %i.ok, ptr %i.ak, align 4, !tbaa !93
  %i.ol = load ptr, ptr %i.al, align 8, !tbaa !70 ; 4 uses
  %.not.i8.i440 = icmp eq ptr %i.ol, null
  br i1 %.not.i8.i440, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %.thread508
  %i.om = load ptr, ptr %i.am, align 8, !tbaa !71
  %.not11.i.i441 = icmp ult ptr %i.ol, %i.om
  br i1 %.not11.i.i441, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i32 1, ptr %i.an, align 8, !tbaa !72
  br label %get8_packet_raw.exit457.thread514

bb.dx:                                            ; preds = %bb.dv
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 1
  store ptr %i.on, ptr %i.al, align 8, !tbaa !70
  %i.oo = load i8, ptr %i.ol, align 1, !tbaa !29
  br label %get8_packet_raw.exit457

bb.dy:                                            ; preds = %.thread508
  %i.op = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.oq = tail call i32 @fgetc(ptr noundef %i.op) ; 2 uses
  %i.or = icmp eq i32 %i.oq, -1
  br i1 %i.or, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 1, ptr %i.an, align 8, !tbaa !72
  br label %get8_packet_raw.exit457.thread514

bb.ea:                                            ; preds = %bb.dy
  %i.os = trunc i32 %i.oq to i8
  br label %get8_packet_raw.exit457

get8_packet_raw.exit457:                          ; preds = %bb.dx, %bb.ea
  %.1.i.i443 = phi i8 [ %i.os, %bb.ea ], [ %i.oo, %bb.dx ]
  %i.ot = zext i8 %.1.i.i443 to i32
  br label %get8_packet_raw.exit457.thread514

get8_packet_raw.exit457.thread514:                ; preds = %get8_packet_raw.exit457, %bb.dz, %bb.dw
  %i.ou = phi i32 [ %i.ot, %get8_packet_raw.exit457 ], [ 0, %bb.dw ], [ 0, %bb.dz ]
  %i.ov = load i32, ptr %i.z, align 8, !tbaa !92  ; 3 uses
  %i.ow = shl i32 %i.ou, %i.ov
  %i.ox = load i32, ptr %i.aa, align 4, !tbaa !97
  %i.oy = add i32 %i.ox, %i.ow
  store i32 %i.oy, ptr %i.aa, align 4, !tbaa !97
  %i.oz = add nsw i32 %i.ov, 8
  store i32 %i.oz, ptr %i.z, align 8, !tbaa !92
  %i.pa = icmp slt i32 %i.ov, 17
  br i1 %i.pa, label %bb.cr, label %prep_huffman.exit.i, !llvm.loop !100

prep_huffman.exit.i:                              ; preds = %next_segment.exit.i448, %get8_packet_raw.exit457.thread514, %bb.cs, %.loopexit525, %bb.dq, %bb.co
  %i.pb = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !35 ; 2 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %bb.eb, label %.thread.i

bb.eb:                                            ; preds = %prep_huffman.exit.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.iz, i64 2096
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !48 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %codebook_decode_scalar_raw.exit, label %.thread96.i

.thread.i:                                        ; preds = %prep_huffman.exit.i
  %i.ph = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !50 ; 3 uses
  %i.pj = icmp sgt i32 %i.pi, 8
  br i1 %i.pj, label %bb.ec, label %.thread66.i

bb.ec:                                            ; preds = %.thread.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 2096
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48 ; 2 uses
  %.not61.i = icmp eq ptr %.pre.i, null
  br i1 %.not61.i, label %.lr.ph76.i, label %.thread96.i

.thread96.i:                                      ; preds = %bb.ec, %bb.eb
  %i.pk = phi ptr [ %.pre.i, %bb.ec ], [ %i.pf, %bb.eb ]
  %i.pl = load i32, ptr %i.aa, align 4, !tbaa !97 ; 2 uses
  %i.pm = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.pl)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.iz, i64 2112
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !49 ; 2 uses
  %i.pp = icmp sgt i32 %i.po, 1
  br i1 %i.pp, label %.lr.ph.i416, label %._crit_edge.i

.lr.ph.i416:                                      ; preds = %.thread96.i, %.lr.ph.i416
  %.072.i = phi i32 [ %.1.i, %.lr.ph.i416 ], [ %i.po, %.thread96.i ] ; 2 uses
  %.05471.i = phi i32 [ %.155.i, %.lr.ph.i416 ], [ 0, %.thread96.i ] ; 2 uses
  %i.pq = lshr i32 %.072.i, 1                     ; 3 uses
  %i.pr = add nuw nsw i32 %i.pq, %.05471.i        ; 2 uses
  %8 = zext nneg i32 %i.pr to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %8
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !25
  %.not65.i = icmp ugt i32 %i.pt, %i.pm           ; 2 uses
  %i.pu = sub nsw i32 %.072.i, %i.pq
  %.155.i = select i1 %.not65.i, i32 %.05471.i, i32 %i.pr ; 2 uses
  %.1.i = select i1 %.not65.i, i32 %i.pq, i32 %i.pu ; 2 uses
  %9 = icmp sgt i32 %.1.i, 1
  br i1 %9, label %.lr.ph.i416, label %._crit_edge.i, !llvm.loop !101

._crit_edge.i:                                    ; preds = %.lr.ph.i416, %.thread96.i
  %.054.lcssa.i = phi i32 [ 0, %.thread96.i ], [ %.155.i, %.lr.ph.i416 ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.iz, i64 27
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !30
  %.not63.i = icmp eq i8 %i.pw, 0
  br i1 %.not63.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %._crit_edge.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.iz, i64 2104
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !54
  %10 = zext nneg i32 %.054.lcssa.i to i64
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %10
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !25
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge.i
  %.2.i = phi i32 [ %.054.lcssa.i, %._crit_edge.i ], [ %i.qa, %bb.ed ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !36
  %i.qd = sext i32 %.2.i to i64
  %i.qe = getelementptr inbounds i8, ptr %i.qc, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !29
  %i.qg = zext i8 %i.qf to i32                    ; 3 uses
  %i.qh = load i32, ptr %i.z, align 8, !tbaa !92  ; 2 uses
  %.not64.i = icmp slt i32 %i.qh, %i.qg
  br i1 %.not64.i, label %codebook_decode_scalar_raw.exit.sink.split, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qi = lshr i32 %i.pl, %i.qg
  store i32 %i.qi, ptr %i.aa, align 4, !tbaa !97
  %i.qj = sub nsw i32 %i.qh, %i.qg
  br label %codebook_decode_scalar_raw.exit.sink.split

.thread66.i:                                      ; preds = %.thread.i
  %i.qk = icmp sgt i32 %i.pi, 0
  br i1 %i.qk, label %.lr.ph76.i, label %._crit_edge77.i

.lr.ph76.i:                                       ; preds = %.thread66.i, %bb.ec
  %i.ql = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !36 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.pi to i64
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ek, %.lr.ph76.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph76.i ], [ %indvars.iv.next.i, %bb.ek ] ; 5 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %indvars.iv.i
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !29  ; 2 uses
  %i.qp = icmp eq i8 %i.qo, -1
  br i1 %i.qp, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qq = zext i8 %i.qo to i32                    ; 3 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.i
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !25
  %i.qt = load i32, ptr %i.aa, align 4, !tbaa !97 ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.qq
  %i.qu = xor i32 %notmask.i, -1
  %i.qv = and i32 %i.qt, %i.qu
  %i.qw = icmp eq i32 %i.qs, %i.qv
  br i1 %i.qw, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.qx = load i32, ptr %i.z, align 8, !tbaa !92  ; 2 uses
  %.not62.i = icmp slt i32 %i.qx, %i.qq
  br i1 %.not62.i, label %codebook_decode_scalar_raw.exit.sink.split, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qm, i64 %indvars.iv.i
  %i.qz = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ra = lshr i32 %i.qt, %i.qq
  store i32 %i.ra, ptr %i.aa, align 4, !tbaa !97
  %i.rb = load i8, ptr %i.qy, align 1, !tbaa !29
  %i.rc = zext i8 %i.rb to i32
  %i.rd = sub nsw i32 %i.qx, %i.rc
  br label %codebook_decode_scalar_raw.exit.sink.split

bb.ek:                                            ; preds = %bb.eh, %bb.eg
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge77.i, label %bb.eg, !llvm.loop !102

._crit_edge77.i:                                  ; preds = %bb.ek, %.thread66.i
  store i32 21, ptr %i.ap, align 4
  br label %codebook_decode_scalar_raw.exit.sink.split

codebook_decode_scalar_raw.exit.sink.split:       ; preds = %bb.ee, %bb.ef, %bb.ei, %bb.ej, %._crit_edge77.i, %bb.cn
  %.sink.i.sink = phi i32 [ %spec.select408, %bb.cn ], [ 0, %._crit_edge77.i ], [ 0, %bb.ee ], [ %i.rd, %bb.ej ], [ %i.qj, %bb.ef ], [ 0, %bb.ei ]
  %.1338.ph = phi i32 [ %spec.select409, %bb.cn ], [ -1, %._crit_edge77.i ], [ -1, %bb.ee ], [ %i.qz, %bb.ej ], [ %.2.i, %bb.ef ], [ -1, %bb.ei ]
  store i32 %.sink.i.sink, ptr %i.z, align 8, !tbaa !92
  br label %codebook_decode_scalar_raw.exit

codebook_decode_scalar_raw.exit:                  ; preds = %codebook_decode_scalar_raw.exit.sink.split, %bb.eb
  %.1338 = phi i32 [ -1, %bb.eb ], [ %.1338.ph, %codebook_decode_scalar_raw.exit.sink.split ] ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.iz, i64 27
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !30
  %.not405 = icmp eq i8 %i.rf, 0
  br i1 %.not405, label %bb.em, label %bb.el

bb.el:                                            ; preds = %codebook_decode_scalar_raw.exit
  %i.rg = getelementptr inbounds nuw i8, ptr %i.iz, i64 2104
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !54
  %i.ri = sext i32 %.1338 to i64
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !25
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %codebook_decode_scalar_raw.exit
  %.2 = phi i32 [ %i.rk, %bb.el ], [ %.1338, %codebook_decode_scalar_raw.exit ]
  %i.rl = trunc i32 %.2 to i16
  br label %bb.en

bb.en:                                            ; preds = %bb.az, %bb.em
  %.sink = phi i16 [ %i.rl, %bb.em ], [ 0, %bb.az ]
  %i.rm = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %indvars.iv
  store i16 %.sink, ptr %i.rm, align 2, !tbaa !44
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.rn = add nuw nsw i32 %.0348540, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.rn, %i.fu
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.az, !llvm.loop !234

._crit_edge.loopexit:                             ; preds = %bb.en
  %i.ro = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ay
  %.1343.lcssa = phi i32 [ %.0342544, %bb.ay ], [ %i.ro, %._crit_edge.loopexit ]
  %indvars.iv.next592 = add nuw nsw i64 %indvars.iv591, 1 ; 2 uses
  %i.rp = load i8, ptr %i.bd, align 4, !tbaa !233
  %i.rq = zext i8 %i.rp to i64
  %i.rr = icmp samesign ult i64 %indvars.iv.next592, %i.rq
  br i1 %i.rr, label %bb.z, label %._crit_edge546, !llvm.loop !235

._crit_edge546:                                   ; preds = %._crit_edge, %ilog.exit411
  %i.rs = load i32, ptr %i.z, align 8, !tbaa !92
  %i.rt = icmp eq i32 %i.rs, -1
  br i1 %i.rt, label %bb.fa, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge546
  store i8 1, ptr %i.aq, align 1, !tbaa !29
  store i8 1, ptr %i.c, align 16, !tbaa !29
  %i.ru = getelementptr inbounds nuw i8, ptr %i.bd, i64 1592
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !214 ; 6 uses
  %i.rw = icmp sgt i32 %i.rv, 2
  br i1 %i.rw, label %.lr.ph549, label %.preheader528

.lr.ph549:                                        ; preds = %bb.eo
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1088
  %i.ry = getelementptr inbounds nuw i8, ptr %i.bd, i64 338 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.rv to i64
  br label %bb.ep

.preheader528:                                    ; preds = %bb.ex, %bb.eo
  %i.rz = icmp sgt i32 %i.rv, 0
  br i1 %i.rz, label %iter.check, label %.thread516

iter.check:                                       ; preds = %.preheader528
  %wide.trip.count601 = zext nneg i32 %i.rv to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.rv, 4
  br i1 %min.iters.check, label %.lr.ph552.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check742 = icmp ult i32 %i.rv, 16
  br i1 %min.iters.check742, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.sa = and i64 %wide.trip.count601, 12
  %n.vec = and i64 %wide.trip.count601, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue773, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue773 ] ; 18 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %wide.load = load <8 x i8>, ptr %i.sb, align 16, !tbaa !29
  %wide.load743 = load <8 x i8>, ptr %i.sc, align 8, !tbaa !29
  %i.sd = icmp eq <8 x i8> %wide.load, zeroinitializer ; 8 uses
  %i.se = icmp eq <8 x i8> %wide.load743, zeroinitializer ; 8 uses
  %i.sf = extractelement <8 x i1> %i.sd, i64 0
  br i1 %i.sf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  store i16 -1, ptr %i.sg, align 2, !tbaa !44
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.sh = extractelement <8 x i1> %i.sd, i64 1
  br i1 %i.sh, label %pred.store.if744, label %pred.store.continue745

pred.store.if744:                                 ; preds = %pred.store.continue
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 2
  store i16 -1, ptr %i.sj, align 2, !tbaa !44
  br label %pred.store.continue745

pred.store.continue745:                           ; preds = %pred.store.if744, %pred.store.continue
  %i.sk = extractelement <8 x i1> %i.sd, i64 2
  br i1 %i.sk, label %pred.store.if746, label %pred.store.continue747

pred.store.if746:                                 ; preds = %pred.store.continue745
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  store i16 -1, ptr %i.sm, align 2, !tbaa !44
  br label %pred.store.continue747

pred.store.continue747:                           ; preds = %pred.store.if746, %pred.store.continue745
  %i.sn = extractelement <8 x i1> %i.sd, i64 3
  br i1 %i.sn, label %pred.store.if748, label %pred.store.continue749

pred.store.if748:                                 ; preds = %pred.store.continue747
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 6
  store i16 -1, ptr %i.sp, align 2, !tbaa !44
  br label %pred.store.continue749

pred.store.continue749:                           ; preds = %pred.store.if748, %pred.store.continue747
  %i.sq = extractelement <8 x i1> %i.sd, i64 4
  br i1 %i.sq, label %pred.store.if750, label %pred.store.continue751

pred.store.if750:                                 ; preds = %pred.store.continue749
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  store i16 -1, ptr %i.ss, align 2, !tbaa !44
  br label %pred.store.continue751

pred.store.continue751:                           ; preds = %pred.store.if750, %pred.store.continue749
  %i.st = extractelement <8 x i1> %i.sd, i64 5
  br i1 %i.st, label %pred.store.if752, label %pred.store.continue753

pred.store.if752:                                 ; preds = %pred.store.continue751
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
end_hunk_4
begin_hunk_5_@compute_samples:bb.a
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index86 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load87 = load <4 x float>, ptr %i.u, align 16, !tbaa !56
  %wide.load88 = load <4 x float>, ptr %i.v, align 16, !tbaa !56
  %i.w = fadd <4 x float> %wide.load87, splat (float 3.840000e+02)
  %i.x = fadd <4 x float> %wide.load88, splat (float 3.840000e+02)
  %i.y = bitcast <4 x float> %i.w to <4 x i32>
  %i.z = bitcast <4 x float> %i.x to <4 x i32>
  %i.aa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.y, <4 x i32> splat (i32 1136623616))
  %i.ab = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.z, <4 x i32> splat (i32 1136623616))
  %i.ac = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.aa, <4 x i32> splat (i32 1136689151))
  %i.ad = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ab, <4 x i32> splat (i32 1136689151))
  %i.ae = trunc <4 x i32> %i.ac to <4 x i16>
  %i.af = trunc <4 x i32> %i.ad to <4 x i16>
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep77, i64 %index86 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <4 x i16> %i.ae, ptr %i.ag, align 2, !tbaa !44
  store <4 x i16> %i.af, ptr %i.ah, align 2, !tbaa !44
  %index.next89 = add nuw i64 %index86, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.ai, label %middle.block90, label %vector.body85, !llvm.loop !422

middle.block90:                                   ; preds = %vector.body85
  %cmp.n91 = icmp eq i64 %n.vec84, %wide.trip.count
  br i1 %cmp.n91, label %._crit_edge.us, label %.lr.ph.us.preheader107

.lr.ph.us.preheader107:                           ; preds = %.lr.ph.us.preheader, %middle.block90
  %indvars.iv68.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec84, %middle.block90 ]
  br label %.lr.ph.us

.lr.ph42.split.us.us:                             ; preds = %.lr.ph42.split.us.us.preheader, %..loopexit_crit_edge.us.us
  %indvars.iv63 = phi i64 [ 0, %.lr.ph42.split.us.us.preheader ], [ %indvars.iv.next64, %..loopexit_crit_edge.us.us ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv63
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29
  %i.al = sext i8 %i.ak to i32
  %i.am = and i32 %0, %i.al
  %.not.us.us = icmp eq i32 %i.am, 0
  br i1 %.not.us.us, label %..loopexit_crit_edge.us.us, label %.preheader.us.us

scalar.ph93:                                      ; preds = %scalar.ph93.preheader, %scalar.ph93
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph93 ], [ %indvars.iv60.ph, %scalar.ph93.preheader ] ; 3 uses
  %i.an = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv60
  %i.ao = load float, ptr %i.an, align 4, !tbaa !56
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !56
  %i.ar = fadd float %i.ao, %i.aq
  store float %i.ar, ptr %i.ap, align 4, !tbaa !56
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us.us, label %scalar.ph93, !llvm.loop !423

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph93, %middle.block104, %.lr.ph42.split.us.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %i.d
  br i1 %exitcond67.not, label %.lr.ph.us.preheader, label %.lr.ph42.split.us.us, !llvm.loop !424

.preheader.us.us:                                 ; preds = %.lr.ph42.split.us.us
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv63
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv73
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.g ; 2 uses
  br i1 %min.iters.check94, label %scalar.ph93.preheader, label %vector.body97

vector.body97:                                    ; preds = %.preheader.us.us, %vector.body97
  %index98 = phi i64 [ %index.next103, %vector.body97 ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %index98 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %wide.load99 = load <4 x float>, ptr %i.aw, align 4, !tbaa !56
  %wide.load100 = load <4 x float>, ptr %i.ax, align 4, !tbaa !56
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index98 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.load101 = load <4 x float>, ptr %i.ay, align 16, !tbaa !56
  %wide.load102 = load <4 x float>, ptr %i.az, align 16, !tbaa !56
  %i.ba = fadd <4 x float> %wide.load99, %wide.load101
  %i.bb = fadd <4 x float> %wide.load100, %wide.load102
  store <4 x float> %i.ba, ptr %i.ay, align 16, !tbaa !56
  store <4 x float> %i.bb, ptr %i.az, align 16, !tbaa !56
  %index.next103 = add nuw i64 %index98, 8        ; 2 uses
  %i.bc = icmp eq i64 %index.next103, %n.vec96
  br i1 %i.bc, label %middle.block104, label %vector.body97, !llvm.loop !425

middle.block104:                                  ; preds = %vector.body97
  br i1 %cmp.n105, label %..loopexit_crit_edge.us.us, label %scalar.ph93.preheader

scalar.ph93.preheader:                            ; preds = %.preheader.us.us, %middle.block104
  %indvars.iv60.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec96, %middle.block104 ]
  br label %scalar.ph93

.lr.ph47.split:                                   ; preds = %.lr.ph47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.bd = zext nneg i32 %5 to i64
  br label %.preheader39

.preheader39:                                     ; preds = %.lr.ph47.split, %._crit_edge
  %indvars.iv57 = phi i64 [ 0, %.lr.ph47.split ], [ %indvars.iv.next58, %._crit_edge ] ; 4 uses
  %.03245 = phi i32 [ 32, %.lr.ph47.split ], [ %spec.select, %._crit_edge ] ; 2 uses
  %i.be = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.bf = add nsw i32 %.03245, %i.be
  %i.bg = icmp sgt i32 %i.bf, %5
  %i.bh = trunc i64 %indvars.iv57 to i32
  %i.bi = sub i32 %5, %i.bh
  %spec.select = select i1 %i.bg, i32 %i.bi, i32 %.03245 ; 4 uses
  %i.bj = icmp sgt i32 %spec.select, 0
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader39
  %i.bk = zext nneg i32 %spec.select to i64       ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv57 ; 2 uses
  %min.iters.check = icmp ult i32 %spec.select, 8
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bk, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <4 x float>, ptr %i.bl, align 16, !tbaa !56
  %wide.load80 = load <4 x float>, ptr %i.bm, align 16, !tbaa !56
  %i.bn = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.bo = fadd <4 x float> %wide.load80, splat (float 3.840000e+02)
  %i.bp = bitcast <4 x float> %i.bn to <4 x i32>
  %i.bq = bitcast <4 x float> %i.bo to <4 x i32>
  %i.br = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bp, <4 x i32> splat (i32 1136623616))
  %i.bs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bq, <4 x i32> splat (i32 1136623616))
  %i.bt = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.br, <4 x i32> splat (i32 1136689151))
  %i.bu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bs, <4 x i32> splat (i32 1136689151))
  %i.bv = trunc <4 x i32> %i.bt to <4 x i16>
  %i.bw = trunc <4 x i32> %i.bu to <4 x i16>
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store <4 x i16> %i.bv, ptr %i.bx, align 2, !tbaa !44
  store <4 x i16> %i.bw, ptr %i.by, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bk
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader108, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader108 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !56
  %i.cc = fadd float %i.cb, 3.840000e+02
  %i.cd = bitcast float %i.cc to i32
  %i.ce = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 1136623616)
  %i.cf = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 1136689151)
  %i.cg = trunc i32 %i.cf to i16
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.cg, ptr %gep, align 2, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !427

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader39
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 32 ; 2 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.next58, %i.bd
  br i1 %i.ci, label %.preheader39, label %._crit_edge48, !llvm.loop !421

._crit_edge48:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @compute_stereo_samples(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw [6 x i8], ptr @channel_position, i64 %i.d
  br i1 %i.c, label %.lr.ph78.us.preheader, label %.lr.ph84.split

.lr.ph78.us.preheader:                            ; preds = %.lr.ph84
  %i.f = zext nneg i32 %4 to i64
  %i.g = sext i32 %3 to i64
  br label %.lr.ph78.us

.lr.ph78.us:                                      ; preds = %.lr.ph78.us.preheader, %._crit_edge.us
  %indvars.iv109 = phi i64 [ 0, %.lr.ph78.us.preheader ], [ %indvars.iv.next110, %._crit_edge.us ] ; 5 uses
  %.05982.us = phi i32 [ 16, %.lr.ph78.us.preheader ], [ %spec.select.us, %._crit_edge.us ] ; 2 uses
  %indvars111 = trunc i64 %indvars.iv109 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.h = add i32 %.05982.us, %indvars111
  %i.i = icmp sgt i32 %i.h, %4
  %i.j = trunc i64 %indvars.iv109 to i32
  %i.k = sub i32 %4, %i.j
  %spec.select.us = select i1 %i.i, i32 %i.k, i32 %.05982.us ; 9 uses
  %i.l = icmp sgt i32 %spec.select.us, 0          ; 3 uses
  %i.m = add nsw i64 %indvars.iv109, %i.g         ; 3 uses
  %5 = sext i32 %spec.select.us to i64            ; 9 uses
  %min.iters.check162 = icmp ult i32 %spec.select.us, 5
  %i.n = and i64 %5, 3
  %6 = and i32 %spec.select.us, 3
  %i.o = icmp eq i32 %6, 0
  %i.p = select i1 %i.o, i64 4, i64 %i.n
  %n.vec164 = sub nsw i64 %5, %i.p                ; 2 uses
  %min.iters.check150 = icmp ult i32 %spec.select.us, 5
  %i.q = and i64 %5, 3
  %7 = and i32 %spec.select.us, 3
  %i.r = icmp eq i32 %7, 0
  %i.s = select i1 %i.r, i64 4, i64 %i.q
  %n.vec152 = sub nsw i64 %5, %i.s                ; 2 uses
  %min.iters.check138 = icmp eq i32 %spec.select.us, 1
  %n.vec140 = and i64 %5, 2147483646              ; 3 uses
  %cmp.n147 = icmp eq i64 %n.vec140, %5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph78.us, %.loopexit.us
  %indvars.iv103 = phi i64 [ 0, %.lr.ph78.us ], [ %indvars.iv.next104, %.loopexit.us ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv103
  %i.u = load i8, ptr %i.t, align 1, !tbaa !29
  %i.v = and i8 %i.u, 6
  switch i8 %i.v, label %.unreachabledefault86 [
    i8 6, label %.preheader.us
    i8 2, label %.preheader67.us
    i8 4, label %.preheader69.us
    i8 0, label %.loopexit.us
  ]

scalar.ph161:                                     ; preds = %scalar.ph161.preheader, %scalar.ph161
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %scalar.ph161 ], [ %indvars.iv94.ph, %scalar.ph161.preheader ] ; 3 uses
  %i.w = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv94
  %i.x = load float, ptr %i.w, align 4, !tbaa !56
  %.idx = shl nuw nsw i64 %indvars.iv94, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !56
  %i.ab = fadd float %i.x, %i.aa
  store float %i.ab, ptr %i.z, align 4, !tbaa !56
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %8 = icmp slt i64 %indvars.iv.next95, %5
  br i1 %8, label %scalar.ph161, label %.loopexit.us, !llvm.loop !428

scalar.ph149:                                     ; preds = %scalar.ph149.preheader, %scalar.ph149
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %scalar.ph149 ], [ %indvars.iv97.ph, %scalar.ph149.preheader ] ; 3 uses
  %i.ac = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv97
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !56
  %.idx114 = shl nuw nsw i64 %indvars.iv97, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx114 ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !56
  %i.ag = fadd float %i.ad, %i.af
  store float %i.ag, ptr %i.ae, align 8, !tbaa !56
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %9 = icmp slt i64 %indvars.iv.next98, %5
  br i1 %9, label %scalar.ph149, label %.loopexit.us, !llvm.loop !429

scalar.ph137:                                     ; preds = %scalar.ph137.preheader, %scalar.ph137
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %scalar.ph137 ], [ %indvars.iv100.ph, %scalar.ph137.preheader ] ; 3 uses
  %i.ah = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv100
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !56
  %.idx115 = shl nuw nsw i64 %indvars.iv100, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !56
  %i.al = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fadd <2 x float> %i.am, %i.ak
  store <2 x float> %i.an, ptr %i.aj, align 8, !tbaa !56
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %10 = icmp slt i64 %indvars.iv.next101, %5
  br i1 %10, label %scalar.ph137, label %.loopexit.us, !llvm.loop !430

.loopexit.us:                                     ; preds = %scalar.ph161, %scalar.ph149, %scalar.ph137, %middle.block146, %.preheader69.us, %.preheader67.us, %.preheader.us, %bb.b
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %i.d
  br i1 %exitcond.not, label %..preheader71_crit_edge.us, label %bb.b, !llvm.loop !431

.lr.ph80.us:                                      ; preds = %.lr.ph80.us.preheader175, %.lr.ph80.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.lr.ph80.us ], [ %indvars.iv106.ph, %.lr.ph80.us.preheader175 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !56
  %i.aq = fadd float %i.ap, 3.840000e+02
  %i.ar = bitcast float %i.aq to i32
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 1136623616)
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.as, i32 1136689151)
  %i.au = trunc i32 %i.at to i16
  %gep120 = getelementptr [2 x i8], ptr %invariant.gep119, i64 %indvars.iv106
  store i16 %i.au, ptr %gep120, align 2, !tbaa !44
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next107, %i.da
  br i1 %i.av, label %.lr.ph80.us, label %._crit_edge.us, !llvm.loop !432

._crit_edge.us:                                   ; preds = %.lr.ph80.us, %middle.block134, %..preheader71_crit_edge.us
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 16 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv.next110, %i.f
  br i1 %i.aw, label %.lr.ph78.us, label %._crit_edge85, !llvm.loop !433

.preheader.us:                                    ; preds = %bb.b
  br i1 %i.l, label %.lr.ph76.us, label %.loopexit.us

.preheader67.us:                                  ; preds = %bb.b
  br i1 %i.l, label %.lr.ph74.us, label %.loopexit.us

.preheader69.us:                                  ; preds = %bb.b
  br i1 %i.l, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us:                                        ; preds = %.preheader69.us
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.m ; 2 uses
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.body165

scalar.ph161.preheader:                           ; preds = %vector.body165, %.lr.ph.us
  %indvars.iv94.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec164, %vector.body165 ]
  br label %scalar.ph161

vector.body165:                                   ; preds = %.lr.ph.us, %vector.body165
  %index166 = phi i64 [ %index.next170, %vector.body165 ], [ 0, %.lr.ph.us ] ; 6 uses
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %index166
  %wide.load167 = load <4 x float>, ptr %i.ba, align 4, !tbaa !56
  %i.bb = shl nuw nsw i64 %index166, 3
  %i.bc = shl i64 %index166, 3
  %i.bd = shl i64 %index166, 3
  %i.be = shl i64 %index166, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %wide.vec168 = load <8 x float>, ptr %i.bj, align 4, !tbaa !56
  %strided.vec169 = shufflevector <8 x float> %wide.vec168, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bn = fadd <4 x float> %wide.load167, %strided.vec169 ; 4 uses
  %i.bo = extractelement <4 x float> %i.bn, i64 0
  store float %i.bo, ptr %i.bj, align 4, !tbaa !56
  %i.bp = extractelement <4 x float> %i.bn, i64 1
  store float %i.bp, ptr %i.bk, align 4, !tbaa !56
  %i.bq = extractelement <4 x float> %i.bn, i64 2
  store float %i.bq, ptr %i.bl, align 4, !tbaa !56
  %i.br = extractelement <4 x float> %i.bn, i64 3
  store float %i.br, ptr %i.bm, align 4, !tbaa !56
  %index.next170 = add nuw i64 %index166, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.bs, label %scalar.ph161.preheader, label %vector.body165, !llvm.loop !434

.lr.ph74.us:                                      ; preds = %.preheader67.us
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.m ; 2 uses
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.body153

scalar.ph149.preheader:                           ; preds = %vector.body153, %.lr.ph74.us
  %indvars.iv97.ph = phi i64 [ 0, %.lr.ph74.us ], [ %n.vec152, %vector.body153 ]
  br label %scalar.ph149

vector.body153:                                   ; preds = %.lr.ph74.us, %vector.body153
  %index154 = phi i64 [ %index.next158, %vector.body153 ], [ 0, %.lr.ph74.us ] ; 6 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %index154
  %wide.load155 = load <4 x float>, ptr %i.bw, align 4, !tbaa !56
  %i.bx = shl nuw nsw i64 %index154, 3
  %i.by = shl i64 %index154, 3
  %i.bz = shl i64 %index154, 3
  %i.ca = shl i64 %index154, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %wide.vec156 = load <8 x float>, ptr %i.cb, align 16, !tbaa !56
  %strided.vec157 = shufflevector <8 x float> %wide.vec156, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ci = fadd <4 x float> %wide.load155, %strided.vec157 ; 4 uses
  %i.cj = extractelement <4 x float> %i.ci, i64 0
  store float %i.cj, ptr %i.cb, align 16, !tbaa !56
  %i.ck = extractelement <4 x float> %i.ci, i64 1
  store float %i.ck, ptr %i.cd, align 8, !tbaa !56
  %i.cl = extractelement <4 x float> %i.ci, i64 2
  store float %i.cl, ptr %i.cf, align 16, !tbaa !56
  %i.cm = extractelement <4 x float> %i.ci, i64 3
  store float %i.cm, ptr %i.ch, align 8, !tbaa !56
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next158, %n.vec152
  br i1 %i.cn, label %scalar.ph149.preheader, label %vector.body153, !llvm.loop !435

.lr.ph76.us:                                      ; preds = %.preheader.us
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !62
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.m ; 2 uses
  br i1 %min.iters.check138, label %scalar.ph137.preheader, label %vector.body141

vector.body141:                                   ; preds = %.lr.ph76.us, %vector.body141
  %index142 = phi i64 [ %index.next145, %vector.body141 ], [ 0, %.lr.ph76.us ] ; 3 uses
  %i.cr = getelementptr [4 x i8], ptr %i.cq, i64 %index142
  %wide.load143 = load <2 x float>, ptr %i.cr, align 4, !tbaa !56
  %i.cs = shl nuw nsw i64 %index142, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.ct, align 16, !tbaa !56
  %i.cu = shufflevector <2 x float> %wide.load143, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.cu, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.ct, align 16, !tbaa !56
  %index.next145 = add nuw i64 %index142, 2       ; 2 uses
  %i.cv = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.cv, label %middle.block146, label %vector.body141, !llvm.loop !436

middle.block146:                                  ; preds = %vector.body141
  br i1 %cmp.n147, label %.loopexit.us, label %scalar.ph137.preheader

scalar.ph137.preheader:                           ; preds = %.lr.ph76.us, %middle.block146
  %indvars.iv100.ph = phi i64 [ 0, %.lr.ph76.us ], [ %n.vec140, %middle.block146 ]
  br label %scalar.ph137

..preheader71_crit_edge.us:                       ; preds = %.loopexit.us
  %i.cw = shl i32 %spec.select.us, 1              ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph80.us.preheader, label %._crit_edge.us

.lr.ph80.us.preheader:                            ; preds = %..preheader71_crit_edge.us
  %indvars.iv109.tr = trunc i64 %indvars.iv109 to i32
  %i.cy = shl i32 %indvars.iv109.tr, 1
  %i.cz = sext i32 %i.cy to i64
  %i.da = zext nneg i32 %i.cw to i64              ; 3 uses
  %invariant.gep119 = getelementptr [2 x i8], ptr %0, i64 %i.cz ; 2 uses
  %min.iters.check126 = icmp ult i32 %i.cw, 8
  br i1 %min.iters.check126, label %.lr.ph80.us.preheader175, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph80.us.preheader
  %n.vec128 = and i64 %i.da, 2147483640           ; 3 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next133, %vector.body129 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index130 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load131 = load <4 x float>, ptr %i.db, align 16, !tbaa !56
  %wide.load132 = load <4 x float>, ptr %i.dc, align 16, !tbaa !56
  %i.dd = fadd <4 x float> %wide.load131, splat (float 3.840000e+02)
  %i.de = fadd <4 x float> %wide.load132, splat (float 3.840000e+02)
  %i.df = bitcast <4 x float> %i.dd to <4 x i32>
  %i.dg = bitcast <4 x float> %i.de to <4 x i32>
  %i.dh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.df, <4 x i32> splat (i32 1136623616))
  %i.di = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dg, <4 x i32> splat (i32 1136623616))
  %i.dj = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dh, <4 x i32> splat (i32 1136689151))
  %i.dk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.di, <4 x i32> splat (i32 1136689151))
  %i.dl = trunc <4 x i32> %i.dj to <4 x i16>
  %i.dm = trunc <4 x i32> %i.dk to <4 x i16>
  %i.dn = getelementptr [2 x i8], ptr %invariant.gep119, i64 %index130 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  store <4 x i16> %i.dl, ptr %i.dn, align 2, !tbaa !44
  store <4 x i16> %i.dm, ptr %i.do, align 2, !tbaa !44
  %index.next133 = add nuw i64 %index130, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next133, %n.vec128
  br i1 %i.dp, label %middle.block134, label %vector.body129, !llvm.loop !437

middle.block134:                                  ; preds = %vector.body129
  %cmp.n135 = icmp eq i64 %n.vec128, %i.da
  br i1 %cmp.n135, label %._crit_edge.us, label %.lr.ph80.us.preheader175

.lr.ph80.us.preheader175:                         ; preds = %.lr.ph80.us.preheader, %middle.block134
  %indvars.iv106.ph = phi i64 [ 0, %.lr.ph80.us.preheader ], [ %n.vec128, %middle.block134 ]
  br label %.lr.ph80.us

.unreachabledefault86:                            ; preds = %bb.b
  unreachable

.lr.ph84.split:                                   ; preds = %.lr.ph84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.dq = zext nneg i32 %4 to i64
  br label %.preheader71

.preheader71:                                     ; preds = %.lr.ph84.split, %._crit_edge
  %indvars.iv91 = phi i64 [ 0, %.lr.ph84.split ], [ %indvars.iv.next92, %._crit_edge ] ; 4 uses
  %.05982 = phi i32 [ 16, %.lr.ph84.split ], [ %spec.select, %._crit_edge ] ; 2 uses
  %indvars93 = trunc i64 %indvars.iv91 to i32
  %i.dr = add nsw i32 %.05982, %indvars93
  %i.ds = icmp sgt i32 %i.dr, %4
  %i.dt = trunc i64 %indvars.iv91 to i32
  %i.du = sub i32 %4, %i.dt
  %spec.select = select i1 %i.ds, i32 %i.du, i32 %.05982 ; 2 uses
  %i.dv = shl i32 %spec.select, 1                 ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph80.preheader, label %._crit_edge

.lr.ph80.preheader:                               ; preds = %.preheader71
  %indvars.iv91.tr = trunc i64 %indvars.iv91 to i32
  %i.dx = shl i32 %indvars.iv91.tr, 1
  %i.dy = sext i32 %i.dx to i64
  %i.dz = zext nneg i32 %i.dv to i64              ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.dy ; 2 uses
  %min.iters.check = icmp ult i32 %i.dv, 8
  br i1 %min.iters.check, label %.lr.ph80.preheader176, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.preheader
  %n.vec = and i64 %i.dz, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load = load <4 x float>, ptr %i.ea, align 16, !tbaa !56
  %wide.load124 = load <4 x float>, ptr %i.eb, align 16, !tbaa !56
  %i.ec = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.ed = fadd <4 x float> %wide.load124, splat (float 3.840000e+02)
  %i.ee = bitcast <4 x float> %i.ec to <4 x i32>
  %i.ef = bitcast <4 x float> %i.ed to <4 x i32>
  %i.eg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ee, <4 x i32> splat (i32 1136623616))
  %i.eh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ef, <4 x i32> splat (i32 1136623616))
  %i.ei = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.eg, <4 x i32> splat (i32 1136689151))
  %i.ej = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.eh, <4 x i32> splat (i32 1136689151))
  %i.ek = trunc <4 x i32> %i.ei to <4 x i16>
  %i.el = trunc <4 x i32> %i.ej to <4 x i16>
  %i.em = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 8
  store <4 x i16> %i.ek, ptr %i.em, align 2, !tbaa !44
  store <4 x i16> %i.el, ptr %i.en, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dz
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph80.preheader176

.lr.ph80.preheader176:                            ; preds = %.lr.ph80.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph80.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader176, %.lr.ph80
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph80 ], [ %indvars.iv.ph, %.lr.ph80.preheader176 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !56
  %i.er = fadd float %i.eq, 3.840000e+02
  %i.es = bitcast float %i.er to i32
  %i.et = tail call i32 @llvm.smax.i32(i32 %i.es, i32 1136623616)
  %i.eu = tail call i32 @llvm.umin.i32(i32 %i.et, i32 1136689151)
  %i.ev = trunc i32 %i.eu to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.ev, ptr %gep, align 2, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ew = icmp samesign ult i64 %indvars.iv.next, %i.dz
  br i1 %i.ew, label %.lr.ph80, label %._crit_edge, !llvm.loop !439

._crit_edge:                                      ; preds = %.lr.ph80, %middle.block, %.preheader71
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 16 ; 2 uses
  %i.ex = icmp samesign ult i64 %indvars.iv.next92, %i.dq
  br i1 %i.ex, label %.preheader71, label %._crit_edge85, !llvm.loop !433

._crit_edge85:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @convert_samples_short(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #24 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 27 uses
  %i.b = icmp ne i32 %0, %3
  %i.c = icmp slt i32 %0, 3
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp slt i32 %3, 7
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph55, label %.loopexit

.lr.ph55:                                         ; preds = %.preheader
  %i.f = zext nneg i32 %0 to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @__const.convert_samples_short.channel_selector, i64 %i.f
  %i.h = sext i32 %2 to i64                       ; 3 uses
  %i.i = icmp sgt i32 %6, 0
  %i.j = zext i32 %3 to i64
  %i.k = getelementptr inbounds nuw [6 x i8], ptr @channel_position, i64 %i.j ; 6 uses
  %i.l = zext nneg i32 %6 to i64                  ; 3 uses
  %i.m = sext i32 %5 to i64                       ; 6 uses
  br i1 %i.i, label %.lr.ph55.split.us, label %.loopexit

.lr.ph55.split.us:                                ; preds = %.lr.ph55
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph47.i.us.us.preheader, label %.lr.ph47.i.us

.lr.ph47.i.us.us.preheader:                       ; preds = %.lr.ph55.split.us
  %exitcond67.not.i.us.us = icmp eq i32 %3, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %exitcond67.not.i.us.us.1 = icmp eq i32 %3, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %exitcond67.not.i.us.us.2 = icmp eq i32 %3, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %exitcond67.not.i.us.us.3 = icmp eq i32 %3, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %exitcond67.not.i.us.us.4 = icmp eq i32 %3, 5
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %.lr.ph47.i.us.us

.lr.ph47.i.us.us:                                 ; preds = %.lr.ph47.i.us.us.preheader, %compute_samples.exit.loopexit.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %compute_samples.exit.loopexit.us.us ], [ 0, %.lr.ph47.i.us.us.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv76
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25   ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  br label %.lr.ph42.us.i.us.us

.lr.ph42.us.i.us.us:                              ; preds = %._crit_edge.us.i.us.us, %.lr.ph47.i.us.us
  %indvars.iv73.i.us.us = phi i64 [ 0, %.lr.ph47.i.us.us ], [ %indvars.iv.next74.i.us.us, %._crit_edge.us.i.us.us ] ; 9 uses
  %.03245.us.i.us.us = phi i32 [ 32, %.lr.ph47.i.us.us ], [ %spec.select.us.fr.i.us.us, %._crit_edge.us.i.us.us ] ; 2 uses
  %indvars75.i.us.us = trunc i64 %indvars.iv73.i.us.us to i32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.ad = add nsw i32 %.03245.us.i.us.us, %indvars75.i.us.us
  %i.ae = icmp sgt i32 %i.ad, %6
  %i.af = sub i32 %6, %indvars75.i.us.us
  %spec.select.us.i.us.us = select i1 %i.ae, i32 %i.af, i32 %.03245.us.i.us.us
  %spec.select.us.fr.i.us.us = freeze i32 %spec.select.us.i.us.us ; 10 uses
  %i.ag = icmp sgt i32 %spec.select.us.fr.i.us.us, 0
  br i1 %i.ag, label %.lr.ph42.split.us.us.preheader.i.us.us, label %._crit_edge.us.i.us.us

.lr.ph42.split.us.us.preheader.i.us.us:           ; preds = %.lr.ph42.us.i.us.us
  %wide.trip.count.i.us.us = zext nneg i32 %spec.select.us.fr.i.us.us to i64 ; 21 uses
  %i.ah = load i8, ptr %i.k, align 2, !tbaa !29
  %i.ai = sext i8 %i.ah to i32
  %i.aj = and i32 %i.z, %i.ai
  %.not.us.us.i.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not.us.us.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %.preheader.us.us.i.us.us

.preheader.us.us.i.us.us:                         ; preds = %.lr.ph42.split.us.us.preheader.i.us.us
  %i.ak = load ptr, ptr %4, align 8, !tbaa !62
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv73.i.us.us
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %i.m ; 2 uses
  %min.iters.check114 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %.preheader.us.us.i.us.us
  %n.vec116 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 3 uses
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %index118 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.load119 = load <4 x float>, ptr %i.an, align 4, !tbaa !56
  %wide.load120 = load <4 x float>, ptr %i.ao, align 4, !tbaa !56
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index118 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load121 = load <4 x float>, ptr %i.ap, align 16, !tbaa !56
  %wide.load122 = load <4 x float>, ptr %i.aq, align 16, !tbaa !56
  %i.ar = fadd <4 x float> %wide.load119, %wide.load121
  %i.as = fadd <4 x float> %wide.load120, %wide.load122
  store <4 x float> %i.ar, ptr %i.ap, align 16, !tbaa !56
  store <4 x float> %i.as, ptr %i.aq, align 16, !tbaa !56
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.at = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.at, label %middle.block124, label %vector.body117, !llvm.loop !440

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %n.vec116, %wide.trip.count.i.us.us
  br i1 %cmp.n125, label %..loopexit_crit_edge.us.us.i.us.us, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %.preheader.us.us.i.us.us, %middle.block124
  %indvars.iv60.i.us.us.ph = phi i64 [ 0, %.preheader.us.us.i.us.us ], [ %n.vec116, %middle.block124 ]
  br label %scalar.ph113

scalar.ph113:                                     ; preds = %scalar.ph113.preheader, %scalar.ph113
  %indvars.iv60.i.us.us = phi i64 [ %indvars.iv.next61.i.us.us, %scalar.ph113 ], [ %indvars.iv60.i.us.us.ph, %scalar.ph113.preheader ] ; 3 uses
  %i.au = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv60.i.us.us
  %i.av = load float, ptr %i.au, align 4, !tbaa !56
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !56
  %i.ay = fadd float %i.av, %i.ax
  store float %i.ay, ptr %i.aw, align 4, !tbaa !56
  %indvars.iv.next61.i.us.us = add nuw nsw i64 %indvars.iv60.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next61.i.us.us, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %scalar.ph113, !llvm.loop !441

..loopexit_crit_edge.us.us.i.us.us:               ; preds = %scalar.ph113, %middle.block124, %.lr.ph42.split.us.us.preheader.i.us.us
  br i1 %exitcond67.not.i.us.us, label %..preheader39_crit_edge.us.i.us.us, label %.lr.ph42.split.us.us.i.us.us.1

.lr.ph42.split.us.us.i.us.us.1:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us
  %i.az = load i8, ptr %i.o, align 1, !tbaa !29
  %i.ba = sext i8 %i.az to i32
  %i.bb = and i32 %i.z, %i.ba
  %.not.us.us.i.us.us.1 = icmp eq i32 %i.bb, 0
  br i1 %.not.us.us.i.us.us.1, label %..loopexit_crit_edge.us.us.i.us.us.1, label %.preheader.us.us.i.us.us.1
end_hunk_5
begin_hunk_6_@stb_vorbis_get_frame_short_interleaved:bb.a
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %indvars.iv64.i.us
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !56
  %i.az = fadd float %i.ay, 3.840000e+02
  %i.ba = bitcast float %i.az to i32
  %i.bb = call i32 @llvm.smax.i32(i32 %i.ba, i32 1136623616)
  %i.bc = call i32 @llvm.umin.i32(i32 %i.bb, i32 1136689151)
  %i.bd = trunc i32 %i.bc to i16
  %i.be = getelementptr i8, ptr %.14047.us.i.us, i64 4 ; 3 uses
  store i16 %i.bd, ptr %i.at, align 2, !tbaa !44
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter47.next.1 = add i64 %niter47, 2           ; 2 uses
  %niter47.ncmp.1 = icmp eq i64 %niter47.next.1, %unroll_iter46
  br i1 %niter47.ncmp.1, label %..preheader44_crit_edge.us.i.us.unr-lcssa, label %.preheader45.us.i.us.new, !llvm.loop !453

..preheader44_crit_edge.us.i.us.unr-lcssa:        ; preds = %.preheader45.us.i.us.new
  br i1 %lcmp.mod43.not, label %..preheader44_crit_edge.us.i.us, label %.epil.preheader41

.epil.preheader41:                                ; preds = %..preheader44_crit_edge.us.i.us.unr-lcssa, %.preheader45.us.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.preheader45.us.i.us ], [ %indvars.iv.next.i.us.1, %..preheader44_crit_edge.us.i.us.unr-lcssa ]
  %.14047.us.i.us.epil.init = phi ptr [ %.03954.us.i.us, %.preheader45.us.i.us ], [ %i.be, %..preheader44_crit_edge.us.i.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod45)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.us.epil.init
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv64.i.us
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !56
  %i.bj = fadd float %i.bi, 3.840000e+02
  %i.bk = bitcast float %i.bj to i32
  %i.bl = call i32 @llvm.smax.i32(i32 %i.bk, i32 1136623616)
  %i.bm = call i32 @llvm.umin.i32(i32 %i.bl, i32 1136689151)
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = getelementptr i8, ptr %.14047.us.i.us.epil.init, i64 2
  store i16 %i.bn, ptr %.14047.us.i.us.epil.init, align 2, !tbaa !44
  br label %..preheader44_crit_edge.us.i.us

..preheader44_crit_edge.us.i.us:                  ; preds = %..preheader44_crit_edge.us.i.us.unr-lcssa, %.epil.preheader41
  %.lcssa = phi ptr [ %i.be, %..preheader44_crit_edge.us.i.us.unr-lcssa ], [ %i.bo, %.epil.preheader41 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.lcssa, i8 0, i64 %i.ac, i1 false), !tbaa !44
  %i.bp = getelementptr i8, ptr %.03954.us.i.us, i64 %i.ag
  %scevgep.i.us = getelementptr i8, ptr %i.bp, i64 4
  %indvars.iv.next65.i.us = add nuw nsw i64 %indvars.iv64.i.us, 1 ; 2 uses
  %exitcond68.not.i.us = icmp eq i64 %indvars.iv.next65.i.us, %wide.trip.count67.i
  br i1 %exitcond68.not.i.us, label %convert_channels_short_interleaved.exit, label %.preheader45.us.i.us, !llvm.loop !454

.preheader45.us.i:                                ; preds = %.preheader45.us.i.preheader, %..preheader44_crit_edge.us.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %..preheader44_crit_edge.us.i ], [ 0, %.preheader45.us.i.preheader ] ; 4 uses
  %.03954.us.i = phi ptr [ %.lcssa38, %..preheader44_crit_edge.us.i ], [ %2, %.preheader45.us.i.preheader ] ; 2 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader45.us.i.new

.preheader45.us.i.new:                            ; preds = %.preheader45.us.i, %.preheader45.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader45.us.i.new ], [ 0, %.preheader45.us.i ] ; 3 uses
  %.14047.us.i = phi ptr [ %i.ck, %.preheader45.us.i.new ], [ %.03954.us.i, %.preheader45.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader45.us.i.new ], [ 0, %.preheader45.us.i ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !62
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv64.i
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !56
  %i.bu = fadd float %i.bt, 3.840000e+02
  %i.bv = bitcast float %i.bu to i32
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 1136623616)
  %i.bx = call i32 @llvm.umin.i32(i32 %i.bw, i32 1136689151)
  %i.by = trunc i32 %i.bx to i16
  %i.bz = getelementptr i8, ptr %.14047.us.i, i64 2
  store i16 %i.by, ptr %.14047.us.i, align 2, !tbaa !44
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  %i.cd = getelementptr [4 x i8], ptr %i.cc, i64 %indvars.iv64.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !56
  %i.cf = fadd float %i.ce, 3.840000e+02
  %i.cg = bitcast float %i.cf to i32
  %i.ch = call i32 @llvm.smax.i32(i32 %i.cg, i32 1136623616)
  %i.ci = call i32 @llvm.umin.i32(i32 %i.ch, i32 1136689151)
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = getelementptr i8, ptr %.14047.us.i, i64 4 ; 3 uses
  store i16 %i.cj, ptr %i.bz, align 2, !tbaa !44
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader44_crit_edge.us.i.unr-lcssa, label %.preheader45.us.i.new, !llvm.loop !453

..preheader44_crit_edge.us.i.unr-lcssa:           ; preds = %.preheader45.us.i.new
  br i1 %lcmp.mod.not, label %..preheader44_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader44_crit_edge.us.i.unr-lcssa, %.preheader45.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader45.us.i ], [ %indvars.iv.next.i.1, %..preheader44_crit_edge.us.i.unr-lcssa ]
  %.14047.us.i.epil.init = phi ptr [ %.03954.us.i, %.preheader45.us.i ], [ %i.ck, %..preheader44_crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod40)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.epil.init
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !62
  %i.cn = getelementptr [4 x i8], ptr %i.cm, i64 %indvars.iv64.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !56
  %i.cp = fadd float %i.co, 3.840000e+02
  %i.cq = bitcast float %i.cp to i32
  %i.cr = call i32 @llvm.smax.i32(i32 %i.cq, i32 1136623616)
  %i.cs = call i32 @llvm.umin.i32(i32 %i.cr, i32 1136689151)
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr i8, ptr %.14047.us.i.epil.init, i64 2
  store i16 %i.ct, ptr %.14047.us.i.epil.init, align 2, !tbaa !44
  br label %..preheader44_crit_edge.us.i

..preheader44_crit_edge.us.i:                     ; preds = %..preheader44_crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa38 = phi ptr [ %i.ck, %..preheader44_crit_edge.us.i.unr-lcssa ], [ %i.cu, %.epil.preheader ]
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %convert_channels_short_interleaved.exit, label %.preheader45.us.i, !llvm.loop !454

.preheader45.lr.ph.split.i:                       ; preds = %.preheader45.lr.ph.i
  %i.cv = icmp sgt i32 %1, 0
  br i1 %i.cv, label %.preheader45.preheader.i, label %convert_channels_short_interleaved.exit

.preheader45.preheader.i:                         ; preds = %.preheader45.lr.ph.split.i
  %i.cw = zext nneg i32 %.0 to i64
  %i.cx = shl nuw i32 %1, 1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = mul nuw nsw i64 %i.cy, %i.cw
  call void @llvm.memset.p0.i64(ptr align 2 %2, i8 0, i64 %i.cz, i1 false), !tbaa !44
  br label %convert_channels_short_interleaved.exit

convert_channels_short_interleaved.exit:          ; preds = %..preheader44_crit_edge.us.i, %..preheader44_crit_edge.us.i.us, %.lr.ph.i, %.preheader45.preheader.i, %.preheader45.lr.ph.split.i, %bb.h, %.preheader.i, %bb.d, %stb_vorbis_get_frame_short.exit
  %.015 = phi i32 [ %spec.select.i, %stb_vorbis_get_frame_short.exit ], [ 0, %bb.d ], [ %.0, %.preheader.i ], [ %.0, %.preheader45.preheader.i ], [ %.0, %bb.h ], [ %.0, %..preheader44_crit_edge.us.i.us ], [ %.0, %.preheader45.lr.ph.split.i ], [ %.0, %.lr.ph.i ], [ %.0, %..preheader44_crit_edge.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret i32 %.015
}

; Function Attrs: nofree nounwind uwtable
define i32 @stb_vorbis_get_samples_short_interleaved(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 27 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.c = sdiv i32 %3, %1                          ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1892 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 9 uses
  %i.h = icmp slt i32 %1, 3
  %i.i = icmp sgt i32 %1, 0                       ; 2 uses
  %i.j = zext nneg i32 %1 to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  %exitcond69.not.i.us = icmp eq i32 %1, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.031 = phi ptr [ %2, %bb.a ], [ %i.kj, %bb.g ] ; 7 uses
  %.030 = phi i32 [ 0, %bb.a ], [ %i.ke, %bb.g ]  ; 5 uses
  %i.l = icmp slt i32 %.030, %i.c
  br i1 %i.l, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.d, align 8, !tbaa !225
  %i.n = load i32, ptr %i.e, align 4, !tbaa !226  ; 4 uses
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %i.p = add nsw i32 %i.o, %.030
  %.not = icmp slt i32 %i.p, %i.c
  %i.q = sub nsw i32 %i.c, %.030
  %spec.select = select i1 %.not, i32 %i.o, i32 %i.q ; 18 uses
  %.not33 = icmp eq i32 %spec.select, 0
  br i1 %.not33, label %convert_channels_short_interleaved.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.f, align 4, !tbaa !150  ; 6 uses
  %i.s = icmp ne i32 %1, %i.r
  %or.cond.i = and i1 %i.h, %i.s
  %i.t = icmp slt i32 %i.r, 7
  %or.cond3.i = and i1 %i.t, %or.cond.i
  br i1 %or.cond3.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.i, label %.lr.ph.i.preheader, label %convert_channels_short_interleaved.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.u = icmp sgt i32 %spec.select, 0
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw [6 x i8], ptr @channel_position, i64 %i.v
  %i.x = zext nneg i32 %spec.select to i64        ; 3 uses
  %i.y = sext i32 %i.n to i64
  br i1 %i.u, label %.lr.ph.i.preheader.split.us, label %convert_channels_short_interleaved.exit

.lr.ph.i.preheader.split.us:                      ; preds = %.lr.ph.i.preheader
  %i.z = icmp sgt i32 %i.r, 0
  br i1 %i.z, label %.lr.ph.i.us.us, label %.lr.ph.i.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.preheader.split.us, %compute_stereo_samples.exit.loopexit.us.us
  %.03856.i.us.us = phi i32 [ %i.ej, %compute_stereo_samples.exit.loopexit.us.us ], [ 0, %.lr.ph.i.preheader.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  br label %.lr.ph78.us.i.us.us

.lr.ph78.us.i.us.us:                              ; preds = %._crit_edge.us.i38.us.us, %.lr.ph.i.us.us
  %indvars.iv56 = phi i32 [ %indvars.iv.next57, %._crit_edge.us.i38.us.us ], [ 0, %.lr.ph.i.us.us ] ; 2 uses
  %indvars.iv109.i.us.us = phi i64 [ %indvars.iv.next110.i.us.us, %._crit_edge.us.i38.us.us ], [ 0, %.lr.ph.i.us.us ] ; 3 uses
  %.05982.us.i.us.us = phi i32 [ %spec.select.us.i.us.us, %._crit_edge.us.i38.us.us ], [ 16, %.lr.ph.i.us.us ] ; 2 uses
  %indvars65 = trunc i64 %indvars.iv109.i.us.us to i32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.aa = add i32 %.05982.us.i.us.us, %indvars65  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, %spec.select
  %i.ac = sub i32 %spec.select, %indvars65
  %spec.select.us.i.us.us = select i1 %i.ab, i32 %i.ac, i32 %.05982.us.i.us.us ; 3 uses
  %i.ad = icmp sgt i32 %spec.select.us.i.us.us, 0 ; 3 uses
  %i.ae = add nsw i64 %indvars.iv109.i.us.us, %i.y ; 3 uses
  %smin55 = call i32 @llvm.smin.i32(i32 %i.aa, i32 %spec.select) ; 3 uses
  %i.af = add i32 %smin55, %indvars.iv56          ; 5 uses
  %4 = sext i32 %i.af to i64                      ; 9 uses
  %min.iters.check110 = icmp ult i32 %i.af, 5
  %i.ag = and i64 %4, 3
  %5 = and i32 %smin55, 3
  %i.ah = icmp eq i32 %5, 0
  %i.ai = select i1 %i.ah, i64 4, i64 %i.ag
  %n.vec112 = sub nsw i64 %4, %i.ai               ; 2 uses
  %min.iters.check98 = icmp ult i32 %i.af, 5
  %i.aj = and i64 %4, 3
  %6 = and i32 %smin55, 3
  %i.ak = icmp eq i32 %6, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec100 = sub nsw i64 %4, %i.al               ; 2 uses
  %min.iters.check86 = icmp ult i32 %i.af, 2
  %n.vec88 = and i64 %4, -2                       ; 3 uses
  %cmp.n95 = icmp eq i64 %n.vec88, %4
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.us.i.us.us, %.lr.ph78.us.i.us.us
  %indvars.iv103.i.us.us = phi i64 [ 0, %.lr.ph78.us.i.us.us ], [ %indvars.iv.next104.i.us.us, %.loopexit.us.i.us.us ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv103.i.us.us
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = and i8 %i.an, 6
  switch i8 %i.ao, label %.unreachabledefault [
    i8 6, label %.preheader.us.i.us.us
    i8 2, label %.preheader67.us.i.us.us
    i8 4, label %.preheader69.us.i.us.us
    i8 0, label %.loopexit.us.i.us.us
  ]

.preheader69.us.i.us.us:                          ; preds = %bb.e
  br i1 %i.ad, label %.lr.ph.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.preheader69.us.i.us.us
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %i.ae ; 2 uses
  br i1 %min.iters.check110, label %scalar.ph109.preheader, label %vector.body113

vector.body113:                                   ; preds = %.lr.ph.us.i.us.us, %vector.body113
  %index114 = phi i64 [ %index.next118, %vector.body113 ], [ 0, %.lr.ph.us.i.us.us ] ; 6 uses
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %index114
  %wide.load115 = load <4 x float>, ptr %i.as, align 4, !tbaa !56
  %i.at = shl nuw nsw i64 %index114, 3
  %i.au = shl i64 %index114, 3
  %i.av = shl i64 %index114, 3
  %i.aw = shl i64 %index114, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %wide.vec116 = load <8 x float>, ptr %i.bb, align 4, !tbaa !56
  %strided.vec117 = shufflevector <8 x float> %wide.vec116, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bf = fadd <4 x float> %wide.load115, %strided.vec117 ; 4 uses
  %i.bg = extractelement <4 x float> %i.bf, i64 0
  store float %i.bg, ptr %i.bb, align 4, !tbaa !56
  %i.bh = extractelement <4 x float> %i.bf, i64 1
  store float %i.bh, ptr %i.bc, align 4, !tbaa !56
  %i.bi = extractelement <4 x float> %i.bf, i64 2
  store float %i.bi, ptr %i.bd, align 4, !tbaa !56
  %i.bj = extractelement <4 x float> %i.bf, i64 3
  store float %i.bj, ptr %i.be, align 4, !tbaa !56
  %index.next118 = add nuw i64 %index114, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next118, %n.vec112
  br i1 %i.bk, label %scalar.ph109.preheader, label %vector.body113, !llvm.loop !455

scalar.ph109.preheader:                           ; preds = %vector.body113, %.lr.ph.us.i.us.us
  %indvars.iv94.i.us.us.ph = phi i64 [ 0, %.lr.ph.us.i.us.us ], [ %n.vec112, %vector.body113 ]
  br label %scalar.ph109

scalar.ph109:                                     ; preds = %scalar.ph109.preheader, %scalar.ph109
  %indvars.iv94.i.us.us = phi i64 [ %indvars.iv.next95.i.us.us, %scalar.ph109 ], [ %indvars.iv94.i.us.us.ph, %scalar.ph109.preheader ] ; 3 uses
  %i.bl = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv94.i.us.us
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !56
  %.idx.i.us.us = shl nuw nsw i64 %indvars.iv94.i.us.us, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.us.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !56
  %i.bq = fadd float %i.bm, %i.bp
  store float %i.bq, ptr %i.bo, align 4, !tbaa !56
  %indvars.iv.next95.i.us.us = add nuw nsw i64 %indvars.iv94.i.us.us, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next95.i.us.us, %4
  br i1 %exitcond58.not, label %.loopexit.us.i.us.us, label %scalar.ph109, !llvm.loop !456

.preheader67.us.i.us.us:                          ; preds = %bb.e
  br i1 %i.ad, label %.lr.ph74.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph74.us.i.us.us:                              ; preds = %.preheader67.us.i.us.us
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !62
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.ae ; 2 uses
  br i1 %min.iters.check98, label %scalar.ph97.preheader, label %vector.body101

vector.body101:                                   ; preds = %.lr.ph74.us.i.us.us, %vector.body101
  %index102 = phi i64 [ %index.next106, %vector.body101 ], [ 0, %.lr.ph74.us.i.us.us ] ; 6 uses
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %index102
  %wide.load103 = load <4 x float>, ptr %i.bu, align 4, !tbaa !56
  %i.bv = shl nuw nsw i64 %index102, 3
  %i.bw = shl i64 %index102, 3
  %i.bx = shl i64 %index102, 3
  %i.by = shl i64 %index102, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %wide.vec104 = load <8 x float>, ptr %i.bz, align 16, !tbaa !56
  %strided.vec105 = shufflevector <8 x float> %wide.vec104, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cg = fadd <4 x float> %wide.load103, %strided.vec105 ; 4 uses
  %i.ch = extractelement <4 x float> %i.cg, i64 0
  store float %i.ch, ptr %i.bz, align 16, !tbaa !56
  %i.ci = extractelement <4 x float> %i.cg, i64 1
  store float %i.ci, ptr %i.cb, align 8, !tbaa !56
  %i.cj = extractelement <4 x float> %i.cg, i64 2
  store float %i.cj, ptr %i.cd, align 16, !tbaa !56
  %i.ck = extractelement <4 x float> %i.cg, i64 3
  store float %i.ck, ptr %i.cf, align 8, !tbaa !56
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next106, %n.vec100
  br i1 %i.cl, label %scalar.ph97.preheader, label %vector.body101, !llvm.loop !457

scalar.ph97.preheader:                            ; preds = %vector.body101, %.lr.ph74.us.i.us.us
  %indvars.iv97.i.us.us.ph = phi i64 [ 0, %.lr.ph74.us.i.us.us ], [ %n.vec100, %vector.body101 ]
  br label %scalar.ph97

scalar.ph97:                                      ; preds = %scalar.ph97.preheader, %scalar.ph97
  %indvars.iv97.i.us.us = phi i64 [ %indvars.iv.next98.i.us.us, %scalar.ph97 ], [ %indvars.iv97.i.us.us.ph, %scalar.ph97.preheader ] ; 3 uses
  %i.cm = getelementptr [4 x i8], ptr %i.bt, i64 %indvars.iv97.i.us.us
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !56
  %.idx114.i.us.us = shl nuw nsw i64 %indvars.iv97.i.us.us, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx114.i.us.us ; 2 uses
  %i.cp = load float, ptr %i.co, align 8, !tbaa !56
  %i.cq = fadd float %i.cn, %i.cp
  store float %i.cq, ptr %i.co, align 8, !tbaa !56
  %indvars.iv.next98.i.us.us = add nuw nsw i64 %indvars.iv97.i.us.us, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next98.i.us.us, %4
  br i1 %exitcond60.not, label %.loopexit.us.i.us.us, label %scalar.ph97, !llvm.loop !458

.preheader.us.i.us.us:                            ; preds = %bb.e
  br i1 %i.ad, label %.lr.ph76.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph76.us.i.us.us:                              ; preds = %.preheader.us.i.us.us
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !62
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.ae ; 2 uses
  br i1 %min.iters.check86, label %scalar.ph85.preheader, label %vector.body89

vector.body89:                                    ; preds = %.lr.ph76.us.i.us.us, %vector.body89
  %index90 = phi i64 [ %index.next93, %vector.body89 ], [ 0, %.lr.ph76.us.i.us.us ] ; 3 uses
  %i.cu = getelementptr [4 x i8], ptr %i.ct, i64 %index90
  %wide.load91 = load <2 x float>, ptr %i.cu, align 4, !tbaa !56
  %i.cv = shl nuw nsw i64 %index90, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.cw, align 16, !tbaa !56
  %i.cx = shufflevector <2 x float> %wide.load91, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.cx, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.cw, align 16, !tbaa !56
  %index.next93 = add nuw i64 %index90, 2         ; 2 uses
  %i.cy = icmp eq i64 %index.next93, %n.vec88
  br i1 %i.cy, label %middle.block94, label %vector.body89, !llvm.loop !459

middle.block94:                                   ; preds = %vector.body89
  br i1 %cmp.n95, label %.loopexit.us.i.us.us, label %scalar.ph85.preheader

scalar.ph85.preheader:                            ; preds = %.lr.ph76.us.i.us.us, %middle.block94
  %indvars.iv100.i.us.us.ph = phi i64 [ 0, %.lr.ph76.us.i.us.us ], [ %n.vec88, %middle.block94 ]
  br label %scalar.ph85

scalar.ph85:                                      ; preds = %scalar.ph85.preheader, %scalar.ph85
  %indvars.iv100.i.us.us = phi i64 [ %indvars.iv.next101.i.us.us, %scalar.ph85 ], [ %indvars.iv100.i.us.us.ph, %scalar.ph85.preheader ] ; 3 uses
  %i.cz = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv100.i.us.us
  %i.da = load float, ptr %i.cz, align 4, !tbaa !56
  %.idx115.i.us.us = shl nuw nsw i64 %indvars.iv100.i.us.us, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115.i.us.us ; 2 uses
  %i.dc = load <2 x float>, ptr %i.db, align 8, !tbaa !56
  %i.dd = insertelement <2 x float> poison, float %i.da, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fadd <2 x float> %i.de, %i.dc
  store <2 x float> %i.df, ptr %i.db, align 8, !tbaa !56
  %indvars.iv.next101.i.us.us = add nuw nsw i64 %indvars.iv100.i.us.us, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next101.i.us.us, %4
  br i1 %exitcond62.not, label %.loopexit.us.i.us.us, label %scalar.ph85, !llvm.loop !460

.loopexit.us.i.us.us:                             ; preds = %scalar.ph109, %scalar.ph97, %scalar.ph85, %middle.block94, %.preheader.us.i.us.us, %.preheader67.us.i.us.us, %.preheader69.us.i.us.us, %bb.e
  %indvars.iv.next104.i.us.us = add nuw nsw i64 %indvars.iv103.i.us.us, 1 ; 2 uses
  %exitcond.not.i37.us.us = icmp eq i64 %indvars.iv.next104.i.us.us, %i.v
  br i1 %exitcond.not.i37.us.us, label %..preheader71_crit_edge.us.i.us.us, label %bb.e, !llvm.loop !431

..preheader71_crit_edge.us.i.us.us:               ; preds = %.loopexit.us.i.us.us
  %i.dg = shl i32 %spec.select.us.i.us.us, 1
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph80.us.preheader.i.us.us, label %._crit_edge.us.i38.us.us

.lr.ph80.us.preheader.i.us.us:                    ; preds = %..preheader71_crit_edge.us.i.us.us
  %i.di = shl i32 %indvars65, 1
  %i.dj = sext i32 %i.di to i64
  %invariant.gep119.i.us.us = getelementptr [2 x i8], ptr %.031, i64 %i.dj ; 2 uses
  %i.dk = shl i32 %i.af, 1                        ; 2 uses
  %i.dl = zext i32 %i.dk to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.dk, 8
  br i1 %min.iters.check, label %.lr.ph80.us.i.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.us.preheader.i.us.us
  %n.vec = and i64 %i.dl, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <4 x float>, ptr %i.dm, align 16, !tbaa !56
  %wide.load84 = load <4 x float>, ptr %i.dn, align 16, !tbaa !56
  %i.do = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.dp = fadd <4 x float> %wide.load84, splat (float 3.840000e+02)
  %i.dq = bitcast <4 x float> %i.do to <4 x i32>
  %i.dr = bitcast <4 x float> %i.dp to <4 x i32>
  %i.ds = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dq, <4 x i32> splat (i32 1136623616))
  %i.dt = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dr, <4 x i32> splat (i32 1136623616))
  %i.du = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ds, <4 x i32> splat (i32 1136689151))
  %i.dv = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dt, <4 x i32> splat (i32 1136689151))
  %i.dw = trunc <4 x i32> %i.du to <4 x i16>
  %i.dx = trunc <4 x i32> %i.dv to <4 x i16>
  %i.dy = getelementptr [2 x i8], ptr %invariant.gep119.i.us.us, i64 %index ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  store <4 x i16> %i.dw, ptr %i.dy, align 2, !tbaa !44
  store <4 x i16> %i.dx, ptr %i.dz, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !461

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dl
  br i1 %cmp.n, label %._crit_edge.us.i38.us.us, label %.lr.ph80.us.i.us.us.preheader

.lr.ph80.us.i.us.us.preheader:                    ; preds = %.lr.ph80.us.preheader.i.us.us, %middle.block
  %indvars.iv106.i.us.us.ph = phi i64 [ 0, %.lr.ph80.us.preheader.i.us.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph80.us.i.us.us

.lr.ph80.us.i.us.us:                              ; preds = %.lr.ph80.us.i.us.us.preheader, %.lr.ph80.us.i.us.us
  %indvars.iv106.i.us.us = phi i64 [ %indvars.iv.next107.i.us.us, %.lr.ph80.us.i.us.us ], [ %indvars.iv106.i.us.us.ph, %.lr.ph80.us.i.us.us.preheader ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106.i.us.us
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !56
  %i.ed = fadd float %i.ec, 3.840000e+02
  %i.ee = bitcast float %i.ed to i32
  %i.ef = call i32 @llvm.smax.i32(i32 %i.ee, i32 1136623616)
  %i.eg = call i32 @llvm.umin.i32(i32 %i.ef, i32 1136689151)
  %i.eh = trunc i32 %i.eg to i16
  %gep120.i.us.us = getelementptr [2 x i8], ptr %invariant.gep119.i.us.us, i64 %indvars.iv106.i.us.us
  store i16 %i.eh, ptr %gep120.i.us.us, align 2, !tbaa !44
  %indvars.iv.next107.i.us.us = add nuw nsw i64 %indvars.iv106.i.us.us, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next107.i.us.us, %i.dl
  br i1 %exitcond64.not, label %._crit_edge.us.i38.us.us, label %.lr.ph80.us.i.us.us, !llvm.loop !462

._crit_edge.us.i38.us.us:                         ; preds = %.lr.ph80.us.i.us.us, %middle.block, %..preheader71_crit_edge.us.i.us.us
  %indvars.iv.next110.i.us.us = add nuw nsw i64 %indvars.iv109.i.us.us, 16 ; 2 uses
  %i.ei = icmp samesign ult i64 %indvars.iv.next110.i.us.us, %i.x
  %indvars.iv.next57 = add i32 %indvars.iv56, -16
  br i1 %i.ei, label %.lr.ph78.us.i.us.us, label %compute_stereo_samples.exit.loopexit.us.us, !llvm.loop !433

compute_stereo_samples.exit.loopexit.us.us:       ; preds = %._crit_edge.us.i38.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ej = add nuw nsw i32 %.03856.i.us.us, 1      ; 2 uses
  %exitcond69.not.i.us.us = icmp eq i32 %i.ej, %1
  br i1 %exitcond69.not.i.us.us, label %convert_channels_short_interleaved.exit, label %.lr.ph.i.us.us, !llvm.loop !452

.unreachabledefault:                              ; preds = %bb.e
  unreachable

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us

.preheader71.i.us:                                ; preds = %._crit_edge.i.us, %.lr.ph.i.us
  %indvars.iv52 = phi i32 [ %indvars.iv.next53, %._crit_edge.i.us ], [ 0, %.lr.ph.i.us ] ; 2 uses
  %indvars.iv91.i.us = phi i64 [ %indvars.iv.next92.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph.i.us ] ; 2 uses
  %.05982.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 16, %.lr.ph.i.us ] ; 2 uses
  %indvars54 = trunc i64 %indvars.iv91.i.us to i32 ; 3 uses
  %i.ek = add nsw i32 %.05982.i.us, %indvars54    ; 2 uses
  %i.el = icmp sgt i32 %i.ek, %spec.select
  %i.em = sub i32 %spec.select, %indvars54
  %spec.select.i.us = select i1 %i.el, i32 %i.em, i32 %.05982.i.us ; 2 uses
  %i.en = shl i32 %spec.select.i.us, 1
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph80.preheader.i.us, label %._crit_edge.i.us

.lr.ph80.preheader.i.us:                          ; preds = %.preheader71.i.us
  %i.ep = shl i32 %indvars54, 1
  %i.eq = sext i32 %i.ep to i64
  %invariant.gep.i.us = getelementptr [2 x i8], ptr %.031, i64 %i.eq ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.ek, i32 %spec.select)
  %i.er = add i32 %smin, %indvars.iv52
  %7 = shl i32 %i.er, 1                           ; 2 uses
  %8 = zext i32 %7 to i64                         ; 3 uses
  %min.iters.check122 = icmp ult i32 %7, 8
  br i1 %min.iters.check122, label %.lr.ph80.i.us.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph80.preheader.i.us
  %n.vec124 = and i64 %8, 4294967288              ; 3 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next129, %vector.body125 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index126 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load127 = load <4 x float>, ptr %i.es, align 16, !tbaa !56
  %wide.load128 = load <4 x float>, ptr %i.et, align 16, !tbaa !56
  %i.eu = fadd <4 x float> %wide.load127, splat (float 3.840000e+02)
  %i.ev = fadd <4 x float> %wide.load128, splat (float 3.840000e+02)
  %i.ew = bitcast <4 x float> %i.eu to <4 x i32>
  %i.ex = bitcast <4 x float> %i.ev to <4 x i32>
  %i.ey = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ew, <4 x i32> splat (i32 1136623616))
  %i.ez = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ex, <4 x i32> splat (i32 1136623616))
  %i.fa = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ey, <4 x i32> splat (i32 1136689151))
  %i.fb = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ez, <4 x i32> splat (i32 1136689151))
  %i.fc = trunc <4 x i32> %i.fa to <4 x i16>
  %i.fd = trunc <4 x i32> %i.fb to <4 x i16>
  %i.fe = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %index126 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  store <4 x i16> %i.fc, ptr %i.fe, align 2, !tbaa !44
  store <4 x i16> %i.fd, ptr %i.ff, align 2, !tbaa !44
  %index.next129 = add nuw i64 %index126, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next129, %n.vec124
  br i1 %i.fg, label %middle.block130, label %vector.body125, !llvm.loop !463

middle.block130:                                  ; preds = %vector.body125
  %cmp.n131 = icmp eq i64 %n.vec124, %8
  br i1 %cmp.n131, label %._crit_edge.i.us, label %.lr.ph80.i.us.preheader

.lr.ph80.i.us.preheader:                          ; preds = %.lr.ph80.preheader.i.us, %middle.block130
  %indvars.iv.i35.us.ph = phi i64 [ 0, %.lr.ph80.preheader.i.us ], [ %n.vec124, %middle.block130 ]
  br label %.lr.ph80.i.us

.lr.ph80.i.us:                                    ; preds = %.lr.ph80.i.us.preheader, %.lr.ph80.i.us
  %indvars.iv.i35.us = phi i64 [ %indvars.iv.next.i36.us, %.lr.ph80.i.us ], [ %indvars.iv.i35.us.ph, %.lr.ph80.i.us.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i35.us
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !56
  %i.fj = fadd float %i.fi, 3.840000e+02
  %i.fk = bitcast float %i.fj to i32
  %i.fl = call i32 @llvm.smax.i32(i32 %i.fk, i32 1136623616)
  %i.fm = call i32 @llvm.umin.i32(i32 %i.fl, i32 1136689151)
  %i.fn = trunc i32 %i.fm to i16
  %gep.i.us = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i35.us
  store i16 %i.fn, ptr %gep.i.us, align 2, !tbaa !44
  %indvars.iv.next.i36.us = add nuw nsw i64 %indvars.iv.i35.us, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i36.us, %8
  br i1 %exitcond.not, label %._crit_edge.i.us, label %.lr.ph80.i.us, !llvm.loop !464

._crit_edge.i.us:                                 ; preds = %.lr.ph80.i.us, %middle.block130, %.preheader71.i.us
  %indvars.iv.next92.i.us = add nuw nsw i64 %indvars.iv91.i.us, 16 ; 2 uses
  %i.fo = icmp samesign ult i64 %indvars.iv.next92.i.us, %i.x
  %indvars.iv.next53 = add i32 %indvars.iv52, -16
  br i1 %i.fo, label %.preheader71.i.us, label %compute_stereo_samples.exit.loopexit42.us, !llvm.loop !433

compute_stereo_samples.exit.loopexit42.us:        ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %exitcond69.not.i.us, label %convert_channels_short_interleaved.exit, label %.lr.ph.i.us.1

.lr.ph.i.us.1:                                    ; preds = %compute_stereo_samples.exit.loopexit42.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us.1

.preheader71.i.us.1:                              ; preds = %._crit_edge.i.us.1, %.lr.ph.i.us.1
  %indvars.iv52.1 = phi i32 [ %indvars.iv.next53.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph.i.us.1 ] ; 2 uses
  %indvars.iv91.i.us.1 = phi i64 [ %indvars.iv.next92.i.us.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph.i.us.1 ] ; 2 uses
  %.05982.i.us.1 = phi i32 [ %spec.select.i.us.1, %._crit_edge.i.us.1 ], [ 16, %.lr.ph.i.us.1 ] ; 2 uses
  %indvars54.1 = trunc i64 %indvars.iv91.i.us.1 to i32 ; 3 uses
  %i.fp = add nsw i32 %.05982.i.us.1, %indvars54.1 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, %spec.select
  %i.fr = sub i32 %spec.select, %indvars54.1
  %spec.select.i.us.1 = select i1 %i.fq, i32 %i.fr, i32 %.05982.i.us.1 ; 2 uses
  %i.fs = shl i32 %spec.select.i.us.1, 1
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph80.preheader.i.us.1, label %._crit_edge.i.us.1

.lr.ph80.preheader.i.us.1:                        ; preds = %.preheader71.i.us.1
  %i.fu = shl i32 %indvars54.1, 1
  %i.fv = sext i32 %i.fu to i64
  %invariant.gep.i.us.1 = getelementptr [2 x i8], ptr %.031, i64 %i.fv ; 2 uses
  %smin.1 = call i32 @llvm.smin.i32(i32 %i.fp, i32 %spec.select)
  %i.fw = add i32 %smin.1, %indvars.iv52.1
  %9 = shl i32 %i.fw, 1                           ; 2 uses
  %10 = zext i32 %9 to i64                        ; 3 uses
  %min.iters.check122.1 = icmp ult i32 %9, 8
  br i1 %min.iters.check122.1, label %.lr.ph80.i.us.preheader.1, label %vector.ph123.1

vector.ph123.1:                                   ; preds = %.lr.ph80.preheader.i.us.1
  %n.vec124.1 = and i64 %10, 4294967288           ; 3 uses
  br label %vector.body125.1

vector.body125.1:                                 ; preds = %vector.body125.1, %vector.ph123.1
  %index126.1 = phi i64 [ 0, %vector.ph123.1 ], [ %index.next129.1, %vector.body125.1 ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index126.1 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load127.1 = load <4 x float>, ptr %i.fx, align 16, !tbaa !56
  %wide.load128.1 = load <4 x float>, ptr %i.fy, align 16, !tbaa !56
  %i.fz = fadd <4 x float> %wide.load127.1, splat (float 3.840000e+02)
  %i.ga = fadd <4 x float> %wide.load128.1, splat (float 3.840000e+02)
  %i.gb = bitcast <4 x float> %i.fz to <4 x i32>
  %i.gc = bitcast <4 x float> %i.ga to <4 x i32>
  %i.gd = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gb, <4 x i32> splat (i32 1136623616))
  %i.ge = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gc, <4 x i32> splat (i32 1136623616))
  %i.gf = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gd, <4 x i32> splat (i32 1136689151))
  %i.gg = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ge, <4 x i32> splat (i32 1136689151))
  %i.gh = trunc <4 x i32> %i.gf to <4 x i16>
  %i.gi = trunc <4 x i32> %i.gg to <4 x i16>
  %i.gj = getelementptr [2 x i8], ptr %invariant.gep.i.us.1, i64 %index126.1 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  store <4 x i16> %i.gh, ptr %i.gj, align 2, !tbaa !44
  store <4 x i16> %i.gi, ptr %i.gk, align 2, !tbaa !44
  %index.next129.1 = add nuw i64 %index126.1, 8   ; 2 uses
  %i.gl = icmp eq i64 %index.next129.1, %n.vec124.1
  br i1 %i.gl, label %middle.block130.1, label %vector.body125.1, !llvm.loop !463

middle.block130.1:                                ; preds = %vector.body125.1
  %cmp.n131.1 = icmp eq i64 %n.vec124.1, %10
  br i1 %cmp.n131.1, label %._crit_edge.i.us.1, label %.lr.ph80.i.us.preheader.1

.lr.ph80.i.us.preheader.1:                        ; preds = %middle.block130.1, %.lr.ph80.preheader.i.us.1
  %indvars.iv.i35.us.ph.1 = phi i64 [ 0, %.lr.ph80.preheader.i.us.1 ], [ %n.vec124.1, %middle.block130.1 ]
  br label %.lr.ph80.i.us.1

.lr.ph80.i.us.1:                                  ; preds = %.lr.ph80.i.us.1, %.lr.ph80.i.us.preheader.1
  %indvars.iv.i35.us.1 = phi i64 [ %indvars.iv.next.i36.us.1, %.lr.ph80.i.us.1 ], [ %indvars.iv.i35.us.ph.1, %.lr.ph80.i.us.preheader.1 ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i35.us.1
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !56
  %i.go = fadd float %i.gn, 3.840000e+02
  %i.gp = bitcast float %i.go to i32
  %i.gq = call i32 @llvm.smax.i32(i32 %i.gp, i32 1136623616)
  %i.gr = call i32 @llvm.umin.i32(i32 %i.gq, i32 1136689151)
  %i.gs = trunc i32 %i.gr to i16
  %gep.i.us.1 = getelementptr [2 x i8], ptr %invariant.gep.i.us.1, i64 %indvars.iv.i35.us.1
  store i16 %i.gs, ptr %gep.i.us.1, align 2, !tbaa !44
  %indvars.iv.next.i36.us.1 = add nuw nsw i64 %indvars.iv.i35.us.1, 1 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.i36.us.1, %10
  br i1 %exitcond.not.1, label %._crit_edge.i.us.1, label %.lr.ph80.i.us.1, !llvm.loop !464

._crit_edge.i.us.1:                               ; preds = %.lr.ph80.i.us.1, %middle.block130.1, %.preheader71.i.us.1
  %indvars.iv.next92.i.us.1 = add nuw nsw i64 %indvars.iv91.i.us.1, 16 ; 2 uses
  %i.gt = icmp samesign ult i64 %indvars.iv.next92.i.us.1, %i.x
  %indvars.iv.next53.1 = add i32 %indvars.iv52.1, -16
  br i1 %i.gt, label %.preheader71.i.us.1, label %compute_stereo_samples.exit.loopexit42.us.1, !llvm.loop !433

compute_stereo_samples.exit.loopexit42.us.1:      ; preds = %._crit_edge.i.us.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %convert_channels_short_interleaved.exit

bb.f:                                             ; preds = %bb.d
  %i.gu = call i32 @llvm.smin.i32(i32 %1, i32 %i.r) ; 9 uses
  %i.gv = icmp sgt i32 %spec.select, 0
  br i1 %i.gv, label %.preheader45.lr.ph.i, label %convert_channels_short_interleaved.exit

.preheader45.lr.ph.i:                             ; preds = %bb.f
  %i.gw = icmp sgt i32 %i.gu, 0
  br i1 %i.gw, label %.preheader45.us.preheader.i, label %.preheader45.lr.ph.split.i

.preheader45.us.preheader.i:                      ; preds = %.preheader45.lr.ph.i
  %i.gx = add nuw i32 %i.gu, 1
  %smax.i = call i32 @llvm.smax.i32(i32 %1, i32 %i.gx)
  %i.gy = xor i32 %i.gu, -1
  %i.gz = add i32 %smax.i, %i.gy
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  %i.hb = shl nuw nsw i64 %i.ha, 1
  %i.hc = add nuw nsw i64 %i.hb, 2
  %i.hd = add nsw i32 %i.gu, -1
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = add nuw nsw i64 %i.ha, %i.he
  %i.hg = shl nuw nsw i64 %i.hf, 1
  %i.hh = sext i32 %i.n to i64                    ; 6 uses
  %wide.trip.count67.i = zext nneg i32 %spec.select to i64 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.gu to i64 ; 4 uses
  %i.hi = icmp slt i32 %i.r, %1
  br i1 %i.hi, label %.preheader45.us.i.us.preheader, label %.preheader45.us.i.preheader

.preheader45.us.i.preheader:                      ; preds = %.preheader45.us.preheader.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.hj = icmp eq i32 %i.gu, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod140 = trunc i32 %i.gu to i1
  br label %.preheader45.us.i

.preheader45.us.i.us.preheader:                   ; preds = %.preheader45.us.preheader.i
  %xtraiter142 = and i64 %wide.trip.count.i, 1
  %i.hk = icmp eq i32 %i.gu, 1
  %unroll_iter146 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  %lcmp.mod145 = trunc i32 %i.gu to i1
  br label %.preheader45.us.i.us

.preheader45.us.i.us:                             ; preds = %.preheader45.us.i.us.preheader, %..preheader44_crit_edge.us.i.us
  %indvars.iv64.i.us = phi i64 [ %indvars.iv.next65.i.us, %..preheader44_crit_edge.us.i.us ], [ 0, %.preheader45.us.i.us.preheader ] ; 4 uses
  %.03954.us.i.us = phi ptr [ %scevgep.i.us, %..preheader44_crit_edge.us.i.us ], [ %.031, %.preheader45.us.i.us.preheader ] ; 3 uses
  br i1 %i.hk, label %.epil.preheader141, label %.preheader45.us.i.us.new

.preheader45.us.i.us.new:                         ; preds = %.preheader45.us.i.us, %.preheader45.us.i.us.new
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %.preheader45.us.i.us.new ], [ 0, %.preheader45.us.i.us ] ; 3 uses
  %.14047.us.i.us = phi ptr [ %i.ih, %.preheader45.us.i.us.new ], [ %.03954.us.i.us, %.preheader45.us.i.us ] ; 3 uses
  %niter147 = phi i64 [ %niter147.next.1, %.preheader45.us.i.us.new ], [ 0, %.preheader45.us.i.us ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.us
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !62
  %i.hn = getelementptr [4 x i8], ptr %i.hm, i64 %indvars.iv64.i.us
  %i.ho = getelementptr [4 x i8], ptr %i.hn, i64 %i.hh
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !56
  %i.hq = fadd float %i.hp, 3.840000e+02
  %i.hr = bitcast float %i.hq to i32
  %i.hs = call i32 @llvm.smax.i32(i32 %i.hr, i32 1136623616)
  %i.ht = call i32 @llvm.umin.i32(i32 %i.hs, i32 1136689151)
  %i.hu = trunc i32 %i.ht to i16
  %i.hv = getelementptr i8, ptr %.14047.us.i.us, i64 2
  store i16 %i.hu, ptr %.14047.us.i.us, align 2, !tbaa !44
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.us
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !62
  %i.hz = getelementptr [4 x i8], ptr %i.hy, i64 %indvars.iv64.i.us
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.hh
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !56
  %i.ic = fadd float %i.ib, 3.840000e+02
  %i.id = bitcast float %i.ic to i32
  %i.ie = call i32 @llvm.smax.i32(i32 %i.id, i32 1136623616)
  %i.if = call i32 @llvm.umin.i32(i32 %i.ie, i32 1136689151)
  %i.ig = trunc i32 %i.if to i16
  %i.ih = getelementptr i8, ptr %.14047.us.i.us, i64 4 ; 3 uses
  store i16 %i.ig, ptr %i.hv, align 2, !tbaa !44
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %..preheader44_crit_edge.us.i.us.unr-lcssa, label %.preheader45.us.i.us.new, !llvm.loop !453

..preheader44_crit_edge.us.i.us.unr-lcssa:        ; preds = %.preheader45.us.i.us.new
  br i1 %lcmp.mod143.not, label %..preheader44_crit_edge.us.i.us, label %.epil.preheader141

.epil.preheader141:                               ; preds = %..preheader44_crit_edge.us.i.us.unr-lcssa, %.preheader45.us.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.preheader45.us.i.us ], [ %indvars.iv.next.i.us.1, %..preheader44_crit_edge.us.i.us.unr-lcssa ]
  %.14047.us.i.us.epil.init = phi ptr [ %.03954.us.i.us, %.preheader45.us.i.us ], [ %i.ih, %..preheader44_crit_edge.us.i.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod145)
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.us.epil.init
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !62
  %i.ik = getelementptr [4 x i8], ptr %i.ij, i64 %indvars.iv64.i.us
  %i.il = getelementptr [4 x i8], ptr %i.ik, i64 %i.hh
  %i.im = load float, ptr %i.il, align 4, !tbaa !56
  %i.in = fadd float %i.im, 3.840000e+02
  %i.io = bitcast float %i.in to i32
  %i.ip = call i32 @llvm.smax.i32(i32 %i.io, i32 1136623616)
  %i.iq = call i32 @llvm.umin.i32(i32 %i.ip, i32 1136689151)
  %i.ir = trunc i32 %i.iq to i16
  %i.is = getelementptr i8, ptr %.14047.us.i.us.epil.init, i64 2
  store i16 %i.ir, ptr %.14047.us.i.us.epil.init, align 2, !tbaa !44
  br label %..preheader44_crit_edge.us.i.us

..preheader44_crit_edge.us.i.us:                  ; preds = %..preheader44_crit_edge.us.i.us.unr-lcssa, %.epil.preheader141
  %.lcssa138 = phi ptr [ %i.ih, %..preheader44_crit_edge.us.i.us.unr-lcssa ], [ %i.is, %.epil.preheader141 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.lcssa138, i8 0, i64 %i.hc, i1 false), !tbaa !44
  %i.it = getelementptr i8, ptr %.03954.us.i.us, i64 %i.hg
  %scevgep.i.us = getelementptr i8, ptr %i.it, i64 4
  %indvars.iv.next65.i.us = add nuw nsw i64 %indvars.iv64.i.us, 1 ; 2 uses
  %exitcond68.not.i.us = icmp eq i64 %indvars.iv.next65.i.us, %wide.trip.count67.i
  br i1 %exitcond68.not.i.us, label %convert_channels_short_interleaved.exit, label %.preheader45.us.i.us, !llvm.loop !454

.preheader45.us.i:                                ; preds = %.preheader45.us.i.preheader, %..preheader44_crit_edge.us.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %..preheader44_crit_edge.us.i ], [ 0, %.preheader45.us.i.preheader ] ; 4 uses
  %.03954.us.i = phi ptr [ %.lcssa, %..preheader44_crit_edge.us.i ], [ %.031, %.preheader45.us.i.preheader ] ; 2 uses
  br i1 %i.hj, label %.epil.preheader, label %.preheader45.us.i.new

.preheader45.us.i.new:                            ; preds = %.preheader45.us.i, %.preheader45.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader45.us.i.new ], [ 0, %.preheader45.us.i ] ; 3 uses
  %.14047.us.i = phi ptr [ %i.jq, %.preheader45.us.i.new ], [ %.03954.us.i, %.preheader45.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader45.us.i.new ], [ 0, %.preheader45.us.i ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !62
  %i.iw = getelementptr [4 x i8], ptr %i.iv, i64 %indvars.iv64.i
  %i.ix = getelementptr [4 x i8], ptr %i.iw, i64 %i.hh
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !56
  %i.iz = fadd float %i.iy, 3.840000e+02
  %i.ja = bitcast float %i.iz to i32
  %i.jb = call i32 @llvm.smax.i32(i32 %i.ja, i32 1136623616)
  %i.jc = call i32 @llvm.umin.i32(i32 %i.jb, i32 1136689151)
  %i.jd = trunc i32 %i.jc to i16
  %i.je = getelementptr i8, ptr %.14047.us.i, i64 2
  store i16 %i.jd, ptr %.14047.us.i, align 2, !tbaa !44
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !62
  %i.ji = getelementptr [4 x i8], ptr %i.jh, i64 %indvars.iv64.i
  %i.jj = getelementptr [4 x i8], ptr %i.ji, i64 %i.hh
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !56
  %i.jl = fadd float %i.jk, 3.840000e+02
  %i.jm = bitcast float %i.jl to i32
  %i.jn = call i32 @llvm.smax.i32(i32 %i.jm, i32 1136623616)
  %i.jo = call i32 @llvm.umin.i32(i32 %i.jn, i32 1136689151)
  %i.jp = trunc i32 %i.jo to i16
  %i.jq = getelementptr i8, ptr %.14047.us.i, i64 4 ; 3 uses
  store i16 %i.jp, ptr %i.je, align 2, !tbaa !44
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader44_crit_edge.us.i.unr-lcssa, label %.preheader45.us.i.new, !llvm.loop !453

..preheader44_crit_edge.us.i.unr-lcssa:           ; preds = %.preheader45.us.i.new
  br i1 %lcmp.mod.not, label %..preheader44_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader44_crit_edge.us.i.unr-lcssa, %.preheader45.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader45.us.i ], [ %indvars.iv.next.i.1, %..preheader44_crit_edge.us.i.unr-lcssa ]
  %.14047.us.i.epil.init = phi ptr [ %.03954.us.i, %.preheader45.us.i ], [ %i.jq, %..preheader44_crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod140)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.epil.init
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !62
  %i.jt = getelementptr [4 x i8], ptr %i.js, i64 %indvars.iv64.i
  %i.ju = getelementptr [4 x i8], ptr %i.jt, i64 %i.hh
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !56
  %i.jw = fadd float %i.jv, 3.840000e+02
  %i.jx = bitcast float %i.jw to i32
  %i.jy = call i32 @llvm.smax.i32(i32 %i.jx, i32 1136623616)
  %i.jz = call i32 @llvm.umin.i32(i32 %i.jy, i32 1136689151)
  %i.ka = trunc i32 %i.jz to i16
  %i.kb = getelementptr i8, ptr %.14047.us.i.epil.init, i64 2
  store i16 %i.ka, ptr %.14047.us.i.epil.init, align 2, !tbaa !44
  br label %..preheader44_crit_edge.us.i

..preheader44_crit_edge.us.i:                     ; preds = %..preheader44_crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.jq, %..preheader44_crit_edge.us.i.unr-lcssa ], [ %i.kb, %.epil.preheader ]
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %convert_channels_short_interleaved.exit, label %.preheader45.us.i, !llvm.loop !454

.preheader45.lr.ph.split.i:                       ; preds = %.preheader45.lr.ph.i
  br i1 %i.i, label %.preheader45.preheader.i, label %convert_channels_short_interleaved.exit

.preheader45.preheader.i:                         ; preds = %.preheader45.lr.ph.split.i
  %i.kc = zext nneg i32 %spec.select to i64
  %i.kd = mul nuw nsw i64 %i.k, %i.kc
  call void @llvm.memset.p0.i64(ptr align 2 %.031, i8 0, i64 %i.kd, i1 false), !tbaa !44
  br label %convert_channels_short_interleaved.exit

convert_channels_short_interleaved.exit:          ; preds = %..preheader44_crit_edge.us.i, %..preheader44_crit_edge.us.i.us, %compute_stereo_samples.exit.loopexit42.us, %compute_stereo_samples.exit.loopexit42.us.1, %compute_stereo_samples.exit.loopexit.us.us, %.lr.ph.i.preheader, %.preheader45.preheader.i, %.preheader45.lr.ph.split.i, %bb.f, %.preheader.i, %bb.c
end_hunk_6
begin_hunk_7_@stb_vorbis_get_samples_float:bb.a

..preheader_crit_edge.us.unr-lcssa:               ; preds = %.preheader51.us.new
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br i1 %lcmp.mod102.not, label %..preheader_crit_edge.us, label %.epil.preheader99

.epil.preheader99:                                ; preds = %..preheader_crit_edge.us.unr-lcssa, %.preheader51.us
  %indvars.iv77.epil.init = phi i64 [ 1, %.preheader51.us ], [ %indvars.iv.next78.1, %..preheader_crit_edge.us.unr-lcssa ]
  %indvars.iv72.epil.init = phi i64 [ 0, %.preheader51.us ], [ %indvars.iv.next73.1, %..preheader_crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72.epil.init
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv72.epil.init
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !226
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.az, i64 %i.ar, i1 false)
  br label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.unr-lcssa, %.epil.preheader99
  %indvars.iv77.lcssa = phi i64 [ %indvars.iv.next78, %..preheader_crit_edge.us.unr-lcssa ], [ %indvars.iv77.epil.init, %.epil.preheader99 ]
  br i1 %i.h, label %.lr.ph54.us, label %.loopexit.us

.split:                                           ; preds = %bb.a
  %i.ba = icmp sgt i32 %1, 0
  br i1 %i.ba, label %.split.split.us.preheader, label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bb = icmp ult i32 %1, 8
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader, %bb.f
  %.042.us55 = phi i32 [ %i.cr, %bb.f ], [ 0, %.split.split.us.preheader ] ; 6 uses
  %i.bc = icmp slt i32 %.042.us55, %3
  br i1 %i.bc, label %bb.d, label %.thread

bb.d:                                             ; preds = %.split.split.us
  %i.bd = load i32, ptr %i.d, align 8, !tbaa !225
  %i.be = load i32, ptr %i.e, align 4, !tbaa !226 ; 2 uses
  %i.bf = sub nsw i32 %i.bd, %i.be                ; 2 uses
  %i.bg = add nsw i32 %i.bf, %.042.us55
  %.not.us56 = icmp slt i32 %i.bg, %3
  %i.bh = sub nsw i32 %3, %.042.us55
  %spec.select49.us57 = select i1 %.not.us56, i32 %i.bf, i32 %i.bh ; 4 uses
  %.not47.us58 = icmp eq i32 %spec.select49.us57, 0
  br i1 %.not47.us58, label %..loopexit_crit_edge.us64, label %.preheader51.us62

.preheader51.us62.new:                            ; preds = %.preheader51.us62, %.preheader51.us62.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader51.us62.new ], [ 0, %.preheader51.us62 ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader51.us62.new ], [ 0, %.preheader51.us62 ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !62
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %i.cx, i1 false)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !62
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %i.cx, i1 false)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !62
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 4 %i.bs, i8 0, i64 %i.cx, i1 false)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !62
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 4 %i.bw, i8 0, i64 %i.cx, i1 false)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 4 %i.ca, i8 0, i64 %i.cx, i1 false)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 4 %i.ce, i8 0, i64 %i.cx, i1 false)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !62
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 4 %i.ci, i8 0, i64 %i.cx, i1 false)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !62
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 4 %i.cm, i8 0, i64 %i.cx, i1 false)
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %..loopexit_crit_edge.us64.loopexit.unr-lcssa, label %.preheader51.us62.new, !llvm.loop !469

..loopexit_crit_edge.us64.loopexit.unr-lcssa:     ; preds = %.preheader51.us62.new
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us64.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us64.loopexit.unr-lcssa, %.preheader51.us62
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader51.us62 ], [ %indvars.iv.next.7, %..loopexit_crit_edge.us64.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !62
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 0, i64 %i.cx, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.us64.loopexit, label %bb.e, !llvm.loop !470

..loopexit_crit_edge.us64.loopexit:               ; preds = %bb.e, %..loopexit_crit_edge.us64.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.e, align 4, !tbaa !226
  br label %..loopexit_crit_edge.us64

..loopexit_crit_edge.us64:                        ; preds = %..loopexit_crit_edge.us64.loopexit, %bb.d
  %i.cq = phi i32 [ %.pre, %..loopexit_crit_edge.us64.loopexit ], [ %i.be, %bb.d ]
  %i.cr = add nsw i32 %spec.select49.us57, %.042.us55 ; 3 uses
  %i.cs = add nsw i32 %i.cq, %spec.select49.us57
  store i32 %i.cs, ptr %i.e, align 4, !tbaa !226
  %i.ct = icmp eq i32 %i.cr, %3
  br i1 %i.ct, label %.thread, label %bb.f

bb.f:                                             ; preds = %..loopexit_crit_edge.us64
  %i.cu = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not48.us60 = icmp eq i32 %i.cu, 0
  br i1 %.not48.us60, label %.thread, label %.split.split.us

.preheader51.us62:                                ; preds = %bb.d
  %i.cv = sext i32 %.042.us55 to i64              ; 9 uses
  %i.cw = sext i32 %spec.select49.us57 to i64
  %i.cx = shl nsw i64 %i.cw, 2                    ; 9 uses
  br i1 %i.bb, label %.epil.preheader, label %.preheader51.us62.new

.split.split:                                     ; preds = %.split, %bb.g
  %.042 = phi i32 [ %i.de, %bb.g ], [ 0, %.split ] ; 5 uses
  %i.cy = icmp slt i32 %.042, %3
  br i1 %i.cy, label %.preheader51, label %.thread

.preheader51:                                     ; preds = %.split.split
  %i.cz = load i32, ptr %i.d, align 8, !tbaa !225
  %i.da = load i32, ptr %i.e, align 4, !tbaa !226 ; 2 uses
  %i.db = sub nsw i32 %i.cz, %i.da                ; 2 uses
  %i.dc = add nsw i32 %i.db, %.042
  %.not = icmp slt i32 %i.dc, %3
  %i.dd = sub nsw i32 %3, %.042
  %spec.select49 = select i1 %.not, i32 %i.db, i32 %i.dd ; 2 uses
  %i.de = add nsw i32 %spec.select49, %.042       ; 3 uses
  %i.df = add nsw i32 %i.da, %spec.select49
  store i32 %i.df, ptr %i.e, align 4, !tbaa !226
  %i.dg = icmp eq i32 %i.de, %3
  br i1 %i.dg, label %.thread, label %bb.g

bb.g:                                             ; preds = %.preheader51
  %i.dh = call i32 @stb_vorbis_get_frame_float(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a)
  %.not48 = icmp eq i32 %i.dh, 0
  br i1 %.not48, label %.thread, label %.split.split

.thread:                                          ; preds = %bb.g, %.preheader51, %.split.split, %bb.f, %..loopexit_crit_edge.us64, %.split.split.us, %.split.us, %.loopexit.us, %bb.c
  %.us-phi = phi i32 [ %i.ak, %bb.c ], [ %i.cr, %bb.f ], [ %.042.us, %.split.us ], [ %3, %.loopexit.us ], [ %.042.us55, %.split.split.us ], [ %3, %..loopexit_crit_edge.us64 ], [ %.042, %.split.split ], [ %3, %.preheader51 ], [ %i.de, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.us-phi
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bitreverse.v8i32(<8 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind }
attributes #31 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !5, i64 8}
!15 = !{!"stb_vorbis", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !16, i64 24, !5, i64 32, !17, i64 40, !19, i64 48, !5, i64 56, !5, i64 60, !16, i64 64, !16, i64 72, !16, i64 80, !5, i64 88, !6, i64 92, !5, i64 96, !20, i64 100, !20, i64 112, !21, i64 128, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !6, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !9, i64 184, !5, i64 192, !6, i64 196, !9, i64 328, !5, i64 336, !6, i64 340, !9, i64 472, !5, i64 480, !9, i64 488, !5, i64 496, !6, i64 500, !5, i64 884, !6, i64 888, !6, i64 1016, !6, i64 1144, !5, i64 1272, !6, i64 1280, !5, i64 1408, !5, i64 1412, !6, i64 1416, !6, i64 1432, !6, i64 1448, !6, i64 1464, !6, i64 1480, !5, i64 1496, !5, i64 1500, !5, i64 1504, !6, i64 1508, !6, i64 1763, !6, i64 1764, !6, i64 1765, !5, i64 1768, !5, i64 1772, !5, i64 1776, !5, i64 1780, !5, i64 1784, !5, i64 1788, !5, i64 1792, !5, i64 1796, !5, i64 1800, !5, i64 1804, !5, i64 1808, !6, i64 1812, !5, i64 1892, !5, i64 1896}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"p2 omnipotent char", !18, i64 0}
!18 = !{!"any p2 pointer", !9, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!20 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!21 = !{!"", !16, i64 0, !5, i64 8}
!22 = !{!15, !16, i64 128}
!23 = !{!15, !5, i64 144}
!24 = !{!15, !5, i64 148}
!25 = !{!5, !5, i64 0}
!26 = distinct !{!26, !11, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!6, !6, i64 0}
!30 = !{!31, !6, i64 27}
!31 = !{!"", !5, i64 0, !5, i64 4, !16, i64 8, !32, i64 16, !32, i64 20, !6, i64 24, !6, i64 25, !6, i64 26, !6, i64 27, !5, i64 28, !33, i64 32, !34, i64 40, !6, i64 48, !34, i64 2096, !34, i64 2104, !5, i64 2112}
!32 = !{!"float", !6, i64 0}
!33 = !{!"p1 float", !9, i64 0}
!34 = !{!"p1 int", !9, i64 0}
!35 = !{!31, !34, i64 40}
!36 = !{!31, !16, i64 8}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !6, i64 0}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = !{!31, !34, i64 2096}
!49 = !{!31, !5, i64 2112}
!50 = !{!31, !5, i64 4}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = !{!31, !34, i64 2104}
!55 = distinct !{!55, !11}
!56 = !{!32, !32, i64 0}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11, !27, !28}
!61 = distinct !{!61, !11, !28, !27}
!62 = !{!33, !33, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 short", !9, i64 0}
!65 = distinct !{!65, !11, !27, !28}
!66 = distinct !{!66, !11, !28, !27}
!67 = distinct !{!67, !11}
!68 = !{!69, !45, i64 0}
!69 = !{!"", !45, i64 0, !45, i64 2}
!70 = !{!15, !16, i64 64}
!71 = !{!15, !16, i64 80}
!72 = !{!15, !5, i64 152}
!73 = !{!15, !19, i64 48}
!74 = !{!15, !6, i64 92}
!75 = !{!15, !16, i64 72}
!76 = !{!15, !5, i64 56}
!77 = !{!15, !6, i64 1765}
!78 = !{!15, !5, i64 100}
!79 = !{!15, !6, i64 1763}
!80 = !{!15, !5, i64 1500}
!81 = !{!15, !5, i64 1504}
!82 = !{!15, !5, i64 1792}
!83 = distinct !{!83, !11}
!84 = !{!15, !5, i64 1796}
!85 = distinct !{!85, !11, !27, !28}
!86 = distinct !{!86, !11, !28, !27}
!87 = !{!15, !5, i64 104}
!88 = !{!15, !5, i64 108}
!89 = !{!15, !5, i64 1768}
!90 = distinct !{!90, !11}
!91 = !{!15, !5, i64 1772}
!92 = !{!15, !5, i64 1784}
!93 = !{!15, !5, i64 1788}
!94 = !{!15, !6, i64 1764}
!95 = !{!15, !5, i64 1776}
!96 = distinct !{!96, !11}
!97 = !{!15, !5, i64 1780}
!98 = !{ptr @get_bits}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = !{!31, !6, i64 25}
!104 = !{!31, !5, i64 0}
!105 = !{!31, !6, i64 26}
!106 = !{!31, !33, i64 32}
!107 = !{!108}
!108 = distinct !{!108, !109}
!109 = distinct !{!109, !"LVerDomain"}
!110 = !{!111}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !11, !27, !28}
!113 = !{!31, !32, i64 16}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11, !27}
!116 = !{!117}
!117 = distinct !{!117, !118}
!118 = distinct !{!118, !"LVerDomain"}
!119 = !{!120}
!120 = distinct !{!120, !118}
!121 = distinct !{!121, !11, !27, !28}
!122 = distinct !{!122, !11, !27}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = !{!128}
!128 = distinct !{!128, !129}
!129 = distinct !{!129, !"LVerDomain"}
!130 = !{!131}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !11, !27, !28}
!133 = distinct !{!133, !11, !27}
!134 = distinct !{!134, !11}
!135 = !{!136}
!136 = distinct !{!136, !137}
!137 = distinct !{!137, !"LVerDomain"}
!138 = !{!139}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !11, !27, !28}
!141 = distinct !{!141, !11, !27}
end_hunk_7
