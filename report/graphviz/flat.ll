Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/flat?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@flat_edges:bb.a
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 288
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !16
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next199
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !32 ; 2 uses
  %.not110 = icmp eq ptr %i.ik, null
  br i1 %.not110, label %.preheader146, label %.lr.ph178, !llvm.loop !94

.lr.ph182:                                        ; preds = %.preheader146, %bb.ab
  %i.il = phi ptr [ %i.kd, %bb.ab ], [ %i.hp, %.preheader146 ] ; 4 uses
  %.083181 = phi i64 [ %i.ke, %bb.ab ], [ 0, %.preheader146 ] ; 2 uses
  %.3180 = phi i8 [ %.5, %bb.ab ], [ %.191.lcssa, %.preheader146 ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 320
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !69
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %.083181
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !32 ; 6 uses
  %i.iq = load i32, ptr %i.ip, align 8
  %i.ir = and i32 %i.iq, 3                        ; 2 uses
  %i.is = icmp eq i32 %i.ir, 3
  %i.it = select i1 %i.is, i64 56, i64 120
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.it
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !33 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 360
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !50
  %i.ja = icmp eq i32 %i.ir, 2
  %i.jb = select i1 %i.ja, i64 56, i64 -8
  %i.jc = getelementptr inbounds i8, ptr %i.ip, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !33 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 360
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !50
  %.not111 = icmp ne i32 %i.iz, %i.jh
  %i.ji = icmp eq ptr %i.iv, %i.jd
  %or.cond = or i1 %i.ji, %.not111
  br i1 %or.cond, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %.lr.ph182, %.preheader
  %.0 = phi ptr [ %i.jm, %.preheader ], [ %i.ip, %.lr.ph182 ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !8  ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 232
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !64 ; 2 uses
  %.not112 = icmp eq ptr %i.jm, null
  br i1 %.not112, label %bb.x, label %.preheader, !llvm.loop !95

bb.x:                                             ; preds = %.preheader
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 154
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !58  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !8  ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 154
  store i8 %i.jo, ptr %i.jr, align 2, !tbaa !58
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 120
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !74 ; 2 uses
  %.not113 = icmp eq ptr %i.jt, null
  br i1 %.not113, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not114 = icmp eq i8 %i.jo, 0
  br i1 %.not114, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ju = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 132
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !92
  %i.jx = and i32 %i.jw, 1
  %.not115 = icmp eq i32 %i.jx, 0
  %.in.v = select i1 %.not115, i64 40, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.in.v
  %i.jy = load double, ptr %.in, align 8, !tbaa !81 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jk, i64 184 ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !93 ; 2 uses
  %i.kb = fcmp ogt double %i.jy, %i.ka
  %i.kc = select i1 %i.kb, double %i.jy, double %i.ka
  store double %i.kc, ptr %i.jz, align 8, !tbaa !93
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call fastcc void @flat_node(ptr noundef nonnull %i.ip)
  %.pre201 = load ptr, ptr %i.hk, align 8, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa, %bb.z, %.lr.ph182
  %i.kd = phi ptr [ %i.il, %bb.x ], [ %i.il, %.lr.ph182 ], [ %i.il, %bb.z ], [ %.pre201, %bb.aa ] ; 3 uses
  %.5 = phi i8 [ %.3180, %bb.x ], [ %.3180, %.lr.ph182 ], [ %.3180, %bb.z ], [ 1, %bb.aa ] ; 2 uses
  %i.ke = add nuw i64 %.083181, 1                 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 328
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !67
  %i.kh = icmp ult i64 %i.ke, %i.kg
  br i1 %i.kh, label %.lr.ph182, label %.loopexit, !llvm.loop !96

.loopexit:                                        ; preds = %bb.ab, %.preheader146, %.lr.ph189
  %i.ki = phi ptr [ %i.hl, %.lr.ph189 ], [ %i.hp, %.preheader146 ], [ %i.kd, %bb.ab ]
  %.6 = phi i8 [ %.090186, %.lr.ph189 ], [ %.191.lcssa, %.preheader146 ], [ %.5, %bb.ab ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 240
  %.189 = load ptr, ptr %i.kj, align 8, !tbaa !14 ; 2 uses
  %.not108 = icmp eq ptr %.189, null
  br i1 %.not108, label %._crit_edge190, label %.lr.ph189, !llvm.loop !97

._crit_edge190:                                   ; preds = %.loopexit
  %i.kk = trunc nuw i8 %.6 to i1
  br i1 %i.kk, label %bb.ac, label %._crit_edge190.thread

bb.ac:                                            ; preds = %._crit_edge190
  tail call void @checkLabelOrder(ptr noundef %0) #12
  tail call void @rec_reset_vlists(ptr noundef %0) #12
  br label %._crit_edge190.thread

._crit_edge190.thread:                            ; preds = %.loopexit149, %bb.ac, %._crit_edge190
  %.090.lcssa223 = phi i32 [ 0, %._crit_edge190 ], [ 1, %bb.ac ], [ 0, %.loopexit149 ]
  ret i32 %.090.lcssa223
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @rec_save_vlists(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @flat_node(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 8
  %i.h = and i32 %i.g, 3
  %i.i = icmp eq i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.k = select i1 %i.i, ptr %0, ptr %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = tail call ptr @dot_root(ptr noundef %i.m) #12 ; 2 uses
  %i.o = load i32, ptr %0, align 8
  %i.p = and i32 %i.o, 3                          ; 2 uses
  %i.q = icmp eq i32 %i.p, 3                      ; 2 uses
  %i.r = select i1 %i.q, ptr %0, ptr %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 360
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50   ; 2 uses
  %i.y = getelementptr i8, ptr %i.n, i64 16       ; 4 uses
  %.val = load ptr, ptr %i.y, align 8, !tbaa !8   ; 2 uses
  %i.z = getelementptr i8, ptr %.val, i64 264
  %.val.val = load ptr, ptr %i.z, align 8, !tbaa !38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.aa = select i1 %i.q, i64 56, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !50
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [88 x i8], ptr %.val.val, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -88
  %i.ak = getelementptr i8, ptr %i.ai, i64 -80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !87 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 -1, ptr %i.an, align 8, !tbaa !79
  store i32 -1, ptr %i.a, align 16, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !79
  %i.aq = icmp eq i32 %i.p, 2
  %i.ar = select i1 %i.aq, i64 56, i64 -8
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %.val30.i = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr i8, ptr %i.ae, i64 364
  %.val.val.i = load i32, ptr %i.av, align 4, !tbaa !37 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val30.i, i64 364
  %.val30.val.i = load i32, ptr %i.aw, align 4, !tbaa !37 ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %.val.val.i, i32 %.val30.val.i) ; 2 uses
  %spec.select14.i.i = tail call i32 @llvm.smin.i32(i32 %.val.val.i, i32 %.val30.val.i) ; 2 uses
  %.not.not.i80 = icmp sgt i32 %i.am, 0
  br i1 %.not.not.i80, label %.lr.ph.preheader, label %flat_limits.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ax = zext nneg i32 %i.am to i64
  br label %.lr.ph

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %sext.i = shl i64 %indvars.iv.next5.i82, 32
  %1 = ashr exact i64 %sext.i, 32
  %.not.not.i = icmp slt i64 %indvars.iv.next.i, %1
  br i1 %.not.not.i, label %.lr.ph, label %flat_limits.exit, !llvm.loop !98

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv.next5.i82.in = phi i64 [ %indvars.iv.next5.i82, %bb.c ], [ %i.ax, %.lr.ph.preheader ]
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv.next5.i82 = add nsw i64 %indvars.iv.next5.i82.in, -1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i81
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val32.i = load ptr, ptr %i.ba, align 8, !tbaa !8
  call fastcc void @setbounds(ptr %.val32.i, ptr noundef %i.a, i32 noundef %spec.select14.i.i, i32 noundef %spec.select.i.i)
  %i.bb = and i64 %indvars.iv.next5.i82, 4294967295 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.i81, %i.bb
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %.val31.i = load ptr, ptr %i.be, align 8, !tbaa !8
  call fastcc void @setbounds(ptr %.val31.i, ptr noundef %i.a, i32 noundef %spec.select14.i.i, i32 noundef %spec.select.i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.bf = load i32, ptr %i.ap, align 4, !tbaa !79 ; 3 uses
  %i.bg = load i32, ptr %i.a, align 16, !tbaa !79 ; 3 uses
  %i.bh = sub nsw i32 %i.bf, %i.bg
  %i.bi = icmp slt i32 %i.bh, 2
  br i1 %i.bi, label %.flat_limits.exit_crit_edge84, label %bb.c, !llvm.loop !98

.flat_limits.exit_crit_edge84:                    ; preds = %bb.e
  br label %flat_limits.exit, !llvm.loop !98

flat_limits.exit:                                 ; preds = %bb.c, %.flat_limits.exit_crit_edge84, %bb.b
  %i.bj = phi i32 [ %i.bf, %.flat_limits.exit_crit_edge84 ], [ %i.am, %bb.b ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bk = phi i32 [ %i.bg, %.flat_limits.exit_crit_edge84 ], [ -1, %bb.b ], [ %i.bg, %bb.c ] ; 2 uses
  %.not29.i = icmp sgt i32 %i.bk, %i.bj
  %i.bl = add nsw i32 %i.bk, %i.bj
  %i.bm = load i32, ptr %i.an, align 8
  %i.bn = load i32, ptr %i.ao, align 4
  %i.bo = add nsw i32 %i.bn, %i.bm
  %.0.in.in.i = select i1 %.not29.i, i32 %i.bo, i32 %i.bl
  %.0.in.i = add nsw i32 %.0.in.in.i, 1
  %.0.i = sdiv i32 %.0.in.i, 2                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bp = add nsw i32 %i.x, -1                    ; 2 uses
  %i.bq = sext i32 %i.bp to i64                   ; 4 uses
  %i.br = getelementptr inbounds [88 x i8], ptr %.val.val, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !51
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %flat_limits.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !99
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !100
  %i.cb = fsub double %i.by, %i.ca
  br label %bb.h

bb.g:                                             ; preds = %flat_limits.exit
  %i.cc = sext i32 %i.x to i64
  %i.cd = getelementptr inbounds [88 x i8], ptr %.val.val, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !51
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !99
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !101
  %i.cn = fadd double %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 356
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !102
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = fadd double %i.cn, %i.cq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi double [ %i.cb, %bb.f ], [ %i.cr, %bb.g ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !88 ; 2 uses
  %i.cu = load i32, ptr %i.br, align 8, !tbaa !87 ; 3 uses
  %i.cv = add nsw i32 %i.cu, 2                    ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %mul.ov.i.i = icmp slt i32 %i.cu, -2
  br i1 %mul.ov.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !76
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483646, 2147483648) %i.cw, i64 noundef 8) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cz = add nsw i32 %i.cu, 1
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 3                    ; 2 uses
  %i.dc = shl nuw nsw i64 %i.cw, 3                ; 3 uses
  %i.dd = icmp eq i32 %i.cv, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef %i.ct) #12
  br label %gv_recalloc.exit.i

bb.l:                                             ; preds = %bb.j
  %i.de = tail call ptr @realloc(ptr noundef %i.ct, i64 noundef range(i64 0, 188978560937) %i.dc) #15 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !76
  %i.dh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.1, i64 noundef range(i64 0, 188978560937) %i.dc) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  %i.dj = sub nuw nsw i64 %i.dc, %i.db
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.di, i8 0, i64 %i.dj, i1 false)
  br label %gv_recalloc.exit.i

gv_recalloc.exit.i:                               ; preds = %bb.n, %bb.k
  %.0.i.i.i = phi ptr [ null, %bb.k ], [ %i.de, %bb.n ] ; 7 uses
  %i.dk = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 264
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38
  %i.dn = getelementptr inbounds [88 x i8], ptr %i.dm, i64 %i.bq ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store ptr %.0.i.i.i, ptr %i.do, align 8, !tbaa !88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %.0.i.i.i, ptr %i.dp, align 8, !tbaa !51
  %i.dq = load i32, ptr %i.dn, align 8, !tbaa !87 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, %.0.i
  br i1 %i.dr, label %.lr.ph.preheader.i, label %gv_recalloc.exit.._crit_edge_crit_edge.i

gv_recalloc.exit.._crit_edge_crit_edge.i:         ; preds = %gv_recalloc.exit.i
  %.pre.i = sext i32 %.0.i to i64
  br label %make_vn_slot.exit

.lr.ph.preheader.i:                               ; preds = %gv_recalloc.exit.i
  %i.ds = sext i32 %i.dq to i64                   ; 5 uses
  %i.dt = sext i32 %.0.i to i64                   ; 5 uses
  %i.du = sub nsw i64 %i.ds, %i.dt
  %xtraiter = and i64 %i.du, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.dv = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ds ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 -8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !14 ; 2 uses
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !14
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 364 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !37
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !37
  %indvars.iv.next.i78.prol = add nsw i64 %i.ds, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i77.unr = phi i64 [ %i.ds, %.lr.ph.preheader.i ], [ %indvars.iv.next.i78.prol, %.lr.ph.i.prol ]
  %i.ed = add nsw i64 %i.ds, -1
  %i.ee = icmp eq i64 %i.ed, %i.dt
  br i1 %i.ee, label %make_vn_slot.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i77 = phi i64 [ %indvars.iv.next.i78.1, %.lr.ph.i ], [ %indvars.iv.i77.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ef = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i77 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !14 ; 2 uses
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 364 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !37
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !37
  %i.en = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i77 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -8
  %i.ep = getelementptr i8, ptr %i.en, i64 -16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !14 ; 2 uses
  store ptr %i.eq, ptr %i.eo, align 8, !tbaa !14
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 364 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !37
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !37
  %indvars.iv.next.i78.1 = add nsw i64 %indvars.iv.i77, -2 ; 2 uses
  %i.ew = icmp sgt i64 %indvars.iv.next.i78.1, %i.dt
  br i1 %i.ew, label %.lr.ph.i, label %make_vn_slot.exit, !llvm.loop !103

make_vn_slot.exit:                                ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %gv_recalloc.exit.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %gv_recalloc.exit.._crit_edge_crit_edge.i ], [ %i.dt, %.lr.ph.i ], [ %i.dt, %.lr.ph.i.prol.loopexit ]
  %i.ex = tail call ptr @virtual_node(ptr noundef nonnull %i.n) #12 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %.pre-phi.i ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !14
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !8  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 364
  store i32 %.0.i, ptr %i.fb, align 4, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 360
  store i32 %i.bp, ptr %i.fc, align 8, !tbaa !50
  %i.fd = load ptr, ptr %i.y, align 8, !tbaa !8   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 264
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !38
  %i.fg = getelementptr inbounds [88 x i8], ptr %i.ff, i64 %i.bq ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !87
end_hunk_0
