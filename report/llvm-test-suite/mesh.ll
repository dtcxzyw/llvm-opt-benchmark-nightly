inline.NumInlined: 2154
inline.NumDeleted: 448
begin_hunk_0_@_ZN4Mesh14get_yface_flagEib:bb.a
  %i.t = phi i32 [ %i.ag, %._crit_edge ], [ %i.o, %.preheader52.lr.ph ]
  %i.u = phi i32 [ %i.ah, %._crit_edge ], [ %i.r, %.preheader52.lr.ph ] ; 2 uses
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %._crit_edge ], [ 0, %.preheader52.lr.ph ] ; 3 uses
  %.not5153 = icmp slt i32 %i.u, 0
  br i1 %.not5153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader52
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv75
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !140
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge, %.preheader52.lr.ph, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !207  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.af = load ptr, ptr %i.ae, align 8
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.n, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader52
  %i.ag = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.t, %.preheader52 ] ; 2 uses
  %i.ah = phi i32 [ %i.ak, %._crit_edge.loopexit ], [ %i.u, %.preheader52 ]
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %i.ai = sext i32 %i.ag to i64
  %.not.not = icmp slt i64 %indvars.iv75, %i.ai
  br i1 %.not.not, label %.preheader52, label %.preheader, !llvm.loop !240

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  store i32 -1, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ak = load i32, ptr %i.q, align 4, !tbaa !4   ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %.not51.not = icmp slt i64 %indvars.iv, %i.al
  br i1 %.not51.not, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !241

._crit_edge59:                                    ; preds = %bb.e, %.preheader
  br i1 %2, label %bb.f, label %.loopexit

bb.c:                                             ; preds = %.lr.ph58, %bb.e
  %i.am = phi i32 [ %i.y, %.lr.ph58 ], [ %i.az, %bb.e ]
  %indvars.iv78 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next79, %bb.e ] ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv78
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = icmp eq i32 %i.ao, %1
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv78
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv78
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !140
  %i.ax = sext i32 %i.ar to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  store i32 1, ptr %i.ay, align 4, !tbaa !4
  %.pre87 = load i32, ptr %i.x, align 4, !tbaa !207
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.az = phi i32 [ %i.am, %bb.c ], [ %.pre87, %bb.d ] ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next79, %i.ba
  br i1 %i.bb, label %bb.c, label %._crit_edge59, !llvm.loop !242

bb.f:                                             ; preds = %._crit_edge59
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %1) ; 0 uses
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.b
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = add nsw i32 %i.bf, 1
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.b
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %i.bg, i32 noundef %i.bk) ; 0 uses
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69) ; 0 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.b
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %.not4860 = icmp slt i32 %i.bp, 0
  br i1 %.not4860, label %._crit_edge64, label %.lr.ph63

._crit_edge64:                                    ; preds = %.lr.ph63, %bb.f
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.b
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %.lr.ph72.preheader, label %.loopexit

.lr.ph72.preheader:                               ; preds = %._crit_edge64
  %i.bu = zext nneg i32 %i.bs to i64
  br label %.lr.ph72

.lr.ph63:                                         ; preds = %bb.f, %.lr.ph63
  %.04361 = phi i32 [ %i.bw, %.lr.ph63 ], [ 0, %bb.f ] ; 3 uses
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %.04361) ; 0 uses
  %i.bw = add nuw nsw i32 %.04361, 1
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.b
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %.not48.not = icmp slt i32 %.04361, %i.bz
  br i1 %.not48.not, label %.lr.ph63, label %._crit_edge64, !llvm.loop !243

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %._crit_edge69
  %indvars.iv84 = phi i64 [ %i.bu, %.lr.ph72.preheader ], [ %indvars.iv.next85, %._crit_edge69 ] ; 4 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv84 to i32
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %i.ca) ; 0 uses
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.b
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %.not4965 = icmp slt i32 %i.ce, 0
  br i1 %.not4965, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph72
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv84
  br label %bb.g

._crit_edge69:                                    ; preds = %bb.j, %.lr.ph72
  %putchar50 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, -1
  %i.cg = icmp sgt i64 %indvars.iv84, 0
  br i1 %i.cg, label %.lr.ph72, label %.loopexit, !llvm.loop !244

bb.g:                                             ; preds = %.lr.ph68, %bb.j
  %indvars.iv81 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next82, %bb.j ] ; 3 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !140
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv81
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %i.cj) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.b
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = sext i32 %i.cp to i64
  %.not49.not = icmp slt i64 %indvars.iv81, %i.cq
  br i1 %.not49.not, label %bb.g, label %._crit_edge69, !llvm.loop !245

.loopexit:                                        ; preds = %._crit_edge69, %._crit_edge64, %._crit_edge59
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh13get_flat_gridEiPPPiS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.f = add nsw i32 %i.e, 4                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.b
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4    ; 2 uses
  %i.k = add nsw i32 %i.j, 4                      ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 2 uses
  %i.p = add nsw i32 %i.o, -2                     ; 6 uses
  %.neg = sub i32 2, %i.o                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.b
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %i.u = add nsw i32 %i.t, -2                     ; 6 uses
  %.neg210 = sub i32 2, %i.t                      ; 2 uses
  %i.v = tail call ptr @genmatrix_p(i32 noundef %i.k, i32 noundef %i.f, i64 noundef 4, ptr noundef nonnull @.str.66, i32 noundef 9811) ; 18 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !246
  %i.w = icmp sgt i32 %i.j, -4
  %i.x = icmp sgt i32 %i.e, -4
  %or.cond = and i1 %i.w, %i.x
  br i1 %or.cond, label %.preheader213.us.preheader, label %.preheader211.sink.split

.preheader213.us.preheader:                       ; preds = %bb.a
  %i.y = zext nneg i32 %i.f to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 9 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 5 uses
  %i.aa = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 7
  br i1 %i.ab, label %.preheader213.us.epil.preheader, label %.preheader213.us.preheader.new

.preheader213.us.preheader.new:                   ; preds = %.preheader213.us.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.preheader213.us

.preheader213.us:                                 ; preds = %.preheader213.us, %.preheader213.us.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader213.us.preheader.new ], [ %indvars.iv.next.7, %.preheader213.us ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader213.us.preheader.new ], [ %niter.next.7, %.preheader213.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 -1, i64 %i.z, i1 false), !tbaa !4
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 -1, i64 %i.z, i1 false), !tbaa !4
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 -1, i64 %i.z, i1 false), !tbaa !4
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 -1, i64 %i.z, i1 false), !tbaa !4
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 -1, i64 %i.z, i1 false), !tbaa !4
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.as, i8 -1, i64 %i.z, i1 false), !tbaa !4
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 -1, i64 %i.z, i1 false), !tbaa !4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ay, i8 -1, i64 %i.z, i1 false), !tbaa !4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader212.us.preheader.unr-lcssa, label %.preheader213.us, !llvm.loop !249

.preheader212.us.preheader.unr-lcssa:             ; preds = %.preheader213.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader212.us.preheader, label %.preheader213.us.epil.preheader

.preheader213.us.epil.preheader:                  ; preds = %.preheader212.us.preheader.unr-lcssa, %.preheader213.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader213.us.preheader ], [ %indvars.iv.next.7, %.preheader212.us.preheader.unr-lcssa ]
  %lcmp.mod254 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod254)
  br label %.preheader213.us.epil

.preheader213.us.epil:                            ; preds = %.preheader213.us.epil, %.preheader213.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader213.us.epil.preheader ], [ %indvars.iv.next.epil, %.preheader213.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader213.us.epil.preheader ], [ %epil.iter.next, %.preheader213.us.epil ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.epil
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ba, i8 -1, i64 %i.z, i1 false), !tbaa !4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader212.us.preheader, label %.preheader213.us.epil, !llvm.loop !250

.preheader212.us.preheader:                       ; preds = %.preheader213.us.epil, %.preheader212.us.preheader.unr-lcssa
  %i.bb = tail call ptr @genmatrix_p(i32 noundef %i.k, i32 noundef %i.f, i64 noundef 4, ptr noundef nonnull @.str.66, i32 noundef 9820) ; 12 uses
  store ptr %i.bb, ptr %3, align 8, !tbaa !246
  %i.bc = zext nneg i32 %i.f to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2                ; 9 uses
  %xtraiter255 = and i64 %wide.trip.count, 7      ; 3 uses
  %i.be = icmp ult i64 %i.aa, 7
  br i1 %i.be, label %.preheader212.us.epil.preheader, label %.preheader212.us.preheader.new

.preheader212.us.preheader.new:                   ; preds = %.preheader212.us.preheader
  %unroll_iter259 = and i64 %wide.trip.count, 2147483640
  br label %.preheader212.us

.preheader212.us:                                 ; preds = %.preheader212.us, %.preheader212.us.preheader.new
  %indvars.iv230 = phi i64 [ 0, %.preheader212.us.preheader.new ], [ %indvars.iv.next231.7, %.preheader212.us ] ; 9 uses
  %niter260 = phi i64 [ 0, %.preheader212.us.preheader.new ], [ %niter260.next.7, %.preheader212.us ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bg, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bp, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bs, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bv, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.by, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %indvars.iv.next231.7 = add nuw nsw i64 %indvars.iv230, 8 ; 2 uses
  %niter260.next.7 = add i64 %niter260, 8         ; 2 uses
  %niter260.ncmp.7 = icmp eq i64 %niter260.next.7, %unroll_iter259
  br i1 %niter260.ncmp.7, label %.preheader211.loopexit.unr-lcssa, label %.preheader212.us, !llvm.loop !251

.preheader211.sink.split:                         ; preds = %bb.a
  %4 = tail call ptr @genmatrix_p(i32 noundef %i.k, i32 noundef %i.f, i64 noundef 4, ptr noundef nonnull @.str.66, i32 noundef 9820) ; 2 uses
  store ptr %4, ptr %3, align 8, !tbaa !246
  br label %.preheader211

.preheader211.loopexit.unr-lcssa:                 ; preds = %.preheader212.us
  %lcmp.mod257.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %.preheader211, label %.preheader212.us.epil.preheader

.preheader212.us.epil.preheader:                  ; preds = %.preheader211.loopexit.unr-lcssa, %.preheader212.us.preheader
  %indvars.iv230.epil.init = phi i64 [ 0, %.preheader212.us.preheader ], [ %indvars.iv.next231.7, %.preheader211.loopexit.unr-lcssa ]
  %lcmp.mod258 = icmp ne i64 %xtraiter255, 0
  tail call void @llvm.assume(i1 %lcmp.mod258)
  br label %.preheader212.us.epil

.preheader212.us.epil:                            ; preds = %.preheader212.us.epil, %.preheader212.us.epil.preheader
  %indvars.iv230.epil = phi i64 [ %indvars.iv230.epil.init, %.preheader212.us.epil.preheader ], [ %indvars.iv.next231.epil, %.preheader212.us.epil ] ; 2 uses
  %epil.iter256 = phi i64 [ 0, %.preheader212.us.epil.preheader ], [ %epil.iter256.next, %.preheader212.us.epil ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.epil
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 -1, i64 %i.bd, i1 false), !tbaa !4
  %indvars.iv.next231.epil = add nuw nsw i64 %indvars.iv230.epil, 1
  %epil.iter256.next = add i64 %epil.iter256, 1   ; 2 uses
  %epil.iter256.cmp.not = icmp eq i64 %epil.iter256.next, %xtraiter255
  br i1 %epil.iter256.cmp.not, label %.preheader211, label %.preheader212.us.epil, !llvm.loop !252

.preheader211:                                    ; preds = %.preheader211.loopexit.unr-lcssa, %.preheader212.us.epil, %.preheader211.sink.split
  %i.ce = phi ptr [ %4, %.preheader211.sink.split ], [ %i.bb, %.preheader212.us.epil ], [ %i.bb, %.preheader211.loopexit.unr-lcssa ] ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !205
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader211
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.ct = load ptr, ptr %i.cs, align 8            ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.cx = load ptr, ptr %i.cw, align 8
  br label %bb.b

.preheader:                                       ; preds = %bb.j, %.preheader211
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !207
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph222, label %._crit_edge

.lr.ph222:                                        ; preds = %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.dk = load ptr, ptr %i.dj, align 8            ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.dm = load ptr, ptr %i.dl, align 8            ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.dq = load ptr, ptr %i.dp, align 8
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv235 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next236, %bb.j ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv235
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dt = icmp eq i32 %i.ds, %1
  br i1 %i.dt, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv235
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4  ; 4 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv235
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4  ; 5 uses
  %i.dy = sext i32 %i.dv to i64                   ; 6 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  %i.eb = icmp eq i32 %1, %i.ea
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dy
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4  ; 2 uses
  br i1 %i.eb, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ee = sub nsw i32 %i.ed, %i.p
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dy
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = sub nsw i32 %i.eg, %i.u
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !140
  %i.el = sext i32 %i.ee to i64                   ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.el
  store i32 1, ptr %i.em, align 4, !tbaa !4
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ei
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !140
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.el ; 2 uses
  store i32 %i.dv, ptr %i.ep, align 4, !tbaa !4
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dy
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4  ; 2 uses
  %.not201 = icmp eq i32 %i.er, 1
  br i1 %.not201, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.es = getelementptr i8, ptr %i.ep, i64 -4
  store i32 %i.er, ptr %i.es, align 4, !tbaa !4
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.et = shl nsw i32 %i.ed, 1
  %i.eu = sub nsw i32 %i.et, %i.p                 ; 2 uses
  %i.ev = add nsw i32 %i.eu, 1
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dy
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = shl nsw i32 %i.ex, 1
  %i.ez = add i32 %i.ey, %.neg210
  %i.fa = sext i32 %i.dx to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = and i32 %i.fc, -2147483647
  %.not208 = icmp eq i32 %i.fd, 1
  %i.fe = zext i1 %.not208 to i32
  %spec.select = add nsw i32 %i.ez, %i.fe
  %i.ff = sext i32 %spec.select to i64            ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !140
  %i.fi = sext i32 %i.ev to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fi
  store i32 1, ptr %i.fj, align 4, !tbaa !4
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ff
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !140 ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fi
  store i32 %i.dv, ptr %i.fm, align 4, !tbaa !4
  %i.fn = sext i32 %i.eu to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fn
  store i32 %i.dv, ptr %i.fo, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.fp = sext i32 %i.dx to i64                   ; 5 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.fs = icmp eq i32 %1, %i.fr
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.fp
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 2 uses
  br i1 %i.fs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fv = sub nsw i32 %i.fu, %i.p
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.fp
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4
  %i.fy = sub nsw i32 %i.fx, %i.u
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !140
  %i.gc = sext i32 %i.fv to i64                   ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gc
  store i32 1, ptr %i.gd, align 4, !tbaa !4
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.fz
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !140
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gc ; 2 uses
  store i32 %i.dx, ptr %i.gg, align 4, !tbaa !4
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.fp
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4  ; 2 uses
  %.not203 = icmp eq i32 %i.gi, 1
  br i1 %.not203, label %bb.j, label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.gj = shl nsw i32 %i.fu, 1
  %i.gk = sub nsw i32 %i.gj, %i.p
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.fp
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !4
  %i.gn = shl nsw i32 %i.gm, 1
  %i.go = add i32 %i.gn, %.neg210
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dy
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4
  %i.gr = and i32 %i.gq, -2147483647
  %.not209 = icmp eq i32 %i.gr, 1
  %i.gs = zext i1 %.not209 to i32
  %spec.select204 = add nsw i32 %i.go, %i.gs
  %i.gt = sext i32 %spec.select204 to i64         ; 2 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !140
  %i.gw = sext i32 %i.gk to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gw
  store i32 1, ptr %i.gx, align 4, !tbaa !4
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.gt
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !140
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.gw ; 2 uses
  store i32 %i.dx, ptr %i.ha, align 4, !tbaa !4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sink246 = phi ptr [ %i.ha, %bb.i ], [ %i.gg, %bb.h ]
  %.sink = phi i32 [ %i.dx, %bb.i ], [ %i.gi, %bb.h ]
  %i.hb = getelementptr i8, ptr %.sink246, i64 4
  store i32 %.sink, ptr %i.hb, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.b
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.hc = load i32, ptr %i.cf, align 8, !tbaa !205
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next236, %i.hd
  br i1 %i.he, label %bb.b, label %.preheader, !llvm.loop !253

._crit_edge:                                      ; preds = %bb.s, %.preheader
  ret void

bb.k:                                             ; preds = %.lr.ph222, %bb.s
  %indvars.iv238 = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next239, %bb.s ] ; 4 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv238
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %i.hh = icmp eq i32 %i.hg, %1
end_hunk_0
