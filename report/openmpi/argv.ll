Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/argv?download=true
inline.NumInlined: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@opal_argv_split_inter:bb.a
bb.f:                                             ; preds = %bb.e
  %calloc.i.i62 = call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.y = icmp eq ptr %calloc.i.i62, null
  br i1 %i.y, label %.critedge, label %bb.g

.preheader.i.i.i44:                               ; preds = %bb.e
  %i.z = load ptr, ptr %.0108132202, align 8, !tbaa !15
  %.not9.i.i.i45 = icmp eq ptr %i.z, null
  br i1 %.not9.i.i.i45, label %opal_argv_count.exit.i.i50, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %.preheader.i.i.i44, %.lr.ph.i.i.i46
  %.011.i.i.i47 = phi i32 [ %i.aa, %.lr.ph.i.i.i46 ], [ 0, %.preheader.i.i.i44 ]
  %.0610.i.i.i48 = phi ptr [ %i.ab, %.lr.ph.i.i.i46 ], [ %.0108132202, %.preheader.i.i.i44 ]
  %i.aa = add nuw nsw i32 %.011.i.i.i47, 1        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0610.i.i.i48, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  %.not.i.i.i49 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i49, label %opal_argv_count.exit.i.i50, label %.lr.ph.i.i.i46, !llvm.loop !0

opal_argv_count.exit.i.i50:                       ; preds = %.lr.ph.i.i.i46, %.preheader.i.i.i44
  %.07.i.i.i51 = phi i32 [ 0, %.preheader.i.i.i44 ], [ %i.aa, %.lr.ph.i.i.i46 ] ; 2 uses
  %i.ad = add nsw i32 %.07.i.i.i51, 2
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = call ptr @realloc(ptr noundef nonnull %.0108132202, i64 noundef %i.af) #15 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.critedge, label %bb.g

bb.g:                                             ; preds = %opal_argv_count.exit.i.i50, %bb.f
  %.4 = phi ptr [ %calloc.i.i62, %bb.f ], [ %i.ag, %opal_argv_count.exit.i.i50 ] ; 2 uses
  %.0.i.i52 = phi i32 [ 0, %bb.f ], [ %.07.i.i.i51, %opal_argv_count.exit.i.i50 ]
  %i.ai = call noalias ptr @strdup(ptr noundef nonnull readonly %.033133201) #16 ; 2 uses
  %i.aj = sext i32 %.0.i.i52 to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %.4, i64 %i.aj ; 2 uses
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !15
  %i.al = icmp eq ptr %i.ai, null
  br i1 %i.al, label %.critedge, label %.preheader.i.i53

.preheader.i.i53:                                 ; preds = %bb.g
  %i.am = getelementptr i8, ptr %i.ak, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !15
  br label %.backedge

bb.h:                                             ; preds = %.critedge2
  %i.an = icmp ugt i64 %i.f, 127
  %i.ao = add i64 %.0128, 2                       ; 3 uses
  br i1 %i.an, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ap = call noalias ptr @malloc(i64 noundef %i.ao) #17 ; 6 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @opal_string_copy(ptr noundef nonnull %i.ap, ptr noundef nonnull %.033133201, i64 noundef %i.ao) #16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  store i8 0, ptr %i.ar, align 1, !tbaa !18
  %i.as = icmp eq ptr %.0108132202, null
  br i1 %i.as, label %bb.k, label %.preheader.i.i.i64

bb.k:                                             ; preds = %bb.j
  %calloc.i.i82 = call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.at = icmp eq ptr %calloc.i.i82, null
  br i1 %i.at, label %bb.m, label %bb.l

.preheader.i.i.i64:                               ; preds = %bb.j
  %i.au = load ptr, ptr %.0108132202, align 8, !tbaa !15
  %.not9.i.i.i65 = icmp eq ptr %i.au, null
  br i1 %.not9.i.i.i65, label %opal_argv_count.exit.i.i70, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %.preheader.i.i.i64, %.lr.ph.i.i.i66
  %.011.i.i.i67 = phi i32 [ %i.av, %.lr.ph.i.i.i66 ], [ 0, %.preheader.i.i.i64 ]
  %.0610.i.i.i68 = phi ptr [ %i.aw, %.lr.ph.i.i.i66 ], [ %.0108132202, %.preheader.i.i.i64 ]
  %i.av = add nuw nsw i32 %.011.i.i.i67, 1        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0610.i.i.i68, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !15
  %.not.i.i.i69 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i69, label %opal_argv_count.exit.i.i70, label %.lr.ph.i.i.i66, !llvm.loop !0

opal_argv_count.exit.i.i70:                       ; preds = %.lr.ph.i.i.i66, %.preheader.i.i.i64
  %.07.i.i.i71 = phi i32 [ 0, %.preheader.i.i.i64 ], [ %i.av, %.lr.ph.i.i.i66 ] ; 2 uses
  %i.ay = add nsw i32 %.07.i.i.i71, 2
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 3
  %i.bb = call ptr @realloc(ptr noundef nonnull %.0108132202, i64 noundef %i.ba) #15 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %opal_argv_count.exit.i.i70, %bb.k
  %.6 = phi ptr [ %calloc.i.i82, %bb.k ], [ %i.bb, %opal_argv_count.exit.i.i70 ] ; 2 uses
  %.0.i.i72 = phi i32 [ 0, %bb.k ], [ %.07.i.i.i71, %opal_argv_count.exit.i.i70 ]
  %i.bd = call noalias ptr @strdup(ptr noundef nonnull readonly %i.ap) #16 ; 2 uses
  %i.be = sext i32 %.0.i.i72 to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.6, i64 %i.be ; 2 uses
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !15
  %i.bg = icmp eq ptr %i.bd, null
  br i1 %i.bg, label %bb.m, label %.preheader.i.i73

.preheader.i.i73:                                 ; preds = %bb.l
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !15
  call void @free(ptr noundef nonnull %i.ap) #16
  br label %opal_argv_append.exit

bb.m:                                             ; preds = %bb.l, %bb.k, %opal_argv_count.exit.i.i70
  call void @free(ptr noundef nonnull %i.ap) #16
  br label %.critedge

bb.n:                                             ; preds = %bb.h
  call void @opal_string_copy(ptr noundef nonnull %i.a, ptr noundef nonnull %.033133201, i64 noundef %i.ao) #16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 0, ptr %i.bi, align 1, !tbaa !18
  %i.bj = icmp eq ptr %.0108132202, null
  br i1 %i.bj, label %bb.o, label %.preheader.i.i.i84

bb.o:                                             ; preds = %bb.n
  %calloc.i.i102 = call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.bk = icmp eq ptr %calloc.i.i102, null
  br i1 %i.bk, label %.critedge, label %bb.p

.preheader.i.i.i84:                               ; preds = %bb.n
  %i.bl = load ptr, ptr %.0108132202, align 8, !tbaa !15
  %.not9.i.i.i85 = icmp eq ptr %i.bl, null
  br i1 %.not9.i.i.i85, label %opal_argv_count.exit.i.i90, label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %.preheader.i.i.i84, %.lr.ph.i.i.i86
  %.011.i.i.i87 = phi i32 [ %i.bm, %.lr.ph.i.i.i86 ], [ 0, %.preheader.i.i.i84 ]
  %.0610.i.i.i88 = phi ptr [ %i.bn, %.lr.ph.i.i.i86 ], [ %.0108132202, %.preheader.i.i.i84 ]
  %i.bm = add nuw nsw i32 %.011.i.i.i87, 1        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0610.i.i.i88, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15
  %.not.i.i.i89 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i89, label %opal_argv_count.exit.i.i90, label %.lr.ph.i.i.i86, !llvm.loop !0

opal_argv_count.exit.i.i90:                       ; preds = %.lr.ph.i.i.i86, %.preheader.i.i.i84
  %.07.i.i.i91 = phi i32 [ 0, %.preheader.i.i.i84 ], [ %i.bm, %.lr.ph.i.i.i86 ] ; 2 uses
  %i.bp = add nsw i32 %.07.i.i.i91, 2
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 3
  %i.bs = call ptr @realloc(ptr noundef nonnull %.0108132202, i64 noundef %i.br) #15 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.critedge, label %bb.p

bb.p:                                             ; preds = %opal_argv_count.exit.i.i90, %bb.o
  %.8 = phi ptr [ %calloc.i.i102, %bb.o ], [ %i.bs, %opal_argv_count.exit.i.i90 ] ; 2 uses
  %.0.i.i92 = phi i32 [ 0, %bb.o ], [ %.07.i.i.i91, %opal_argv_count.exit.i.i90 ]
  %i.bu = call noalias ptr @strdup(ptr noundef nonnull readonly %i.a) #16 ; 2 uses
  %i.bv = sext i32 %.0.i.i92 to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %.8, i64 %i.bv ; 2 uses
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !15
  %i.bx = icmp eq ptr %i.bu, null
  br i1 %i.bx, label %.critedge, label %.preheader.i.i93

.preheader.i.i93:                                 ; preds = %bb.p
  %i.by = getelementptr i8, ptr %i.bw, i64 8
  store ptr null, ptr %i.by, align 8, !tbaa !15
  br label %opal_argv_append.exit

opal_argv_append.exit:                            ; preds = %.preheader.i.i93, %.preheader.i.i, %.preheader.i.i73, %.critedge2.thread
  %.031.lcssa173 = phi ptr [ %.033133201, %.critedge2.thread ], [ %i.e, %.preheader.i.i93 ], [ %i.e, %.preheader.i.i73 ], [ %.033133201, %.preheader.i.i ]
  %.1 = phi ptr [ %.0108132202, %.critedge2.thread ], [ %.8, %.preheader.i.i93 ], [ %.6, %.preheader.i.i73 ], [ %.2, %.preheader.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.031.lcssa173, i64 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader.i.i53, %opal_argv_append.exit
  %.0108.be = phi ptr [ %.1, %opal_argv_append.exit ], [ %.4, %.preheader.i.i53 ] ; 2 uses
  %.033.be = phi ptr [ %i.bz, %opal_argv_append.exit ], [ %i.e, %.preheader.i.i53 ] ; 2 uses
  %i.ca = load i8, ptr %.033.be, align 1, !tbaa !18 ; 2 uses
  %.not36 = icmp eq i8 %i.ca, 0
  br i1 %.not36, label %.critedge, label %.preheader

.critedge:                                        ; preds = %opal_argv_count.exit.i.i90, %bb.o, %bb.p, %opal_argv_count.exit.i.i50, %bb.f, %bb.g, %opal_argv_count.exit.i.i, %bb.c, %bb.d, %.backedge, %bb.i, %.lr.ph134, %bb.a, %bb.m
  %.032 = phi ptr [ null, %bb.m ], [ null, %bb.a ], [ null, %.lr.ph134 ], [ null, %bb.i ], [ null, %opal_argv_count.exit.i.i50 ], [ null, %opal_argv_count.exit.i.i ], [ %.0108.be, %.backedge ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.p ], [ null, %bb.o ], [ null, %opal_argv_count.exit.i.i90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.032
}

; Function Attrs: nounwind uwtable
define noalias ptr @opal_argv_split_with_empty(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @opal_argv_split_inter(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @opal_argv_join(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str) #16
  br label %.loopexit

.preheader:                                       ; preds = %bb.b, %.preheader
  %.02534 = phi i64 [ %i.h, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %.02733 = phi ptr [ %i.i, %.preheader ], [ %0, %bb.b ]
  %i.e = phi ptr [ %.pr, %.preheader ], [ %i.b, %bb.b ]
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #18 ; 2 uses
  %i.g = add i64 %.02534, 1
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02733, i64 8 ; 2 uses
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.d, label %.preheader, !llvm.loop !23

bb.d:                                             ; preds = %.preheader
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 12 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %.02534, %i.f                    ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !18
  %.not38 = icmp eq i64 %i.l, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.n = trunc i32 %1 to i8                       ; 3 uses
  %xtraiter = and i64 %i.l, 1
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.l, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.new
  %.037 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.l ] ; 4 uses
  %.02636 = phi ptr [ %i.b, %.lr.ph.new ], [ %.1.1, %bb.l ] ; 2 uses
  %.12835 = phi ptr [ %0, %.lr.ph.new ], [ %.2.1, %bb.l ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  %i.p = load i8, ptr %.02636, align 1, !tbaa !18 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %.037
  store i8 %i.n, ptr %i.r, align 1, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.12835, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.02636, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %.037
  store i8 %i.p, ptr %i.v, align 1, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2 = phi ptr [ %i.s, %bb.g ], [ %.12835, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %i.t, %bb.g ], [ %i.u, %bb.h ]  ; 2 uses
  %i.w = or disjoint i64 %.037, 1                 ; 2 uses
  %i.x = load i8, ptr %.1, align 1, !tbaa !18     ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !18
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  store i8 %i.n, ptr %i.ab, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.1 = phi ptr [ %i.ac, %bb.k ], [ %.2, %bb.j ]
  %.1.1 = phi ptr [ %i.ad, %bb.k ], [ %i.z, %bb.j ] ; 2 uses
  %i.ae = add nuw i64 %.037, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !24

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.037.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.02636.epil.init = phi ptr [ %i.b, %.lr.ph ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod50 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.af = load i8, ptr %.02636.epil.init, align 1, !tbaa !18 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %.037.epil.init
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !18
  br label %.loopexit

bb.n:                                             ; preds = %.epil.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %.037.epil.init
  store i8 %i.n, ptr %i.ai, align 1, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.n, %bb.m, %bb.e, %bb.d, %bb.c
  %.029 = phi ptr [ %i.d, %bb.c ], [ null, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.m ], [ %i.j, %bb.n ], [ %i.j, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.029
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @opal_argv_join_range(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.011.i = phi i32 [ %i.d, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %.0610.i = phi ptr [ %i.e, %.lr.ph.i ], [ %0, %bb.b ]
  %i.d = add nuw nsw i32 %.011.i, 1
  %i.e = getelementptr inbounds nuw i8, ptr %.0610.i, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %opal_argv_count.exit, label %.lr.ph.i, !llvm.loop !0

opal_argv_count.exit:                             ; preds = %.lr.ph.i
  %i.g = trunc i64 %1 to i32
  %.not.not = icmp slt i32 %.011.i, %i.g
  br i1 %.not.not, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %opal_argv_count.exit
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  %i.j = icmp ne ptr %i.i, null
  %i.k = icmp ult i64 %1, %2
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %.loopexit.sink.split

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.m = phi ptr [ %i.s, %.lr.ph ], [ %i.i, %bb.c ]
  %.045 = phi i64 [ %i.r, %.lr.ph ], [ %1, %bb.c ]
  %.03444 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.03743 = phi ptr [ %i.q, %.lr.ph ], [ %i.h, %bb.c ]
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #18 ; 2 uses
  %i.o = add i64 %.03444, 1
  %i.p = add i64 %i.o, %i.n                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03743, i64 8 ; 2 uses
  %i.r = add nuw i64 %.045, 1                     ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.t = icmp ne ptr %i.s, null
  %i.u = icmp ult i64 %i.r, %2
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph
  %i.w = icmp eq i64 %i.p, 0
  br i1 %i.w, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.p) #17 ; 12 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %.03444, %i.n                    ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !18
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.e
  %i.ab = trunc i32 %3 to i8                      ; 3 uses
  %xtraiter = and i64 %i.z, 1
  %i.ac = icmp eq i64 %i.z, 1
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph50.new

.lr.ph50.new:                                     ; preds = %.lr.ph50
  %unroll_iter = and i64 %i.z, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph50.new
  %.148 = phi i64 [ 0, %.lr.ph50.new ], [ %i.as, %bb.l ] ; 4 uses
  %.03547 = phi ptr [ %i.i, %.lr.ph50.new ], [ %.136.1, %bb.l ] ; 2 uses
  %.13846 = phi ptr [ %i.h, %.lr.ph50.new ], [ %.2.1, %bb.l ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph50.new ], [ %niter.next.1, %bb.l ]
  %i.ad = load i8, ptr %.03547, align 1, !tbaa !18 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %.148
  store i8 %i.ab, ptr %i.af, align 1, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.13846, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.03547, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %.148
  store i8 %i.ad, ptr %i.aj, align 1, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2 = phi ptr [ %i.ag, %bb.g ], [ %.13846, %bb.h ] ; 2 uses
  %.136 = phi ptr [ %i.ah, %bb.g ], [ %i.ai, %bb.h ] ; 2 uses
  %i.ak = or disjoint i64 %.148, 1                ; 2 uses
  %i.al = load i8, ptr %.136, align 1, !tbaa !18  ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.136, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ak
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !18
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ak
  store i8 %i.ab, ptr %i.ap, align 1, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.1 = phi ptr [ %i.aq, %bb.k ], [ %.2, %bb.j ]
  %.136.1 = phi ptr [ %i.ar, %bb.k ], [ %i.an, %bb.j ] ; 2 uses
  %i.as = add nuw i64 %.148, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !26

.loopexit.sink.split:                             ; preds = %._crit_edge, %bb.c, %bb.a, %bb.b, %opal_argv_count.exit
  %i.at = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str) #16
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph50
  %.148.epil.init = phi i64 [ 0, %.lr.ph50 ], [ %i.as, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.03547.epil.init = phi ptr [ %i.i, %.lr.ph50 ], [ %.136.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod63 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.au = load i8, ptr %.03547.epil.init, align 1, !tbaa !18 ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.148.epil.init
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !18
  br label %.loopexit

bb.n:                                             ; preds = %.epil.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 %.148.epil.init
  store i8 %i.ab, ptr %i.ax, align 1, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.n, %bb.m, %.loopexit.sink.split, %bb.e, %bb.d
  %.039 = phi ptr [ %i.x, %bb.e ], [ %i.at, %.loopexit.sink.split ], [ null, %bb.d ], [ %i.x, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @opal_argv_len(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.c = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %.preheader ]
  %.013 = phi i64 [ %i.f, %.lr.ph ], [ 8, %.preheader ]
  %.0712 = phi ptr [ %i.g, %.lr.ph ], [ %0, %.preheader ]
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #18
  %i.e = add i64 %.013, 9
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0712, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.08 = phi i64 [ 0, %bb.a ], [ 8, %.preheader ], [ %i.f, %.lr.ph ]
  ret i64 %.08
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @opal_argv_copy(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %opal_argv_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #17 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not18 = icmp eq ptr %i.c, null
  br i1 %.not18, label %opal_argv_free.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.i
  %i.d = phi ptr [ %i.s, %.preheader.i.i ], [ null, %bb.b ]
  %i.e = phi ptr [ %i.u, %.preheader.i.i ], [ %i.c, %bb.b ]
  %.020 = phi ptr [ %i.t, %.preheader.i.i ], [ %0, %bb.b ]
  %.01119 = phi ptr [ %i.l, %.preheader.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %opal_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.0610.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.01119, %.preheader.i.i.i ]
  %i.f = add nuw nsw i32 %.011.i.i.i, 1           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0610.i.i.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %opal_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

opal_argv_count.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 2 uses
  %i.i = add nsw i32 %.07.i.i.i, 2
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call ptr @realloc(ptr noundef nonnull %.01119, i64 noundef %i.k) #15 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %opal_argv_free.exit, label %bb.c

bb.c:                                             ; preds = %opal_argv_count.exit.i.i
  %i.n = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #16 ; 2 uses
  %i.o = sext i32 %.07.i.i.i to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.o ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !15
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %.preheader.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.p, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !15
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %opal_argv_free.exit, label %.preheader.i.i.i, !llvm.loop !28

.preheader.i:                                     ; preds = %bb.c
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %.not8.i = icmp eq ptr %i.v, null
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.w = phi ptr [ %i.y, %.lr.ph.i ], [ %i.v, %.preheader.i ]
  %.09.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.l, %.preheader.i ]
  tail call void @free(ptr noundef nonnull %i.w) #16
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.l) #16
  br label %opal_argv_free.exit

opal_argv_free.exit:                              ; preds = %.preheader.i.i, %opal_argv_count.exit.i.i, %bb.b, %._crit_edge.i, %bb.a
  %.05 = phi ptr [ null, %._crit_edge.i ], [ null, %bb.a ], [ %i.b, %bb.b ], [ %i.l, %.preheader.i.i ], [ null, %opal_argv_count.exit.i.i ]
  ret ptr %.05
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -5, 1) i32 @opal_argv_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
end_hunk_0
