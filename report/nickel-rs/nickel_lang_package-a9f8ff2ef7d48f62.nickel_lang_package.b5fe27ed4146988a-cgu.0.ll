Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN18gix_worktree_state8checkout5chunk28checkout_entry_handle_result17h45877974ca039b14E:bb.a
          to label %bb.eh unwind label %bb.ef, !noalias !27990

bb.ef:                                            ; preds = %bb.ee
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr61drop_in_place$LT$gix_object..find..existing_object..Error$GT$17h0b0ebd1a9b5dc7c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ae) #75
          to label %common.resume unwind label %bb.eg, !noalias !27943

bb.eg:                                            ; preds = %bb.ef
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !27990
  unreachable

bb.eh:                                            ; preds = %bb.ee
  %.sroa.4261.sroa.2.0..sroa.4261.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4261.sroa.2.0..sroa.4261.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !27985
  %.sroa.4452.8.copyload.i = load ptr, ptr %i.c, align 8, !noalias !27991
  %.sroa.6453.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.3260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.ie = load <2 x i64>, ptr %.sroa.6453.8..sroa_idx.i, align 8, !noalias !27991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27989
  store i64 -9223372036854775795, ptr %i.bb, align 8, !alias.scope !27925
  store ptr %.sroa.4452.8.copyload.i, ptr %.sroa.2259.0..sroa_idx.i, align 8, !alias.scope !27925
  store <2 x i64> %i.ie, ptr %.sroa.3260.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit

bb.ei:                                            ; preds = %bb.cp
  %i.if = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !27927, !nonnull !43, !align !48, !noundef !43 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !27927, !noundef !43 ; 3 uses
  br i1 %.not.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !27927
  store ptr %i.ay, ptr %i.aj, align 8, !noalias !27927
  %i.ij = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ax, ptr %i.ij, align 8, !noalias !27927
  %i.ik = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.av, ptr %i.ik, align 8, !noalias !27927
  %i.il = trunc i64 %.sroa.7.0.extract.shift.i to i1
  call fastcc void @_ZN18gix_worktree_state8checkout5entry16try_op_or_unlink17hf783ff5e2a1a8325E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fp, i1 noundef zeroext %i.il, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj), !noalias !27943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !27927
  %i.im = load i32, ptr %i.ak, align 8, !range !76, !noalias !27927, !noundef !43
  %i.in = trunc nuw i32 %i.im to i1
  %i.io = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !27927, !nonnull !43
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !range !134, !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !27927
  br i1 %i.in, label %bb.el, label %bb.em

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !27927
  %i.is = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ig, ptr %i.is, align 8, !noalias !27927
  %i.it = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.ii, ptr %i.it, align 8, !noalias !27927
  store i64 -9223372036854775808, ptr %i.am, align 8, !noalias !27927
  %i.iu = trunc i64 %.sroa.7.0.extract.shift.i to i1
  %i.iv = call fastcc noundef ptr @_ZN18gix_worktree_state8checkout5entry16try_op_or_unlink17h9451fbf5a35158baE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %i.fp, i1 noundef zeroext %i.iu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am), !noalias !27943 ; 2 uses
  %.not323.i = icmp eq ptr %i.iv, null
  br i1 %.not323.i, label %"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i", label %bb.fa

bb.el:                                            ; preds = %bb.ej
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ip, ptr %.sroa.4278.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %bb.er

bb.em:                                            ; preds = %bb.ej
  store i32 %i.ir, ptr %i.al, align 4, !noalias !27927
  %i.iw = invoke fastcc noundef ptr @_ZN3std2io5Write9write_all17hb6af370d4a410f8cE(ptr noalias noundef align 4 dereferenceable(4) %i.al, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ig, i64 noundef %i.ii)
          to label %bb.en unwind label %bb.eu, !noalias !27943 ; 2 uses

bb.en:                                            ; preds = %bb.em
  %.not321.i = icmp eq ptr %i.iw, null
  br i1 %.not321.i, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ix = load i32, ptr %i.al, align 4, !range !134, !noalias !27927, !noundef !43
  %i.iy = call noundef ptr @"_ZN49_$LT$std..fs..File$u20$as$u20$io_close..Close$GT$5close17h5fe12e7dd0b55bcdE"(i32 noundef %i.ix), !noalias !27943 ; 2 uses
  %.not322.i = icmp eq ptr %i.iy, null
  br i1 %.not322.i, label %bb.eq, label %bb.es

bb.ep:                                            ; preds = %bb.en
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.8284.0..sroa_idx285.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.iw, ptr %.sroa.8284.0..sroa_idx285.i, align 8, !alias.scope !27925
  %.val342.i = load i32, ptr %i.al, align 4, !range !134, !noalias !27927, !noundef !43
  %i.iz = call noundef i32 @close(i32 noundef %.val342.i) #67, !noalias !27943 ; 0 uses
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !27927
  %.pre.i = load ptr, ptr %i.av, align 8, !noalias !27927
  %.pre620.i = load i64, ptr %i.fq, align 8, !noalias !27927
  br label %bb.et

bb.er:                                            ; preds = %bb.es, %bb.ep, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit

bb.es:                                            ; preds = %bb.eo
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.8293.0..sroa_idx294.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.iy, ptr %.sroa.8293.0..sroa_idx294.i, align 8, !alias.scope !27925
  br label %bb.er

bb.et:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i", %bb.eq
  %i.ja = phi i64 [ %i.fp, %"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i" ], [ %.pre620.i, %bb.eq ]
  %i.jb = phi ptr [ %i.fn, %"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i" ], [ %.pre.i, %bb.eq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !27927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !27927
  call void @_ZN9gix_index2fs8Metadata19from_path_no_follow17hc12e117c55e201bdE(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.ag, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jb, i64 noundef %i.ja), !noalias !27943
  %i.jc = load i64, ptr %i.ag, align 8, !range !60, !noalias !27927, !noundef !43
  %i.jd = trunc nuw i64 %i.jc to i1
  %i.je = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !noalias !27927 ; 2 uses
  br i1 %i.jd, label %bb.ev, label %bb.ew

bb.eu:                                            ; preds = %bb.em
  %i.jg = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i32, ptr %i.al, align 4, !range !134, !noalias !27927, !noundef !43
  %i.jh = call noundef i32 @close(i32 noundef %.val.i) #67, !noalias !27943 ; 0 uses
  br label %common.resume

"_ZN4core3ptr62drop_in_place$LT$alloc..borrow..Cow$LT$std..path..Path$GT$$GT$17hb2557b980d81b948E.exit382.i": ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !27927
  br label %bb.et

bb.ev:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !27927
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4301.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.jf, ptr %.sroa.4301.0..sroa_idx.i, align 8, !alias.scope !27925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !27927
  br label %bb.ez

bb.ew:                                            ; preds = %bb.et
  %.sroa.4299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4180.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4299.0..sroa_idx.i, i64 136, i1 false), !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !27927
  store ptr %i.jf, ptr %i.ah, align 8, !noalias !27927
  call void @"_ZN9gix_index5entry4stat40_$LT$impl$u20$gix_index..entry..Stat$GT$7from_fs17h8040255f7c0bfbb0E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ah), !noalias !27943
  %i.ji = load i32, ptr %i.ai, align 8, !range !76, !noalias !27927, !noundef !43
  %i.jj = trunc nuw i32 %i.ji to i1
  br i1 %i.jj, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !27927, !noundef !43
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.jn = load i32, ptr %i.jm, align 8, !range !132, !noalias !27927, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !27927
  store i64 -9223372036854775797, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.jl, ptr %.sroa.4308.0..sroa_idx.i, align 8, !alias.scope !27925
  %.sroa.5309.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i32 %i.jn, ptr %.sroa.5309.0..sroa_idx.i, align 8, !alias.scope !27925
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.sroa.0303.0.copyload.i = load i32, ptr %i.jo, align 4, !noalias !27927
  %.sroa.4304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4304.0.copyload.i = load i64, ptr %.sroa.4304.0..sroa_idx.i, align 8, !noalias !27927
  %.sroa.5305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5305.0.copyload.i = load i32, ptr %.sroa.5305.0..sroa_idx.i, align 8, !noalias !27927
  %.sroa.6306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %.sroa.4184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4184.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6306.0..sroa_idx.i, i64 20, i1 false), !noalias !27992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !27927
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.sroa.0303.0.copyload.i, ptr %i.jp, align 8, !alias.scope !27926
  %.sroa.2182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i64 %.sroa.4304.0.copyload.i, ptr %.sroa.2182.0..sroa_idx.i, align 4, !alias.scope !27926
  %.sroa.3183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %.sroa.5305.0.copyload.i, ptr %.sroa.3183.0..sroa_idx.i, align 4, !alias.scope !27926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40

bb.ez:                                            ; preds = %bb.ex, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit

bb.fa:                                            ; preds = %bb.ek
  store i64 -9223372036854775796, ptr %i.bb, align 8, !alias.scope !27925
  %.sroa.4275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.iv, ptr %.sroa.4275.0..sroa_idx.i, align 8, !alias.scope !27925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !27927
  br label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread

common.resume:                                    ; preds = %.body, %9, %bb.gc, %bb.gd, %bb.fu, %bb.fr, %bb.fo, %.body.i, %.body.i.i.i, %bb.cr, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i", %bb.dk, %bb.dn, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ef, %bb.eu, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.thread"
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i.thread" ], [ %.pn.i, %bb.dn ], [ %i.ic, %bb.ef ], [ %.pn335.i, %bb.ea ], [ %.pn335.i, %bb.ed ], [ %.pn335.i, %bb.eb ], [ %.pn335.i, %"_ZN4core3ptr44drop_in_place$LT$gix_filter..driver..Key$GT$17h2145d2d04727a3c2E.exit.i" ], [ %i.fw, %bb.cr ], [ %i.jg, %bb.eu ], [ %.pn85.i.i.i, %.body.i.i.i ], [ %.pn335.i, %bb.ec ], [ %i.he, %bb.dk ], [ %i.ky, %.body ], [ %i.ky, %bb.gd ], [ %i.ky, %bb.gc ], [ %i.ky, %9 ], [ %i.kh, %.body.i ], [ %i.kh, %bb.fo ], [ %i.kx, %bb.fu ], [ %i.kp, %bb.fr ]
  resume { ptr, i32 } %common.resume.op

_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread: ; preds = %.thread.i, %bb.db, %bb.dw, %bb.fa
  %.ph = phi i64 [ -9223372036854775796, %bb.fa ], [ %i.hy, %bb.dw ], [ -9223372036854775796, %bb.db ], [ -9223372036854775796, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.fb

_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40: ; preds = %bb.cm, %bb.cm, %bb.dx, %bb.ey, %bb.dm
  %.sroa.3.0.copyload110 = phi i64 [ %i.hg, %bb.dm ], [ %.sroa.0311.0.i, %bb.dx ], [ %i.ii, %bb.ey ], [ 0, %bb.cm ], [ 0, %bb.cm ]
  %.sroa.05.0.copyload108 = phi i64 [ %.sroa.0448.0.copyload.i, %bb.dm ], [ -9223372036854775808, %bb.dx ], [ -9223372036854775808, %bb.ey ], [ -9223372036854775808, %bb.cm ], [ -9223372036854775808, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.fc

_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit: ; preds = %bb.ct, %bb.cv, %bb.dg, %bb.dz, %bb.eh, %bb.er, %bb.ez
  %.pr = load i64, ptr %i.bb, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !27927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not = icmp eq i64 %.pr, -9223372036854775789
  br i1 %.not, label %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge, label %bb.fb

_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge: ; preds = %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.05.0.copyload.pre = load i64, ptr %.phi.trans.insert, align 8
  %.sroa.3.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.3.0.copyload.pre = load i64, ptr %.sroa.3.0..sroa_idx.phi.trans.insert, align 8
  br label %bb.fc

bb.fb:                                            ; preds = %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit
  %i.jq = phi i64 [ %.ph, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread ], [ %.pr, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit ] ; 2 uses
  %i.jr = icmp ne i64 %i.jq, -9223372036854775794
  call void @llvm.assume(i1 %i.jr)
  %i.js = icmp eq i64 %i.jq, -9223372036854775796
  br i1 %i.js, label %bb.ff, label %bb.fg

bb.fc:                                            ; preds = %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40
  %.sroa.3.0.copyload = phi i64 [ %.sroa.3.0.copyload.pre, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge ], [ %.sroa.3.0.copyload110, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40 ] ; 2 uses
  %.sroa.05.0.copyload = phi i64 [ %.sroa.05.0.copyload.pre, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit._crit_edge ], [ %.sroa.05.0.copyload108, %_ZN18gix_worktree_state8checkout5entry8checkout17h3b652f0b5edf6770E.exit.thread40 ] ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.not26 = icmp eq i64 %.sroa.05.0.copyload, -9223372036854775808
  br i1 %.not26, label %bb.fd, label %.thread

bb.fd:                                            ; preds = %bb.fc
  %i.jt = atomicrmw add ptr %7, i64 %.sroa.3.0.copyload monotonic, align 8 ; 0 uses
  %i.ju = atomicrmw add ptr %6, i64 1 monotonic, align 8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.fd, %bb.fc
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.copyload, ptr %i.jv, align 8
  %.sroa.3.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx7, align 8
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, i64 64, i1 false)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.fx

bb.fe:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.pre = load i64, ptr %i.bb, align 8, !range !115 ; 3 uses
  %.not28 = icmp eq i64 %.pre, -9223372036854775789
  br i1 %.not28, label %bb.fx, label %bb.fy

bb.ff:                                            ; preds = %bb.fb
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.jx = invoke noundef zeroext i1 @_ZN18gix_worktree_state8checkout5chunk12is_collision17h30a94e0283b152b5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 %6)
          to label %bb.fv unwind label %.body

bb.fg:                                            ; preds = %bb.fv, %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.az, ptr noundef nonnull align 8 dereferenceable(248) %i.bb, i64 248, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %8, i64 2006
  %i.jz = load i8, ptr %i.jy, align 2, !range !49, !noundef !43
  %i.ka = trunc nuw i8 %i.jz to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !27993)
  call void @llvm.experimental.noalias.scope.decl(metadata !27994)
  call void @llvm.experimental.noalias.scope.decl(metadata !27995)
  br i1 %i.ka, label %bb.fh, label %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27996
  %i.kb = icmp slt i64 %3, 0
  br i1 %i.kb, label %bb.fj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !55

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.fh
  %i.kc = icmp eq i64 %3, 0                       ; 2 uses
  br i1 %i.kc, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !27997
  %i.kd = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 1) #67, !noalias !27997 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.fi ], [ 0, %bb.fh ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc.i unwind label %bb.fu, !noalias !27996

.noexc.i:                                         ; preds = %bb.fj
  unreachable

bb.fk:                                            ; preds = %bb.fi, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.kd, %bb.fi ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !27998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(248) %i.az, i64 248, i1 false), !noalias !27999
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !28000
  %i.kf = call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #67, !noalias !28000 ; 3 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %bb.fl, label %bb.fp, !prof !51

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 248) #73
          to label %.noexc4.i unwind label %bb.fm, !noalias !27996

.noexc4.i:                                        ; preds = %bb.fl
  unreachable

bb.fm:                                            ; preds = %bb.fl
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN4core3ptr56drop_in_place$LT$gix_worktree_state..checkout..Error$GT$17h3b71c8796c2600a9E"(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.a) #75
          to label %.body.i unwind label %bb.fn, !noalias !27996

bb.fn:                                            ; preds = %bb.fm
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !27996
  unreachable

.body.i:                                          ; preds = %bb.fm
  br i1 %i.kc, label %common.resume, label %bb.fo

bb.fo:                                            ; preds = %.body.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !28001
  br label %common.resume

bb.fp:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.kf, ptr noundef nonnull align 8 dereferenceable(248) %i.az, i64 248, i1 false), !noalias !27999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27996
  store i64 %3, ptr %i.b, align 8, !noalias !27996
  %.sroa.5.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx8.i, align 8, !noalias !27996
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !27996
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.kf, ptr %i.kj, align 8, !noalias !27996
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @653, ptr %i.kk, align 8, !noalias !27996
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !28002, !noundef !43 ; 3 uses
  %i.kn = load i64, ptr %4, align 8, !range !45, !alias.scope !28002, !noundef !43
  %i.ko = icmp eq i64 %i.km, %i.kn
  br i1 %i.ko, label %bb.fq, label %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit.thread

bb.fq:                                            ; preds = %bb.fp
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h95f9d5801da54e04E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @655)
          to label %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit.thread unwind label %bb.fr, !noalias !28003

bb.fr:                                            ; preds = %bb.fq
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$gix_worktree_state..checkout..ErrorRecord$GT$17hb2936a4e44343316E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b) #75
          to label %common.resume unwind label %bb.fs, !noalias !28004

bb.fs:                                            ; preds = %bb.fr
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !28003
  unreachable

_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit.thread: ; preds = %bb.fp, %bb.fq
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !alias.scope !28002, !nonnull !43, !noundef !43
  %i.kt = getelementptr inbounds nuw [40 x i8], ptr %i.ks, i64 %i.km
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kt, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !28004
  %i.ku = add i64 %i.km, 1
  store i64 %i.ku, ptr %i.kl, align 8, !alias.scope !28002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27996
  %i.kv = atomicrmw add ptr %6, i64 1 monotonic, align 8, !noalias !27996 ; 0 uses
  br label %bb.gb

bb.ft:                                            ; preds = %bb.fu
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !27999
  unreachable

bb.fu:                                            ; preds = %bb.fj
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$gix_worktree_state..checkout..Error$GT$17h3b71c8796c2600a9E"(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.az) #75
          to label %common.resume unwind label %bb.ft, !noalias !27999

.body:                                            ; preds = %bb.ff, %bb.fw
  %.sroa.016.0 = phi i1 [ false, %bb.fw ], [ true, %bb.ff ]
  %i.ky = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kz = load i64, ptr %i.bb, align 8, !range !115, !noundef !43 ; 2 uses
  switch i64 %i.kz, label %bb.gc [
    i64 -9223372036854775789, label %common.resume
    i64 -9223372036854775796, label %9
  ]

bb.fv:                                            ; preds = %bb.ff
  br i1 %i.jx, label %bb.fw, label %bb.fg

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.la = load ptr, ptr %i.jw, align 8, !nonnull !43, !noundef !43
  store ptr %i.la, ptr %i.ba, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.lb, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.413.0..sroa_idx, align 8
  store i64 -9223372036854775789, ptr %0, align 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %bb.fe unwind label %.body

bb.fx:                                            ; preds = %.thread, %bb.ga, %bb.gb, %bb.fz, %bb.fy, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  ret void

bb.fy:                                            ; preds = %bb.fe
  %i.lc = icmp ne i64 %.pre, -9223372036854775794
  call void @llvm.assume(i1 %i.lc)
  %i.ld = icmp eq i64 %.pre, -9223372036854775796
  br i1 %i.ld, label %bb.fx, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @"_ZN4core3ptr56drop_in_place$LT$gix_worktree_state..checkout..Error$GT$17h3b71c8796c2600a9E"(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.bb)
  br label %bb.fx

_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit: ; preds = %bb.fg
  %.sroa.031.0.copyload32 = load i64, ptr %i.az, align 8, !alias.scope !28005 ; 2 uses
  %.not27 = icmp eq i64 %.sroa.031.0.copyload32, -9223372036854775789
  br i1 %.not27, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit
  %i.le = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %i.le, i64 240, i1 false)
  store i64 %.sroa.031.0.copyload32, ptr %0, align 8
  br label %bb.fx

bb.gb:                                            ; preds = %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit.thread, %_ZN18gix_worktree_state8checkout5chunk12handle_error17he8fa4483e35268fbE.exit
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.lf, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.419.0..sroa_idx, align 8
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.fx

9:                                                ; preds = %.body
  br i1 %.sroa.016.0, label %bb.gd, label %common.resume

bb.gc:                                            ; preds = %.body
  %i.lg = icmp ne i64 %i.kz, -9223372036854775794
  call void @llvm.assume(i1 %i.lg)
  invoke void @"_ZN4core3ptr56drop_in_place$LT$gix_worktree_state..checkout..Error$GT$17h3b71c8796c2600a9E"(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.bb) #75
          to label %common.resume unwind label %bb.ge

bb.gd:                                            ; preds = %9
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jw) #75
          to label %common.resume unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN18gix_worktree_state8checkout5entry16try_op_or_unlink17h9451fbf5a35158baE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i1 noundef zeroext %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !28013 {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 7 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !noalias !28014, !nonnull !43, !noundef !43
  %.sroa.5.0.in.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.i = load i64, ptr %.sroa.5.0.in.i, align 8, !noalias !28014, !noundef !43
  %i.e = tail call noundef ptr @_ZN6gix_fs7symlink6create17h6bcaf1b5489d6b2fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.5.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.0.0.in.i22 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.i23 = load ptr, ptr %.sroa.0.0.in.i22, align 8, !noalias !28015, !nonnull !43, !noundef !43 ; 2 uses
  %.sroa.5.0.in.i24 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.i25 = load i64, ptr %.sroa.5.0.in.i24, align 8, !noalias !28015, !noundef !43 ; 2 uses
  %i.f = tail call noundef ptr @_ZN6gix_fs7symlink6create17h6bcaf1b5489d6b2fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i23, i64 noundef %.sroa.5.0.i25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) ; 4 uses
  store ptr %i.f, ptr %i.d, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

.thread:                                          ; preds = %bb.h, %bb.p
  %.pn34 = phi { ptr, i32 } [ %i.l, %bb.h ], [ %lpad.thr_comm.split-lp, %bb.p ]
  resume { ptr, i32 } %.pn34

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef zeroext i1 @_ZN6gix_fs7symlink18is_collision_error17hbba7d92ec5537ee8E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.f unwind label %bb.p

bb.e:                                             ; preds = %bb.f, %bb.c, %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h4bee5edf1d8f488dE.exit"
  %.sroa.0.0 = phi ptr [ %i.n, %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h4bee5edf1d8f488dE.exit" ], [ null, %bb.c ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  br i1 %i.g, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28016
  invoke void @_ZN3std3sys2fs16symlink_metadata17h36601b41e73268cdE(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  %i.h = load i64, ptr %i.a, align 8, !range !75, !noalias !28016, !noundef !43 ; 2 uses
  %i.i = icmp eq i64 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !28017 ; 2 uses
  br i1 %i.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.l, %bb.g, %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #75
          to label %.thread unwind label %bb.o

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28016
  br label %bb.n

bb.j:                                             ; preds = %.noexc
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28016
  store i64 %i.h, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = invoke noundef ptr @_ZN18gix_worktree_state8checkout5entry27try_unlink_path_recursively17ha4a0b1721b289858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.b)
          to label %bb.k unwind label %bb.h       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.n = invoke noundef ptr @_ZN6gix_fs7symlink6create17h6bcaf1b5489d6b2fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i23, i64 noundef %.sroa.5.0.i25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h4bee5edf1d8f488dE.exit" unwind label %bb.h

"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h4bee5edf1d8f488dE.exit": ; preds = %bb.l
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.m:                                             ; preds = %bb.b, %bb.e, %bb.n
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %bb.n ], [ %.sroa.0.0, %bb.e ], [ %i.e, %bb.b ]
  ret ptr %.sroa.0.1

bb.n:                                             ; preds = %bb.k, %bb.i
  %.sroa.0.2 = phi ptr [ %i.k, %bb.i ], [ %i.m, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.o:                                             ; preds = %bb.p, %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74
  unreachable

bb.p:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc4d6b9640ccaa233E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #75
          to label %.thread unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18gix_worktree_state8checkout5entry16try_op_or_unlink17hf783ff5e2a1a8325E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !28030 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 8 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [176 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  br i1 %3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28032
  %i.h = load ptr, ptr %4, align 8, !alias.scope !28031, !nonnull !43, !align !48, !noundef !43
  %i.i = load i8, ptr %i.h, align 1, !range !49, !noalias !28032, !noundef !43
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit"

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !28031, !nonnull !43, !align !48, !noundef !43
  %i.m = load i8, ptr %i.l, align 1, !range !49, !noalias !28032, !noundef !43 ; 2 uses
  %i.n = xor i8 %i.m, 1
  br label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit"

"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit": ; preds = %bb.b, %bb.c
  %.sroa.016.0.i = phi i8 [ %i.m, %bb.c ], [ 1, %bb.b ]
  %.sroa.7.0.i = phi i8 [ %i.n, %bb.c ], [ 0, %bb.b ]
  store i32 131072, ptr %i.d, align 4, !noalias !28032
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 438, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4, !noalias !28032
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i, align 4, !noalias !28032
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %.sroa.016.0.i, ptr %.sroa.6.0..sroa_idx8.i, align 4, !noalias !28032
  %.sroa.7.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx10.i, align 1, !noalias !28032
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !28031, !nonnull !43, !align !44, !noundef !43 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !28032, !nonnull !43, !align !48, !noundef !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !28032, !noundef !43
  call void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.q, i64 noundef %i.s), !noalias !28031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28032
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28034
  %i.t = load ptr, ptr %4, align 8, !alias.scope !28033, !nonnull !43, !align !48, !noundef !43 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !49, !noalias !28034, !noundef !43
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit27"

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !28033, !nonnull !43, !align !48, !noundef !43
  %i.y = load i8, ptr %i.x, align 1, !range !49, !noalias !28034, !noundef !43 ; 2 uses
  %i.z = xor i8 %i.y, 1
  br label %"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit27"

"_ZN18gix_worktree_state8checkout5entry8checkout28_$u7b$$u7b$closure$u7d$$u7d$17h59d95ef923ea7a0dE.exit27": ; preds = %bb.d, %bb.e
  %.sroa.016.0.i18 = phi i8 [ %i.y, %bb.e ], [ 1, %bb.d ]
  %.sroa.7.0.i19 = phi i8 [ %i.z, %bb.e ], [ 0, %bb.d ]
  store i32 131072, ptr %i.c, align 4, !noalias !28034
  %.sroa.0.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 438, ptr %.sroa.0.sroa.4.0..sroa_idx.i20, align 4, !noalias !28034
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx.i21, align 4, !noalias !28034
  %.sroa.6.0..sroa_idx8.i25 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %.sroa.016.0.i18, ptr %.sroa.6.0..sroa_idx8.i25, align 4, !noalias !28034
  %.sroa.7.0..sroa_idx10.i26 = getelementptr inbounds nuw i8, ptr %i.c, i64 13
end_hunk_0
begin_hunk_1_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h563f9dabc6c4c165E":bb.a
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !89181, !noalias !89149, !noundef !43 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = load i64, ptr %i.fg, align 8, !noalias !89182, !noundef !43
  %i.fj = add i64 %i.fi, -1                       ; 2 uses
  store i64 %i.fj, ptr %i.fg, align 8, !noalias !89182
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0635c6dc3356ee1aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %bb.az unwind label %.thread126.i.i, !noalias !89149

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !89149
  br label %bb.bc

bb.ba:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !89149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !89149
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ao, ptr noundef nonnull align 8 dereferenceable(20) %i.fl, i64 20, i1 false), !noalias !89149
  invoke void @_ZN18nickel_lang_parser10identifier8LocIdent10into_label17hde5434c8a1c25122E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.ao)
          to label %.thread324.i.i unwind label %bb.bb, !noalias !89149

bb.bb:                                            ; preds = %bb.ba
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %.val33.i.i = load ptr, ptr %i.aq, align 8, !noalias !89149, !noundef !43
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha10cf2cfeec69f0bE"(ptr %.val33.i.i) #75
          to label %.critedge30.i.i unwind label %bb.t, !noalias !89149

.thread324.i.i:                                   ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !89149
  %i.fn = load ptr, ptr %i.aq, align 8, !noalias !89149, !noundef !43
  %.sroa.0111.0.copyload112.i.i = load i64, ptr %i.ap, align 8, !noalias !89149
  %.sroa.6113.0..sroa_idx114.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.6113.0.copyload115.i.i = load ptr, ptr %.sroa.6113.0..sroa_idx114.i.i, align 8, !noalias !89149
  %.sroa.7116.0..sroa_idx117.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.7116.0.copyload118.i.i = load i64, ptr %.sroa.7116.0..sroa_idx117.i.i, align 8, !noalias !89149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !89149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !89149
  br label %bb.bc

bb.bc:                                            ; preds = %.thread324.i.i, %bb.az
  %.sroa.010.0333.i.i = phi ptr [ %i.fn, %.thread324.i.i ], [ %i.dd, %bb.az ] ; 8 uses
  %.sroa.7116.0332.i.i = phi i64 [ %.sroa.7116.0.copyload118.i.i, %.thread324.i.i ], [ %.sroa.7116.0.copyload.i.i, %bb.az ] ; 2 uses
  %.sroa.6113.0331.i.i = phi ptr [ %.sroa.6113.0.copyload115.i.i, %.thread324.i.i ], [ %.sroa.6113.0.copyload.i.i, %bb.az ] ; 6 uses
  %.sroa.0111.0330.i.i = phi i64 [ %.sroa.0111.0.copyload112.i.i, %.thread324.i.i ], [ %.sroa.0111.0.copyload.i.i, %bb.az ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !89149
  call void @llvm.experimental.noalias.scope.decl(metadata !89183)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6113.0331.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.sroa.4.i.i.i)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.7116.0332.i.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bd, label %.split2.i.i.i.i.i.i.i.i.i.i, !prof !50

bb.bd:                                            ; preds = %bb.bc
  %i.fo = load i32, ptr %.sroa.6113.0331.i.i, align 1
  %i.fp = xor i32 %i.fo, 1752459591
  %i.fq = getelementptr i8, ptr %.sroa.6113.0331.i.i, i64 4
  %i.fr = load i16, ptr %i.fq, align 1
  %i.fs = zext i16 %i.fr to i32
  %i.ft = xor i32 %i.fs, 25205
  %i.fu = or i32 %i.fp, %i.ft
  %i.fv = icmp ne i32 %i.fu, 0
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i", label %.split2.i.i.i.i.i.i.i.i.i.i, !prof !50

.split2.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !89184
  invoke fastcc void @_ZN10serde_core2de5Error15unknown_variant17hca2c2d32498785f4E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6113.0331.i.i, i64 noundef %.sroa.7116.0332.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @869, i64 noundef 1)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.be, !noalias !89185

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.split2.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.0.copyload7.i.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !89186
  %.sroa.6.0..sroa_idx8.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.6.i.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx8.i.i.i.i.i, align 8, !noalias !89186
  %.sroa.6.i.i.sroa.4.0..sroa.6.0..sroa_idx8.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.sroa.4.0..sroa.6.0..sroa_idx8.i.i.sroa_idx.i.i.i, i64 32, i1 false), !noalias !89186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !89184
  br label %"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i"

bb.be:                                            ; preds = %.split2.i.i.i.i.i.i.i.i.i.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = icmp eq i64 %.sroa.0111.0330.i.i, 0
  br i1 %i.fz, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6113.0331.i.i, i64 noundef %.sroa.0111.0330.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !89187
  br label %bb.bm

"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %bb.bd
  %.sroa.6.i.i.sroa.0.0.i.i.i = phi ptr [ undef, %bb.bd ], [ %.sroa.6.i.i.sroa.0.0.copyload.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i = phi i64 [ -9223372036854775802, %bb.bd ], [ %.sroa.06.0.copyload7.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ga = icmp eq i64 %.sroa.0111.0330.i.i, 0
  br i1 %i.ga, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6113.0331.i.i, i64 noundef %.sroa.0111.0330.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !89188
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i": ; preds = %bb.bg, %"_ZN202_$LT$nickel_lang_package..manifest.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcefa9b9b307c2e39E.exit.i.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.06.0.i.i.i.i.i, -9223372036854775802
  br i1 %.not.i.i.i.i.i, label %bb.bp, label %bb.bh

bb.bh:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.sroa.4.i.i.i, i64 32, i1 false), !noalias !89189
  %i.gb = icmp eq ptr %.sroa.010.0333.i.i, null
  br i1 %i.gb, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gc = ptrtoint ptr %.sroa.010.0333.i.i to i64
  %i.gd = and i64 %i.gc, 3
  %..i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gd, i64 2)
  switch i64 %..i.i.i.i.i.i.i.i.i.i, label %bb.bo [
    i64 2, label %.noexc.i.i.i.i.i
    i64 0, label %bb.bj
  ], !prof !53

.noexc.i.i.i.i.i:                                 ; preds = %bb.bi
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1197, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1200, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @383) #73, !noalias !89149
  unreachable

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !89190
  store ptr %.sroa.010.0333.i.i, ptr %i.ab, align 8, !noalias !89190
  %i.ge = load i64, ptr %.sroa.010.0333.i.i, align 8, !noalias !89191, !noundef !43 ; 3 uses
  %i.gf = and i64 %i.ge, 72057594037927935
  %i.gg = add nsw i64 %i.gf, -1                   ; 3 uses
  %i.gh = and i64 %i.ge, 1080863910568919040
  %i.gi = icmp ult i64 %i.ge, 864691128455135232
  call void @llvm.assume(i1 %i.gi)
  %i.gj = or i64 %i.gg, %i.gh
  store i64 %i.gj, ptr %.sroa.010.0333.i.i, align 8, !noalias !89191
  %i.gk = icmp ugt i64 %i.gg, 72057594037927935
  br i1 %i.gk, label %.noexc3.i.i.i.i.i, label %bb.bk, !prof !46

bb.bk:                                            ; preds = %bb.bj
  %i.gl = icmp eq i64 %i.gg, 0
  br i1 %i.gl, label %bb.bl, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i.i.i.i.i.i"

.noexc3.i.i.i.i.i:                                ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !89191
  store ptr @2427, ptr %i.aa, align 8, !noalias !89191
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 1, ptr %i.gm, align 8, !noalias !89191
  %i.gn = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %i.gn, align 8, !noalias !89191
  %i.go = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.go, align 8, !noalias !89191
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %i.gp, align 8, !noalias !89191
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2428) #73, !noalias !89149
  unreachable

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab), !noalias !89149
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !89190
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bf, %bb.be
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$nickel_lang_core..deserialize..VariantDeserializer$GT$17he190f93aad2daa5aE"(ptr %.sroa.010.0333.i.i) #75
          to label %.critedge30.i.i unwind label %bb.bn, !noalias !89192

bb.bn:                                            ; preds = %bb.bm
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #74, !noalias !89192
  unreachable

bb.bo:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hd23f685308e28bd9E.exit.i.i.i.i.i.i.i.i.i.i", %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.4.i.i.i)
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.312.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i.i.i, i64 32, i1 false), !noalias !89193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.06.0.i.i.i.i.i, ptr %i.gr, align 8, !alias.scope !89194
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.i.i.sroa.0.0.i.i.i, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !alias.scope !89194
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !89194
  br label %"_ZN19nickel_lang_package8manifest1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$11deserialize17ha3b1d7ff99afdadcE.exit"

bb.bp:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hde3f229cc2457399E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !89195)
  %.not.i.i.i.i = icmp eq ptr %.sroa.010.0333.i.i, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %.noexc82.i.i

.noexc82.i.i:                                     ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !89196
  call void @_ZN16nickel_lang_core4eval5value11NickelValue7content17h5471752e14fb6256E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull %.sroa.010.0333.i.i), !noalias !89149
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !89196 ; 4 uses
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.12.0.copyload.i.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !89196 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.15.0.copyload.i.i.i.i = load ptr, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !89196 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !89196
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %bb.bq [
    i64 30, label %.thread.i.i.i.i
    i64 20, label %.noexc83.i.i
  ]

.thread.i.i.i.i:                                  ; preds = %.noexc82.i.i, %bb.bp
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.gs, align 8, !alias.scope !89197
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !89197
  br label %"_ZN19nickel_lang_package8manifest1_96_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_package..manifest..IndexId$GT$11deserialize17ha3b1d7ff99afdadcE.exit"

.noexc83.i.i:                                     ; preds = %.noexc82.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload.i.i.i.i), "nonnull"(ptr %.sroa.15.0.copyload.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !89196
  call void %.sroa.15.0.copyload.i.i.i.i(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.z, ptr noundef nonnull %.sroa.12.0.copyload.i.i.i.i), !noalias !89149, !inline_history !88973
  call void @llvm.experimental.noalias.scope.decl(metadata !89198)
  call void @llvm.experimental.noalias.scope.decl(metadata !89199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !89200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !89200
  %i.gt = load i64, ptr %i.z, align 8, !range !66, !alias.scope !89199, !noalias !89196, !noundef !43
  %.not.i.i13.i.i.i = icmp eq i64 %i.gt, -9223372036854775808
  br i1 %.not.i.i13.i.i.i, label %bb.bt, label %bb.bs

bb.bq:                                            ; preds = %.noexc82.i.i
  %2 = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i, 23
  call void @llvm.assume(i1 %2)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #67, !noalias !89201
  %i.gu = call noundef dereferenceable_or_null(13) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 13, i64 noundef range(i64 1, 9) 1) #67, !noalias !89201 ; 5 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.br, label %bb.el

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #73
          to label %.noexc.i.i.i.i unwind label %bb.fb, !noalias !89196

.noexc.i.i.i.i:                                   ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %.noexc83.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.z, i64 88, i1 false), !noalias !89202
  br label %bb.bu

bb.bt:                                            ; preds = %.noexc83.i.i
  %i.gw = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 8, !range !49, !noalias !89203, !noundef !43
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i", !prof !50

._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.bt
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.gw, align 8, !noalias !89204
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.pre1.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !89204
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i.i.i.i.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i": ; preds = %bb.bt
  %i.ha = call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !89149 ; 2 uses
  %i.hb = extractvalue { i64, i64 } %i.ha, 0
  %i.hc = extractvalue { i64, i64 } %i.ha, 1      ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %i.hc, ptr %i.hd, align 8, !noalias !89205
  store i8 1, ptr %i.gx, align 8, !noalias !89205
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i.i.i.i.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i.i.i.i.i": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i
  %.pre-phi140.i.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i ], [ %i.hc, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i" ]
  %i.he = phi i64 [ %.pre.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he2f4aecbdfe21424E.exit_crit_edge.i.i.i.i.i.i.i ], [ %i.hb, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce8715a73596a4f8E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hf = add i64 %i.he, 1
  store i64 %i.hf, ptr %i.gw, align 8, !noalias !89204
  store i64 0, ptr %i.u, align 8, !noalias !89200
  %.sroa.4.0..sroa_idx.i31.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i31.i.i.i.i, align 8, !noalias !89200
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !89200
  %.sroa.6.0..sroa_idx.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i32.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false), !noalias !89200
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %i.he, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !89200
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 %.pre-phi140.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !89200
  %i.hg = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store i8 0, ptr %i.hg, align 8, !noalias !89200
  %i.hh = getelementptr inbounds nuw i8, ptr %i.u, i64 81
  store i8 0, ptr %i.hh, align 1, !noalias !89200
  %i.hi = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr null, ptr %i.hi, align 8, !noalias !89200
  br label %bb.bu

bb.bu:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5fe1768b82e59416E.exit.i.i.i.i.i", %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !89200
  call void @llvm.experimental.noalias.scope.decl(metadata !89206)
  call void @llvm.experimental.noalias.scope.decl(metadata !89207)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !89207, !noalias !89200, !noundef !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !89208
  invoke void @_ZN16nickel_lang_core11deserialize18RecordDeserializer3new17hdedec7fe68762b84E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.v)
          to label %.noexc.i.i14.i.i.i unwind label %bb.ee, !noalias !89200

.noexc.i.i14.i.i.i:                               ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !89209)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 4 uses
  %i.hn = load ptr, ptr %i.hl, align 8, !alias.scope !89210, !noalias !89211, !nonnull !43, !noundef !43
  %i.ho = load ptr, ptr %i.hm, align 8, !alias.scope !89210, !noalias !89211, !nonnull !43, !noundef !43 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hn
  br i1 %i.hp, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i._crit_edge.thread.i.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i": ; preds = %.noexc.i.i14.i.i.i
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5331.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6332.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5328.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6329.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.hs = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5325.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6326.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cl, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i"
  %i.ht = phi ptr [ %i.ho, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %i.iz, %bb.cl ] ; 4 uses
  %.sroa.0193.0472.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.0193.1.i.i.i.i.i.i.i, %bb.cl ] ; 19 uses
  %.sroa.14.0471.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.14.1.i.i.i.i.i.i.i, %bb.cl ] ; 16 uses
  %.sroa.17.0470.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.17.1.i.i.i.i.i.i.i, %bb.cl ] ; 4 uses
  %.sroa.0208.0469.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.0208.1.i.i.i.i.i.i.i, %bb.cl ] ; 19 uses
  %.sroa.14215.0468.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.14215.1.i.i.i.i.i.i.i, %bb.cl ] ; 16 uses
  %.sroa.17220.0467.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.17220.1.i.i.i.i.i.i.i, %bb.cl ] ; 4 uses
  %.sroa.0225.0466.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.0225.1.i.i.i.i.i.i.i, %bb.cl ] ; 19 uses
  %.sroa.12.0465.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.12.1.i.i.i.i.i.i.i, %bb.cl ] ; 15 uses
  %.sroa.16.0464.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.lr.ph.i.i.i.i.i.i.i" ], [ %.sroa.16.1.i.i.i.i.i.i.i, %bb.cl ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89212)
  call void @llvm.experimental.noalias.scope.decl(metadata !89213)
  call void @llvm.experimental.noalias.scope.decl(metadata !89214)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  store ptr %i.hu, ptr %i.hm, align 8, !alias.scope !89215, !noalias !89211
  %.sroa.017.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ht, align 8, !noalias !89216 ; 3 uses
  %.not.i.i.i.i.i.i.i15.i.i.i = icmp eq i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i15.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i._crit_edge.i.i.i.i.i.i.i", label %bb.bv

bb.bv:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h484d3e3701f68078E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.718.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.718.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !89217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !89218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 8 dereferenceable(20) %i.hv, i64 20, i1 false), !noalias !89217
  %i.hw = load i64, ptr %i.t, align 8, !range !66, !alias.scope !89219, !noalias !89211, !noundef !43
  %i.hx = icmp eq i64 %i.hw, -9223372036854775808
  br i1 %i.hx, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h62fe4214e2c2c7b8E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.bx, !noalias !89220

bb.bx:                                            ; preds = %bb.bw
  %i.hy = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !89221, !noalias !89211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !89220
  br label %.body.i.i.i.i.i.i.i

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bw, %bb.bv
  store i64 %.sroa.017.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !89221, !noalias !89211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !89220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i.i)
  %i.hz = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.j)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !89222 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ia = extractvalue { ptr, i64 } %i.hz, 0      ; 4 uses
  %i.ib = extractvalue { ptr, i64 } %i.hz, 1
  switch i64 %i.ib, label %bb.ce [
    i64 3, label %bb.by
    i64 4, label %bb.bz
  ]

bb.by:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.ic = load i16, ptr %i.ia, align 1
  %i.id = xor i16 %i.ic, 29295
  %i.ie = getelementptr i8, ptr %i.ia, i64 2
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = zext i8 %i.if to i16
  %i.ih = xor i16 %i.ig, 103
  %i.ii = or i16 %i.id, %i.ih
  %i.ij = icmp ne i16 %i.ii, 0
  %i.ik = zext i1 %i.ij to i32
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.cb, label %bb.ce

bb.bz:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.im = load i32, ptr %i.ia, align 1
  %i.in = icmp ne i32 %i.im, 1701667182
  %i.io = zext i1 %i.in to i32
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iq = load i32, ptr %i.ia, align 1
  %i.ir = icmp ne i32 %i.iq, 1752457584
  %i.is = zext i1 %i.ir to i32
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.cd, label %bb.ce

.body.i.i.i.i.i.i.i:                              ; preds = %bb.df, %bb.de, %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i, %bb.bx
  %.sroa.12.0444.i.i.i.i.i.i.i = phi ptr [ %.sroa.12.0465.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.12.0.lcssa573.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.12.0.lcssa573.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.12.0465.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.12.0446.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0225.0430.i.i.i.i.i.i.i = phi i64 [ %.sroa.0225.0466.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.0225.0.lcssa576.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.0225.0.lcssa576.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.0225.0466.lcssa511.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0225.0432.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14215.0409.i.i.i.i.i.i.i = phi ptr [ %.sroa.14215.0468.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.14215.0.lcssa579.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.14215.0.lcssa579.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.14215.0468.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14215.0411.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0208.0395.i.i.i.i.i.i.i = phi i64 [ %.sroa.0208.0469.i.i.i.i.i.i.i, %bb.bx ], [ -9223372036854775808, %bb.df ], [ -9223372036854775808, %bb.de ], [ %.sroa.0208.0469.lcssa529.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0208.0397.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.14.0374.i.i.i.i.i.i.i = phi ptr [ %.sroa.14.0471.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.14.0.lcssa583.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.14.0.lcssa583.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.14.0471.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14.0376.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0193.0360.i.i.i.i.i.i.i = phi i64 [ %.sroa.0193.0472.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.0193.0.lcssa585.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.0193.0.lcssa585.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.0193.0472.lcssa547.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0193.0362.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.062.1.i.i.i.i.i.i.i = phi i8 [ 1, %bb.bx ], [ %.sroa.062.4.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.062.4.i.i.i.i.i.i.i, %bb.de ], [ 1, %.loopexit.i.i.i.i.i.i.i ], [ 1, %.loopexit.split-lp.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hy, %bb.bx ], [ %i.jp, %bb.df ], [ %i.jp, %bb.de ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ]
  switch i64 %.sroa.0225.0430.i.i.i.i.i.i.i, label %bb.dm [
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit186.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h418846e5985b1709E.exit186.i.i.i.i.i.i.i"
  ]

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ct, %bb.cn, %bb.cg, %bb.ce, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0193.0472.lcssa547.i.i.i.i.i.i.i = phi i64 [ %.sroa.0193.0472.i.i.i.i.i.i.i, %bb.ce ], [ %.sroa.0193.0472.i.i.i.i.i.i.i, %bb.ct ], [ %.sroa.0193.0472.i.i.i.i.i.i.i, %bb.cn ], [ -9223372036854775808, %bb.cg ], [ %.sroa.0193.0472.i.i.i.i.i.i.i, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.0208.0469.lcssa529.i.i.i.i.i.i.i = phi i64 [ %.sroa.0208.0469.i.i.i.i.i.i.i, %bb.ce ], [ %.sroa.0208.0469.i.i.i.i.i.i.i, %bb.ct ], [ -9223372036854775808, %bb.cn ], [ %.sroa.0208.0469.i.i.i.i.i.i.i, %bb.cg ], [ %.sroa.0208.0469.i.i.i.i.i.i.i, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.0225.0466.lcssa511.i.i.i.i.i.i.i = phi i64 [ %.sroa.0225.0466.i.i.i.i.i.i.i, %bb.ce ], [ -9223372036854775808, %bb.ct ], [ %.sroa.0225.0466.i.i.i.i.i.i.i, %bb.cn ], [ %.sroa.0225.0466.i.i.i.i.i.i.i, %bb.cg ], [ %.sroa.0225.0466.i.i.i.i.i.i.i, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..Field$GT$$GT$17h9e76bce5a74e78d2E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

end_hunk_1
