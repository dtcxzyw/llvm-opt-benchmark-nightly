Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/pack?download=true
inline.NumInlined: 51
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@genBox:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = phi double [ %i.x, %bb.b ], [ %i.ab, %bb.c ]
  %i.ad = fcmp ult double %i.o, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = uitofp nneg i32 %2 to double
  %i.af = fdiv double %i.o, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = fadd double %i.o, 1.000000e+00
  %i.ah = uitofp nneg i32 %2 to double
  %i.ai = fdiv double %i.ag, %i.ah
  %i.aj = fadd double %i.ai, -1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi double [ %i.af, %bb.e ], [ %i.aj, %bb.f ]
  %i.al = tail call double @llvm.round.f64(double %i.ac) ; 2 uses
  %i.am = tail call double @llvm.round.f64(double %i.ak) ; 2 uses
  %i.an = fcmp ult double %i.r, 0.000000e+00
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = uitofp nneg i32 %2 to double
  %i.ap = fdiv double %i.r, %i.ao
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = fadd double %i.r, 1.000000e+00
  %i.ar = uitofp nneg i32 %2 to double
  %i.as = fdiv double %i.aq, %i.ar
  %i.at = fadd double %i.as, -1.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = phi double [ %i.ap, %bb.h ], [ %i.at, %bb.i ]
  %i.av = fcmp ult double %i.u, 0.000000e+00
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = uitofp nneg i32 %2 to double
  %i.ax = fdiv double %i.u, %i.aw
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ay = fadd double %i.u, 1.000000e+00
  %i.az = uitofp nneg i32 %2 to double
  %i.ba = fdiv double %i.ay, %i.az
  %i.bb = fadd double %i.ba, -1.000000e+00
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = phi double [ %i.ax, %bb.k ], [ %i.bb, %bb.l ]
  %i.bd = tail call double @llvm.round.f64(double %i.au) ; 2 uses
  %i.be = tail call double @llvm.round.f64(double %i.bc) ; 2 uses
  %i.bf = fcmp ugt double %i.al, %i.bd
  %i.bg = fcmp ugt double %i.am, %i.be
  %or.cond = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.m, %._crit_edge
  %.06776 = phi double [ %i.bj, %._crit_edge ], [ %i.al, %bb.m ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.n
  %.06675 = phi double [ %i.am, %.preheader ], [ %i.bh, %bb.n ] ; 2 uses
  tail call void @addPS(ptr noundef %i.l, double noundef %.06776, double noundef %.06675) #19
  %i.bh = fadd double %.06675, 1.000000e+00       ; 2 uses
  %i.bi = fcmp ugt double %i.bh, %i.be
  br i1 %i.bi, label %._crit_edge, label %bb.n, !llvm.loop !175

._crit_edge:                                      ; preds = %bb.n
  %i.bj = fadd double %.06776, 1.000000e+00       ; 2 uses
  %i.bk = fcmp ugt double %i.bj, %i.bd
  br i1 %i.bk, label %._crit_edge77, label %.preheader, !llvm.loop !176

._crit_edge77:                                    ; preds = %._crit_edge, %bb.m
  %i.bl = tail call ptr @pointsOf(ptr noundef %i.l) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !95
  %i.bn = tail call i32 @sizeOf(ptr noundef %i.l) #19 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !96
  %i.bp = fsub <2 x double> %i.g, %i.b
  %i.bq = shl i32 %3, 1
  %i.br = uitofp i32 %i.bq to double
  %i.bs = uitofp nneg i32 %2 to double
  %i.bt = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fadd <2 x double> %i.bp, %i.bu
  %i.bw = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fdiv <2 x double> %i.bv, %i.bx          ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  %i.ca = tail call double @llvm.ceil.f64(double %i.bz)
  %i.cb = fptosi double %i.ca to i32              ; 2 uses
  %i.cc = extractelement <2 x double> %i.by, i64 1
  %i.cd = tail call double @llvm.ceil.f64(double %i.cc)
  %i.ce = fptosi double %i.cd to i32              ; 2 uses
  %i.cf = add nsw i32 %i.ce, %i.cb
  store i32 %i.cf, ptr %1, align 8, !tbaa !97
  %i.cg = load i8, ptr @Verbose, align 1, !tbaa !30
  %i.ch = icmp ugt i8 %i.cg, 2
  br i1 %i.ch, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %._crit_edge77
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.cj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.23, ptr noundef %6, i32 noundef %i.bn, i32 noundef %i.cb, i32 noundef %i.ce) #20 ; 0 uses
  %i.ck = load i32, ptr %i.bo, align 8, !tbaa !96
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.o ] ; 2 uses
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.cn = load ptr, ptr %i.bm, align 8, !tbaa !95
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !98
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !99
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.24, double noundef %i.cp, double noundef %i.cr) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = load i32, ptr %i.bo, align 8, !tbaa !96
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %.lr.ph, label %.loopexit, !llvm.loop !177

.loopexit:                                        ; preds = %.lr.ph, %bb.o, %._crit_edge77
  tail call void @freePS(ptr noundef %i.l) #19
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @cmpf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70
  %i.b = load ptr, ptr %1, align 8, !tbaa !70
  %i.c = load i32, ptr %i.b, align 8, !tbaa !97
  %i.d = load i32, ptr %i.a, align 8, !tbaa !97
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.d)
  ret i32 %.0
}

declare ptr @newPS() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @placeGraph(i64 noundef range(i64 0, -1) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 1, -2147483648) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.b ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !28 ; 3 uses
  %i.e = load <2 x double>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !28 ; 3 uses
  %i.f = icmp eq i64 %0, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fsub <2 x double> %i.e, %i.d
  %i.h = shl i32 %5, 1
  %i.i = uitofp i32 %i.h to double
  %i.j = uitofp nneg i32 %4 to double
  %i.k = insertelement <2 x double> poison, double %i.i, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fadd <2 x double> %i.g, %i.l
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fdiv <2 x double> %i.m, %i.o             ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 0
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %i.s = fptosi double %i.r to i32
  %i.t = extractelement <2 x double> %i.p, i64 1
  %i.u = tail call double @llvm.ceil.f64(double %i.t)
  %i.v = fptosi double %i.u to i32
  %i.w = sdiv i32 %i.s, -2
  %i.x = sdiv i32 %i.v, -2
  %i.y = tail call fastcc i32 @fits(i32 noundef %i.w, i32 noundef %i.x, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = tail call fastcc i32 @fits(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not137 = icmp eq i32 %i.z, 0
  br i1 %.not137, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %foldExtExtBinop = fsub <2 x double> %i.e, %i.d
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ab = tail call double @llvm.ceil.f64(double %i.aa)
  %foldExtExtBinop260 = fsub <2 x double> %i.e, %i.d
  %i.ac = extractelement <2 x double> %foldExtExtBinop260, i64 1
  %i.ad = tail call double @llvm.ceil.f64(double %i.ac)
  %i.ae = fcmp ult double %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph186.preheader, label %.preheader165

.preheader165:                                    ; preds = %bb.d, %._crit_edge
  %.0127 = phi i32 [ %i.at, %._crit_edge ], [ 1, %bb.d ] ; 8 uses
  %i.af = sub nsw i32 0, %.0127                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader165, %bb.f
  %.0130174 = phi i32 [ 0, %.preheader165 ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ag = tail call fastcc i32 @fits(i32 noundef %.0130174, i32 noundef %i.af, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not147 = icmp eq i32 %i.ag, 0
  br i1 %.not147, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ah = add nuw nsw i32 %.0130174, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %.0127
  br i1 %exitcond.not, label %.lr.ph, label %bb.e, !llvm.loop !178

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.0128175 = phi i32 [ %i.aj, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.ai = tail call fastcc i32 @fits(i32 noundef %.0127, i32 noundef %.0128175, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not146 = icmp eq i32 %i.ai, 0
  br i1 %.not146, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.aj = add i32 %.0128175, 1                    ; 2 uses
  %exitcond218.not = icmp eq i32 %i.aj, %.0127
  br i1 %exitcond218.not, label %.lr.ph177, label %.lr.ph, !llvm.loop !179

.lr.ph177:                                        ; preds = %bb.g, %bb.h
  %.1131176 = phi i32 [ %i.al, %bb.h ], [ %.0127, %bb.g ] ; 3 uses
  %i.ak = tail call fastcc i32 @fits(i32 noundef %.1131176, i32 noundef %.0127, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not145 = icmp eq i32 %i.ak, 0
  br i1 %.not145, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph177
  %i.al = add nsw i32 %.1131176, -1               ; 4 uses
  %i.am = icmp sgt i32 %i.al, %i.af
  br i1 %i.am, label %.lr.ph177, label %.lr.ph180, !llvm.loop !180

.preheader156:                                    ; preds = %bb.i
  %i.an = icmp slt i32 %.1131176, 1
  br i1 %i.an, label %.lr.ph183, label %._crit_edge

.lr.ph180:                                        ; preds = %bb.h, %bb.i
  %.1129179 = phi i32 [ %i.ap, %bb.i ], [ %.0127, %bb.h ] ; 2 uses
  %i.ao = tail call fastcc i32 @fits(i32 noundef %i.al, i32 noundef %.1129179, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not144 = icmp eq i32 %i.ao, 0
  br i1 %.not144, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph180
  %i.ap = add nsw i32 %.1129179, -1               ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, %i.af
  br i1 %i.aq, label %.lr.ph180, label %.preheader156, !llvm.loop !181

bb.j:                                             ; preds = %.lr.ph183
  %i.ar = add nsw i32 %.2132182, 1                ; 2 uses
  %exitcond219.not = icmp eq i32 %i.ar, 0
  br i1 %exitcond219.not, label %._crit_edge, label %.lr.ph183, !llvm.loop !182

.lr.ph183:                                        ; preds = %.preheader156, %bb.j
  %.2132182 = phi i32 [ %i.ar, %bb.j ], [ %i.al, %.preheader156 ] ; 2 uses
  %i.as = tail call fastcc i32 @fits(i32 noundef %.2132182, i32 noundef %i.ap, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not143 = icmp eq i32 %i.as, 0
  br i1 %.not143, label %bb.j, label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %.preheader156
  %i.at = add nuw nsw i32 %.0127, 1
  br label %.preheader165

.lr.ph186.preheader:                              ; preds = %bb.d, %._crit_edge199
  %.1 = phi i32 [ %i.bf, %._crit_edge199 ], [ 1, %bb.d ] ; 8 uses
  %7 = sub nsw i32 0, %.1                         ; 4 uses
  br label %.lr.ph186.preheader.a

.lr.ph186.preheader.a:                            ; preds = %.lr.ph186.preheader, %bb.k
  %.1.a = phi i32 [ %8, %bb.k ], [ 0, %.lr.ph186.preheader ] ; 3 uses
  %i.au = tail call fastcc i32 @fits(i32 noundef %7, i32 noundef %.1.a, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not142.peel = icmp eq i32 %i.au, 0
  br i1 %.not142.peel, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph186.preheader.a
  %8 = add nsw i32 %.1.a, -1                      ; 5 uses
  %9 = icmp samesign ugt i32 %8, %7
  br i1 %9, label %.lr.ph186.preheader.a, label %.lr.ph189, !llvm.loop !183

.lr.ph186:                                        ; preds = %bb.l
  %.not236 = icmp sgt i32 %.1.a, %.1
  br i1 %.not236, label %.lr.ph195.preheader, label %.lr.ph192

.lr.ph189:                                        ; preds = %bb.k, %bb.l
  %.3133188 = phi i32 [ %i.aw, %bb.l ], [ %7, %bb.k ] ; 2 uses
  %i.av = tail call fastcc i32 @fits(i32 noundef %.3133188, i32 noundef %8, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not141 = icmp eq i32 %i.av, 0
  br i1 %.not141, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph189
  %i.aw = add i32 %.3133188, 1                    ; 2 uses
  %exitcond220.not = icmp eq i32 %i.aw, %.1
  br i1 %exitcond220.not, label %.lr.ph186, label %.lr.ph189, !llvm.loop !184

.lr.ph195.preheader:                              ; preds = %bb.m, %.lr.ph186
  %.3.lcssa = phi i32 [ %8, %.lr.ph186 ], [ %.1, %bb.m ] ; 3 uses
  br label %.lr.ph195

.lr.ph192:                                        ; preds = %.lr.ph186, %bb.m
  %.3191 = phi i32 [ %i.ay, %bb.m ], [ %8, %.lr.ph186 ] ; 2 uses
  %i.ax = tail call fastcc i32 @fits(i32 noundef %.1, i32 noundef %.3191, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not140 = icmp eq i32 %i.ax, 0
  br i1 %.not140, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph192
  %i.ay = add i32 %.3191, 1                       ; 2 uses
  %exitcond221.not = icmp eq i32 %i.ay, %.1
  br i1 %exitcond221.not, label %.lr.ph195.preheader, label %.lr.ph192, !llvm.loop !185

.preheader:                                       ; preds = %bb.n
  %10 = icmp sgt i32 %.3.lcssa, 0
  br i1 %10, label %.lr.ph198, label %._crit_edge199

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %bb.n
  %.4134194 = phi i32 [ %i.ba, %bb.n ], [ %.1, %.lr.ph195.preheader ] ; 2 uses
  %i.az = tail call fastcc i32 @fits(i32 noundef %.4134194, i32 noundef %.3.lcssa, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not139 = icmp eq i32 %i.az, 0
  br i1 %.not139, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph195
  %i.ba = add nsw i32 %.4134194, -1               ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, %7
  br i1 %i.bb, label %.lr.ph195, label %.preheader, !llvm.loop !186

bb.o:                                             ; preds = %.lr.ph198
  %i.bc = add nsw i32 %.4197, -1
  %i.bd = icmp sgt i32 %.4197, 1
  br i1 %i.bd, label %.lr.ph198, label %._crit_edge199, !llvm.loop !187

.lr.ph198:                                        ; preds = %.preheader, %bb.o
  %.4197 = phi i32 [ %i.bc, %bb.o ], [ %.3.lcssa, %.preheader ] ; 3 uses
  %i.be = tail call fastcc i32 @fits(i32 noundef %i.ba, i32 noundef %.4197, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not138 = icmp eq i32 %i.be, 0
  br i1 %.not138, label %bb.o, label %.loopexit

._crit_edge199:                                   ; preds = %bb.o, %.preheader
  %i.bf = add nuw nsw i32 %.1, 1
  br label %.lr.ph186.preheader

.loopexit:                                        ; preds = %bb.e, %.lr.ph, %.lr.ph177, %.lr.ph180, %.lr.ph183, %.lr.ph186.preheader.a, %.lr.ph189, %.lr.ph192, %.lr.ph195, %.lr.ph198, %bb.c, %bb.b
  ret void
}

declare void @freePS(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

declare void @addPS(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @pointsOf(ptr noundef) local_unnamed_addr #2

declare i32 @sizeOf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #2

declare { double, double } @coord(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fillEdge(ptr nofree noundef nonnull readonly captures(none) %0, double %1, double %2, ptr noundef %3, double noundef %4, double noundef %5, i32 noundef range(i32 1, -2147483648) %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  br i1 %7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !156
  %.not158 = icmp eq i64 %i.f, 0
  br i1 %.not158, label %.loopexit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader
  %i.g = uitofp nneg i32 %6 to double
  %i.h = insertelement <2 x double> poison, double %4, i64 0
  %i.i = insertelement <2 x double> %i.h, double %5, i64 1 ; 4 uses
  %i.j = insertelement <2 x double> poison, double %i.g, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load i32, ptr %0, align 8
  %i.m = and i32 %i.l, 3
  %i.n = icmp eq i32 %i.m, 2
  %i.o = select i1 %i.n, i64 56, i64 -8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.r = tail call { double, double } @coord(ptr noundef %i.q) #19 ; 2 uses
  %i.s = extractvalue { double, double } %i.r, 0
  %i.t = extractvalue { double, double } %i.r, 1
  %i.u = fadd double %4, %i.s                     ; 3 uses
  %i.v = fadd double %5, %i.t                     ; 3 uses
  %i.w = fcmp ult double %i.u, 0.000000e+00
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = uitofp nneg i32 %6 to double
  %i.y = fdiv double %i.u, %i.x
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = fadd double %i.u, 1.000000e+00
  %i.aa = uitofp nneg i32 %6 to double
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fadd double %i.ab, -1.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi double [ %i.y, %bb.d ], [ %i.ac, %bb.e ]
  %i.ae = fcmp ult double %i.v, 0.000000e+00
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = uitofp nneg i32 %6 to double
  %i.ag = fdiv double %i.v, %i.af
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = fadd double %i.v, 1.000000e+00
  %i.ai = uitofp nneg i32 %6 to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = fadd double %i.aj, -1.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = phi double [ %i.ag, %bb.g ], [ %i.ak, %bb.h ]
  tail call fastcc void @fillLine(double %1, double %2, double %i.ad, double %i.al, ptr noundef %3)
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph157, %bb.q
  %i.am = phi ptr [ %i.d, %.lr.ph157 ], [ %i.el, %bb.q ]
  %.0156 = phi i64 [ 0, %.lr.ph157 ], [ %i.ei, %bb.q ] ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !159
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %.0156 ; 7 uses
  %.sroa.078.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !160 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !123 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !115
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !115
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.ap = load <2 x double>, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !28
  %.not148 = icmp eq i32 %.sroa.8.0.copyload, 0
  br i1 %.not148, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.sroa.17.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %.sroa.078.0.copyload, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.078.0.copyload, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink = phi i64 [ 24, %bb.l ], [ 8, %bb.k ]
  %.sroa.17.0.in = phi ptr [ %.sroa.17.0..sroa_idx69, %bb.l ], [ %.sroa.11.0..sroa_idx, %bb.k ]
  %.sroa.057.0.in = phi ptr [ %.sroa.078.0.copyload, %bb.l ], [ %.sroa.10.0..sroa_idx, %bb.k ]
  %.sroa.03.0.in = phi ptr [ %i.aq, %bb.l ], [ %.sroa.078.0.copyload, %bb.k ]
  %.0127 = phi i64 [ 2, %bb.l ], [ 1, %bb.k ]     ; 2 uses
  %.sroa.37.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %.sroa.078.0.copyload, i64 %.sink
  %.sroa.03.0 = load double, ptr %.sroa.03.0.in, align 8, !tbaa !28
  %.sroa.37.0 = load double, ptr %.sroa.37.0..sroa_idx28, align 8, !tbaa !28
  %.sroa.057.0 = load double, ptr %.sroa.057.0.in, align 8, !tbaa !28
  %.sroa.17.0 = load double, ptr %.sroa.17.0.in, align 8, !tbaa !28
  %i.ar = insertelement <2 x double> poison, double %.sroa.057.0, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %.sroa.17.0, i64 1
  %i.at = fadd <2 x double> %i.i, %i.as           ; 3 uses
  %i.au = fcmp ult <2 x double> %i.at, zeroinitializer
  %i.av = fdiv <2 x double> %i.at, %i.k
  %i.aw = fadd <2 x double> %i.at, splat (double 1.000000e+00)
  %i.ax = fdiv <2 x double> %i.aw, %i.k
  %i.ay = fadd <2 x double> %i.ax, splat (double -1.000000e+00)
  %i.az = select <2 x i1> %i.au, <2 x double> %i.ay, <2 x double> %i.av ; 2 uses
  %i.ba = insertelement <2 x double> poison, double %.sroa.03.0, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %.sroa.37.0, i64 1
  %i.bc = fadd <2 x double> %i.i, %i.bb           ; 3 uses
  %i.bd = fcmp ult <2 x double> %i.bc, zeroinitializer
  %i.be = fdiv <2 x double> %i.bc, %i.k
  %i.bf = fadd <2 x double> %i.bc, splat (double 1.000000e+00)
  %i.bg = fdiv <2 x double> %i.bf, %i.k
  %i.bh = fadd <2 x double> %i.bg, splat (double -1.000000e+00)
  %i.bi = select <2 x i1> %i.bd, <2 x double> %i.bh, <2 x double> %i.be ; 3 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0 ; 2 uses
  %i.bk = extractelement <2 x double> %i.bi, i64 1 ; 2 uses
  %i.bl = extractelement <2 x double> %i.az, i64 0
  %i.bm = extractelement <2 x double> %i.az, i64 1
  tail call fastcc void @fillLine(double %i.bl, double %i.bm, double %i.bj, double %i.bk, ptr noundef %3)
  %i.bn = icmp ult i64 %.0127, %.sroa.7.0.copyload
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %fillLine.exit
  %.1154 = phi i64 [ %i.dt, %fillLine.exit ], [ %.0127, %bb.m ] ; 2 uses
  %.sroa.03.1153 = phi double [ %i.du, %fillLine.exit ], [ %i.bj, %bb.m ]
  %.sroa.37.1152 = phi double [ %i.dv, %fillLine.exit ], [ %i.bk, %bb.m ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.078.0.copyload, i64 %.1154
  %i.bp = load <2 x double>, ptr %i.bo, align 8, !tbaa !28
  %i.bq = fadd <2 x double> %i.i, %i.bp           ; 3 uses
  %i.br = fcmp ult <2 x double> %i.bq, zeroinitializer
  %i.bs = fdiv <2 x double> %i.bq, %i.k
  %i.bt = fadd <2 x double> %i.bq, splat (double 1.000000e+00)
  %i.bu = fdiv <2 x double> %i.bt, %i.k
  %i.bv = fadd <2 x double> %i.bu, splat (double -1.000000e+00)
  %i.bw = select <2 x i1> %i.br, <2 x double> %i.bv, <2 x double> %i.bs ; 5 uses
  %i.bx = insertelement <2 x double> %i.bw, double %.sroa.03.1153, i64 1 ; 2 uses
  %i.by = fcmp ult <2 x double> %i.bx, zeroinitializer
  %i.bz = select <2 x i1> %i.by, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.ca = fadd <2 x double> %i.bx, %i.bz
  %i.cb = fptosi <2 x double> %i.ca to <2 x i32>  ; 2 uses
  %i.cc = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = insertelement <2 x double> %i.cc, double %.sroa.37.1152, i64 1 ; 2 uses
  %i.ce = fcmp ult <2 x double> %i.cd, zeroinitializer
  %i.cf = select <2 x i1> %i.ce, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.cg = fadd <2 x double> %i.cd, %i.cf
  %i.ch = fptosi <2 x double> %i.cg to <2 x i32>  ; 2 uses
  %i.ci = extractelement <2 x i32> %i.cb, i64 0   ; 3 uses
  %i.cj = extractelement <2 x i32> %i.cb, i64 1   ; 5 uses
  %i.ck = sub nsw i32 %i.ci, %i.cj                ; 2 uses
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 true)
  %i.cm = shl nuw i32 %i.cl, 1                    ; 5 uses
  %.inv.i.i = icmp slt i32 %i.ck, 1
  %i.cn = select i1 %.inv.i.i, i32 -1, i32 1      ; 2 uses
  %i.co = extractelement <2 x i32> %i.ch, i64 0   ; 3 uses
  %i.cp = extractelement <2 x i32> %i.ch, i64 1   ; 5 uses
  %i.cq = sub nsw i32 %i.co, %i.cp                ; 2 uses
  %i.cr = tail call i32 @llvm.abs.i32(i32 %i.cq, i1 true)
  %i.cs = shl nuw i32 %i.cr, 1                    ; 5 uses
  %.inv.i74.i = icmp slt i32 %i.cq, 1
  %i.ct = select i1 %.inv.i74.i, i32 -1, i32 1    ; 2 uses
  %i.cu = icmp sgt i32 %i.cm, %i.cs
  %i.cv = sitofp i32 %i.cj to double
  %i.cw = sitofp i32 %i.cp to double
  tail call void @addPS(ptr noundef %3, double noundef %i.cv, double noundef %i.cw) #19
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.cx = icmp eq i32 %i.cj, %i.ci
  br i1 %i.cx, label %fillLine.exit, label %.lr.ph83.preheader.i

.lr.ph83.preheader.i:                             ; preds = %bb.n
  %i.cy = ashr exact i32 %i.cm, 1
  %i.cz = sub nsw i32 %i.cs, %i.cy
  br label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %.lr.ph83.i, %.lr.ph83.preheader.i
  %.082.i = phi i32 [ %.1.i, %.lr.ph83.i ], [ %i.cp, %.lr.ph83.preheader.i ]
  %.05381.i = phi i32 [ %i.dd, %.lr.ph83.i ], [ %i.cj, %.lr.ph83.preheader.i ]
  %.05680.i = phi i32 [ %i.de, %.lr.ph83.i ], [ %i.cz, %.lr.ph83.preheader.i ] ; 2 uses
  %i.da = icmp sgt i32 %.05680.i, -1              ; 2 uses
  %i.db = select i1 %i.da, i32 %i.cm, i32 0
  %i.dc = select i1 %i.da, i32 %i.ct, i32 0
  %.1.i = add nsw i32 %i.dc, %.082.i              ; 2 uses
  %i.dd = add nsw i32 %.05381.i, %i.cn            ; 3 uses
  %.157.i = add i32 %.05680.i, %i.cs
  %i.de = sub i32 %.157.i, %i.db
  %i.df = sitofp i32 %i.dd to double
  %i.dg = sitofp i32 %.1.i to double
  tail call void @addPS(ptr noundef %3, double noundef %i.df, double noundef %i.dg) #19
  %i.dh = icmp eq i32 %i.dd, %i.ci
  br i1 %i.dh, label %fillLine.exit, label %.lr.ph83.i

bb.o:                                             ; preds = %.lr.ph
  %i.di = icmp eq i32 %i.cp, %i.co
  br i1 %i.di, label %fillLine.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.dj = ashr exact i32 %i.cs, 1
  %i.dk = sub nsw i32 %i.cm, %i.dj
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.279.i = phi i32 [ %i.do, %.lr.ph.i ], [ %i.cp, %.lr.ph.preheader.i ]
  %.15478.i = phi i32 [ %.255.i, %.lr.ph.i ], [ %i.cj, %.lr.ph.preheader.i ]
  %.25877.i = phi i32 [ %i.dp, %.lr.ph.i ], [ %i.dk, %.lr.ph.preheader.i ] ; 2 uses
  %i.dl = icmp sgt i32 %.25877.i, -1              ; 2 uses
  %i.dm = select i1 %i.dl, i32 %i.cs, i32 0
  %i.dn = select i1 %i.dl, i32 %i.cn, i32 0
  %.255.i = add nsw i32 %i.dn, %.15478.i          ; 2 uses
  %i.do = add nsw i32 %.279.i, %i.ct              ; 3 uses
  %.3.i = add i32 %.25877.i, %i.cm
  %i.dp = sub i32 %.3.i, %i.dm
  %i.dq = sitofp i32 %.255.i to double
  %i.dr = sitofp i32 %i.do to double
  tail call void @addPS(ptr noundef %3, double noundef %i.dq, double noundef %i.dr) #19
  %i.ds = icmp eq i32 %i.do, %i.co
  br i1 %i.ds, label %fillLine.exit, label %.lr.ph.i

fillLine.exit:                                    ; preds = %.lr.ph.i, %.lr.ph83.i, %bb.n, %bb.o
  %i.dt = add i64 %.1154, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.dt, %.sroa.7.0.copyload
  %i.du = extractelement <2 x double> %i.bw, i64 0
  %i.dv = extractelement <2 x double> %i.bw, i64 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !188

._crit_edge:                                      ; preds = %fillLine.exit, %bb.m
  %i.dw = phi <2 x double> [ %i.bi, %bb.m ], [ %i.bw, %fillLine.exit ] ; 2 uses
  %.not149 = icmp eq i32 %.sroa.9.0.copyload, 0
  br i1 %.not149, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dx = fadd <2 x double> %i.i, %i.ap           ; 3 uses
  %i.dy = fcmp ult <2 x double> %i.dx, zeroinitializer
  %i.dz = fdiv <2 x double> %i.dx, %i.k
  %i.ea = fadd <2 x double> %i.dx, splat (double 1.000000e+00)
  %i.eb = fdiv <2 x double> %i.ea, %i.k
  %i.ec = fadd <2 x double> %i.eb, splat (double -1.000000e+00)
  %i.ed = select <2 x i1> %i.dy, <2 x double> %i.ec, <2 x double> %i.dz ; 2 uses
  %i.ee = extractelement <2 x double> %i.dw, i64 0
  %i.ef = extractelement <2 x double> %i.dw, i64 1
  %i.eg = extractelement <2 x double> %i.ed, i64 0
  %i.eh = extractelement <2 x double> %i.ed, i64 1
  tail call fastcc void @fillLine(double %i.ee, double %i.ef, double %i.eg, double %i.eh, ptr noundef %3)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %i.ei = add nuw i64 %.0156, 1                   ; 2 uses
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !155 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !156
  %i.eo = icmp ult i64 %i.ei, %i.en
  br i1 %i.eo, label %bb.j, label %.loopexit, !llvm.loop !189

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fillLine(double %0, double %1, double %2, double %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = fcmp ult double %0, 0.000000e+00
  %.in.v = select i1 %i.a, double -5.000000e-01, double 5.000000e-01
  %.in = fadd double %0, %.in.v
  %i.b = fptosi double %.in to i32                ; 5 uses
  %i.c = fcmp ult double %1, 0.000000e+00
  %.in71.v = select i1 %i.c, double -5.000000e-01, double 5.000000e-01
  %.in71 = fadd double %1, %.in71.v
  %i.d = fptosi double %.in71 to i32              ; 5 uses
  %i.e = fcmp ult double %2, 0.000000e+00
  %.in72.v = select i1 %i.e, double -5.000000e-01, double 5.000000e-01
  %.in72 = fadd double %2, %.in72.v
  %i.f = fptosi double %.in72 to i32              ; 3 uses
  %i.g = fcmp ult double %3, 0.000000e+00
  %.in73.v = select i1 %i.g, double -5.000000e-01, double 5.000000e-01
  %.in73 = fadd double %3, %.in73.v
  %i.h = fptosi double %.in73 to i32              ; 3 uses
  %i.i = sub nsw i32 %i.f, %i.b                   ; 2 uses
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.k = shl nuw i32 %i.j, 1                      ; 5 uses
  %.inv.i = icmp slt i32 %i.i, 1
  %i.l = select i1 %.inv.i, i32 -1, i32 1         ; 2 uses
  %i.m = sub nsw i32 %i.h, %i.d                   ; 2 uses
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true)
  %i.o = shl nuw i32 %i.n, 1                      ; 5 uses
  %.inv.i74 = icmp slt i32 %i.m, 1
  %i.p = select i1 %.inv.i74, i32 -1, i32 1       ; 2 uses
  %i.q = icmp sgt i32 %i.k, %i.o
  %i.r = sitofp i32 %i.b to double
  %i.s = sitofp i32 %i.d to double
  tail call void @addPS(ptr noundef %4, double noundef %i.r, double noundef %i.s) #19
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i32 %i.b, %i.f
  br i1 %i.t, label %.loopexit, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %bb.b
  %i.u = ashr exact i32 %i.k, 1
  %i.v = sub nsw i32 %i.o, %i.u
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83.preheader, %.lr.ph83
  %.082 = phi i32 [ %.1, %.lr.ph83 ], [ %i.d, %.lr.ph83.preheader ]
  %.05381 = phi i32 [ %i.z, %.lr.ph83 ], [ %i.b, %.lr.ph83.preheader ]
  %.05680 = phi i32 [ %i.aa, %.lr.ph83 ], [ %i.v, %.lr.ph83.preheader ] ; 2 uses
  %i.w = icmp sgt i32 %.05680, -1                 ; 2 uses
  %i.x = select i1 %i.w, i32 %i.k, i32 0
  %i.y = select i1 %i.w, i32 %i.p, i32 0
  %.1 = add nsw i32 %.082, %i.y                   ; 2 uses
  %i.z = add nsw i32 %.05381, %i.l                ; 3 uses
  %.157 = add i32 %.05680, %i.o
  %i.aa = sub i32 %.157, %i.x
  %i.ab = sitofp i32 %i.z to double
  %i.ac = sitofp i32 %.1 to double
  tail call void @addPS(ptr noundef %4, double noundef %i.ab, double noundef %i.ac) #19
  %i.ad = icmp eq i32 %i.z, %i.f
  br i1 %i.ad, label %.loopexit, label %.lr.ph83

bb.c:                                             ; preds = %bb.a
  %i.ae = icmp eq i32 %i.d, %i.h
  br i1 %i.ae, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.af = ashr exact i32 %i.o, 1
  %i.ag = sub nsw i32 %i.k, %i.af
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.279 = phi i32 [ %i.ak, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %.15478 = phi i32 [ %.255, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %.25877 = phi i32 [ %i.al, %.lr.ph ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %i.ah = icmp sgt i32 %.25877, -1                ; 2 uses
  %i.ai = select i1 %i.ah, i32 %i.o, i32 0
  %i.aj = select i1 %i.ah, i32 %i.l, i32 0
  %.255 = add nsw i32 %i.aj, %.15478              ; 2 uses
  %i.ak = add nsw i32 %.279, %i.p                 ; 3 uses
  %.3 = add i32 %.25877, %i.k
  %i.al = sub i32 %.3, %i.ai
  %i.am = sitofp i32 %.255 to double
  %i.an = sitofp i32 %i.ak to double
  tail call void @addPS(ptr noundef %4, double noundef %i.am, double noundef %i.an) #19
  %i.ao = icmp eq i32 %i.ak, %i.h
  br i1 %i.ao, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph83, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

declare void @insertPS(ptr noundef, double, double) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @fits(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i32 noundef range(i32 1, -2147483648) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !96   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.f = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.g = insertelement <2 x i32> %i.f, i32 %1, i64 1
  %i.h = sitofp <2 x i32> %i.g to <2 x double>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.04250 = phi ptr [ %i.e, %.lr.ph ], [ %i.n, %bb.c ] ; 2 uses
  %.04649 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.c ]
  %i.i = load <2 x double>, ptr %.04250, align 8, !tbaa !28
  %i.j = fadd <2 x double> %i.i, %i.h             ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = extractelement <2 x double> %i.j, i64 1
  %i.m = tail call i32 @inPS(ptr noundef %3, double %i.k, double %i.l) #19
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.04250, i64 16
  %i.o = add nuw nsw i32 %.04649, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !190

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.q
  %i.s = mul nsw i32 %5, %0
  %i.t = mul nsw i32 %5, %1
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load <2 x double>, ptr %i.r, align 8, !tbaa !28
  %i.w = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.v)
  %i.x = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %i.t, i64 1
  %i.z = sitofp <2 x i32> %i.y to <2 x double>
  %i.aa = fsub <2 x double> %i.z, %i.w
  store <2 x double> %i.aa, ptr %4, align 8, !tbaa !28
  br i1 %i.d, label %.lr.ph54, label %._crit_edge55

.lr.ph54:                                         ; preds = %._crit_edge
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.ac = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %1, i64 1
  %i.ae = sitofp <2 x i32> %i.ad to <2 x double>
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph54, %bb.d
  %.24452 = phi ptr [ %i.ab, %.lr.ph54 ], [ %i.aj, %bb.d ] ; 2 uses
  %.14751 = phi i32 [ 0, %.lr.ph54 ], [ %i.ak, %bb.d ]
  %i.af = load <2 x double>, ptr %.24452, align 8, !tbaa !28
  %i.ag = fadd <2 x double> %i.af, %i.ae          ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  tail call void @insertPS(ptr noundef %3, double %i.ah, double %i.ai) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %.24452, i64 16
  %i.ak = add nuw nsw i32 %.14751, 1              ; 2 uses
  %exitcond56.not = icmp eq i32 %i.ak, %i.c
  br i1 %exitcond56.not, label %._crit_edge55, label %bb.d, !llvm.loop !191

._crit_edge55:                                    ; preds = %bb.d, %._crit_edge
  %i.al = load i8, ptr @Verbose, align 1, !tbaa !30
  %i.am = icmp ugt i8 %i.al, 1
  br i1 %i.am, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge55
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.ao = load double, ptr %4, align 8, !tbaa !98
  %i.ap = load double, ptr %i.u, align 8, !tbaa !99
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.26, i32 noundef %i.c, i32 noundef %0, i32 noundef %1, double noundef %i.ao, double noundef %i.ap) #20 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge55, %bb.e
  %.2 = phi i32 [ 1, %._crit_edge55 ], [ 1, %bb.e ], [ 0, %bb.b ]
  ret i32 %.2
}

declare i32 @inPS(ptr noundef, double, double) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #12 {
bb.a:
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @ucmpf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70
  %i.b = load ptr, ptr %1, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !118
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !115
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.f, i32 %i.j)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @acmpf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !192
  %i.e = load double, ptr %i.a, align 8, !tbaa !193
  %i.f = fadd double %i.d, %i.e                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !192
  %i.i = load double, ptr %i.b, align 8, !tbaa !193
  %i.j = fadd double %i.h, %i.i                   ; 2 uses
  %i.k = fcmp olt double %i.f, %i.j
  %i.l = fcmp ogt double %i.f, %i.j
  %. = sext i1 %i.l to i32
  %.0 = select i1 %i.k, i32 1, i32 %.
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gv_sort_compar_wrapper(ptr noundef %0, ptr noundef %1) #15 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_compar)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_arg)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = tail call i32 %i.b(ptr noundef %0, ptr noundef %1, ptr noundef %i.d) #19
  ret i32 %i.e
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.round.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { cold }
attributes #25 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 16}
!9 = !{!"", !10, i64 0, !5, i64 4, !5, i64 8, !11, i64 12, !5, i64 16, !12, i64 24, !14, i64 32, !5, i64 40}
!10 = !{!"float", !6, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{!"p1 _Bool", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!9, !12, i64 24}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8Agraph_s", !13, i64 0}
!20 = !{!11, !11, i64 0}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!24, !27, i64 16}
!24 = !{!"Agobj_s", !25, i64 0, !27, i64 16}
!25 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !26, i64 8}
!26 = !{!"long", !6, i64 0}
!27 = !{!"p1 _ZTS7Agrec_s", !13, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !6, i64 0}
!30 = !{!6, !6, i64 0}
!31 = !{!32, !29, i64 32}
!32 = !{!"Agraphinfo_t", !33, i64 0, !35, i64 16, !36, i64 24, !37, i64 32, !6, i64 64, !6, i64 128, !6, i64 129, !11, i64 130, !6, i64 131, !5, i64 132, !29, i64 136, !29, i64 144, !39, i64 152, !13, i64 160, !40, i64 168, !13, i64 176, !41, i64 184, !5, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !44, i64 224, !39, i64 232, !39, i64 234, !5, i64 236, !46, i64 240, !19, i64 248, !47, i64 256, !48, i64 264, !19, i64 272, !5, i64 280, !47, i64 288, !47, i64 296, !49, i64 304, !47, i64 320, !47, i64 328, !5, i64 336, !5, i64 340, !11, i64 344, !6, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !47, i64 360, !47, i64 368, !47, i64 376, !41, i64 384, !11, i64 392, !6, i64 393, !6, i64 394, !6, i64 395, !11, i64 396}
!33 = !{!"Agrec_s", !34, i64 0, !27, i64 8}
!34 = !{!"p1 omnipotent char", !13, i64 0}
!35 = !{!"p1 _ZTS8layout_t", !13, i64 0}
!36 = !{!"p1 _ZTS11textlabel_t", !13, i64 0}
!37 = !{!"", !38, i64 0, !38, i64 16}
!38 = !{!"pointf_s", !29, i64 0, !29, i64 8}
!39 = !{!"short", !6, i64 0}
!40 = !{!"p1 _ZTS5GVC_s", !13, i64 0}
!41 = !{!"p2 _ZTS8Agnode_s", !42, i64 0}
!42 = !{!"any p2 pointer", !13, i64 0}
!43 = !{!"p2 double", !42, i64 0}
!44 = !{!"p3 double", !45, i64 0}
!45 = !{!"any p3 pointer", !42, i64 0}
!46 = !{!"p2 _ZTS8Agraph_s", !42, i64 0}
!47 = !{!"p1 _ZTS8Agnode_s", !13, i64 0}
!48 = !{!"p1 _ZTS6rank_t", !13, i64 0}
!49 = !{!"nlist_t", !41, i64 0, !26, i64 8}
!50 = !{!32, !29, i64 40}
!51 = !{!32, !29, i64 48}
!52 = !{!32, !29, i64 56}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28}
!56 = !{!9, !5, i64 8}
!57 = distinct !{!57, !54}
!58 = !{!59, !26, i64 24}
!59 = !{!"", !5, i64 0, !60, i64 8, !5, i64 16, !26, i64 24}
!60 = !{!"p1 _ZTS8pointf_s", !13, i64 0}
!61 = !{!9, !11, i64 12}
!62 = !{!32, !5, i64 236}
!63 = !{!64, !13, i64 152}
!64 = !{!"Agnodeinfo_t", !33, i64 0, !65, i64 16, !13, i64 24, !38, i64 32, !29, i64 48, !29, i64 56, !37, i64 64, !29, i64 96, !29, i64 104, !29, i64 112, !29, i64 120, !29, i64 128, !36, i64 136, !36, i64 144, !13, i64 152, !6, i64 160, !6, i64 161, !11, i64 162, !6, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !66, i64 176, !29, i64 184, !6, i64 192, !11, i64 193, !47, i64 200, !47, i64 208, !6, i64 216, !26, i64 224, !6, i64 232, !6, i64 233, !6, i64 234, !47, i64 240, !47, i64 248, !67, i64 256, !67, i64 272, !67, i64 288, !67, i64 304, !67, i64 320, !19, i64 336, !5, i64 344, !47, i64 352, !5, i64 360, !5, i64 364, !29, i64 368, !67, i64 376, !67, i64 392, !67, i64 408, !67, i64 424, !69, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !6, i64 464}
!65 = !{!"p1 _ZTS10shape_desc", !13, i64 0}
!66 = !{!"p1 double", !13, i64 0}
!67 = !{!"elist", !68, i64 0, !26, i64 8}
!68 = !{!"p2 _ZTS8Agedge_s", !42, i64 0}
!69 = !{!"p1 _ZTS8Agedge_s", !13, i64 0}
!70 = !{!13, !13, i64 0}
!71 = distinct !{!71, !54}
!72 = !{!32, !46, i64 240}
!73 = distinct !{!73, !54}
!74 = distinct !{!74, !54}
!75 = !{!64, !19, i64 336}
!76 = distinct !{!76, !54}
!77 = distinct !{!77, !54}
!78 = !{!64, !29, i64 104}
!79 = !{!64, !29, i64 112}
!80 = !{!64, !29, i64 96}
!81 = distinct !{!81, !54}
!82 = distinct !{!82, !54}
!83 = distinct !{!83, !54}
!84 = !{!85, !47, i64 56}
!85 = !{!"Agedge_s", !24, i64 0, !86, i64 24, !86, i64 40, !47, i64 56}
!86 = !{!"dtlink_s_", !87, i64 0, !6, i64 8}
!87 = !{!"p1 _ZTS9dtlink_s_", !13, i64 0}
!88 = distinct !{!88, !54}
!89 = distinct !{!89, !54}
!90 = distinct !{!90, !54}
!91 = distinct !{!91, !54}
!92 = distinct !{!92, !54}
!93 = distinct !{!93, !54}
!94 = distinct !{!94, !54}
!95 = !{!59, !60, i64 8}
!96 = !{!59, !5, i64 16}
!97 = !{!59, !5, i64 0}
!98 = !{!38, !29, i64 0}
!99 = !{!38, !29, i64 8}
!100 = distinct !{!100, !54}
!101 = distinct !{!101, !54}
!102 = distinct !{!102, !54, !103, !104}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = distinct !{!105, !54, !104, !103}
!106 = distinct !{!106, !54}
!107 = distinct !{!107, !54}
!108 = distinct !{!108, !54}
!109 = distinct !{!109, !54}
!110 = distinct !{!110, !54}
!111 = distinct !{!111, !54}
!112 = distinct !{!112, !54}
!113 = !{!9, !5, i64 40}
!114 = !{!9, !14, i64 32}
!115 = !{!5, !5, i64 0}
!116 = distinct !{!116, !54}
!117 = !{!9, !5, i64 4}
!118 = !{!119, !26, i64 16}
!119 = !{!"", !29, i64 0, !29, i64 8, !26, i64 16}
!120 = distinct !{!120, !54, !103, !104}
!121 = distinct !{!121, !54}
!122 = distinct !{!122, !54, !104, !103}
!123 = !{!26, !26, i64 0}
!124 = distinct !{!124, !54}
!125 = distinct !{!125, !126}
!126 = !{!"llvm.loop.unroll.disable"}
!127 = distinct !{!127, !126}
!128 = distinct !{!128, !54}
!129 = distinct !{!129, !54}
!130 = distinct !{!130, !54}
!131 = distinct !{!131, !54, !103, !104}
!132 = distinct !{!132, !54}
!133 = distinct !{!133, !54, !104, !103}
!134 = distinct !{!134, !54}
!135 = distinct !{!135, !54}
!136 = distinct !{!136, !54}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !54, !103, !104}
!143 = distinct !{!143, !54, !103}
!144 = distinct !{!144, !54}
!145 = !{!64, !66, i64 176}
!146 = !{!64, !36, i64 144}
!147 = !{!148, !36, i64 120}
!148 = !{!"Agedgeinfo_t", !33, i64 0, !149, i64 16, !150, i64 24, !150, i64 72, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !6, i64 152, !6, i64 153, !6, i64 154, !6, i64 155, !6, i64 156, !69, i64 160, !13, i64 168, !29, i64 176, !29, i64 184, !151, i64 192, !6, i64 208, !11, i64 209, !39, i64 210, !5, i64 212, !5, i64 216, !5, i64 220, !39, i64 224, !5, i64 228, !69, i64 232}
!149 = !{!"p1 _ZTS7splines", !13, i64 0}
!150 = !{!"port", !38, i64 0, !29, i64 16, !13, i64 24, !11, i64 32, !11, i64 33, !11, i64 34, !11, i64 35, !6, i64 36, !6, i64 37, !34, i64 40}
!151 = !{!"Ppoly_t", !60, i64 0, !26, i64 8}
!152 = !{!148, !36, i64 144}
!153 = !{!148, !36, i64 128}
!154 = !{!148, !36, i64 136}
!155 = !{!148, !149, i64 16}
!156 = !{!157, !26, i64 8}
!157 = !{!"splines", !158, i64 0, !26, i64 8, !37, i64 16}
!158 = !{!"p1 _ZTS6bezier", !13, i64 0}
!159 = !{!157, !158, i64 0}
!160 = !{!60, !60, i64 0}
!161 = distinct !{!161, !54, !103, !104}
!162 = distinct !{!162, !54, !104, !103}
!163 = distinct !{!163, !54}
!164 = distinct !{!164, !54}
!165 = distinct !{!165, !54}
!166 = !{!32, !36, i64 24}
!167 = !{!168, !11, i64 105}
!168 = !{!"textlabel_t", !34, i64 0, !34, i64 8, !34, i64 16, !5, i64 24, !29, i64 32, !38, i64 40, !38, i64 56, !38, i64 72, !6, i64 88, !6, i64 104, !11, i64 105, !11, i64 106}
!169 = distinct !{!169, !54}
!170 = distinct !{!170, !54}
!171 = distinct !{!171, !54}
!172 = distinct !{!172, !54}
!173 = !{!9, !10, i64 0}
!174 = distinct !{!174, !54}
!175 = distinct !{!175, !54}
!176 = distinct !{!176, !54}
!177 = distinct !{!177, !54}
!178 = distinct !{!178, !54}
!179 = distinct !{!179, !54}
!180 = distinct !{!180, !54}
!181 = distinct !{!181, !54}
!182 = distinct !{!182, !54}
!183 = distinct !{!183, !54}
!184 = distinct !{!184, !54}
!185 = distinct !{!185, !54}
!186 = distinct !{!186, !54}
!187 = distinct !{!187, !54}
!188 = distinct !{!188, !54}
!189 = distinct !{!189, !54}
!190 = distinct !{!190, !54}
!191 = distinct !{!191, !54}
!192 = !{!119, !29, i64 8}
!193 = !{!119, !29, i64 0}
end_hunk_0
