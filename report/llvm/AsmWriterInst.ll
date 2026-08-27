Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsmWriterInst?download=true
inline.NumInlined: 538
inline.NumDeleted: 214
begin_hunk_0_@_ZN4llvm13AsmWriterInstC2ERKNS_18CodeGenInstructionEjj:.split
  %.not112 = icmp eq i64 %i.da, -1
  %i.db = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ax
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %._crit_edge.i.i142
  %i.dd = load i64, ptr %i.ax, align 8, !tbaa !26
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %._crit_edge.i.i142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br i1 %.not112, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.df = load ptr, ptr %4, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.co
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !26
  store ptr %i.az, ptr %13, align 8, !tbaa !22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 1, i8 noundef signext %i.dh) #15
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.di = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.az
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.g
  %i.dk = load i64, ptr %i.az, align 8, !tbaa !26
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.dm = load ptr, ptr %1, align 8, !tbaa !84    ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !103
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !105
  %i.dr = zext i32 %i.dq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !106 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dt, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !39
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 3, ptr %i.du, align 8, !tbaa !142, !alias.scope !145
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 5, ptr %i.dv, align 1, !tbaa !148, !alias.scope !145
  store ptr @.str.17, ptr %15, align 8, !tbaa !26, !alias.scope !145
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.dw, align 8, !tbaa !26, !alias.scope !145
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.dx, align 8, !tbaa !26, !alias.scope !145
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.dz, align 1, !tbaa !148
  store ptr @.str.18, ptr %16, align 8, !tbaa !26
  store i8 3, ptr %i.dy, align 8, !tbaa !142
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %14, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr noundef nonnull align 8 dereferenceable(34) %16)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.do, i64 %i.dr, ptr noundef nonnull align 8 dereferenceable(34) %14) #16
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.ea = add i64 %.0244, 2
  br label %.loopexit, !llvm.loop !149

bb.j:                                             ; preds = %bb.d
  br i1 %.not111, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !26
  %i.ed = icmp eq i8 %i.ec, 36
  br i1 %i.ed, label %._crit_edge.i.i150, label %bb.l

._crit_edge.i.i150:                               ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  store ptr %i.v, ptr %17, align 8, !tbaa !22
  store i8 36, ptr %i.v, align 8, !tbaa !26
  store i64 1, ptr %i.w, align 8, !tbaa !17
  store i8 0, ptr %i.be, align 1, !tbaa !26
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %17)
  %i.ee = load ptr, ptr %17, align 8, !tbaa !21   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.v
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %._crit_edge.i.i150
  %i.eg = load i64, ptr %i.v, align 8, !tbaa !26
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %._crit_edge.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.ei = add i64 %.0244, 2
  br label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ej = icmp ult i64 %i.co, %i.bk
  br i1 %i.ej, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !26
  %i.em = icmp eq i8 %i.el, 123
  br i1 %i.em, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.en = add i64 %.0244, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.099 = phi i1 [ true, %bb.n ], [ false, %bb.m ], [ false, %bb.l ] ; 2 uses
  %.095 = phi i64 [ %i.en, %bb.n ], [ %i.co, %bb.m ], [ %i.co, %bb.l ] ; 3 uses
  %.194 = phi i64 [ %i.co, %bb.n ], [ %.0244, %bb.m ], [ %.0244, %bb.l ] ; 2 uses
  %i.eo = icmp ult i64 %.095, %i.bk
  br i1 %i.eo, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.196241 = phi i64 [ %i.ez, %bb.p ], [ %.095, %bb.o ] ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.196241
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !26  ; 3 uses
  %i.er = and i8 %i.eq, -33
  %i.es = add i8 %i.er, -65
  %i.et = icmp ult i8 %i.es, 26
  %i.eu = add i8 %i.eq, -48
  %i.ev = icmp ult i8 %i.eu, 10
  %i.ew = or i1 %i.ev, %i.et
  %i.ex = icmp eq i8 %i.eq, 95
  %i.ey = or i1 %i.ex, %i.ew
  br i1 %i.ey, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph
  %i.ez = add i64 %.196241, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ez, %i.bk
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !150

.critedge:                                        ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store ptr %i.x, ptr %18, align 8, !tbaa !22
  store i64 0, ptr %i.y, align 8, !tbaa !17
  store i8 0, ptr %i.x, align 8, !tbaa !26
  br i1 %.099, label %bb.r, label %bb.ah

.critedge.thread:                                 ; preds = %bb.p, %bb.o
  %.196.lcssa = phi i64 [ %.095, %bb.o ], [ %i.bk, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store ptr %i.x, ptr %18, align 8, !tbaa !22
  store i64 0, ptr %i.y, align 8, !tbaa !17
  store i8 0, ptr %i.x, align 8, !tbaa !26
  br i1 %.099, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %.critedge.thread
  %i.fa = load ptr, ptr %1, align 8, !tbaa !84    ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !103
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !105
  %i.ff = zext i32 %i.fe to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !106 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %.sroa.0.0.copyload.i.i.i157 = load ptr, ptr %i.fh, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i158 = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %.sroa.2.0.copyload.i.i.i159 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i158, align 8, !tbaa !39
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 3, ptr %i.fi, align 8, !tbaa !142, !alias.scope !151
  %i.fj = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 5, ptr %i.fj, align 1, !tbaa !148, !alias.scope !151
  store ptr @.str.20, ptr %20, align 8, !tbaa !26, !alias.scope !151
  %i.fk = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i157, ptr %i.fk, align 8, !tbaa !26, !alias.scope !151
  %i.fl = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i159, ptr %i.fl, align 8, !tbaa !26, !alias.scope !151
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.fm = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.fn, align 1, !tbaa !148
  store ptr @.str.21, ptr %21, align 8, !tbaa !26
  store i8 3, ptr %i.fm, align 8, !tbaa !142
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %19, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr noundef nonnull align 8 dereferenceable(34) %21)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.fc, i64 %i.ff, ptr noundef nonnull align 8 dereferenceable(34) %19) #16
  unreachable

bb.r:                                             ; preds = %.critedge
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.196241
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !26  ; 2 uses
  %i.fq = icmp ne i8 %i.fp, 58                    ; 2 uses
  br i1 %i.fq, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fr = add nuw i64 %.196241, 1                 ; 4 uses
  %.not109 = icmp ult i64 %i.fr, %i.bk
  br i1 %.not109, label %.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = load ptr, ptr %1, align 8, !tbaa !84    ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !103
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !105
  %i.fx = zext i32 %i.fw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !106 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %.sroa.0.0.copyload.i.i.i164 = load ptr, ptr %i.fz, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %.sroa.2.0.copyload.i.i.i166 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i165, align 8, !tbaa !39
  %i.ga = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i8 3, ptr %i.ga, align 8, !tbaa !142, !alias.scope !154
  %i.gb = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 5, ptr %i.gb, align 1, !tbaa !148, !alias.scope !154
  store ptr @.str.20, ptr %23, align 8, !tbaa !26, !alias.scope !154
  %i.gc = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i164, ptr %i.gc, align 8, !tbaa !26, !alias.scope !154
  %i.gd = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i166, ptr %i.gd, align 8, !tbaa !26, !alias.scope !154
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.ge = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 1, ptr %i.gf, align 1, !tbaa !148
  store ptr @.str.21, ptr %24, align 8, !tbaa !26
  store i8 3, ptr %i.ge, align 8, !tbaa !142
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %22, ptr noundef nonnull align 8 dereferenceable(34) %23, ptr noundef nonnull align 8 dereferenceable(34) %24)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.fu, i64 %i.fx, ptr noundef nonnull align 8 dereferenceable(34) %22) #16
  unreachable

.preheader:                                       ; preds = %bb.s, %bb.u
  %.297242 = phi i64 [ %i.gq, %bb.u ], [ %i.fr, %bb.s ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.297242
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !26  ; 3 uses
  %i.gi = and i8 %i.gh, -33
  %i.gj = add i8 %i.gi, -65
  %i.gk = icmp ult i8 %i.gj, 26
  %i.gl = add i8 %i.gh, -48
  %i.gm = icmp ult i8 %i.gl, 10
  %i.gn = or i1 %i.gm, %i.gk
  %i.go = icmp eq i8 %i.gh, 95
  %i.gp = or i1 %i.go, %i.gn
  br i1 %i.gp, label %bb.u, label %.critedge2

bb.u:                                             ; preds = %.preheader
  %i.gq = add i64 %.297242, 1                     ; 2 uses
  %exitcond249.not = icmp eq i64 %i.gq, %i.bk
  br i1 %exitcond249.not, label %.critedge2, label %.preheader, !llvm.loop !157

.critedge2:                                       ; preds = %bb.u, %.preheader
  %.297.lcssa = phi i64 [ %i.bk, %bb.u ], [ %.297242, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  store ptr %i.z, ptr %25, align 8, !tbaa !22, !alias.scope !158
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.fr ; 2 uses
  %37 = call i64 @llvm.umin.i64(i64 %.297.lcssa, i64 %i.bk)
  %spec.select.i.i.i = sub nuw i64 %37, %i.fr     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !158
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !39, !noalias !158
  %i.gs = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.gs, label %bb.v, label %._crit_edge.i.i.i

bb.v:                                             ; preds = %.critedge2
  %i.gt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #15 ; 2 uses
  store ptr %i.gt, ptr %25, align 8, !tbaa !21, !alias.scope !158
  %i.gu = load i64, ptr %i.b, align 8, !tbaa !39, !noalias !158
  store i64 %i.gu, ptr %i.z, align 8, !tbaa !26, !alias.scope !158
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.v, %.critedge2
  %i.gv = phi ptr [ %i.gt, %bb.v ], [ %i.z, %.critedge2 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.gw = load i8, ptr %i.gr, align 1, !tbaa !26
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.x:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr nonnull align 1 %i.gr, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.w, %bb.x
  %i.gx = load i64, ptr %i.b, align 8, !tbaa !39, !noalias !158 ; 2 uses
  store i64 %i.gx, ptr %i.aa, align 8, !tbaa !17, !alias.scope !158
  %i.gy = load ptr, ptr %25, align 8, !tbaa !21, !alias.scope !158
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gx
  store i8 0, ptr %i.gz, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !158
  %i.ha = load ptr, ptr %18, align 8, !tbaa !21   ; 6 uses
  %i.hb = icmp eq ptr %i.ha, %i.x
  %i.hc = load ptr, ptr %25, align 8, !tbaa !21   ; 5 uses
  %i.hd = icmp eq ptr %i.hc, %i.z                 ; 2 uses
  br i1 %i.hb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.hd, label %bb.y, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.hd, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.he = load i64, ptr %i.aa, align 8, !tbaa !17 ; 3 uses
  %i.hf = icmp ult i64 %i.he, 16
  call void @llvm.assume(i1 %i.hf)
  switch i64 %i.he, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.hg = load i8, ptr %i.hc, align 1, !tbaa !26
  store i8 %i.hg, ptr %i.ha, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ha, ptr align 1 %i.hc, i64 %i.he, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.hh = load i64, ptr %i.aa, align 8, !tbaa !17 ; 2 uses
  store i64 %i.hh, ptr %i.y, align 8, !tbaa !17
  %i.hi = load ptr, ptr %18, align 8, !tbaa !21
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hh
  store i8 0, ptr %i.hj, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %25, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.hc, ptr %18, align 8, !tbaa !21
  %i.hk = load <2 x i64>, ptr %i.aa, align 8, !tbaa !26
  store <2 x i64> %i.hk, ptr %i.y, align 8, !tbaa !26
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hl = load i64, ptr %i.x, align 8, !tbaa !26
  store ptr %i.hc, ptr %18, align 8, !tbaa !21
  %i.hm = load <2 x i64>, ptr %i.aa, align 8, !tbaa !26
  store <2 x i64> %i.hm, ptr %i.y, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.ha, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ha, ptr %25, align 8, !tbaa !21
  store i64 %i.hl, ptr %i.z, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.z, ptr %25, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ab, %bb.ac
  %i.hn = phi ptr [ %i.ha, %bb.ab ], [ %i.z, %bb.ac ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.aa, align 8, !tbaa !17
  store i8 0, ptr %i.hn, align 1, !tbaa !26
  %i.ho = load ptr, ptr %25, align 8, !tbaa !21   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.z
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hq = load i64, ptr %i.z, align 8, !tbaa !26
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.hs = load i64, ptr %i.y, align 8, !tbaa !17
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %.pre = load ptr, ptr %4, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %.297.lcssa
  %.pre250 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !26
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.hu = load ptr, ptr %1, align 8, !tbaa !84    ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !103
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !105
  %i.hz = zext i32 %i.hy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !106 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %.sroa.0.0.copyload.i.i.i174 = load ptr, ptr %i.ib, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i175 = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %.sroa.2.0.copyload.i.i.i176 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i175, align 8, !tbaa !39
  %i.ic = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i8 3, ptr %i.ic, align 8, !tbaa !142, !alias.scope !161
  %i.id = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 5, ptr %i.id, align 1, !tbaa !148, !alias.scope !161
  store ptr @.str.22, ptr %27, align 8, !tbaa !26, !alias.scope !161
  %i.ie = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i174, ptr %i.ie, align 8, !tbaa !26, !alias.scope !161
  %i.if = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i176, ptr %i.if, align 8, !tbaa !26, !alias.scope !161
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.ig = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %28, i64 33
  store i8 1, ptr %i.ih, align 1, !tbaa !148
  store ptr @.str.21, ptr %28, align 8, !tbaa !26
  store i8 3, ptr %i.ig, align 8, !tbaa !142
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %26, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr noundef nonnull align 8 dereferenceable(34) %28)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.hw, i64 %i.hz, ptr noundef nonnull align 8 dereferenceable(34) %26) #16
  unreachable

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge, %bb.r
  %i.ii = phi i8 [ %i.fp, %bb.r ], [ %.pre250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge ]
  %.398 = phi i64 [ %.196241, %bb.r ], [ %.297.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge ]
  %.not110 = icmp eq i8 %i.ii, 125
  br i1 %.not110, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ij = load ptr, ptr %1, align 8, !tbaa !84    ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !103
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.in = load i32, ptr %i.im, align 8, !tbaa !105
  %i.io = zext i32 %i.in to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  %i.ip = load ptr, ptr %i.ij, align 8, !tbaa !106 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %.sroa.0.0.copyload.i.i.i181 = load ptr, ptr %i.iq, align 8, !tbaa !82
  %.sroa.2.0..sroa_idx.i.i.i182 = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %.sroa.2.0.copyload.i.i.i183 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i182, align 8, !tbaa !39
  %i.ir = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i8 3, ptr %i.ir, align 8, !tbaa !142, !alias.scope !164
  %i.is = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 5, ptr %i.is, align 1, !tbaa !148, !alias.scope !164
  store ptr @.str.23, ptr %30, align 8, !tbaa !26, !alias.scope !164
  %i.it = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i181, ptr %i.it, align 8, !tbaa !26, !alias.scope !164
  %i.iu = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i183, ptr %i.iu, align 8, !tbaa !26, !alias.scope !164
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  %i.iv = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %31, i64 33
  store i8 1, ptr %i.iw, align 1, !tbaa !148
  store ptr @.str.21, ptr %31, align 8, !tbaa !26
  store i8 3, ptr %i.iv, align 8, !tbaa !142
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %29, ptr noundef nonnull align 8 dereferenceable(34) %30, ptr noundef nonnull align 8 dereferenceable(34) %31)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.il, i64 %i.io, ptr noundef nonnull align 8 dereferenceable(34) %29) #16
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ix = add i64 %.398, 1
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge.thread, %bb.ag, %.critedge
end_hunk_0
