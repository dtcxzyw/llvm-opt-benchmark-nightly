Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v04?download=true
inline.NumInlined: 323
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@FSE_readNCount:bb.a
  %.val159 = load i32, ptr %i.u, align 1
  %i.v = lshr i32 %.val159, %.1112170
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.w = lshr i32 %.1116169, 16
  %i.x = add nsw i32 %.1112170, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2129 = phi ptr [ %i.u, %bb.e ], [ %.1128168, %bb.f ] ; 2 uses
  %.2117 = phi i32 [ %i.v, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %.2113 = phi i32 [ %.1112170, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = and i32 %.2117, 65535
  %i.z = icmp eq i32 %i.y, 65535
  br i1 %i.z, label %.lr.ph, label %.preheader162, !llvm.loop !115

.lr.ph178:                                        ; preds = %.preheader162, %.lr.ph178
  %.1106177 = phi i32 [ %i.aa, %.lr.ph178 ], [ %.0105.lcssa, %.preheader162 ]
  %.3114176 = phi i32 [ %i.ac, %.lr.ph178 ], [ %.1112.lcssa, %.preheader162 ]
  %.3118175 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.1116.lcssa, %.preheader162 ]
  %i.aa = add i32 %.1106177, 3                    ; 2 uses
  %i.ab = lshr i32 %.3118175, 2                   ; 3 uses
  %i.ac = add nsw i32 %.3114176, 2                ; 2 uses
  %i.ad = and i32 %i.ab, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph178, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %.lr.ph178, %.preheader162
  %.3118.lcssa = phi i32 [ %.1116.lcssa, %.preheader162 ], [ %i.ab, %.lr.ph178 ]
  %.3114.lcssa = phi i32 [ %.1112.lcssa, %.preheader162 ], [ %i.ac, %.lr.ph178 ]
  %.1106.lcssa = phi i32 [ %.0105.lcssa, %.preheader162 ], [ %i.aa, %.lr.ph178 ] ; 2 uses
  %.lcssa = phi i32 [ %i.q, %.preheader162 ], [ %i.ad, %.lr.ph178 ] ; 2 uses
  %i.af = add i32 %.1106.lcssa, %.lcssa           ; 3 uses
  %i.ag = add nsw i32 %.3114.lcssa, 2             ; 3 uses
  %.not151 = icmp ugt i32 %i.af, %i.j
  br i1 %.not151, label %.critedge158, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ah = icmp ult i32 %.0109200, %i.af
  br i1 %i.ah, label %.lr.ph184.preheader, label %._crit_edge185

.lr.ph184.preheader:                              ; preds = %.preheader
  %i.ai = zext i32 %.0109200 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.aj
  %i.ak = add i32 %.1106.lcssa, -1
  %i.al = add i32 %i.ak, %.lcssa
  %i.am = sub i32 %i.al, %.0109200
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = add nuw nsw i64 %i.ao, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.ap, i1 false), !tbaa !39
  br label %._crit_edge185

._crit_edge185:                                   ; preds = %.lr.ph184.preheader, %.preheader
  %.1110.lcssa = phi i32 [ %.0109200, %.preheader ], [ %i.af, %.lr.ph184.preheader ] ; 2 uses
  %.not149 = icmp ugt ptr %.1128.lcssa, %i.l
  %i.aq = ashr i32 %i.ag, 3
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.1128.lcssa, i64 %i.ar
  %.not150 = icmp ugt ptr %i.as, %i.m
  %or.cond = select i1 %.not149, i1 %.not150, i1 false
  br i1 %or.cond, label %bb.h, label %._crit_edge185._crit_edge

._crit_edge185._crit_edge:                        ; preds = %._crit_edge185
  %i.at = getelementptr inbounds i8, ptr %.1128.lcssa, i64 %i.ar ; 2 uses
  %i.au = and i32 %i.ag, 7                        ; 2 uses
  %.val = load i32, ptr %i.at, align 1
  %i.av = lshr i32 %.val, %i.au
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge185
  %i.aw = lshr i32 %.3118.lcssa, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge185._crit_edge, %bb.d
  %.5132 = phi ptr [ %.0127194, %bb.d ], [ %.1128.lcssa, %bb.h ], [ %i.at, %._crit_edge185._crit_edge ] ; 4 uses
  %.6121 = phi i32 [ %.0115198, %bb.d ], [ %i.aw, %bb.h ], [ %i.av, %._crit_edge185._crit_edge ] ; 2 uses
  %.6 = phi i32 [ %.0111199, %bb.d ], [ %i.ag, %bb.h ], [ %i.au, %._crit_edge185._crit_edge ]
  %.3 = phi i32 [ %.0109200, %bb.d ], [ %.1110.lcssa, %bb.h ], [ %.1110.lcssa, %._crit_edge185._crit_edge ] ; 3 uses
  %i.ax = shl nsw i32 %.0122197, 1
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  %i.az = sub nsw i32 %i.ay, %.0124196            ; 2 uses
  %i.ba = add nsw i32 %.0122197, -1
  %i.bb = and i32 %.6121, %i.ba                   ; 2 uses
  %sext = shl i32 %i.az, 16
  %i.bc = ashr exact i32 %sext, 16
  %i.bd = icmp ult i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %.0125195, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bf = and i32 %.6121, %i.ay                   ; 2 uses
  %sext152 = shl i32 %i.bf, 16
  %i.bg = ashr exact i32 %sext152, 16
  %.not153 = icmp slt i32 %i.bg, %.0122197
  %i.bh = select i1 %.not153, i32 0, i32 %i.az
  %spec.select = sub i32 %i.bf, %i.bh
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi i32 [ %i.be, %bb.j ], [ %.0125195, %bb.k ]
  %.1.in = phi i32 [ %i.bb, %bb.j ], [ %spec.select, %bb.k ]
  %.1 = trunc i32 %.1.in to i16
  %.7 = add nsw i32 %.pn, %.6                     ; 3 uses
  %i.bi = add i16 %.1, -1                         ; 3 uses
  %i.bj = tail call noundef range(i16 0, -32767) i16 @llvm.abs.i16(i16 %i.bi, i1 false)
  %i.bk = sext i16 %i.bj to i32
  %i.bl = sub nsw i32 %.0124196, %i.bk            ; 5 uses
  %i.bm = add i32 %.3, 1
  %i.bn = zext i32 %.3 to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bn
  store i16 %i.bi, ptr %i.bo, align 2, !tbaa !39
  %i.bp = icmp ne i16 %i.bi, 0
  %i.bq = icmp slt i32 %i.bl, %.0122197
  br i1 %i.bq, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %bb.l, %.lr.ph190
  %.1123188 = phi i32 [ %i.bs, %.lr.ph190 ], [ %.0122197, %bb.l ]
  %.1126187 = phi i32 [ %i.br, %.lr.ph190 ], [ %.0125195, %bb.l ]
  %i.br = add nsw i32 %.1126187, -1               ; 2 uses
  %i.bs = ashr i32 %.1123188, 1                   ; 3 uses
  %i.bt = icmp slt i32 %i.bl, %i.bs
  br i1 %i.bt, label %.lr.ph190, label %._crit_edge191, !llvm.loop !117

._crit_edge191:                                   ; preds = %.lr.ph190, %bb.l
  %.1126.lcssa = phi i32 [ %.0125195, %bb.l ], [ %i.br, %.lr.ph190 ]
  %.1123.lcssa = phi i32 [ %.0122197, %bb.l ], [ %i.bs, %.lr.ph190 ]
  %.not154 = icmp ugt ptr %.5132, %i.l
  %i.bu = ashr i32 %.7, 3
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.5132, i64 %i.bv
  %.not155 = icmp ugt ptr %i.bw, %i.m
  %or.cond242 = select i1 %.not154, i1 %.not155, i1 false ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.5132, i64 %i.bv
  %i.by = and i32 %.7, 7
  %i.bz = ptrtoint ptr %.5132 to i64
  %.neg = sub i64 %i.bz, %i.n
  %.tr.neg = trunc i64 %.neg to i32
  %.neg156 = shl i32 %.tr.neg, 3
  %i.ca = add i32 %.7, %.neg156
  %.6133 = select i1 %or.cond242, ptr %i.m, ptr %i.bx ; 3 uses
  %.8 = select i1 %or.cond242, i32 %i.ca, i32 %i.by ; 3 uses
  %.6133.val = load i32, ptr %.6133, align 1
  %i.cb = and i32 %.8, 31
  %i.cc = lshr i32 %.6133.val, %i.cb
  %i.cd = icmp sgt i32 %i.bl, 1
  br i1 %i.cd, label %bb.c, label %.critedge, !llvm.loop !118

.critedge:                                        ; preds = %._crit_edge191
  %.not147 = icmp eq i32 %i.bl, 1
  br i1 %.not147, label %bb.m, label %.critedge158

bb.m:                                             ; preds = %.critedge
  store i32 %.3, ptr %1, align 4, !tbaa !33
  %i.ce = add nsw i32 %.8, 7
  %i.cf = ashr i32 %i.ce, 3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %.6133, i64 %i.cg
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %3 to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %4
  %. = select i1 %i.cl, i64 -72, i64 %i.ck
  br label %.critedge158

.critedge158:                                     ; preds = %bb.c, %._crit_edge, %bb.m, %.critedge, %bb.b, %bb.a
  %.3137 = phi i64 [ -1, %.critedge ], [ -72, %bb.a ], [ %., %bb.m ], [ -44, %bb.b ], [ -48, %._crit_edge ], [ -1, %bb.c ]
  ret i64 %.3137
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -46, 1) i64 @FSE_buildDTable(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.c = shl nuw i32 1, %3                        ; 5 uses
  %i.d = add i32 %i.c, -1                         ; 5 uses
  %i.e = lshr i32 %i.c, 1
  %i.f = lshr i32 %i.c, 3
  %i.g = add nuw nsw i32 %i.f, 3
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.i = icmp ugt i32 %2, 255
  br i1 %i.i, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %3, 12
  br i1 %i.j, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl nuw nsw i32 %2, 2
  %i.l = add nuw nsw i32 %i.k, 4
  %i.m = zext nneg i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.b, i8 0, i64 %i.m, i1 false)
  %sext = shl nuw nsw i32 32768, %3
  %i.n = lshr i32 %sext, 16                       ; 3 uses
  %i.o = add nuw nsw i32 %2, 1                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %wide.trip.count, 510
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %.06784 = phi i16 [ 1, %.new ], [ %.2.1, %bb.j ] ; 2 uses
  %.06983 = phi i32 [ %i.d, %.new ], [ %.170.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.j ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.r = load i16, ptr %i.q, align 2, !tbaa !39   ; 3 uses
  %i.s = icmp eq i16 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = trunc i64 %indvars.iv to i8
  %i.u = add i32 %.06983, -1
  %i.v = zext i32 %.06983 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.t, ptr %i.x, align 2, !tbaa !37
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = sext i16 %i.r to i32
  %.not80 = icmp sgt i32 %i.n, %i.y
  %spec.select = select i1 %.not80, i16 %.06784, i16 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i16 [ 1, %bb.e ], [ %i.r, %bb.f ]
  %.170 = phi i32 [ %i.u, %bb.e ], [ %.06983, %bb.f ] ; 3 uses
  %.2 = phi i16 [ %.06784, %bb.e ], [ %spec.select, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %.sink, ptr %i.z, align 4, !tbaa !39
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !39 ; 3 uses
  %i.ac = icmp eq i16 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = sext i16 %i.ab to i32
  %.not80.1 = icmp sgt i32 %i.n, %i.ad
  %spec.select.1 = select i1 %.not80.1, i16 %.2, i16 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = trunc i64 %indvars.iv.next to i8
  %i.af = add i32 %.170, -1
  %i.ag = zext i32 %.170 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %i.ae, ptr %i.ai, align 2, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.1 = phi i16 [ 1, %bb.i ], [ %i.ab, %bb.h ]
  %.170.1 = phi i32 [ %i.af, %bb.i ], [ %.170, %bb.h ] ; 3 uses
  %.2.1 = phi i16 [ %.2, %bb.i ], [ %spec.select.1, %bb.h ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.aj, align 2, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader81.preheader.unr-lcssa, label %bb.d, !llvm.loop !119

.preheader81.preheader.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader81.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader81.preheader.unr-lcssa, %bb.c
  %indvars.iv.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.1, %.preheader81.preheader.unr-lcssa ] ; 3 uses
  %.06784.epil.init = phi i16 [ 1, %bb.c ], [ %.2.1, %.preheader81.preheader.unr-lcssa ] ; 2 uses
  %.06983.epil.init = phi i32 [ %i.d, %bb.c ], [ %.170.1, %.preheader81.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod108 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !39 ; 3 uses
  %i.am = icmp eq i16 %i.al, -1
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.an = sext i16 %i.al to i32
  %.not80.epil = icmp sgt i32 %i.n, %i.an
  %spec.select.epil = select i1 %.not80.epil, i16 %.06784.epil.init, i16 0
  br label %.preheader81.preheader.epilog-lcssa

bb.l:                                             ; preds = %.epil.preheader
  %i.ao = trunc i64 %indvars.iv.epil.init to i8
  %i.ap = add i32 %.06983.epil.init, -1
  %i.aq = zext i32 %.06983.epil.init to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.ao, ptr %i.as, align 2, !tbaa !37
  br label %.preheader81.preheader.epilog-lcssa

.preheader81.preheader.epilog-lcssa:              ; preds = %bb.l, %bb.k
  %.sink.epil = phi i16 [ 1, %bb.l ], [ %i.al, %bb.k ]
  %.170.epil = phi i32 [ %i.ap, %bb.l ], [ %.06983.epil.init, %bb.k ]
  %.2.epil = phi i16 [ %.06784.epil.init, %bb.l ], [ %spec.select.epil, %bb.k ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.at, align 2, !tbaa !39
  br label %.preheader81.preheader

.preheader81.preheader:                           ; preds = %.preheader81.preheader.unr-lcssa, %.preheader81.preheader.epilog-lcssa
  %.170.lcssa = phi i32 [ %.170.1, %.preheader81.preheader.unr-lcssa ], [ %.170.epil, %.preheader81.preheader.epilog-lcssa ] ; 3 uses
  %.2.lcssa = phi i16 [ %.2.1, %.preheader81.preheader.unr-lcssa ], [ %.2.epil, %.preheader81.preheader.epilog-lcssa ]
  br label %.preheader81

.preheader81:                                     ; preds = %.preheader81.preheader, %._crit_edge
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %._crit_edge ], [ 0, %.preheader81.preheader ] ; 3 uses
  %.07188 = phi i32 [ %.172.lcssa, %._crit_edge ], [ 0, %.preheader81.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv92
  %i.av = load i16, ptr %i.au, align 2, !tbaa !39 ; 5 uses
  %i.aw = icmp sgt i16 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader81
  %i.ax = trunc i64 %indvars.iv92 to i8           ; 3 uses
  %i.ay = icmp eq i16 %i.av, 1
  br i1 %i.ay, label %.epil.preheader109, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.az = and i16 %i.av, 32766
  %unroll_iter114 = zext nneg i16 %i.az to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %.17286 = phi i32 [ %.07188, %.lr.ph.new ], [ %.273.1, %bb.q ] ; 2 uses
  %niter115 = phi i32 [ 0, %.lr.ph.new ], [ %niter115.next.1, %bb.q ]
  %i.ba = zext nneg i32 %.17286 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i8 %i.ax, ptr %i.bc, align 2, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.172.pn = phi i32 [ %.17286, %bb.m ], [ %.273, %bb.n ]
  %.pn = add nuw i32 %i.h, %.172.pn
  %.273 = and i32 %.pn, %i.d                      ; 4 uses
  %i.bd = icmp ugt i32 %.273, %.170.lcssa
  br i1 %i.bd, label %bb.n, label %bb.o, !llvm.loop !120

bb.o:                                             ; preds = %bb.n
  %i.be = zext nneg i32 %.273 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i8 %i.ax, ptr %i.bg, align 2, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.172.pn.1 = phi i32 [ %.273, %bb.o ], [ %.273.1, %bb.p ]
  %.pn.1 = add nuw i32 %i.h, %.172.pn.1
  %.273.1 = and i32 %.pn.1, %i.d                  ; 5 uses
  %i.bh = icmp ugt i32 %.273.1, %.170.lcssa
  br i1 %i.bh, label %bb.p, label %bb.q, !llvm.loop !120

bb.q:                                             ; preds = %bb.p
  %niter115.next.1 = add i32 %niter115, 2         ; 2 uses
  %niter115.ncmp.1 = icmp eq i32 %niter115.next.1, %unroll_iter114
  br i1 %niter115.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !121

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.q
  %i.bi = and i16 %i.av, 1
  %lcmp.mod111.not = icmp eq i16 %i.bi, 0
  br i1 %lcmp.mod111.not, label %._crit_edge, label %.epil.preheader109

.epil.preheader109:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.17286.epil.init = phi i32 [ %.07188, %.lr.ph ], [ %.273.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod113 = trunc i16 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod113)
  %i.bj = zext nneg i32 %.17286.epil.init to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %i.ax, ptr %i.bl, align 2, !tbaa !37
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader109
  %.172.pn.epil = phi i32 [ %.17286.epil.init, %.epil.preheader109 ], [ %.273.epil, %bb.r ]
  %.pn.epil = add nuw i32 %i.h, %.172.pn.epil
  %.273.epil = and i32 %.pn.epil, %i.d            ; 3 uses
  %i.bm = icmp ugt i32 %.273.epil, %.170.lcssa
  br i1 %i.bm, label %bb.r, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.r, %.preheader81
  %.172.lcssa = phi i32 [ %.07188, %.preheader81 ], [ %.273.1, %._crit_edge.loopexit.unr-lcssa ], [ %.273.epil, %bb.r ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count
  br i1 %exitcond96.not, label %bb.s, label %.preheader81, !llvm.loop !122

bb.s:                                             ; preds = %._crit_edge
  %i.bn = trunc nuw nsw i32 %3 to i16
  %.not79 = icmp eq i32 %.172.lcssa, 0
end_hunk_0
