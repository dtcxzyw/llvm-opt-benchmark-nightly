Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regexec?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@onig_builtin_cmp:bb.a
  %i.bw = load i32, ptr %i.bu, align 8, !tbaa !47
  store i32 %i.bw, ptr %i.bs, align 8, !tbaa !61
  br label %bb.m

onig_get_callout_data_by_callout_args_self.exit:  ; preds = %bb.l
  %.phi.trans.insert179 = getelementptr i8, ptr %i.br, i64 -120
  %.pre180 = load i32, ptr %.phi.trans.insert179, align 8, !tbaa !61
  %i.bx = icmp eq i32 %.pre180, 0
  br i1 %i.bx, label %bb.m, label %bb.y

bb.m:                                             ; preds = %onig_get_callout_data_by_callout_args_self.exit.thread, %onig_get_callout_data_by_callout_args_self.exit
  %i.by = load i32, ptr %i.c, align 8, !tbaa !59
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.ca = tail call ptr @onig_reg_callout_list_at(ptr noundef %i.bz, i32 noundef %i.by) #30 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %onig_get_arg_by_callout_args.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !143
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.o, label %onig_get_arg_by_callout_args.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %.sroa.0.0.copyload118 = load ptr, ptr %i.cf, align 8 ; 3 uses
  %.sroa.18.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %.sroa.18.0.copyload129 = load ptr, ptr %.sroa.18.0..sroa_idx128, align 8, !tbaa !62 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !97
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !115
  %i.ck = tail call i32 %i.cj(ptr noundef %.sroa.0.0.copyload118, ptr noundef %.sroa.18.0.copyload129) #30
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !97
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !114
  %i.cn = tail call i32 %i.cm(ptr noundef %.sroa.0.0.copyload118) #30
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.copyload118, i64 %i.co ; 4 uses
  %i.cq = icmp ult ptr %i.cp, %.sroa.18.0.copyload129
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !97
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !115
  %i.cu = tail call i32 %i.ct(ptr noundef %i.cp, ptr noundef nonnull %.sroa.18.0.copyload129) #30
  %i.cv = load ptr, ptr %i.cg, align 8, !tbaa !97
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !114
  %i.cx = tail call i32 %i.cw(ptr noundef %i.cp) #30
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cp, i64 %i.cy
  %.not90 = icmp eq ptr %i.cz, %.sroa.18.0.copyload129
  br i1 %.not90, label %bb.q, label %onig_get_arg_by_callout_args.exit.thread

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi i32 [ %i.cu, %bb.p ], [ 0, %bb.o ]    ; 4 uses
  switch i32 %i.ck, label %onig_get_arg_by_callout_args.exit.thread [
    i32 61, label %bb.r
    i32 33, label %bb.s
    i32 60, label %bb.t
    i32 62, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %.not92 = icmp eq i32 %.0, 61
  br i1 %.not92, label %bb.x, label %onig_get_arg_by_callout_args.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not91 = icmp eq i32 %.0, 61
  br i1 %.not91, label %bb.x, label %onig_get_arg_by_callout_args.exit.thread

bb.t:                                             ; preds = %bb.q
  switch i32 %.0, label %onig_get_arg_by_callout_args.exit.thread [
    i32 61, label %bb.x
    i32 0, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  br label %bb.x

bb.v:                                             ; preds = %bb.q
  switch i32 %.0, label %onig_get_arg_by_callout_args.exit.thread [
    i32 61, label %bb.x
    i32 0, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.t, %bb.s, %bb.r, %bb.w, %bb.u
  %.063 = phi i32 [ 3, %bb.w ], [ 0, %bb.r ], [ 1, %bb.s ], [ 2, %bb.u ], [ 4, %bb.t ], [ 5, %bb.v ] ; 2 uses
  %i.da = load i32, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %onig_get_arg_by_callout_args.exit.thread, label %.thread168

.thread168:                                       ; preds = %bb.x
  %i.dc = zext nneg i32 %.063 to i64
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = load ptr, ptr %i.bk, align 8, !tbaa !54
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !58 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !48
  %i.dj = zext nneg i32 %i.da to i64
  %i.dk = getelementptr [128 x i8], ptr %i.di, i64 %i.dj ; 4 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 -128
  %i.dm = getelementptr i8, ptr %i.dk, i64 -120
  store i32 1, ptr %i.dm, align 8, !tbaa !61
  %i.dn = getelementptr i8, ptr %i.dk, i64 -112
  store ptr %i.dd, ptr %i.dn, align 8
  %.sroa.18.0..sroa_idx130 = getelementptr i8, ptr %i.dk, i64 -104
  store ptr %.sroa.18.0.copyload129, ptr %.sroa.18.0..sroa_idx130, align 8, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !47
  store i32 %i.dp, ptr %i.dl, align 8, !tbaa !61
  br label %bb.z

bb.y:                                             ; preds = %onig_get_callout_data_by_callout_args_self.exit
  %i.dq = getelementptr i8, ptr %i.br, i64 -112
  %.sroa.0.0.copyload117 = load ptr, ptr %i.dq, align 8
  %i.dr = ptrtoint ptr %.sroa.0.0.copyload117 to i64
  %i.ds = trunc i64 %i.dr to i32
  br label %bb.z

bb.z:                                             ; preds = %.thread168, %bb.y
  %.2 = phi i32 [ %.063, %.thread168 ], [ %i.ds, %bb.y ]
  switch i32 %.2, label %bb.ag [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
    i32 4, label %bb.ae
    i32 5, label %bb.af
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dt = icmp eq i64 %.065, %.064
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.du = icmp ne i64 %.065, %.064
  br label %bb.ag

bb.ac:                                            ; preds = %bb.z
  %i.dv = icmp slt i64 %.065, %.064
  br label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.dw = icmp sgt i64 %.065, %.064
  br label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.dx = icmp sle i64 %.065, %.064
  br label %bb.ag

bb.af:                                            ; preds = %bb.z
  %i.dy = icmp sge i64 %.065, %.064
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.268.shrunk = phi i1 [ false, %bb.z ], [ %i.dt, %bb.aa ], [ %i.du, %bb.ab ], [ %i.dv, %bb.ac ], [ %i.dw, %bb.ad ], [ %i.dx, %bb.ae ], [ %i.dy, %bb.af ]
  %i.dz = xor i1 %.268.shrunk, true
  %i.ea = zext i1 %i.dz to i32
  br label %onig_get_arg_by_callout_args.exit.thread

onig_get_arg_by_callout_args.exit.thread:         ; preds = %bb.m, %bb.n, %bb.s, %bb.r, %bb.q, %bb.p, %bb.v, %bb.t, %onig_get_callout_data_by_callout_args.exit101, %bb.i, %onig_get_callout_data_by_callout_args.exit, %bb.g, %bb.d, %bb.a, %bb.b, %bb.x, %bb.ag
  %.170 = phi i32 [ -30, %onig_get_callout_data_by_callout_args.exit101 ], [ -30, %bb.x ], [ -232, %bb.t ], [ -30, %bb.d ], [ -30, %bb.n ], [ %i.ea, %bb.ag ], [ -30, %bb.m ], [ -30, %bb.a ], [ -30, %onig_get_callout_data_by_callout_args.exit ], [ -30, %bb.i ], [ -30, %bb.b ], [ -30, %bb.g ], [ -232, %bb.s ], [ -232, %bb.r ], [ -232, %bb.q ], [ -232, %bb.p ], [ -232, %bb.v ]
  ret i32 %.170
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @onig_setup_builtin_monitors_by_ascii_encoded_name(ptr noundef %0) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %1 = alloca [4 x %union.OnigValue], align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %.not = icmp eq ptr %0, null
  %i.b = load ptr, ptr @stdout, align 8
  %storemerge = select i1 %.not, ptr %i.b, ptr %0
  store ptr %storemerge, ptr @OutFp, align 8, !tbaa !145
  store i32 2, ptr %i.a, align 16, !tbaa !35
  store i32 62, ptr %1, align 16, !tbaa !62
  %i.c = tail call i32 @onigenc_str_bytelen_null(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull @.str) #30
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr @.str, i64 %i.d
  %i.f = call i32 @onig_set_callout_of_name(ptr noundef nonnull @OnigEncodingASCII, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %i.e, i32 noundef 3, ptr noundef nonnull @onig_builtin_monitor, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %1) #30
  %.1 = call i32 @llvm.smin.i32(i32 %i.f, i32 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.1
}

declare i32 @onigenc_str_bytelen_null(ptr noundef, ptr noundef) local_unnamed_addr #16

declare i32 @onig_set_callout_of_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal range(i32 -30, 1) i32 @onig_builtin_monitor(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #15 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = load ptr, ptr @OutFp, align 8, !tbaa !145 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.g = tail call ptr @onig_reg_callout_list_at(ptr noundef %i.f, i32 noundef %i.d) #30 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %onig_get_arg_by_callout_args.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !143
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %onig_get_arg_by_callout_args.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 8 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !119
  %i.n = icmp eq i32 %i.m, 1                      ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %.sroa.0.0.copyload, 60
  br i1 %i.o, label %onig_get_arg_by_callout_args.exit.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  switch i32 %.sroa.0.0.copyload, label %onig_get_arg_by_callout_args.exit.thread [
    i32 88, label %bb.f
    i32 60, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.d
  %i.p = load i32, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !126
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !121 ; 2 uses
  %i.ab = tail call ptr @onig_get_callout_tag_start(ptr noundef %i.aa, i32 noundef %i.p) #30 ; 6 uses
  %i.ac = tail call ptr @onig_get_callout_tag_end(ptr noundef %i.aa, i32 noundef %i.p) #30 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 20, ptr noundef nonnull @.str.2, i32 noundef %i.p) #30 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 19) ; 6 uses
  %.not = icmp eq ptr %i.ac, %i.ab
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check50 = icmp ult i64 %i.ah, 16
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %spec.store.select, 12
  %n.vec = and i64 %spec.store.select, 16         ; 3 uses
  %wide.load = load <16 x i8>, ptr %i.ab, align 1, !tbaa !62
  store <16 x i8> %wide.load, ptr %i.a, align 16, !tbaa !62
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %spec.store.select, 28       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index52
  %wide.load53 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %index52
  store <4 x i8> %wide.load53, ptr %i.ak, align 4, !tbaa !62
  %index.next54 = add nuw i64 %index52, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next54, %n.vec51
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !224

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %spec.store.select, %n.vec51
  br i1 %cmp.n55, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !62
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %spec.store.select
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !225

._crit_edge:                                      ; preds = %.lr.ph, %vector.ph, %vec.epilog.middle.block, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.store.select
  store i8 0, ptr %i.ap, align 1, !tbaa !62
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.aq = select i1 %i.n, ptr @.str.4, ptr @.str.5
  %i.ar = ptrtoint ptr %i.v to i64
  %i.as = ptrtoint ptr %i.x to i64                ; 4 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = ptrtoint ptr %i.r to i64
  %i.aw = sub i64 %i.av, %i.as
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = ptrtoint ptr %i.t to i64
  %i.az = sub i64 %i.ay, %i.as
  %i.ba = trunc i64 %i.az to i32
  %i.bb = ptrtoint ptr %i.z to i64
  %i.bc = sub i64 %i.bb, %i.as
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aq, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.ba, i32 noundef %i.bd) #30 ; 0 uses
  %i.bf = call i32 @fflush(ptr noundef %i.b)      ; 0 uses
  br label %onig_get_arg_by_callout_args.exit.thread

onig_get_arg_by_callout_args.exit.thread:         ; preds = %bb.a, %bb.b, %bb.e, %bb.d, %bb.i
  %.040 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.i ], [ -30, %bb.b ], [ -30, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.040
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @history_tree_free(ptr noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

.preheader:                                       ; preds = %bb.d, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  br i1 %i.g, label %.lr.ph6, label %history_tree_clear.exit

.lr.ph6:                                          ; preds = %.preheader
  %i.j = zext nneg i32 %i.f to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.k, i1 false), !tbaa !45
  br label %history_tree_clear.exit

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi i32 [ %i.b, %.lr.ph ], [ %i.p, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @history_tree_free(ptr noundef %i.o), !inline_history !229
  %.pre = load i32, ptr %i.a, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %.pre, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.preheader, !llvm.loop !5

history_tree_clear.exit:                          ; preds = %.preheader, %.lr.ph6
  store i32 0, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.s, align 4, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.t, align 8, !tbaa !113
  store i32 -1, ptr %0, align 8, !tbaa !44
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %history_tree_clear.exit
  tail call void @free(ptr noundef nonnull %i.i) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %history_tree_clear.exit
  tail call void @free(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @history_tree_clear(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

.preheader:                                       ; preds = %bb.d, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = zext nneg i32 %i.f to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.k, i1 false), !tbaa !45
  br label %._crit_edge

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi i32 [ %i.b, %.lr.ph ], [ %i.p, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @history_tree_free(ptr noundef %i.o)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %i.l, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.preheader, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph20, %.preheader
  store i32 0, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.s, align 4, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.t, align 8, !tbaa !113
  store i32 -1, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @history_node_new() unnamed_addr #23 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #28 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !43
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %i.a, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 2) i32 @make_capture_history_tree(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !104    ; 2 uses
  %i.b = icmp ult ptr %i.a, %2
  br i1 %i.b, label %.lr.ph, label %history_tree_add_child.exit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.d = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %.054 = phi ptr [ %i.a, %.lr.ph ], [ %i.bm, %bb.p ] ; 11 uses
  %i.g = load i32, ptr %.054, align 8, !tbaa !107
  switch i32 %i.g, label %bb.p [
    i32 16, label %bb.c
    i32 32816, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.054, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !116  ; 3 uses
  %i.j = icmp slt i32 %i.i, 32
  br i1 %i.j, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.c, align 8, !tbaa !111
  %i.l = shl nuw i32 1, %i.i
  %i.m = and i32 %i.k, %i.l
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #28 ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %history_tree_add_child.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr null, ptr %i.p, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr %i.q, align 4, !tbaa !35
  store i32 %i.i, ptr %i.n, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.d
  %i.w = trunc i64 %i.v to i32
  store i32 %i.w, ptr %i.q, align 4, !tbaa !112
  %i.x = load i32, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.y = load i32, ptr %i.f, align 4, !tbaa !42   ; 2 uses
  %.not.i = icmp slt i32 %i.x, %i.y
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !41 ; 3 uses
  br i1 %.not.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq ptr %.pre.i, null
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = shl nsw i32 %i.y, 1                     ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.ad) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge.i = phi ptr [ %i.ae, %bb.i ], [ %i.aa, %bb.h ] ; 4 uses
  %.024.i = phi i32 [ %i.ab, %bb.i ], [ 8, %bb.h ] ; 3 uses
  store ptr %storemerge.i, ptr %.phi.trans.insert.i, align 8, !tbaa !41
  %i.af = icmp eq ptr %storemerge.i, null
  br i1 %i.af, label %history_tree_add_child.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !42  ; 3 uses
  %i.ah = icmp slt i32 %i.ag, %.024.i
  br i1 %i.ah, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ai = sext i32 %i.ag to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %scevgep.i = getelementptr i8, ptr %storemerge.i, i64 %i.aj
  %i.ak = xor i32 %i.ag, -1
  %i.al = add i32 %.024.i, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ao, i1 false), !tbaa !45
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.k
  store i32 %.024.i, ptr %i.f, align 4, !tbaa !42
  %.pre31.i = load i32, ptr %i.e, align 8, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %._crit_edge.i
  %i.ap = phi i32 [ %.pre31.i, %._crit_edge.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.aq = phi ptr [ %storemerge.i, %._crit_edge.i ], [ %.pre.i, %bb.f ]
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr %i.n, ptr %i.as, align 8, !tbaa !45
  %i.at = add nsw i32 %i.ap, 1
  store i32 %i.at, ptr %i.e, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %.054, i64 32
  store ptr %i.au, ptr %1, align 8, !tbaa !104
  %i.av = tail call fastcc i32 @make_capture_history_tree(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4) ; 2 uses
  %.not50 = icmp eq i32 %i.av, 0
  br i1 %.not50, label %bb.m, label %history_tree_add_child.exit

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %1, align 8, !tbaa !104   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.d
  %i.bb = trunc i64 %i.ba to i32
  store i32 %i.bb, ptr %i.r, align 8, !tbaa !113
  br label %bb.p

bb.n:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %.054, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !116
  %i.be = load i32, ptr %0, align 8, !tbaa !44
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !62
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.d
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !113
  store ptr %.054, ptr %1, align 8, !tbaa !104
  br label %history_tree_add_child.exit

bb.p:                                             ; preds = %bb.b, %bb.n, %bb.c, %bb.d, %bb.m
  %.1 = phi ptr [ %i.aw, %bb.m ], [ %.054, %bb.d ], [ %.054, %bb.c ], [ %.054, %bb.n ], [ %.054, %bb.b ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 32 ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %2
  br i1 %i.bn, label %bb.b, label %history_tree_add_child.exit, !llvm.loop !230

history_tree_add_child.exit:                      ; preds = %bb.l, %bb.p, %bb.j, %bb.e, %bb.a, %bb.o
  %.042 = phi i32 [ 0, %bb.o ], [ 1, %bb.a ], [ -5, %bb.j ], [ %i.av, %bb.l ], [ 1, %bb.p ], [ -5, %bb.e ]
  ret i32 %.042
}

declare i32 @onig_is_in_code_range(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -15, 1) i32 @stack_double(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !103    ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !104
  %i.c = load ptr, ptr %3, align 8, !tbaa !104
  %i.d = load ptr, ptr %4, align 8, !tbaa !104
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = lshr exact i64 %i.g, 5
  %i.i = trunc i64 %i.h to i32                    ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !93
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3                      ; 4 uses
  %i.n = and i64 %i.g, 137438953440
  %i.o = add nsw i64 %i.m, %i.n
  %i.p = shl i32 %i.i, 1                          ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 5
  %i.s = add nsw i64 %i.r, %i.m                   ; 2 uses
  %i.t = load i32, ptr %0, align 4, !tbaa !35
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #28 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.i, ptr %i.w, align 8, !tbaa !105
  %i.x = load i32, ptr %0, align 4, !tbaa !35
  %.not109 = icmp eq i32 %i.x, 0
  br i1 %.not109, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %sext110 = shl i64 %i.g, 27
  %i.y = ashr exact i64 %sext110, 27
  %i.z = and i64 %i.y, -32
  %i.aa = add nsw i64 %i.z, %i.m                  ; 2 uses
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #28 ; 3 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !84
  %.not111 = icmp eq ptr %i.ab, null
  br i1 %.not111, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.a, i64 %i.aa, i1 false)
  br label %.critedge

bb.f:                                             ; preds = %bb.c
  store ptr %i.a, ptr %5, align 8, !tbaa !84
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.a, i64 %i.o, i1 false)
  store i32 0, ptr %0, align 4, !tbaa !35
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !89 ; 4 uses
  %.not103 = icmp ne i32 %i.ad, 0
  %i.ae = icmp ugt i32 %i.p, %i.ad
  %or.cond = select i1 %.not103, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.af = icmp eq i32 %i.ad, %i.i
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.i, ptr %i.ag, align 8, !tbaa !105
  %i.ah = load i32, ptr %0, align 4, !tbaa !35
  %.not106 = icmp eq i32 %i.ah, 0
  br i1 %.not106, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext107 = shl i64 %i.g, 27
  %i.ai = ashr exact i64 %sext107, 27
  %i.aj = and i64 %i.ai, -32
  %i.ak = add nsw i64 %i.aj, %i.m                 ; 2 uses
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #28 ; 3 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !84
  %.not108 = icmp eq ptr %i.al, null
  br i1 %.not108, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.a, i64 %i.ak, i1 false)
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  store ptr %i.a, ptr %5, align 8, !tbaa !84
  br label %.critedge

bb.n:                                             ; preds = %bb.i, %bb.h
  %.090 = phi i32 [ %i.p, %bb.h ], [ %i.ad, %bb.i ]
  %i.am = tail call ptr @realloc(ptr noundef %i.a, i64 noundef %i.s) #29 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre = zext i32 %.090 to i64
  br label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.i, ptr %i.ao, align 8, !tbaa !105
  %i.ap = load i32, ptr %0, align 4, !tbaa !35
  %.not104 = icmp eq i32 %i.ap, 0
  br i1 %.not104, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !93
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 3
  %sext = shl i64 %i.g, 27
  %i.at = ashr exact i64 %sext, 27
  %i.au = and i64 %i.at, -32
  %i.av = add nsw i64 %i.as, %i.au                ; 2 uses
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #28 ; 3 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !84
  %.not105 = icmp eq ptr %i.aw, null
  br i1 %.not105, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.a, i64 %i.av, i1 false)
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  store ptr %i.a, ptr %5, align 8, !tbaa !84
  br label %.critedge

bb.s:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.q, %bb.g ]
  %.089 = phi ptr [ %i.am, %._crit_edge ], [ %i.u, %bb.g ] ; 2 uses
  %i.ax = ptrtoint ptr %i.d to i64
  %i.ay = sub i64 %i.ax, %i.f
  store ptr %.089, ptr %1, align 8, !tbaa !103
  %i.az = load i32, ptr %i.j, align 8, !tbaa !93
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.089, i64 %i.bb ; 2 uses
  store ptr %i.bc, ptr %2, align 8, !tbaa !104
  %i.bd = shl i64 %i.ay, 27
  %i.be = ashr i64 %i.bd, 32
  %i.bf = getelementptr inbounds [32 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.bf, ptr %4, align 8, !tbaa !104
  %i.bg = load ptr, ptr %2, align 8, !tbaa !104
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %.pre-phi
  store ptr %i.bh, ptr %3, align 8, !tbaa !104
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.m, %bb.l, %bb.e, %bb.p, %bb.k, %bb.d, %bb.r, %bb.f, %bb.s
  %.3 = phi i32 [ -5, %bb.r ], [ -5, %bb.p ], [ 0, %bb.s ], [ -5, %bb.d ], [ -15, %bb.m ], [ -5, %bb.k ], [ -5, %bb.q ], [ -5, %bb.e ], [ -5, %bb.f ], [ -15, %bb.l ]
  ret i32 %.3
}

declare i32 @onigenc_is_mbc_word_ascii(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

declare ptr @onigenc_get_prev_char_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

declare i32 @onigenc_egcb_is_break_position(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

declare i32 @onigenc_wb_is_break_position(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @string_cmp_ic(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4) unnamed_addr #15 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [18 x i8], align 16               ; 4 uses
  %i.c = alloca [18 x i8], align 16               ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.e = load ptr, ptr %3, align 8, !tbaa !103    ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !103
  %i.f = sext i32 %4 to i64                       ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.k = icmp ult ptr %i.j, %i.g
  br i1 %i.k, label %.lr.ph45, label %.loopexit27

bb.b:                                             ; preds = %._crit_edge
  br i1 %i.y, label %.lr.ph45, label %.loopexit27, !llvm.loop !2

.lr.ph45:                                         ; preds = %bb.a, %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.m = call i32 %i.l(i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b) #30 ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.o = call i32 %i.n(i32 noundef %1, ptr noundef nonnull %i.d, ptr noundef %i.h, ptr noundef nonnull %i.c) #30
  %.not = icmp eq i32 %i.m, %i.o
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.lr.ph45
  %i.p = icmp sgt i32 %i.m, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.q = zext nneg i32 %i.m to i64
  %i.r = getelementptr i8, ptr %i.c, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.r, i64 -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.02030 = phi ptr [ %i.v, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.02129 = phi ptr [ %i.u, %bb.c ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.s = load i8, ptr %.02129, align 1, !tbaa !62
  %i.t = load i8, ptr %.02030, align 1, !tbaa !62
  %.not26 = icmp eq i8 %i.s, %i.t
  br i1 %.not26, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.02129, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %.02030, i64 1
  %exitcond.not = icmp eq ptr %.02030, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !103  ; 3 uses
  %.not25 = icmp ult ptr %i.w, %i.h
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.y = icmp ult ptr %i.x, %i.g                  ; 2 uses
  br i1 %.not25, label %bb.b, label %bb.d, !llvm.loop !2

bb.d:                                             ; preds = %._crit_edge
  br i1 %i.y, label %.loopexit, label %.loopexit27

.loopexit27:                                      ; preds = %bb.b, %bb.a, %bb.d
  %i.z = phi ptr [ %i.w, %bb.d ], [ %i.e, %bb.a ], [ %i.w, %bb.b ]
  store ptr %i.z, ptr %3, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph45, %.lr.ph, %bb.d, %.loopexit27
  %.022 = phi i32 [ 1, %.loopexit27 ], [ 0, %.lr.ph ], [ 0, %bb.d ], [ 0, %.lr.ph45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @backref_match_at_nested_level(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull captures(none) %8, ptr noundef %9) unnamed_addr #15 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.067 = getelementptr inbounds i8, ptr %1, i64 -32 ; 2 uses
  %.not68 = icmp ult ptr %.067, %2
  br i1 %.not68, label %.loopexit64, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp sgt i32 %6, 0
  %wide.trip.count.i52 = zext nneg i32 %6 to i64  ; 2 uses
  br i1 %i.b, label %.lr.ph.split.us.split.us, label %.loopexit64

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph, %mem_is_in_memp.exit.thread.us.us
  %.072.us.us = phi ptr [ %.0.us.us, %mem_is_in_memp.exit.thread.us.us ], [ %.067, %.lr.ph ] ; 3 uses
  %.pn71.us.us = phi ptr [ %.072.us.us, %mem_is_in_memp.exit.thread.us.us ], [ %1, %.lr.ph ] ; 4 uses
  %.03870.us.us = phi i32 [ %.1.us.us, %mem_is_in_memp.exit.thread.us.us ], [ 0, %.lr.ph ] ; 4 uses
  %.03969.us.us = phi ptr [ %.140.us.us, %mem_is_in_memp.exit.thread.us.us ], [ null, %.lr.ph ] ; 10 uses
  %i.c = load i32, ptr %.072.us.us, align 8, !tbaa !107 ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 1040, label %bb.c
    i32 1296, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.d = add nsw i32 %.03870.us.us, 1
  br label %mem_is_in_memp.exit.thread.us.us

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  %i.e = add nsw i32 %.03870.us.us, -1
  br label %mem_is_in_memp.exit.thread.us.us

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
  %i.f = icmp eq i32 %.03870.us.us, %5
  br i1 %i.f, label %bb.e, label %mem_is_in_memp.exit.thread.us.us

bb.e:                                             ; preds = %bb.d
  switch i32 %i.c, label %mem_is_in_memp.exit.thread.us.us [
    i32 16, label %.lr.ph.preheader.i.us.us
    i32 32816, label %.lr.ph.preheader.i51.us.us
  ]

.lr.ph.preheader.i51.us.us:                       ; preds = %bb.e
  %i.g = getelementptr inbounds i8, ptr %.pn71.us.us, i64 -28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116
  br label %.lr.ph.i53.us.us

.lr.ph.i53.us.us:                                 ; preds = %bb.f, %.lr.ph.preheader.i51.us.us
  %indvars.iv.i54.us.us = phi i64 [ 0, %.lr.ph.preheader.i51.us.us ], [ %indvars.iv.next.i55.us.us, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i54.us.us
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %mem_is_in_memp.exit57.us.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i53.us.us
  %indvars.iv.next.i55.us.us = add nuw nsw i64 %indvars.iv.i54.us.us, 1 ; 2 uses
  %exitcond.not.i56.us.us = icmp eq i64 %indvars.iv.next.i55.us.us, %wide.trip.count.i52
  br i1 %exitcond.not.i56.us.us, label %mem_is_in_memp.exit.thread.us.us, label %.lr.ph.i53.us.us, !llvm.loop !4

mem_is_in_memp.exit57.us.us:                      ; preds = %.lr.ph.i53.us.us
  %i.l = getelementptr inbounds i8, ptr %.pn71.us.us, i64 -24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  br label %mem_is_in_memp.exit.thread.us.us

.lr.ph.preheader.i.us.us:                         ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %.pn71.us.us, i64 -28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !116
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.g, %.lr.ph.preheader.i.us.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.lr.ph.preheader.i.us.us ], [ %indvars.iv.next.i.us.us, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i.us.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %mem_is_in_memp.exit.us.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i52
  br i1 %exitcond.not.i.us.us, label %mem_is_in_memp.exit.thread.us.us, label %.lr.ph.i.us.us, !llvm.loop !4

mem_is_in_memp.exit.us.us:                        ; preds = %.lr.ph.i.us.us
  %.not47.us.us = icmp eq ptr %.03969.us.us, null
  br i1 %.not47.us.us, label %mem_is_in_memp.exit.thread.us.us, label %.split.us

mem_is_in_memp.exit.thread.us.us:                 ; preds = %bb.f, %bb.g, %mem_is_in_memp.exit.us.us, %mem_is_in_memp.exit57.us.us, %bb.e, %bb.d, %bb.c, %bb.b
  %.140.us.us = phi ptr [ %.03969.us.us, %bb.c ], [ %.03969.us.us, %bb.b ], [ null, %mem_is_in_memp.exit.us.us ], [ %.03969.us.us, %bb.d ], [ %i.m, %mem_is_in_memp.exit57.us.us ], [ %.03969.us.us, %bb.g ], [ %.03969.us.us, %bb.e ], [ %.03969.us.us, %bb.f ]
  %.1.us.us = phi i32 [ %i.e, %bb.c ], [ %i.d, %bb.b ], [ %5, %mem_is_in_memp.exit.us.us ], [ %.03870.us.us, %bb.d ], [ %5, %mem_is_in_memp.exit57.us.us ], [ %5, %bb.g ], [ %5, %bb.e ], [ %5, %bb.f ]
  %.0.us.us = getelementptr inbounds i8, ptr %.072.us.us, i64 -32 ; 2 uses
  %.not.us.us = icmp ult ptr %.0.us.us, %2
  br i1 %.not.us.us, label %.loopexit64, label %.lr.ph.split.us.split.us, !llvm.loop !231

.split.us:                                        ; preds = %mem_is_in_memp.exit.us.us
  %i.s = getelementptr inbounds i8, ptr %.pn71.us.us, i64 -24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 4 uses
  %i.u = ptrtoint ptr %.03969.us.us to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = load ptr, ptr %8, align 8, !tbaa !103    ; 4 uses
  %i.y = ptrtoint ptr %9 to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp sgt i64 %i.w, %i.aa
  br i1 %i.ab, label %.loopexit64, label %bb.h

bb.h:                                             ; preds = %.split.us
  store ptr %i.x, ptr %i.a, align 8, !tbaa !103
  %.not48 = icmp eq i32 %3, 0
  br i1 %.not48, label %.preheader.preheader, label %bb.i

.preheader.preheader:                             ; preds = %bb.h
  %i.ac = icmp ult ptr %i.t, %.03969.us.us
  br i1 %i.ac, label %.lr.ph118, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.af = trunc i64 %i.w to i32
  %i.ag = call fastcc i32 @string_cmp_ic(ptr noundef %i.ae, i32 noundef %4, ptr noundef %i.t, ptr noundef %i.a, i32 noundef %i.af)
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit64, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !103
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph118
  %i.ai = getelementptr inbounds nuw i8, ptr %.041117, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.ak = icmp ult ptr %i.ai, %.03969.us.us
  br i1 %i.ak, label %.lr.ph118, label %.loopexit, !llvm.loop !232

.lr.ph118:                                        ; preds = %.preheader.preheader, %.preheader
  %.041117 = phi ptr [ %i.ai, %.preheader ], [ %i.t, %.preheader.preheader ] ; 2 uses
  %i.al = phi ptr [ %i.aj, %.preheader ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %i.am = load i8, ptr %.041117, align 1, !tbaa !62
  %i.an = load i8, ptr %i.al, align 1, !tbaa !62
  %.not49 = icmp eq i8 %i.am, %i.an
  br i1 %.not49, label %.preheader, label %.loopexit64, !llvm.loop !232

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %._crit_edge
  %i.ao = phi ptr [ %.pre, %._crit_edge ], [ %i.x, %.preheader.preheader ], [ %i.aj, %.preheader ]
  store ptr %i.ao, ptr %8, align 8, !tbaa !103
  br label %.loopexit64

.loopexit64:                                      ; preds = %mem_is_in_memp.exit.thread.us.us, %.lr.ph118, %.lr.ph, %bb.a, %bb.i, %.split.us, %.loopexit
  %.042 = phi i32 [ 0, %.lr.ph118 ], [ 0, %.split.us ], [ 1, %.loopexit ], [ 0, %bb.i ], [ 0, %bb.a ], [ 0, %.lr.ph ], [ 0, %mem_is_in_memp.exit.thread.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.042
}

declare ptr @onig_get_callout_start_func(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @forward_search(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !141  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %.pre = ptrtoint ptr %2 to i64                  ; 4 uses
  %.pre154 = ptrtoint ptr %3 to i64               ; 2 uses
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 %.pre, %.pre154
  %i.d = zext i32 %i.b to i64                     ; 2 uses
  %.not107 = icmp sgt i64 %i.c, %i.d
  br i1 %.not107, label %bb.c, label %slow_search.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !242
  %i.i = icmp eq i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.d ; 2 uses
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.095141 = phi ptr [ %i.o, %.lr.ph ], [ %3, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.m = tail call i32 %i.l(ptr noundef %.095141) #30
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %.095141, i64 %i.n ; 3 uses
  %i.p = icmp ult ptr %i.o, %i.j
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !233

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.a
  %.1 = phi ptr [ %i.j, %bb.c ], [ %3, %bb.a ], [ %i.o, %.lr.ph ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.v = ptrtoint ptr %4 to i64
  %i.w = sub i64 %.pre, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.loopexit
  %.2 = phi ptr [ %.1, %.loopexit ], [ %i.el, %.thread ] ; 9 uses
  %.094 = phi ptr [ null, %.loopexit ], [ %.3, %.thread ] ; 2 uses
  %i.z = load i32, ptr %i.q, align 8, !tbaa !133
  switch i32 %i.z, label %slow_search.exit [
    i32 1, label %bb.e
    i32 2, label %bb.g
    i32 3, label %bb.n
    i32 4, label %bb.r
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !146 ; 3 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !147 ; 4 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %.neg.i = add i64 %i.ae, 1
  %.neg32.i = sub i64 %.neg.i, %i.ad
  %i.af = getelementptr inbounds i8, ptr %2, i64 %.neg32.i ; 2 uses
  %i.ag = icmp ugt ptr %i.af, %4
  %spec.select.i = select i1 %i.ag, ptr %4, ptr %i.af ; 2 uses
  %i.ah = icmp ult ptr %.2, %spec.select.i
  br i1 %i.ah, label %.lr.ph.i.preheader, label %slow_search.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.028.i212 = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  %i.ai = icmp ult ptr %.028.i212, %i.ac
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.02634.i = phi ptr [ %i.at, %bb.f ], [ %.2, %.lr.ph.i.preheader ] ; 5 uses
  %i.aj = load i8, ptr %.02634.i, align 1, !tbaa !62
  %i.ak = load i8, ptr %i.ab, align 1, !tbaa !62
  %i.al = icmp eq i8 %i.aj, %i.ak
  br i1 %i.al, label %.preheader.i.preheader, label %bb.f

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  br i1 %i.ai, label %.lr.ph215, label %.preheader.i._crit_edge

.preheader.i:                                     ; preds = %.lr.ph215
  %.028.i = getelementptr inbounds nuw i8, ptr %.028.i214, i64 1 ; 3 uses
  %i.am = icmp ult ptr %.028.i, %i.ac
  br i1 %i.am, label %.lr.ph215, label %.preheader.i._crit_edge, !llvm.loop !234

.lr.ph215:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.028.i214 = phi ptr [ %.028.i, %.preheader.i ], [ %.028.i212, %.preheader.i.preheader ] ; 3 uses
  %.026.pn.i213 = phi ptr [ %.027.i, %.preheader.i ], [ %.02634.i, %.preheader.i.preheader ]
  %.027.i = getelementptr inbounds nuw i8, ptr %.026.pn.i213, i64 1 ; 2 uses
  %i.an = load i8, ptr %.028.i214, align 1, !tbaa !62
  %i.ao = load i8, ptr %.027.i, align 1, !tbaa !62
  %.not.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.i, label %.preheader.i, label %._crit_edge216, !llvm.loop !234

._crit_edge216:                                   ; preds = %.lr.ph215
  br label %.preheader.i._crit_edge, !llvm.loop !234

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %._crit_edge216, %.preheader.i.preheader
  %.028.i.lcssa = phi ptr [ %.028.i214, %._crit_edge216 ], [ %.028.i212, %.preheader.i.preheader ], [ %.028.i, %.preheader.i ]
  %i.ap = icmp eq ptr %.028.i.lcssa, %i.ac
  br i1 %i.ap, label %slow_search.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i._crit_edge, %.lr.ph.i
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !114
  %i.ar = tail call i32 %i.aq(ptr noundef nonnull %.02634.i) #30, !inline_history !235
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %.02634.i, i64 %i.as ; 2 uses
  %i.au = icmp ult ptr %i.at, %spec.select.i
  br i1 %i.au, label %.lr.ph.i, label %slow_search.exit.thread, !llvm.loop !236

bb.g:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !146 ; 3 uses
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !147 ; 2 uses
  %i.ax = load i32, ptr %i.x, align 8, !tbaa !243
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, %i.w
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = ptrtoint ptr %.2 to i64
  %i.bd = sub i64 %.pre, %i.bc
  %i.be = icmp sgt i64 %i.ba, %i.bd
  br i1 %i.be, label %slow_search.exit.thread, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds i8, ptr %4, i64 %i.ba
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi ptr [ %2, %bb.h ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.2, i64 %i.ba
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -1 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %.0.i
  br i1 %i.bi, label %.preheader.i114, label %slow_search.exit.thread

.preheader.i114:                                  ; preds = %bb.j
  %.03948.i = getelementptr inbounds i8, ptr %i.aw, i64 -1 ; 3 uses
  %i.bj = load i8, ptr %.03948.i, align 1, !tbaa !62
  %i.bk = sext i32 %i.ax to i64                   ; 2 uses
  %i.bl = ptrtoint ptr %.0.i to i64
  %i.bm = add i64 %i.az, 1
  %i.bn = sub i64 %i.bm, %i.ay
  %i.bo = icmp eq ptr %.03948.i, %i.av
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.preheader.i114
  %.040.i = phi ptr [ %i.cf, %bb.m ], [ %i.bh, %.preheader.i114 ] ; 6 uses
  %i.bp = load i8, ptr %.040.i, align 1, !tbaa !62
  %i.bq = icmp eq i8 %i.bp, %i.bj
  br i1 %i.bq, label %.lr.ph.i116.preheader, label %._crit_edge.i

.lr.ph.i116.preheader:                            ; preds = %bb.k
  br i1 %i.bo, label %.loopexit.loopexit.i, label %.lr.ph209

.lr.ph.i116:                                      ; preds = %.lr.ph209
  %i.br = icmp eq ptr %.039.i, %i.av
  br i1 %i.br, label %.loopexit.loopexit.i, label %.lr.ph209, !llvm.loop !237

.lr.ph209:                                        ; preds = %.lr.ph.i116.preheader, %.lr.ph.i116
  %.03849.i208 = phi ptr [ %i.bs, %.lr.ph.i116 ], [ %.040.i, %.lr.ph.i116.preheader ]
  %.03950.i207 = phi ptr [ %.039.i, %.lr.ph.i116 ], [ %.03948.i, %.lr.ph.i116.preheader ]
  %i.bs = getelementptr inbounds i8, ptr %.03849.i208, i64 -1 ; 2 uses
  %.039.i = getelementptr inbounds i8, ptr %.03950.i207, i64 -1 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !62
  %i.bu = load i8, ptr %.039.i, align 1, !tbaa !62
  %i.bv = icmp eq i8 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.i116, label %._crit_edge.i, !llvm.loop !237

._crit_edge.i:                                    ; preds = %.lr.ph209, %bb.k
  %i.bw = ptrtoint ptr %.040.i to i64             ; 2 uses
  %i.bx = sub i64 %.pre, %i.bw
  %.not.i115 = icmp sgt i64 %i.bx, %i.bk
  br i1 %.not.i115, label %bb.l, label %slow_search.exit.thread

bb.l:                                             ; preds = %._crit_edge.i
  %i.by = getelementptr inbounds i8, ptr %.040.i, i64 %i.bk
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !62
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !62
  %i.cd = zext i8 %i.cc to i64                    ; 2 uses
  %i.ce = sub i64 %i.bl, %i.bw
  %.not45.i = icmp sgt i64 %i.ce, %i.cd
  br i1 %.not45.i, label %bb.m, label %slow_search.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %.040.i, i64 %i.cd
  br label %bb.k

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i116.preheader, %.lr.ph.i116
  %scevgep.le.i = getelementptr i8, ptr %.040.i, i64 %i.bn
  br label %slow_search.exit

bb.n:                                             ; preds = %bb.d
  %i.cg = load ptr, ptr %i.t, align 8, !tbaa !146 ; 3 uses
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !147
  %i.ci = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -1 ; 4 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = shl i64 %i.cm, 32
  %i.co = ashr exact i64 %i.cn, 32                ; 3 uses
  %i.cp = icmp sgt i64 %i.co, %i.w
  %i.cq = sub nsw i64 0, %i.co
  %i.cr = getelementptr inbounds i8, ptr %2, i64 %i.cq
  %.0.i117 = select i1 %i.cp, ptr %i.cr, ptr %4   ; 3 uses
  %i.cs = icmp ult ptr %.2, %.0.i117
  br i1 %i.cs, label %.lr.ph50.i, label %slow_search.exit.thread

.lr.ph50.i:                                       ; preds = %bb.n
  %i.ct = load i32, ptr %i.x, align 8, !tbaa !243
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp eq ptr %i.cj, %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph50.i
  %.03948.i119 = phi ptr [ %.2, %.lr.ph50.i ], [ %i.do, %bb.q ] ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.03948.i119, i64 %i.co ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !62
  %i.cy = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cz = icmp eq i8 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph.i122.preheader, label %._crit_edge.i120

.lr.ph.i122.preheader:                            ; preds = %bb.o
  br i1 %i.cv, label %slow_search.exit, label %.lr.ph205

.lr.ph.i122:                                      ; preds = %.lr.ph205
  %i.da = icmp eq ptr %i.dc, %i.cg
  br i1 %i.da, label %slow_search.exit, label %.lr.ph205, !llvm.loop !238

.lr.ph205:                                        ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122
  %.03846.i204 = phi ptr [ %i.dc, %.lr.ph.i122 ], [ %i.cj, %.lr.ph.i122.preheader ]
  %.03747.i203 = phi ptr [ %i.db, %.lr.ph.i122 ], [ %i.cw, %.lr.ph.i122.preheader ]
  %i.db = getelementptr inbounds i8, ptr %.03747.i203, i64 -1 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.03846.i204, i64 -1 ; 3 uses
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !62
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !62
  %i.df = icmp eq i8 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph.i122, label %._crit_edge.i120, !llvm.loop !238

._crit_edge.i120:                                 ; preds = %.lr.ph205, %bb.o
  %i.dg = getelementptr inbounds i8, ptr %i.cw, i64 %i.cu ; 2 uses
  %.not.i121 = icmp ult ptr %i.dg, %2
  br i1 %.not.i121, label %bb.p, label %slow_search.exit.thread

bb.p:                                             ; preds = %._crit_edge.i120
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !62
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !62
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.03948.i119, i64 %i.dl ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %.0.i117
  br i1 %i.dn, label %bb.q, label %slow_search.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.do = tail call ptr @onigenc_get_right_adjust_char_head(ptr noundef %i.ci, ptr noundef nonnull %.03948.i119, ptr noundef nonnull %i.dm) #30 ; 2 uses
  %i.dp = icmp ult ptr %i.do, %.0.i117
  br i1 %i.dp, label %bb.o, label %slow_search.exit.thread, !llvm.loop !239

bb.r:                                             ; preds = %bb.d
  %i.dq = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.dr = icmp ult ptr %.2, %4
  br i1 %i.dr, label %.lr.ph.i124, label %slow_search.exit.thread

.lr.ph.i124:                                      ; preds = %bb.r, %bb.s
  %.011.i = phi ptr [ %i.dz, %bb.s ], [ %.2, %bb.r ] ; 4 uses
  %i.ds = load i8, ptr %.011.i, align 1, !tbaa !62
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !62
  %.not.i125 = icmp eq i8 %i.dv, 0
  br i1 %.not.i125, label %bb.s, label %slow_search.exit

bb.s:                                             ; preds = %.lr.ph.i124
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !114
  %i.dx = tail call i32 %i.dw(ptr noundef nonnull %.011.i) #30, !inline_history !240
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %.011.i, i64 %i.dy ; 2 uses
  %i.ea = icmp ult ptr %i.dz, %4
  br i1 %i.ea, label %.lr.ph.i124, label %slow_search.exit.thread, !llvm.loop !241

slow_search.exit:                                 ; preds = %.lr.ph.i124, %.lr.ph.i122.preheader, %.preheader.i._crit_edge, %.lr.ph.i122, %.loopexit.loopexit.i, %bb.d
  %.3 = phi ptr [ %.2, %bb.d ], [ %scevgep.le.i, %.loopexit.loopexit.i ], [ %.03948.i119, %.lr.ph.i122.preheader ], [ %.03948.i119, %.lr.ph.i122 ], [ %.02634.i, %.preheader.i._crit_edge ], [ %.011.i, %.lr.ph.i124 ] ; 14 uses
  %.not108 = icmp ne ptr %.3, null
  %i.eb = icmp ult ptr %.3, %4
  %or.cond = and i1 %.not108, %i.eb
  br i1 %or.cond, label %bb.t, label %slow_search.exit.thread

bb.t:                                             ; preds = %slow_search.exit
  %i.ec = ptrtoint ptr %.3 to i64                 ; 3 uses
  %i.ed = sub i64 %i.ec, %.pre154
  %i.ee = load i32, ptr %i.a, align 4, !tbaa !141
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp slt i64 %i.ed, %i.ef
  br i1 %i.eg, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.y, %bb.w, %bb.t
  %i.eh = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !114
  %i.ej = tail call i32 %i.ei(ptr noundef nonnull %.3) #30
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %.3, i64 %i.ek
  br label %bb.d

bb.u:                                             ; preds = %bb.t
  %i.em = load i32, ptr %i.y, align 4, !tbaa !148
  switch i32 %i.em, label %bb.z [
    i32 512, label %bb.x
    i32 32, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.en = icmp eq ptr %.3, %1
  br i1 %i.en, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = load ptr, ptr %i.r, align 8, !tbaa !97
  %.not111 = icmp eq ptr %.094, null
  %i.ep = select i1 %.not111, ptr %1, ptr %.094
  %i.eq = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.eo, ptr noundef %i.ep, ptr noundef nonnull %.3) #30
  %i.er = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !83
  %i.eu = tail call i32 %i.et(ptr noundef %i.eq, ptr noundef %2) #30
  %.not112 = icmp eq i32 %i.eu, 0
  br i1 %.not112, label %.thread, label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.ev = icmp eq ptr %.3, %2
  br i1 %i.ev, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !83
  %i.ez = tail call i32 %i.ey(ptr noundef nonnull %.3, ptr noundef %2) #30
  %.not110 = icmp eq i32 %i.ez, 0
  br i1 %.not110, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.x, %bb.y, %bb.v, %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !134 ; 2 uses
  switch i32 %i.fb, label %bb.ab [
    i32 0, label %bb.aa
    i32 -1, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.z
  %.pre156 = ptrtoint ptr %1 to i64
  %.pre158 = sub i64 %i.ec, %.pre156
  br label %bb.af

bb.aa:                                            ; preds = %bb.z
  store ptr %.3, ptr %5, align 8, !tbaa !103
  br label %slow_search.exit.thread.sink.split

bb.ab:                                            ; preds = %bb.z
  %i.fc = ptrtoint ptr %1 to i64
  %i.fd = sub i64 %i.ec, %i.fc                    ; 4 uses
  %i.fe = zext i32 %i.fb to i64                   ; 2 uses
  %i.ff = icmp slt i64 %i.fd, %i.fe
  br i1 %i.ff, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %1, ptr %5, align 8, !tbaa !103
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.fg = sub nsw i64 0, %i.fe
  %i.fh = getelementptr inbounds i8, ptr %.3, i64 %i.fg ; 3 uses
  store ptr %i.fh, ptr %5, align 8, !tbaa !103
  %i.fi = icmp ugt ptr %i.fh, %3
  br i1 %i.fi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fj = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.fk = tail call ptr @onigenc_get_right_adjust_char_head(ptr noundef %i.fj, ptr noundef %3, ptr noundef nonnull %i.fh) #30
  store ptr %i.fk, ptr %5, align 8, !tbaa !103
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge, %bb.ac, %bb.ae, %bb.ad
  %.pre-phi159 = phi i64 [ %.pre158, %._crit_edge ], [ %i.fd, %bb.ac ], [ %i.fd, %bb.ae ], [ %i.fd, %bb.ad ]
  %i.fl = load i32, ptr %i.a, align 4, !tbaa !141
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = icmp slt i64 %.pre-phi159, %i.fm
  br i1 %i.fn, label %slow_search.exit.thread.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = sub nsw i64 0, %i.fm
  %i.fp = getelementptr inbounds i8, ptr %.3, i64 %i.fo
  br label %slow_search.exit.thread.sink.split

slow_search.exit.thread.sink.split:               ; preds = %bb.af, %bb.ag, %bb.aa
  %.3.lcssa.sink = phi ptr [ %.3, %bb.aa ], [ %i.fp, %bb.ag ], [ %1, %bb.af ]
  store ptr %.3.lcssa.sink, ptr %6, align 8, !tbaa !103
  br label %slow_search.exit.thread

slow_search.exit.thread:                          ; preds = %bb.r, %bb.n, %bb.h, %bb.j, %bb.e, %slow_search.exit, %bb.s, %._crit_edge.i120, %bb.q, %bb.p, %._crit_edge.i, %bb.l, %bb.f, %slow_search.exit.thread.sink.split, %bb.b
  %.096 = phi i32 [ 0, %bb.s ], [ 0, %bb.b ], [ 1, %slow_search.exit.thread.sink.split ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i120 ], [ 0, %bb.f ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %slow_search.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.n ], [ 0, %bb.r ]
  ret i32 %.096
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @backward_search(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(address) %4, ptr noundef %5, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.061 = phi ptr [ %3, %bb.a ], [ %.061.be, %.backedge ] ; 6 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !133
  switch i32 %i.g, label %slow_search_backward.exit [
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !146  ; 3 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !147  ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %.neg.i = sub i64 %i.l, %i.k
  %i.m = getelementptr inbounds i8, ptr %2, i64 %.neg.i ; 2 uses
  %i.n = icmp ugt ptr %i.m, %.061
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !140
  %i.q = tail call ptr %i.p(ptr noundef %5, ptr noundef %i.m) #30, !inline_history !244
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.q, %bb.d ], [ %.061, %bb.c ] ; 3 uses
  %i.r = icmp ne ptr %.0.i, null
  %i.s = icmp uge ptr %.0.i, %4
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i.preheader, label %slow_search_backward.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.e
  %.030.i120 = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %i.u = icmp ult ptr %.030.i120, %i.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.134.i = phi ptr [ %i.ac, %bb.f ], [ %.0.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.v = load i8, ptr %.134.i, align 1, !tbaa !62
  %i.w = load i8, ptr %i.i, align 1, !tbaa !62
  %i.x = icmp eq i8 %i.v, %i.w
  br i1 %i.x, label %.preheader.i.preheader, label %bb.f

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  br i1 %i.u, label %.lr.ph, label %.preheader.i._crit_edge

.preheader.i:                                     ; preds = %.lr.ph
  %.030.i = getelementptr inbounds nuw i8, ptr %.030.i122, i64 1 ; 3 uses
  %i.y = icmp ult ptr %.030.i, %i.j
  br i1 %i.y, label %.lr.ph, label %.preheader.i._crit_edge, !llvm.loop !245

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.030.i122 = phi ptr [ %.030.i, %.preheader.i ], [ %.030.i120, %.preheader.i.preheader ] ; 3 uses
  %.1.pn.i121 = phi ptr [ %.029.i, %.preheader.i ], [ %.134.i, %.preheader.i.preheader ]
  %.029.i = getelementptr inbounds nuw i8, ptr %.1.pn.i121, i64 1 ; 2 uses
  %i.z = load i8, ptr %.030.i122, align 1, !tbaa !62
  %i.aa = load i8, ptr %.029.i, align 1, !tbaa !62
  %.not.i = icmp eq i8 %i.z, %i.aa
  br i1 %.not.i, label %.preheader.i, label %._crit_edge, !llvm.loop !245

._crit_edge:                                      ; preds = %.lr.ph
  br label %.preheader.i._crit_edge, !llvm.loop !245

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %._crit_edge, %.preheader.i.preheader
  %.030.i.lcssa = phi ptr [ %.030.i122, %._crit_edge ], [ %.030.i120, %.preheader.i.preheader ], [ %.030.i, %.preheader.i ]
  %i.ab = icmp eq ptr %.030.i.lcssa, %i.j
  br i1 %i.ab, label %slow_search_backward.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i._crit_edge, %.lr.ph.i
  %i.ac = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.h, ptr noundef %5, ptr noundef nonnull %.134.i) #30 ; 3 uses
  %i.ad = icmp ne ptr %i.ac, null
  %i.ae = icmp uge ptr %i.ac, %4
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %slow_search_backward.exit.thread, !llvm.loop !246

bb.g:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.ah = icmp ne ptr %.061, null
  %i.ai = icmp uge ptr %.061, %4
  %i.aj = and i1 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i80, label %slow_search_backward.exit.thread

.lr.ph.i80:                                       ; preds = %bb.g, %bb.h
  %.012.i = phi ptr [ %i.ao, %bb.h ], [ %.061, %bb.g ] ; 3 uses
  %i.ak = load i8, ptr %.012.i, align 1, !tbaa !62
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62
  %.not.i81 = icmp eq i8 %i.an, 0
  br i1 %.not.i81, label %bb.h, label %slow_search_backward.exit.thread84

bb.h:                                             ; preds = %.lr.ph.i80
  %i.ao = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.ag, ptr noundef %5, ptr noundef nonnull %.012.i) #30 ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null
  %i.aq = icmp uge ptr %i.ao, %4
  %i.ar = and i1 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i80, label %slow_search_backward.exit.thread, !llvm.loop !247

slow_search_backward.exit:                        ; preds = %.preheader.i._crit_edge, %bb.b
  %.1 = phi ptr [ %.061, %bb.b ], [ %.134.i, %.preheader.i._crit_edge ] ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %slow_search_backward.exit.thread, label %slow_search_backward.exit.thread84

slow_search_backward.exit.thread84:               ; preds = %.lr.ph.i80, %slow_search_backward.exit
  %.187 = phi ptr [ %.1, %slow_search_backward.exit ], [ %.012.i, %.lr.ph.i80 ] ; 9 uses
  %i.as = load i32, ptr %i.f, align 4, !tbaa !148
  switch i32 %i.as, label %.thread [
    i32 512, label %bb.l
    i32 32, label %bb.i
  ]

bb.i:                                             ; preds = %slow_search_backward.exit.thread84
  %i.at = icmp eq ptr %.187, %1
  br i1 %i.at, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.av = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.au, ptr noundef %1, ptr noundef nonnull %.187) #30 ; 3 uses
  %.not75 = icmp eq ptr %i.av, null
  br i1 %.not75, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.az = tail call i32 %i.ay(ptr noundef nonnull %i.av, ptr noundef %2) #30
  %.not76 = icmp eq i32 %i.az, 0
  br i1 %.not76, label %.backedge, label %.thread

bb.l:                                             ; preds = %slow_search_backward.exit.thread84
  %i.ba = icmp eq ptr %.187, %2
  br i1 %i.ba, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.be = tail call i32 %i.bd(ptr noundef nonnull %.187, ptr noundef %2) #30
  %.not74 = icmp eq i32 %i.be, 0
  br i1 %.not74, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.bg = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.bf, ptr noundef %5, ptr noundef nonnull %.187) #30 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %slow_search_backward.exit.thread, label %.backedge

.backedge:                                        ; preds = %bb.n, %bb.k
  %.061.be = phi ptr [ %i.bg, %bb.n ], [ %i.av, %bb.k ]
  br label %bb.b

.thread:                                          ; preds = %slow_search_backward.exit.thread84, %bb.l, %bb.m, %bb.i, %bb.k, %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !134 ; 2 uses
  %.not77 = icmp eq i32 %i.bj, -1
  br i1 %.not77, label %slow_search_backward.exit.thread, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bk = ptrtoint ptr %.187 to i64
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = zext i32 %i.bj to i64                   ; 2 uses
  %i.bo = icmp slt i64 %i.bm, %i.bn
  %i.bp = sub nsw i64 0, %i.bn
  %i.bq = getelementptr inbounds i8, ptr %.187, i64 %i.bp
  %storemerge = select i1 %i.bo, ptr %1, ptr %i.bq
  store ptr %storemerge, ptr %6, align 8, !tbaa !103
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !141 ; 2 uses
  %.not78 = icmp eq i32 %i.bs, 0
  br i1 %.not78, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp slt i64 %i.bm, %i.bt
  br i1 %i.bu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = sub nsw i64 0, %i.bt
  %i.bw = getelementptr inbounds i8, ptr %.187, i64 %i.bv
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.sink = phi ptr [ %1, %bb.p ], [ %i.bw, %bb.q ], [ %.187, %bb.o ] ; 2 uses
  store ptr %.sink, ptr %7, align 8, !tbaa !103
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.by = tail call ptr @onigenc_get_right_adjust_char_head(ptr noundef %i.bx, ptr noundef %5, ptr noundef %.sink) #30
  store ptr %i.by, ptr %7, align 8, !tbaa !103
  br label %slow_search_backward.exit.thread

slow_search_backward.exit.thread:                 ; preds = %bb.n, %bb.g, %bb.e, %slow_search_backward.exit, %bb.h, %bb.f, %.thread, %bb.r
  %.062 = phi i32 [ 1, %.thread ], [ 1, %bb.r ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %slow_search_backward.exit ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.n ]
  ret i32 %.062
}

declare ptr @onig_get_callout_tag_start(ptr noundef, i32 noundef) local_unnamed_addr #16

declare ptr @onig_get_callout_tag_end(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = distinct !{!4, !36}
!5 = distinct !{!5, !36}
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !14, i64 0}
!19 = !{!"any pointer", !14, i64 0}
!20 = !{!"OnigMatchParamStruct", !15, i64 0, !18, i64 8, !18, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !15, i64 48, !19, i64 56, !15, i64 64}
!21 = !{!20, !15, i64 0}
!22 = !{!20, !18, i64 8}
!23 = !{!20, !18, i64 16}
!24 = !{!20, !19, i64 32}
!25 = !{!20, !19, i64 40}
!26 = !{!20, !19, i64 24}
!27 = !{!"p1 int", !19, i64 0}
!28 = !{!"p1 _ZTS25OnigCaptureTreeNodeStruct", !19, i64 0}
!29 = !{!"re_registers", !15, i64 0, !15, i64 4, !27, i64 8, !27, i64 16, !28, i64 24}
!30 = !{!29, !28, i64 24}
!31 = !{!19, !19, i64 0}
!32 = !{!29, !15, i64 4}
!33 = !{!29, !27, i64 16}
!34 = !{!29, !27, i64 8}
!35 = !{!15, !15, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!29, !15, i64 0}
!38 = !{!"any p2 pointer", !19, i64 0}
!39 = !{!"p2 _ZTS25OnigCaptureTreeNodeStruct", !38, i64 0}
!40 = !{!"OnigCaptureTreeNodeStruct", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !39, i64 24}
!41 = !{!40, !39, i64 24}
!42 = !{!40, !15, i64 12}
!43 = !{!40, !15, i64 16}
!44 = !{!40, !15, i64 0}
!45 = !{!28, !28, i64 0}
!46 = !{!18, !18, i64 0}
!47 = !{!20, !15, i64 48}
!48 = !{!20, !19, i64 56}
!49 = !{!20, !15, i64 64}
!50 = !{!"p1 _ZTS17re_pattern_buffer", !19, i64 0}
!51 = !{!"p1 omnipotent char", !19, i64 0}
!52 = !{!"p1 _ZTS10_StackType", !19, i64 0}
!53 = !{!"OnigCalloutArgsStruct", !15, i64 0, !15, i64 4, !15, i64 8, !50, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !18, i64 64, !19, i64 72, !52, i64 80, !52, i64 88, !19, i64 96, !19, i64 104}
!54 = !{!53, !19, i64 72}
!55 = !{!"p1 _ZTS12re_registers", !19, i64 0}
!56 = !{!"p1 _ZTS20OnigMatchParamStruct", !19, i64 0}
!57 = !{!"", !19, i64 0, !15, i64 8, !15, i64 12, !55, i64 16, !15, i64 24, !51, i64 32, !15, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !56, i64 72, !15, i64 80, !51, i64 88, !18, i64 96, !51, i64 104}
!58 = !{!57, !56, i64 72}
!59 = !{!53, !15, i64 8}
!60 = !{!"", !15, i64 0, !14, i64 8}
!61 = !{!60, !15, i64 0}
!62 = !{!14, !14, i64 0}
!63 = !{i64 0, i64 16, !62}
!64 = !{!"p1 _ZTS18OnigEncodingTypeST", !19, i64 0}
!65 = !{!"OnigRegSetStruct", !19, i64 0, !15, i64 8, !15, i64 12, !64, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40}
!66 = !{!65, !15, i64 8}
!67 = !{!65, !64, i64 16}
!68 = !{!65, !19, i64 0}
!69 = !{!"", !50, i64 0, !55, i64 8}
!70 = !{!69, !50, i64 0}
!71 = !{!69, !55, i64 8}
!72 = !{!56, !56, i64 0}
!73 = !{!"re_pattern_buffer", !19, i64 0, !19, i64 8, !19, i64 16, !15, i64 24, !15, i64 28, !51, i64 32, !51, i64 40, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !19, i64 88, !64, i64 96, !15, i64 104, !19, i64 112, !15, i64 120, !19, i64 128, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !51, i64 160, !51, i64 168, !14, i64 176, !15, i64 432, !15, i64 436, !15, i64 440, !19, i64 448}
!74 = !{!73, !19, i64 448}
!75 = !{!"", !51, i64 0, !51, i64 8, !19, i64 16, !15, i64 24, !15, i64 28, !19, i64 32}
!76 = !{!75, !15, i64 24}
!77 = !{!73, !15, i64 48}
!78 = !{!"OnigEncodingTypeST", !19, i64 0, !51, i64 8, !15, i64 16, !15, i64 20, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !15, i64 144, !15, i64 148, !15, i64 152}
!79 = !{!78, !19, i64 136}
!80 = !{!65, !15, i64 24}
!81 = !{!65, !15, i64 28}
!82 = !{!65, !15, i64 32}
!83 = !{!78, !19, i64 24}
!84 = !{!57, !19, i64 0}
!85 = !{!73, !15, i64 104}
!86 = !{!57, !15, i64 12}
!87 = !{!57, !55, i64 16}
!88 = !{!57, !51, i64 32}
!89 = !{!57, !15, i64 40}
!90 = !{!57, !18, i64 64}
!91 = !{!57, !18, i64 96}
!92 = !{!57, !15, i64 80}
!93 = !{!57, !15, i64 24}
!94 = !{!57, !51, i64 104}
!95 = !{!73, !15, i64 140}
!96 = !{!73, !19, i64 0}
!97 = !{!73, !64, i64 96}
!98 = !{!73, !15, i64 120}
!99 = !{!73, !15, i64 24}
!100 = !{!73, !19, i64 8}
!101 = !{!"", !19, i64 0, !14, i64 8}
!102 = !{!101, !19, i64 0}
!103 = !{!51, !51, i64 0}
!104 = !{!52, !52, i64 0}
!105 = !{!57, !15, i64 8}
!106 = !{!"_StackType", !15, i64 0, !15, i64 4, !14, i64 8}
!107 = !{!106, !15, i64 0}
!108 = !{!57, !51, i64 88}
!109 = !{!73, !15, i64 68}
!110 = !{!73, !15, i64 72}
!111 = !{!73, !15, i64 64}
!112 = !{!40, !15, i64 4}
!113 = !{!40, !15, i64 8}
!114 = !{!78, !19, i64 0}
!115 = !{!78, !19, i64 32}
!116 = !{!106, !15, i64 4}
!117 = !{!78, !19, i64 56}
!118 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !51, i64 16, !51, i64 24, !15, i64 32, !19, i64 40, !19, i64 48, !14, i64 56}
!119 = !{!53, !15, i64 0}
!120 = !{!53, !15, i64 4}
!121 = !{!53, !50, i64 16}
!122 = !{!53, !51, i64 24}
!123 = !{!53, !51, i64 32}
!124 = !{!53, !51, i64 40}
!125 = !{!53, !51, i64 48}
!126 = !{!53, !51, i64 56}
!127 = !{!53, !18, i64 64}
!128 = !{!53, !52, i64 80}
!129 = !{!53, !52, i64 88}
!130 = !{!53, !19, i64 96}
!131 = !{!53, !19, i64 104}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!73, !15, i64 136}
!134 = !{!73, !15, i64 440}
!135 = !{!65, !15, i64 36}
!136 = !{!73, !15, i64 144}
!137 = !{!65, !15, i64 40}
!138 = !{!73, !15, i64 148}
!139 = !{!73, !15, i64 152}
!140 = !{!78, !19, i64 104}
!141 = !{!73, !15, i64 436}
!142 = !{!65, !15, i64 12}
!143 = !{!118, !15, i64 4}
!144 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!145 = !{!144, !144, i64 0}
!146 = !{!73, !51, i64 160}
!147 = !{!73, !51, i64 168}
!148 = !{!73, !15, i64 156}
!149 = distinct !{!149, !36}
!150 = distinct !{!150, !36}
!151 = distinct !{!151, !36}
!152 = distinct !{!152, !36}
!153 = distinct !{!153, !36}
!154 = distinct !{!154, !36}
!155 = distinct !{!155, !36}
!156 = distinct !{!156, !36}
!157 = distinct !{!157, !36}
!158 = distinct !{!158, !36}
!159 = distinct !{!159, !36}
!160 = distinct !{!160, !36}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = distinct !{!164, !36}
!165 = distinct !{!165, !36}
!166 = distinct !{!166, !36}
!167 = distinct !{!167, !36}
!168 = distinct !{!168, !36}
!169 = distinct !{!169, !36}
!170 = distinct !{!170, !36}
!171 = distinct !{!171, !36}
!172 = distinct !{!172, !36}
!173 = distinct !{!173, !36}
!174 = distinct !{!174, !36}
!175 = distinct !{!175, !36}
!176 = distinct !{!176, !36}
!177 = distinct !{!177, !36}
!178 = distinct !{!178, !36}
!179 = distinct !{!179, !36}
!180 = distinct !{!180, !36}
!181 = distinct !{!181, !36}
!182 = distinct !{!182, !132}
!183 = !{!57, !18, i64 48}
!184 = !{!57, !18, i64 56}
!185 = !{!73, !15, i64 76}
!186 = !{!78, !19, i64 88}
!187 = !{ptr @string_cmp_ic}
!188 = !{!73, !19, i64 88}
!189 = !{!"", !15, i64 0, !15, i64 4, !14, i64 8}
!190 = !{!189, !15, i64 0}
!191 = !{!189, !15, i64 4}
!192 = !{!118, !15, i64 8}
!193 = distinct !{!193, !36}
!194 = distinct !{!194, !36}
!195 = distinct !{!195, !36}
!196 = distinct !{!196, !36}
!197 = !{!"", !15, i64 0, !51, i64 8, !51, i64 16, !51, i64 24}
!198 = !{!197, !15, i64 0}
!199 = !{!197, !51, i64 8}
!200 = !{!197, !51, i64 16}
!201 = !{!197, !51, i64 24}
!202 = distinct !{!202, !36}
!203 = distinct !{!203, !36}
!204 = distinct !{!204, !36}
!205 = distinct !{!205, !36}
!206 = distinct !{!206, !36}
!207 = distinct !{!207, !36}
!208 = distinct !{!208, !36}
!209 = distinct !{!209, !36}
!210 = distinct !{!210, !36}
!211 = distinct !{!211, !36}
!212 = !{!73, !19, i64 112}
!213 = !{i64 0, i64 8, !31, i64 8, i64 8, !103, i64 16, i64 4, !35, i64 20, i64 4, !35, i64 24, i64 8, !31, i64 32, i64 8, !31, i64 40, i64 8, !31, i64 48, i64 8, !31, i64 56, i64 8, !31, i64 64, i64 8, !31, i64 72, i64 8, !31, i64 80, i64 8, !31, i64 88, i64 8, !31, i64 96, i64 8, !31, i64 104, i64 8, !31, i64 112, i64 8, !31, i64 120, i64 8, !31, i64 128, i64 8, !31, i64 136, i64 8, !31, i64 144, i64 4, !35, i64 148, i64 4, !35, i64 152, i64 4, !35}
!214 = distinct !{!214, !36}
!215 = distinct !{!215, !36}
!216 = !{!"p1 _ZTS16OnigRegSetStruct", !19, i64 0}
!217 = !{!216, !216, i64 0}
!218 = !{!50, !50, i64 0}
!219 = distinct !{!219, !132}
!220 = distinct !{!220, !36}
!221 = distinct !{!221, !36}
!222 = distinct !{!222, !36}
!223 = distinct !{!223, !132}
!224 = distinct !{!224, !36, !227, !228}
!225 = distinct !{!225, !36, !228, !227}
!226 = !{!"branch_weights", i32 4, i32 12}
!227 = !{!"llvm.loop.isvectorized", i32 1}
!228 = !{!"llvm.loop.unroll.runtime.disable"}
!229 = !{ptr @history_tree_clear}
!230 = distinct !{!230, !36}
!231 = distinct !{!231, !36}
!232 = distinct !{!232, !36}
!233 = distinct !{!233, !36}
!234 = distinct !{!234, !36}
!235 = distinct !{null}
!236 = distinct !{!236, !36}
!237 = distinct !{!237, !36}
!238 = distinct !{!238, !36}
!239 = distinct !{!239, !36}
!240 = distinct !{null}
!241 = distinct !{!241, !36}
!242 = !{!78, !15, i64 16}
!243 = !{!73, !15, i64 432}
!244 = distinct !{null}
!245 = distinct !{!245, !36}
!246 = distinct !{!246, !36}
!247 = distinct !{!247, !36}
end_hunk_0
