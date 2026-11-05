Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/pack?download=true
inline.NumInlined: 51
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@genBox:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.o ] ; 2 uses
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cn = load ptr, ptr %i.bm, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !70
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !71
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.24, double noundef %i.cp, double noundef %i.cr) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = load i32, ptr %i.bo, align 8, !tbaa !68
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %.lr.ph, label %.loopexit, !llvm.loop !170

.loopexit:                                        ; preds = %.lr.ph, %bb.o, %._crit_edge77
  tail call void @freePS(ptr noundef %i.l) #19
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @cmpf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61
  %i.b = load ptr, ptr %1, align 8, !tbaa !61
  %i.c = load i32, ptr %i.b, align 8, !tbaa !69
  %i.d = load i32, ptr %i.a, align 8, !tbaa !69
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.d)
  ret i32 %.0
}

declare ptr @newPS() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @placeGraph(i64 noundef range(i64 0, -1) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 1, -2147483648) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52
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
  %foldExtExtBinop266 = fsub <2 x double> %i.e, %i.d
  %i.ac = extractelement <2 x double> %foldExtExtBinop266, i64 1
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
  br i1 %exitcond.not, label %.lr.ph, label %bb.e, !llvm.loop !171

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.0128175 = phi i32 [ %i.aj, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.ai = tail call fastcc i32 @fits(i32 noundef %.0127, i32 noundef %.0128175, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not146 = icmp eq i32 %i.ai, 0
  br i1 %.not146, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.aj = add i32 %.0128175, 1                    ; 2 uses
  %exitcond218.not = icmp eq i32 %i.aj, %.0127
  br i1 %exitcond218.not, label %.lr.ph177, label %.lr.ph, !llvm.loop !172

.lr.ph177:                                        ; preds = %bb.g, %bb.h
  %.1131176 = phi i32 [ %i.al, %bb.h ], [ %.0127, %bb.g ] ; 3 uses
  %i.ak = tail call fastcc i32 @fits(i32 noundef %.1131176, i32 noundef %.0127, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not145 = icmp eq i32 %i.ak, 0
  br i1 %.not145, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph177
  %i.al = add nsw i32 %.1131176, -1               ; 4 uses
  %i.am = icmp sgt i32 %i.al, %i.af
  br i1 %i.am, label %.lr.ph177, label %.lr.ph180, !llvm.loop !173

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
  br i1 %i.aq, label %.lr.ph180, label %.preheader156, !llvm.loop !174

bb.j:                                             ; preds = %.lr.ph183
  %i.ar = add nsw i32 %.2132182, 1                ; 2 uses
  %exitcond219.not = icmp eq i32 %i.ar, 0
  br i1 %exitcond219.not, label %._crit_edge, label %.lr.ph183, !llvm.loop !175

.lr.ph183:                                        ; preds = %.preheader156, %bb.j
  %.2132182 = phi i32 [ %i.ar, %bb.j ], [ %i.al, %.preheader156 ] ; 2 uses
  %i.as = tail call fastcc i32 @fits(i32 noundef %.2132182, i32 noundef %i.ap, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not143 = icmp eq i32 %i.as, 0
  br i1 %.not143, label %bb.j, label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %.preheader156
  %i.at = add nuw nsw i32 %.0127, 1
  br label %.preheader165

.lr.ph186.preheader:                              ; preds = %bb.d, %._crit_edge199
  %.1 = phi i32 [ %i.bi, %._crit_edge199 ], [ 1, %bb.d ] ; 8 uses
  %i.au = sub nsw i32 0, %.1                      ; 4 uses
  br label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %bb.k
  %.2184 = phi i32 [ %i.aw, %bb.k ], [ 0, %.lr.ph186.preheader ] ; 3 uses
  %i.av = tail call fastcc i32 @fits(i32 noundef %i.au, i32 noundef %.2184, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not142 = icmp eq i32 %i.av, 0
  br i1 %.not142, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph186
  %i.aw = add nsw i32 %.2184, -1                  ; 5 uses
  %i.ax = icmp samesign ugt i32 %i.aw, %i.au
  br i1 %i.ax, label %.lr.ph186, label %.lr.ph189, !llvm.loop !176

.preheader150:                                    ; preds = %bb.l
  %.not236 = icmp sgt i32 %.2184, %.1
  br i1 %.not236, label %.lr.ph195.preheader, label %.lr.ph192

.lr.ph189:                                        ; preds = %bb.k, %bb.l
  %.3133188 = phi i32 [ %i.az, %bb.l ], [ %i.au, %bb.k ] ; 2 uses
  %i.ay = tail call fastcc i32 @fits(i32 noundef %.3133188, i32 noundef %i.aw, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not141 = icmp eq i32 %i.ay, 0
  br i1 %.not141, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph189
  %i.az = add i32 %.3133188, 1                    ; 2 uses
  %exitcond220.not = icmp eq i32 %i.az, %.1
  br i1 %exitcond220.not, label %.preheader150, label %.lr.ph189, !llvm.loop !177

.lr.ph195.preheader:                              ; preds = %bb.m, %.preheader150
  %.3.lcssa = phi i32 [ %i.aw, %.preheader150 ], [ %.1, %bb.m ] ; 3 uses
  br label %.lr.ph195

.lr.ph192:                                        ; preds = %.preheader150, %bb.m
  %.3191 = phi i32 [ %i.bb, %bb.m ], [ %i.aw, %.preheader150 ] ; 2 uses
  %i.ba = tail call fastcc i32 @fits(i32 noundef %.1, i32 noundef %.3191, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not140 = icmp eq i32 %i.ba, 0
  br i1 %.not140, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph192
  %i.bb = add i32 %.3191, 1                       ; 2 uses
  %exitcond221.not = icmp eq i32 %i.bb, %.1
  br i1 %exitcond221.not, label %.lr.ph195.preheader, label %.lr.ph192, !llvm.loop !178

.preheader:                                       ; preds = %bb.n
  %7 = icmp sgt i32 %.3.lcssa, 0
  br i1 %7, label %.lr.ph198, label %._crit_edge199

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %bb.n
  %.4134194 = phi i32 [ %i.bd, %bb.n ], [ %.1, %.lr.ph195.preheader ] ; 2 uses
  %i.bc = tail call fastcc i32 @fits(i32 noundef %.4134194, i32 noundef %.3.lcssa, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not139 = icmp eq i32 %i.bc, 0
  br i1 %.not139, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph195
  %i.bd = add nsw i32 %.4134194, -1               ; 3 uses
  %i.be = icmp sgt i32 %i.bd, %i.au
  br i1 %i.be, label %.lr.ph195, label %.preheader, !llvm.loop !179

bb.o:                                             ; preds = %.lr.ph198
  %i.bf = add nsw i32 %.4197, -1
  %i.bg = icmp sgt i32 %.4197, 1
  br i1 %i.bg, label %.lr.ph198, label %._crit_edge199, !llvm.loop !180

.lr.ph198:                                        ; preds = %.preheader, %bb.o
  %.4197 = phi i32 [ %i.bf, %bb.o ], [ %.3.lcssa, %.preheader ] ; 3 uses
  %i.bh = tail call fastcc i32 @fits(i32 noundef %i.bd, i32 noundef %.4197, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  %.not138 = icmp eq i32 %i.bh, 0
  br i1 %.not138, label %bb.o, label %.loopexit

._crit_edge199:                                   ; preds = %bb.o, %.preheader
  %i.bi = add nuw nsw i32 %.1, 1
  br label %.lr.ph186.preheader

.loopexit:                                        ; preds = %bb.e, %.lr.ph, %.lr.ph177, %.lr.ph180, %.lr.ph183, %.lr.ph186, %.lr.ph189, %.lr.ph192, %.lr.ph195, %.lr.ph198, %bb.c, %bb.b
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !88
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !66
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
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %.0156 ; 7 uses
  %.sroa.078.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !90 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !80 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !76
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !76
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
end_hunk_0
