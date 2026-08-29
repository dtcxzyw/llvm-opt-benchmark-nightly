Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fe-print?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
begin_hunk_0_@PQprint:bb.a
  %.not45.i = icmp eq ptr %i.ik, null
  %i.ix = select i1 %.not45.i, ptr @.str.11, ptr %i.ik
  %i.iy = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull %i.iu, i32 noundef %i.iw, ptr noundef nonnull %i.ix) #14 ; 0 uses
  %i.iz = load i8, ptr %i.hy, align 2
  %.not46.i = icmp ne i8 %i.iz, 0
  %i.ja = icmp samesign ult i64 %indvars.iv.i, %i.hz
  %or.cond.i310 = select i1 %.not46.i, i1 true, i1 %i.ja
  br i1 %or.cond.i310, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.jb = load ptr, ptr %i.d, align 8
  %i.jc = call i32 @fputs(ptr noundef %i.jb, ptr noundef %.1230) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %bb.cn, label %bb.ci, !llvm.loop !10

bb.cn:                                            ; preds = %bb.cm
  %i.jd = load i8, ptr %i.hv, align 1
  %.not39.i = icmp eq i8 %i.jd, 0
  br i1 %.not39.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.je = call i64 @fwrite(ptr nonnull @.str.43, i64 5, i64 1, ptr %.1230) ; 0 uses
  br label %output_row.exit

bb.cp:                                            ; preds = %bb.cn
  %i.jf = load i8, ptr %i.hy, align 2
  %.not40.i = icmp eq i8 %i.jf, 0
  br i1 %.not40.i, label %output_row.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jg = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.44, ptr noundef %.0219) #14 ; 0 uses
  br label %output_row.exit

output_row.exit:                                  ; preds = %bb.co, %bb.cp, %bb.cq
  %i.jh = call i32 @fputc(i32 noundef 10, ptr noundef %.1230) ; 0 uses
  %i.ji = add nuw nsw i32 %.1228348, 1            ; 2 uses
  %exitcond375.not = icmp eq i32 %i.ji, %i.l
  br i1 %exitcond375.not, label %.loopexit, label %bb.cd, !llvm.loop !11

.loopexit:                                        ; preds = %output_row.exit, %bb.cc, %bb.bt, %._crit_edge347
  %.1220 = phi ptr [ null, %._crit_edge347 ], [ null, %bb.bt ], [ %.0219, %bb.cc ], [ %.0219, %output_row.exit ] ; 3 uses
  %i.jj = load i8, ptr %2, align 8
  %.not288 = icmp eq i8 %i.jj, 0
  br i1 %.not288, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %.loopexit
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.jl = load i8, ptr %i.jk, align 1
  %.not289 = icmp eq i8 %i.jl, 0
  br i1 %.not289, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.jm = call i32 @PQntuples(ptr noundef %1) #14
  %i.jn = call i32 @PQntuples(ptr noundef %1) #14
  %i.jo = icmp eq i32 %i.jn, 1
  %i.jp = select i1 %i.jo, ptr @.str.11, ptr @.str.18
  %i.jq = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.17, i32 noundef %i.jm, ptr noundef nonnull %i.jp) #14 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %.loopexit
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.js = load i8, ptr %i.jr, align 1
  %.not290 = icmp eq i8 %i.js, 0
  br i1 %.not290, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jt = load i8, ptr %i.cv, align 4
  %.not291 = icmp eq i8 %i.jt, 0
  br i1 %.not291, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ju = call i64 @fwrite(ptr nonnull @.str.13, i64 9, i64 1, ptr %.1230) ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %do_field.exit, %bb.ct, %bb.cu, %bb.cv, %bb.aa, %bb.e, %bb.c
  %.2231 = phi ptr [ %0, %bb.c ], [ %.1230, %do_field.exit ], [ %.1230, %bb.cu ], [ %.1230, %bb.cv ], [ %.1230, %bb.ct ], [ %.1230, %bb.aa ], [ %0, %bb.e ]
  %.0223 = phi i32 [ undef, %bb.c ], [ %i.l, %do_field.exit ], [ %i.l, %bb.cu ], [ %i.l, %bb.cv ], [ %i.l, %bb.ct ], [ %i.l, %bb.aa ], [ %i.l, %bb.e ]
  %.0222 = phi ptr [ null, %bb.c ], [ %i.p, %do_field.exit ], [ %i.p, %bb.cu ], [ %i.p, %bb.cv ], [ %i.p, %bb.ct ], [ %i.p, %bb.aa ], [ %i.p, %bb.e ]
  %.0221 = phi ptr [ null, %bb.c ], [ %i.o, %do_field.exit ], [ %i.o, %bb.cu ], [ %i.o, %bb.cv ], [ %i.o, %bb.ct ], [ %i.o, %bb.aa ], [ %i.o, %bb.e ]
  %.2 = phi ptr [ null, %bb.c ], [ null, %do_field.exit ], [ %.1220, %bb.cu ], [ %.1220, %bb.cv ], [ %.1220, %bb.ct ], [ null, %bb.aa ], [ null, %bb.e ]
  %.1218 = phi ptr [ null, %bb.c ], [ %.0217, %do_field.exit ], [ %.0217, %bb.cu ], [ %.0217, %bb.cv ], [ %.0217, %bb.ct ], [ null, %bb.aa ], [ null, %bb.e ] ; 3 uses
  %.0216 = phi ptr [ null, %bb.c ], [ %i.n, %do_field.exit ], [ %i.n, %bb.cu ], [ %i.n, %bb.cv ], [ %i.n, %bb.ct ], [ %i.n, %bb.aa ], [ %i.n, %bb.e ]
  %.1211 = phi i1 [ false, %bb.c ], [ %.0210, %do_field.exit ], [ %.0210, %bb.cu ], [ %.0210, %bb.cv ], [ %.0210, %bb.ct ], [ %.0210, %bb.aa ], [ false, %bb.e ]
  %.1209 = phi i1 [ false, %bb.c ], [ %.0208, %do_field.exit ], [ %.0208, %bb.cu ], [ %.0208, %bb.cv ], [ %.0208, %bb.ct ], [ %.0208, %bb.aa ], [ false, %bb.e ]
  call void @free(ptr noundef %.0222) #14
  call void @free(ptr noundef %.0221) #14
  call void @free(ptr noundef %.2) #14
  %.not299 = icmp eq ptr %.1218, null
  br i1 %.not299, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jv = sext i32 %.0223 to i64
  %i.jw = add nsw i64 %i.jv, 1                    ; 2 uses
  %.not300351 = icmp eq i64 %i.jw, 0
  br i1 %.not300351, label %._crit_edge355, label %.lr.ph354.preheader

.lr.ph354.preheader:                              ; preds = %bb.cx
  %i.jx = zext nneg i32 %i.b to i64
  %i.jy = mul nsw i64 %i.jw, %i.jx
  br label %.lr.ph354

.lr.ph354:                                        ; preds = %.lr.ph354.preheader, %.lr.ph354
  %.0352 = phi i64 [ %i.jz, %.lr.ph354 ], [ %i.jy, %.lr.ph354.preheader ]
  %i.jz = add i64 %.0352, -1                      ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %.1218, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8
  call void @free(ptr noundef %i.kb) #14
  %.not300 = icmp eq i64 %i.jz, 0
  br i1 %.not300, label %._crit_edge355, label %.lr.ph354, !llvm.loop !12

._crit_edge355:                                   ; preds = %.lr.ph354, %bb.cx
  call void @free(ptr noundef nonnull %.1218) #14
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge355, %bb.cw
  call void @free(ptr noundef %.0216) #14
  br i1 %.1211, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.kc = call i32 @pclose(ptr noundef %.2231)    ; 0 uses
  br i1 %.1209, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.kd = load i8, ptr %i.a, align 1, !range !13, !noundef !14
  %i.ke = trunc nuw i8 %i.kd to i1
  call void @pq_reset_sigpipe(ptr noundef nonnull %3, i1 noundef zeroext %i.ke, i1 noundef zeroext true) #14
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @PQnfields(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @pg_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @PQntuples(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @PQfname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

declare i32 @pq_block_sigpipe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @do_header(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 1, -2147483648) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = sext i32 %6 to i64                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 4 uses
  %i.e = load i32, ptr %3, align 4
  %i.f = sext i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.33, i64 4, i64 1, ptr %0) ; 0 uses
  br label %.thread131

bb.c:                                             ; preds = %.preheader, %.backedge
  %8 = phi i64 [ %i.f, %.preheader ], [ %i.m, %.backedge ]
  %.0125137190 = phi i64 [ 0, %.preheader ], [ %.0125137.be, %.backedge ]
  %indvars.iv189 = phi i64 [ 0, %.preheader ], [ %indvars.iv.be, %.backedge ] ; 2 uses
  %9 = add nuw i64 %.0125137190, %8               ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %9, i64 range(i64 -2147483648, 2147483648) %i.c)
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %10 = add nuw i64 %9, %i.c                      ; 4 uses
  br i1 %i.i, label %.loopexit135, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 2
  %.not106 = icmp eq i8 %i.j, 0
  br i1 %.not106, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %11 = icmp ugt i64 %10, -3
  br i1 %11, label %.loopexit135, label %.thread

bb.f:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit180, label %.backedge

.backedge:                                        ; preds = %bb.f, %.thread
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.next174, %.thread ] ; 2 uses
  %.0125137.be = phi i64 [ %10, %bb.f ], [ %12, %.thread ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.be
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0125137.be, i64 range(i64 -2147483648, 2147483648) %i.m)
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %.loopexit135, label %bb.c, !llvm.loop !15

.thread:                                          ; preds = %bb.e
  %12 = add nuw i64 %10, 2                        ; 3 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond.not175 = icmp eq i64 %indvars.iv.next174, %wide.trip.count
  br i1 %exitcond.not175, label %bb.g, label %.backedge

bb.g:                                             ; preds = %.thread
  %i.p = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %12, i64 range(i64 -2147483648, 2147483648) %i.c)
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %.loopexit135, label %bb.h

bb.h:                                             ; preds = %bb.g
  %13 = add nuw i64 %12, %i.c                     ; 2 uses
  %i.r = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 range(i64 -2147483648, 2147483648) %i.c)
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %.loopexit135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %14 = add nuw i64 %13, %i.c                     ; 2 uses
  %15 = icmp ugt i64 %14, -3
  %16 = add nuw i64 %14, 2
  br i1 %15, label %.loopexit135, label %.loopexit180

.loopexit180:                                     ; preds = %bb.f, %bb.i
  %.2127 = phi i64 [ %16, %bb.i ], [ %10, %bb.f ] ; 2 uses
  %17 = icmp eq i64 %.2127, -1
  br i1 %17, label %.loopexit135, label %bb.j

bb.j:                                             ; preds = %.loopexit180
  %18 = add nuw i64 %.2127, 1
  %i.t = tail call noalias ptr @malloc(i64 noundef %18) #17 ; 7 uses
  %.not98 = icmp eq ptr %i.t, null
  br i1 %.not98, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i8, ptr %i.d, align 2
  %.not99 = icmp eq i8 %i.u, 0
  br i1 %.not99, label %.loopexit134, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %.not100139 = icmp eq i8 %i.x, 0
  br i1 %.not100139, label %.loopexit134, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.082141 = phi ptr [ %i.y, %.lr.ph ], [ %i.w, %bb.l ]
  %.084140 = phi ptr [ %i.z, %.lr.ph ], [ %i.t, %bb.l ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.082141, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.084140, i64 1 ; 2 uses
  store i8 43, ptr %.084140, align 1
  %i.aa = load i8, ptr %i.y, align 1
  %.not100 = icmp eq i8 %i.aa, 0
  br i1 %.not100, label %.loopexit134, label %.lr.ph, !llvm.loop !16

.loopexit134:                                     ; preds = %.lr.ph, %bb.l, %bb.k
  %.1 = phi ptr [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.z, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.loopexit134, %.loopexit
  %indvars.iv160 = phi i64 [ 0, %.loopexit134 ], [ %indvars.iv.next161, %.loopexit ] ; 2 uses
  %.2154 = phi ptr [ %.1, %.loopexit134 ], [ %.5, %.loopexit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv160
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = load i8, ptr %i.d, align 2              ; 2 uses
  %.not102 = icmp eq i8 %i.ae, 0
  %i.af = select i1 %.not102, i32 0, i32 2        ; 2 uses
  %i.ag = add i32 %i.af, %i.ad                    ; 2 uses
  %.not103142 = icmp eq i32 %i.ag, 0
  br i1 %.not103142, label %._crit_edge, label %.lr.ph145.preheader

.lr.ph145.preheader:                              ; preds = %bb.m
  %i.ah = zext i32 %i.ag to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.2154, i8 45, i64 %i.ah, i1 false)
  %scevgep = getelementptr i8, ptr %.2154, i64 1
  %i.ai = add nsw i32 %i.af, -1
  %i.aj = add i32 %i.ai, %i.ad
  %i.ak = zext i32 %i.aj to i64
  %scevgep159 = getelementptr i8, ptr %scevgep, i64 %i.ak
  %.pre = load i8, ptr %i.d, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph145.preheader, %bb.m
  %i.al = phi i8 [ %i.ae, %bb.m ], [ %.pre, %.lr.ph145.preheader ]
  %.3.lcssa = phi ptr [ %.2154, %bb.m ], [ %scevgep159, %.lr.ph145.preheader ] ; 3 uses
  %.not104 = icmp ne i8 %i.al, 0
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 3 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next161, %wide.trip.count
  %or.cond = select i1 %.not104, i1 true, i1 %i.am
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %.not105147 = icmp eq i8 %i.ao, 0
  br i1 %.not105147, label %.loopexit, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.n, %.lr.ph151
  %.0149 = phi ptr [ %i.ap, %.lr.ph151 ], [ %i.an, %bb.n ]
  %.4148 = phi ptr [ %i.aq, %.lr.ph151 ], [ %.3.lcssa, %bb.n ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0149, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.4148, i64 1 ; 2 uses
  store i8 43, ptr %.4148, align 1
  %i.ar = load i8, ptr %i.ap, align 1
  %.not105 = icmp eq i8 %i.ar, 0
  br i1 %.not105, label %.loopexit, label %.lr.ph151, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph151, %bb.n, %._crit_edge
  %.5 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.3.lcssa, %bb.n ], [ %i.aq, %.lr.ph151 ] ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count
  br i1 %exitcond164.not, label %bb.o, label %bb.m, !llvm.loop !18

bb.o:                                             ; preds = %.loopexit
  store i8 0, ptr %.5, align 1
  %i.as = load i8, ptr %i.d, align 2
  %.not101 = icmp eq i8 %i.as, 0
  br i1 %.not101, label %.thread131, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.t) #14 ; 0 uses
  br label %.thread131

bb.q:                                             ; preds = %bb.j
  %i.au = load ptr, ptr @stderr, align 8
  %i.av = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %bb.ad

.thread131:                                       ; preds = %bb.p, %bb.o, %bb.b
  %.187 = phi ptr [ null, %bb.b ], [ %i.t, %bb.o ], [ %i.t, %bb.p ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 2
  %.not107 = icmp eq i8 %i.ax, 0
  br i1 %.not107, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread131
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i32 @fputs(ptr noundef %i.az, ptr noundef %0) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread131
  %invariant.op = add nsw i32 %2, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = zext nneg i32 %invariant.op to i64
  %wide.trip.count168 = zext nneg i32 %2 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.z
  %indvars.iv165 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next166, %bb.z ] ; 7 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.be = tail call ptr @PQfname(ptr noundef %7, i32 noundef %i.bd) #14 ; 2 uses
  %i.bf = load i8, ptr %i.a, align 1
  %.not109 = icmp eq i8 %i.bf, 0
  br i1 %.not109, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv165
  %i.bh = load i8, ptr %i.bg, align 1
  %.not114 = icmp eq i8 %i.bh, 0
  %i.bi = select i1 %.not114, ptr @.str.30, ptr @.str.29
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv165
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.bi, ptr noundef %i.bk) #14 ; 0 uses
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #15
  %i.bn = trunc i64 %i.bm to i32                  ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bn
  br i1 %i.bq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.bn, ptr %i.bo, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.br = phi i32 [ %i.bn, %bb.w ], [ %i.bp, %bb.v ]
  %i.bs = load i8, ptr %i.aw, align 2
  %.not110 = icmp eq i8 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv165
  %i.bu = load i8, ptr %i.bt, align 1
  %.not111 = icmp eq i8 %i.bu, 0                  ; 2 uses
  %i.bv = select i1 %.not111, ptr @.str.38, ptr @.str.37
  %i.bw = select i1 %.not111, ptr @.str.36, ptr @.str.35
  %.sink = select i1 %.not110, ptr %i.bv, ptr %i.bw
  %i.bx = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %0, ptr noundef nonnull %.sink, i32 noundef %i.br, ptr noundef nonnull %i.be) #14 ; 0 uses
  %i.by = load i8, ptr %i.aw, align 2
  %.not113 = icmp ne i8 %i.by, 0
  %i.bz = icmp samesign ult i64 %indvars.iv165, %i.bc
  %or.cond117 = select i1 %.not113, i1 true, i1 %i.bz
  br i1 %or.cond117, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ca = load ptr, ptr %i.bb, align 8
  %i.cb = tail call i32 @fputs(ptr noundef %i.ca, ptr noundef %0) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.u
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %bb.aa, label %bb.t, !llvm.loop !19

bb.aa:                                            ; preds = %bb.z
  %i.cc = load i8, ptr %i.a, align 1
  %.not108 = icmp eq i8 %i.cc, 0
  br i1 %.not108, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = tail call i64 @fwrite(ptr nonnull @.str.39, i64 6, i64 1, ptr %0) ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ce = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %.187) #14 ; 0 uses
  br label %bb.ad

.loopexit135:                                     ; preds = %bb.c, %bb.e, %.backedge, %bb.g, %.loopexit180, %bb.i, %bb.h
  %i.cf = load ptr, ptr @stderr, align 8
  %i.cg = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.41) #14 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.q, %bb.ab, %bb.ac, %.loopexit135
  %.191 = phi ptr [ null, %.loopexit135 ], [ null, %bb.q ], [ %.187, %bb.ac ], [ %.187, %bb.ab ]
  ret ptr %.191
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8
end_hunk_0
