inline.NumInlined: 29
inline.NumDeleted: 15
begin_hunk_0_@write_parser_tables_as_C:bb.a
  %i.awg = load i32, ptr %i.awf, align 8, !tbaa !233
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awd, i64 12
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !234
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awd, i64 16
  %i.awk = load i32, ptr %i.awj, align 8, !tbaa !235
  %i.awl = add i32 %i.awa, -1
  %i.awm = zext i32 %i.awl to i64
  %i.awn = icmp samesign ult i64 %indvars.iv.i133, %i.awm
  %i.awo = select i1 %i.awn, ptr @.str.24, ptr @.str.23
  %i.awp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.154, ptr noundef %i.awe, i32 noundef %i.awg, i32 noundef %i.awi, i32 noundef %i.awk, ptr noundef nonnull %i.awo) #18 ; 0 uses
  %indvars.iv.next.i134 = add nuw nsw i64 %indvars.iv.i133, 1 ; 2 uses
  %i.awq = load i32, ptr %i.avv, align 8, !tbaa !227 ; 2 uses
  %i.awr = zext i32 %i.awq to i64
  %i.aws = icmp samesign ult i64 %indvars.iv.next.i134, %i.awr
  br i1 %i.aws, label %bb.if, label %._crit_edge.i135, !llvm.loop !236

._crit_edge.i135:                                 ; preds = %bb.if, %bb.ie
  %i.awt = call i64 @fwrite(ptr nonnull @.str.49, i64 4, i64 1, ptr %i.i) ; 0 uses
  br label %write_passes_as_C.exit

write_passes_as_C.exit:                           ; preds = %write_symbol_data_as_C.exit, %._crit_edge.i135
  %i.awu = call ptr @lookup_production(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef 10) #18 ; 2 uses
  %.not73 = icmp eq ptr %i.awu, null
  br i1 %.not73, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %write_passes_as_C.exit
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 200
  %i.aww = load ptr, ptr %i.awv, align 8, !tbaa !237
  %i.awx = load i32, ptr %i.aww, align 8, !tbaa !156
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %write_passes_as_C.exit
  %.0 = phi i32 [ %i.awx, %bb.ig ], [ 0, %write_passes_as_C.exit ]
  %i.awy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.6, ptr noundef %2) #18 ; 0 uses
  %i.awz = load i32, ptr %i.lj, align 8, !tbaa !123
  %i.axa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.7, i32 noundef %i.awz) #18 ; 0 uses
  %i.axb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.8, ptr noundef %2) #18 ; 0 uses
  %i.axc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.9, ptr noundef %2) #18 ; 0 uses
  %i.axd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.7, i32 noundef %.0) #18 ; 0 uses
  %i.axe = load i32, ptr %i.aq, align 8, !tbaa !80
  %i.axf = load i32, ptr %i.jw, align 8, !tbaa !115
  %i.axg = add i32 %i.axf, %i.axe
  %i.axh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.7, i32 noundef %i.axg) #18 ; 0 uses
  %i.axi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.10, ptr noundef %2) #18 ; 0 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !238 ; 2 uses
  %.not74 = icmp eq ptr %i.axk, null
  br i1 %.not74, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.axl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.axk) #18 ; 0 uses
  br label %bb.ik

bb.ij:                                            ; preds = %bb.ih
  %i.axm = call i64 @fwrite(ptr nonnull @.str.12, i64 6, i64 1, ptr %i.i) ; 0 uses
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %i.axn = load i32, ptr %i.avv, align 8, !tbaa !227
  %i.axo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.7, i32 noundef %i.axn) #18 ; 0 uses
  %i.axp = load i32, ptr %i.avv, align 8, !tbaa !227
  %.not75 = icmp eq i32 %i.axp, 0
  br i1 %.not75, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.axq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.13, ptr noundef %2) #18 ; 0 uses
  br label %bb.in

bb.im:                                            ; preds = %bb.ik
  %i.axr = call i64 @fwrite(ptr nonnull @.str.12, i64 6, i64 1, ptr %i.i) ; 0 uses
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.axs = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.axt = load i32, ptr %i.axs, align 8, !tbaa !239
  %.not76 = icmp eq i32 %i.axt, 0
  %. = select i1 %.not76, i32 48, i32 49
  %fputc77 = call i32 @fputc(i32 %., ptr %i.i)    ; 0 uses
  %i.axu = call i64 @fwrite(ptr nonnull @.str.16, i64 3, i64 1, ptr %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

declare void @d_fail(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @write_header_as_C(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !115  ; 3 uses
  %.not107 = icmp eq i32 %i.c, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116  ; 5 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %i.c, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.07393 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.i = load i32, ptr %i.h, align 8, !tbaa !179
  %i.j = icmp eq i32 %i.i, 3
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.n = load i32, ptr %i.m, align 8, !tbaa !179
  %i.o = icmp eq i32 %i.n, 3
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.s = load i32, ptr %i.r, align 8, !tbaa !179
  %i.t = icmp eq i32 %i.s, 3
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.x = load i32, ptr %i.w, align 8, !tbaa !179
  %i.y = icmp eq i32 %i.x, 3
  %i.z = select i1 %i.y, i1 true, i1 %i.t
  %i.aa = select i1 %i.z, i1 true, i1 %i.o
  %i.ab = select i1 %i.aa, i1 true, i1 %i.j
  %spec.select.3 = select i1 %i.ab, i32 1, i32 %.07393 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !240

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.07393.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod134)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.07393.epil = phi i32 [ %.07393.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !179
  %i.af = icmp eq i32 %i.ae, 3
  %spec.select.epil = select i1 %i.af, i32 1, i32 %.07393.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !241

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %.073.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !242
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.preheader90.a, label %.loopexit91.a

.preheader90.a:                                   ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !80
  %.not108 = icmp eq i32 %i.aj, 0
  br i1 %.not108, label %.loopexit91.a, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader90.a, %.lr.ph96
  %.07095 = phi i32 [ %spec.select87, %.lr.ph96 ], [ 0, %.preheader90.a ]
  %.17694 = phi i32 [ %i.al, %.lr.ph96 ], [ 0, %.preheader90.a ] ; 2 uses
  %i.ak = tail call i32 @state_for_declaration(ptr noundef nonnull %0, i32 noundef %.17694) #18
  %.not80 = icmp eq i32 %i.ak, 0
  %spec.select87 = select i1 %.not80, i32 %.07095, i32 1 ; 2 uses
  %i.al = add nuw nsw i32 %.17694, 1              ; 2 uses
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !80
  %i.an = icmp ult i32 %i.al, %i.am
  br i1 %i.an, label %.lr.ph96, label %.loopexit91.a, !llvm.loop !243

.loopexit91.a:                                    ; preds = %.lr.ph96, %.preheader90.a, %._crit_edge
  %.272 = phi i32 [ 1, %._crit_edge ], [ 0, %.preheader90.a ], [ %spec.select87, %.lr.ph96 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !244 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %3

3:                                                ; preds = %.loopexit91.a
  %4 = icmp slt i32 %i.ap, 0
  br i1 %4, label %bb.d, label %bb.v

bb.d:                                             ; preds = %3
  %i.ar = icmp ne i32 %.073.lcssa, 0
  %i.as = icmp ne i32 %.272, 0
  %or.cond.a = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.a, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d, %.loopexit91.a
  %i.at = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1) #18 ; 0 uses
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr = getelementptr inbounds i8, ptr %i.a, i64 %strlen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %endptr, ptr noundef nonnull align 1 dereferenceable(12) @.str.17, i64 12, i1 false)
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !73 ; 9 uses
  %.not81 = icmp eq ptr %i.au, null
  br i1 %.not81, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @d_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.18, ptr noundef %2) #18 ; 0 uses
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.19, ptr noundef %2) #18 ; 0 uses
  %.not82 = icmp eq i32 %.073.lcssa, 0
  br i1 %.not82, label %.loopexit89, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !245
  %.not83 = icmp eq i32 %i.ay, 0
  br i1 %.not83, label %.preheader88, label %bb.l

.preheader88:                                     ; preds = %bb.h
  %i.az = load i32, ptr %i.b, align 8, !tbaa !115 ; 2 uses
  %.not110 = icmp eq i32 %i.az, 0
  br i1 %.not110, label %.loopexit89, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader88
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph104, %bb.k
  %i.bc = phi i32 [ %i.az, %.lr.ph104 ], [ %i.bp, %bb.k ]
  %indvars.iv116 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next117, %bb.k ] ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !116
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv116
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !117 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !179
  %i.bh = icmp eq i32 %i.bg, 3
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !60
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !37
  %i.bm = load i32, ptr %i.bb, align 8, !tbaa !80
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.20, ptr noundef %i.bj, i32 noundef %i.bn) #18 ; 0 uses
  %.pre125.a = load i32, ptr %i.b, align 8, !tbaa !115
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bp = phi i32 [ %i.bc, %bb.i ], [ %.pre125.a, %bb.j ] ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next117, %i.bq
  br i1 %i.br, label %bb.i, label %.loopexit89, !llvm.loop !246

bb.l:                                             ; preds = %bb.h
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.21, ptr noundef %2) #18 ; 0 uses
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !115 ; 2 uses
  %.not109 = icmp eq i32 %i.bt, 0
  br i1 %.not109, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph101, %bb.q
  %i.bw = phi i32 [ %i.bt, %.lr.ph101 ], [ %i.cu, %bb.q ] ; 2 uses
  %indvars.iv113 = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next114, %bb.q ] ; 4 uses
  %.06999 = phi i32 [ 0, %.lr.ph101 ], [ %.2, %bb.q ] ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !116
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv113
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !117 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !179
  %i.cb = icmp eq i32 %i.ca, 3
  br i1 %i.cb, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !61
  %i.ce = add nsw i32 %.06999, 7
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 70
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %.pre = load ptr, ptr %i.bu, align 8, !tbaa !116
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv113
  %.pre122 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !117
  %.pre123 = load i32, ptr %i.b, align 8, !tbaa !115
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ch = phi i32 [ %.pre123, %bb.o ], [ %i.bw, %bb.n ]
  %i.ci = phi ptr [ %.pre122, %bb.o ], [ %i.bz, %bb.n ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.o ], [ %i.cf, %bb.n ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !37
  %i.cn = load i32, ptr %i.bv, align 8, !tbaa !80
  %i.co = add i32 %i.cn, %i.cm
  %i.cp = add i32 %i.ch, -1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp eq i64 %indvars.iv113, %i.cq
  %i.cs = select i1 %i.cr, ptr @.str.23, ptr @.str.24
  %i.ct = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.22, ptr noundef %i.ck, i32 noundef %i.co, ptr noundef nonnull %i.cs) #18 ; 0 uses
  %.pre124 = load i32, ptr %i.b, align 8, !tbaa !115
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.cu = phi i32 [ %.pre124, %bb.p ], [ %i.bw, %bb.m ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.p ], [ %.06999, %bb.m ]
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp samesign ult i64 %indvars.iv.next114, %i.cv
  br i1 %i.cw, label %bb.m, label %._crit_edge102, !llvm.loop !247

._crit_edge102:                                   ; preds = %bb.q, %bb.l
  %i.cx = call i64 @fwrite(ptr nonnull @.str.25, i64 4, i64 1, ptr %i.au) ; 0 uses
  br label %.loopexit89

.loopexit89:                                      ; preds = %bb.k, %.preheader88, %._crit_edge102, %bb.g
  %.not84 = icmp eq i32 %.272, 0
  br i1 %.not84, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit89
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !80 ; 2 uses
  %.not111 = icmp eq i32 %i.cz, 0
  br i1 %.not111, label %.loopexit, label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph106, %bb.u
  %i.db = phi i32 [ %i.cz, %.lr.ph106 ], [ %i.dp, %bb.u ] ; 2 uses
  %indvars.iv119 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next120, %bb.u ] ; 2 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !91
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv119
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !92 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 60
  %i.dg = load i8, ptr %i.df, align 4
  %i.dh = and i8 %i.dg, 28
  %.not85 = icmp eq i8 %i.dh, 0
  br i1 %.not85, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 208
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !248
  %.not86 = icmp eq ptr %i.dj, null
  br i1 %.not86, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !223
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !237
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !156
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.26, ptr noundef %i.dk, i32 noundef %i.dn) #18 ; 0 uses
  %.pre126 = load i32, ptr %i.cy, align 8, !tbaa !80
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %i.dp = phi i32 [ %i.db, %bb.r ], [ %i.db, %bb.s ], [ %.pre126, %bb.t ] ; 2 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next120, %i.dq
  br i1 %i.dr, label %bb.r, label %.loopexit, !llvm.loop !249

.loopexit:                                        ; preds = %bb.u, %.preheader, %.loopexit89
  %i.ds = call i64 @fwrite(ptr nonnull @.str.27, i64 7, i64 1, ptr %i.au) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %3, %bb.d, %.loopexit
  %.0 = phi i32 [ 1, %.loopexit ], [ 0, %bb.d ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_global_code_as_C(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !250
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 540
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ag
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ag ] ; 7 uses
  %i.i = load i32, ptr %i.d, align 4, !tbaa !251
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !252
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !110
  %i.n = load ptr, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.o = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.n, i32 noundef 47) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = select i1 %.not.i, ptr %i.n, ptr %i.p
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %i.m, ptr noundef nonnull %i.q) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !252
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.052 = phi ptr [ %i.u, %bb.d ], [ %.052.be, %.backedge ] ; 4 uses
  %i.x = load i8, ptr %.052, align 1, !tbaa !58   ; 2 uses
  switch i8 %i.x, label %bb.af [
    i8 0, label %bb.ag
    i8 36, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.052, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !58
  %i.aa = icmp eq i8 %i.z, 123
  br i1 %i.aa, label %bb.g, label %bb.ae

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.052, i64 2 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.051 = phi ptr [ %i.ab, %bb.g ], [ %i.aj, %bb.j ] ; 8 uses
  %i.ac = load i8, ptr %.051, align 1, !tbaa !58  ; 7 uses
  switch i8 %i.ac, label %bb.i [
    i8 0, label %.critedge
    i8 125, label %.critedge
  ]

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call ptr @__ctype_b_loc() #21
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !253
  %i.af = sext i8 %i.ac to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !255
  %i.ai = and i16 %i.ah, 8192
  %.not62 = icmp eq i16 %i.ai, 0
  br i1 %.not62, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.051, i64 1
  br label %bb.h, !llvm.loop !257

.critedge:                                        ; preds = %bb.h, %bb.h, %bb.i
  %i.ak = tail call ptr @__ctype_b_loc() #21
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !253 ; 3 uses
  %i.am = sext i8 %i.ac to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !255
  %i.ap = lshr i16 %i.ao, 13
  %.lobit = and i16 %i.ap, 1
  %spec.select.idx = zext nneg i16 %.lobit to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.051, i64 %spec.select.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.critedge
  %.1 = phi ptr [ %spec.select, %.critedge ], [ %i.ar, %bb.l ] ; 7 uses
  %i.aq = load i8, ptr %.1, align 1, !tbaa !58
  switch i8 %i.aq, label %bb.l [
    i8 0, label %.critedge2
    i8 125, label %.critedge2
  ]

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.k, !llvm.loop !258

.critedge2:                                       ; preds = %bb.k, %bb.k
  %i.as = ptrtoint ptr %.051 to i64
  %i.at = ptrtoint ptr %i.ab to i64
  %i.au = sub i64 %i.as, %i.at
  switch i64 %i.au, label %bb.ac [
    i64 5, label %bb.m
    i64 6, label %bb.r
  ]

bb.m:                                             ; preds = %.critedge2
  %i.av = tail call i32 @strncasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.29, i64 noundef 5) #19
  %.not66 = icmp eq i32 %i.av, 0
  br i1 %.not66, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %bb.m
  %.not53.i = icmp eq i8 %i.ac, 0
  br i1 %.not53.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %i.aw = phi i8 [ %i.bc, %bb.o ], [ %i.ac, %bb.n ]
  %.04054.i = phi ptr [ %i.bb, %bb.o ], [ %.051, %bb.n ] ; 2 uses
  %i.ax = sext i8 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !255
  %i.ba = and i16 %i.az, 8192
  %.not46.i = icmp eq i16 %i.ba, 0
  br i1 %.not46.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.04054.i, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !58  ; 2 uses
  %.not.i68 = icmp eq i8 %i.bc, 0
  br i1 %.not.i68, label %.critedge.i, label %.lr.ph.i, !llvm.loop !259

.critedge.i:                                      ; preds = %bb.o, %.lr.ph.i, %bb.n
  %.040.lcssa.i = phi ptr [ %.051, %bb.n ], [ %.04054.i, %.lr.ph.i ], [ %i.bb, %bb.o ] ; 3 uses
  %i.bd = icmp ugt ptr %.1, %.040.lcssa.i
  br i1 %i.bd, label %bb.p, label %find_symbol.exit

bb.p:                                             ; preds = %.critedge.i
  %i.be = ptrtoint ptr %.1 to i64
  %i.bf = ptrtoint ptr %.040.lcssa.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = tail call ptr @lookup_production(ptr noundef %1, ptr noundef nonnull %.040.lcssa.i, i32 noundef %i.bh) #18 ; 2 uses
  %.not48.not.i = icmp eq ptr %i.bi, null
  br i1 %.not48.not.i, label %find_symbol.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !63
  br label %find_symbol.exit

find_symbol.exit:                                 ; preds = %.critedge.i, %bb.p, %bb.q
  %.2.i = phi i32 [ -1, %.critedge.i ], [ %i.bk, %bb.q ], [ -1, %bb.p ]
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %.2.i) #18 ; 0 uses
  br label %bb.ad

bb.r:                                             ; preds = %.critedge2
  %i.bm = tail call i32 @strncasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.31, i64 noundef 6) #19
  %.not67 = icmp eq i32 %i.bm, 0
  br i1 %.not67, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %.not53.i69 = icmp eq i8 %i.ac, 0
  br i1 %.not53.i69, label %.critedge.i74, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.s, %bb.t
  %i.bn = phi i8 [ %i.bt, %bb.t ], [ %i.ac, %bb.s ]
  %.04054.i71 = phi ptr [ %i.bs, %bb.t ], [ %.051, %bb.s ] ; 2 uses
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !255
  %i.br = and i16 %i.bq, 8192
  %.not46.i72 = icmp eq i16 %i.br, 0
  br i1 %.not46.i72, label %.critedge.i74, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i70
  %i.bs = getelementptr inbounds nuw i8, ptr %.04054.i71, i64 1 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !58  ; 2 uses
  %.not.i73 = icmp eq i8 %i.bt, 0
  br i1 %.not.i73, label %.critedge.i74, label %.lr.ph.i70, !llvm.loop !259

.critedge.i74:                                    ; preds = %bb.t, %.lr.ph.i70, %bb.s
  %.040.lcssa.i75 = phi ptr [ %.051, %bb.s ], [ %.04054.i71, %.lr.ph.i70 ], [ %i.bs, %bb.t ] ; 3 uses
  %i.bu = icmp ugt ptr %.1, %.040.lcssa.i75
  br i1 %i.bu, label %bb.u, label %find_symbol.exit77

bb.u:                                             ; preds = %.critedge.i74
end_hunk_0
