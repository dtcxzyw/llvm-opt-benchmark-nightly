Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/legal?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Plegal_arrangement:bb.a
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next110.i, %i.nz
  br i1 %exitcond.not.i76, label %.loopexit.i, label %bb.fq, !llvm.loop !37

findInside.exit:                                  ; preds = %.loopexit.i, %bb.fv, %bb.ga, %find_ints.exit, %find_ints.exit.thread
  %.sink216 = phi ptr [ %i.f, %find_ints.exit.thread ], [ %i.nl, %bb.fv ], [ %i.nl, %find_ints.exit ], [ %i.nl, %bb.ga ], [ %i.nl, %.loopexit.i ]
  %.sink = phi ptr [ %i.ax, %find_ints.exit.thread ], [ %i.nm, %bb.fv ], [ %i.nm, %find_ints.exit ], [ %i.nm, %bb.ga ], [ %i.nm, %.loopexit.i ]
  %.065 = phi i32 [ 0, %find_ints.exit.thread ], [ 0, %bb.fv ], [ %not..not.not, %find_ints.exit ], [ 0, %bb.ga ], [ 1, %.loopexit.i ]
  call void @free(ptr noundef %.sink216) #18
  call void @free(ptr noundef %.sink) #18
  ret i32 %.065
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #4 {
bb.a:
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @gt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !23 ; 2 uses
  %i.e = fcmp ogt double %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp olt double %i.b, %i.d
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !24 ; 2 uses
  %i.k = fcmp ogt double %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp olt double %i.h, %i.j
  %. = sext i1 %i.l to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ -1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #10

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #10

declare hidden i64 @gv_list_find_(ptr noundef byval(%struct.list_t_) align 8, ptr noundef, i64 noundef) local_unnamed_addr #10

declare hidden void @gv_list_remove_(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #10

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @intpoint(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = icmp slt i32 %4, 1
  br i1 %i.a, label %online.exit204.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !18 ; 7 uses
  %i.c = extractelement <2 x double> %i.b, i64 0  ; 24 uses
  %.sroa.13.0.copyload = load double, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !18 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = icmp eq ptr %0, %i.g                     ; 5 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.i, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x double>, ptr %i.k, align 8, !tbaa !18 ; 10 uses
  %.sroa.11.0.copyload = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !18 ; 7 uses
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !18 ; 6 uses
  %i.n = extractelement <2 x double> %i.m, i64 0  ; 29 uses
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !18 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = icmp eq ptr %1, %i.r                     ; 5 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = phi ptr [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %.sroa.1042.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !18 ; 8 uses
  %.sroa.1042.0.copyload = load double, ptr %.sroa.1042.0..sroa_idx, align 8, !tbaa !18 ; 10 uses
  switch i32 %4, label %online.exit204.thread [
    i32 3, label %bb.i
    i32 2, label %bb.n
    i32 1, label %bb.bg
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = extractelement <2 x double> %i.l, i64 0
  %i.y = fcmp oeq double %i.c, %i.x
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.c, ptr %2, align 8, !tbaa !18
  %i.z = fsub double %.sroa.12.0.copyload, %.sroa.1042.0.copyload
  %foldExtExtBinop = fsub <2 x double> %i.m, %i.w
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ab = fdiv double %i.z, %i.aa
  %foldExtExtBinop251 = fsub <2 x double> %i.b, %i.w
  %i.ac = extractelement <2 x double> %foldExtExtBinop251, i64 0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ac, double %.sroa.1042.0.copyload)
  br label %online.exit204.thread.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ae = extractelement <2 x double> %i.w, i64 0
  %i.af = fcmp oeq double %i.n, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.n, ptr %2, align 8, !tbaa !18
  %i.ag = fsub double %.sroa.13.0.copyload, %.sroa.11.0.copyload
  %foldExtExtBinop253 = fsub <2 x double> %i.b, %i.l
  %i.ah = extractelement <2 x double> %foldExtExtBinop253, i64 0
  %i.ai = fdiv double %i.ag, %i.ah
  %foldExtExtBinop255 = fsub <2 x double> %i.m, %i.l
  %i.aj = extractelement <2 x double> %foldExtExtBinop255, i64 0
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.aj, double %.sroa.11.0.copyload)
  br label %online.exit204.thread.sink.split

bb.m:                                             ; preds = %bb.k
  %i.al = shufflevector <2 x double> %i.m, <2 x double> %i.b, <2 x i32> <i32 1, i32 3>
  %i.am = shufflevector <2 x double> %i.w, <2 x double> %i.l, <2 x i32> <i32 1, i32 3>
  %i.an = fsub <2 x double> %i.al, %i.am
  %i.ao = shufflevector <2 x double> %i.m, <2 x double> %i.b, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ap = shufflevector <2 x double> %i.w, <2 x double> %i.l, <2 x i32> <i32 0, i32 2>
  %i.aq = fsub <2 x double> %i.ao, %i.ap
  %i.ar = fdiv <2 x double> %i.an, %i.aq          ; 3 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0 ; 2 uses
  %i.at = extractelement <2 x double> %i.ar, i64 1 ; 2 uses
  %i.au = fneg <2 x double> %i.ar
  %i.av = fneg double %i.at
  %i.aw = insertelement <2 x double> poison, double %.sroa.12.0.copyload, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %.sroa.13.0.copyload, i64 1
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.ao, <2 x double> %i.ax) ; 2 uses
  %i.az = extractelement <2 x double> %i.ay, i64 0 ; 2 uses
  %i.ba = extractelement <2 x double> %i.ay, i64 1 ; 2 uses
  %i.bb = fsub double %i.ba, %i.az
  %i.bc = fsub double %i.as, %i.at                ; 2 uses
  %5 = fdiv double %i.bb, %i.bc
  store double %5, ptr %2, align 8, !tbaa !18
  %6 = fmul double %i.az, %i.av
  %7 = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ba, double %6)
  %8 = fdiv double %7, %i.bc
  br label %online.exit204.thread.sink.split

bb.n:                                             ; preds = %bb.h
  br i1 %i.h, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bf = phi ptr [ %i.bd, %bb.o ], [ %i.be, %bb.p ]
  %.sroa.05.0.copyload.i = load double, ptr %i.bf, align 8, !tbaa !18 ; 3 uses
  %i.bg = fcmp oeq double %i.c, %.sroa.05.0.copyload.i
  br i1 %i.bg, label %online.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = fcmp olt double %i.c, %i.n              ; 2 uses
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = fcmp ogt double %i.n, %.sroa.05.0.copyload.i
  br i1 %i.bi, label %bb.u, label %online.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.bj = fcmp ule double %i.c, %i.n
  %i.bk = fcmp uge double %i.n, %.sroa.05.0.copyload.i
  %or.cond.not = or i1 %i.bj, %i.bk
  br i1 %or.cond.not, label %online.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  br i1 %i.s, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bn = phi ptr [ %i.bl, %bb.v ], [ %i.bm, %bb.w ]
  %.sroa.05.0.copyload.i124 = load double, ptr %i.bn, align 8, !tbaa !18 ; 3 uses
  br i1 %i.h, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.i = phi ptr [ %i.bp, %bb.z ], [ %i.bo, %bb.y ]
  %.sroa.0.0.i127 = load double, ptr %.pn.i, align 8, !tbaa !18 ; 4 uses
  %i.bq = fcmp oeq double %i.n, %.sroa.05.0.copyload.i124
  %i.br = extractelement <2 x double> %i.w, i64 0 ; 3 uses
  br i1 %i.bq, label %online.exit136.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = fcmp olt double %i.n, %.sroa.0.0.i127
  br i1 %i.bs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bt = fcmp ogt double %.sroa.0.0.i127, %.sroa.05.0.copyload.i124
  br i1 %i.bt, label %bb.ae, label %online.exit136.thread

bb.ad:                                            ; preds = %bb.ab
  %i.bu = fcmp ule double %i.n, %.sroa.0.0.i127
  %i.bv = fcmp uge double %.sroa.0.0.i127, %.sroa.05.0.copyload.i124
  %or.cond242.not = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond242.not, label %online.exit136.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  br i1 %i.s, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bw = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.by = phi ptr [ %i.bw, %bb.af ], [ %i.bx, %bb.ag ]
  %.sroa.05.0.copyload.i140 = load double, ptr %i.by, align 8, !tbaa !18 ; 3 uses
  %i.bz = fcmp oeq double %i.n, %.sroa.05.0.copyload.i140
  br i1 %i.bz, label %online.exit136.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = fcmp olt double %i.n, %i.c
  br i1 %i.ca, label %online.exit153, label %.split231

.split231:                                        ; preds = %bb.ai
  %i.cb = fcmp olt double %i.c, %.sroa.05.0.copyload.i140
  %.fr = freeze i1 %i.cb
  %spec.select220 = and i1 %i.bh, %.fr
  br i1 %spec.select220, label %.split235, label %online.exit136.thread

online.exit153:                                   ; preds = %bb.ai
  %i.cc = fcmp ogt double %i.c, %.sroa.05.0.copyload.i140
  %cond.fr = freeze i1 %i.cc
  br i1 %cond.fr, label %.split235, label %online.exit136.thread

.split235:                                        ; preds = %online.exit153, %.split231
  %i.cd = extractelement <2 x double> %i.l, i64 0
  br label %online.exit136.thread

online.exit.thread:                               ; preds = %bb.q, %bb.t, %bb.s
  br i1 %i.h, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %online.exit.thread
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %bb.al

bb.ak:                                            ; preds = %online.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cg = phi ptr [ %i.ce, %bb.aj ], [ %i.cf, %bb.ak ]
  %.sroa.05.0.copyload.i157 = load double, ptr %i.cg, align 8, !tbaa !18 ; 3 uses
  br i1 %i.s, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i160 = phi ptr [ %i.ci, %bb.an ], [ %i.ch, %bb.am ]
  %.sroa.0.0.i161 = load double, ptr %.pn.i160, align 8, !tbaa !18 ; 4 uses
  %i.cj = fcmp oeq double %i.c, %.sroa.05.0.copyload.i157
  br i1 %i.cj, label %online.exit170.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ck = fcmp olt double %i.c, %.sroa.0.0.i161
  br i1 %i.ck, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cl = fcmp ogt double %.sroa.0.0.i161, %.sroa.05.0.copyload.i157
  br i1 %i.cl, label %bb.as, label %online.exit170.thread

bb.ar:                                            ; preds = %bb.ap
  %i.cm = fcmp ule double %i.c, %.sroa.0.0.i161
  %i.cn = fcmp uge double %.sroa.0.0.i161, %.sroa.05.0.copyload.i157
  %or.cond244.not = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond244.not, label %online.exit170.thread, label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  br i1 %i.h, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.cq = phi ptr [ %i.co, %bb.at ], [ %i.cp, %bb.au ]
  %.sroa.05.0.copyload.i174 = load double, ptr %i.cq, align 8, !tbaa !18 ; 3 uses
  %i.cr = fcmp oeq double %i.c, %.sroa.05.0.copyload.i174
  %i.cs = extractelement <2 x double> %i.w, i64 0 ; 4 uses
  br i1 %i.cr, label %online.exit136.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ct = fcmp olt double %i.c, %i.n
  br i1 %i.ct, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cu = fcmp ogt double %i.n, %.sroa.05.0.copyload.i174
  br i1 %i.cu, label %bb.az, label %online.exit136.thread

bb.ay:                                            ; preds = %bb.aw
  %i.cv = fcmp ule double %i.c, %i.n
  %i.cw = fcmp uge double %i.n, %.sroa.05.0.copyload.i174
  %or.cond246.not = or i1 %i.cv, %i.cw
  br i1 %or.cond246.not, label %online.exit136.thread, label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.cx = tail call fastcc i32 @online(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 0)
  %i.cy = icmp eq i32 %i.cx, -1                   ; 2 uses
  %.sroa.11.0.copyload..sroa.13.0.copyload119 = select i1 %i.cy, double %.sroa.11.0.copyload, double %.sroa.13.0.copyload
  %i.cz = extractelement <2 x double> %i.l, i64 0
  %.sroa.057.0.copyload..sroa.065.0.copyload120 = select i1 %i.cy, double %i.cz, double %i.c
  br label %online.exit136.thread

online.exit170.thread:                            ; preds = %bb.ao, %bb.ar, %bb.aq
  br i1 %i.s, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %online.exit170.thread
  %i.da = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %bb.bc

bb.bb:                                            ; preds = %online.exit170.thread
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.dc = phi ptr [ %i.da, %bb.ba ], [ %i.db, %bb.bb ]
  %.sroa.05.0.copyload.i191 = load double, ptr %i.dc, align 8, !tbaa !18 ; 3 uses
  %i.dd = fcmp oeq double %i.n, %.sroa.05.0.copyload.i191
  br i1 %i.dd, label %online.exit204.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.de = fcmp olt double %i.n, %i.c
  br i1 %i.de, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.df = fcmp ogt double %i.c, %.sroa.05.0.copyload.i191
  %i.dg = extractelement <2 x double> %i.l, i64 0
  br i1 %i.df, label %online.exit136.thread, label %online.exit204.thread

bb.bf:                                            ; preds = %bb.bd
  %i.dh = fcmp ule double %i.n, %i.c
  %i.di = fcmp uge double %i.c, %.sroa.05.0.copyload.i191
  %or.cond248.not = or i1 %i.dh, %i.di
  %i.dj = extractelement <2 x double> %i.l, i64 0
  br i1 %or.cond248.not, label %online.exit204.thread, label %online.exit136.thread

online.exit136.thread:                            ; preds = %online.exit153, %.split231, %bb.be, %bb.bf, %bb.ah, %.split235, %bb.av, %bb.aa, %bb.ay, %bb.ax, %bb.ad, %bb.ac, %bb.az
  %.sroa.6.0 = phi double [ %.sroa.12.0.copyload, %bb.ah ], [ %.sroa.13.0.copyload, %bb.bf ], [ %.sroa.12.0.copyload, %.split235 ], [ %.sroa.1042.0.copyload, %bb.az ], [ %.sroa.13.0.copyload, %bb.be ], [ %.sroa.12.0.copyload, %bb.aa ], [ %.sroa.1042.0.copyload, %bb.ay ], [ %.sroa.12.0.copyload, %bb.ac ], [ %.sroa.1042.0.copyload, %bb.ax ], [ %.sroa.12.0.copyload, %bb.ad ], [ %.sroa.1042.0.copyload, %bb.av ], [ %.sroa.12.0.copyload, %.split231 ], [ %.sroa.12.0.copyload, %online.exit153 ]
  %.sroa.030.0 = phi double [ %i.n, %bb.ah ], [ %i.c, %bb.bf ], [ %i.n, %.split235 ], [ %i.cs, %bb.az ], [ %i.c, %bb.be ], [ %i.n, %bb.aa ], [ %i.cs, %bb.ay ], [ %i.n, %bb.ac ], [ %i.cs, %bb.ax ], [ %i.n, %bb.ad ], [ %i.cs, %bb.av ], [ %i.n, %.split231 ], [ %i.n, %online.exit153 ]
  %.sroa.10.0 = phi double [ %.sroa.13.0.copyload, %bb.ah ], [ %.sroa.11.0.copyload, %bb.bf ], [ %.sroa.11.0.copyload, %.split235 ], [ %.sroa.11.0.copyload..sroa.13.0.copyload119, %bb.az ], [ %.sroa.11.0.copyload, %bb.be ], [ %.sroa.1042.0.copyload, %bb.aa ], [ %.sroa.12.0.copyload, %bb.ay ], [ %.sroa.1042.0.copyload, %bb.ac ], [ %.sroa.12.0.copyload, %bb.ax ], [ %.sroa.1042.0.copyload, %bb.ad ], [ %.sroa.12.0.copyload, %bb.av ], [ %.sroa.13.0.copyload, %.split231 ], [ %.sroa.13.0.copyload, %online.exit153 ]
  %.sroa.0.0 = phi double [ %i.c, %bb.ah ], [ %i.dj, %bb.bf ], [ %i.cd, %.split235 ], [ %.sroa.057.0.copyload..sroa.065.0.copyload120, %bb.az ], [ %i.dg, %bb.be ], [ %i.br, %bb.aa ], [ %i.n, %bb.ay ], [ %i.br, %bb.ac ], [ %i.n, %bb.ax ], [ %i.br, %bb.ad ], [ %i.n, %bb.av ], [ %i.c, %.split231 ], [ %i.c, %online.exit153 ]
  %i.dk = fadd double %.sroa.030.0, %.sroa.0.0
  %i.dl = fmul double %i.dk, 5.000000e-01
  store double %i.dl, ptr %2, align 8, !tbaa !18
  %i.dm = fadd double %.sroa.6.0, %.sroa.10.0
  %i.dn = fmul double %i.dm, 5.000000e-01
  br label %online.exit204.thread.sink.split

bb.bg:                                            ; preds = %bb.h
  %foldExtExtBinop257 = fsub <2 x double> %i.b, %i.l
  %i.do = extractelement <2 x double> %foldExtExtBinop257, i64 0
  %i.dp = fsub double %.sroa.12.0.copyload, %.sroa.13.0.copyload
  %i.dq = fmul double %i.do, %i.dp
  %i.dr = fsub double %.sroa.13.0.copyload, %.sroa.11.0.copyload
  %foldExtExtBinop259 = fsub <2 x double> %i.m, %i.b
  %i.ds = extractelement <2 x double> %foldExtExtBinop259, i64 0
  %i.dt = fmul double %i.dr, %i.ds
  %i.du = fcmp oeq double %i.dq, %i.dt
  br i1 %i.du, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.n, ptr %2, align 8, !tbaa !18
  br label %online.exit204.thread.sink.split

bb.bi:                                            ; preds = %bb.bg
  %i.dv = extractelement <2 x double> %i.w, i64 0
  store double %i.dv, ptr %2, align 8, !tbaa !18
  br label %online.exit204.thread.sink.split

online.exit204.thread.sink.split:                 ; preds = %bb.bh, %bb.bi, %bb.j, %bb.m, %bb.l, %online.exit136.thread
  %.sink = phi double [ %i.dn, %online.exit136.thread ], [ %i.ak, %bb.l ], [ %8, %bb.m ], [ %i.ad, %bb.j ], [ %.sroa.1042.0.copyload, %bb.bi ], [ %.sroa.12.0.copyload, %bb.bh ]
  store double %.sink, ptr %3, align 8, !tbaa !18
  br label %online.exit204.thread

online.exit204.thread:                            ; preds = %online.exit204.thread.sink.split, %bb.bc, %bb.bf, %bb.be, %bb.h, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.bc ], [ 1, %bb.h ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 1, %online.exit204.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 2) i32 @online(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef range(i32 0, -2147483648) %2) unnamed_addr #9 {
bb.a:
  %.sroa.07.0.copyload = load double, ptr %0, align 8, !tbaa !18 ; 4 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.610.0.copyload = load double, ptr %.sroa.610.0..sroa_idx, align 8, !tbaa !18 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = icmp eq ptr %0, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.05.0.copyload = load double, ptr %i.h, align 8, !tbaa !18 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !18 ; 4 uses
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = icmp eq ptr %1, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.pn = phi ptr [ %1, %bb.d ], [ %i.o, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %.sroa.0.0 = load double, ptr %.pn, align 8, !tbaa !18 ; 7 uses
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.6.0 = load double, ptr %.sroa.6.0.in, align 8, !tbaa !18 ; 6 uses
  %i.q = fcmp oeq double %.sroa.07.0.copyload, %.sroa.05.0.copyload
  br i1 %i.q, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.r = fcmp oeq double %.sroa.07.0.copyload, %.sroa.0.0
  br i1 %i.r, label %bb.j, label %between.exit24

bb.j:                                             ; preds = %bb.i
  %i.s = fcmp olt double %.sroa.610.0.copyload, %.sroa.6.0
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = fcmp olt double %.sroa.6.0, %.sroa.5.0.copyload
  br i1 %i.t, label %between.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = fcmp ogt double %.sroa.6.0, %.sroa.5.0.copyload
  %..i = sext i1 %i.u to i32
  br label %between.exit

bb.m:                                             ; preds = %bb.j
  %i.v = fcmp ogt double %.sroa.610.0.copyload, %.sroa.6.0
  br i1 %i.v, label %bb.n, label %between.exit

bb.n:                                             ; preds = %bb.m
  %i.w = fcmp ogt double %.sroa.6.0, %.sroa.5.0.copyload
  br i1 %i.w, label %between.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = fcmp olt double %.sroa.6.0, %.sroa.5.0.copyload
  %.15.i = sext i1 %i.x to i32
  br label %between.exit

between.exit:                                     ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i32 [ %.15.i, %bb.o ], [ %..i, %bb.l ], [ 1, %bb.k ], [ 1, %bb.n ], [ 0, %bb.m ]
  %i.y = icmp ne i32 %.0.i, -1
  %i.z = zext i1 %i.y to i32
  br label %between.exit24

bb.p:                                             ; preds = %bb.h
  %i.aa = fcmp olt double %.sroa.07.0.copyload, %.sroa.0.0
  br i1 %i.aa, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ab = fcmp olt double %.sroa.0.0, %.sroa.05.0.copyload
  br i1 %i.ab, label %between.exit24, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = fcmp ogt double %.sroa.0.0, %.sroa.05.0.copyload
  %..i23 = sext i1 %i.ac to i32
  br label %between.exit24

bb.s:                                             ; preds = %bb.p
  %i.ad = fcmp ogt double %.sroa.07.0.copyload, %.sroa.0.0
  br i1 %i.ad, label %bb.t, label %between.exit24

bb.t:                                             ; preds = %bb.s
  %i.ae = fcmp ogt double %.sroa.0.0, %.sroa.05.0.copyload
  br i1 %i.ae, label %between.exit24, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = fcmp olt double %.sroa.0.0, %.sroa.05.0.copyload
  %.15.i22 = sext i1 %i.af to i32
  br label %between.exit24

between.exit24:                                   ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.i, %between.exit
  %i.ag = phi i32 [ %i.z, %between.exit ], [ 0, %bb.i ], [ %.15.i22, %bb.u ], [ %..i23, %bb.r ], [ 1, %bb.q ], [ 1, %bb.t ], [ 0, %bb.s ]
  ret i32 %i.ag
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @putSeg(i32 noundef range(i32 1, 3) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.b = load double, ptr %1, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = load double, ptr %.in, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !24
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.4, i32 noundef %0, double noundef %i.b, double noundef %i.d, double noundef %i.l, double noundef %i.n) #15 ; 0 uses
  ret void
}

declare zeroext i1 @in_poly(ptr, i64, double, double) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind }
attributes #19 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}
end_hunk_0
