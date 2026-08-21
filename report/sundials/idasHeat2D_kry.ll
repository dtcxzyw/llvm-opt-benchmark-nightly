inline.NumInlined: 36
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:bb.a
check_retval.exit130:                             ; preds = %check_retval.exit128, %bb.ac
  %i.dl = call i32 @IDAGetNumLinConvFails(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.e) #10 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %check_retval.exit132

bb.ad:                                            ; preds = %check_retval.exit130
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dn, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.19, i32 noundef %i.dl) #11 ; 0 uses
  br label %check_retval.exit132

check_retval.exit132:                             ; preds = %check_retval.exit130, %bb.ad
  %i.dp = load i64, ptr %i.c, align 8, !tbaa !22
  %i.dq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i64 noundef %i.dp) ; 0 uses
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !22
  %i.ds = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.dr) ; 0 uses
  %i.dt = load i64, ptr %i.e, align 8, !tbaa !22
  %i.du = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i64 noundef %i.dt) ; 0 uses
  call fastcc void @SetInitialProfile(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, ptr noundef nonnull %i.t)
  %i.dv = call i32 @IDAReInit(ptr noundef nonnull %i.aj, double noundef 0.000000e+00, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p) #10 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %check_retval.exit134, label %bb.ae

check_retval.exit134:                             ; preds = %check_retval.exit132
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.dy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.23, i32 noundef %i.dv) #11 ; 0 uses
  br label %bb.au

bb.ae:                                            ; preds = %check_retval.exit132
  %i.dz = call i32 @SUNLinSol_SPGMRSetGSType(ptr noundef nonnull %i.be, i32 noundef 2) #10 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %check_retval.exit136, label %bb.af

check_retval.exit136:                             ; preds = %bb.ae
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eb, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.24, i32 noundef %i.dz) #11 ; 0 uses
  br label %bb.au

bb.af:                                            ; preds = %bb.ae
  %puts89 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts90 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts91 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts92 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.ed = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 1.000000e-02, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %check_retval.exit138, label %bb.ag

check_retval.exit138:                             ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.lcssa = phi i32 [ %i.ed, %bb.af ], [ %i.ei, %bb.ag ], [ %i.el, %bb.ah ], [ %i.eo, %bb.ai ], [ %i.er, %bb.aj ], [ %i.eu, %bb.ak ], [ %i.ex, %bb.al ], [ %i.fa, %bb.am ], [ %i.fd, %bb.an ], [ %i.fg, %bb.ao ], [ %i.fj, %bb.ap ]
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.eg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.16, i32 noundef %.lcssa) #11 ; 0 uses
  br label %bb.au

bb.ag:                                            ; preds = %bb.af
  %i.eh = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.eh, ptr noundef nonnull %i.l)
  %i.ei = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 2.000000e-02, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %check_retval.exit138, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ek = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.ek, ptr noundef nonnull %i.l)
  %i.el = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 4.000000e-02, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %check_retval.exit138, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.en, ptr noundef nonnull %i.l)
  %i.eo = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 8.000000e-02, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %check_retval.exit138, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.eq, ptr noundef nonnull %i.l)
  %i.er = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 1.600000e-01, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %check_retval.exit138, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.et, ptr noundef nonnull %i.l)
  %i.eu = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 3.200000e-01, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %check_retval.exit138, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.ew, ptr noundef nonnull %i.l)
  %i.ex = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 6.400000e-01, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %check_retval.exit138, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.ez, ptr noundef nonnull %i.l)
  %i.fa = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 1.280000e+00, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %check_retval.exit138, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fc = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.fc, ptr noundef nonnull %i.l)
  %i.fd = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 2.560000e+00, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %check_retval.exit138, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.ff, ptr noundef nonnull %i.l)
  %i.fg = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 5.120000e+00, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %check_retval.exit138, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.fi, ptr noundef nonnull %i.l)
  %i.fj = call i32 @IDASolve(ptr noundef nonnull %i.aj, double noundef 1.024000e+01, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, i32 noundef 1) #10 ; 2 uses
  %i.fk = icmp slt i32 %i.fj, 0
  br i1 %i.fk, label %check_retval.exit138, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.aj, double noundef %i.fl, ptr noundef nonnull %i.l)
  %i.fm = call i32 @IDAGetNumErrTestFails(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %bb.ar, label %check_retval.exit140

bb.ar:                                            ; preds = %bb.aq
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.17, i32 noundef %i.fm) #11 ; 0 uses
  br label %check_retval.exit140

check_retval.exit140:                             ; preds = %bb.aq, %bb.ar
  %i.fq = call i32 @IDAGetNumNonlinSolvConvFails(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.d) #10 ; 2 uses
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %bb.as, label %check_retval.exit142

bb.as:                                            ; preds = %check_retval.exit140
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ft = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.18, i32 noundef %i.fq) #11 ; 0 uses
  br label %check_retval.exit142

check_retval.exit142:                             ; preds = %check_retval.exit140, %bb.as
  %i.fu = call i32 @IDAGetNumLinConvFails(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.e) #10 ; 2 uses
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.at, label %check_retval.exit144

bb.at:                                            ; preds = %check_retval.exit142
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.19, i32 noundef %i.fu) #11 ; 0 uses
  br label %check_retval.exit144

check_retval.exit144:                             ; preds = %check_retval.exit142, %bb.at
  %i.fy = load i64, ptr %i.c, align 8, !tbaa !22
  %i.fz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i64 noundef %i.fy) ; 0 uses
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !22
  %i.gb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.ga) ; 0 uses
  %i.gc = load i64, ptr %i.e, align 8, !tbaa !22
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i64 noundef %i.gc) ; 0 uses
  call void @IDAFree(ptr noundef nonnull %i.a) #10
  %i.ge = call i32 @SUNLinSolFree(ptr noundef nonnull %i.be) #10 ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.l) #10
  call void @N_VDestroy(ptr noundef nonnull %i.p) #10
  call void @N_VDestroy(ptr noundef nonnull %i.t) #10
  %i.gf = load ptr, ptr %i.ac, align 8, !tbaa !20
  call void @N_VDestroy(ptr noundef %i.gf) #10
  call void @free(ptr noundef nonnull %i.ab) #10
  %i.gg = call i32 @SUNContext_Free(ptr noundef nonnull %i.f) #10 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %check_retval.exit138, %check_retval.exit136, %check_retval.exit134, %check_retval.exit126, %check_retval.exit124, %check_retval.exit122, %check_retval.exit120, %check_retval.exit118, %check_retval.exit116, %check_retval.exit114, %check_retval.exit112, %check_retval.exit110, %check_retval.exit108, %check_retval.exit106, %check_retval.exit102, %check_retval.exit100, %check_retval.exit98, %check_retval.exit96, %check_retval.exit, %check_retval.exit144
  %.068 = phi i32 [ 0, %check_retval.exit144 ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit96 ], [ 1, %check_retval.exit98 ], [ 1, %check_retval.exit100 ], [ 1, %check_retval.exit102 ], [ 1, %check_retval.exit138 ], [ 1, %check_retval.exit106 ], [ 1, %check_retval.exit108 ], [ 1, %check_retval.exit110 ], [ 1, %check_retval.exit112 ], [ 1, %check_retval.exit114 ], [ 1, %check_retval.exit116 ], [ 1, %check_retval.exit118 ], [ 1, %check_retval.exit120 ], [ 1, %check_retval.exit122 ], [ 1, %check_retval.exit124 ], [ 1, %check_retval.exit126 ], [ 1, %check_retval.exit134 ], [ 1, %check_retval.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @SetInitialProfile(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !14     ; 19 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 3 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 2 uses
  %i.d = add nsw i64 %i.a, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.a, 0
  br i1 %i.e, label %.lr.ph58, label %._crit_edge68.split.critedge

.lr.ph58:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = mul i64 %i.a, %i.a
  %i.h = shl i64 %i.g, 3
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.h
  %scevgep1 = getelementptr i8, ptr %0, i64 16
  %min.iters.check = icmp eq i64 %i.a, 1
  %bound0 = icmp ult ptr %i.b, %scevgep1
  %bound1 = icmp ult ptr %i.f, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.a, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.i = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.a, 8070450532247928830      ; 3 uses
  %cmp.n = icmp eq i64 %i.a, %n.vec
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph58, %._crit_edge
  %.056 = phi i64 [ 0, %.lr.ph58 ], [ %i.be, %._crit_edge ] ; 3 uses
  %i.j = load double, ptr %i.f, align 8, !tbaa !23
  %i.k = uitofp nneg i64 %.056 to double
  %i.l = fmul double %i.j, %i.k                   ; 5 uses
  %i.m = mul nuw nsw i64 %.056, %i.a
  %i.n = fsub double 1.000000e+00, %i.l           ; 4 uses
  %i.o = getelementptr [8 x i8], ptr %i.b, i64 %i.m ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.i
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.p = load double, ptr %i.f, align 8, !tbaa !23, !alias.scope !24
  %broadcast.splatinsert4 = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat5 = shufflevector <2 x double> %broadcast.splatinsert4, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2 = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat3 = shufflevector <2 x double> %broadcast.splatinsert2, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.q = uitofp nneg <2 x i64> %vec.ind to <2 x double>
  %i.r = fmul <2 x double> %broadcast.splat5, %i.q ; 2 uses
  %i.s = fmul <2 x double> %i.r, splat (double 1.600000e+01)
  %i.t = fsub <2 x double> splat (double 1.000000e+00), %i.r
  %i.u = fmul <2 x double> %i.s, %i.t
  %i.v = fmul <2 x double> %broadcast.splat, %i.u
  %i.w = fmul <2 x double> %broadcast.splat3, %i.v
  %i.x = getelementptr [8 x i8], ptr %i.o, i64 %index
  store <2 x double> %i.w, ptr %i.x, align 8, !tbaa !19, !alias.scope !27, !noalias !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.04955.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 5 uses
  %.neg = or disjoint i64 %.04955.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = load double, ptr %i.f, align 8, !tbaa !23
  %i.aa = uitofp nneg i64 %.04955.ph to double
  %i.ab = fmul double %i.z, %i.aa                 ; 2 uses
  %i.ac = fmul double %i.ab, 1.600000e+01
  %i.ad = fsub double 1.000000e+00, %i.ab
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = fmul double %i.l, %i.ae
  %i.ag = fmul double %i.n, %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.o, i64 %.04955.ph
  store double %i.ag, ptr %i.ah, align 8, !tbaa !19
  %i.ai = or disjoint i64 %.04955.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.04955.unr = phi i64 [ %.04955.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %i.a, %.neg
  br i1 %i.aj, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04955 = phi i64 [ %i.bd, %scalar.ph ], [ %.04955.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ak = load double, ptr %i.f, align 8, !tbaa !23
  %i.al = uitofp nneg i64 %.04955 to double
  %i.am = fmul double %i.ak, %i.al                ; 2 uses
  %i.an = fmul double %i.am, 1.600000e+01
  %i.ao = fsub double 1.000000e+00, %i.am
  %i.ap = fmul double %i.an, %i.ao
  %i.aq = fmul double %i.l, %i.ap
  %i.ar = fmul double %i.n, %i.aq
  %i.as = getelementptr [8 x i8], ptr %i.o, i64 %.04955
  store double %i.ar, ptr %i.as, align 8, !tbaa !19
  %i.at = add nuw nsw i64 %.04955, 1              ; 2 uses
  %i.au = load double, ptr %i.f, align 8, !tbaa !23
  %i.av = uitofp nneg i64 %i.at to double
  %i.aw = fmul double %i.au, %i.av                ; 2 uses
  %i.ax = fmul double %i.aw, 1.600000e+01
  %i.ay = fsub double 1.000000e+00, %i.aw
  %i.az = fmul double %i.ax, %i.ay
  %i.ba = fmul double %i.l, %i.az
  %i.bb = fmul double %i.n, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.o, i64 %i.at
  store double %i.bb, ptr %i.bc, align 8, !tbaa !19
  %i.bd = add nuw nsw i64 %.04955, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bd, %i.a
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.be = add nuw nsw i64 %.056, 1                ; 2 uses
  %exitcond71.not = icmp eq i64 %i.be, %i.a
  br i1 %exitcond71.not, label %._crit_edge59.split, label %.lr.ph

._crit_edge59.split:                              ; preds = %._crit_edge
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #10
  %i.bf = tail call i32 @resHeat(double poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %0) ; 0 uses
  tail call void @N_VScale(double noundef -1.000000e+00, ptr noundef %3, ptr noundef %2) #10
  %i.bg = shl i64 %i.a, 3                         ; 2 uses
  %exitcond72.peel.not = icmp eq i64 %i.a, 1
  %.not = icmp eq i64 %i.a, 2
  %i.bh = add nsw i64 %i.a, -2
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %._crit_edge59.split, %._crit_edge63
  %.165 = phi i64 [ %i.bq, %._crit_edge63 ], [ 0, %._crit_edge59.split ] ; 5 uses
  %4 = mul i64 %i.bg, %.165
  %scevgep74 = getelementptr i8, ptr %i.c, i64 %4
  %i.bi = mul nuw nsw i64 %.165, %i.a
  %i.bj = icmp eq i64 %.165, 0
  %i.bk = getelementptr [8 x i8], ptr %i.c, i64 %i.bi ; 2 uses
  br i1 %i.bj, label %._crit_edge63.sink.split, label %.lr.ph62.split

.lr.ph62.split:                                   ; preds = %.lr.ph62
  %i.bl = icmp eq i64 %.165, %i.d
  %.fr = freeze i1 %i.bl
  br i1 %.fr, label %._crit_edge63.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph62.split
  store double 0.000000e+00, ptr %i.bk, align 8, !tbaa !19
  br i1 %exitcond72.peel.not, label %._crit_edge63, label %.lr.ph62.split.split.peel.next

.lr.ph62.split.split.peel.next:                   ; preds = %bb.b
  %i.bm = getelementptr [8 x i8], ptr %i.bk, i64 %i.d
  br i1 %.not, label %.lr.ph62.split.split.peel, label %.lr.ph62.split.split

.lr.ph62.split.split:                             ; preds = %.lr.ph62.split.split.peel.next, %.lr.ph62.split.split
  %.15060 = phi i64 [ %i.bn, %.lr.ph62.split.split ], [ 1, %.lr.ph62.split.split.peel.next ] ; 2 uses
  %i.bn = add nuw nsw i64 %.15060, 1              ; 2 uses
  %exitcond72.not = icmp eq i64 %.15060, %i.bh
  br i1 %exitcond72.not, label %.lr.ph62.split.split.peel, label %.lr.ph62.split.split, !llvm.loop !33

._crit_edge63.sink.split:                         ; preds = %.lr.ph62.split, %.lr.ph62
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep74, i8 0, i64 %i.bg, i1 false), !tbaa !19
  br label %._crit_edge63

.lr.ph62.split.split.peel:                        ; preds = %.lr.ph62.split.split.peel.next, %.lr.ph62.split.split
  %i.bo = phi i64 [ 1, %.lr.ph62.split.split.peel.next ], [ %i.bn, %.lr.ph62.split.split ]
  %i.bp = icmp eq i64 %i.bo, %i.d
  br i1 %i.bp, label %bb.c, label %._crit_edge63

bb.c:                                             ; preds = %.lr.ph62.split.split.peel
  store double 0.000000e+00, ptr %i.bm, align 8, !tbaa !19
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %bb.c, %.lr.ph62.split.split.peel, %._crit_edge63.sink.split, %bb.b
  %i.bq = add nuw nsw i64 %.165, 1                ; 2 uses
  %exitcond75.not = icmp eq i64 %i.bq, %i.a
  br i1 %exitcond75.not, label %._crit_edge68.split, label %.lr.ph62

._crit_edge68.split.critedge:                     ; preds = %bb.a
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %2) #10
  %i.br = tail call i32 @resHeat(double poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %0) ; 0 uses
  tail call void @N_VScale(double noundef -1.000000e+00, ptr noundef %3, ptr noundef %2) #10
  br label %._crit_edge68.split

._crit_edge68.split:                              ; preds = %._crit_edge63, %._crit_edge68.split.critedge
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetConstraints(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @resHeat(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 80 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 32 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #10 ; 32 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !35
  %i.f = load i64, ptr %4, align 8, !tbaa !14     ; 80 uses
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %3) #10
  %i.g = add i64 %i.f, -1                         ; 8 uses
  %i.h = icmp sgt i64 %i.f, 2
  %i.i = fneg double %i.e                         ; 16 uses
  br i1 %i.h, label %.lr.ph.preheader.preheader, label %.split40

.lr.ph.preheader.preheader:                       ; preds = %bb.a
  %i.j = add nsw i64 %i.f, -2                     ; 4 uses
  %min.iters.check = icmp ult i64 %i.j, 10
  br i1 %min.iters.check, label %.lr.ph.preheader.preheader398, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.preheader
  %i.k = shl i64 %i.f, 3                          ; 3 uses
  %i.l = add i64 %i.k, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.l ; 4 uses
  %i.m = shl i64 %i.f, 4                          ; 3 uses
  %i.n = add i64 %i.m, -8                         ; 2 uses
  %scevgep43 = getelementptr i8, ptr %i.c, i64 %i.n ; 4 uses
  %i.o = getelementptr i8, ptr %i.a, i64 %i.m
  %scevgep44 = getelementptr i8, ptr %i.o, i64 8
  %i.p = mul i64 %i.f, 24
  %i.q = getelementptr i8, ptr %i.a, i64 %i.p
  %scevgep45 = getelementptr i8, ptr %i.q, i64 -8
  %scevgep46 = getelementptr i8, ptr %i.a, i64 8
  %i.r = getelementptr i8, ptr %i.a, i64 %i.k
  %scevgep47 = getelementptr i8, ptr %i.r, i64 -8
  %scevgep48 = getelementptr i8, ptr %i.a, i64 %i.k
  %scevgep49 = getelementptr i8, ptr %i.a, i64 %i.m
  %scevgep50 = getelementptr i8, ptr %i.b, i64 %i.l
  %scevgep51 = getelementptr i8, ptr %i.b, i64 %i.n
  %bound0 = icmp ult ptr %scevgep, %scevgep45
  %bound1 = icmp ult ptr %scevgep44, %scevgep43
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %scevgep, %scevgep47
  %bound153 = icmp ult ptr %scevgep46, %scevgep43
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  %bound055 = icmp ult ptr %scevgep, %scevgep49
  %bound156 = icmp ult ptr %scevgep48, %scevgep43
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx58 = or i1 %conflict.rdx, %found.conflict57
  %bound059 = icmp ult ptr %scevgep, %scevgep51
  %bound160 = icmp ult ptr %scevgep50, %scevgep43
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx58, %found.conflict61
  br i1 %conflict.rdx62, label %.lr.ph.preheader.preheader398, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, -2                       ; 2 uses
  %i.s = or i64 %i.j, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = or disjoint i64 %index, 1                ; 2 uses
  %i.u = add nuw nsw i64 %i.t, %i.f               ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %i.a, i64 %i.u ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %wide.load = load <2 x double>, ptr %i.w, align 8, !tbaa !19, !alias.scope !36
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %wide.load63 = load <2 x double>, ptr %i.x, align 8, !tbaa !19, !alias.scope !36
  %i.y = fadd <2 x double> %wide.load, %wide.load63
  %wide.load64 = load <2 x double>, ptr %i.v, align 8, !tbaa !19, !alias.scope !36 ; 2 uses
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load64, <2 x double> splat (double -2.000000e+00), <2 x double> %i.y)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %wide.load65 = load <2 x double>, ptr %i.aa, align 8, !tbaa !19, !alias.scope !39
  %i.ab = getelementptr [8 x i8], ptr %i.v, i64 %i.f
  %wide.load66 = load <2 x double>, ptr %i.ab, align 8, !tbaa !19, !alias.scope !41
  %i.ac = fadd <2 x double> %wide.load65, %wide.load66
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load64, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ac)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u
  %wide.load67 = load <2 x double>, ptr %i.ae, align 8, !tbaa !19, !alias.scope !43
  %i.af = fadd <2 x double> %i.z, %i.ad
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.af, <2 x double> %wide.load67)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.u
  store <2 x double> %i.ag, ptr %i.ah, align 8, !tbaa !19, !alias.scope !45, !noalias !47
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader.preheader398

.lr.ph.preheader.preheader398:                    ; preds = %vector.memcheck, %.lr.ph.preheader.preheader, %middle.block
  %.03738.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.preheader398, %.lr.ph.preheader
  %.03738 = phi i64 [ %i.bh, %.lr.ph.preheader ], [ %.03738.ph, %.lr.ph.preheader.preheader398 ] ; 3 uses
  %i.aj = add nuw nsw i64 %.03738, %i.f           ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %i.a, i64 %i.aj ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load double, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr i8, ptr %i.ak, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !19
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03738
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !19
  %i.as = getelementptr [8 x i8], ptr %i.ak, i64 %i.f
  %i.at = load double, ptr %i.as, align 8, !tbaa !19
  %i.au = insertelement <2 x double> poison, double %i.am, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.ar, i64 1
  %i.aw = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.at, i64 1
  %i.ay = fadd <2 x double> %i.av, %i.ax
  %i.az = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ay) ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aj
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !19
  %shift = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bb, %shift
  %i.be = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.i, double %i.be, double %i.bd)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aj
  store double %i.bf, ptr %i.bg, align 8, !tbaa !19
  %i.bh = add nuw nsw i64 %.03738, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph.preheader, %middle.block
  %i.bi = shl nuw nsw i64 %i.f, 1                 ; 2 uses
  %i.bj = add nsw i64 %i.f, -2                    ; 4 uses
  %min.iters.check95 = icmp ult i64 %i.bj, 10
  br i1 %min.iters.check95, label %scalar.ph94.preheader, label %vector.memcheck68

vector.memcheck68:                                ; preds = %._crit_edge
  %i.bk = shl i64 %i.f, 4                         ; 3 uses
  %i.bl = or disjoint i64 %i.bk, 8                ; 2 uses
  %scevgep69 = getelementptr i8, ptr %i.c, i64 %i.bl ; 4 uses
  %i.bm = mul i64 %i.f, 24                        ; 3 uses
  %i.bn = add i64 %i.bm, -8                       ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.c, i64 %i.bn ; 4 uses
  %i.bo = getelementptr i8, ptr %i.a, i64 %i.bm
  %scevgep71 = getelementptr i8, ptr %i.bo, i64 8
  %i.bp = shl i64 %i.f, 5
  %i.bq = getelementptr i8, ptr %i.a, i64 %i.bp
  %scevgep72 = getelementptr i8, ptr %i.bq, i64 -8
  %i.br = shl i64 %i.f, 3
  %i.bs = getelementptr i8, ptr %i.a, i64 %i.br
  %scevgep73 = getelementptr i8, ptr %i.bs, i64 8
  %i.bt = getelementptr i8, ptr %i.a, i64 %i.bk
  %scevgep74 = getelementptr i8, ptr %i.bt, i64 -8
  %scevgep75 = getelementptr i8, ptr %i.a, i64 %i.bk
  %scevgep76 = getelementptr i8, ptr %i.a, i64 %i.bm
  %scevgep77 = getelementptr i8, ptr %i.b, i64 %i.bl
  %scevgep78 = getelementptr i8, ptr %i.b, i64 %i.bn
  %bound079 = icmp ult ptr %scevgep69, %scevgep72
  %bound180 = icmp ult ptr %scevgep71, %scevgep70
  %found.conflict81 = and i1 %bound079, %bound180
end_hunk_0
