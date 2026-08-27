Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 46
begin_hunk_0_@ilog:bb.a

bb.n:                                             ; preds = %bb.l
  %i.ap = lshr i32 %0, 30
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.at = sext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, 30
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.m, %bb.k, %bb.j, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ %i.au, %bb.n ], [ %i.g, %bb.d ], [ %i.n, %bb.f ], [ %i.t, %bb.g ], [ %i.ab, %bb.j ], [ %i.ah, %bb.k ], [ %i.ao, %bb.m ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define float @float32_unpack(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = and i32 %0, 2097151
  %i.b = uitofp nneg i32 %i.a to double           ; 2 uses
  %i.c = fneg double %i.b
  %.not7 = icmp slt i32 %0, 0
  %i.d = select i1 %.not7, double %i.c, double %i.b
  %i.e = lshr i32 %0, 21
  %i.f = and i32 %i.e, 1023
  %i.g = fptrunc double %i.d to float
  %i.h = fpext float %i.g to double
  %i.i = add nsw i32 %i.f, -788
  %i.j = tail call double @ldexp(double noundef %i.h, i32 noundef %i.i) #30
  %i.k = fptrunc double %i.j to float
  ret float %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @add_entry(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.b = load i8, ptr %i.a, align 1, !tbaa !30
  %.not = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  store i32 %1, ptr %i.f, align 4, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = sext i32 %3 to i64                       ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  store i32 %1, ptr %i.h, align 4, !tbaa !25
  %i.i = trunc i32 %4 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.g
  store i8 %i.i, ptr %i.l, align 1, !tbaa !29
  %i.m = getelementptr inbounds [4 x i8], ptr %5, i64 %i.g
  store i32 %2, ptr %i.m, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @compute_codewords(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

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
  %i.an = sub nuw i32 32, %i.am
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next96.2
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !25
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader73.loopexit.unr-lcssa, label %.lr.ph81, !llvm.loop !39

bb.f:                                             ; preds = %.lr.ph91, %.loopexit
  %indvars.iv100.a = phi i64 [ %i.z, %.lr.ph91 ], [ %indvars.iv.next101.a, %.loopexit ] ; 4 uses
  %.05388 = phi i32 [ 1, %.lr.ph91 ], [ %.1.ph, %.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv100.a ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29  ; 4 uses
  switch i8 %i.ar, label %.lr.ph84.preheader [
    i8 -1, label %.loopexit
    i8 0, label %.loopexit72
  ]

.lr.ph84.preheader:                               ; preds = %bb.f
  %4 = zext i8 %i.ar to i64
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %bb.g
  %.05183 = phi i32 [ 0, %.lr.ph84.preheader ], [ %indvar.next, %bb.g ] ; 3 uses
  %indvars.iv100 = phi i64 [ %4, %.lr.ph84.preheader ], [ %indvars.iv.next101, %bb.g ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv100
  %i.at = load i32, ptr %i.as, align 4, !tbaa !25 ; 7 uses
  %.not63 = icmp eq i32 %i.at, 0
  br i1 %.not63, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph84
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1 ; 2 uses
  %5 = and i64 %indvars.iv.next101, 4294967295
  %.not70 = icmp eq i64 %5, 0
  %indvar.next = add i32 %.05183, 1
  br i1 %.not70, label %.loopexit72, label %.lr.ph84, !llvm.loop !40

.critedge:                                        ; preds = %.lr.ph84
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv100
  %6 = trunc nuw i64 %indvars.iv100 to i32        ; 2 uses
  store i32 0, ptr %i.au, align 4, !tbaa !25
  %i.av = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.at) ; 2 uses
  %i.aw = add nsw i32 %.05388, 1                  ; 3 uses
  %i.ax = load i8, ptr %i.i, align 1, !tbaa !30
  %.not.i65 = icmp eq i8 %i.ax, 0
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !35  ; 2 uses
  br i1 %.not.i65, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv100.a
  store i32 %i.av, ptr %i.az, align 4, !tbaa !25
  br label %add_entry.exit66

bb.i:                                             ; preds = %.critedge
  %i.ba = sext i32 %.05388 to i64                 ; 3 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ba
  store i32 %i.av, ptr %i.bb, align 4, !tbaa !25
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.ba
  store i8 %i.ar, ptr %i.bd, align 1, !tbaa !29
  %i.be = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ba
  %i.bf = trunc nuw i64 %indvars.iv100.a to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !25
  br label %add_entry.exit66

add_entry.exit66:                                 ; preds = %bb.h, %bb.i
  %i.bg = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32                    ; 5 uses
  %i.bi = icmp slt i32 %6, %i.bh
  br i1 %i.bi, label %.lr.ph86.preheader, label %.loopexit

.lr.ph86.preheader:                               ; preds = %add_entry.exit66
  %7 = zext i8 %i.ar to i32                       ; 2 uses
  %i.bj = sub i32 %.05183, %7
  %i.bk = add i32 %i.bj, %i.bh
  %xtraiter133 = and i32 %i.bk, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i32 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph86.prol.loopexit, label %.lr.ph86.prol

.lr.ph86.prol:                                    ; preds = %.lr.ph86.preheader, %.lr.ph86.prol
  %.085.prol = phi i32 [ %i.bq, %.lr.ph86.prol ], [ %i.bh, %.lr.ph86.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph86.prol ], [ 0, %.lr.ph86.preheader ]
  %i.bl = sub nuw nsw i32 32, %.085.prol
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = add i32 %i.bm, %i.at
  %i.bo = zext nneg i32 %.085.prol to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bo
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !25
  %i.bq = add nsw i32 %.085.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter133
  br i1 %prol.iter.cmp.not, label %.lr.ph86.prol.loopexit, label %.lr.ph86.prol, !llvm.loop !41

.lr.ph86.prol.loopexit:                           ; preds = %.lr.ph86.prol, %.lr.ph86.preheader
  %.085.unr = phi i32 [ %i.bh, %.lr.ph86.preheader ], [ %i.bq, %.lr.ph86.prol ]
  %i.br = add i32 %.05183, %i.bh
  %i.bs = sub i32 %7, %i.br
  %i.bt = icmp ugt i32 %i.bs, -4
  br i1 %i.bt, label %.loopexit, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86.prol.loopexit, %.lr.ph86
  %.085 = phi i32 [ %i.cr, %.lr.ph86 ], [ %.085.unr, %.lr.ph86.prol.loopexit ] ; 9 uses
  %i.bu = sub nuw nsw i32 32, %.085
  %i.bv = shl nuw nsw i32 1, %i.bu
  %i.bw = add i32 %i.bv, %i.at
  %i.bx = zext nneg i32 %.085 to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bx
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !25
  %i.bz = sub nsw i32 33, %.085
  %i.ca = shl nuw nsw i32 1, %i.bz
  %i.cb = add i32 %i.ca, %i.at
  %i.cc = sext i32 %.085 to i64
  %i.cd = getelementptr [4 x i8], ptr %i.a, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !25
  %i.cf = sub nsw i32 34, %.085
  %i.cg = shl nuw nsw i32 1, %i.cf
  %i.ch = add i32 %i.cg, %i.at
  %i.ci = sext i32 %.085 to i64
  %i.cj = getelementptr [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  store i32 %i.ch, ptr %i.ck, align 4, !tbaa !25
  %i.cl = sub nsw i32 35, %.085
  %i.cm = shl nuw nsw i32 1, %i.cl
  %i.cn = add i32 %i.cm, %i.at
  %i.co = sext i32 %.085 to i64
  %i.cp = getelementptr [4 x i8], ptr %i.a, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -12
  store i32 %i.cn, ptr %i.cq, align 4, !tbaa !25
  %i.cr = add nsw i32 %.085, -4                   ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, %6
  br i1 %i.cs, label %.lr.ph86, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %.lr.ph86.prol.loopexit, %.lr.ph86, %bb.f, %add_entry.exit66
  %.1.ph = phi i32 [ %i.aw, %add_entry.exit66 ], [ %.05388, %bb.f ], [ %i.aw, %.lr.ph86 ], [ %i.aw, %.lr.ph86.prol.loopexit ]
  %indvars.iv.next101.a = add nuw nsw i64 %indvars.iv100.a, 1 ; 2 uses
  %i.ct = trunc nuw i64 %indvars.iv.next101.a to i32
  %i.cu = icmp sgt i32 %2, %i.ct
  br i1 %i.cu, label %bb.f, label %.loopexit72, !llvm.loop !43

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
end_hunk_0
begin_hunk_1_@seek_to_sample_coarse:bb.a
  %i.dh = zext i32 %i.dg to i64
  %i.di = tail call i32 @fseek(ptr noundef %i.df, i64 noundef %i.dh, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit150

bb.aq:                                            ; preds = %bb.ac
  %i.dj = lshr i32 %i.ay, 1
  %i.dk = add i32 %i.ax, -32768
  %i.dl = add i32 %i.dk, %i.dj                    ; 4 uses
  %i.dm = load i8, ptr %i.m, align 4, !tbaa !74
  %.not.i151 = icmp eq i8 %i.dm, 0
  br i1 %.not.i151, label %bb.ar, label %set_file_offset.exit150

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.n, align 8, !tbaa !72
  %i.dn = load ptr, ptr %i.o, align 8, !tbaa !70
  %.not31.i153 = icmp eq ptr %i.dn, null
  br i1 %.not31.i153, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.dp = zext i32 %i.dl to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp ; 2 uses
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !71  ; 2 uses
  %.not33.i154 = icmp ult ptr %i.dq, %i.dr
  br i1 %.not33.i154, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.dr, ptr %i.o, align 8, !tbaa !70
  store i32 1, ptr %i.n, align 8, !tbaa !72
  br label %set_file_offset.exit150

bb.au:                                            ; preds = %bb.as
  store ptr %i.dq, ptr %i.o, align 8, !tbaa !70
  br label %set_file_offset.exit150

bb.av:                                            ; preds = %bb.ar
  %i.ds = load i32, ptr %i.r, align 8, !tbaa !76
  %i.dt = add i32 %i.ds, %i.dl                    ; 2 uses
  %i.du = icmp ult i32 %i.dt, %i.dl
  %i.dv = icmp slt i32 %i.dl, 0
  %or.cond.i155 = or i1 %i.dv, %i.du
  br i1 %or.cond.i155, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 1, ptr %i.n, align 8, !tbaa !72
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dw = zext i32 %i.dt to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.i156 = phi i64 [ 2147483647, %bb.aw ], [ %i.dw, %bb.ax ]
  %i.dx = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.dy = tail call i32 @fseek(ptr noundef %i.dx, i64 noundef %.0.i156, i32 noundef 0)
  %.not32.i157 = icmp eq i32 %i.dy, 0
  br i1 %.not32.i157, label %set_file_offset.exit150, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 1, ptr %i.n, align 8, !tbaa !72
  %i.dz = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.ea = load i32, ptr %i.r, align 8, !tbaa !76
  %i.eb = zext i32 %i.ea to i64
  %i.ec = tail call i32 @fseek(ptr noundef %i.dz, i64 noundef %i.eb, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit150

set_file_offset.exit150:                          ; preds = %bb.az, %bb.ay, %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.ao, %bb.ak, %bb.aj, %bb.ag
  %.4 = phi double [ %.3107, %bb.ap ], [ %.3107, %bb.ag ], [ %.3107, %bb.aj ], [ %.3107, %bb.ak ], [ %.3107, %bb.ao ], [ %.0104194, %bb.aq ], [ %.0104194, %bb.at ], [ %.0104194, %bb.au ], [ %.0104194, %bb.ay ], [ %.0104194, %bb.az ]
  %.2 = phi double [ %.1, %bb.ap ], [ %.1, %bb.ag ], [ %.1, %bb.aj ], [ %.1, %bb.ak ], [ %.1, %bb.ao ], [ %.0103195, %bb.aq ], [ %.0103195, %bb.at ], [ %.0103195, %bb.au ], [ %.0103195, %bb.ay ], [ %.0103195, %bb.az ]
  %i.ed = tail call i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef null, ptr noundef null)
  %.not124 = icmp eq i32 %i.ed, 0
  br i1 %.not124, label %.loopexit175, label %set_file_offset.exit142

set_file_offset.exit142:                          ; preds = %bb.ab, %bb.aa, %bb.w, %bb.v, %bb.s, %set_file_offset.exit150
  %.5 = phi double [ %.4, %set_file_offset.exit150 ], [ %.0104194, %bb.s ], [ %.0104194, %bb.v ], [ %.0104194, %bb.w ], [ %.0104194, %bb.aa ], [ %.0104194, %bb.ab ]
  %.3 = phi double [ %.2, %set_file_offset.exit150 ], [ %.0103195, %bb.s ], [ %.0103195, %bb.v ], [ %.0103195, %bb.w ], [ %.0103195, %bb.aa ], [ %.0103195, %bb.ab ]
  %i.ee = call i32 @get_seek_page_info(ptr noundef nonnull %0, ptr noundef nonnull %3)
  %.not125187 = icmp eq i32 %i.ee, 0
  br i1 %.not125187, label %.loopexit175, label %.lr.ph

.lr.ph:                                           ; preds = %set_file_offset.exit142, %set_file_offset.exit166
  %i.ef = load i32, ptr %i.ar, align 4, !tbaa !403 ; 3 uses
  %.not126 = icmp eq i32 %i.ef, -1
  br i1 %.not126, label %bb.ba, label %bb.bk

bb.ba:                                            ; preds = %.lr.ph
  %i.eg = load i32, ptr %i.as, align 4, !tbaa !402 ; 4 uses
  %i.eh = load i8, ptr %i.m, align 4, !tbaa !74
  %.not.i159 = icmp eq i8 %i.eh, 0
  br i1 %.not.i159, label %bb.bb, label %set_file_offset.exit166

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.n, align 8, !tbaa !72
  %i.ei = load ptr, ptr %i.o, align 8, !tbaa !70
  %.not31.i161 = icmp eq ptr %i.ei, null
  br i1 %.not31.i161, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.ek = zext i32 %i.eg to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek ; 2 uses
  %i.em = load ptr, ptr %i.q, align 8, !tbaa !71  ; 2 uses
  %.not33.i162 = icmp ult ptr %i.el, %i.em
  br i1 %.not33.i162, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.em, ptr %i.o, align 8, !tbaa !70
  store i32 1, ptr %i.n, align 8, !tbaa !72
  br label %set_file_offset.exit166

bb.be:                                            ; preds = %bb.bc
  store ptr %i.el, ptr %i.o, align 8, !tbaa !70
  br label %set_file_offset.exit166

bb.bf:                                            ; preds = %bb.bb
  %i.en = load i32, ptr %i.r, align 8, !tbaa !76
  %i.eo = add i32 %i.en, %i.eg                    ; 2 uses
  %i.ep = icmp ult i32 %i.eo, %i.eg
  %i.eq = icmp slt i32 %i.eg, 0
  %or.cond.i163 = or i1 %i.eq, %i.ep
  br i1 %or.cond.i163, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 1, ptr %i.n, align 8, !tbaa !72
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.er = zext i32 %i.eo to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0.i164 = phi i64 [ 2147483647, %bb.bg ], [ %i.er, %bb.bh ]
  %i.es = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.et = tail call i32 @fseek(ptr noundef %i.es, i64 noundef %.0.i164, i32 noundef 0)
  %.not32.i165 = icmp eq i32 %i.et, 0
  br i1 %.not32.i165, label %set_file_offset.exit166, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 1, ptr %i.n, align 8, !tbaa !72
  %i.eu = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.ev = load i32, ptr %i.r, align 8, !tbaa !76
  %i.ew = zext i32 %i.ev to i64
  %i.ex = tail call i32 @fseek(ptr noundef %i.eu, i64 noundef %i.ew, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit166

set_file_offset.exit166:                          ; preds = %bb.ba, %bb.bd, %bb.be, %bb.bi, %bb.bj
  %i.ey = call i32 @get_seek_page_info(ptr noundef nonnull %0, ptr noundef nonnull %3)
  %.not125 = icmp eq i32 %i.ey, 0
  br i1 %.not125, label %.loopexit175, label %.lr.ph

bb.bk:                                            ; preds = %.lr.ph
  %i.ez = load i32, ptr %3, align 4, !tbaa !399   ; 2 uses
  %i.fa = icmp eq i32 %i.ez, %.sroa.0.0192
  br i1 %i.fa, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fb = icmp samesign ugt i32 %.0102196, 1
  %or.cond5 = or i1 %i.fb, %i.az
  br i1 %or.cond5, label %._crit_edge, label %bb.bp

bb.bm:                                            ; preds = %bb.bk
  %i.fc = icmp ult i32 %.0108, %i.ef
  br i1 %i.fc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.9.0.copyload51 = load i32, ptr %i.as, align 4, !tbaa !25
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !405
  %.pre = load i32, ptr %i.l, align 4, !tbaa !402
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bl
  %i.fd = phi i32 [ %i.ax, %bb.bl ], [ %i.ax, %bb.bn ], [ %.pre, %bb.bo ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.0189, %bb.bl ], [ %.sroa.9.0.copyload51, %bb.bn ], [ %.sroa.9.0189, %bb.bo ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0192, %bb.bl ], [ %i.ez, %bb.bn ], [ %.sroa.0.0192, %bb.bo ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.0197, %bb.bl ], [ %i.ef, %bb.bn ], [ %.sroa.10.0197, %bb.bo ]
  %i.fe = add nuw nsw i32 %.0102196, 1
  %.not123 = icmp eq i32 %i.fd, %.sroa.0.1
  br i1 %.not123, label %._crit_edge, label %bb.r, !llvm.loop !407

._crit_edge:                                      ; preds = %bb.bp, %bb.bl, %.preheader
  %i.ff = load i32, ptr %2, align 4, !tbaa !399   ; 2 uses
  %i.fg = tail call i32 @set_file_offset(ptr noundef nonnull %0, i32 noundef %i.ff) ; 0 uses
  %i.fh = tail call i32 @start_page(ptr noundef nonnull %0)
  %.not127 = icmp eq i32 %i.fh, 0
  br i1 %.not127, label %.sink.split, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !82
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1763
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1504
  br label %bb.br

bb.br:                                            ; preds = %bb.by, %bb.bq
  %.0110 = phi i32 [ %i.fj, %bb.bq ], [ %i.gk, %bb.by ] ; 3 uses
  %.0109 = phi i32 [ %i.ff, %bb.bq ], [ %.0.i168, %bb.by ]
  %i.fm = icmp sgt i32 %.0110, 0
  br i1 %i.fm, label %.lr.ph204.preheader, label %.critedge

.lr.ph204.preheader:                              ; preds = %bb.br
  %4 = zext nneg i32 %.0110 to i64
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.bs
  %indvars.iv = phi i64 [ %4, %.lr.ph204.preheader ], [ %indvars.iv.next, %bb.bs ] ; 4 uses
  %i.fn = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.fo = getelementptr i8, ptr %i.fn, i64 1507
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !29
  %.not128 = icmp eq i8 %i.fp, -1
  br i1 %.not128, label %bb.bs, label %.loopexit.loopexit

bb.bs:                                            ; preds = %.lr.ph204
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fq = icmp sgt i64 %indvars.iv, 1
  br i1 %i.fq, label %.lr.ph204, label %.critedge, !llvm.loop !408

.critedge:                                        ; preds = %bb.bs, %bb.br
  %.0111.lcssa = phi i32 [ %.0110, %bb.br ], [ 0, %bb.bs ]
  %i.fr = load i8, ptr %i.fk, align 1, !tbaa !79
  %i.fs = and i8 %i.fr, 1
  %.not129 = icmp eq i8 %i.fs, 0
  br i1 %.not129, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %.critedge
  %i.ft = tail call i32 @go_to_page_before(ptr noundef nonnull %0, i32 noundef %.0109)
  %.not130 = icmp eq i32 %i.ft, 0
  br i1 %.not130, label %.loopexit175, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fu = load i8, ptr %i.m, align 4, !tbaa !74
  %.not.i167 = icmp eq i8 %i.fu, 0
  br i1 %.not.i167, label %bb.bv, label %stb_vorbis_get_file_offset.exit

bb.bv:                                            ; preds = %bb.bu
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !70  ; 2 uses
  %.not7.i = icmp eq ptr %i.fv, null
  br i1 %.not7.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fw = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = trunc i64 %i.fz to i32
  br label %stb_vorbis_get_file_offset.exit

bb.bx:                                            ; preds = %bb.bv
  %i.gb = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.gc = tail call i64 @ftell(ptr noundef %i.gb)
  %i.gd = load i32, ptr %i.r, align 8, !tbaa !76
  %i.ge = trunc i64 %i.gc to i32
  %i.gf = sub i32 %i.ge, %i.gd
  br label %stb_vorbis_get_file_offset.exit

stb_vorbis_get_file_offset.exit:                  ; preds = %bb.bu, %bb.bw, %bb.bx
  %.0.i168 = phi i32 [ %i.gf, %bb.bx ], [ %i.ga, %bb.bw ], [ 0, %bb.bu ]
  %i.gg = tail call i32 @capture_pattern(ptr noundef nonnull %0)
  %.not.i169 = icmp eq i32 %i.gg, 0
  br i1 %.not.i169, label %start_page.exit.thread, label %start_page.exit

start_page.exit.thread:                           ; preds = %stb_vorbis_get_file_offset.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 30, ptr %i.gh, align 4
  br label %.loopexit175

start_page.exit:                                  ; preds = %stb_vorbis_get_file_offset.exit
  %i.gi = tail call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not131 = icmp eq i32 %i.gi, 0
  br i1 %.not131, label %.loopexit175, label %bb.by

bb.by:                                            ; preds = %start_page.exit
  %i.gj = load i32, ptr %i.fl, align 8, !tbaa !81
  %i.gk = add nsw i32 %i.gj, -1
  br label %bb.br

.loopexit.loopexit:                               ; preds = %.lr.ph204
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %.loopexit.loopexit
  %.0111180 = phi i32 [ %5, %.loopexit.loopexit ], [ %.0111.lcssa, %.critedge ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1412
  store i32 0, ptr %i.gl, align 4, !tbaa !261
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1772
  store i32 0, ptr %i.gm, align 4, !tbaa !91
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1784
  store i32 0, ptr %i.gn, align 8, !tbaa !92
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1788
  store i32 0, ptr %i.go, align 4, !tbaa !93
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1764
  store i8 0, ptr %i.gp, align 4, !tbaa !94
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 0, ptr %i.gq, align 8, !tbaa !262
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i32 %.0111180, ptr %i.gr, align 8, !tbaa !89
  %i.gs = icmp sgt i32 %.0111180, 0
  br i1 %i.gs, label %.lr.ph207, label %._crit_edge208

.lr.ph207:                                        ; preds = %.loopexit
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1508
  %wide.trip.count = zext nneg i32 %.0111180 to i64
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph207, %skip.exit
  %indvars.iv.a = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next.a, %skip.exit ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.a
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !29  ; 2 uses
  %i.gw = load ptr, ptr %i.o, align 8, !tbaa !70  ; 2 uses
  %.not.i171 = icmp eq ptr %i.gw, null
  br i1 %.not.i171, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gx = zext i8 %i.gv to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gx ; 2 uses
  store ptr %i.gy, ptr %i.o, align 8, !tbaa !70
  %i.gz = load ptr, ptr %i.q, align 8, !tbaa !71
  %.not9.i = icmp ult ptr %i.gy, %i.gz
  br i1 %.not9.i, label %skip.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 1, ptr %i.n, align 8, !tbaa !72
  br label %skip.exit

bb.cc:                                            ; preds = %bb.bz
  %i.ha = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.hb = tail call i64 @ftell(ptr noundef %i.ha)
  %i.hc = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.hd = zext i8 %i.gv to i64
  %i.he = add nsw i64 %i.hb, %i.hd
  %i.hf = tail call i32 @fseek(ptr noundef %i.hc, i64 noundef %i.he, i32 noundef 0) ; 0 uses
  br label %skip.exit

skip.exit:                                        ; preds = %bb.ca, %bb.cb, %bb.cc
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge208, label %bb.bz, !llvm.loop !409

._crit_edge208:                                   ; preds = %skip.exit, %.loopexit
  %i.hg = tail call i32 @vorbis_pump_first_frame(ptr noundef nonnull %0)
  %.not132 = icmp eq i32 %i.hg, 0
  br i1 %.not132, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge208
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !259
  %i.hj = icmp ugt i32 %i.hi, %1
  br i1 %i.hj, label %.sink.split, label %bb.ce

.loopexit175:                                     ; preds = %set_file_offset.exit, %set_file_offset.exit150, %set_file_offset.exit142, %set_file_offset.exit166, %start_page.exit, %bb.bt, %start_page.exit.thread
  %i.hk = tail call i32 @stb_vorbis_seek_start(ptr noundef nonnull %0) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cd, %._crit_edge, %bb.q, %bb.b, %bb.a, %.loopexit175
  %.sink = phi i32 [ 37, %.loopexit175 ], [ 37, %._crit_edge ], [ 37, %bb.q ], [ 11, %bb.b ], [ 7, %bb.a ], [ 37, %bb.cd ]
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.sink, ptr %i.hl, align 4
  br label %bb.ce

bb.ce:                                            ; preds = %.sink.split, %bb.cd, %._crit_edge208, %bb.p, %bb.q
  %.0 = phi i32 [ 0, %bb.p ], [ 1, %bb.q ], [ 1, %bb.cd ], [ 0, %._crit_edge208 ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, -1) i32 @stb_vorbis_stream_length_in_samples(ptr nofree noundef %0) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [6 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 7 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !74
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.f, align 4
  br label %bb.bl

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !410  ; 2 uses
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %bb.d, label %bb.bk

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 17 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %.not7.i = icmp eq ptr %i.j, null
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  br label %stb_vorbis_get_file_offset.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = tail call i64 @ftell(ptr noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !76
  %i.v = trunc i64 %i.s to i32
  %i.w = sub i32 %i.v, %i.u
  br label %stb_vorbis_get_file_offset.exit

stb_vorbis_get_file_offset.exit:                  ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.w, %bb.f ], [ %i.p, %bb.e ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !395  ; 2 uses
  %i.z = icmp ugt i32 %i.y, 65535
  br i1 %i.z, label %bb.g, label %stb_vorbis_get_file_offset.exit._crit_edge

stb_vorbis_get_file_offset.exit._crit_edge:       ; preds = %stb_vorbis_get_file_offset.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !354
  br label %bb.h

bb.g:                                             ; preds = %stb_vorbis_get_file_offset.exit
  %i.aa = add i32 %i.y, -65536
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !354
  %spec.select113 = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.ac)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %stb_vorbis_get_file_offset.exit._crit_edge
  %.041 = phi i32 [ %spec.select113, %bb.g ], [ %.pre, %stb_vorbis_get_file_offset.exit._crit_edge ] ; 4 uses
  %i.ad = load i8, ptr %i.d, align 4, !tbaa !74
  %.not.i53 = icmp eq i8 %i.ad, 0
  br i1 %.not.i53, label %bb.i, label %set_file_offset.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !72
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !70
  %.not31.i = icmp eq ptr %i.af, null
  br i1 %.not31.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ai = zext i32 %.041 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !71 ; 2 uses
  %.not33.i = icmp ult ptr %i.aj, %i.al
  br i1 %.not33.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.al, ptr %i.i, align 8, !tbaa !70
  store i32 1, ptr %i.ae, align 8, !tbaa !72
  br label %set_file_offset.exit

bb.l:                                             ; preds = %bb.j
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !70
  br label %set_file_offset.exit

bb.m:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !76
  %i.ao = add i32 %i.an, %.041                    ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %.041
  %i.aq = icmp slt i32 %.041, 0
  %or.cond.i = or i1 %i.aq, %i.ap
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.ae, align 8, !tbaa !72
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = zext i32 %i.ao to i64
end_hunk_1
