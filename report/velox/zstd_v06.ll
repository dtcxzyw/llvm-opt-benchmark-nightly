Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v06?download=true
inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@FSEv06_readNCount:bb.a
  %.2117 = phi i32 [ %i.v, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %.2113 = phi i32 [ %.1112170, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = and i32 %.2117, 65535
  %i.z = icmp eq i32 %i.y, 65535
  br i1 %i.z, label %.lr.ph, label %.preheader162, !llvm.loop !63

.lr.ph178:                                        ; preds = %.preheader162, %.lr.ph178
  %.1106177 = phi i32 [ %i.aa, %.lr.ph178 ], [ %.0105.lcssa, %.preheader162 ]
  %.3114176 = phi i32 [ %i.ac, %.lr.ph178 ], [ %.1112.lcssa, %.preheader162 ]
  %.3118175 = phi i32 [ %i.ab, %.lr.ph178 ], [ %.1116.lcssa, %.preheader162 ]
  %i.aa = add i32 %.1106177, 3                    ; 2 uses
  %i.ab = lshr i32 %.3118175, 2                   ; 3 uses
  %i.ac = add nsw i32 %.3114176, 2                ; 2 uses
  %i.ad = and i32 %i.ab, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph178, label %._crit_edge, !llvm.loop !64

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.ap, i1 false), !tbaa !18
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
  store i16 %i.bi, ptr %i.bo, align 2, !tbaa !18
  %i.bp = icmp ne i16 %i.bi, 0
  %i.bq = icmp slt i32 %i.bl, %.0122197
  br i1 %i.bq, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %bb.l, %.lr.ph190
  %.1123188 = phi i32 [ %i.bs, %.lr.ph190 ], [ %.0122197, %bb.l ]
  %.1126187 = phi i32 [ %i.br, %.lr.ph190 ], [ %.0125195, %bb.l ]
  %i.br = add nsw i32 %.1126187, -1               ; 2 uses
  %i.bs = ashr i32 %.1123188, 1                   ; 3 uses
  %i.bt = icmp slt i32 %i.bl, %i.bs
  br i1 %i.bt, label %.lr.ph190, label %._crit_edge191, !llvm.loop !65

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
  br i1 %i.cd, label %bb.c, label %.critedge, !llvm.loop !66

.critedge:                                        ; preds = %._crit_edge191
  %.not147 = icmp eq i32 %i.bl, 1
  br i1 %.not147, label %bb.m, label %.critedge158

bb.m:                                             ; preds = %.critedge
  store i32 %.3, ptr %1, align 4, !tbaa !15
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @FSEv06_createDTable(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %0, i32 15)
  %i.a = shl nuw nsw i32 4, %spec.store.select
  %i.b = add nuw nsw i32 %i.a, 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #28
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @FSEv06_freeDTable(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -46, 1) i64 @FSEv06_buildDTable(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %4 = add i32 %2, 1                              ; 3 uses
  %i.c = shl nuw i32 1, %3                        ; 5 uses
  %i.d = add i32 %i.c, -1                         ; 5 uses
  %i.e = icmp ugt i32 %2, 255
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i32 %3, 12
  br i1 %i.f, label %.loopexit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.b
  %5 = trunc nuw nsw i32 %3 to i16
  %sext = shl nuw nsw i32 32768, %3
  %i.g = lshr exact i32 %sext, 16                 ; 3 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %2, 0
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new.a

.lr.ph.new.a:                                     ; preds = %.lr.ph.a
  %unroll_iter = and i64 %wide.trip.count, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.new.a
  %indvars.iv = phi i64 [ 0, %.lr.ph.new.a ], [ %indvars.iv.next.1, %bb.i ] ; 5 uses
  %.sroa.4.079 = phi i16 [ 1, %.lr.ph.new.a ], [ %.sroa.4.2.1, %bb.i ] ; 2 uses
  %.07178 = phi i32 [ %i.d, %.lr.ph.new.a ], [ %.172.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new.a ], [ %niter.next.1, %bb.i ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !18   ; 3 uses
  %i.k = icmp eq i16 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc i64 %indvars.iv to i8
  %i.m = add i32 %.07178, -1
  %i.n = zext i32 %.07178 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 %i.l, ptr %i.p, align 2, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = sext i16 %i.j to i32
  %.not76 = icmp sgt i32 %i.g, %i.q
  %spec.select = select i1 %.not76, i16 %.sroa.4.079, i16 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i16 [ 1, %bb.d ], [ %i.j, %bb.e ]
  %.172 = phi i32 [ %i.m, %bb.d ], [ %.07178, %bb.e ] ; 3 uses
  %.sroa.4.2 = phi i16 [ %.sroa.4.079, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %.sink, ptr %i.r, align 4, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.t = load i16, ptr %i.s, align 2, !tbaa !18   ; 3 uses
  %i.u = icmp eq i16 %i.t, -1
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = sext i16 %i.t to i32
  %.not76.1 = icmp sgt i32 %i.g, %i.v
  %spec.select.1 = select i1 %.not76.1, i16 %.sroa.4.2, i16 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = trunc i64 %indvars.iv.next to i8
  %i.x = add i32 %.172, -1
  %i.y = zext i32 %.172 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i8 %i.w, ptr %i.aa, align 2, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.1 = phi i16 [ 1, %bb.h ], [ %i.t, %bb.g ]
  %.172.1 = phi i32 [ %i.x, %bb.h ], [ %.172, %bb.g ] ; 3 uses
  %.sroa.4.2.1 = phi i16 [ %.sroa.4.2, %bb.h ], [ %spec.select.1, %bb.g ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.ab, align 2, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader77.lr.ph.unr-lcssa, label %bb.c, !llvm.loop !0

.preheader77.lr.ph.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader77.lr.ph, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader77.lr.ph.unr-lcssa, %.lr.ph.a
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.a ], [ %indvars.iv.next.1, %.preheader77.lr.ph.unr-lcssa ] ; 3 uses
  %.sroa.4.079.epil.init = phi i16 [ 1, %.lr.ph.a ], [ %.sroa.4.2.1, %.preheader77.lr.ph.unr-lcssa ] ; 2 uses
  %.07178.epil.init = phi i32 [ %i.d, %.lr.ph.a ], [ %.172.1, %.preheader77.lr.ph.unr-lcssa ] ; 3 uses
  %lcmp.mod107.a = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod107.a)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !18 ; 3 uses
  %i.ae = icmp eq i16 %i.ad, -1
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %i.af = sext i16 %i.ad to i32
  %.not76.epil = icmp sgt i32 %i.g, %i.af
  %spec.select.epil = select i1 %.not76.epil, i16 %.sroa.4.079.epil.init, i16 0
  br label %.preheader77.lr.ph.epilog-lcssa

bb.k:                                             ; preds = %.epil.preheader
  %i.ag = trunc i64 %indvars.iv.epil.init to i8
  %i.ah = add i32 %.07178.epil.init, -1
  %i.ai = zext i32 %.07178.epil.init to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.ag, ptr %i.ak, align 2, !tbaa !20
  br label %.preheader77.lr.ph.epilog-lcssa

.preheader77.lr.ph.epilog-lcssa:                  ; preds = %bb.k, %bb.j
  %.sink.epil = phi i16 [ 1, %bb.k ], [ %i.ad, %bb.j ]
  %.172.epil = phi i32 [ %i.ah, %bb.k ], [ %.07178.epil.init, %bb.j ]
  %.sroa.4.2.epil = phi i16 [ %.sroa.4.079.epil.init, %bb.k ], [ %spec.select.epil, %bb.j ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.al, align 2, !tbaa !18
  br label %.preheader77.lr.ph

.preheader77.lr.ph:                               ; preds = %.preheader77.lr.ph.unr-lcssa, %.preheader77.lr.ph.epilog-lcssa
  %.172.lcssa = phi i32 [ %.172.1, %.preheader77.lr.ph.unr-lcssa ], [ %.172.epil, %.preheader77.lr.ph.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.lcssa = phi i16 [ %.sroa.4.2.1, %.preheader77.lr.ph.unr-lcssa ], [ %.sroa.4.2.epil, %.preheader77.lr.ph.epilog-lcssa ]
  store i16 %5, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.lcssa, ptr %.sroa.4.0..sroa_idx, align 2
  %i.am = lshr i32 %i.c, 3
  %i.an = lshr i32 %i.c, 1
  %i.ao = add nuw nsw i32 %i.am, 3
  %i.ap = add nuw nsw i32 %i.ao, %i.an            ; 3 uses
  %wide.trip.count96 = zext nneg i32 %4 to i64
  br label %.preheader77

.preheader77:                                     ; preds = %.preheader77.lr.ph, %._crit_edge85
  %indvars.iv93 = phi i64 [ 0, %.preheader77.lr.ph ], [ %indvars.iv.next94, %._crit_edge85 ] ; 3 uses
  %.06688 = phi i32 [ 0, %.preheader77.lr.ph ], [ %.167.lcssa, %._crit_edge85 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv93
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !18 ; 5 uses
  %i.as = icmp sgt i16 %i.ar, 0
  br i1 %i.as, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %.preheader77
  %i.at = trunc i64 %indvars.iv93 to i8           ; 3 uses
  %i.au = icmp eq i16 %i.ar, 1
  br i1 %i.au, label %.epil.preheader108, label %.lr.ph84.new

.lr.ph84.new:                                     ; preds = %.lr.ph84
  %i.av = and i16 %i.ar, 32766
  %unroll_iter113 = zext nneg i16 %i.av to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph84.new
  %.16782 = phi i32 [ %.06688, %.lr.ph84.new ], [ %.2.1, %bb.p ] ; 2 uses
  %niter114 = phi i32 [ 0, %.lr.ph84.new ], [ %niter114.next.1, %bb.p ]
  %i.aw = zext nneg i32 %.16782 to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.at, ptr %i.ay, align 2, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.167.pn = phi i32 [ %.16782, %bb.l ], [ %.2, %bb.m ]
  %.pn = add nuw i32 %i.ap, %.167.pn
  %.2 = and i32 %.pn, %i.d                        ; 4 uses
  %i.az = icmp ugt i32 %.2, %.172.lcssa
  br i1 %i.az, label %bb.m, label %bb.n, !llvm.loop !1

bb.n:                                             ; preds = %bb.m
  %i.ba = zext nneg i32 %.2 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i8 %i.at, ptr %i.bc, align 2, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.167.pn.1 = phi i32 [ %.2, %bb.n ], [ %.2.1, %bb.o ]
  %.pn.1 = add nuw i32 %i.ap, %.167.pn.1
  %.2.1 = and i32 %.pn.1, %i.d                    ; 5 uses
  %i.bd = icmp ugt i32 %.2.1, %.172.lcssa
  br i1 %i.bd, label %bb.o, label %bb.p, !llvm.loop !1

bb.p:                                             ; preds = %bb.o
  %niter114.next.1 = add i32 %niter114, 2         ; 2 uses
  %niter114.ncmp.1 = icmp eq i32 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %._crit_edge85.loopexit.unr-lcssa, label %bb.l, !llvm.loop !2

._crit_edge85.loopexit.unr-lcssa:                 ; preds = %bb.p
  %i.be = and i16 %i.ar, 1
  %lcmp.mod110.not = icmp eq i16 %i.be, 0
  br i1 %lcmp.mod110.not, label %._crit_edge85, label %.epil.preheader108

.epil.preheader108:                               ; preds = %._crit_edge85.loopexit.unr-lcssa, %.lr.ph84
  %.16782.epil.init = phi i32 [ %.06688, %.lr.ph84 ], [ %.2.1, %._crit_edge85.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod112 = trunc i16 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.bf = zext nneg i32 %.16782.epil.init to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.at, ptr %i.bh, align 2, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader108
  %.167.pn.epil = phi i32 [ %.16782.epil.init, %.epil.preheader108 ], [ %.2.epil, %bb.q ]
  %.pn.epil = add nuw i32 %i.ap, %.167.pn.epil
  %.2.epil = and i32 %.pn.epil, %i.d              ; 3 uses
  %i.bi = icmp ugt i32 %.2.epil, %.172.lcssa
  br i1 %i.bi, label %bb.q, label %._crit_edge85, !llvm.loop !1

._crit_edge85:                                    ; preds = %._crit_edge85.loopexit.unr-lcssa, %bb.q, %.preheader77
  %.167.lcssa = phi i32 [ %.06688, %.preheader77 ], [ %.2.1, %._crit_edge85.loopexit.unr-lcssa ], [ %.2.epil, %bb.q ] ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %._crit_edge89, label %.preheader77, !llvm.loop !3

._crit_edge89:                                    ; preds = %._crit_edge85
  %.not = icmp eq i32 %.167.lcssa, 0
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge89
  %wide.trip.count101 = zext nneg i32 %i.c to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv98 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next99, %.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv98 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !20
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !18 ; 2 uses
  %i.bp = add i16 %i.bo, 1
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !18
  %i.bq = zext i16 %i.bo to i32                   ; 2 uses
  %i.br = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true)
  %i.bs = xor i32 %i.br, 31
  %i.bt = sub nsw i32 %3, %i.bs                   ; 2 uses
  %i.bu = trunc nsw i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !21
  %i.bw = and i32 %i.bt, 255
  %i.bx = shl i32 %i.bq, %i.bw
  %i.by = sub i32 %i.bx, %i.c
  %i.bz = trunc i32 %i.by to i16
  store i16 %i.bz, ptr %i.bj, align 2, !tbaa !22
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit, label %.preheader, !llvm.loop !4

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.a, %._crit_edge89
  %.1 = phi i64 [ -1, %._crit_edge89 ], [ -46, %bb.a ], [ -44, %bb.b ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @FSEv06_buildDTable_rle(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i8 noundef zeroext %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 2, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.b, align 2, !tbaa !25
  store i16 0, ptr %i.a, align 2, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %1, ptr %i.c, align 2, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.d, align 1, !tbaa !21
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define range(i64 -1, 1) i64 @FSEv06_buildDTable_raw(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i32 %1 to i16
  store i16 %i.c, ptr %0, align 2, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.d, align 2, !tbaa !25
  %i.e = trunc i32 %1 to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.024 = phi i32 [ 0, %bb.b ], [ %i.k, %bb.c ]   ; 3 uses
  %i.f = zext i32 %.024 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f ; 3 uses
  store i16 0, ptr %i.g, align 2, !tbaa !22
  %i.h = trunc i32 %.024 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.h, ptr %i.i, align 2, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 %i.e, ptr %i.j, align 1, !tbaa !21
  %i.k = add i32 %.024, 1                         ; 2 uses
  %.0.highbits = lshr i32 %i.k, %1
  %i.l = icmp eq i32 %.0.highbits, 0
  br i1 %i.l, label %bb.c, label %.loopexit, !llvm.loop !67

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.022 = phi i64 [ -1, %bb.a ], [ 0, %bb.c ]
  ret i64 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @FSEv06_decompress_usingDTable(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !25
  %.not = icmp eq i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -3 ; 2 uses
  %i.e = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %.not, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %FSEv06_decompress_usingDTable_generic.exit19, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %3, 7
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  %i.g = getelementptr i8, ptr %.ptr, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26    ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %FSEv06_decompress_usingDTable_generic.exit19, label %BITv06_initDStream.exit

bb.e:                                             ; preds = %bb.c
  %i.j = load i8, ptr %2, align 1, !tbaa !26
  %i.k = zext i8 %i.j to i64                      ; 7 uses
  switch i64 %3, label %bb.l [
    i64 7, label %bb.f
    i64 6, label %bb.g
    i64 5, label %bb.h
    i64 4, label %bb.i
    i64 3, label %bb.j
    i64 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.m = load i8, ptr %i.l, align 1, !tbaa !26
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 48
  %i.p = or disjoint i64 %i.o, %i.k
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi i64 [ %i.p, %bb.f ], [ %i.k, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = add nuw nsw i64 %i.u, %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.w = phi i64 [ %i.v, %bb.g ], [ %i.k, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !26
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 32
  %i.ab = add nuw nsw i64 %i.aa, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ac = phi i64 [ %i.ab, %bb.h ], [ %i.k, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !26
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 24
  %i.ah = add nuw nsw i64 %i.ag, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ai = phi i64 [ %i.ah, %bb.i ], [ %i.k, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = add nuw nsw i64 %i.am, %i.ai
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.ao = phi i64 [ %i.an, %bb.j ], [ %i.k, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !26
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 8
  %i.at = add nuw nsw i64 %i.as, %i.ao
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.sroa.0266.2 = phi i64 [ %i.k, %bb.e ], [ %i.at, %bb.k ]
  %i.au = getelementptr i8, ptr %2, i64 %3
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !26  ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %FSEv06_decompress_usingDTable_generic.exit19, label %BITv06_initDStream.exit.thread308

BITv06_initDStream.exit.thread308:                ; preds = %bb.l
  %i.ay = zext i8 %i.aw to i32
  %i.az = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ay, i1 true)
  %i.ba = trunc nuw nsw i64 %3 to i32
  %i.bb = shl nuw nsw i32 %i.ba, 3
  %reass.sub = sub nsw i32 %i.az, %i.bb
  %i.bc = add nsw i32 %reass.sub, 41
end_hunk_0
begin_hunk_1_@FSEv06_decompress_usingDTable:bb.a
  %i.nn = xor i32 %i.nm, 63
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = lshr i64 %i.nl, %i.no
  %i.nq = add i32 %i.nb, %i.nh                    ; 3 uses
  %i.nr = zext i16 %.sroa.0.0.copyload.i150 to i64
  %i.ns = add nuw i64 %i.np, %i.nr                ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.037.i568, i64 3
  store i8 %.sroa.4.0.copyload.i152, ptr %i.nt, align 1, !tbaa !26
  %i.nu = getelementptr inbounds nuw i8, ptr %.037.i568, i64 4 ; 2 uses
  %i.nv = icmp ugt i32 %i.nq, 64
  br i1 %i.nv, label %.preheader, label %.lr.ph569, !llvm.loop !68

.lr.ph431:                                        ; preds = %.preheader, %BITv06_reloadDStream.exit195
  %.1.i430 = phi ptr [ %i.pk, %BITv06_reloadDStream.exit195 ], [ %.037.i.lcssa, %.preheader ] ; 5 uses
  %.sroa.0.1429 = phi i64 [ %i.pj, %BITv06_reloadDStream.exit195 ], [ %.sroa.0.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.0209.1428 = phi i64 [ %i.oi, %BITv06_reloadDStream.exit195 ], [ %.sroa.0209.0.lcssa, %.preheader ]
  %.sroa.64220.1.idx427 = phi i64 [ %.sroa.64220.9.idx, %BITv06_reloadDStream.exit195 ], [ %.sroa.64220.7.idx492, %.preheader ] ; 5 uses
  %.sroa.29.1426 = phi i32 [ %.sroa.29.9, %BITv06_reloadDStream.exit195 ], [ %.sroa.29.7491, %.preheader ] ; 2 uses
  %.sroa.0217.1425 = phi i64 [ %.sroa.0217.8, %BITv06_reloadDStream.exit195 ], [ %.sroa.0217.6490, %.preheader ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.sroa.0209.1428 ; 3 uses
  %.sroa.0.0.copyload.i157 = load i16, ptr %i.nw, align 2, !tbaa !18
  %.sroa.4.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.nw, i64 2
  %.sroa.4.0.copyload.i159 = load i8, ptr %.sroa.4.0..sroa_idx.i158, align 2, !tbaa !26
  %.sroa.5.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.nw, i64 3
  %.sroa.5.0.copyload.i161 = load i8, ptr %.sroa.5.0..sroa_idx.i160, align 1, !tbaa !26
  %i.nx = zext i8 %.sroa.5.0.copyload.i161 to i32 ; 2 uses
  %i.ny = and i32 %.sroa.29.1426, 63
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = shl i64 %.sroa.0217.1425, %i.nz
  %i.ob = lshr i64 %i.oa, 1
  %i.oc = and i32 %i.nx, 63
  %i.od = xor i32 %i.oc, 63
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = lshr i64 %i.ob, %i.oe
  %i.og = add i32 %.sroa.29.1426, %i.nx           ; 6 uses
  %i.oh = zext i16 %.sroa.0.0.copyload.i157 to i64
  %i.oi = add nuw i64 %i.of, %i.oh                ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.1.i430, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i159, ptr %.1.i430, align 1, !tbaa !26
  %i.ok = icmp ugt i32 %i.og, 64
  br i1 %i.ok, label %BITv06_reloadDStream.exit172, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph431
  %.not.i164 = icmp slt i64 %.sroa.64220.1.idx427, 8
  br i1 %.not.i164, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ol = lshr i32 %i.og, 3
  %i.om = zext nneg i32 %i.ol to i64
  %.sroa.64220.1.add391 = sub nuw nsw i64 %.sroa.64220.1.idx427, %i.om ; 2 uses
  %.ptr395 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.64220.1.add391
  %i.on = and i32 %i.og, 7
  %.val30.i165 = load i64, ptr %.ptr395, align 1
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.oo = icmp eq i64 %.sroa.64220.1.idx427, 0
  br i1 %i.oo, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.op = lshr i32 %i.og, 3
  %i.oq = zext nneg i32 %i.op to i64
  %.024.i167396 = tail call i64 @llvm.smin.i64(i64 %.sroa.64220.1.idx427, i64 %i.oq) ; 2 uses
  %.024.i167 = trunc i64 %.024.i167396 to i32
  %i.or = and i64 %.024.i167396, 4294967295
  %.sroa.64220.1.add = sub nsw i64 %.sroa.64220.1.idx427, %i.or ; 2 uses
  %.ptr394 = getelementptr inbounds i8, ptr %2, i64 %.sroa.64220.1.add
  %i.os = shl i32 %.024.i167, 3
  %i.ot = sub i32 %i.og, %i.os
  %.val.i169 = load i64, ptr %.ptr394, align 1
  br label %bb.bn

BITv06_reloadDStream.exit172:                     ; preds = %.lr.ph431
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.sroa.0.1429
  %.sroa.4.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  %.sroa.4.0.copyload.i175 = load i8, ptr %.sroa.4.0..sroa_idx.i174, align 2, !tbaa !26
  %i.ov = getelementptr inbounds nuw i8, ptr %.1.i430, i64 2
  store i8 %.sroa.4.0.copyload.i175, ptr %i.oj, align 1, !tbaa !26
  br label %bb.bu

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bk
  %.sroa.0217.7.ph = phi i64 [ %.val30.i165, %bb.bk ], [ %.val.i169, %bb.bm ], [ %.sroa.0217.1425, %bb.bl ] ; 2 uses
  %.sroa.29.8.ph = phi i32 [ %i.on, %bb.bk ], [ %i.ot, %bb.bm ], [ %i.og, %bb.bl ] ; 2 uses
  %.sroa.64220.8.ph.idx = phi i64 [ %.sroa.64220.1.add391, %bb.bk ], [ %.sroa.64220.1.add, %bb.bm ], [ 0, %bb.bl ] ; 5 uses
  %i.ow = icmp ugt ptr %i.oj, %i.lp
  br i1 %i.ow, label %FSEv06_decompress_usingDTable_generic.exit19, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.sroa.0.1429 ; 3 uses
  %.sroa.0.0.copyload.i180 = load i16, ptr %i.ox, align 2, !tbaa !18
  %.sroa.4.0..sroa_idx.i181 = getelementptr inbounds nuw i8, ptr %i.ox, i64 2
  %.sroa.4.0.copyload.i182 = load i8, ptr %.sroa.4.0..sroa_idx.i181, align 2, !tbaa !26
  %.sroa.5.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %i.ox, i64 3
  %.sroa.5.0.copyload.i184 = load i8, ptr %.sroa.5.0..sroa_idx.i183, align 1, !tbaa !26
  %i.oy = zext i8 %.sroa.5.0.copyload.i184 to i32 ; 2 uses
  %i.oz = and i32 %.sroa.29.8.ph, 63
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = shl i64 %.sroa.0217.7.ph, %i.pa
  %i.pc = lshr i64 %i.pb, 1
  %i.pd = and i32 %i.oy, 63
  %i.pe = xor i32 %i.pd, 63
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = lshr i64 %i.pc, %i.pf
  %i.ph = add i32 %.sroa.29.8.ph, %i.oy           ; 6 uses
  %i.pi = zext i16 %.sroa.0.0.copyload.i180 to i64
  %i.pj = add nuw i64 %i.pg, %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %.1.i430, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i182, ptr %i.oj, align 1, !tbaa !26
  %i.pl = icmp ugt i32 %i.ph, 64
  br i1 %i.pl, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not.i187 = icmp slt i64 %.sroa.64220.8.ph.idx, 8
  br i1 %.not.i187, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pm = lshr i32 %i.ph, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %.sroa.64220.8.ph.add390 = sub nuw nsw i64 %.sroa.64220.8.ph.idx, %i.pn ; 2 uses
  %.ptr393 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.64220.8.ph.add390
  %i.po = and i32 %i.ph, 7
  %.val30.i188 = load i64, ptr %.ptr393, align 1
  br label %BITv06_reloadDStream.exit195

bb.br:                                            ; preds = %bb.bp
  %i.pp = icmp eq i64 %.sroa.64220.8.ph.idx, 0
  br i1 %i.pp, label %BITv06_reloadDStream.exit195, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pq = lshr i32 %i.ph, 3
  %i.pr = zext nneg i32 %i.pq to i64
  %.024.i190397 = tail call i64 @llvm.smin.i64(i64 %.sroa.64220.8.ph.idx, i64 %i.pr) ; 2 uses
  %.024.i190 = trunc i64 %.024.i190397 to i32
  %i.ps = and i64 %.024.i190397, 4294967295
  %.sroa.64220.8.ph.add = sub nsw i64 %.sroa.64220.8.ph.idx, %i.ps ; 2 uses
  %.ptr392 = getelementptr inbounds i8, ptr %2, i64 %.sroa.64220.8.ph.add
  %i.pt = shl i32 %.024.i190, 3
  %i.pu = sub i32 %i.ph, %i.pt
  %.val.i192 = load i64, ptr %.ptr392, align 1
  br label %BITv06_reloadDStream.exit195

BITv06_reloadDStream.exit195:                     ; preds = %bb.br, %bb.bq, %bb.bs
  %.sroa.0217.8 = phi i64 [ %.val30.i188, %bb.bq ], [ %.val.i192, %bb.bs ], [ %.sroa.0217.7.ph, %bb.br ]
  %.sroa.29.9 = phi i32 [ %i.po, %bb.bq ], [ %i.pu, %bb.bs ], [ %i.ph, %bb.br ]
  %.sroa.64220.9.idx = phi i64 [ %.sroa.64220.8.ph.add390, %bb.bq ], [ %.sroa.64220.8.ph.add, %bb.bs ], [ 0, %bb.br ]
  %i.pv = icmp ugt ptr %i.pk, %i.lp
  br i1 %i.pv, label %FSEv06_decompress_usingDTable_generic.exit19, label %.lr.ph431

bb.bt:                                            ; preds = %bb.bo
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.oi
  %.sroa.4.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %i.pw, i64 2
  %.sroa.4.0.copyload.i198 = load i8, ptr %.sroa.4.0..sroa_idx.i197, align 2, !tbaa !26
  %i.px = getelementptr inbounds nuw i8, ptr %.1.i430, i64 3
  store i8 %.sroa.4.0.copyload.i198, ptr %i.pk, align 1, !tbaa !26
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %BITv06_reloadDStream.exit172
  %.2.i = phi ptr [ %i.ov, %BITv06_reloadDStream.exit172 ], [ %i.px, %bb.bt ]
  %i.py = ptrtoint ptr %.2.i to i64
  %i.pz = ptrtoint ptr %0 to i64
  %i.qa = sub i64 %i.py, %i.pz
  br label %FSEv06_decompress_usingDTable_generic.exit19

FSEv06_decompress_usingDTable_generic.exit19:     ; preds = %BITv06_reloadDStream.exit92, %bb.ad, %BITv06_reloadDStream.exit195, %bb.bn, %.preheader399, %.preheader, %bb.al, %bb.an, %bb.av, %bb.b, %bb.d, %bb.l, %bb.bu, %BITv06_initDStream.exit103, %bb.ak, %BITv06_initDStream.exit
  %.0 = phi i64 [ -1, %bb.l ], [ %3, %BITv06_initDStream.exit ], [ %i.hm, %bb.ak ], [ -72, %bb.al ], [ -70, %.preheader ], [ %3, %BITv06_initDStream.exit103 ], [ %i.qa, %bb.bu ], [ -1, %bb.an ], [ -1, %bb.av ], [ -72, %bb.b ], [ -1, %bb.d ], [ -70, %BITv06_reloadDStream.exit195 ], [ -70, %.preheader399 ], [ -70, %bb.bn ], [ -70, %bb.ad ], [ -70, %BITv06_reloadDStream.exit92 ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @FSEv06_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [256 x i16], align 16             ; 7 uses
  %i.c = alloca [4097 x i32], align 16            ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i32 255, ptr %i.e, align 4, !tbaa !15
  %i.f = icmp ult i64 %3, 2
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i64 @FSEv06_readNCount(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp ult i64 %i.g, %3
  br i1 %.not28, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.j = sub nuw i64 %3, %i.g
  %i.k = load i32, ptr %i.e, align 4, !tbaa !15   ; 3 uses
  %i.l = load i32, ptr %i.d, align 4, !tbaa !15   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %4 = add i32 %i.k, 1                            ; 2 uses
  %i.n = shl nuw i32 1, %i.l                      ; 5 uses
  %i.o = add i32 %i.n, -1                         ; 5 uses
  %i.p = icmp ugt i32 %i.k, 255
  br i1 %i.p, label %FSEv06_buildDTable.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i32 %i.l, 12
  br i1 %i.q, label %FSEv06_buildDTable.exit.thread, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.e
  %sext.i = shl nuw nsw i32 32768, %i.l
  %i.r = lshr exact i32 %sext.i, 16               ; 3 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.s = icmp eq i32 %i.k, 0
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new.a

.lr.ph.i.new.a:                                   ; preds = %.lr.ph.i.a
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.i.new.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new.a ], [ %indvars.iv.next.i.1, %bb.l ] ; 5 uses
  %.sroa.4.079.i = phi i16 [ 1, %.lr.ph.i.new.a ], [ %.sroa.4.2.i.1, %bb.l ] ; 2 uses
  %.07178.i = phi i32 [ %i.o, %.lr.ph.i.new.a ], [ %.172.i.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new.a ], [ %niter.next.1, %bb.l ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.u = load i16, ptr %i.t, align 4, !tbaa !18   ; 3 uses
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = trunc i64 %indvars.iv.i to i8
  %i.x = add i32 %.07178.i, -1
  %i.y = zext i32 %.07178.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i8 %i.w, ptr %i.aa, align 2, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = sext i16 %i.u to i32
  %.not76.i = icmp sgt i32 %i.r, %i.ab
  %spec.select.i = select i1 %.not76.i, i16 %.sroa.4.079.i, i16 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i = phi i16 [ 1, %bb.g ], [ %i.u, %bb.h ]
  %.172.i = phi i32 [ %i.x, %bb.g ], [ %.07178.i, %bb.h ] ; 3 uses
  %.sroa.4.2.i = phi i16 [ %.sroa.4.079.i, %bb.g ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.ac, align 4, !tbaa !18
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !18 ; 3 uses
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = sext i16 %i.ae to i32
  %.not76.i.1 = icmp sgt i32 %i.r, %i.ag
  %spec.select.i.1 = select i1 %.not76.i.1, i16 %.sroa.4.2.i, i16 0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = trunc i64 %indvars.iv.next.i to i8
  %i.ai = add i32 %.172.i, -1
  %i.aj = zext i32 %.172.i to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 %i.ah, ptr %i.al, align 2, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.1 = phi i16 [ 1, %bb.k ], [ %i.ae, %bb.j ]
  %.172.i.1 = phi i32 [ %i.ai, %bb.k ], [ %.172.i, %bb.j ] ; 3 uses
  %.sroa.4.2.i.1 = phi i16 [ %.sroa.4.2.i, %bb.k ], [ %spec.select.i.1, %bb.j ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.am, align 2, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader77.lr.ph.i.unr-lcssa, label %bb.f, !llvm.loop !0

.preheader77.lr.ph.i.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader77.lr.ph.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader77.lr.ph.i.unr-lcssa, %.lr.ph.i.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.a ], [ %indvars.iv.next.i.1, %.preheader77.lr.ph.i.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i.epil.init = phi i16 [ 1, %.lr.ph.i.a ], [ %.sroa.4.2.i.1, %.preheader77.lr.ph.i.unr-lcssa ] ; 2 uses
  %.07178.i.epil.init = phi i32 [ %i.o, %.lr.ph.i.a ], [ %.172.i.1, %.preheader77.lr.ph.i.unr-lcssa ] ; 3 uses
  %lcmp.mod43 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !18 ; 3 uses
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.aq = sext i16 %i.ao to i32
  %.not76.i.epil = icmp sgt i32 %i.r, %i.aq
  %spec.select.i.epil = select i1 %.not76.i.epil, i16 %.sroa.4.079.i.epil.init, i16 0
  br label %.preheader77.lr.ph.i.epilog-lcssa

bb.n:                                             ; preds = %.epil.preheader
  %i.ar = trunc i64 %indvars.iv.i.epil.init to i8
  %i.as = add i32 %.07178.i.epil.init, -1
  %i.at = zext i32 %.07178.i.epil.init to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 %i.ar, ptr %i.av, align 2, !tbaa !20
  br label %.preheader77.lr.ph.i.epilog-lcssa

.preheader77.lr.ph.i.epilog-lcssa:                ; preds = %bb.n, %bb.m
  %.sink.i.epil = phi i16 [ 1, %bb.n ], [ %i.ao, %bb.m ]
  %.172.i.epil = phi i32 [ %i.as, %bb.n ], [ %.07178.i.epil.init, %bb.m ]
  %.sroa.4.2.i.epil = phi i16 [ %.sroa.4.079.i.epil.init, %bb.n ], [ %spec.select.i.epil, %bb.m ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  store i16 %.sink.i.epil, ptr %i.aw, align 2, !tbaa !18
  br label %.preheader77.lr.ph.i

.preheader77.lr.ph.i:                             ; preds = %.preheader77.lr.ph.i.unr-lcssa, %.preheader77.lr.ph.i.epilog-lcssa
  %.172.i.lcssa = phi i32 [ %.172.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.172.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i.lcssa = phi i16 [ %.sroa.4.2.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.sroa.4.2.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ]
  %i.ax = trunc nuw nsw i32 %i.l to i16
  store i16 %i.ax, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.sroa.4.2.i.lcssa, ptr %.sroa.4.0..sroa_idx.i, align 2
  %i.ay = lshr i32 %i.n, 3
  %i.az = lshr i32 %i.n, 1
  %i.ba = add nuw nsw i32 %i.ay, 3
  %i.bb = add nuw nsw i32 %i.ba, %i.az            ; 3 uses
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %._crit_edge85.i, %.preheader77.lr.ph.i
  %indvars.iv93.i = phi i64 [ 0, %.preheader77.lr.ph.i ], [ %indvars.iv.next94.i, %._crit_edge85.i ] ; 3 uses
  %.06688.i = phi i32 [ 0, %.preheader77.lr.ph.i ], [ %.167.lcssa.i, %._crit_edge85.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv93.i
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !18 ; 5 uses
  %i.be = icmp sgt i16 %i.bd, 0
  br i1 %i.be, label %.lr.ph84.i, label %._crit_edge85.i

.lr.ph84.i:                                       ; preds = %.preheader77.i
  %i.bf = trunc i64 %indvars.iv93.i to i8         ; 3 uses
  %i.bg = icmp eq i16 %i.bd, 1
  br i1 %i.bg, label %.epil.preheader44, label %.lr.ph84.i.new

.lr.ph84.i.new:                                   ; preds = %.lr.ph84.i
  %i.bh = and i16 %i.bd, 32766
  %unroll_iter49 = zext nneg i16 %i.bh to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph84.i.new
  %.16782.i = phi i32 [ %.06688.i, %.lr.ph84.i.new ], [ %.2.i.1, %bb.s ] ; 2 uses
  %niter50 = phi i32 [ 0, %.lr.ph84.i.new ], [ %niter50.next.1, %bb.s ]
  %i.bi = zext nneg i32 %.16782.i to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %i.bf, ptr %i.bk, align 2, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.167.pn.i = phi i32 [ %.16782.i, %bb.o ], [ %.2.i, %bb.p ]
  %.pn.i = add nuw i32 %i.bb, %.167.pn.i
  %.2.i = and i32 %.pn.i, %i.o                    ; 4 uses
  %i.bl = icmp ugt i32 %.2.i, %.172.i.lcssa
  br i1 %i.bl, label %bb.p, label %bb.q, !llvm.loop !1

bb.q:                                             ; preds = %bb.p
  %i.bm = zext nneg i32 %.2.i to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %i.bf, ptr %i.bo, align 2, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.167.pn.i.1 = phi i32 [ %.2.i, %bb.q ], [ %.2.i.1, %bb.r ]
  %.pn.i.1 = add nuw i32 %i.bb, %.167.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.o                ; 5 uses
  %i.bp = icmp ugt i32 %.2.i.1, %.172.i.lcssa
  br i1 %i.bp, label %bb.r, label %bb.s, !llvm.loop !1

bb.s:                                             ; preds = %bb.r
  %niter50.next.1 = add i32 %niter50, 2           ; 2 uses
  %niter50.ncmp.1 = icmp eq i32 %niter50.next.1, %unroll_iter49
  br i1 %niter50.ncmp.1, label %._crit_edge85.i.loopexit.unr-lcssa, label %bb.o, !llvm.loop !2

._crit_edge85.i.loopexit.unr-lcssa:               ; preds = %bb.s
  %i.bq = and i16 %i.bd, 1
  %lcmp.mod46.not = icmp eq i16 %i.bq, 0
  br i1 %lcmp.mod46.not, label %._crit_edge85.i, label %.epil.preheader44

.epil.preheader44:                                ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %.lr.ph84.i
  %.16782.i.epil.init = phi i32 [ %.06688.i, %.lr.ph84.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod48 = trunc i16 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.br = zext nneg i32 %.16782.i.epil.init to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 %i.bf, ptr %i.bt, align 2, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader44
  %.167.pn.i.epil = phi i32 [ %.16782.i.epil.init, %.epil.preheader44 ], [ %.2.i.epil, %bb.t ]
  %.pn.i.epil = add nuw i32 %i.bb, %.167.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.o          ; 3 uses
  %i.bu = icmp ugt i32 %.2.i.epil, %.172.i.lcssa
  br i1 %i.bu, label %bb.t, label %._crit_edge85.i, !llvm.loop !1

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %bb.t, %.preheader77.i
  %.167.lcssa.i = phi i32 [ %.06688.i, %.preheader77.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ], [ %.2.i.epil, %bb.t ] ; 2 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %wide.trip.count.i
  br i1 %exitcond97.not.i, label %._crit_edge89.i, label %.preheader77.i, !llvm.loop !3

._crit_edge89.i:                                  ; preds = %._crit_edge85.i
  %.not.i = icmp eq i32 %.167.lcssa.i, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %FSEv06_buildDTable.exit.thread

.preheader.preheader.i:                           ; preds = %._crit_edge89.i
  %wide.trip.count101.i = zext nneg i32 %i.n to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv98.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next99.i, %.preheader.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv98.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !20
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.by ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !18 ; 2 uses
  %i.cb = add i16 %i.ca, 1
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !18
  %i.cc = zext i16 %i.ca to i32                   ; 2 uses
  %i.cd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.ce = xor i32 %i.cd, 31
  %i.cf = sub nsw i32 %i.l, %i.ce                 ; 2 uses
  %i.cg = trunc nsw i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !21
  %i.ci = and i32 %i.cf, 255
  %i.cj = shl i32 %i.cc, %i.ci
  %i.ck = sub i32 %i.cj, %i.n
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.bv, align 4, !tbaa !22
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count101.i
  br i1 %exitcond102.not.i, label %bb.u, label %.preheader.i, !llvm.loop !4

FSEv06_buildDTable.exit.thread:                   ; preds = %._crit_edge89.i, %bb.d, %bb.e
  %.1.i.ph = phi i64 [ -44, %bb.e ], [ -46, %bb.d ], [ -1, %._crit_edge89.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.thread

bb.u:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cm = call i64 @FSEv06_decompress_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %i.i, i64 noundef %i.j, ptr noundef nonnull %i.c)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %FSEv06_buildDTable.exit.thread, %bb.a, %bb.u
  %.2 = phi i64 [ -72, %bb.a ], [ %i.cm, %bb.u ], [ %.1.i.ph, %FSEv06_buildDTable.exit.thread ], [ -72, %bb.c ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -119, -9223372036854775808) i64 @HUFv06_readDTableX2(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.f = call fastcc i64 @HUFv06_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %1, i64 noundef %2) ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.c, align 4, !tbaa !15   ; 8 uses
  %i.i = load i16, ptr %0, align 2, !tbaa !18
  %i.j = zext i16 %i.i to i32
  %i.k = icmp ugt i32 %i.h, %i.j
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc nuw i32 %i.h to i16
  store i16 %i.l, ptr %0, align 2, !tbaa !18
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i32 %i.h, 1
  %i.m = icmp eq i32 %i.h, 1
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.h, -2
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %.03339.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ac, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i32 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod72)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i32 %.03339.epil.init, ptr %i.n, align 4, !tbaa !15
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !15   ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader
  %i.p = trunc i32 %i.h to i8
  %i.q = add i8 %i.p, 1
  %wide.trip.count52 = zext i32 %i.o to i64
  br label %bb.d

end_hunk_1
begin_hunk_2_@HUFv06_decompress1X2:bb.a
  br i1 %.not.i, label %HUFv06_readDTableX2.exit.thread20, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.preheader.i
  %i.p = trunc nuw nsw i32 %i.i to i8
  %i.q = add nuw nsw i8 %i.p, 1
  %wide.trip.count52.i = zext i32 %i.o to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.03339.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15
  %i.t = trunc i64 %indvars.iv.i to i32
  %i.u = add nsw i32 %i.t, -1
  %i.v = shl i32 %i.s, %i.u
  %i.w = add i32 %i.v, %.03339.i                  ; 2 uses
  store i32 %.03339.i, ptr %i.r, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15
  %i.z = trunc i64 %indvars.iv.next.i to i32
  %i.aa = add i32 %i.z, -1
  %i.ab = shl i32 %i.y, %i.aa
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph43.i
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next50.i, %._crit_edge.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv49.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !26  ; 3 uses
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = trunc i64 %indvars.iv49.i to i8         ; 3 uses
  %i.aj = sub i8 %i.q, %i.ae                      ; 3 uses
  %i.ak = zext i8 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !15 ; 3 uses
  %i.an = add i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.d
  %i.ap = zext i32 %i.am to i64                   ; 6 uses
  %wide.trip.count.i = zext i32 %i.an to i64      ; 2 uses
  %i.aq = sub nsw i64 %wide.trip.count.i, %i.ap   ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.as = add nsw i64 %n.vec, %i.ap
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert31 = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert31, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add nuw i64 %index, %i.ap               ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.at
  %i.av = getelementptr [2 x i8], ptr %i.f, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <16 x i8> %interleaved.vec, ptr %i.au, align 2, !tbaa !26
  store <16 x i8> %interleaved.vec, ptr %i.aw, align 2, !tbaa !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.i.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.aq, -4                    ; 3 uses
  %i.ay = add nsw i64 %n.vec34, %i.ap
  %broadcast.splatinsert35 = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert37 = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.f, i64 %i.ap
  %interleaved.vec40 = shufflevector <4 x i8> %broadcast.splatinsert35, <4 x i8> %broadcast.splatinsert37, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index39
  store <8 x i8> %interleaved.vec40, ptr %gep, align 2, !tbaa !26
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next41, %n.vec34
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !84

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.aq, %n.vec34
  br i1 %cmp.n42, label %._crit_edge.i, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv45.i.ph = phi i64 [ %i.ap, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %.lr.ph41.i ], [ %indvars.iv45.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv45.i ; 2 uses
  store i8 %i.ai, ptr %i.ba, align 2, !tbaa !26
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !26
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count.i
  br i1 %exitcond48.not.i, label %._crit_edge.i, label %.lr.ph41.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %.lr.ph41.i, %middle.block, %vec.epilog.middle.block, %bb.d
  store i32 %i.an, ptr %i.al, align 4, !tbaa !15
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %HUFv06_readDTableX2.exit.thread20, label %bb.d, !llvm.loop !6

HUFv06_readDTableX2.exit.thread:                  ; preds = %bb.b, %bb.a
  %.032.i.ph = phi i64 [ %i.g, %bb.a ], [ -44, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.f

HUFv06_readDTableX2.exit.thread20:                ; preds = %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not17 = icmp ult i64 %i.g, %3
  br i1 %.not17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %HUFv06_readDTableX2.exit.thread20
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.bc = sub nuw i64 %3, %i.g
  %i.bd = call i64 @HUFv06_decompress1X2_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %HUFv06_readDTableX2.exit.thread, %HUFv06_readDTableX2.exit.thread20, %bb.e
  %.0 = phi i64 [ %i.bd, %bb.e ], [ %.032.i.ph, %HUFv06_readDTableX2.exit.thread ], [ -72, %HUFv06_readDTableX2.exit.thread20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv06_decompress4X2_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.BITv06_DStream_t, align 8   ; 18 uses
  %6 = alloca %struct.BITv06_DStream_t, align 8   ; 18 uses
  %7 = alloca %struct.BITv06_DStream_t, align 8   ; 18 uses
  %8 = alloca %struct.BITv06_DStream_t, align 8   ; 12 uses
  %i.a = icmp ult i64 %3, 10
  br i1 %i.a, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 20 uses
  %i.d = load i16, ptr %4, align 2, !tbaa !18
  %i.e = zext i16 %i.d to i32                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %.val149 = load i16, ptr %2, align 1            ; 5 uses
  %i.f = zext i16 %.val149 to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val148 = load i16, ptr %i.g, align 1          ; 5 uses
  %i.h = zext i16 %.val148 to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val = load i16, ptr %i.i, align 1             ; 5 uses
  %i.j = zext i16 %.val to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 %i.f     ; 12 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %i.h     ; 12 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %i.j     ; 3 uses
  %i.o = add i64 %1, 3
  %i.p = lshr i64 %i.o, 2                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 5 uses
  %i.t = add nuw nsw i64 %i.f, 6
  %i.u = add nuw nsw i64 %i.t, %i.h
  %i.v = add nuw nsw i64 %i.u, %i.j               ; 2 uses
  %i.w = sub i64 %3, %i.v
  %i.x = icmp ugt i64 %i.v, %3
  br i1 %i.x, label %BITv06_initDStream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i16 %.val149, 0
  br i1 %i.y, label %BITv06_initDStream.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp ugt i16 %.val149, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.aa, align 8, !tbaa !34
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !35
  %.val.i = load i64, ptr %i.ab, align 1          ; 2 uses
  store i64 %.val.i, ptr %5, align 8, !tbaa !36
  %i.ad = lshr i64 %.val.i, 56                    ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %BITv06_initDStream.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.af = trunc nuw nsw i64 %i.ad to i32
  %i.ag = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = sub nuw nsw i32 8, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !37
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.k, ptr %i.ak, align 8, !tbaa !35
  %i.al = load i8, ptr %i.k, align 1, !tbaa !26
  %i.am = zext i8 %i.al to i64                    ; 7 uses
  store i64 %i.am, ptr %5, align 8, !tbaa !36
  switch i16 %.val149, label %bb.m [
    i16 7, label %bb.g
    i16 6, label %bb.h
    i16 5, label %bb.i
    i16 4, label %bb.j
    i16 3, label %bb.k
    i16 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !26
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 48
  %i.ar = or disjoint i64 %i.aq, %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i64 [ %i.ar, %bb.g ], [ %i.am, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.aw, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ay = phi i64 [ %i.ax, %bb.h ], [ %i.am, %bb.f ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !26
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 32
  %i.bd = add nuw nsw i64 %i.bc, %i.ay
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.be = phi i64 [ %i.bd, %bb.i ], [ %i.am, %bb.f ]
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !26
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bi, %i.be
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.bk = phi i64 [ %i.bj, %bb.j ], [ %i.am, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !26
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 16
  %i.bp = add nuw nsw i64 %i.bo, %i.bk
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.bq = phi i64 [ %i.bp, %bb.k ], [ %i.am, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !26
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 8
  %i.bv = add nuw nsw i64 %i.bu, %i.bq
  store i64 %i.bv, ptr %5, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.bw = getelementptr i8, ptr %i.l, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !26  ; 2 uses
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %BITv06_initDStream.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = zext i8 %i.bx to i32
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true)
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cc = shl nuw nsw i16 %.val149, 3
  %i.cd = zext nneg i16 %i.cc to i32
  %reass.sub = sub nsw i32 %i.ca, %i.cd
  %i.ce = add nsw i32 %reass.sub, 41
  store i32 %i.ce, ptr %i.cb, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.cf = icmp eq i16 %.val148, 0
  br i1 %i.cf, label %BITv06_initDStream.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = icmp ugt i16 %.val148, 7
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.ch, align 8, !tbaa !34
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !35
  %.val.i151 = load i64, ptr %i.ci, align 1       ; 2 uses
  store i64 %.val.i151, ptr %6, align 8, !tbaa !36
  %i.ck = lshr i64 %.val.i151, 56                 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %BITv06_initDStream.exit.thread, label %.thread.i152

.thread.i152:                                     ; preds = %bb.q
  %i.cm = trunc nuw nsw i64 %i.ck to i32
  %i.cn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cm, i1 true)
  %i.co = xor i32 %i.cn, 31
  %i.cp = sub nuw nsw i32 8, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !37
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.l, ptr %i.cr, align 8, !tbaa !35
  %i.cs = load i8, ptr %i.l, align 1, !tbaa !26
  %i.ct = zext i8 %i.cs to i64                    ; 7 uses
  store i64 %i.ct, ptr %6, align 8, !tbaa !36
  switch i16 %.val148, label %bb.y [
    i16 7, label %bb.s
    i16 6, label %bb.t
    i16 5, label %bb.u
    i16 4, label %bb.v
    i16 3, label %bb.w
    i16 2, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !26
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 48
  %i.cy = or disjoint i64 %i.cx, %i.ct
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cz = phi i64 [ %i.cy, %bb.s ], [ %i.ct, %bb.r ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.db = load i8, ptr %i.da, align 1, !tbaa !26
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 40
  %i.de = add nuw nsw i64 %i.dd, %i.cz
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.df = phi i64 [ %i.de, %bb.t ], [ %i.ct, %bb.r ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !26
  %i.di = zext i8 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 32
  %i.dk = add nuw nsw i64 %i.dj, %i.df
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.dl = phi i64 [ %i.dk, %bb.u ], [ %i.ct, %bb.r ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !26
  %i.do = zext i8 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 24
  %i.dq = add nuw nsw i64 %i.dp, %i.dl
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %i.dr = phi i64 [ %i.dq, %bb.v ], [ %i.ct, %bb.r ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 2
end_hunk_2
begin_hunk_3_@HUFv06_decodeStreamX4:bb.a
  %i.dc = icmp eq ptr %i.cu, %i.cv
  br i1 %i.dc, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dd = lshr i32 %i.ct, 3                       ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.cu, i64 %i.df
  %i.dh = icmp uge ptr %i.dg, %i.cv               ; 2 uses
  %i.di = ptrtoint ptr %i.cu to i64
  %i.dj = ptrtoint ptr %i.cv to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i32
  %.024.i57 = select i1 %i.dh, i32 %i.dd, i32 %i.dl ; 2 uses
  %i.dm = zext i32 %.024.i57 to i64
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.cu, i64 %i.dn ; 2 uses
  store ptr %i.do, ptr %i.c, align 8, !tbaa !35
  %i.dp = shl i32 %.024.i57, 3
  %i.dq = sub i32 %i.ct, %i.dp
  br label %BITv06_reloadDStream.exit62

BITv06_reloadDStream.exit62:                      ; preds = %bb.f, %bb.h
  %.val30.i55.sink.in = phi ptr [ %i.da, %bb.f ], [ %i.do, %bb.h ]
  %.val9.i64 = phi i32 [ %i.db, %bb.f ], [ %i.dq, %bb.h ] ; 3 uses
  %.025.i56 = phi i1 [ true, %bb.f ], [ %i.dh, %bb.h ]
  store i32 %.val9.i64, ptr %i.a, align 8, !tbaa !37
  %.val30.i55.sink = load i64, ptr %.val30.i55.sink.in, align 1
  store i64 %.val30.i55.sink, ptr %1, align 8, !tbaa !36
  %i.dr = icmp ule ptr %.311, %i.ai
  %i.ds = select i1 %.025.i56, i1 %i.dr, i1 false
  br i1 %i.ds, label %bb.i, label %.preheader

.preheader:                                       ; preds = %BITv06_reloadDStream.exit62, %bb.i, %bb.g, %.preheader68
  %.3.lcssa = phi ptr [ %.0.lcssa, %.preheader68 ], [ %.311, %BITv06_reloadDStream.exit62 ], [ %i.eh, %bb.i ], [ %.311, %bb.g ] ; 3 uses
  %.val9.i6491 = phi i32 [ %.val9.i88, %.preheader68 ], [ %.val9.i64, %BITv06_reloadDStream.exit62 ], [ %i.ed, %bb.i ], [ %i.ct, %bb.g ] ; 2 uses
  %.not70 = icmp ugt ptr %.3.lcssa, %i.ai
  br i1 %.not70, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %BITv06_reloadDStream.exit62
  %.val.i63 = load i64, ptr %1, align 8, !tbaa !36
  %i.dt = and i32 %.val9.i64, 63
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl i64 %.val.i63, %i.du
  %i.dw = lshr i64 %i.dv, %i.g
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw ; 3 uses
  %i.dy = load i16, ptr %i.dx, align 2
  store i16 %i.dy, ptr %.311, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !20
  %i.eb = zext i8 %i.ea to i32
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !37
  %i.ed = add i32 %i.ec, %i.eb                    ; 4 uses
  store i32 %i.ed, ptr %i.a, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !21
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.311, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt i32 %i.ed, 64
  br i1 %i.ei, label %.preheader, label %.lr.ph12, !llvm.loop !109

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.val9.i66 = phi i32 [ %i.et, %.lr.ph ], [ %.val9.i6491, %.preheader ]
  %.471 = phi ptr [ %i.ex, %.lr.ph ], [ %.3.lcssa, %.preheader ] ; 2 uses
  %.val.i65 = load i64, ptr %1, align 8, !tbaa !36
  %i.ej = and i32 %.val9.i66, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %.val.i65, %i.ek
  %i.em = lshr i64 %i.el, %i.g
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %.471, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !20
  %i.er = zext i8 %i.eq to i32
  %i.es = load i32, ptr %i.a, align 8, !tbaa !37
  %i.et = add i32 %i.es, %i.er                    ; 3 uses
  store i32 %i.et, ptr %i.a, align 8, !tbaa !37
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !21
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.471, i64 %i.ew ; 3 uses
  %.not = icmp ugt ptr %i.ex, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.val15.i = phi i32 [ %.val9.i6491, %.preheader ], [ %i.et, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.ex, %.lr.ph ] ; 2 uses
  %i.ey = icmp ult ptr %.4.lcssa, %2
  br i1 %i.ey, label %bb.j, label %HUFv06_decodeLastSymbolX4.exit

bb.j:                                             ; preds = %._crit_edge
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !36
  %i.ez = and i32 %.val15.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %.val.i67, %i.fa
  %i.fc = lshr i64 %i.fb, %i.g
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 2
  store i8 %i.fe, ptr %.4.lcssa, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !21
  %i.fh = icmp eq i8 %i.fg, 1
  br i1 %i.fh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !20
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !37
  %i.fm = add i32 %i.fl, %i.fk
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 64
  br i1 %i.fo, label %bb.m, label %HUFv06_decodeLastSymbolX4.exit

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !20
  %i.fr = zext i8 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fn, %i.fr
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.fs, i32 64)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %bb.m ], [ %i.fm, %bb.k ]
  store i32 %spec.store.select.sink.i, ptr %i.a, align 8
  br label %HUFv06_decodeLastSymbolX4.exit

HUFv06_decodeLastSymbolX4.exit:                   ; preds = %.sink.split.i, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv06_decompress1X4(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [4097 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16388) %i.a, i8 0, i64 16388, i1 false)
  store i32 12, ptr %i.a, align 16
  %i.b = call i64 @HUFv06_readDTableX4(ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp ult i64 %i.b, %3
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.e = sub nuw i64 %3, %i.b
  %i.f = call i64 @HUFv06_decompress1X4_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.a ], [ -72, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv06_decompress4X4_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly %4) local_unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.BITv06_DStream_t, align 8   ; 18 uses
  %6 = alloca %struct.BITv06_DStream_t, align 8   ; 18 uses
  %7 = alloca %struct.BITv06_DStream_t, align 8   ; 18 uses
  %8 = alloca %struct.BITv06_DStream_t, align 8   ; 12 uses
  %i.a = icmp ult i64 %3, 10
  br i1 %i.a, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 20 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !15     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %.val165 = load i16, ptr %2, align 1            ; 5 uses
  %i.e = zext i16 %.val165 to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val164 = load i16, ptr %i.f, align 1          ; 5 uses
  %i.g = zext i16 %.val164 to i64                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val = load i16, ptr %i.h, align 1             ; 5 uses
  %i.i = zext i16 %.val to i64                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %i.e     ; 12 uses
  %i.l = getelementptr i8, ptr %i.k, i64 %i.g     ; 12 uses
  %i.m = getelementptr i8, ptr %i.l, i64 %i.i     ; 3 uses
  %i.n = add i64 %1, 3
  %i.o = lshr i64 %i.n, 2                         ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 5 uses
  %i.s = add nuw nsw i64 %i.e, 6
  %i.t = add nuw nsw i64 %i.s, %i.g
  %i.u = add nuw nsw i64 %i.t, %i.i               ; 2 uses
  %i.v = sub i64 %3, %i.u
  %i.w = icmp ugt i64 %i.u, %3
  br i1 %i.w, label %BITv06_initDStream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i16 %.val165, 0
  br i1 %i.x, label %BITv06_initDStream.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp ugt i16 %.val165, 7
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.z, align 8, !tbaa !34
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !35
  %.val.i = load i64, ptr %i.aa, align 1          ; 2 uses
  store i64 %.val.i, ptr %5, align 8, !tbaa !36
  %i.ac = lshr i64 %.val.i, 56                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %BITv06_initDStream.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.ae = trunc nuw nsw i64 %i.ac to i32
  %i.af = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ae, i1 true)
  %i.ag = xor i32 %i.af, 31
  %i.ah = sub nuw nsw i32 8, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !37
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.j, ptr %i.aj, align 8, !tbaa !35
  %i.ak = load i8, ptr %i.j, align 1, !tbaa !26
  %i.al = zext i8 %i.ak to i64                    ; 7 uses
  store i64 %i.al, ptr %5, align 8, !tbaa !36
  switch i16 %.val165, label %bb.m [
    i16 7, label %bb.g
    i16 6, label %bb.h
    i16 5, label %bb.i
    i16 4, label %bb.j
    i16 3, label %bb.k
    i16 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.an = load i8, ptr %i.am, align 1, !tbaa !26
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 48
  %i.aq = or disjoint i64 %i.ap, %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = phi i64 [ %i.aq, %bb.g ], [ %i.al, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.at = load i8, ptr %i.as, align 1, !tbaa !26
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 40
  %i.aw = add nuw nsw i64 %i.av, %i.ar
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ax = phi i64 [ %i.aw, %bb.h ], [ %i.al, %bb.f ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !26
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 32
  %i.bc = add nuw nsw i64 %i.bb, %i.ax
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.bd = phi i64 [ %i.bc, %bb.i ], [ %i.al, %bb.f ]
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !26
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bh, %i.bd
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.bj = phi i64 [ %i.bi, %bb.j ], [ %i.al, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 16
  %i.bo = add nuw nsw i64 %i.bn, %i.bj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.bp = phi i64 [ %i.bo, %bb.k ], [ %i.al, %bb.f ]
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !26
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 8
  %i.bu = add nuw nsw i64 %i.bt, %i.bp
  store i64 %i.bu, ptr %5, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.bv = getelementptr i8, ptr %i.k, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !26  ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %BITv06_initDStream.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = zext i8 %i.bw to i32
  %i.bz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.by, i1 true)
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = shl nuw nsw i16 %.val165, 3
  %i.cc = zext nneg i16 %i.cb to i32
  %reass.sub = sub nsw i32 %i.bz, %i.cc
  %i.cd = add nsw i32 %reass.sub, 41
  store i32 %i.cd, ptr %i.ca, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.ce = icmp eq i16 %.val164, 0
  br i1 %i.ce, label %BITv06_initDStream.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp ugt i16 %.val164, 7
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.cg, align 8, !tbaa !34
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !35
  %.val.i167 = load i64, ptr %i.ch, align 1       ; 2 uses
  store i64 %.val.i167, ptr %6, align 8, !tbaa !36
  %i.cj = lshr i64 %.val.i167, 56                 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %BITv06_initDStream.exit.thread, label %.thread.i168

.thread.i168:                                     ; preds = %bb.q
  %i.cl = trunc nuw nsw i64 %i.cj to i32
  %i.cm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cl, i1 true)
  %i.cn = xor i32 %i.cm, 31
  %i.co = sub nuw nsw i32 8, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !37
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.k, ptr %i.cq, align 8, !tbaa !35
  %i.cr = load i8, ptr %i.k, align 1, !tbaa !26
  %i.cs = zext i8 %i.cr to i64                    ; 7 uses
  store i64 %i.cs, ptr %6, align 8, !tbaa !36
  switch i16 %.val164, label %bb.y [
    i16 7, label %bb.s
    i16 6, label %bb.t
    i16 5, label %bb.u
    i16 4, label %bb.v
    i16 3, label %bb.w
    i16 2, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !26
  %i.cv = zext i8 %i.cu to i64
  %i.cw = shl nuw nsw i64 %i.cv, 48
  %i.cx = or disjoint i64 %i.cw, %i.cs
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cy = phi i64 [ %i.cx, %bb.s ], [ %i.cs, %bb.r ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !26
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 40
  %i.dd = add nuw nsw i64 %i.dc, %i.cy
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.de = phi i64 [ %i.dd, %bb.t ], [ %i.cs, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !26
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 32
  %i.dj = add nuw nsw i64 %i.di, %i.de
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.dk = phi i64 [ %i.dj, %bb.u ], [ %i.cs, %bb.r ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !26
  %i.dn = zext i8 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, 24
  %i.dp = add nuw nsw i64 %i.do, %i.dk
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %i.dq = phi i64 [ %i.dp, %bb.v ], [ %i.cs, %bb.r ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 2
end_hunk_3
begin_hunk_4_@ZSTDv06_decompressFrame:bb.a
  %.157113 = phi i64 [ %gepdiff, %.lr.ph ], [ %i.bl, %bb.r ] ; 2 uses
  %.058112 = phi ptr [ %1, %.lr.ph ], [ %i.bj, %bb.r ] ; 7 uses
  %.161111 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bk, %bb.r ] ; 5 uses
  %i.ag = load i8, ptr %.161111, align 1, !tbaa !26 ; 2 uses
  %i.ah = lshr i8 %i.ag, 6                        ; 2 uses
  switch i8 %i.ah, label %bb.k [
    i8 3, label %.thread91
    i8 2, label %bb.l
  ]

.thread91:                                        ; preds = %bb.j
  %.not72 = icmp eq i64 %.157113, 3
  br i1 %.not72, label %ZSTDv06_copyRawBlock.exit, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = and i8 %i.ag, 7
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 16
  %i.al = getelementptr inbounds nuw i8, ptr %.161111, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.161111, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !26
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  %i.at = or disjoint i64 %i.as, %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0.i.ph = phi i64 [ %i.at, %bb.k ], [ 1, %bb.j ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.161111, i64 3 ; 2 uses
  %i.av = add i64 %.157113, -3                    ; 3 uses
  %i.aw = icmp ugt i64 %.0.i.ph, %i.av
  br i1 %i.aw, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.ah, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %.thread
  ]

bb.n:                                             ; preds = %bb.m
  %i.ax = ptrtoint ptr %.058112 to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = tail call fastcc i64 @ZSTDv06_decompressBlock_internal(ptr noundef %0, ptr noundef %.058112, i64 noundef %i.ay, ptr noundef nonnull %i.au, i64 noundef %.0.i.ph)
  br label %ZSTDv06_copyRawBlock.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = ptrtoint ptr %.058112 to i64
  %i.bb = sub i64 %i.af, %i.ba
  %i.bc = icmp eq ptr %.058112, null
  %i.bd = icmp ugt i64 %.0.i.ph, %i.bb
  %or.cond.i = or i1 %i.bc, %i.bd
  br i1 %or.cond.i, label %ZSTDv06_copyRawBlock.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.058112, ptr nonnull readonly align 1 %i.au, i64 %.0.i.ph, i1 false)
  br label %ZSTDv06_copyRawBlock.exit

ZSTDv06_copyRawBlock.exit:                        ; preds = %bb.p, %.thread91, %bb.n
  %i.be = phi i64 [ %i.av, %bb.n ], [ 0, %.thread91 ], [ %i.av, %bb.p ]
  %.0.i.ph90 = phi i64 [ %.0.i.ph, %bb.n ], [ 0, %.thread91 ], [ %.0.i.ph, %bb.p ] ; 3 uses
  %.0 = phi i64 [ %i.az, %bb.n ], [ 0, %.thread91 ], [ %.0.i.ph, %bb.p ] ; 3 uses
  %i.bf = icmp eq i64 %.0.i.ph90, 0
  br i1 %i.bf, label %.loopexit, label %bb.q

ZSTDv06_copyRawBlock.exit.thread:                 ; preds = %bb.o
  %i.bg = icmp eq i64 %.0.i.ph, 0
  br i1 %i.bg, label %.loopexit, label %.thread

bb.q:                                             ; preds = %ZSTDv06_copyRawBlock.exit
  %i.bh = icmp ult i64 %.0, -119
  br i1 %i.bh, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.161111, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.058112, i64 %.0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.i.ph90 ; 2 uses
  %i.bl = sub i64 %i.be, %.0.i.ph90
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.ac, %i.bm
  %i.bo = icmp ult i64 %i.bn, 3
  br i1 %i.bo, label %.thread, label %bb.j

.loopexit:                                        ; preds = %ZSTDv06_copyRawBlock.exit, %ZSTDv06_copyRawBlock.exit.thread
  %i.bp = ptrtoint ptr %.058112 to i64
  %i.bq = ptrtoint ptr %1 to i64
  %i.br = sub i64 %i.bp, %i.bq
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.l, %.thread91, %bb.q, %bb.r, %ZSTDv06_copyRawBlock.exit.thread, %bb.i, %ZSTDv06_frameHeaderSize.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.a, %.loopexit
  %.3 = phi i64 [ -72, %bb.a ], [ -20, %ZSTDv06_frameHeaderSize.exit.i.i ], [ %i.br, %.loopexit ], [ %i.j, %bb.b ], [ -72, %bb.c ], [ -20, %bb.d ], [ -72, %bb.i ], [ -70, %ZSTDv06_copyRawBlock.exit.thread ], [ -1, %bb.m ], [ -72, %bb.l ], [ %.0, %bb.q ], [ -72, %.thread91 ], [ -72, %bb.r ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompress_usingDict(ptr noundef initializes((5132, 5136), (21520, 21560), (21588, 21596)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @ZSTDv06_decompressBegin_usingDict(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.c
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.c, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %.neg.i = sub i64 %i.h, %i.g
  %i.i = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.i, ptr %i.j, align 8, !tbaa !54
  store ptr %1, ptr %i.e, align 8, !tbaa !53
  store ptr %1, ptr %i.b, align 8, !tbaa !51
  br label %ZSTDv06_checkContinuity.exit

ZSTDv06_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.k = tail call fastcc i64 @ZSTDv06_decompressFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -30, 1) i64 @ZSTDv06_decompressBegin_usingDict(ptr nofree noundef captures(none) initializes((5132, 5136), (21520, 21560), (21588, 21596)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [29 x i16], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [53 x i16], align 16              ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [36 x i16], align 16              ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21588
  store i32 0, ptr %i.l, align 4, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5132 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i32 12, ptr %i.n, align 4, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 21592 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !47
  %i.p = icmp ne ptr %1, null
  %i.q = icmp ne i64 %2, 0
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %bb.b, label %ZSTDv06_decompress_insertDictionary.exit.thread

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %1, align 1
  %.not.i = icmp eq i32 %.val.i, -332356554
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %1, ptr %i.s, align 8, !tbaa !54
  store ptr %1, ptr %i.r, align 8, !tbaa !53
  br label %ZSTDv06_decompress_insertDictionary.exit

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.u = add i64 %2, -4                           ; 2 uses
  %i.v = tail call i64 @HUFv06_readDTableX4(ptr noundef nonnull %i.n, ptr noundef nonnull %i.t, i64 noundef range(i64 -3, -4) %i.u) ; 4 uses
  %i.w = icmp ult i64 %i.v, -119
  br i1 %i.w, label %bb.e, label %ZSTDv06_decompress_insertDictionary.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 2 uses
  %i.y = sub i64 %i.u, %i.v                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 28, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.z = call i64 @FSEv06_readNCount(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.x, i64 noundef %i.y) ; 4 uses
  %i.aa = icmp ult i64 %i.z, -119
  br i1 %i.aa, label %bb.f, label %.critedge.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.d, align 4, !tbaa !15  ; 5 uses
  %i.ac = icmp ugt i32 %i.ab, 8
  br i1 %i.ac, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2052
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !15  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ag = shl nuw nsw i32 1, %i.ab                ; 5 uses
  %i.ah = add nsw i32 %i.ag, -1                   ; 5 uses
  %i.ai = icmp ugt i32 %i.ae, 255
  br i1 %i.ai, label %FSEv06_buildDTable.exit.thread.i.i, label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %bb.g
  %3 = add nuw nsw i32 %i.ae, 1                   ; 2 uses
  %sext.i.i.i = shl nuw nsw i32 32768, %i.ab
  %i.aj = lshr exact i32 %sext.i.i.i, 16          ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %3 to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ak = icmp eq i32 %i.ae, 0
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.i.i.i.new.a

.lr.ph.i.i.i.new.a:                               ; preds = %.lr.ph.i.i.i.a
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 510
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %.lr.ph.i.i.i.new.a
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new.a ], [ %indvars.iv.next.i.i.i.1, %bb.n ] ; 5 uses
  %.sroa.4.079.i.i.i = phi i16 [ 1, %.lr.ph.i.i.i.new.a ], [ %.sroa.4.2.i.i.i.1, %bb.n ] ; 2 uses
  %.07178.i.i.i = phi i32 [ %i.ah, %.lr.ph.i.i.i.new.a ], [ %.172.i.i.i.1, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new.a ], [ %niter.next.1, %bb.n ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.am = load i16, ptr %i.al, align 4, !tbaa !18 ; 3 uses
  %i.an = icmp eq i16 %i.am, -1
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = trunc i64 %indvars.iv.i.i.i to i8
  %i.ap = add i32 %.07178.i.i.i, -1
  %i.aq = zext i32 %.07178.i.i.i to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.ao, ptr %i.as, align 2, !tbaa !20
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.at = sext i16 %i.am to i32
  %.not76.i.i.i = icmp sgt i32 %i.aj, %i.at
  %spec.select.i.i.i = select i1 %.not76.i.i.i, i16 %.sroa.4.079.i.i.i, i16 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i.i.i = phi i16 [ 1, %bb.i ], [ %i.am, %bb.j ]
  %.172.i.i.i = phi i32 [ %i.ap, %bb.i ], [ %.07178.i.i.i, %bb.j ] ; 3 uses
  %.sroa.4.2.i.i.i = phi i16 [ %.sroa.4.079.i.i.i, %bb.i ], [ %spec.select.i.i.i, %bb.j ] ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.i
  store i16 %.sink.i.i.i, ptr %i.au, align 4, !tbaa !18
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !18 ; 3 uses
  %i.ax = icmp eq i16 %i.aw, -1
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = sext i16 %i.aw to i32
  %.not76.i.i.i.1 = icmp sgt i32 %i.aj, %i.ay
  %spec.select.i.i.i.1 = select i1 %.not76.i.i.i.1, i16 %.sroa.4.2.i.i.i, i16 0
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.az = trunc i64 %indvars.iv.next.i.i.i to i8
  %i.ba = add i32 %.172.i.i.i, -1
  %i.bb = zext i32 %.172.i.i.i to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i8 %i.az, ptr %i.bd, align 2, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink.i.i.i.1 = phi i16 [ 1, %bb.m ], [ %i.aw, %bb.l ]
  %.172.i.i.i.1 = phi i32 [ %i.ba, %bb.m ], [ %.172.i.i.i, %bb.l ] ; 3 uses
  %.sroa.4.2.i.i.i.1 = phi i16 [ %.sroa.4.2.i.i.i, %bb.m ], [ %spec.select.i.i.i.1, %bb.l ] ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i
  store i16 %.sink.i.i.i.1, ptr %i.be, align 2, !tbaa !18
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader77.lr.ph.i.i.i.unr-lcssa, label %bb.h, !llvm.loop !0

.preheader77.lr.ph.i.i.i.unr-lcssa:               ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader77.lr.ph.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader77.lr.ph.i.i.i.unr-lcssa, %.lr.ph.i.i.i.a
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.a ], [ %indvars.iv.next.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i.i.i.epil.init = phi i16 [ 1, %.lr.ph.i.i.i.a ], [ %.sroa.4.2.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ] ; 2 uses
  %.07178.i.i.i.epil.init = phi i32 [ %i.ah, %.lr.ph.i.i.i.a ], [ %.172.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod33 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.epil.init
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !18 ; 3 uses
  %i.bh = icmp eq i16 %i.bg, -1
  br i1 %i.bh, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.epil.preheader
  %i.bi = sext i16 %i.bg to i32
  %.not76.i.i.i.epil = icmp sgt i32 %i.aj, %i.bi
  %spec.select.i.i.i.epil = select i1 %.not76.i.i.i.epil, i16 %.sroa.4.079.i.i.i.epil.init, i16 0
  br label %.preheader77.lr.ph.i.i.i.epilog-lcssa

bb.p:                                             ; preds = %.epil.preheader
  %i.bj = trunc i64 %indvars.iv.i.i.i.epil.init to i8
  %i.bk = add i32 %.07178.i.i.i.epil.init, -1
  %i.bl = zext i32 %.07178.i.i.i.epil.init to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i8 %i.bj, ptr %i.bn, align 2, !tbaa !20
  br label %.preheader77.lr.ph.i.i.i.epilog-lcssa

.preheader77.lr.ph.i.i.i.epilog-lcssa:            ; preds = %bb.p, %bb.o
  %.sink.i.i.i.epil = phi i16 [ 1, %bb.p ], [ %i.bg, %bb.o ]
  %.172.i.i.i.epil = phi i32 [ %i.bk, %bb.p ], [ %.07178.i.i.i.epil.init, %bb.o ]
  %.sroa.4.2.i.i.i.epil = phi i16 [ %.sroa.4.079.i.i.i.epil.init, %bb.p ], [ %spec.select.i.i.i.epil, %bb.o ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.i.epil.init
  store i16 %.sink.i.i.i.epil, ptr %i.bo, align 2, !tbaa !18
  br label %.preheader77.lr.ph.i.i.i

.preheader77.lr.ph.i.i.i:                         ; preds = %.preheader77.lr.ph.i.i.i.unr-lcssa, %.preheader77.lr.ph.i.i.i.epilog-lcssa
  %.172.i.i.i.lcssa = phi i32 [ %.172.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ], [ %.172.i.i.i.epil, %.preheader77.lr.ph.i.i.i.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i.i.i.lcssa = phi i16 [ %.sroa.4.2.i.i.i.1, %.preheader77.lr.ph.i.i.i.unr-lcssa ], [ %.sroa.4.2.i.i.i.epil, %.preheader77.lr.ph.i.i.i.epilog-lcssa ]
  %i.bp = trunc nuw nsw i32 %i.ab to i16
  store i16 %i.bp, ptr %i.ad, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2054
  store i16 %.sroa.4.2.i.i.i.lcssa, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2
  %i.bq = lshr i32 %i.ag, 3
  %i.br = lshr i32 %i.ag, 1
  %i.bs = add nuw nsw i32 %i.bq, 3
  %i.bt = add nuw nsw i32 %i.bs, %i.br            ; 3 uses
  br label %.preheader77.i.i.i

.preheader77.i.i.i:                               ; preds = %._crit_edge85.i.i.i, %.preheader77.lr.ph.i.i.i
  %indvars.iv93.i.i.i = phi i64 [ 0, %.preheader77.lr.ph.i.i.i ], [ %indvars.iv.next94.i.i.i, %._crit_edge85.i.i.i ] ; 3 uses
  %.06688.i.i.i = phi i32 [ 0, %.preheader77.lr.ph.i.i.i ], [ %.167.lcssa.i.i.i, %._crit_edge85.i.i.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv93.i.i.i
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !18 ; 5 uses
  %i.bw = icmp sgt i16 %i.bv, 0
  br i1 %i.bw, label %.lr.ph84.i.i.i, label %._crit_edge85.i.i.i

.lr.ph84.i.i.i:                                   ; preds = %.preheader77.i.i.i
  %i.bx = trunc i64 %indvars.iv93.i.i.i to i8     ; 3 uses
  %i.by = icmp eq i16 %i.bv, 1
  br i1 %i.by, label %.epil.preheader34, label %.lr.ph84.i.i.i.new

.lr.ph84.i.i.i.new:                               ; preds = %.lr.ph84.i.i.i
  %i.bz = and i16 %i.bv, 32766
  %unroll_iter39 = zext nneg i16 %i.bz to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph84.i.i.i.new
  %.16782.i.i.i = phi i32 [ %.06688.i.i.i, %.lr.ph84.i.i.i.new ], [ %.2.i.i.i.1, %bb.u ] ; 2 uses
  %niter40 = phi i32 [ 0, %.lr.ph84.i.i.i.new ], [ %niter40.next.1, %bb.u ]
  %i.ca = zext nneg i32 %.16782.i.i.i to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store i8 %i.bx, ptr %i.cc, align 2, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.167.pn.i.i.i = phi i32 [ %.16782.i.i.i, %bb.q ], [ %.2.i.i.i, %bb.r ]
  %.pn.i.i.i = add nuw nsw i32 %i.bt, %.167.pn.i.i.i
  %.2.i.i.i = and i32 %.pn.i.i.i, %i.ah           ; 4 uses
  %i.cd = icmp ugt i32 %.2.i.i.i, %.172.i.i.i.lcssa
  br i1 %i.cd, label %bb.r, label %bb.s, !llvm.loop !1

bb.s:                                             ; preds = %bb.r
  %i.ce = zext nneg i32 %.2.i.i.i to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i8 %i.bx, ptr %i.cg, align 2, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.167.pn.i.i.i.1 = phi i32 [ %.2.i.i.i, %bb.s ], [ %.2.i.i.i.1, %bb.t ]
  %.pn.i.i.i.1 = add nuw nsw i32 %i.bt, %.167.pn.i.i.i.1
  %.2.i.i.i.1 = and i32 %.pn.i.i.i.1, %i.ah       ; 5 uses
  %i.ch = icmp ugt i32 %.2.i.i.i.1, %.172.i.i.i.lcssa
  br i1 %i.ch, label %bb.t, label %bb.u, !llvm.loop !1

bb.u:                                             ; preds = %bb.t
  %niter40.next.1 = add i32 %niter40, 2           ; 2 uses
  %niter40.ncmp.1 = icmp eq i32 %niter40.next.1, %unroll_iter39
  br i1 %niter40.ncmp.1, label %._crit_edge85.i.i.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !2

._crit_edge85.i.i.i.loopexit.unr-lcssa:           ; preds = %bb.u
  %i.ci = and i16 %i.bv, 1
  %lcmp.mod36.not = icmp eq i16 %i.ci, 0
  br i1 %lcmp.mod36.not, label %._crit_edge85.i.i.i, label %.epil.preheader34

.epil.preheader34:                                ; preds = %._crit_edge85.i.i.i.loopexit.unr-lcssa, %.lr.ph84.i.i.i
  %.16782.i.i.i.epil.init = phi i32 [ %.06688.i.i.i, %.lr.ph84.i.i.i ], [ %.2.i.i.i.1, %._crit_edge85.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i16 %i.bv to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.cj = zext nneg i32 %.16782.i.i.i.epil.init to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 %i.bx, ptr %i.cl, align 2, !tbaa !20
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader34
  %.167.pn.i.i.i.epil = phi i32 [ %.16782.i.i.i.epil.init, %.epil.preheader34 ], [ %.2.i.i.i.epil, %bb.v ]
  %.pn.i.i.i.epil = add nuw nsw i32 %i.bt, %.167.pn.i.i.i.epil
  %.2.i.i.i.epil = and i32 %.pn.i.i.i.epil, %i.ah ; 3 uses
  %i.cm = icmp ugt i32 %.2.i.i.i.epil, %.172.i.i.i.lcssa
  br i1 %i.cm, label %bb.v, label %._crit_edge85.i.i.i, !llvm.loop !1

._crit_edge85.i.i.i:                              ; preds = %._crit_edge85.i.i.i.loopexit.unr-lcssa, %bb.v, %.preheader77.i.i.i
  %.167.lcssa.i.i.i = phi i32 [ %.06688.i.i.i, %.preheader77.i.i.i ], [ %.2.i.i.i.1, %._crit_edge85.i.i.i.loopexit.unr-lcssa ], [ %.2.i.i.i.epil, %bb.v ] ; 2 uses
  %indvars.iv.next94.i.i.i = add nuw nsw i64 %indvars.iv93.i.i.i, 1 ; 2 uses
  %exitcond97.not.i.i.i = icmp eq i64 %indvars.iv.next94.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond97.not.i.i.i, label %._crit_edge89.i.i.i, label %.preheader77.i.i.i, !llvm.loop !3

._crit_edge89.i.i.i:                              ; preds = %._crit_edge85.i.i.i
  %.not.i.i.i = icmp eq i32 %.167.lcssa.i.i.i, 0
  br i1 %.not.i.i.i, label %.preheader.preheader.i.i.i, label %FSEv06_buildDTable.exit.thread.i.i

.preheader.preheader.i.i.i:                       ; preds = %._crit_edge89.i.i.i
  %wide.trip.count101.i.i.i = zext nneg i32 %i.ag to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %indvars.iv98.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %indvars.iv.next99.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv98.i.i.i ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !20
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cq ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !18 ; 2 uses
  %i.ct = add i16 %i.cs, 1
  store i16 %i.ct, ptr %i.cr, align 2, !tbaa !18
  %i.cu = zext i16 %i.cs to i32                   ; 2 uses
  %i.cv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cu, i1 true)
  %i.cw = xor i32 %i.cv, 31
  %i.cx = sub nsw i32 %i.ab, %i.cw                ; 2 uses
  %i.cy = trunc nsw i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 3
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !21
  %i.da = and i32 %i.cx, 255
  %i.db = shl i32 %i.cu, %i.da
  %i.dc = sub i32 %i.db, %i.ag
  %i.dd = trunc i32 %i.dc to i16
  store i16 %i.dd, ptr %i.cn, align 2, !tbaa !22
  %indvars.iv.next99.i.i.i = add nuw nsw i64 %indvars.iv98.i.i.i, 1 ; 2 uses
  %exitcond102.not.i.i.i = icmp eq i64 %indvars.iv.next99.i.i.i, %wide.trip.count101.i.i.i
  br i1 %exitcond102.not.i.i.i, label %bb.w, label %.preheader.i.i.i, !llvm.loop !4

FSEv06_buildDTable.exit.thread.i.i:               ; preds = %._crit_edge89.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.critedge.i.i

bb.w:                                             ; preds = %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.de = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 2 uses
  %i.df = sub i64 %i.y, %i.z                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 52, ptr %i.f, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.dg = call i64 @FSEv06_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.de, i64 noundef %i.df) ; 4 uses
  %i.dh = icmp ult i64 %i.dg, -119
  br i1 %i.dh, label %bb.x, label %.critedge67.i.i

bb.x:                                             ; preds = %bb.w
  %i.di = load i32, ptr %i.g, align 4, !tbaa !15  ; 2 uses
  %i.dj = icmp ugt i32 %i.di, 9
  br i1 %i.dj, label %.critedge67.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.dl = load i32, ptr %i.f, align 4, !tbaa !15
  %i.dm = call i64 @FSEv06_buildDTable(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.e, i32 noundef %i.dl, i32 noundef %i.di)
  %i.dn = icmp ult i64 %i.dm, -119
  br i1 %i.dn, label %bb.z, label %.critedge67.i.i

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dg
  %i.dp = sub i64 %i.df, %i.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  store i32 35, ptr %i.i, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.dq = call i64 @FSEv06_readNCount(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.do, i64 noundef %i.dp) ; 2 uses
  %i.dr = icmp ult i64 %i.dq, -119
  br i1 %i.dr, label %bb.aa, label %.critedge69.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ds = load i32, ptr %i.j, align 4, !tbaa !15  ; 2 uses
  %i.dt = icmp ugt i32 %i.ds, 9
  br i1 %i.dt, label %.critedge69.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = load i32, ptr %i.i, align 4, !tbaa !15
  %i.dv = call i64 @FSEv06_buildDTable(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %i.du, i32 noundef %i.ds)
  %i.dw = icmp ult i64 %i.dv, -119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br i1 %i.dw, label %ZSTDv06_loadEntropy.exit.i, label %ZSTDv06_decompress_insertDictionary.exit.thread

.critedge.i.i:                                    ; preds = %FSEv06_buildDTable.exit.thread.i.i, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %ZSTDv06_decompress_insertDictionary.exit.thread

.critedge67.i.i:                                  ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %ZSTDv06_decompress_insertDictionary.exit.thread

.critedge69.i.i:                                  ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %ZSTDv06_decompress_insertDictionary.exit.thread

ZSTDv06_loadEntropy.exit.i:                       ; preds = %bb.ab
  store i32 1, ptr %i.o, align 8, !tbaa !47
  %i.dx = add i64 %i.z, %i.v
  %i.dy = add i64 %i.dx, %i.dg
  %i.dz = add i64 %i.dy, %i.dq                    ; 2 uses
  %i.ea = icmp ult i64 %i.dz, -119
end_hunk_4
begin_hunk_5_@ZBUFFv06_decompressContinue:bb.a

bb.aa:                                            ; preds = %bb.w
  %i.cu = icmp eq ptr %.0193310, %i.b
  br i1 %i.cu, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 3, ptr %i.e, align 8, !tbaa !58
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge320, %bb.ab
  %i.cv = phi i64 [ %.pre322, %._crit_edge320 ], [ %i.cg, %bb.ab ] ; 2 uses
  %i.cw = load i64, ptr %i.t, align 8, !tbaa !61  ; 4 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  %i.cy = load i64, ptr %i.m, align 8, !tbaa !138
  %i.cz = sub i64 %i.cy, %i.cw
  %i.da = icmp ugt i64 %i.cx, %i.cz
  br i1 %i.da, label %.thread251, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = ptrtoint ptr %.0193310 to i64
  %i.dc = sub i64 %i.q, %i.db                     ; 2 uses
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.dc) ; 4 uses
  %.not.i238 = icmp eq i64 %i.dd, 0
  br i1 %.not.i238, label %ZBUFFv06_limitCopy.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr readonly align 1 %.0193310, i64 %i.dd, i1 false)
  %.pre323 = load i64, ptr %i.t, align 8, !tbaa !61
  br label %ZBUFFv06_limitCopy.exit

ZBUFFv06_limitCopy.exit:                          ; preds = %bb.ad, %bb.ae
  %i.dg = phi i64 [ %i.cw, %bb.ad ], [ %.pre323, %bb.ae ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0193310, i64 %i.dd ; 3 uses
  %i.di = add i64 %i.dg, %i.dd
  store i64 %i.di, ptr %i.t, align 8, !tbaa !61
  %i.dj = icmp ult i64 %i.dc, %i.cx
  br i1 %i.dj, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %ZBUFFv06_limitCopy.exit
  %i.dk = load ptr, ptr %0, align 8, !tbaa !57
  %i.dl = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.dm = load i64, ptr %i.r, align 8, !tbaa !135 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  %i.do = load i64, ptr %i.o, align 8, !tbaa !139
  %i.dp = sub i64 %i.do, %i.dm
  %i.dq = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.dr = tail call i64 @ZSTDv06_decompressContinue(ptr noundef %i.dk, ptr noundef %i.dn, i64 noundef %i.dp, ptr noundef %i.dq, i64 noundef %i.cv) ; 4 uses
  %i.ds = icmp ult i64 %i.dr, -119
  br i1 %i.ds, label %bb.ag, label %.thread251

bb.ag:                                            ; preds = %bb.af
  store i64 0, ptr %i.t, align 8, !tbaa !61
  %.not235 = icmp eq i64 %i.dr, 0
  br i1 %.not235, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 2, ptr %i.e, align 8, !tbaa !58
  br label %.thread273.backedge

.thread273.backedge:                              ; preds = %bb.ah, %bb.z, %bb.y, %bb.m
  %.0193310.be = phi ptr [ %i.cr, %bb.y ], [ %i.az, %bb.m ], [ %i.cr, %bb.z ], [ %i.dh, %bb.ah ]
  br label %.thread273, !llvm.loop !133

bb.ai:                                            ; preds = %bb.ag
  %i.dt = load i64, ptr %i.r, align 8, !tbaa !135 ; 2 uses
  %i.du = add i64 %i.dt, %i.dr                    ; 2 uses
  store i64 %i.du, ptr %i.s, align 8, !tbaa !134
  store i32 4, ptr %i.e, align 8, !tbaa !58
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge324, %bb.ai
  %i.dv = phi i64 [ %i.dt, %bb.ai ], [ %.pre326, %._crit_edge324 ] ; 3 uses
  %i.dw = phi i64 [ %i.du, %bb.ai ], [ %.pre325, %._crit_edge324 ]
  %.8201 = phi ptr [ %i.dh, %bb.ai ], [ %.0193310, %._crit_edge324 ] ; 2 uses
  %i.dx = sub i64 %i.dw, %i.dv                    ; 2 uses
  %i.dy = ptrtoint ptr %.0191312.ph to i64
  %i.dz = sub i64 %i.u, %i.dy                     ; 2 uses
  %i.ea = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.dx) ; 4 uses
  %.not.i239 = icmp eq i64 %i.ea, 0
  br i1 %.not.i239, label %ZBUFFv06_limitCopy.exit240, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eb = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0191312.ph, ptr readonly align 1 %i.ec, i64 %i.ea, i1 false)
  %.pre327 = load i64, ptr %i.r, align 8, !tbaa !135
  br label %ZBUFFv06_limitCopy.exit240

ZBUFFv06_limitCopy.exit240:                       ; preds = %bb.aj, %bb.ak
  %i.ed = phi i64 [ %i.dv, %bb.aj ], [ %.pre327, %bb.ak ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0191312.ph, i64 %i.ea ; 2 uses
  %i.ef = add i64 %i.ed, %i.ea                    ; 2 uses
  store i64 %i.ef, ptr %i.r, align 8, !tbaa !135
  %.not295 = icmp ugt i64 %i.dx, %i.dz
  br i1 %.not295, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %ZBUFFv06_limitCopy.exit240
  store i32 2, ptr %i.e, align 8, !tbaa !58
  %i.eg = load i64, ptr %i.l, align 8, !tbaa !137
  %i.eh = add i64 %i.eg, %i.ef
  %i.ei = load i64, ptr %i.o, align 8, !tbaa !139
  %i.ej = icmp ugt i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.am, label %.thread273.outer.backedge

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %.thread273.outer.backedge

.thread273.outer.backedge:                        ; preds = %bb.am, %bb.al
  br label %.thread273.outer, !llvm.loop !133

.loopexit:                                        ; preds = %bb.aa, %ZBUFFv06_limitCopy.exit, %ZBUFFv06_limitCopy.exit240, %bb.v
  %.9202.ph = phi ptr [ %.0193310, %bb.v ], [ %i.b, %bb.aa ], [ %i.dh, %ZBUFFv06_limitCopy.exit ], [ %.8201, %ZBUFFv06_limitCopy.exit240 ]
  %.1192.ph = phi ptr [ %.0191312.ph, %bb.v ], [ %.0191312.ph, %ZBUFFv06_limitCopy.exit ], [ %.0191312.ph, %bb.aa ], [ %i.ee, %ZBUFFv06_limitCopy.exit240 ]
  %i.ek = ptrtoint ptr %.9202.ph to i64
  %i.el = ptrtoint ptr %3 to i64
  %i.em = sub i64 %i.ek, %i.el
  store i64 %i.em, ptr %4, align 8, !tbaa !48
  %i.en = ptrtoint ptr %.1192.ph to i64
  %i.eo = ptrtoint ptr %1 to i64
  %i.ep = sub i64 %i.en, %i.eo
  store i64 %i.ep, ptr %2, align 8, !tbaa !48
  %i.eq = load ptr, ptr %0, align 8, !tbaa !57
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 21552
  %i.es = load i64, ptr %i.er, align 8, !tbaa !45 ; 3 uses
  %i.et = icmp ugt i64 %i.es, 3
  %i.eu = add i64 %i.es, 3
  %spec.select236 = select i1 %i.et, i64 %i.eu, i64 %i.es
  %i.ev = load i64, ptr %i.t, align 8, !tbaa !61
  %i.ew = sub i64 %spec.select236, %i.ev
  br label %.thread251

.thread251.loopexit:                              ; preds = %.thread273
  br label %.thread251

.thread251:                                       ; preds = %bb.af, %bb.ac, %bb.x, %bb.s, %bb.q, %bb.n, %bb.c, %bb.d, %bb.i, %bb.p, %.thread273, %.thread251.loopexit, %bb.l, %.loopexit
  %.16 = phi i64 [ -1, %.thread273 ], [ %i.ew, %.loopexit ], [ %i.ax, %bb.l ], [ -20, %bb.ac ], [ %i.dr, %bb.af ], [ -64, %bb.q ], [ -10, %bb.c ], [ %i.ad, %bb.i ], [ %i.bl, %bb.p ], [ %i.bd, %bb.n ], [ %i.cp, %bb.x ], [ -64, %bb.s ], [ -14, %bb.d ], [ -62, %.thread251.loopexit ]
  ret i64 %.16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZBUFFv06_recommendedDInSize() local_unnamed_addr #0 {
bb.a:
  ret i64 131075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @ZBUFFv06_recommendedDOutSize() local_unnamed_addr #0 {
bb.a:
  ret i64 131072
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #23

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -72, -119) i64 @ZSTDv06_buildSeqTable(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4) %1, i32 noundef range(i32 28, 53) %2, i32 noundef range(i32 8, 10) %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 5, 7) %7, i32 noundef %8) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  %i.b = alloca [256 x i16], align 16             ; 6 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [53 x i16], align 16              ; 7 uses
  store i32 %2, ptr %i.c, align 4, !tbaa !15
  switch i32 %1, label %default.unreachable [
    i32 1, label %bb.b
    i32 0, label %.new.a
    i32 2, label %bb.t
    i32 3, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %.not16 = icmp eq i64 %5, 0
  br i1 %.not16, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %4, align 1, !tbaa !26      ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = icmp samesign ult i32 %2, %i.g
  br i1 %i.h, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 2, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.j, align 2, !tbaa !25
  store i16 0, ptr %i.i, align 2, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.f, ptr %i.k, align 2, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.l, align 1, !tbaa !21
  br label %bb.an

.new.a:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %9 = add nuw nsw i32 %2, 1                      ; 2 uses
  %i.n = shl nuw nsw i32 1, %7                    ; 5 uses
  %i.o = add nsw i32 %i.n, -1                     ; 4 uses
  %sext.i = shl nuw nsw i32 32768, %7
  %i.p = lshr exact i32 %sext.i, 16               ; 3 uses
  %wide.trip.count.i = zext nneg i32 %9 to i64    ; 3 uses
  %xtraiter75 = and i64 %wide.trip.count.i, 1
  %unroll_iter80 = and i64 %wide.trip.count.i, 126
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.new.a
  %indvars.iv.i = phi i64 [ 0, %.new.a ], [ %indvars.iv.next.i.1, %bb.k ] ; 5 uses
  %.sroa.4.079.i = phi i16 [ 1, %.new.a ], [ %.sroa.4.2.i.1, %bb.k ] ; 2 uses
  %.07178.i = phi i32 [ %i.o, %.new.a ], [ %.172.i.1, %bb.k ] ; 3 uses
  %niter81 = phi i64 [ 0, %.new.a ], [ %niter81.next.1, %bb.k ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !18   ; 3 uses
  %i.s = icmp eq i16 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = trunc i64 %indvars.iv.i to i8
  %i.u = add i32 %.07178.i, -1
  %i.v = zext i32 %.07178.i to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.t, ptr %i.x, align 2, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = sext i16 %i.r to i32
  %.not76.i = icmp sgt i32 %i.p, %i.y
  %spec.select.i = select i1 %.not76.i, i16 %.sroa.4.079.i, i16 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i16 [ 1, %bb.f ], [ %i.r, %bb.g ]
  %.172.i = phi i32 [ %i.u, %bb.f ], [ %.07178.i, %bb.g ] ; 3 uses
  %.sroa.4.2.i = phi i16 [ %.sroa.4.079.i, %bb.f ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %i.z, align 4, !tbaa !18
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !18 ; 3 uses
  %i.ac = icmp eq i16 %i.ab, -1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = sext i16 %i.ab to i32
  %.not76.i.1 = icmp sgt i32 %i.p, %i.ad
  %spec.select.i.1 = select i1 %.not76.i.1, i16 %.sroa.4.2.i, i16 0
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = trunc i64 %indvars.iv.next.i to i8
  %i.af = add i32 %.172.i, -1
  %i.ag = zext i32 %.172.i to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %i.ae, ptr %i.ai, align 2, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i.1 = phi i16 [ 1, %bb.j ], [ %i.ab, %bb.i ]
  %.172.i.1 = phi i32 [ %i.af, %bb.j ], [ %.172.i, %bb.i ] ; 5 uses
  %.sroa.4.2.i.1 = phi i16 [ %.sroa.4.2.i, %bb.j ], [ %spec.select.i.1, %bb.i ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i
  store i16 %.sink.i.1, ptr %i.aj, align 2, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 4 uses
  %niter81.next.1 = add nuw nsw i64 %niter81, 2   ; 2 uses
  %niter81.ncmp.1 = icmp eq i64 %niter81.next.1, %unroll_iter80
  br i1 %niter81.ncmp.1, label %.preheader77.lr.ph.i.unr-lcssa, label %bb.e, !llvm.loop !0

.preheader77.lr.ph.i.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.preheader77.lr.ph.i, label %.epil.preheader74

.epil.preheader74:                                ; preds = %.preheader77.lr.ph.i.unr-lcssa
  %lcmp.mod79 = trunc i32 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv.next.i.1
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !18 ; 3 uses
  %i.am = icmp eq i16 %i.al, -1
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.epil.preheader74
  %i.an = sext i16 %i.al to i32
  %.not76.i.epil = icmp sgt i32 %i.p, %i.an
  %spec.select.i.epil = select i1 %.not76.i.epil, i16 %.sroa.4.2.i.1, i16 0
  br label %.preheader77.lr.ph.i.epilog-lcssa

bb.m:                                             ; preds = %.epil.preheader74
  %i.ao = trunc i64 %indvars.iv.next.i.1 to i8
  %i.ap = add i32 %.172.i.1, -1
  %i.aq = zext i32 %.172.i.1 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.ao, ptr %i.as, align 2, !tbaa !20
  br label %.preheader77.lr.ph.i.epilog-lcssa

.preheader77.lr.ph.i.epilog-lcssa:                ; preds = %bb.m, %bb.l
  %.sink.i.epil = phi i16 [ 1, %bb.m ], [ %i.al, %bb.l ]
  %.172.i.epil = phi i32 [ %i.ap, %bb.m ], [ %.172.i.1, %bb.l ]
  %.sroa.4.2.i.epil = phi i16 [ %.sroa.4.2.i.1, %bb.m ], [ %spec.select.i.epil, %bb.l ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  store i16 %.sink.i.epil, ptr %i.at, align 2, !tbaa !18
  br label %.preheader77.lr.ph.i

.preheader77.lr.ph.i:                             ; preds = %.preheader77.lr.ph.i.unr-lcssa, %.preheader77.lr.ph.i.epilog-lcssa
  %.172.i.lcssa = phi i32 [ %.172.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.172.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i.lcssa = phi i16 [ %.sroa.4.2.i.1, %.preheader77.lr.ph.i.unr-lcssa ], [ %.sroa.4.2.i.epil, %.preheader77.lr.ph.i.epilog-lcssa ]
  %i.au = trunc nuw nsw i32 %7 to i16
  store i16 %i.au, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.i.lcssa, ptr %.sroa.4.0..sroa_idx.i, align 2
  %i.av = lshr exact i32 %i.n, 3
  %i.aw = lshr exact i32 %i.n, 1
  %i.ax = add nuw nsw i32 %i.av, 3
  %i.ay = add nuw nsw i32 %i.ax, %i.aw            ; 3 uses
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %._crit_edge85.i, %.preheader77.lr.ph.i
  %indvars.iv93.i = phi i64 [ 0, %.preheader77.lr.ph.i ], [ %indvars.iv.next94.i, %._crit_edge85.i ] ; 3 uses
  %.06688.i = phi i32 [ 0, %.preheader77.lr.ph.i ], [ %.167.lcssa.i, %._crit_edge85.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv93.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !18 ; 5 uses
  %i.bb = icmp sgt i16 %i.ba, 0
  br i1 %i.bb, label %.lr.ph84.i, label %._crit_edge85.i

.lr.ph84.i:                                       ; preds = %.preheader77.i
  %i.bc = trunc i64 %indvars.iv93.i to i8         ; 3 uses
  %i.bd = icmp eq i16 %i.ba, 1
  br i1 %i.bd, label %.epil.preheader82, label %.lr.ph84.i.new

.lr.ph84.i.new:                                   ; preds = %.lr.ph84.i
  %i.be = and i16 %i.ba, 32766
  %unroll_iter87 = zext nneg i16 %i.be to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph84.i.new
  %.16782.i = phi i32 [ %.06688.i, %.lr.ph84.i.new ], [ %.2.i.1, %bb.r ] ; 2 uses
  %niter88 = phi i32 [ 0, %.lr.ph84.i.new ], [ %niter88.next.1, %bb.r ]
  %i.bf = zext nneg i32 %.16782.i to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.bc, ptr %i.bh, align 2, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.167.pn.i = phi i32 [ %.16782.i, %bb.n ], [ %.2.i, %bb.o ]
  %.pn.i = add nuw nsw i32 %i.ay, %.167.pn.i
  %.2.i = and i32 %.pn.i, %i.o                    ; 4 uses
  %i.bi = icmp ugt i32 %.2.i, %.172.i.lcssa
  br i1 %i.bi, label %bb.o, label %bb.p, !llvm.loop !1

bb.p:                                             ; preds = %bb.o
  %i.bj = zext nneg i32 %.2.i to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %i.bc, ptr %i.bl, align 2, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.167.pn.i.1 = phi i32 [ %.2.i, %bb.p ], [ %.2.i.1, %bb.q ]
  %.pn.i.1 = add nuw nsw i32 %i.ay, %.167.pn.i.1
  %.2.i.1 = and i32 %.pn.i.1, %i.o                ; 5 uses
  %i.bm = icmp ugt i32 %.2.i.1, %.172.i.lcssa
  br i1 %i.bm, label %bb.q, label %bb.r, !llvm.loop !1

bb.r:                                             ; preds = %bb.q
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %._crit_edge85.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !2

._crit_edge85.i.loopexit.unr-lcssa:               ; preds = %bb.r
  %i.bn = and i16 %i.ba, 1
  %lcmp.mod84.not = icmp eq i16 %i.bn, 0
  br i1 %lcmp.mod84.not, label %._crit_edge85.i, label %.epil.preheader82

.epil.preheader82:                                ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %.lr.ph84.i
  %.16782.i.epil.init = phi i32 [ %.06688.i, %.lr.ph84.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i16 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.bo = zext nneg i32 %.16782.i.epil.init to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i8 %i.bc, ptr %i.bq, align 2, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader82
  %.167.pn.i.epil = phi i32 [ %.16782.i.epil.init, %.epil.preheader82 ], [ %.2.i.epil, %bb.s ]
  %.pn.i.epil = add nuw nsw i32 %i.ay, %.167.pn.i.epil
  %.2.i.epil = and i32 %.pn.i.epil, %i.o          ; 3 uses
  %i.br = icmp ugt i32 %.2.i.epil, %.172.i.lcssa
  br i1 %i.br, label %bb.s, label %._crit_edge85.i, !llvm.loop !1

._crit_edge85.i:                                  ; preds = %._crit_edge85.i.loopexit.unr-lcssa, %bb.s, %.preheader77.i
  %.167.lcssa.i = phi i32 [ %.06688.i, %.preheader77.i ], [ %.2.i.1, %._crit_edge85.i.loopexit.unr-lcssa ], [ %.2.i.epil, %bb.s ] ; 2 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %wide.trip.count.i
  br i1 %exitcond97.not.i, label %._crit_edge89.i, label %.preheader77.i, !llvm.loop !3

._crit_edge89.i:                                  ; preds = %._crit_edge85.i
  %.not.i = icmp eq i32 %.167.lcssa.i, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %FSEv06_buildDTable.exit

.preheader.preheader.i:                           ; preds = %._crit_edge89.i
  %wide.trip.count101.i = zext nneg i32 %i.n to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv98.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next99.i, %.preheader.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv98.i ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !20
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bv ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !18 ; 2 uses
  %i.by = add i16 %i.bx, 1
  store i16 %i.by, ptr %i.bw, align 2, !tbaa !18
  %i.bz = zext i16 %i.bx to i32                   ; 2 uses
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true)
  %i.cb = xor i32 %i.ca, 31
  %i.cc = sub nsw i32 %7, %i.cb                   ; 2 uses
  %i.cd = trunc nsw i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !21
  %i.cf = and i32 %i.cc, 255
  %i.cg = shl i32 %i.bz, %i.cf
  %i.ch = sub i32 %i.cg, %i.n
  %i.ci = trunc i32 %i.ch to i16
  store i16 %i.ci, ptr %i.bs, align 2, !tbaa !22
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count101.i
  br i1 %exitcond102.not.i, label %FSEv06_buildDTable.exit, label %.preheader.i, !llvm.loop !4

FSEv06_buildDTable.exit:                          ; preds = %.preheader.i, %._crit_edge89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.an

bb.t:                                             ; preds = %bb.a
  %.not = icmp eq i32 %8, 0
  %. = select i1 %.not, i64 -20, i64 0
  br label %bb.an

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.cj = call i64 @FSEv06_readNCount(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %4, i64 noundef %5) ; 2 uses
  %i.ck = icmp ult i64 %i.cj, -119
  br i1 %i.ck, label %bb.v, label %bb.am

bb.v:                                             ; preds = %bb.u
  %i.cl = load i32, ptr %i.d, align 4, !tbaa !15  ; 5 uses
  %i.cm = icmp ugt i32 %i.cl, %3
  br i1 %i.cm, label %bb.am, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load i32, ptr %i.c, align 4, !tbaa !15  ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.cp = shl nuw nsw i32 1, %i.cl                ; 5 uses
  %i.cq = add nsw i32 %i.cp, -1                   ; 5 uses
  %i.cr = icmp ugt i32 %i.cn, 255
  br i1 %i.cr, label %FSEv06_buildDTable.exit56, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %10 = add nuw nsw i32 %i.cn, 1                  ; 2 uses
  %sext.i18 = shl nuw nsw i32 32768, %i.cl
  %i.cs = lshr exact i32 %sext.i18, 16            ; 3 uses
  %wide.trip.count.i19 = zext nneg i32 %10 to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i19, 1
  %i.ct = icmp eq i32 %i.cn, 0
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i19, 510
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i.new
  %indvars.iv.i20 = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i28.1, %bb.ad ] ; 5 uses
  %.sroa.4.079.i21 = phi i16 [ 1, %.lr.ph.i.new ], [ %.sroa.4.2.i27.1, %bb.ad ] ; 2 uses
  %.07178.i22 = phi i32 [ %i.cq, %.lr.ph.i.new ], [ %.172.i26.1, %bb.ad ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.ad ]
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i20
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !18 ; 3 uses
  %i.cw = icmp eq i16 %i.cv, -1
  br i1 %i.cw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = trunc i64 %indvars.iv.i20 to i8
  %i.cy = add i32 %.07178.i22, -1
  %i.cz = zext i32 %.07178.i22 to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.cx, ptr %i.db, align 2, !tbaa !20
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dc = sext i16 %i.cv to i32
  %.not76.i23 = icmp sgt i32 %i.cs, %i.dc
  %spec.select.i24 = select i1 %.not76.i23, i16 %.sroa.4.079.i21, i16 0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i25 = phi i16 [ 1, %bb.y ], [ %i.cv, %bb.z ]
  %.172.i26 = phi i32 [ %i.cy, %bb.y ], [ %.07178.i22, %bb.z ] ; 3 uses
  %.sroa.4.2.i27 = phi i16 [ %.sroa.4.079.i21, %bb.y ], [ %spec.select.i24, %bb.z ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i20
  store i16 %.sink.i25, ptr %i.dd, align 4, !tbaa !18
  %indvars.iv.next.i28 = or disjoint i64 %indvars.iv.i20, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next.i28
  %i.df = load i16, ptr %i.de, align 2, !tbaa !18 ; 3 uses
  %i.dg = icmp eq i16 %i.df, -1
  br i1 %i.dg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = sext i16 %i.df to i32
  %.not76.i23.1 = icmp sgt i32 %i.cs, %i.dh
  %spec.select.i24.1 = select i1 %.not76.i23.1, i16 %.sroa.4.2.i27, i16 0
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.di = trunc i64 %indvars.iv.next.i28 to i8
  %i.dj = add i32 %.172.i26, -1
  %i.dk = zext i32 %.172.i26 to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i8 %i.di, ptr %i.dm, align 2, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink.i25.1 = phi i16 [ 1, %bb.ac ], [ %i.df, %bb.ab ]
  %.172.i26.1 = phi i32 [ %i.dj, %bb.ac ], [ %.172.i26, %bb.ab ] ; 3 uses
  %.sroa.4.2.i27.1 = phi i16 [ %.sroa.4.2.i27, %bb.ac ], [ %spec.select.i24.1, %bb.ab ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i28
  store i16 %.sink.i25.1, ptr %i.dn, align 2, !tbaa !18
  %indvars.iv.next.i28.1 = add nuw nsw i64 %indvars.iv.i20, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader77.lr.ph.i30.unr-lcssa, label %bb.x, !llvm.loop !0

.preheader77.lr.ph.i30.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader77.lr.ph.i30, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader77.lr.ph.i30.unr-lcssa, %.lr.ph.i
  %indvars.iv.i20.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i28.1, %.preheader77.lr.ph.i30.unr-lcssa ] ; 3 uses
  %.sroa.4.079.i21.epil.init = phi i16 [ 1, %.lr.ph.i ], [ %.sroa.4.2.i27.1, %.preheader77.lr.ph.i30.unr-lcssa ] ; 2 uses
  %.07178.i22.epil.init = phi i32 [ %i.cq, %.lr.ph.i ], [ %.172.i26.1, %.preheader77.lr.ph.i30.unr-lcssa ] ; 3 uses
  %lcmp.mod66 = trunc i32 %10 to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i20.epil.init
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !18 ; 3 uses
  %i.dq = icmp eq i16 %i.dp, -1
  br i1 %i.dq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader
  %i.dr = sext i16 %i.dp to i32
  %.not76.i23.epil = icmp sgt i32 %i.cs, %i.dr
  %spec.select.i24.epil = select i1 %.not76.i23.epil, i16 %.sroa.4.079.i21.epil.init, i16 0
  br label %.preheader77.lr.ph.i30.epilog-lcssa

bb.af:                                            ; preds = %.epil.preheader
  %i.ds = trunc i64 %indvars.iv.i20.epil.init to i8
  %i.dt = add i32 %.07178.i22.epil.init, -1
  %i.du = zext i32 %.07178.i22.epil.init to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store i8 %i.ds, ptr %i.dw, align 2, !tbaa !20
  br label %.preheader77.lr.ph.i30.epilog-lcssa

.preheader77.lr.ph.i30.epilog-lcssa:              ; preds = %bb.af, %bb.ae
  %.sink.i25.epil = phi i16 [ 1, %bb.af ], [ %i.dp, %bb.ae ]
  %.172.i26.epil = phi i32 [ %i.dt, %bb.af ], [ %.07178.i22.epil.init, %bb.ae ]
  %.sroa.4.2.i27.epil = phi i16 [ %.sroa.4.079.i21.epil.init, %bb.af ], [ %spec.select.i24.epil, %bb.ae ]
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i20.epil.init
  store i16 %.sink.i25.epil, ptr %i.dx, align 2, !tbaa !18
  br label %.preheader77.lr.ph.i30

.preheader77.lr.ph.i30:                           ; preds = %.preheader77.lr.ph.i30.unr-lcssa, %.preheader77.lr.ph.i30.epilog-lcssa
  %.172.i26.lcssa = phi i32 [ %.172.i26.1, %.preheader77.lr.ph.i30.unr-lcssa ], [ %.172.i26.epil, %.preheader77.lr.ph.i30.epilog-lcssa ] ; 3 uses
  %.sroa.4.2.i27.lcssa = phi i16 [ %.sroa.4.2.i27.1, %.preheader77.lr.ph.i30.unr-lcssa ], [ %.sroa.4.2.i27.epil, %.preheader77.lr.ph.i30.epilog-lcssa ]
  %i.dy = trunc nuw nsw i32 %i.cl to i16
  store i16 %i.dy, ptr %0, align 4
  %.sroa.4.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.i27.lcssa, ptr %.sroa.4.0..sroa_idx.i31, align 2
  %i.dz = lshr i32 %i.cp, 3
  %i.ea = lshr i32 %i.cp, 1
  %i.eb = add nuw nsw i32 %i.dz, 3
  %i.ec = add nuw nsw i32 %i.eb, %i.ea            ; 3 uses
  br label %.preheader77.i33

.preheader77.i33:                                 ; preds = %._crit_edge85.i36, %.preheader77.lr.ph.i30
  %indvars.iv93.i34 = phi i64 [ 0, %.preheader77.lr.ph.i30 ], [ %indvars.iv.next94.i38, %._crit_edge85.i36 ] ; 3 uses
  %.06688.i35 = phi i32 [ 0, %.preheader77.lr.ph.i30 ], [ %.167.lcssa.i37, %._crit_edge85.i36 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv93.i34
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !18 ; 5 uses
  %i.ef = icmp sgt i16 %i.ee, 0
  br i1 %i.ef, label %.lr.ph84.i49, label %._crit_edge85.i36

.lr.ph84.i49:                                     ; preds = %.preheader77.i33
  %i.eg = trunc i64 %indvars.iv93.i34 to i8       ; 3 uses
  %i.eh = icmp eq i16 %i.ee, 1
  br i1 %i.eh, label %.epil.preheader67, label %.lr.ph84.i49.new

.lr.ph84.i49.new:                                 ; preds = %.lr.ph84.i49
  %i.ei = and i16 %i.ee, 32766
  %unroll_iter72 = zext nneg i16 %i.ei to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.lr.ph84.i49.new
  %.16782.i51 = phi i32 [ %.06688.i35, %.lr.ph84.i49.new ], [ %.2.i54.1, %bb.ak ] ; 2 uses
  %niter73 = phi i32 [ 0, %.lr.ph84.i49.new ], [ %niter73.next.1, %bb.ak ]
  %i.ej = zext nneg i32 %.16782.i51 to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i8 %i.eg, ptr %i.el, align 2, !tbaa !20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.167.pn.i52 = phi i32 [ %.16782.i51, %bb.ag ], [ %.2.i54, %bb.ah ]
  %.pn.i53 = add nuw nsw i32 %i.ec, %.167.pn.i52
  %.2.i54 = and i32 %.pn.i53, %i.cq               ; 4 uses
  %i.em = icmp ugt i32 %.2.i54, %.172.i26.lcssa
  br i1 %i.em, label %bb.ah, label %bb.ai, !llvm.loop !1

bb.ai:                                            ; preds = %bb.ah
  %i.en = zext nneg i32 %.2.i54 to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store i8 %i.eg, ptr %i.ep, align 2, !tbaa !20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.167.pn.i52.1 = phi i32 [ %.2.i54, %bb.ai ], [ %.2.i54.1, %bb.aj ]
  %.pn.i53.1 = add nuw nsw i32 %i.ec, %.167.pn.i52.1
  %.2.i54.1 = and i32 %.pn.i53.1, %i.cq           ; 5 uses
  %i.eq = icmp ugt i32 %.2.i54.1, %.172.i26.lcssa
  br i1 %i.eq, label %bb.aj, label %bb.ak, !llvm.loop !1

bb.ak:                                            ; preds = %bb.aj
  %niter73.next.1 = add i32 %niter73, 2           ; 2 uses
  %niter73.ncmp.1 = icmp eq i32 %niter73.next.1, %unroll_iter72
  br i1 %niter73.ncmp.1, label %._crit_edge85.i36.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !2

._crit_edge85.i36.loopexit.unr-lcssa:             ; preds = %bb.ak
  %i.er = and i16 %i.ee, 1
  %lcmp.mod69.not = icmp eq i16 %i.er, 0
  br i1 %lcmp.mod69.not, label %._crit_edge85.i36, label %.epil.preheader67

.epil.preheader67:                                ; preds = %._crit_edge85.i36.loopexit.unr-lcssa, %.lr.ph84.i49
  %.16782.i51.epil.init = phi i32 [ %.06688.i35, %.lr.ph84.i49 ], [ %.2.i54.1, %._crit_edge85.i36.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i16 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.es = zext nneg i32 %.16782.i51.epil.init to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  store i8 %i.eg, ptr %i.eu, align 2, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader67
  %.167.pn.i52.epil = phi i32 [ %.16782.i51.epil.init, %.epil.preheader67 ], [ %.2.i54.epil, %bb.al ]
  %.pn.i53.epil = add nuw nsw i32 %i.ec, %.167.pn.i52.epil
  %.2.i54.epil = and i32 %.pn.i53.epil, %i.cq     ; 3 uses
  %i.ev = icmp ugt i32 %.2.i54.epil, %.172.i26.lcssa
  br i1 %i.ev, label %bb.al, label %._crit_edge85.i36, !llvm.loop !1

._crit_edge85.i36:                                ; preds = %._crit_edge85.i36.loopexit.unr-lcssa, %bb.al, %.preheader77.i33
  %.167.lcssa.i37 = phi i32 [ %.06688.i35, %.preheader77.i33 ], [ %.2.i54.1, %._crit_edge85.i36.loopexit.unr-lcssa ], [ %.2.i54.epil, %bb.al ] ; 2 uses
  %indvars.iv.next94.i38 = add nuw nsw i64 %indvars.iv93.i34, 1 ; 2 uses
  %exitcond97.not.i39 = icmp eq i64 %indvars.iv.next94.i38, %wide.trip.count.i19
  br i1 %exitcond97.not.i39, label %._crit_edge89.i40, label %.preheader77.i33, !llvm.loop !3

._crit_edge89.i40:                                ; preds = %._crit_edge85.i36
  %.not.i41 = icmp eq i32 %.167.lcssa.i37, 0
  br i1 %.not.i41, label %.preheader.preheader.i43, label %FSEv06_buildDTable.exit56

.preheader.preheader.i43:                         ; preds = %._crit_edge89.i40
  %wide.trip.count101.i44 = zext nneg i32 %i.cp to i64
  br label %.preheader.i45

.preheader.i45:                                   ; preds = %.preheader.i45, %.preheader.preheader.i43
  %indvars.iv98.i46 = phi i64 [ 0, %.preheader.preheader.i43 ], [ %indvars.iv.next99.i47, %.preheader.i45 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv98.i46 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !20
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ez ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !18 ; 2 uses
  %i.fc = add i16 %i.fb, 1
  store i16 %i.fc, ptr %i.fa, align 2, !tbaa !18
  %i.fd = zext i16 %i.fb to i32                   ; 2 uses
  %i.fe = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fd, i1 true)
  %i.ff = xor i32 %i.fe, 31
  %i.fg = sub nsw i32 %i.cl, %i.ff                ; 2 uses
  %i.fh = trunc nsw i32 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 3
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !21
  %i.fj = and i32 %i.fg, 255
  %i.fk = shl i32 %i.fd, %i.fj
  %i.fl = sub i32 %i.fk, %i.cp
  %i.fm = trunc i32 %i.fl to i16
  store i16 %i.fm, ptr %i.ew, align 2, !tbaa !22
  %indvars.iv.next99.i47 = add nuw nsw i64 %indvars.iv98.i46, 1 ; 2 uses
  %exitcond102.not.i48 = icmp eq i64 %indvars.iv.next99.i47, %wide.trip.count101.i44
  br i1 %exitcond102.not.i48, label %FSEv06_buildDTable.exit56, label %.preheader.i45, !llvm.loop !4

FSEv06_buildDTable.exit56:                        ; preds = %.preheader.i45, %bb.w, %._crit_edge89.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.am

bb.am:                                            ; preds = %bb.v, %bb.u, %FSEv06_buildDTable.exit56
  %.0 = phi i64 [ %i.cj, %FSEv06_buildDTable.exit56 ], [ -20, %bb.u ], [ -20, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.an

bb.an:                                            ; preds = %bb.t, %bb.c, %bb.b, %bb.am, %FSEv06_buildDTable.exit, %bb.d
  %.1 = phi i64 [ %.0, %bb.am ], [ -72, %bb.b ], [ 1, %bb.d ], [ %., %bb.t ], [ 0, %FSEv06_buildDTable.exit ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !16}
end_hunk_5
