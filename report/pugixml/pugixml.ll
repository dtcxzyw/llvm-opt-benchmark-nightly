Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE:bb.a
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !225, !noalias !561 ; 2 uses
  %.not24.i429 = icmp eq ptr %i.ee, null
  br i1 %.not24.i429, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %i.ee, align 1, !tbaa !251, !noalias !561
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc430
  %i.ef = load ptr, ptr %i.dm, align 8, !tbaa !223, !noalias !561
  store ptr %i.ef, ptr %i.ec, align 8, !tbaa !240, !noalias !561
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.dz, ptr %i.eg, align 8, !tbaa !250, !noalias !561
  store ptr %i.ec, ptr %i.dm, align 8, !tbaa !223, !noalias !561
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !224, !noalias !561
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.pre565 = load ptr, ptr %i.dl, align 8, !tbaa !276, !noalias !561
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit431

.lr.ph:                                           ; preds = %bb.aj, %.lr.ph
  %.054.i508 = phi ptr [ %.054.i, %.lr.ph ], [ %.054.i505, %bb.aj ]
  %.055.i507 = phi i64 [ %i.ei, %.lr.ph ], [ 1, %bb.aj ]
  %i.ei = add i64 %.055.i507, 1                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.054.i508, i64 24
  %.054.i = load ptr, ptr %i.ej, align 8, !tbaa !249, !noalias !561 ; 2 uses
  %.not.i291 = icmp eq ptr %.054.i, null
  br i1 %.not.i291, label %._crit_edge, label %.lr.ph, !llvm.loop !534

bb.ap:                                            ; preds = %bb.an, %bb.am
  store ptr @.str, ptr %0, align 8, !tbaa !268, !alias.scope !561
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ek, align 8, !tbaa !273, !alias.scope !561
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.el, align 8, !tbaa !274, !alias.scope !561
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node18eval_string_concatERKNS1_13xpath_contextERKNS1_11xpath_stackE.exit

bb.aq:                                            ; preds = %bb.al
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit431: ; preds = %bb.ak, %bb.ao
  %i.en = phi ptr [ %i.dm, %bb.ak ], [ %.pre565, %bb.ao ]
  %.1.i427 = phi ptr [ %i.dx, %bb.ak ], [ %i.eh, %bb.ao ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49, !noalias !561
  store ptr %i.en, ptr %7, align 8, !tbaa !261, !noalias !561
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ep = load ptr, ptr %3, align 8, !tbaa !261, !noalias !561
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !276, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49, !noalias !561
  %i.eq = getelementptr inbounds nuw i8, ptr %.tr470, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !242, !noalias !561
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ar unwind label %bb.as, !noalias !561, !inline_history !535

bb.ar:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.1.i427, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !562, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49, !noalias !561
  %.046.i509 = load ptr, ptr %i.do, align 8, !tbaa !249, !noalias !561 ; 2 uses
  %.not60.i510 = icmp eq ptr %.046.i509, null
  br i1 %.not60.i510, label %.preheader, label %.lr.ph514

.preheader:                                       ; preds = %bb.at, %bb.ar
  %.not = icmp eq i64 %.055.i.lcssa, 0            ; 2 uses
  br i1 %.not, label %._crit_edge518, label %.lr.ph517

bb.as:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit431
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49, !noalias !561
  br label %bb.be

.lr.ph514:                                        ; preds = %bb.ar, %bb.at
  %.046.i512 = phi ptr [ %.046.i, %bb.at ], [ %.046.i509, %bb.ar ] ; 2 uses
  %.047.i511 = phi i64 [ %i.ev, %bb.at ], [ 1, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49, !noalias !561
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %.046.i512, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.at unwind label %bb.au, !noalias !561, !inline_history !535

bb.at:                                            ; preds = %.lr.ph514
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %.1.i427, i64 %.047.i511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !562, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49, !noalias !561
  %i.eu = getelementptr inbounds nuw i8, ptr %.046.i512, i64 24
  %i.ev = add i64 %.047.i511, 1
  %.046.i = load ptr, ptr %i.eu, align 8, !tbaa !249, !noalias !561 ; 2 uses
  %.not60.i = icmp eq ptr %.046.i, null
  br i1 %.not60.i, label %.preheader, label %.lr.ph514, !llvm.loop !536

bb.au:                                            ; preds = %.lr.ph514
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49, !noalias !561
  br label %bb.be

._crit_edge518.loopexit:                          ; preds = %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit420
  %i.ex = and i64 %i.gb, -8
  br label %._crit_edge518

._crit_edge518:                                   ; preds = %._crit_edge518.loopexit, %.preheader
  %.045.i.lcssa = phi i64 [ 0, %.preheader ], [ %i.ex, %._crit_edge518.loopexit ] ; 2 uses
  %i.ey = load ptr, ptr %3, align 8, !tbaa !261, !noalias !561 ; 5 uses
  %i.ez = add i64 %.045.i.lcssa, 8                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !224, !noalias !561 ; 2 uses
  %i.fc = add i64 %i.fb, %i.ez                    ; 2 uses
  %i.fd = load ptr, ptr %i.ey, align 8, !tbaa !223, !noalias !561 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !250, !noalias !561
  %.not.i421 = icmp ugt i64 %i.fc, %i.ff
  br i1 %.not.i421, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge518
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fb
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !224, !noalias !561
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

bb.aw:                                            ; preds = %._crit_edge518
  %i.fi = add i64 %.045.i.lcssa, 1032
  %i.fj = tail call i64 @llvm.umax.i64(i64 %i.fi, i64 4096) ; 2 uses
  %i.fk = add i64 %i.fj, 16
  %i.fl = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106, !noalias !561
  %i.fm = invoke noundef ptr %i.fl(i64 noundef %i.fk)
          to label %.noexc425 unwind label %bb.bc, !inline_history !533 ; 5 uses

.noexc425:                                        ; preds = %bb.aw
  %.not23.i423 = icmp eq ptr %i.fm, null
  br i1 %.not23.i423, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.noexc425
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !225, !noalias !561 ; 2 uses
  %.not24.i424 = icmp eq ptr %i.fo, null
  br i1 %.not24.i424, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i8 1, ptr %i.fo, align 1, !tbaa !251, !noalias !561
  br label %bb.bd

bb.az:                                            ; preds = %.noexc425
  %i.fp = load ptr, ptr %i.ey, align 8, !tbaa !223, !noalias !561
  store ptr %i.fp, ptr %i.fm, align 8, !tbaa !240, !noalias !561
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %i.fj, ptr %i.fq, align 8, !tbaa !250, !noalias !561
  store ptr %i.fm, ptr %i.ey, align 8, !tbaa !223, !noalias !561
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !224, !noalias !561
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

.lr.ph517:                                        ; preds = %.preheader, %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit420
  %.044.i516 = phi i64 [ %i.gc, %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit420 ], [ 0, %.preheader ] ; 2 uses
  %.045.i515 = phi i64 [ %i.gb, %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit420 ], [ 0, %.preheader ]
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %.1.i427, i64 %.044.i516 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !273, !range !205, !noalias !561, !noundef !123
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph517
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !274, !noalias !561
  br label %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit420

bb.bb:                                            ; preds = %.lr.ph517
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !268, !noalias !561
  %i.fz = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fy) #50, !noalias !561
  br label %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit420

_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit420: ; preds = %bb.ba, %bb.bb
  %i.ga = phi i64 [ %i.fx, %bb.ba ], [ %i.fz, %bb.bb ]
  %i.gb = add i64 %i.ga, %.045.i515               ; 2 uses
  %i.gc = add nuw i64 %.044.i516, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gc, %.055.i.lcssa
  br i1 %exitcond.not, label %._crit_edge518.loopexit, label %.lr.ph517, !llvm.loop !537

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit: ; preds = %bb.az, %bb.av
  %.1.i422 = phi ptr [ %i.fh, %bb.av ], [ %i.fr, %bb.az ] ; 5 uses
  br i1 %.not, label %._crit_edge530, label %.lr.ph529.preheader

.lr.ph529.preheader:                              ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %xtraiter = and i64 %.055.i.lcssa, 1
  %i.gd = icmp eq i64 %.055.i.lcssa, 1
  br i1 %i.gd, label %.lr.ph529.epil.preheader, label %.lr.ph529.preheader.new

.lr.ph529.preheader.new:                          ; preds = %.lr.ph529.preheader
  %unroll_iter = and i64 %.055.i.lcssa, -2
  br label %.lr.ph529

._crit_edge530.loopexit.unr-lcssa:                ; preds = %._crit_edge525.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge530, label %.lr.ph529.epil.preheader

.lr.ph529.epil.preheader:                         ; preds = %._crit_edge530.loopexit.unr-lcssa, %.lr.ph529.preheader
  %.042.i528.epil.init = phi i64 [ 0, %.lr.ph529.preheader ], [ %i.gw, %._crit_edge530.loopexit.unr-lcssa ]
  %.043.i527.epil.init = phi ptr [ %.1.i422, %.lr.ph529.preheader ], [ %.1.i.lcssa.1, %._crit_edge530.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod778 = trunc i64 %.055.i.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod778)
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %.1.i427, i64 %.042.i528.epil.init
  %.val.i.epil = load ptr, ptr %i.ge, align 8, !tbaa !268, !noalias !561 ; 2 uses
  %i.gf = load i8, ptr %.val.i.epil, align 1, !tbaa !86, !noalias !561 ; 2 uses
  %.not63.i520.epil = icmp eq i8 %i.gf, 0
  br i1 %.not63.i520.epil, label %._crit_edge530, label %.lr.ph524.epil

.lr.ph524.epil:                                   ; preds = %.lr.ph529.epil.preheader, %.lr.ph524.epil
  %i.gg = phi i8 [ %i.gj, %.lr.ph524.epil ], [ %i.gf, %.lr.ph529.epil.preheader ]
  %.0.i522.epil = phi ptr [ %i.gi, %.lr.ph524.epil ], [ %.val.i.epil, %.lr.ph529.epil.preheader ]
  %.1.i521.epil = phi ptr [ %i.gh, %.lr.ph524.epil ], [ %.043.i527.epil.init, %.lr.ph529.epil.preheader ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.1.i521.epil, i64 1 ; 2 uses
  store i8 %i.gg, ptr %.1.i521.epil, align 1, !tbaa !86, !noalias !561
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i522.epil, i64 1 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !86, !noalias !561 ; 2 uses
  %.not63.i.epil = icmp eq i8 %i.gj, 0
  br i1 %.not63.i.epil, label %._crit_edge530, label %.lr.ph524.epil, !llvm.loop !538

._crit_edge530:                                   ; preds = %._crit_edge530.loopexit.unr-lcssa, %.lr.ph524.epil, %.lr.ph529.epil.preheader, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %.043.i.lcssa = phi ptr [ %.1.i422, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit ], [ %.1.i.lcssa.1, %._crit_edge530.loopexit.unr-lcssa ], [ %.043.i527.epil.init, %.lr.ph529.epil.preheader ], [ %i.gh, %.lr.ph524.epil ] ; 2 uses
  store i8 0, ptr %.043.i.lcssa, align 1, !tbaa !86, !noalias !561
  %i.gk = ptrtoint ptr %.043.i.lcssa to i64
  %i.gl = ptrtoint ptr %.1.i422 to i64
  %i.gm = sub i64 %i.gk, %i.gl
  br label %bb.bd

.lr.ph529:                                        ; preds = %._crit_edge525.1, %.lr.ph529.preheader.new
  %.042.i528 = phi i64 [ 0, %.lr.ph529.preheader.new ], [ %i.gw, %._crit_edge525.1 ] ; 3 uses
  %.043.i527 = phi ptr [ %.1.i422, %.lr.ph529.preheader.new ], [ %.1.i.lcssa.1, %._crit_edge525.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph529.preheader.new ], [ %niter.next.1, %._crit_edge525.1 ]
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %.1.i427, i64 %.042.i528
  %.val.i = load ptr, ptr %i.gn, align 8, !tbaa !268, !noalias !561 ; 2 uses
  %i.go = load i8, ptr %.val.i, align 1, !tbaa !86, !noalias !561 ; 2 uses
  %.not63.i520 = icmp eq i8 %i.go, 0
  br i1 %.not63.i520, label %._crit_edge525, label %.lr.ph524

._crit_edge525:                                   ; preds = %.lr.ph524, %.lr.ph529
  %.1.i.lcssa = phi ptr [ %.043.i527, %.lr.ph529 ], [ %i.gy, %.lr.ph524 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %.1.i427, i64 %.042.i528
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %.val.i.1 = load ptr, ptr %i.gq, align 8, !tbaa !268, !noalias !561 ; 2 uses
  %i.gr = load i8, ptr %.val.i.1, align 1, !tbaa !86, !noalias !561 ; 2 uses
  %.not63.i520.1 = icmp eq i8 %i.gr, 0
  br i1 %.not63.i520.1, label %._crit_edge525.1, label %.lr.ph524.1

.lr.ph524.1:                                      ; preds = %._crit_edge525, %.lr.ph524.1
  %i.gs = phi i8 [ %i.gv, %.lr.ph524.1 ], [ %i.gr, %._crit_edge525 ]
  %.0.i522.1 = phi ptr [ %i.gu, %.lr.ph524.1 ], [ %.val.i.1, %._crit_edge525 ]
  %.1.i521.1 = phi ptr [ %i.gt, %.lr.ph524.1 ], [ %.1.i.lcssa, %._crit_edge525 ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.1.i521.1, i64 1 ; 2 uses
  store i8 %i.gs, ptr %.1.i521.1, align 1, !tbaa !86, !noalias !561
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i522.1, i64 1 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !86, !noalias !561 ; 2 uses
  %.not63.i.1 = icmp eq i8 %i.gv, 0
  br i1 %.not63.i.1, label %._crit_edge525.1, label %.lr.ph524.1, !llvm.loop !538

._crit_edge525.1:                                 ; preds = %.lr.ph524.1, %._crit_edge525
  %.1.i.lcssa.1 = phi ptr [ %.1.i.lcssa, %._crit_edge525 ], [ %i.gt, %.lr.ph524.1 ] ; 3 uses
  %i.gw = add nuw i64 %.042.i528, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge530.loopexit.unr-lcssa, label %.lr.ph529, !llvm.loop !539

.lr.ph524:                                        ; preds = %.lr.ph529, %.lr.ph524
  %i.gx = phi i8 [ %i.ha, %.lr.ph524 ], [ %i.go, %.lr.ph529 ]
  %.0.i522 = phi ptr [ %i.gz, %.lr.ph524 ], [ %.val.i, %.lr.ph529 ]
  %.1.i521 = phi ptr [ %i.gy, %.lr.ph524 ], [ %.043.i527, %.lr.ph529 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.1.i521, i64 1 ; 2 uses
  store i8 %i.gx, ptr %.1.i521, align 1, !tbaa !86, !noalias !561
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i522, i64 1 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !86, !noalias !561 ; 2 uses
  %.not63.i = icmp eq i8 %i.ha, 0
  br i1 %.not63.i, label %._crit_edge525, label %.lr.ph524, !llvm.loop !538

bb.bc:                                            ; preds = %bb.aw
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.ax, %bb.ay, %._crit_edge530
  %.1.i422.sink = phi ptr [ %.1.i422, %._crit_edge530 ], [ @.str, %bb.ay ], [ @.str, %bb.ax ]
  %.sink675 = phi i8 [ 1, %._crit_edge530 ], [ 0, %bb.ay ], [ 0, %bb.ax ]
  %.sink = phi i64 [ %i.gm, %._crit_edge530 ], [ 0, %bb.ay ], [ 0, %bb.ax ]
  store ptr %.1.i422.sink, ptr %0, align 8, !tbaa !268
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink675, ptr %i.hc, align 8, !tbaa !273
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.hd, align 8, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49, !noalias !561
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node18eval_string_concatERKNS1_13xpath_contextERKNS1_11xpath_stackE.exit

bb.be:                                            ; preds = %bb.bc, %bb.au, %bb.as
  %.pn64.pn.i = phi { ptr, i32 } [ %i.es, %bb.as ], [ %i.ew, %bb.au ], [ %i.hb, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49, !noalias !561
  br label %bb.bf

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp474.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ag, %bb.bv, %bb.ch, %bb.cq, %bb.dd, %bb.ey, %bb.gc, %bb.bf
  %common.resume.op = phi { ptr, i32 } [ %.pn64.pn.pn.i, %bb.bf ], [ %i.aaa, %bb.gc ], [ %lpad.loopexit.split-lp744, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp746, %.loopexit.split-lp474.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn181, %bb.ag ], [ %.pn178.pn, %bb.bv ], [ %.pn174.pn, %bb.ch ], [ %i.md, %bb.cq ], [ %i.oj, %bb.dd ], [ %.pn.pn.pn.pn, %bb.ey ]
  resume { ptr, i32 } %common.resume.op

bb.bf:                                            ; preds = %bb.be, %bb.aq
  %.pn64.pn.pn.i = phi { ptr, i32 } [ %.pn64.pn.i, %bb.be ], [ %i.em, %bb.aq ]
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #49, !noalias !561, !inline_history !535
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49, !noalias !561
  br label %common.resume

_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node18eval_string_concatERKNS1_13xpath_contextERKNS1_11xpath_stackE.exit: ; preds = %bb.ap, %bb.bd
  %i.he = load ptr, ptr %i.dm, align 8, !tbaa !223, !noalias !561 ; 2 uses
  %i.hf = load ptr, ptr %i.dn, align 8, !tbaa !223, !noalias !561 ; 3 uses
  %.not9.i.i413 = icmp eq ptr %i.he, %i.hf
  br i1 %.not9.i.i413, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit419, label %.lr.ph.i.i414

.lr.ph.i.i414:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node18eval_string_concatERKNS1_13xpath_contextERKNS1_11xpath_stackE.exit, %.noexc.i416
  %.010.i.i415 = phi ptr [ %i.hg, %.noexc.i416 ], [ %i.he, %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node18eval_string_concatERKNS1_13xpath_contextERKNS1_11xpath_stackE.exit ] ; 2 uses
  %i.hg = load ptr, ptr %.010.i.i415, align 8, !tbaa !240, !noalias !561 ; 2 uses
  %i.hh = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106, !noalias !561
  invoke void %i.hh(ptr noundef nonnull %.010.i.i415)
          to label %.noexc.i416 unwind label %bb.bg, !noalias !561, !inline_history !39

.noexc.i416:                                      ; preds = %.lr.ph.i.i414
  %.not.i.i417 = icmp eq ptr %i.hg, %i.hf
  br i1 %.not.i.i417, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit419, label %.lr.ph.i.i414, !llvm.loop !40

bb.bg:                                            ; preds = %.lr.ph.i.i414
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  tail call void @__clang_call_terminate(ptr %i.hj) #48, !noalias !561
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit419: ; preds = %.noexc.i416, %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node18eval_string_concatERKNS1_13xpath_contextERKNS1_11xpath_stackE.exit
  store ptr %i.hf, ptr %i.dm, align 8, !tbaa !223, !noalias !561
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !224, !noalias !561
  store i64 %i.hl, ptr %i.dq, align 8, !tbaa !224, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49, !noalias !561
  br label %bb.ge

bb.bh:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #49
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !276 ; 6 uses
  store ptr %i.hn, ptr %21, align 8, !tbaa !263
  %i.ho = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.hn, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #49
  store ptr %i.hn, ptr %22, align 8, !tbaa !261
  %i.hp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hq = load ptr, ptr %3, align 8, !tbaa !261
  store ptr %i.hq, ptr %i.hp, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #49
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr470, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !242
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %23, ptr noundef nonnull align 8 dereferenceable(40) %i.hs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.bi unwind label %bb.bt

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #49
  %i.ht = getelementptr inbounds nuw i8, ptr %.tr470, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !243
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %24, ptr noundef nonnull align 8 dereferenceable(40) %i.hu, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.bj unwind label %bb.bu

bb.bj:                                            ; preds = %bb.bi
  %.val205 = load ptr, ptr %23, align 8, !tbaa !268 ; 4 uses
  %.val204 = load ptr, ptr %24, align 8, !tbaa !268
  %i.hv = tail call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.val205, ptr noundef nonnull readonly dereferenceable(1) %.val204) #50 ; 3 uses
  %.not177 = icmp eq ptr %i.hv, null
  br i1 %.not177, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hw = load ptr, ptr %3, align 8, !tbaa !261   ; 5 uses
  %i.hx = icmp eq ptr %.val205, %i.hv
  br i1 %i.hx, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = ptrtoint ptr %.val205 to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 4 uses
  %i.ib = and i64 %i.ia, -8                       ; 2 uses
  %i.ic = add i64 %i.ib, 8                        ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 3 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !224, !noalias !563 ; 2 uses
  %i.if = add i64 %i.ie, %i.ic                    ; 2 uses
  %i.ig = load ptr, ptr %i.hw, align 8, !tbaa !223, !noalias !563 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !250, !noalias !563
  %.not.i.i.i292 = icmp ugt i64 %i.if, %i.ii
  br i1 %.not.i.i.i292, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ie
  store i64 %i.if, ptr %i.id, align 8, !tbaa !224, !noalias !563
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.il = add i64 %i.ib, 1032
  %i.im = tail call i64 @llvm.umax.i64(i64 %i.il, i64 4096) ; 2 uses
  %i.in = add i64 %i.im, 16
  %i.io = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106, !noalias !563
  %i.ip = invoke noundef ptr %i.io(i64 noundef %i.in)
          to label %.noexc294 unwind label %bb.bu, !inline_history !564 ; 5 uses

.noexc294:                                        ; preds = %bb.bn
  %.not23.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not23.i.i.i, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %.noexc294
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !225, !noalias !563 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not24.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i8 1, ptr %i.ir, align 1, !tbaa !251, !noalias !563
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE.exit

bb.bq:                                            ; preds = %.noexc294
  %i.is = load ptr, ptr %i.hw, align 8, !tbaa !223, !noalias !563
  store ptr %i.is, ptr %i.ip, align 8, !tbaa !240, !noalias !563
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i64 %i.im, ptr %i.it, align 8, !tbaa !250, !noalias !563
  store ptr %i.ip, ptr %i.hw, align 8, !tbaa !223, !noalias !563
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !224, !noalias !563
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bm
  %.1.i.i.i = phi ptr [ %i.ik, %bb.bm ], [ %i.iu, %bb.bq ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.i.i, ptr nonnull readonly align 1 %.val205, i64 %i.ia, i1 false), !noalias !563
  %i.iv = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 %i.ia
  store i8 0, ptr %i.iv, align 1, !tbaa !86, !noalias !563
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE.exit

_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE.exit: ; preds = %bb.bj, %bb.br, %bb.bp, %bb.bo, %bb.bk
  %.1.i.i.sink.i.sink = phi ptr [ @.str, %bb.bo ], [ %.1.i.i.i, %bb.br ], [ @.str, %bb.bk ], [ @.str, %bb.bp ], [ @.str, %bb.bj ]
  %.sink18.i.sink = phi i8 [ 0, %bb.bo ], [ 1, %bb.br ], [ 0, %bb.bk ], [ 0, %bb.bp ], [ 0, %bb.bj ]
  %.sink.i293.sink = phi i64 [ 0, %bb.bo ], [ %i.ia, %bb.br ], [ 0, %bb.bk ], [ 0, %bb.bp ], [ 0, %bb.bj ]
  store ptr %.1.i.i.sink.i.sink, ptr %0, align 8, !tbaa !268
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink18.i.sink, ptr %i.iw, align 8, !tbaa !273
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i293.sink, ptr %i.ix, align 8, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #49
  %i.iy = load ptr, ptr %i.hn, align 8, !tbaa !223 ; 2 uses
  %i.iz = load ptr, ptr %i.ho, align 8, !tbaa !223 ; 3 uses
  %.not9.i.i295 = icmp eq ptr %i.iy, %i.iz
  br i1 %.not9.i.i295, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit301, label %.lr.ph.i.i296

.lr.ph.i.i296:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE.exit, %.noexc.i298
  %.010.i.i297 = phi ptr [ %i.ja, %.noexc.i298 ], [ %i.iy, %_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE.exit ] ; 2 uses
  %i.ja = load ptr, ptr %.010.i.i297, align 8, !tbaa !240 ; 2 uses
  %i.jb = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.jb(ptr noundef nonnull %.010.i.i297)
          to label %.noexc.i298 unwind label %bb.bs, !inline_history !39

.noexc.i298:                                      ; preds = %.lr.ph.i.i296
  %.not.i.i299 = icmp eq ptr %i.ja, %i.iz
  br i1 %.not.i.i299, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit301, label %.lr.ph.i.i296, !llvm.loop !40

bb.bs:                                            ; preds = %.lr.ph.i.i296
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  tail call void @__clang_call_terminate(ptr %i.jd) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit301: ; preds = %.noexc.i298, %_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE.exit
end_hunk_0
