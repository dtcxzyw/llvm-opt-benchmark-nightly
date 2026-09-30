Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Compile?download=true
inline.NumInlined: 1045
inline.NumDeleted: 651
begin_hunk_0_@main:._crit_edge.i.i
  br i1 %i.aq, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.tail281.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 9 ; 4 uses
  %i.as = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(4) @.str.154) #29
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(7) @.str.155) #29
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(4) @.str.156) #29
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(7) @.str.157) #29
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !63
  %fwrite201 = call i64 @fwrite(ptr nonnull @.str.158, i64 22, i64 1, ptr %i.ba) #30 ; 0 uses
  br label %.thread265

bb.n:                                             ; preds = %.tail281.thread
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(12) @.str.159) #29
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr @_ZN5FFlag20DebugLuauTimeTracingE, align 8, !tbaa !212
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.bd = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(16) @.str.160, i64 noundef 15) #29
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 15 ; 3 uses
  %i.bg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(6) @.str.161) #29
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(5) @.str.162) #29
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(9) @.str.163) #29
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !63
  %fwrite200 = call i64 @fwrite(ptr nonnull @.str.164, i64 51, i64 1, ptr %i.bm) #30 ; 0 uses
  br label %.thread265

bb.u:                                             ; preds = %bb.p
  %i.bn = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(19) @.str.165, i64 noundef 18) #29
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(17) @.str.166) #29
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(17) @.str.167) #29
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @globalOptions, i64 42), align 2, !tbaa !213
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.bt = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(14) @.str.168, i64 noundef 13) #29
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 13 ; 2 uses
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !59
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #27
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef %i.bw, ptr noundef nonnull %i.bv, i64 noundef %i.bx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.z
  %i.bz = load i64, ptr %i.c, align 8, !tbaa !59
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !63
  %fwrite = call i64 @fwrite(ptr nonnull @.str.169, i64 45, i64 1, ptr %i.cb) #30 ; 0 uses
  br label %.thread265

bb.ab:                                            ; preds = %bb.y
  %i.cc = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(10) @.str.170, i64 noundef 9) #29
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  invoke void @_Z12setLuauFlagsPKc(ptr noundef nonnull %i.ce)
          to label %.critedge unwind label %bb.b

bb.ad:                                            ; preds = %bb.ab
  %i.cf = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(14) @.str.171, i64 noundef 13) #29
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  store ptr %i.ch, ptr getelementptr inbounds nuw (i8, ptr @globalOptions, i64 16), align 8, !tbaa !214
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  %i.ci = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(15) @.str.172, i64 noundef 14) #29
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  store ptr %i.ck, ptr getelementptr inbounds nuw (i8, ptr @globalOptions, i64 24), align 8, !tbaa !215
  br label %.critedge

bb.ah:                                            ; preds = %bb.af
  %i.cl = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(15) @.str.173, i64 noundef 14) #29
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  store ptr %i.cn, ptr getelementptr inbounds nuw (i8, ptr @globalOptions, i64 32), align 8, !tbaa !216
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah
  %i.co = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(12) @.str.174, i64 noundef 11) #29
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @globalOptions, i64 41), align 1, !tbaa !217
  br label %.critedge

bb.al:                                            ; preds = %bb.aj
  %i.cq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(13) @.str.175, i64 noundef 12) #29
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @globalOptions, i64 40), align 8, !tbaa !218
  br label %.critedge

bb.an:                                            ; preds = %bb.al
  br i1 %.not415, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !60
  %i.cu = icmp eq i8 %i.ct, 45
  br i1 %i.cu, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.cw = call fastcc i64 @_ZL16getCompileFormatPKc(ptr noundef nonnull %i.cv) ; 2 uses
  %.not272 = icmp samesign ult i64 %i.cw, 4294967296
  br i1 %.not272, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.0246.0.extract.trunc = trunc i64 %i.cw to i32
  br label %.critedge

bb.ar:                                            ; preds = %bb.ao, %bb.ap
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !63
  %i.cy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str.176, ptr noundef nonnull %i.f) #31 ; 0 uses
  %i.cz = load ptr, ptr %1, align 8, !tbaa !205
  call fastcc void @_ZL11displayHelpPKc(ptr noundef %i.cz)
  br label %.thread265

.critedge:                                        ; preds = %bb.q, %bb.r, %bb.s, %bb.i, %bb.j, %bb.k, %bb.l, %bb.an, %.thread253, %.thread251, %.thread, %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.ae, %bb.ai, %bb.am, %bb.aq, %bb.ak, %bb.ag, %bb.ac, %bb.x, %bb.o
  %.1186 = phi i32 [ %.0185396, %.thread ], [ %.0185396, %.thread251 ], [ %.0185396, %.thread253 ], [ %.0185396, %bb.an ], [ %.0185396, %bb.o ], [ %.0185396, %bb.i ], [ %.0185396, %bb.v ], [ %.0185396, %bb.u ], [ %.0185396, %bb.x ], [ %.0185396, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0185396, %bb.ac ], [ %.0185396, %bb.ae ], [ %.0185396, %bb.ag ], [ %.0185396, %bb.ai ], [ %.0185396, %bb.ak ], [ %.0185396, %bb.am ], [ %.sroa.0246.0.extract.trunc, %bb.aq ], [ %.0185396, %bb.l ], [ %.0185396, %bb.k ], [ %.0185396, %bb.j ], [ %.0185396, %bb.s ], [ %.0185396, %bb.r ], [ %.0185396, %bb.q ] ; 2 uses
  %.3183 = phi i32 [ %.0180397, %.thread ], [ %.0180397, %.thread251 ], [ %.0180397, %.thread253 ], [ %.0180397, %bb.an ], [ %.0180397, %bb.o ], [ 1, %bb.i ], [ %.0180397, %bb.v ], [ %.0180397, %bb.u ], [ %.0180397, %bb.x ], [ %.0180397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0180397, %bb.ac ], [ %.0180397, %bb.ae ], [ %.0180397, %bb.ag ], [ %.0180397, %bb.ai ], [ %.0180397, %bb.ak ], [ %.0180397, %bb.am ], [ %.0180397, %bb.aq ], [ 3, %bb.l ], [ 4, %bb.k ], [ 2, %bb.j ], [ %.0180397, %bb.s ], [ %.0180397, %bb.r ], [ %.0180397, %bb.q ] ; 2 uses
  %.3178 = phi i32 [ %.0175398, %.thread ], [ %.0175398, %.thread251 ], [ %.0175398, %.thread253 ], [ %.0175398, %bb.an ], [ %.0175398, %bb.o ], [ %.0175398, %bb.i ], [ %.0175398, %bb.v ], [ %.0175398, %bb.u ], [ %.0175398, %bb.x ], [ %.0175398, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0175398, %bb.ac ], [ %.0175398, %bb.ae ], [ %.0175398, %bb.ag ], [ %.0175398, %bb.ai ], [ %.0175398, %bb.ak ], [ %.0175398, %bb.am ], [ %.0175398, %bb.aq ], [ %.0175398, %bb.l ], [ %.0175398, %bb.k ], [ %.0175398, %bb.j ], [ 3, %bb.s ], [ 2, %bb.r ], [ 1, %bb.q ] ; 3 uses
  %.1164 = phi i1 [ %.0163399, %.thread ], [ %.0163399, %.thread251 ], [ %.0163399, %.thread253 ], [ %.0163399, %bb.an ], [ %.0163399, %bb.o ], [ %.0163399, %bb.i ], [ %.0163399, %bb.v ], [ true, %bb.u ], [ %.0163399, %bb.x ], [ %.0163399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0163399, %bb.ac ], [ %.0163399, %bb.ae ], [ %.0163399, %bb.ag ], [ %.0163399, %bb.ai ], [ %.0163399, %bb.ak ], [ %.0163399, %bb.am ], [ %.0163399, %bb.aq ], [ %.0163399, %bb.l ], [ %.0163399, %bb.k ], [ %.0163399, %bb.j ], [ %.0163399, %bb.s ], [ %.0163399, %bb.r ], [ %.0163399, %bb.q ] ; 3 uses
  %.1162 = phi i1 [ %.0161400, %.thread ], [ %.0161400, %.thread251 ], [ %.0161400, %.thread253 ], [ %.0161400, %bb.an ], [ %.0161400, %bb.o ], [ %.0161400, %bb.i ], [ true, %bb.v ], [ %.0161400, %bb.u ], [ %.0161400, %bb.x ], [ %.0161400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0161400, %bb.ac ], [ %.0161400, %bb.ae ], [ %.0161400, %bb.ag ], [ %.0161400, %bb.ai ], [ %.0161400, %bb.ak ], [ %.0161400, %bb.am ], [ %.0161400, %bb.aq ], [ %.0161400, %bb.l ], [ %.0161400, %bb.k ], [ %.0161400, %bb.j ], [ %.0161400, %bb.s ], [ %.0161400, %bb.r ], [ %.0161400, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %sub_0, !llvm.loop !196

._crit_edge:                                      ; preds = %.critedge
  %i.da = select i1 %.1162, i32 125, i32 61
  %i.db = icmp ne i32 %.3178, 3                   ; 2 uses
  %or.cond13 = select i1 %.1164, i1 %i.db, i1 false
  br i1 %or.cond13, label %bb.as, label %._crit_edge.thread

bb.as:                                            ; preds = %._crit_edge
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !63
  %fwrite217 = call i64 @fwrite(ptr nonnull @.str.177, i64 69, i64 1, ptr %i.dc) #30 ; 0 uses
  br label %.thread265

._crit_edge.thread:                               ; preds = %._crit_edge.i.i, %._crit_edge
  %24 = phi i1 [ %i.db, %._crit_edge ], [ true, %._crit_edge.i.i ]
  %.0161.lcssa520 = phi i32 [ %i.da, %._crit_edge ], [ 61, %._crit_edge.i.i ]
  %.0163.lcssa519 = phi i1 [ %.1164, %._crit_edge ], [ false, %._crit_edge.i.i ]
  %.0175.lcssa518 = phi i32 [ %.3178, %._crit_edge ], [ 0, %._crit_edge.i.i ] ; 3 uses
  %.0180.lcssa517 = phi i32 [ %.3183, %._crit_edge ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.0185.lcssa516 = phi i32 [ %.1186, %._crit_edge ], [ 0, %._crit_edge.i.i ] ; 8 uses
  %i.dd = load i8, ptr @_ZN5FFlag20DebugLuauTimeTracingE, align 8, !tbaa !212, !range !64, !noundef !65
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge.thread
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !63
  %fwrite216 = call i64 @fwrite(ptr nonnull @.str.178, i64 82, i64 1, ptr %i.df) #30 ; 0 uses
  br label %.thread265

bb.au:                                            ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  invoke void @_Z14getSourceFilesB5cxx11iPPc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %19, i32 noundef %0, ptr noundef %1)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.dg = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !68 ; 5 uses
  %i.di = load ptr, ptr %19, align 8, !tbaa !69   ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 5                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.dn = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 72 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.dw = getelementptr inbounds nuw i8, ptr %20, i64 84
  %i.dx = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %20, i64 92 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %20, i64 104
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 108 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %20, i64 120 ; 3 uses
  store double 0.000000e+00, ptr %i.eb, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 2 uses
  store i32 0, ptr %i.ec, align 16, !tbaa !219
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 136 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(116) %20, i8 0, i64 116, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %.not = xor i1 %24, true
  %i.ee = icmp ugt i32 %.0175.lcssa518, 1         ; 2 uses
  br i1 %i.ee, label %bb.aw, label %_ZNSt6vectorI12CompileStatsSaIS0_EE7reserveEm.exit

bb.aw:                                            ; preds = %bb.av
  %i.ef = icmp ugt i64 %i.dm, 57646075230342348
  br i1 %i.ef, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.227) #32
          to label %.noexc219 unwind label %bb.bb

.noexc219:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %.not.a = icmp eq ptr %i.dh, %i.di
  br i1 %.not.a, label %_ZNSt6vectorI12CompileStatsSaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.ay
  %i.eh = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ei = mul nuw nsw i64 %i.dm, 160
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #33
          to label %.noexc220 unwind label %bb.bb ; 4 uses

.noexc220:                                        ; preds = %_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE11_M_allocateEm.exit.i
  %i.ek = load ptr, ptr %21, align 8, !tbaa !72   ; 3 uses
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !73 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ek, %i.el
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI12CompileStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc220, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i ], [ %i.ej, %.noexc220 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i ], [ %i.ek, %.noexc220 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0911.i.i.i.i, i64 72, i1 false), !alias.scope !222
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72
  %i.en = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.em, ptr noundef nonnull align 8 dereferenceable(88) %i.en, i64 60, i1 false), !alias.scope !222
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 136
  %i.ep = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 136 ; 3 uses
  %i.eq = load <2 x ptr>, ptr %i.ep, align 8, !tbaa !74, !alias.scope !221, !noalias !220
  store <2 x ptr> %i.eq, ptr %i.eo, align 8, !tbaa !74, !alias.scope !220, !noalias !221
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 152
  %i.es = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 152
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !75, !alias.scope !221, !noalias !220
  store ptr %i.et, ptr %i.er, align 8, !tbaa !75, !alias.scope !220, !noalias !221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i8 0, i64 24, i1 false), !alias.scope !221, !noalias !220
  call void @_ZNSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ep) #27, !noalias !220
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 160 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 160
  %.not.i.i.i.i = icmp eq ptr %i.eu, %i.el
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI12CompileStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI12CompileStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !72
  br label %_ZNSt6vectorI12CompileStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

_ZNSt6vectorI12CompileStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %_ZNSt6vectorI12CompileStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exitthread-pre-split.i, %.noexc220
  %i.ew = phi ptr [ %.pr.i, %_ZNSt6vectorI12CompileStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exitthread-pre-split.i ], [ %i.ek, %.noexc220 ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.ew, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorI12CompileStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.ex = load ptr, ptr %i.eg, align 8, !tbaa !76
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #28
  br label %_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.az, %_ZNSt6vectorI12CompileStatsSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.ej, ptr %21, align 8, !tbaa !72
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !73
  %i.fb = getelementptr inbounds nuw [160 x i8], ptr %i.ej, i64 %i.dm
  store ptr %i.fb, ptr %i.eg, align 8, !tbaa !76
  %.pre = load ptr, ptr %19, align 8, !tbaa !223
  %.pre437 = load ptr, ptr %i.dg, align 8, !tbaa !223
  br label %_ZNSt6vectorI12CompileStatsSaIS0_EE7reserveEm.exit

bb.ba:                                            ; preds = %bb.au
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.bb:                                            ; preds = %_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE11_M_allocateEm.exit.i, %bb.ax
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

_ZNSt6vectorI12CompileStatsSaIS0_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.ay, %bb.av
  %i.fe = phi ptr [ %.pre437, %_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.dh, %bb.ay ], [ %i.dh, %bb.av ] ; 2 uses
  %i.ff = phi ptr [ %.pre, %_ZNSt12_Vector_baseI12CompileStatsSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.di, %bb.ay ], [ %i.di, %bb.av ] ; 2 uses
  %i.fg = zext i1 %.not to i32
  %i.fh = select i1 %.0163.lcssa519, i32 2, i32 0
  %i.fi = or disjoint i32 %i.fh, %i.fg
  %.not271406 = icmp eq ptr %i.ff, %i.fe
  br i1 %.not271406, label %._crit_edge409, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI12CompileStatsSaIS0_EE7reserveEm.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %22, i64 72 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %22, i64 88
  %i.ft = getelementptr inbounds nuw i8, ptr %22, i64 92
  %i.fu = getelementptr inbounds nuw i8, ptr %22, i64 100
  %i.fv = getelementptr inbounds nuw i8, ptr %22, i64 108
  %i.fw = getelementptr inbounds nuw i8, ptr %22, i64 120 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %22, i64 128
  %i.fy = getelementptr inbounds nuw i8, ptr %22, i64 136 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.gc = icmp eq i32 %.0185.lcssa516, 7          ; 2 uses
  %i.gd = zext i1 %i.gc to i8                     ; 2 uses
  %i.ge = icmp ne i32 %.0185.lcssa516, 5          ; 2 uses
  %i.gf = icmp ne i32 %.0185.lcssa516, 4          ; 2 uses
  %i.gg = icmp eq i32 %.0185.lcssa516, 6          ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 944 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 1032 ; 3 uses
  %.repack1.i92.i = getelementptr inbounds nuw i8, ptr %4, i64 1040 ; 3 uses
  %i.gj = add nsw i32 %.0185.lcssa516, -3
  %or.cond5.i = icmp ult i32 %i.gj, 4
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 89
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 912 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 920 ; 2 uses
  %.sroa.7135.0..sroa_idx136.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.sroa.10140.0..sroa_idx141.i = getelementptr inbounds nuw i8, ptr %17, i64 112
  %.sroa.12.0..sroa_idx143.i = getelementptr inbounds nuw i8, ptr %17, i64 113
  %.sroa.13.0..sroa_idx145.i = getelementptr inbounds nuw i8, ptr %17, i64 114
  %.sroa.14.0..sroa_idx147.i = getelementptr inbounds nuw i8, ptr %17, i64 115
  %.sroa.15.0..sroa_idx149.i = getelementptr inbounds nuw i8, ptr %17, i64 116
  %.sroa.16.0..sroa_idx151.i = getelementptr inbounds nuw i8, ptr %17, i64 117
  %.sroa.17155.0..sroa_idx156.i = getelementptr inbounds nuw i8, ptr %17, i64 120
  %.sroa.21.0..sroa_idx164.i = getelementptr inbounds nuw i8, ptr %17, i64 136
  %.sroa.23.0..sroa_idx166.i = getelementptr inbounds nuw i8, ptr %17, i64 144
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %.sroa.7135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.10140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 112
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 113
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 114
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 115
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 116
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 117
  %.sroa.17155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 120
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 136
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ho = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.hw = getelementptr inbounds nuw i8, ptr %22, i64 144
  %i.hx = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %21, i64 16
  br label %bb.bc

._crit_edge409.loopexit:                          ; preds = %_ZNSt6vectorI12CompileStatsSaIS0_EE9push_backERKS0_.exit
  %i.hz = icmp ne i32 %i.pm, 0
  %i.ia = zext i1 %i.hz to i32
  br label %._crit_edge409

._crit_edge409:                                   ; preds = %._crit_edge409.loopexit, %_ZNSt6vectorI12CompileStatsSaIS0_EE7reserveEm.exit
  %.0158.lcssa = phi i32 [ 0, %_ZNSt6vectorI12CompileStatsSaIS0_EE7reserveEm.exit ], [ %i.ia, %._crit_edge409.loopexit ] ; 2 uses
  switch i32 %.0185.lcssa516, label %bb.eu [
    i32 8, label %bb.es
    i32 7, label %bb.et
  ]

bb.bc:                                            ; preds = %.lr.ph, %_ZNSt6vectorI12CompileStatsSaIS0_EE9push_backERKS0_.exit
  %.0158408 = phi i32 [ 0, %.lr.ph ], [ %i.pm, %_ZNSt6vectorI12CompileStatsSaIS0_EE9push_backERKS0_.exit ]
  %.sroa.0243.0407 = phi ptr [ %i.ff, %.lr.ph ], [ %i.rn, %_ZNSt6vectorI12CompileStatsSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  store double 0.000000e+00, ptr %i.fw, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(116) %22, i8 0, i64 116, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i8 0, i64 24, i1 false)
  store i32 %i.fi, ptr %i.fx, align 16, !tbaa !224
  %i.ib = load ptr, ptr %.sroa.0243.0407, align 8, !tbaa !25 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.ic = invoke noundef double @_ZN4Luau9TimeTrace8getClockEv()
          to label %.noexc223 unwind label %bb.er

.noexc223:                                        ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.fz, ptr %3, align 8, !tbaa !58
  %i.id = icmp eq ptr %i.ib, null
  br i1 %i.id, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.noexc223
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.226) #32
          to label %.noexc.i222 unwind label %.loopexit.split-lp

.noexc.i222:                                      ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %.noexc223
  %i.ie = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ib) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ie, ptr %i.a, align 8, !tbaa !77
  %i.if = icmp ugt i64 %i.ie, 15
  br i1 %i.if, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.be
  %i.ig = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc86.i unwind label %.loopexit ; 2 uses

.noexc86.i:                                       ; preds = %.noexc.i.i
  store ptr %i.ig, ptr %3, align 8, !tbaa !25
  %i.ih = load i64, ptr %i.a, align 8, !tbaa !77
  store i64 %i.ih, ptr %i.fz, align 8, !tbaa !60
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc86.i, %bb.be
  %i.ii = phi ptr [ %i.ig, %.noexc86.i ], [ %i.fz, %bb.be ] ; 2 uses
  switch i64 %i.ie, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bh
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i
  %i.ij = load i8, ptr %i.ib, align 1, !tbaa !60
  store i8 %i.ij, ptr %i.ii, align 1, !tbaa !60
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ii, ptr nonnull align 1 %i.ib, i64 %i.ie, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i
  %i.ik = load i64, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  store i64 %i.ik, ptr %i.ga, align 8, !tbaa !59
  %i.il = load ptr, ptr %3, align 8, !tbaa !25
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ik
  store i8 0, ptr %i.im, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_Z8readFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.24") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.in = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.fz
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bi
  %i.ip = load i64, ptr %i.fz, align 8, !tbaa !60
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ir = load i8, ptr %i.gb, align 8, !tbaa !226, !range !64, !noundef !65
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.bl, label %bb.bj

end_hunk_0
