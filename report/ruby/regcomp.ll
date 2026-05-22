inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@onig_compile_ruby:bb.a
  store i32 %i.hs, ptr %i.ho, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.not90, label %bb.ax, label %bb.br

bb.ax:                                            ; preds = %set_optimize_info_from_tree.exit.thread, %set_optimize_info_from_tree.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !109 ; 2 uses
  %.not91 = icmp eq ptr %i.hu, null
  br i1 %.not91, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef nonnull %i.hu) #22
  store ptr null, ptr %i.ht, align 8, !tbaa !109
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.hv = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.hw = call fastcc i32 @compile_tree(ptr noundef %i.hv, ptr noundef nonnull %0) ; 3 uses
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %bb.az
  %i.hy = call fastcc i32 @add_opcode(ptr noundef nonnull %0, i32 noundef 1)
  %i.hz = load i32, ptr %i.an, align 8, !tbaa !63
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ib = call fastcc i32 @unset_addr_list_fix(ptr noundef %9, ptr noundef nonnull %0) ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.val97 = load ptr, ptr %i.ic, align 8, !tbaa !67
  call void @free(ptr noundef %.val97) #22
  %.not92 = icmp eq i32 %i.ib, 0
  br i1 %.not92, label %bb.bc, label %unset_addr_list_init.exit

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1 = phi i32 [ 0, %bb.bb ], [ %i.hy, %bb.ba ]  ; 3 uses
  %i.id = load i32, ptr %i.s, align 4, !tbaa !52
  %.not93 = icmp eq i32 %i.id, 0
  br i1 %.not93, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ie = load i32, ptr %i.bv, align 4, !tbaa !74
  %.not94 = icmp eq i32 %i.ie, 0
  br i1 %.not94, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.if = getelementptr i8, ptr %0, i64 48
  store i32 2, ptr %i.if, align 8, !tbaa !110
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.ig = load i32, ptr %i.bn, align 8, !tbaa !73
  %.not95 = icmp eq i32 %i.ig, 0
  %i.ih = getelementptr i8, ptr %0, i64 48        ; 2 uses
  br i1 %.not95, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 1, ptr %i.ih, align 8, !tbaa !110
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  store i32 0, ptr %i.ih, align 8, !tbaa !110
  br label %bb.bk

bb.bi:                                            ; preds = %bb.az
  %i.ii = load i32, ptr %i.an, align 8, !tbaa !63
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ik = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.val96 = load ptr, ptr %i.ik, align 8, !tbaa !67
  call void @free(ptr noundef %.val96) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.be, %bb.bh, %bb.bg
  %.2 = phi i32 [ %.1, %bb.be ], [ %.1, %bb.bg ], [ %.1, %bb.bh ], [ %i.hw, %bb.bj ], [ %i.hw, %bb.bi ]
  %i.il = load ptr, ptr %i.a, align 8, !tbaa !61
  call void @onig_node_free(ptr noundef %i.il) #22
  br label %onig_bbuf_init.exit

onig_bbuf_init.exit:                              ; preds = %bb.d, %bb.bk
  %.3 = phi i32 [ %.2, %bb.bk ], [ -5, %bb.d ]
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bq, %onig_bbuf_init.exit
  %.0.i98 = phi ptr [ %0, %onig_bbuf_init.exit ], [ %i.iy, %bb.bq ] ; 7 uses
  %i.im = getelementptr i8, ptr %.0.i98, i64 8    ; 2 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !111 ; 3 uses
  %.not.i99 = icmp eq i32 %i.in, 0
  br i1 %.not.i99, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.io = load ptr, ptr %.0.i98, align 8, !tbaa !17
  call void @free(ptr noundef %i.io) #22
  %i.ip = getelementptr i8, ptr %.0.i98, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !38
  br label %.sink.split.i

bb.bn:                                            ; preds = %bb.bl
  %i.iq = getelementptr i8, ptr %.0.i98, i64 12   ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !38
  %i.is = icmp ugt i32 %i.ir, %i.in
  br i1 %i.is, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.it = load ptr, ptr %.0.i98, align 8, !tbaa !17
  %i.iu = zext i32 %i.in to i64
  %i.iv = call ptr @realloc(ptr noundef %i.it, i64 noundef %i.iu) #23 ; 2 uses
  %.not17.i = icmp eq ptr %i.iv, null
  br i1 %.not17.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iw = load i32, ptr %i.im, align 8, !tbaa !111
  store i32 %i.iw, ptr %i.iq, align 4, !tbaa !38
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bp, %bb.bm
  %.sink.i = phi ptr [ %i.iv, %bb.bp ], [ null, %bb.bm ]
  store ptr %.sink.i, ptr %.0.i98, align 8, !tbaa !17
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split.i, %bb.bo, %bb.bn
  %i.ix = getelementptr i8, ptr %.0.i98, i64 448
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !27 ; 2 uses
  %.not18.i = icmp eq ptr %i.iy, null
  br i1 %.not18.i, label %onig_reg_resize.exit, label %bb.bl, !llvm.loop !112

bb.br:                                            ; preds = %set_optimize_info_from_tree.exit.thread106, %set_optimize_info_from_tree.exit, %bb.s, %bb.q, %bb.p, %bb.o
  %.4 = phi i32 [ %i.ay, %bb.o ], [ %i.ba, %bb.p ], [ %i.bd, %bb.q ], [ %i.bh, %bb.s ], [ %.0.i31.i, %set_optimize_info_from_tree.exit ], [ %i.ck, %set_optimize_info_from_tree.exit.thread106 ] ; 2 uses
  %i.iz = load i32, ptr %i.an, align 8, !tbaa !63
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %bb.bs, label %unset_addr_list_init.exit

bb.bs:                                            ; preds = %bb.br
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.val = load ptr, ptr %i.jb, align 8, !tbaa !67
  call void @free(ptr noundef %.val) #22
  br label %unset_addr_list_init.exit

unset_addr_list_init.exit:                        ; preds = %bb.n, %bb.br, %bb.bs, %bb.bb, %bb.l, %bb.e
  %.5 = phi i32 [ %i.w, %bb.e ], [ %.063, %bb.l ], [ %.4, %bb.bs ], [ %.4, %bb.br ], [ %i.ib, %bb.bb ], [ -5, %bb.n ]
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !114 ; 2 uses
  %i.je = icmp ne ptr %i.jd, null
  %or.cond = and i1 %i.b, %i.je
  br i1 %or.cond, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %unset_addr_list_init.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !115
  store ptr %i.jg, ptr %3, align 8, !tbaa !116
  %i.jh = getelementptr i8, ptr %3, i64 8
  store ptr %i.jd, ptr %i.jh, align 8, !tbaa !44
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !117
  %i.jk = getelementptr i8, ptr %3, i64 16
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !118
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %unset_addr_list_init.exit
  %i.jl = load ptr, ptr %i.a, align 8, !tbaa !61
  call void @onig_node_free(ptr noundef %i.jl) #22
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !109
  call void @free(ptr noundef %i.jn) #22
  br label %onig_reg_resize.exit

onig_reg_resize.exit:                             ; preds = %bb.bq, %bb.bu
  %.0 = phi i32 [ %.5, %bb.bu ], [ %.3, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @onig_parse_make_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @disable_noname_group_capture(ptr noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef nonnull captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr i8, ptr %2, i64 92         ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !60   ; 2 uses
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = alloca i8, i64 %i.f, align 16            ; 9 uses
  %.not62 = icmp slt i32 %i.c, 1
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr nuw i8, ptr %i.g, i64 4
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 2)
  %3 = zext nneg i32 %smax to i64
  %4 = shl nuw nsw i64 %3, 2
  %5 = add nsw i64 %4, -4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %scevgep, i8 0, i64 %5, i1 false), !tbaa !119
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call fastcc void @noname_disable_map(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.a)
  %i.h = load ptr, ptr %0, align 8, !tbaa !61
  %i.i = load i32, ptr %i.b, align 4, !tbaa !60
  %i.j = call fastcc i32 @renumber_by_map(ptr noundef %i.h, ptr noundef %i.g, i32 noundef %i.i) ; 2 uses
  %.not57 = icmp eq i32 %i.j, 0
  br i1 %.not57, label %.preheader, label %bb.q

.preheader:                                       ; preds = %._crit_edge
  %i.k = load i32, ptr %i.b, align 4, !tbaa !60   ; 2 uses
  %.not5864 = icmp slt i32 %i.k, 1
  br i1 %.not5864, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader
  %i.l = getelementptr i8, ptr %2, i64 168        ; 3 uses
  %i.m = getelementptr i8, ptr %2, i64 104        ; 3 uses
  %i.n = add nuw i32 %i.k, 1                      ; 2 uses
  %smax72 = call i32 @llvm.smax.i32(i32 %i.n, i32 2)
  %wide.trip.count = zext nneg i32 %smax72 to i64
  %i.o = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.o, 1
  %i.p = icmp slt i32 %i.n, 3
  br i1 %i.p, label %.epil.preheader, label %.lr.ph67.new

.lr.ph67.new:                                     ; preds = %.lr.ph67
  %unroll_iter = and i64 %i.o, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph67.new
  %indvars.iv = phi i64 [ 1, %.lr.ph67.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %.04966 = phi i32 [ 1, %.lr.ph67.new ], [ %.1.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph67.new ], [ %niter.next.1, %bb.f ]
  %i.q = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !119
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !109  ; 2 uses
  %.not60 = icmp eq ptr %i.t, null
  %i.u = select i1 %.not60, ptr %i.m, ptr %i.t    ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61
  %i.x = sext i32 %.04966 to i64
  %i.y = getelementptr [8 x i8], ptr %i.u, i64 %i.x
  store ptr %i.w, ptr %i.y, align 8, !tbaa !61
  %i.z = add i32 %.04966, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.z, %bb.c ], [ %.04966, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !119
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !109 ; 2 uses
  %.not60.1 = icmp eq ptr %i.ad, null
  %i.ae = select i1 %.not60.1, ptr %i.m, ptr %i.ad ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ah = sext i32 %.1 to i64
  %i.ai = getelementptr [8 x i8], ptr %i.ae, i64 %i.ah
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !61
  %i.aj = add i32 %.1, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %i.aj, %bb.e ], [ %.1, %bb.d ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge68.loopexit.unr-lcssa, label %bb.b, !llvm.loop !121

._crit_edge68.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge68, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge68.loopexit.unr-lcssa, %.lr.ph67
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph67 ], [ %indvars.iv.next.1, %._crit_edge68.loopexit.unr-lcssa ] ; 2 uses
  %.04966.epil.init = phi i32 [ 1, %.lr.ph67 ], [ %.1.1, %._crit_edge68.loopexit.unr-lcssa ]
  %lcmp.mod80 = trunc i64 %i.o to i1
  call void @llvm.assume(i1 %lcmp.mod80)
  %i.ak = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !119
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %._crit_edge68

bb.g:                                             ; preds = %.epil.preheader
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !109 ; 2 uses
  %.not60.epil = icmp eq ptr %i.an, null
  %i.ao = select i1 %.not60.epil, ptr %i.m, ptr %i.an ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv.epil.init
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.ar = sext i32 %.04966.epil.init to i64
  %i.as = getelementptr [8 x i8], ptr %i.ao, i64 %i.ar
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !61
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %.preheader
  %i.at = getelementptr i8, ptr %2, i64 24        ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !70 ; 2 uses
  store i32 0, ptr %i.at, align 8, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %bb.o, %._crit_edge68
  %i.av = phi i32 [ 0, %._crit_edge68 ], [ %i.bn, %bb.o ] ; 3 uses
  %indvars.iv73 = phi i64 [ 1, %._crit_edge68 ], [ %indvars.iv.next74.1, %bb.o ] ; 4 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = and i32 %i.ax, %i.au
  %.not59 = icmp eq i32 %i.ay, 0
  br i1 %.not59, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv73
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !119 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 32
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = shl nuw i32 1, %i.ba
  %i.bd = or i32 %i.av, %i.bc                     ; 2 uses
  store i32 %i.bd, ptr %i.at, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.be = phi i32 [ %i.av, %bb.h ], [ %i.bd, %bb.j ], [ %i.av, %bb.i ] ; 3 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 3 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, 32
  br i1 %exitcond76.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = trunc nuw nsw i64 %indvars.iv.next74 to i32
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = and i32 %i.bg, %i.au
  %.not59.1 = icmp eq i32 %i.bh, 0
  br i1 %.not59.1, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv.next74
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !119 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 32
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = shl nuw i32 1, %i.bj
  %i.bm = or i32 %i.be, %i.bl                     ; 2 uses
  store i32 %i.bm, ptr %i.at, align 8, !tbaa !70
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bn = phi i32 [ %i.be, %bb.l ], [ %i.bm, %bb.n ], [ %i.be, %bb.m ]
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2
  br label %bb.h

bb.p:                                             ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %2, i64 96
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !60
  %i.bq = getelementptr i8, ptr %1, i64 16
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !51
  %i.br = call i32 @onig_renumber_name_table(ptr noundef %1, ptr noundef nonnull %i.g) #22
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %.0 = phi i32 [ %i.br, %bb.p ], [ %i.j, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -209, 1) i32 @numbered_ref_check(ptr noundef readonly captures(none) %0) unnamed_addr #11 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 5 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !35
  switch i32 %i.a, label %.critedge [
    i32 8, label %.preheader
    i32 9, label %.preheader
    i32 5, label %bb.d
    i32 6, label %tailrecurse.backedge.sink.split
    i32 4, label %bb.e
    i32 7, label %bb.f
  ]

.preheader:                                       ; preds = %tailrecurse, %tailrecurse
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.010 = phi ptr [ %i.g, %bb.c ], [ %.tr, %.preheader ] ; 2 uses
  %i.b = getelementptr i8, ptr %.010, i64 8
end_hunk_0
