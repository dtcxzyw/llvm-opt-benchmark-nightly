Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioWriteBook?download=true
inline.NumInlined: 242
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.36 = private unnamed_addr constant [14 x i8] c"NumNets : %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"NumPins : %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"NetDegree\09:\09\09%d\09\09%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"i%s_input I\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"%s_%s_latch I : \00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"name I : \00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"%.2f %.2f\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"o%s_output O\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"%s_%s_latch O : \00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"name O : \00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"Core cell height(==site height) is %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [55 x i8] c"Total core cell width is %d giving an ave width of %f\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"  Area  :   %f\0A\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"  WS%%   :   %f\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"  AR    :   %f\0A\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"  Width :   %f\0A\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"  Height:   %f (%d rows)\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"  AR    :   %f\0A\0A\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"FS\00", align 1
@__const.Io_NtkWriteScl.rowOrients = private unnamed_addr constant [2 x ptr] [ptr @.str.57, ptr @.str.58], align 16
@.str.59 = private unnamed_addr constant [21 x i8] c"UCLA    scl    1.0\0A\0A\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"Numrows : %d\0A\0A\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"CoreRow Horizontal\0A\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c" Coordinate   : \09%d\0A\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c" Height       : \09%d\0A\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c" Sitewidth    : \09%d\0A\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c" Sitespacing  : \09%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c" Siteorient   : \09%s\0A\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c" Sitesymmetry : \09%c\0A\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c" SubrowOrigin : \09%d Numsites :    \09%d\0A\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"End\0A\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"Terminals: %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"  Top:     %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"  Bottom:  %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"  Left:    %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"  Right:   %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"UCLA    pl    1.0\0A\0A\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"i%s_input\09\09\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"o%s_output\09\09\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"%d\09\09%d\09: %s /FIXED\0A\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"FW\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"\09%d\09\09%d\09: %s\0A\00", align 1
@str = private unnamed_addr constant [19 x i8] c"Target Dimensions:\00", align 1
@str.1 = private unnamed_addr constant [19 x i8] c"Actual Dimensions:\00", align 1
@str.2 = private unnamed_addr constant [32 x i8] c"Done constructing layout region\00", align 1

; Function Attrs: nounwind uwtable
define void @Io_WriteBookLogic(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Abc_NtkToNetlist(ptr noundef %0) #16 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !10
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 25, i64 1, ptr %i.c) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @Io_WriteBook(ptr noundef nonnull %i.a, ptr noundef %1)
  tail call void @Abc_NtkDelete(ptr noundef nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare ptr @Abc_NtkToNetlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Io_WriteBook(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.b = add i64 %i.a, 7
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 1) #18 ; 25 uses
  %i.d = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #16 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr = getelementptr inbounds i8, ptr %i.c, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %endptr, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  %i.e = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2) ; 5 uses
  %i.f = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #16 ; 0 uses
  %strlen74 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr75 = getelementptr inbounds i8, ptr %i.c, i64 %strlen74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr75, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  %i.g = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2) ; 5 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #16 ; 0 uses
  %strlen76 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr77 = getelementptr inbounds i8, ptr %i.c, i64 %strlen76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr77, ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  %i.i = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2) ; 4 uses
  %i.j = icmp eq ptr %i.e, null
  %i.k = icmp eq ptr %i.g, null
  %or.cond = or i1 %i.j, %i.k
  %i.l = icmp eq ptr %i.i, null
  %or.cond3 = or i1 %or.cond, %i.l
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @fclose(ptr noundef %i.i)  ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !10
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.5, i64 46, i64 1, ptr %i.n) ; 0 uses
  br label %bb.ey

bb.c:                                             ; preds = %bb.a
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %1) #16 ; 0 uses
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  %i.q = tail call fastcc i32 @Io_NtkWriteNodes(ptr noundef %i.e, ptr noundef %0) ; 2 uses
  tail call fastcc void @Io_NtkWriteNets(ptr noundef %i.g, ptr noundef %0)
  %i.r = getelementptr i8, ptr %0, i64 328
  %.val85 = load ptr, ptr %i.r, align 8, !tbaa !70
  %.not = icmp eq ptr %.val85, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call fastcc i32 @Io_NtkWriteNodes(ptr noundef %i.e, ptr noundef nonnull %0)
  %i.t = add i32 %i.s, %i.q
  tail call fastcc void @Io_NtkWriteNets(ptr noundef %i.g, ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.068 = phi i32 [ %i.t, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 136
  %.val86 = load i32, ptr %i.u, align 8, !tbaa !27
  %i.v = icmp sgt i32 %.val86, 0
  br i1 %i.v, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val103 = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.ab = icmp sgt i32 %.val103, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.ac = phi ptr [ %i.ak, %bb.g ], [ %i.x, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %i.ad = phi ptr [ %i.am, %bb.g ], [ %i.z, %.preheader ]
  %.1104 = phi i32 [ %.2, %bb.g ], [ %.068, %.preheader ] ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val84 = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val84, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %0
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ai = tail call fastcc i32 @Io_NtkWriteNodes(ptr noundef %i.e, ptr noundef %i.ag)
  %i.aj = add i32 %i.ai, %.1104
  tail call fastcc void @Io_NtkWriteNets(ptr noundef %i.g, ptr noundef %i.ag)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ak = phi ptr [ %i.ac, %.lr.ph ], [ %.pre, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %.1104, %.lr.ph ], [ %i.aj, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val = load i32, ptr %i.an, align 4, !tbaa !30
  %i.ao = sext i32 %.val to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.lr.ph, label %.critedge, !llvm.loop !51

.critedge:                                        ; preds = %bb.g, %.preheader, %bb.e
  %.3 = phi i32 [ %.068, %bb.e ], [ %.068, %.preheader ], [ %.2, %bb.g ] ; 3 uses
  %i.aq = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  %i.ar = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  %i.as = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #16 ; 0 uses
  %strlen78 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr79 = getelementptr inbounds i8, ptr %i.c, i64 %strlen78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr79, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %i.at = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2) ; 12 uses
  %i.au = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #16 ; 0 uses
  %strlen80 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr81 = getelementptr inbounds i8, ptr %i.c, i64 %strlen80
  store i32 7106606, ptr %endptr81, align 1
  %i.av = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2) ; 18 uses
  %i.aw = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #16 ; 0 uses
  %strlen82 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr83 = getelementptr inbounds i8, ptr %i.c, i64 %strlen82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr83, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false)
  %i.ax = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2)
  tail call void @free(ptr noundef %i.c) #16
  %i.ay = getelementptr i8, ptr %0, i64 124
  %.val39.i = load i32, ptr %i.ay, align 4, !tbaa !27
  %i.az = getelementptr i8, ptr %0, i64 128       ; 4 uses
  %.val40.i = load i32, ptr %i.az, align 8, !tbaa !27
  %i.ba = uitofp i32 %.3 to double                ; 2 uses
  %i.bb = fdiv double %i.ba, 9.000000e-01         ; 3 uses
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bb)
  %i.bc = fptosi double %sqrt.i to i32            ; 5 uses
  %i.bd = add nsw i32 %.val40.i, %.val39.i
  %i.be = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %.val.i = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bf = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.bf, align 4, !tbaa !30
  %i.bg = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %.val38.i = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr i8, ptr %.val38.i, i64 4
  %.val38.val.i = load i32, ptr %i.bh, align 4, !tbaa !30
  %i.bi = add nsw i32 %.val38.val.i, %.val.val.i  ; 7 uses
  %i.bj = uitofp i32 %i.bc to double              ; 8 uses
  %i.bk = fdiv double %i.bb, %i.bj
  %i.bl = fptosi double %i.bk to i32              ; 2 uses
  %2 = sitofp i32 %i.bl to double                 ; 7 uses
  %i.bm = fmul nnan double %i.bj, %2              ; 3 uses
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef 1) ; 0 uses
  %i.bo = udiv i32 %.3, %i.bd
  %i.bp = uitofp i32 %i.bo to double
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %.3, double noundef %i.bp) ; 0 uses
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, double noundef %i.bb) ; 0 uses
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, double noundef 1.000000e+01) ; 0 uses
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, double noundef 1.000000e+00) ; 0 uses
  %puts37.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, double noundef %2) ; 0 uses
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, double noundef %i.bj, i32 noundef %i.bc) ; 0 uses
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, double noundef %i.bm) ; 0 uses
  %i.bx = fsub nnan double %i.bm, %i.ba
  %i.by = fmul nnan double %i.bx, 1.000000e+02
  %i.bz = fdiv double %i.by, %i.bm
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, double noundef %i.bz) ; 0 uses
  %i.cb = fdiv double %2, %i.bj
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, double noundef %i.cb) ; 0 uses
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.59, i64 20, i64 1, ptr %i.at) ; 0 uses
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.60, i32 noundef %i.bc) #16 ; 0 uses
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %Io_NtkWriteScl.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %.lr.ph.i.i
  %.025.i.i = phi i32 [ %i.cp, %.lr.ph.i.i ], [ 0, %.critedge ] ; 3 uses
  %fwrite22.i.i = tail call i64 @fwrite(ptr nonnull @.str.61, i64 19, i64 1, ptr %i.at) ; 0 uses
  %i.ce = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.62, i32 noundef %.025.i.i) #16 ; 0 uses
  %i.cf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.63, i32 noundef 1) #16 ; 0 uses
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.64, i32 noundef 1) #16 ; 0 uses
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.65, i32 noundef 1) #16 ; 0 uses
  %i.ci = and i32 %.025.i.i, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @__const.Io_NtkWriteScl.rowOrients, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !75
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.66, ptr noundef %i.cl) #16 ; 0 uses
  %i.cn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.67, i32 noundef 89) #16 ; 0 uses
  %i.co = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef %i.bl) #16 ; 0 uses
  %fwrite23.i.i = tail call i64 @fwrite(ptr nonnull @.str.69, i64 4, i64 1, ptr %i.at) ; 0 uses
  %i.cp = add nuw i32 %.025.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cp, %i.bc
  br i1 %exitcond.not.i.i, label %Io_NtkWriteScl.exit.i, label %.lr.ph.i.i, !llvm.loop !52

Io_NtkWriteScl.exit.i:                            ; preds = %.lr.ph.i.i, %.critedge
  %i.cq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.cr = add i32 %i.bi, -1
  %or.cond.i.i.i = icmp ult i32 %i.cr, 7
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 8, i32 %i.bi ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 3 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !30
  store i32 %spec.store.select.i.i.i, ptr %i.cq, align 8, !tbaa !76
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_PtrAlloc.exit.i.i, label %bb.h

bb.h:                                             ; preds = %Io_NtkWriteScl.exit.i
  %i.ct = sext i32 %spec.store.select.i.i.i to i64
  %i.cu = shl nsw i64 %i.ct, 3
  %i.cv = tail call noalias ptr @malloc(i64 noundef %i.cu) #19
  br label %Vec_PtrAlloc.exit.i.i

Vec_PtrAlloc.exit.i.i:                            ; preds = %bb.h, %Io_NtkWriteScl.exit.i
  %.promoted256.i.i = phi ptr [ %i.cv, %bb.h ], [ null, %Io_NtkWriteScl.exit.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 5 uses
  store ptr %.promoted256.i.i, ptr %i.cw, align 8, !tbaa !31
  %3 = fmul nnan double %2, 2.000000e+00
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.bj, double 2.000000e+00, double %3)
  %i.cy = uitofp i32 %i.bi to double
  %i.cz = fdiv double %i.bj, %i.cx
  %i.da = fmul double %i.cz, %i.cy
  %i.db = fptosi double %i.da to i32              ; 11 uses
  %i.dc = shl i32 %i.db, 1                        ; 6 uses
  %i.dd = sub i32 %i.bi, %i.dc                    ; 2 uses
  %i.de = uitofp i32 %i.dd to double
  %i.df = fmul nnan double %i.de, 5.000000e-01
  %i.dg = tail call double @llvm.ceil.f64(double %i.df)
  %i.dh = fptoui double %i.dg to i32              ; 3 uses
  %i.di = sub i32 %i.dd, %i.dh                    ; 3 uses
  %.val179248.i.i = load ptr, ptr %i.be, align 8, !tbaa !34 ; 2 uses
  %i.dj = getelementptr i8, ptr %.val179248.i.i, i64 4
  %.val179.val249.i.i = load i32, ptr %i.dj, align 4, !tbaa !30
  %i.dk = icmp sgt i32 %.val179.val249.i.i, 0
  br i1 %i.dk, label %.lr.ph.i44.i, label %.critedge.preheader.i.i

..critedge.preheader_crit_edge.i.i:               ; preds = %Vec_PtrPush.exit.i.i
  %i.dl = trunc nsw i64 %indvars.iv.next316.i.i to i32 ; 2 uses
  store i32 %i.dl, ptr %i.cs, align 4, !tbaa !30
  store i32 %spec.select.sink.i254.i.i, ptr %i.cq, align 8
  store ptr %storemerge232258.i.i, ptr %i.cw, align 8
  br label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %..critedge.preheader_crit_edge.i.i, %Vec_PtrAlloc.exit.i.i
  %.promoted269.i.i = phi ptr [ %storemerge232258.i.i, %..critedge.preheader_crit_edge.i.i ], [ %.promoted256.i.i, %Vec_PtrAlloc.exit.i.i ] ; 2 uses
  %.promoted266.i.i = phi i32 [ %spec.select.sink.i254.i.i, %..critedge.preheader_crit_edge.i.i ], [ %spec.store.select.i.i.i, %Vec_PtrAlloc.exit.i.i ]
  %.promoted264.i.i = phi i32 [ %i.dl, %..critedge.preheader_crit_edge.i.i ], [ 0, %Vec_PtrAlloc.exit.i.i ] ; 2 uses
  %.val180259.i.i = load ptr, ptr %i.bg, align 8, !tbaa !35 ; 2 uses
  %i.dm = getelementptr i8, ptr %.val180259.i.i, i64 4
  %.val180.val260.i.i = load i32, ptr %i.dm, align 4, !tbaa !30
  %i.dn = icmp sgt i32 %.val180.val260.i.i, 0
  br i1 %i.dn, label %.lr.ph263.i.i, label %.critedge2.i.i

.lr.ph263.i.i:                                    ; preds = %.critedge.preheader.i.i
  %i.do = sext i32 %.promoted264.i.i to i64
  br label %bb.q

.lr.ph.i44.i:                                     ; preds = %Vec_PtrAlloc.exit.i.i, %Vec_PtrPush.exit.i.i
  %indvars.iv315.i.i = phi i64 [ %indvars.iv.next316.i.i, %Vec_PtrPush.exit.i.i ], [ 0, %Vec_PtrAlloc.exit.i.i ] ; 7 uses
  %storemerge232257.i.i = phi ptr [ %storemerge232258.i.i, %Vec_PtrPush.exit.i.i ], [ %.promoted256.i.i, %Vec_PtrAlloc.exit.i.i ] ; 6 uses
  %spec.select.sink.i255.i.i = phi i32 [ %spec.select.sink.i254.i.i, %Vec_PtrPush.exit.i.i ], [ %spec.store.select.i.i.i, %Vec_PtrAlloc.exit.i.i ] ; 4 uses
  %.val179251.i.i = phi ptr [ %.val179.i.i, %Vec_PtrPush.exit.i.i ], [ %.val179248.i.i, %Vec_PtrAlloc.exit.i.i ]
  %i.dp = getelementptr i8, ptr %.val179251.i.i, i64 8
  %.val185.val.i.i = load ptr, ptr %i.dp, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.val185.val.i.i, i64 %indvars.iv315.i.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !32
  %i.ds = trunc nsw i64 %indvars.iv315.i.i to i32
  %i.dt = icmp eq i32 %spec.select.sink.i255.i.i, %i.ds
  br i1 %i.dt, label %bb.i, label %Vec_PtrPush.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i44.i
  %i.du = icmp samesign ult i64 %indvars.iv315.i.i, 16
  br i1 %i.du, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not9.i.i.i.i = icmp eq ptr %storemerge232257.i.i, null
  br i1 %.not9.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dv = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge232257.i.i, i64 noundef 128) #20
  br label %Vec_PtrPush.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.dw = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrPush.exit.i.i

bb.m:                                             ; preds = %bb.i
  %i.dx = icmp samesign ult i64 %indvars.iv315.i.i, 1073741823
  %i.dy = shl nuw nsw i32 %spec.select.sink.i255.i.i, 1
  %spec.select.i.i.i = select i1 %i.dx, i32 %i.dy, i32 2147483647 ; 3 uses
  %i.dz = zext nneg i32 %spec.select.i.i.i to i64 ; 2 uses
  %.not.i10.i.i.i = icmp samesign ult i64 %indvars.iv315.i.i, %i.dz
  br i1 %.not.i10.i.i.i, label %bb.n, label %Vec_PtrPush.exit.i.i

bb.n:                                             ; preds = %bb.m
  %.not9.i11.i.i.i = icmp eq ptr %storemerge232257.i.i, null
  %i.ea = shl nuw nsw i64 %i.dz, 3                ; 2 uses
  br i1 %.not9.i11.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = tail call ptr @realloc(ptr noundef nonnull %storemerge232257.i.i, i64 noundef %i.ea) #20
  br label %Vec_PtrPush.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ec = tail call noalias ptr @malloc(i64 noundef %i.ea) #19
  br label %Vec_PtrPush.exit.i.i

Vec_PtrPush.exit.i.i:                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %.lr.ph.i44.i
  %storemerge232258.i.i = phi ptr [ %storemerge232257.i.i, %.lr.ph.i44.i ], [ %storemerge232257.i.i, %bb.m ], [ %i.dw, %bb.l ], [ %i.dv, %bb.k ], [ %i.eb, %bb.o ], [ %i.ec, %bb.p ] ; 4 uses
  %spec.select.sink.i254.i.i = phi i32 [ %spec.select.sink.i255.i.i, %.lr.ph.i44.i ], [ %spec.select.sink.i255.i.i, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i.i.i, %bb.o ], [ %spec.select.i.i.i, %bb.p ] ; 3 uses
  %indvars.iv.next316.i.i = add nuw nsw i64 %indvars.iv315.i.i, 1 ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %storemerge232258.i.i, i64 %indvars.iv315.i.i
  store ptr %i.dr, ptr %i.ed, align 8, !tbaa !32
  %.val179.i.i = load ptr, ptr %i.be, align 8, !tbaa !34 ; 2 uses
  %i.ee = getelementptr i8, ptr %.val179.i.i, i64 4
  %.val179.val.i.i = load i32, ptr %i.ee, align 4, !tbaa !30
  %i.ef = sext i32 %.val179.val.i.i to i64
  %i.eg = icmp slt i64 %indvars.iv.next316.i.i, %i.ef
  br i1 %i.eg, label %.lr.ph.i44.i, label %..critedge.preheader_crit_edge.i.i, !llvm.loop !53

bb.q:                                             ; preds = %Vec_PtrPush.exit223.i.i, %.lr.ph263.i.i
  %indvars.iv322.i.i = phi i64 [ 0, %.lr.ph263.i.i ], [ %indvars.iv.next323.i.i, %Vec_PtrPush.exit223.i.i ] ; 2 uses
  %indvars.iv320.i.i = phi i64 [ %i.do, %.lr.ph263.i.i ], [ %indvars.iv.next321.i.i, %Vec_PtrPush.exit223.i.i ] ; 6 uses
  %storemerge270.i.i = phi ptr [ %.promoted269.i.i, %.lr.ph263.i.i ], [ %storemerge271.i.i, %Vec_PtrPush.exit223.i.i ] ; 6 uses
  %spec.select.sink.i220268.i.i = phi i32 [ %.promoted266.i.i, %.lr.ph263.i.i ], [ %spec.select.sink.i220267.i.i, %Vec_PtrPush.exit223.i.i ] ; 4 uses
  %.val180262.i.i = phi ptr [ %.val180259.i.i, %.lr.ph263.i.i ], [ %.val180.i.i, %Vec_PtrPush.exit223.i.i ]
  %i.eh = getelementptr i8, ptr %.val180262.i.i, i64 8
  %.val194.val.i.i = load ptr, ptr %i.eh, align 8, !tbaa !31
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.val194.val.i.i, i64 %indvars.iv322.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !32
  %i.ek = trunc nsw i64 %indvars.iv320.i.i to i32
  %i.el = icmp eq i32 %spec.select.sink.i220268.i.i, %i.ek
  br i1 %i.el, label %bb.r, label %Vec_PtrPush.exit223.i.i

bb.r:                                             ; preds = %bb.q
  %i.em = icmp samesign ult i64 %indvars.iv320.i.i, 16
  br i1 %i.em, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i221.i.i = icmp eq ptr %storemerge270.i.i, null
  br i1 %.not9.i.i221.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.en = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge270.i.i, i64 noundef 128) #20
  br label %Vec_PtrPush.exit223.i.i

bb.u:                                             ; preds = %bb.s
  %i.eo = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrPush.exit223.i.i

bb.v:                                             ; preds = %bb.r
  %i.ep = icmp samesign ult i64 %indvars.iv320.i.i, 1073741823
  %i.eq = shl nuw nsw i32 %spec.select.sink.i220268.i.i, 1
  %spec.select.i216.i.i = select i1 %i.ep, i32 %i.eq, i32 2147483647 ; 3 uses
  %i.er = zext nneg i32 %spec.select.i216.i.i to i64 ; 2 uses
  %.not.i10.i217.i.i = icmp samesign ult i64 %indvars.iv320.i.i, %i.er
  br i1 %.not.i10.i217.i.i, label %bb.w, label %Vec_PtrPush.exit223.i.i

bb.w:                                             ; preds = %bb.v
  %.not9.i11.i218.i.i = icmp eq ptr %storemerge270.i.i, null
  %i.es = shl nuw nsw i64 %i.er, 3                ; 2 uses
  br i1 %.not9.i11.i218.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = tail call ptr @realloc(ptr noundef nonnull %storemerge270.i.i, i64 noundef %i.es) #20
  br label %Vec_PtrPush.exit223.i.i

bb.y:                                             ; preds = %bb.w
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.es) #19
  br label %Vec_PtrPush.exit223.i.i

Vec_PtrPush.exit223.i.i:                          ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.q
  %storemerge271.i.i = phi ptr [ %storemerge270.i.i, %bb.q ], [ %storemerge270.i.i, %bb.v ], [ %i.eo, %bb.u ], [ %i.en, %bb.t ], [ %i.et, %bb.x ], [ %i.eu, %bb.y ] ; 4 uses
  %spec.select.sink.i220267.i.i = phi i32 [ %spec.select.sink.i220268.i.i, %bb.q ], [ %spec.select.sink.i220268.i.i, %bb.v ], [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i216.i.i, %bb.x ], [ %spec.select.i216.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next321.i.i = add nuw nsw i64 %indvars.iv320.i.i, 1 ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %storemerge271.i.i, i64 %indvars.iv320.i.i
  store ptr %i.ej, ptr %i.ev, align 8, !tbaa !32
  %indvars.iv.next323.i.i = add nuw nsw i64 %indvars.iv322.i.i, 1 ; 2 uses
  %.val180.i.i = load ptr, ptr %i.bg, align 8, !tbaa !35 ; 2 uses
  %i.ew = getelementptr i8, ptr %.val180.i.i, i64 4
  %.val180.val.i.i = load i32, ptr %i.ew, align 4, !tbaa !30
  %i.ex = sext i32 %.val180.val.i.i to i64
  %i.ey = icmp slt i64 %indvars.iv.next323.i.i, %i.ex
  br i1 %i.ey, label %bb.q, label %.critedge..critedge2_crit_edge.i.i, !llvm.loop !54

.critedge..critedge2_crit_edge.i.i:               ; preds = %Vec_PtrPush.exit223.i.i
  %i.ez = trunc nsw i64 %indvars.iv.next321.i.i to i32 ; 2 uses
  store i32 %i.ez, ptr %i.cs, align 4, !tbaa !30
  store i32 %spec.select.sink.i220267.i.i, ptr %i.cq, align 8
  store ptr %storemerge271.i.i, ptr %i.cw, align 8
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge..critedge2_crit_edge.i.i, %.critedge.preheader.i.i
  %.val53.i.i.i = phi ptr [ %storemerge271.i.i, %.critedge..critedge2_crit_edge.i.i ], [ %.promoted269.i.i, %.critedge.preheader.i.i ]
  %.val.i.i.i = phi i32 [ %i.ez, %.critedge..critedge2_crit_edge.i.i ], [ %.promoted264.i.i, %.critedge.preheader.i.i ] ; 10 uses
  %i.fa = zext i32 %.val.i.i.i to i64
  %i.fb = shl nuw nsw i64 %i.fa, 2                ; 2 uses
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fb) #19 ; 6 uses
  %i.fd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 7 uses
  %i.fe = add i32 %.val.i.i.i, -1
  %or.cond.i.i.i.i = icmp ult i32 %i.fe, 7
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 8, i32 %.val.i.i.i ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 4 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !30
  store i32 %spec.store.select.i.i.i.i, ptr %i.fd, align 8, !tbaa !76
  %.not.i.i.i.i = icmp eq i32 %spec.store.select.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %Vec_PtrAlloc.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.critedge2.i.i
  %i.fg = sext i32 %spec.store.select.i.i.i.i to i64
  %i.fh = shl nsw i64 %i.fg, 3
  %i.fi = tail call noalias ptr @malloc(i64 noundef %i.fh) #19
  br label %Vec_PtrAlloc.exit.i.i.i

Vec_PtrAlloc.exit.i.i.i:                          ; preds = %bb.z, %.critedge2.i.i
  %i.fj = phi ptr [ %i.fi, %bb.z ], [ null, %.critedge2.i.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 10 uses
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !31
  %.not117.i.i.i = icmp eq i32 %.val.i.i.i, 0
end_hunk_0
begin_hunk_1_@Io_WriteBook:bb.a

bb.du:                                            ; preds = %bb.dt
  %i.tq = icmp slt i32 %i.ro, 16
  br i1 %i.tq, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %.not9.i.i170.i.i.i.i = icmp eq ptr %i.rp, null
  br i1 %.not9.i.i170.i.i.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tr = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.rp, i64 noundef 128) #20
  br label %Vec_PtrPush.exit172.i.i.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.ts = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrPush.exit172.i.i.i.i

bb.dy:                                            ; preds = %bb.du
  %i.tt = icmp samesign ult i32 %i.ro, 1073741823
  %i.tu = shl nuw nsw i32 %i.ro, 1
  %spec.select.i165.i.i.i.i = select i1 %i.tt, i32 %i.tu, i32 2147483647 ; 4 uses
  %.not.i10.i166.i.i.i.i = icmp samesign ult i32 %i.ro, %spec.select.i165.i.i.i.i
  br i1 %.not.i10.i166.i.i.i.i, label %bb.dz, label %Vec_PtrPush.exit172.i.i.i.i

bb.dz:                                            ; preds = %bb.dy
  %.not9.i11.i167.i.i.i.i = icmp eq ptr %i.rp, null
  %i.tv = zext nneg i32 %spec.select.i165.i.i.i.i to i64
  %i.tw = shl nuw nsw i64 %i.tv, 3                ; 2 uses
  br i1 %.not9.i11.i167.i.i.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.tx = tail call ptr @realloc(ptr noundef nonnull %i.rp, i64 noundef %i.tw) #20
  br label %Vec_PtrPush.exit172.i.i.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.ty = tail call noalias ptr @malloc(i64 noundef %i.tw) #19
  br label %Vec_PtrPush.exit172.i.i.i.i

Vec_PtrPush.exit172.i.i.i.i:                      ; preds = %bb.eb, %bb.ea, %bb.dy, %bb.dx, %bb.dw, %bb.dt
  %i.tz = phi ptr [ %i.rn, %bb.dt ], [ %i.rn, %bb.dy ], [ %i.ts, %bb.dx ], [ %i.tr, %bb.dw ], [ %i.tx, %bb.ea ], [ %i.ty, %bb.eb ] ; 4 uses
  %i.ua = phi i32 [ %i.ro, %bb.dt ], [ %i.ro, %bb.dy ], [ 16, %bb.dx ], [ 16, %bb.dw ], [ %spec.select.i165.i.i.i.i, %bb.ea ], [ %spec.select.i165.i.i.i.i, %bb.eb ] ; 2 uses
  %i.ub = add nsw i32 %.val.pr216.i.i.i.i, 1
  %i.uc = sext i32 %.val.pr216.i.i.i.i to i64
  %i.ud = getelementptr inbounds [8 x i8], ptr %i.tz, i64 %i.uc
  store ptr %i.sd, ptr %i.ud, align 8, !tbaa !32
  br label %bb.ec

bb.ec:                                            ; preds = %Vec_PtrPush.exit172.i.i.i.i, %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i
  %i.ue = phi ptr [ %i.rn, %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i ], [ %i.tz, %Vec_PtrPush.exit172.i.i.i.i ] ; 2 uses
  %i.uf = phi i32 [ %i.ro, %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i ], [ %i.ua, %Vec_PtrPush.exit172.i.i.i.i ] ; 2 uses
  %i.ug = phi ptr [ %i.rp, %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i ], [ %i.tz, %Vec_PtrPush.exit172.i.i.i.i ] ; 2 uses
  %i.uh = phi i32 [ %i.rq, %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i ], [ %i.ua, %Vec_PtrPush.exit172.i.i.i.i ] ; 2 uses
  %.val82255.i.i.i.i = phi ptr [ %.val82256.i.i.i.i, %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i ], [ %i.tz, %Vec_PtrPush.exit172.i.i.i.i ] ; 2 uses
  %.val.pr217.i.i.i.i = phi i32 [ %.val.pr216.i.i.i.i, %Abc_NodeIsTravIdCurrent.exit164.i.i.i.i ], [ %i.ub, %Vec_PtrPush.exit172.i.i.i.i ] ; 2 uses
  %indvars.iv.next249.i.i.i.i = add nuw nsw i64 %indvars.iv248.i.i.i.i, 1 ; 2 uses
  %.165.val108.i.i.i.i = load i32, ptr %i.rk, align 4, !tbaa !47
  %i.ui = sext i32 %.165.val108.i.i.i.i to i64
  %i.uj = icmp slt i64 %indvars.iv.next249.i.i.i.i, %i.ui
  br i1 %i.uj, label %bb.dg, label %.thread-pre-split.loopexit_crit_edge.i.i.i.i, !llvm.loop !62

Io_NtkBfsPads.exit.i.i.i:                         ; preds = %bb.bz, %thread-pre-split.backedge.i.i.i.i, %bb.bj, %thread-pre-split.preheader.i.i.i.i
  %i.uk = phi ptr [ %.043108.lcssa.i.i.i, %thread-pre-split.preheader.i.i.i.i ], [ %.043108.lcssa.i.i.i, %bb.bj ], [ %i.km, %bb.bz ], [ %.043108.lcssa.i.i.i, %thread-pre-split.backedge.i.i.i.i ] ; 4 uses
  %i.ul = load i32, ptr %i.ff, align 4, !tbaa !30 ; 10 uses
  %i.um = icmp sgt i32 %i.ul, 0
  br i1 %i.um, label %.lr.ph.i77.i.i.i, label %._crit_edge.i66.i.i.i

.lr.ph.i77.i.i.i:                                 ; preds = %Io_NtkBfsPads.exit.i.i.i
  %i.un = load ptr, ptr %i.fk, align 8, !tbaa !31 ; 2 uses
  %wide.trip.count.i78.i.i.i = zext nneg i32 %i.ul to i64
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ee
  %indvars.iv.next.i80.i.i.i = add nuw nsw i64 %indvars.iv.i79.i.i.i, 1 ; 2 uses
  %exitcond.not.i81.i.i.i = icmp eq i64 %indvars.iv.next.i80.i.i.i, %wide.trip.count.i78.i.i.i
  br i1 %exitcond.not.i81.i.i.i, label %._crit_edge.i66.i.i.i, label %bb.ee, !llvm.loop !56

bb.ee:                                            ; preds = %bb.ed, %.lr.ph.i77.i.i.i
  %indvars.iv.i79.i.i.i = phi i64 [ 0, %.lr.ph.i77.i.i.i ], [ %indvars.iv.next.i80.i.i.i, %bb.ed ] ; 2 uses
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %indvars.iv.i79.i.i.i
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !32
  %i.uq = icmp eq ptr %i.up, %i.uk
  br i1 %i.uq, label %Vec_PtrPushUnique.exit82.i.i.i, label %bb.ed

._crit_edge.i66.i.i.i:                            ; preds = %bb.ed, %Io_NtkBfsPads.exit.i.i.i
  %i.ur = load i32, ptr %i.fd, align 8, !tbaa !76
  %i.us = icmp eq i32 %i.ul, %i.ur
  br i1 %i.us, label %bb.ef, label %._crit_edge.i66._crit_edge.i.i.i

._crit_edge.i66._crit_edge.i.i.i:                 ; preds = %._crit_edge.i66.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.fk, align 8, !tbaa !31
  br label %bb.en

bb.ef:                                            ; preds = %._crit_edge.i66.i.i.i
  %i.ut = icmp slt i32 %i.ul, 16
  br i1 %i.ut, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.uu = load ptr, ptr %i.fk, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i75.i.i.i = icmp eq ptr %i.uu, null
  br i1 %.not9.i.i.i75.i.i.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.uv = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.uu, i64 noundef 128) #20
  br label %Vec_PtrGrow.exit12.sink.split.i.i72.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.uw = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i.i72.i.i.i

bb.ej:                                            ; preds = %bb.ef
  %i.ux = icmp samesign ult i32 %i.ul, 1073741823
  %i.uy = shl nuw nsw i32 %i.ul, 1
  %spec.select.i.i69.i.i.i = select i1 %i.ux, i32 %i.uy, i32 2147483647 ; 4 uses
  %.not.i10.i.i70.i.i.i = icmp samesign ult i32 %i.ul, %spec.select.i.i69.i.i.i
  %.pre133.i.i.i = load ptr, ptr %i.fk, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i10.i.i70.i.i.i, label %bb.ek, label %bb.en

bb.ek:                                            ; preds = %bb.ej
  %.not9.i11.i.i71.i.i.i = icmp eq ptr %.pre133.i.i.i, null
  %i.uz = zext nneg i32 %spec.select.i.i69.i.i.i to i64
  %i.va = shl nuw nsw i64 %i.uz, 3                ; 2 uses
  br i1 %.not9.i11.i.i71.i.i.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.vb = tail call ptr @realloc(ptr noundef nonnull %.pre133.i.i.i, i64 noundef %i.va) #20
  br label %Vec_PtrGrow.exit12.sink.split.i.i72.i.i.i

bb.em:                                            ; preds = %bb.ek
  %i.vc = tail call noalias ptr @malloc(i64 noundef %i.va) #19
  br label %Vec_PtrGrow.exit12.sink.split.i.i72.i.i.i

Vec_PtrGrow.exit12.sink.split.i.i72.i.i.i:        ; preds = %bb.em, %bb.el, %bb.ei, %bb.eh
  %storemerge90.i.i.i = phi ptr [ %i.uw, %bb.ei ], [ %i.uv, %bb.eh ], [ %i.vb, %bb.el ], [ %i.vc, %bb.em ] ; 2 uses
  %spec.select.sink.i.i73.i.i.i = phi i32 [ 16, %bb.ei ], [ 16, %bb.eh ], [ %spec.select.i.i69.i.i.i, %bb.el ], [ %spec.select.i.i69.i.i.i, %bb.em ]
  store ptr %storemerge90.i.i.i, ptr %i.fk, align 8, !tbaa !31
  store i32 %spec.select.sink.i.i73.i.i.i, ptr %i.fd, align 8, !tbaa !76
  br label %bb.en

bb.en:                                            ; preds = %Vec_PtrGrow.exit12.sink.split.i.i72.i.i.i, %bb.ej, %._crit_edge.i66._crit_edge.i.i.i
  %i.vd = phi ptr [ %.pre.i.i.i, %._crit_edge.i66._crit_edge.i.i.i ], [ %.pre133.i.i.i, %bb.ej ], [ %storemerge90.i.i.i, %Vec_PtrGrow.exit12.sink.split.i.i72.i.i.i ] ; 2 uses
  %i.ve = add nsw i32 %i.ul, 1                    ; 2 uses
  store i32 %i.ve, ptr %i.ff, align 4, !tbaa !30
  %i.vf = sext i32 %i.ul to i64
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %i.vf
  store ptr %i.uk, ptr %i.vg, align 8, !tbaa !32
  %i.vh = getelementptr i8, ptr %i.uk, i64 16
  %.val54.i.i.i = load i32, ptr %i.vh, align 8, !tbaa !77
  %i.vi = zext i32 %.val54.i.i.i to i64
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.vi
  store i32 1, ptr %i.vj, align 4, !tbaa !27
  %i.vk = add i32 %.146.i.i.i, 1
  br label %bb.eo

Vec_PtrPushUnique.exit82.i.i.i:                   ; preds = %bb.ee
  %i.vl = add i32 %.047106.lcssa.i.i.i, 1
  %.val51.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !31
  %i.vm = sext i32 %.047106.lcssa.i.i.i to i64
  %i.vn = getelementptr inbounds [8 x i8], ptr %.val51.i.i.i, i64 %i.vm
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !32
  br label %bb.eo

bb.eo:                                            ; preds = %Vec_PtrPushUnique.exit82.i.i.i, %bb.en
  %i.vp = phi ptr [ %i.vd, %bb.en ], [ %i.un, %Vec_PtrPushUnique.exit82.i.i.i ]
  %i.vq = phi i32 [ %i.ve, %bb.en ], [ %i.ul, %Vec_PtrPushUnique.exit82.i.i.i ]
  %.not5088.i.i.i = phi i1 [ true, %bb.en ], [ false, %Vec_PtrPushUnique.exit82.i.i.i ]
  %.148.i.i.i = phi i32 [ %.047106.lcssa.i.i.i, %bb.en ], [ %i.vl, %Vec_PtrPushUnique.exit82.i.i.i ] ; 2 uses
  %.2.i.i.i = phi i32 [ %i.vk, %bb.en ], [ %.146.i.i.i, %Vec_PtrPushUnique.exit82.i.i.i ] ; 4 uses
  %.1.i.i.i = phi ptr [ %i.uk, %bb.en ], [ %i.vo, %Vec_PtrPushUnique.exit82.i.i.i ]
  br i1 %.not.i83.i.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.vr = load i32, ptr %i.fn, align 4, !tbaa !27
  %i.vs = icmp slt i32 %.2.i.i.i, %i.vr
  br i1 %i.vs, label %Extra_ProgressBarUpdate.exit.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  tail call void @Extra_ProgressBarUpdate_int(ptr noundef %i.fn, i32 noundef %.2.i.i.i, ptr noundef null) #16
  br label %Extra_ProgressBarUpdate.exit.i.i.i

Extra_ProgressBarUpdate.exit.i.i.i:               ; preds = %bb.eq, %bb.ep
  %i.vt = icmp ult i32 %.2.i.i.i, %.val.i.i.i
  %i.vu = icmp ult i32 %.148.i.i.i, %.val.i.i.i
  %i.vv = select i1 %i.vt, i1 %i.vu, i1 false
  br i1 %i.vv, label %.lr.ph109.split.preheader.i.i.i, label %Io_NtkOrderingPads.exit.i.i, !llvm.loop !63

Io_NtkOrderingPads.exit.i.i:                      ; preds = %Extra_ProgressBarUpdate.exit.i.i.i, %bb.aa, %bb.ab, %._crit_edge.i.i.i
  tail call void @Extra_ProgressBarStop(ptr noundef %i.fn) #16
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.vw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %i.bi) ; 0 uses
  %i.vx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.db) ; 0 uses
  %i.vy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %i.db) ; 0 uses
  %i.vz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %i.di) ; 0 uses
  %i.wa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %i.dh) ; 0 uses
  %fwrite.i41.i = tail call i64 @fwrite(ptr nonnull @.str.76, i64 19, i64 1, ptr %i.av) ; 0 uses
  %i.wb = uitofp i32 %i.db to double
  %i.wc = fdiv double %i.bj, %i.wb                ; 5 uses
  %.not297.i.i = icmp eq i32 %i.db, 0
  br i1 %.not297.i.i, label %._crit_edge.i.i, label %.lr.ph275.i.i

.lr.ph275.i.i:                                    ; preds = %Io_NtkOrderingPads.exit.i.i
  %4 = fadd double %2, 2.000000e+00
  %5 = tail call double @llvm.ceil.f64(double %4)
  %.val184.i.i = load ptr, ptr %i.fk, align 8, !tbaa !31 ; 4 uses
  %6 = fptosi double %5 to i32                    ; 2 uses
  %i.wd = load ptr, ptr %.val184.i.i, align 8, !tbaa !32 ; 3 uses
  %i.we = getelementptr i8, ptr %i.wd, i64 20
  %.val211.peel.i.i = load i32, ptr %i.we, align 4
  %i.wf = and i32 %.val211.peel.i.i, 15
  %.not231.peel.i.i = icmp eq i32 %i.wf, 2        ; 2 uses
  %.val192.peel.i.i = load ptr, ptr %i.wd, align 8, !tbaa !43
  %i.wg = getelementptr i8, ptr %.val192.peel.i.i, i64 32
  %.val192.val.peel.i.i = load ptr, ptr %i.wg, align 8, !tbaa !38
  %i.wh = getelementptr i8, ptr %.val192.val.peel.i.i, i64 8
  %.val192.val.val.peel.i.i = load ptr, ptr %i.wh, align 8, !tbaa !31
  %..i.i = select i1 %.not231.peel.i.i, i64 48, i64 32
  %.str.77..str.78.i.i = select i1 %.not231.peel.i.i, ptr @.str.77, ptr @.str.78
  %i.wi = getelementptr i8, ptr %i.wd, i64 %..i.i
  %.val202.peel.i.i = load ptr, ptr %i.wi, align 8, !tbaa !80
  %.val202.val.peel.i.i = load i32, ptr %.val202.peel.i.i, align 4, !tbaa !27
  %i.wj = sext i32 %.val202.val.peel.i.i to i64
  %i.wk = getelementptr inbounds [8 x i8], ptr %.val192.val.val.peel.i.i, i64 %i.wj
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !32
  %i.wm = tail call ptr @Abc_ObjName(ptr noundef %i.wl) #16
  %i.wn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull %.str.77..str.78.i.i, ptr noundef %i.wm) #16 ; 0 uses
  %i.wo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef %6, ptr noundef nonnull @.str.58) #16 ; 0 uses
  %exitcond327.peel.not.i.i = icmp eq i32 %i.db, 1
  br i1 %exitcond327.peel.not.i.i, label %.lr.ph278.i.i, label %.peel.next.i.i

.preheader234.i.i:                                ; preds = %.peel.next.i.i
  %i.wp = icmp sgt i32 %i.db, 0
  br i1 %i.wp, label %.lr.ph278.i.i, label %._crit_edge.i.i

.lr.ph278.i.i:                                    ; preds = %.preheader234.i.i, %.lr.ph275.i.i
  %i.wq = zext nneg i32 %i.db to i64
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %.val184.i.i, i64 %i.wq
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !32 ; 3 uses
  %i.wt = getelementptr i8, ptr %i.ws, i64 20
  %.val210.peel.i.i = load i32, ptr %i.wt, align 4
  %i.wu = and i32 %.val210.peel.i.i, 15
  %.not230.peel.i.i = icmp eq i32 %i.wu, 2        ; 2 uses
  %.val190.peel.i.i = load ptr, ptr %i.ws, align 8, !tbaa !43
  %i.wv = getelementptr i8, ptr %.val190.peel.i.i, i64 32
  %.val190.val.peel.i.i = load ptr, ptr %i.wv, align 8, !tbaa !38
  %i.ww = getelementptr i8, ptr %.val190.val.peel.i.i, i64 8
  %.val190.val.val.peel.i.i = load ptr, ptr %i.ww, align 8, !tbaa !31
  %.438.i.i = select i1 %.not230.peel.i.i, i64 48, i64 32
  %.str.77..str.78439.i.i = select i1 %.not230.peel.i.i, ptr @.str.77, ptr @.str.78
  %i.wx = getelementptr i8, ptr %i.ws, i64 %.438.i.i
  %.val191.peel.i.i = load ptr, ptr %i.wx, align 8, !tbaa !80
  %.val191.val.peel.i.i = load i32, ptr %.val191.peel.i.i, align 4, !tbaa !27
  %i.wy = sext i32 %.val191.val.peel.i.i to i64
  %i.wz = getelementptr inbounds [8 x i8], ptr %.val190.val.val.peel.i.i, i64 %i.wy
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !32
  %i.xb = tail call ptr @Abc_ObjName(ptr noundef %i.xa) #16
  %i.xc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull %.str.77..str.78439.i.i, ptr noundef %i.xb) #16 ; 0 uses
  %i.xd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef -3, ptr noundef nonnull @.str.57) #16 ; 0 uses
  %i.xe = add nuw i32 %i.db, 1                    ; 2 uses
  %exitcond329.peel.not.i.i = icmp eq i32 %i.xe, %i.dc
  br i1 %exitcond329.peel.not.i.i, label %._crit_edge.i.i, label %.peel.next331.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph275.i.i, %.peel.next.i.i
  %.0155274.i.i = phi i32 [ %i.yd, %.peel.next.i.i ], [ 1, %.lr.ph275.i.i ] ; 2 uses
  %.0163273.i.i = phi double [ %i.yc, %.peel.next.i.i ], [ %i.wc, %.lr.ph275.i.i ] ; 4 uses
  %i.xf = sext i32 %.0155274.i.i to i64
  %i.xg = getelementptr inbounds [8 x i8], ptr %.val184.i.i, i64 %i.xf
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !32 ; 3 uses
  %i.xi = getelementptr i8, ptr %i.xh, i64 20
  %.val211.i.i = load i32, ptr %i.xi, align 4
  %i.xj = and i32 %.val211.i.i, 15
  %.not231.i.i = icmp eq i32 %i.xj, 2             ; 2 uses
  %.val192.i.i = load ptr, ptr %i.xh, align 8, !tbaa !43
  %i.xk = getelementptr i8, ptr %.val192.i.i, i64 32
  %.val192.val.i.i = load ptr, ptr %i.xk, align 8, !tbaa !38
  %i.xl = getelementptr i8, ptr %.val192.val.i.i, i64 8
  %.val192.val.val.i.i = load ptr, ptr %i.xl, align 8, !tbaa !31
  %.440.i.i = select i1 %.not231.i.i, i64 48, i64 32
  %.str.77..str.78441.i.i = select i1 %.not231.i.i, ptr @.str.77, ptr @.str.78
  %i.xm = getelementptr i8, ptr %i.xh, i64 %.440.i.i
  %.val193.i.i = load ptr, ptr %i.xm, align 8, !tbaa !80
  %.val193.val.i.i = load i32, ptr %.val193.i.i, align 4, !tbaa !27
  %i.xn = sext i32 %.val193.val.i.i to i64
  %i.xo = getelementptr inbounds [8 x i8], ptr %.val192.val.val.i.i, i64 %i.xn
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !32
  %i.xq = tail call ptr @Abc_ObjName(ptr noundef %i.xp) #16
  %i.xr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull %.str.77..str.78441.i.i, ptr noundef %i.xq) #16 ; 0 uses
  %i.xs = fptosi double %.0163273.i.i to i32
  %i.xt = sitofp i32 %i.xs to double
  %i.xu = fsub double %.0163273.i.i, %i.wc
  %i.xv = fptosi double %i.xu to i32
  %i.xw = sitofp i32 %i.xv to double
  %i.xx = fadd double %i.xw, 1.000000e+00
  %i.xy = fcmp ogt double %i.xx, %i.xt
  %i.xz = fadd double %.0163273.i.i, 1.000000e+00
  %.1164.i.i = select i1 %i.xy, double %i.xz, double %.0163273.i.i ; 2 uses
  %i.ya = fptosi double %.1164.i.i to i32
  %i.yb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.79, i32 noundef %i.ya, i32 noundef %6, ptr noundef nonnull @.str.58) #16 ; 0 uses
  %i.yc = fadd double %i.wc, %.1164.i.i
  %i.yd = add nuw i32 %.0155274.i.i, 1            ; 2 uses
  %exitcond327.not.i.i = icmp eq i32 %i.yd, %i.db
  br i1 %exitcond327.not.i.i, label %.preheader234.i.i, label %.peel.next.i.i, !llvm.loop !64

.peel.next331.i.i:                                ; preds = %.lr.ph278.i.i, %.peel.next331.i.i
  %.1156277.i.i = phi i32 [ %i.zb, %.peel.next331.i.i ], [ %i.xe, %.lr.ph278.i.i ] ; 2 uses
  %.3166.peel.pn.i.i = phi double [ %.3166.i.i, %.peel.next331.i.i ], [ 0.000000e+00, %.lr.ph278.i.i ]
  %.2165276.i.i = fadd double %i.wc, %.3166.peel.pn.i.i ; 4 uses
  %i.ye = sext i32 %.1156277.i.i to i64
  %i.yf = getelementptr inbounds [8 x i8], ptr %.val184.i.i, i64 %i.ye
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !32 ; 3 uses
  %i.yh = getelementptr i8, ptr %i.yg, i64 20
  %.val210.i.i = load i32, ptr %i.yh, align 4
  %i.yi = and i32 %.val210.i.i, 15
  %.not230.i.i = icmp eq i32 %i.yi, 2             ; 2 uses
  %.val190.i.i = load ptr, ptr %i.yg, align 8, !tbaa !43
  %i.yj = getelementptr i8, ptr %.val190.i.i, i64 32
  %.val190.val.i.i = load ptr, ptr %i.yj, align 8, !tbaa !38
  %i.yk = getelementptr i8, ptr %.val190.val.i.i, i64 8
  %.val190.val.val.i.i = load ptr, ptr %i.yk, align 8, !tbaa !31
  %.442.i.i = select i1 %.not230.i.i, i64 48, i64 32
  %.str.77..str.78443.i.i = select i1 %.not230.i.i, ptr @.str.77, ptr @.str.78
  %i.yl = getelementptr i8, ptr %i.yg, i64 %.442.i.i
  %.val191.i.i = load ptr, ptr %i.yl, align 8, !tbaa !80
  %.val191.val.i.i = load i32, ptr %.val191.i.i, align 4, !tbaa !27
  %i.ym = sext i32 %.val191.val.i.i to i64
  %i.yn = getelementptr inbounds [8 x i8], ptr %.val190.val.val.i.i, i64 %i.ym
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !32
  %i.yp = tail call ptr @Abc_ObjName(ptr noundef %i.yo) #16
  %i.yq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull %.str.77..str.78443.i.i, ptr noundef %i.yp) #16 ; 0 uses
  %i.yr = fptosi double %.2165276.i.i to i32
  %i.ys = sitofp i32 %i.yr to double
  %i.yt = fsub double %.2165276.i.i, %i.wc
  %i.yu = fptosi double %i.yt to i32
  %i.yv = sitofp i32 %i.yu to double
  %i.yw = fadd double %i.yv, 1.000000e+00
  %i.yx = fcmp ogt double %i.yw, %i.ys
  %i.yy = fadd double %.2165276.i.i, 1.000000e+00
  %.3166.i.i = select i1 %i.yx, double %i.yy, double %.2165276.i.i ; 2 uses
  %i.yz = fptosi double %.3166.i.i to i32
  %i.za = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.79, i32 noundef %i.yz, i32 noundef -3, ptr noundef nonnull @.str.57) #16 ; 0 uses
  %i.zb = add i32 %.1156277.i.i, 1                ; 2 uses
  %exitcond329.not.i.i = icmp eq i32 %i.zb, %i.dc
  br i1 %exitcond329.not.i.i, label %._crit_edge.i.i, label %.peel.next331.i.i, !llvm.loop !65

._crit_edge.i.i:                                  ; preds = %.peel.next331.i.i, %.lr.ph278.i.i, %.preheader234.i.i, %Io_NtkOrderingPads.exit.i.i
  %.1156.lcssa.i.i = phi i32 [ %i.db, %.preheader234.i.i ], [ %i.dc, %.lr.ph278.i.i ], [ 0, %Io_NtkOrderingPads.exit.i.i ], [ %i.dc, %.peel.next331.i.i ] ; 3 uses
  %i.zc = uitofp i32 %i.di to double
  %i.zd = fdiv double %2, %i.zc                   ; 2 uses
  %i.ze = add i32 %i.di, %i.dc                    ; 2 uses
  %i.zf = icmp ult i32 %.1156.lcssa.i.i, %i.ze
  br i1 %i.zf, label %.lr.ph283.i.i, label %._crit_edge284.i.i

.lr.ph283.i.i:                                    ; preds = %._crit_edge.i.i
  %.val182.i.i = load ptr, ptr %i.fk, align 8, !tbaa !31
  br label %bb.er

bb.er:                                            ; preds = %bb.er, %.lr.ph283.i.i
  %.2157281.i.i = phi i32 [ %.1156.lcssa.i.i, %.lr.ph283.i.i ], [ %i.aae, %bb.er ] ; 2 uses
  %.0159280.i.i = phi double [ 0.000000e+00, %.lr.ph283.i.i ], [ %i.aad, %bb.er ] ; 4 uses
  %i.zg = sext i32 %.2157281.i.i to i64
  %i.zh = getelementptr inbounds [8 x i8], ptr %.val182.i.i, i64 %i.zg
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !32 ; 3 uses
  %i.zj = getelementptr i8, ptr %i.zi, i64 20
  %.val209.i.i = load i32, ptr %i.zj, align 4
  %i.zk = and i32 %.val209.i.i, 15
  %.not229.i.i = icmp eq i32 %i.zk, 2             ; 2 uses
  %.val188.i.i = load ptr, ptr %i.zi, align 8, !tbaa !43
  %i.zl = getelementptr i8, ptr %.val188.i.i, i64 32
  %.val188.val.i.i = load ptr, ptr %i.zl, align 8, !tbaa !38
  %i.zm = getelementptr i8, ptr %.val188.val.i.i, i64 8
  %.val188.val.val.i.i = load ptr, ptr %i.zm, align 8, !tbaa !31
  %.444.i.i = select i1 %.not229.i.i, i64 48, i64 32
  %.str.77..str.78445.i.i = select i1 %.not229.i.i, ptr @.str.77, ptr @.str.78
  %i.zn = getelementptr i8, ptr %i.zi, i64 %.444.i.i
  %.val198.i.i = load ptr, ptr %i.zn, align 8, !tbaa !80
  %.val198.val.i.i = load i32, ptr %.val198.i.i, align 4, !tbaa !27
  %i.zo = sext i32 %.val198.val.i.i to i64
  %i.zp = getelementptr inbounds [8 x i8], ptr %.val188.val.val.i.i, i64 %i.zo
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !32
  %i.zr = tail call ptr @Abc_ObjName(ptr noundef %i.zq) #16
  %i.zs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull %.str.77..str.78445.i.i, ptr noundef %i.zr) #16 ; 0 uses
  %i.zt = fptosi double %.0159280.i.i to i32
  %i.zu = sitofp i32 %i.zt to double
  %i.zv = fsub double %.0159280.i.i, %i.zd
  %i.zw = fptosi double %i.zv to i32
  %i.zx = sitofp i32 %i.zw to double
  %i.zy = fadd double %i.zx, 1.000000e+00
  %i.zz = fcmp ogt double %i.zy, %i.zu
  %i.aaa = fadd double %.0159280.i.i, 1.000000e+00
  %.1160.i.i = select i1 %i.zz, double %i.aaa, double %.0159280.i.i ; 2 uses
  %i.aab = fptosi double %.1160.i.i to i32
  %i.aac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.79, i32 noundef -3, i32 noundef %i.aab, ptr noundef nonnull @.str.80) #16 ; 0 uses
  %i.aad = fadd double %i.zd, %.1160.i.i
  %i.aae = add nuw i32 %.2157281.i.i, 1           ; 3 uses
  %i.aaf = icmp ult i32 %i.aae, %i.ze
  br i1 %i.aaf, label %bb.er, label %._crit_edge284.i.i, !llvm.loop !66

._crit_edge284.i.i:                               ; preds = %bb.er, %._crit_edge.i.i
  %.2157.lcssa.i.i = phi i32 [ %.1156.lcssa.i.i, %._crit_edge.i.i ], [ %i.aae, %bb.er ] ; 2 uses
  %i.aag = uitofp i32 %i.dh to double
  %i.aah = fdiv double %2, %i.aag                 ; 2 uses
  %i.aai = icmp ult i32 %.2157.lcssa.i.i, %i.bi
  br i1 %i.aai, label %.lr.ph289.i.i, label %._crit_edge290.i.i

.lr.ph289.i.i:                                    ; preds = %._crit_edge284.i.i
  %7 = fadd double %i.bj, 2.000000e+00
  %8 = tail call double @llvm.ceil.f64(double %7)
  %.val181.i.i = load ptr, ptr %i.fk, align 8, !tbaa !31
  %9 = fptosi double %8 to i32
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %.lr.ph289.i.i
  %.3158287.i.i = phi i32 [ %.2157.lcssa.i.i, %.lr.ph289.i.i ], [ %i.abh, %bb.es ] ; 2 uses
  %.2161286.i.i = phi double [ 0.000000e+00, %.lr.ph289.i.i ], [ %i.abg, %bb.es ] ; 4 uses
  %i.aaj = sext i32 %.3158287.i.i to i64
  %i.aak = getelementptr inbounds [8 x i8], ptr %.val181.i.i, i64 %i.aaj
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !32 ; 3 uses
  %i.aam = getelementptr i8, ptr %i.aal, i64 20
  %.val208.i.i = load i32, ptr %i.aam, align 4
  %i.aan = and i32 %.val208.i.i, 15
  %.not228.i.i = icmp eq i32 %i.aan, 2            ; 2 uses
  %.val186.i.i = load ptr, ptr %i.aal, align 8, !tbaa !43
  %i.aao = getelementptr i8, ptr %.val186.i.i, i64 32
  %.val186.val.i.i = load ptr, ptr %i.aao, align 8, !tbaa !38
  %i.aap = getelementptr i8, ptr %.val186.val.i.i, i64 8
  %.val186.val.val.i.i = load ptr, ptr %i.aap, align 8, !tbaa !31
  %.446.i.i = select i1 %.not228.i.i, i64 48, i64 32
  %.str.77..str.78447.i.i = select i1 %.not228.i.i, ptr @.str.77, ptr @.str.78
  %i.aaq = getelementptr i8, ptr %i.aal, i64 %.446.i.i
  %.val196.i.i = load ptr, ptr %i.aaq, align 8, !tbaa !80
  %.val196.val.i.i = load i32, ptr %.val196.i.i, align 4, !tbaa !27
  %i.aar = sext i32 %.val196.val.i.i to i64
  %i.aas = getelementptr inbounds [8 x i8], ptr %.val186.val.val.i.i, i64 %i.aar
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !32
  %i.aau = tail call ptr @Abc_ObjName(ptr noundef %i.aat) #16
  %i.aav = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull %.str.77..str.78447.i.i, ptr noundef %i.aau) #16 ; 0 uses
  %i.aaw = fptosi double %.2161286.i.i to i32
  %i.aax = sitofp i32 %i.aaw to double
  %i.aay = fsub double %.2161286.i.i, %i.aah
  %i.aaz = fptosi double %i.aay to i32
  %i.aba = sitofp i32 %i.aaz to double
  %i.abb = fadd double %i.aba, 1.000000e+00
  %i.abc = fcmp ogt double %i.abb, %i.aax
  %i.abd = fadd double %.2161286.i.i, 1.000000e+00
  %.3162.i.i = select i1 %i.abc, double %i.abd, double %.2161286.i.i ; 2 uses
  %i.abe = fptosi double %.3162.i.i to i32
  %i.abf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.79, i32 noundef %9, i32 noundef %i.abe, ptr noundef nonnull @.str.81) #16 ; 0 uses
  %i.abg = fadd double %i.aah, %.3162.i.i
  %i.abh = add i32 %.3158287.i.i, 1               ; 2 uses
  %exitcond333.not.i.i = icmp eq i32 %i.abh, %i.bi
  br i1 %exitcond333.not.i.i, label %._crit_edge290.i.i, label %bb.es, !llvm.loop !67

._crit_edge290.i.i:                               ; preds = %bb.es, %._crit_edge284.i.i
  %.val203.i.i = load i32, ptr %i.az, align 8, !tbaa !27
  %.not.i42.i = icmp eq i32 %.val203.i.i, 0
  br i1 %.not.i42.i, label %.critedge4.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge290.i.i
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !48 ; 2 uses
  %i.abk = getelementptr i8, ptr %i.abj, i64 4
  %.val178291.i.i = load i32, ptr %i.abk, align 4, !tbaa !30
  %i.abl = icmp sgt i32 %.val178291.i.i, 0
  br i1 %i.abl, label %.lr.ph293.i.i, label %.critedge4.i.i

.lr.ph293.i.i:                                    ; preds = %.preheader.i.i, %bb.eu
  %i.abm = phi ptr [ %i.acs, %bb.eu ], [ %i.abj, %.preheader.i.i ] ; 2 uses
  %indvars.iv334.i.i = phi i64 [ %indvars.iv.next335.i.i, %bb.eu ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.abn = getelementptr i8, ptr %i.abm, i64 8
  %.val204.val.i.i = load ptr, ptr %i.abn, align 8, !tbaa !31
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %.val204.val.i.i, i64 %indvars.iv334.i.i
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !32 ; 4 uses
  %i.abq = getelementptr i8, ptr %i.abp, i64 20
  %.val205.i.i = load i32, ptr %i.abq, align 4
  %i.abr = and i32 %.val205.i.i, 15
  %.not227.i.i = icmp eq i32 %i.abr, 8
  br i1 %.not227.i.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %.lr.ph293.i.i
  %.val11.i.i.i = load ptr, ptr %i.abp, align 8, !tbaa !43
  %i.abs = getelementptr i8, ptr %i.abp, i64 32
  %.val12.i.i.i = load ptr, ptr %i.abs, align 8, !tbaa !46
  %i.abt = getelementptr i8, ptr %.val11.i.i.i, i64 32
  %.val11.val.i.i.i = load ptr, ptr %i.abt, align 8, !tbaa !38
  %.val12.val.i.i.i = load i32, ptr %.val12.i.i.i, align 4, !tbaa !27
  %i.abu = getelementptr i8, ptr %.val11.val.i.i.i, i64 8
  %.val11.val.val.i.i.i = load ptr, ptr %i.abu, align 8, !tbaa !31 ; 2 uses
  %i.abv = sext i32 %.val12.val.i.i.i to i64
  %i.abw = getelementptr inbounds [8 x i8], ptr %.val11.val.val.i.i.i, i64 %i.abv
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !32 ; 2 uses
  %.val9.i.i.i = load ptr, ptr %i.abx, align 8, !tbaa !43
  %i.aby = getelementptr i8, ptr %i.abx, i64 32
  %.val10.i.i.i = load ptr, ptr %i.aby, align 8, !tbaa !46
  %i.abz = getelementptr i8, ptr %.val9.i.i.i, i64 32
  %.val9.val.i.i.i = load ptr, ptr %i.abz, align 8, !tbaa !38
  %.val10.val.i.i.i = load i32, ptr %.val10.i.i.i, align 4, !tbaa !27
  %i.aca = getelementptr i8, ptr %.val9.val.i.i.i, i64 8
  %.val9.val.val.i.i.i = load ptr, ptr %i.aca, align 8, !tbaa !31
  %i.acb = sext i32 %.val10.val.i.i.i to i64
  %i.acc = getelementptr inbounds [8 x i8], ptr %.val9.val.val.i.i.i, i64 %i.acb
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !32
  %i.ace = getelementptr i8, ptr %i.abp, i64 48
  %.val8.i.i.i = load ptr, ptr %i.ace, align 8, !tbaa !44
  %.val8.val.i.i.i = load i32, ptr %.val8.i.i.i, align 4, !tbaa !27
  %i.acf = sext i32 %.val8.val.i.i.i to i64
  %i.acg = getelementptr inbounds [8 x i8], ptr %.val11.val.val.i.i.i, i64 %i.acf
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !32 ; 2 uses
  %.val.i225.i.i = load ptr, ptr %i.ach, align 8, !tbaa !43
  %i.aci = getelementptr i8, ptr %i.ach, i64 48
  %.val6.i.i.i = load ptr, ptr %i.aci, align 8, !tbaa !44
  %i.acj = getelementptr i8, ptr %.val.i225.i.i, i64 32
  %.val.val.i.i.i = load ptr, ptr %i.acj, align 8, !tbaa !38
  %.val6.val.i.i.i = load i32, ptr %.val6.i.i.i, align 4, !tbaa !27
  %i.ack = getelementptr i8, ptr %.val.val.i.i.i, i64 8
  %.val.val.val.i.i.i = load ptr, ptr %i.ack, align 8, !tbaa !31
  %i.acl = sext i32 %.val6.val.i.i.i to i64
  %i.acm = getelementptr inbounds [8 x i8], ptr %.val.val.val.i.i.i, i64 %i.acl
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !32
  %i.aco = tail call ptr @Abc_ObjName(ptr noundef %i.acd) #16
  %i.acp = tail call ptr @Abc_ObjName(ptr noundef %i.acn) #16
  %i.acq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.18, ptr noundef %i.aco, ptr noundef %i.acp) #16 ; 0 uses
  %i.acr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.57) #16 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.abi, align 8, !tbaa !48
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %.lr.ph293.i.i
  %i.acs = phi ptr [ %.pre.i.i, %bb.et ], [ %i.abm, %.lr.ph293.i.i ] ; 2 uses
  %indvars.iv.next335.i.i = add nuw nsw i64 %indvars.iv334.i.i, 1 ; 2 uses
  %i.act = getelementptr i8, ptr %i.acs, i64 4
  %.val178.i.i = load i32, ptr %i.act, align 4, !tbaa !30
  %i.acu = sext i32 %.val178.i.i to i64
  %i.acv = icmp slt i64 %indvars.iv.next335.i.i, %i.acu
  br i1 %i.acv, label %.lr.ph293.i.i, label %.critedge4.i.i, !llvm.loop !68

.critedge4.i.i:                                   ; preds = %bb.eu, %.preheader.i.i, %._crit_edge290.i.i
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !38 ; 2 uses
  %i.acy = getelementptr i8, ptr %i.acx, i64 4
  %.val294.i.i = load i32, ptr %i.acy, align 4, !tbaa !30
  %i.acz = icmp sgt i32 %.val294.i.i, 0
  br i1 %i.acz, label %.lr.ph296.i.i, label %Io_NtkBuildLayout.exit

.lr.ph296.i.i:                                    ; preds = %.critedge4.i.i, %bb.ex
  %i.ada = phi ptr [ %i.adj, %bb.ex ], [ %i.acx, %.critedge4.i.i ] ; 3 uses
  %indvars.iv337.i.i = phi i64 [ %indvars.iv.next338.i.i, %bb.ex ], [ 0, %.critedge4.i.i ] ; 2 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 8
  %.val206.val.i.i = load ptr, ptr %i.adb, align 8, !tbaa !31
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %.val206.val.i.i, i64 %indvars.iv337.i.i
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !32 ; 3 uses
  %i.ade = icmp eq ptr %i.add, null
  br i1 %i.ade, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph296.i.i
  %i.adf = getelementptr i8, ptr %i.add, i64 20
  %.val207.i.i = load i32, ptr %i.adf, align 4
  %i.adg = and i32 %.val207.i.i, 15
  %.not226.i.i = icmp eq i32 %i.adg, 7
  br i1 %.not226.i.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.adh = tail call fastcc i32 @Io_NtkWriteIntNode(ptr noundef %i.av, ptr noundef %i.add, i32 noundef 1) ; 0 uses
  %i.adi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.57) #16 ; 0 uses
  %.pre350.i.i = load ptr, ptr %i.acw, align 8, !tbaa !38
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %.lr.ph296.i.i
  %i.adj = phi ptr [ %.pre350.i.i, %bb.ew ], [ %i.ada, %bb.ev ], [ %i.ada, %.lr.ph296.i.i ] ; 2 uses
  %indvars.iv.next338.i.i = add nuw nsw i64 %indvars.iv337.i.i, 1 ; 2 uses
  %i.adk = getelementptr i8, ptr %i.adj, i64 4
  %.val.i.i = load i32, ptr %i.adk, align 4, !tbaa !30
  %i.adl = sext i32 %.val.i.i to i64
  %i.adm = icmp slt i64 %indvars.iv.next338.i.i, %i.adl
  br i1 %i.adm, label %.lr.ph296.i.i, label %Io_NtkBuildLayout.exit, !llvm.loop !69

Io_NtkBuildLayout.exit:                           ; preds = %bb.ex, %.critedge4.i.i
  %i.adn = tail call i32 @fclose(ptr noundef %i.at) ; 0 uses
  %i.ado = tail call i32 @fclose(ptr noundef %i.av) ; 0 uses
  %i.adp = tail call i32 @fclose(ptr noundef %i.ax) ; 0 uses
  br label %bb.ey

bb.ey:                                            ; preds = %Io_NtkBuildLayout.exit, %bb.b
  ret void
}

declare void @Abc_NtkDelete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Io_NtkWriteNodes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %.val46 = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr i8, ptr %.val46, i64 4
  %.val46.val = load i32, ptr %i.b, align 4, !tbaa !30
  %i.c = getelementptr i8, ptr %1, i64 48         ; 3 uses
  %.val47 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr i8, ptr %.val47, i64 4
  %.val47.val = load i32, ptr %i.d, align 4, !tbaa !30
  %i.e = add nsw i32 %.val47.val, %.val46.val     ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 124        ; 2 uses
  %.val49 = load i32, ptr %i.f, align 4, !tbaa !27
  %i.g = add i32 %i.e, %.val49
  %i.h = getelementptr i8, ptr %1, i64 128        ; 2 uses
  %.val50 = load i32, ptr %i.h, align 8, !tbaa !27
  %i.i = add i32 %i.g, %.val50                    ; 2 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.i) ; 0 uses
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.e) ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.12, i64 21, i64 1, ptr nonnull %0) ; 0 uses
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i32 noundef %i.i) #16 ; 0 uses
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %i.e) #16 ; 0 uses
  %.val29.i = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %i.n = getelementptr i8, ptr %.val29.i, i64 4
  %.val.val30.i = load i32, ptr %i.n, align 4, !tbaa !30
  %i.o = icmp sgt i32 %.val.val30.i, 0
  br i1 %i.o, label %.lr.ph.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.lr.ph.i, %bb.a
  %.val2233.i = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  %i.p = getelementptr i8, ptr %.val2233.i, i64 4
  %.val22.val34.i = load i32, ptr %i.p, align 4, !tbaa !30
  %i.q = icmp sgt i32 %.val22.val34.i, 0
  br i1 %i.q, label %.critedge.i, label %Io_NtkWritePiPoNodes.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.val32.i = phi ptr [ %.val.i, %.lr.ph.i ], [ %.val29.i, %bb.a ]
  %i.r = getelementptr i8, ptr %.val32.i, i64 8
  %.val23.val.i = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val23.val.i, i64 %indvars.iv.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %.val24.i = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.u = getelementptr i8, ptr %i.t, i64 48
  %.val25.i = load ptr, ptr %i.u, align 8, !tbaa !44
end_hunk_1
