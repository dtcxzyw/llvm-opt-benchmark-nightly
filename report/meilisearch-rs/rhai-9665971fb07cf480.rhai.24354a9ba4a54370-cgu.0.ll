Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@_ZN4rhai8packages10blob_basic14blob_functions6retain17h08055476cd6d67b6E:bb.a

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17ha7f99af054d38dc8E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !42896
  %i.u = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.01.0.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !42896 ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.sroa.01.0.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %.sroa.01.0.i, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %.sroa.01.0.i, 28
  %n.vec = and i64 %.sroa.01.0.i, -32             ; 5 uses
  %i.x = getelementptr i8, ptr %i.q, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !42897
  %wide.load44 = load <16 x i8>, ptr %i.y, align 1, !noalias !42897
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %wide.load, ptr %i.z, align 1, !noalias !42898
  store <16 x i8> %wide.load44, ptr %i.aa, align 1, !noalias !42898
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !42857

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.01.0.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !159

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %.sroa.01.0.i, -4            ; 4 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 %n.vec45
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %next.gep47 = getelementptr i8, ptr %i.q, i64 %index46
  %wide.load48 = load <4 x i8>, ptr %next.gep47, align 1, !noalias !42897
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %index46
  store <4 x i8> %wide.load48, ptr %i.ad, align 1, !noalias !42898
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42858

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %.sroa.01.0.i, %n.vec45
  br i1 %cmp.n50, label %._crit_edge.i.i.i.i.i.i.i.i.thread, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph84 = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ]
  %.ph85 = phi ptr [ %i.q, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.01.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70
          to label %.noexc.i.i.i.i unwind label %bb.k, !noalias !42899

.noexc.i.i.i.i:                                   ; preds = %bb.i
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.af = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph84, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph85, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ag, align 1, !noalias !42897, !noundef !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.af
  store i8 %i.ai, ptr %i.aj, align 1, !noalias !42898
  %i.ak = add nuw nsw i64 %i.af, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !42859

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17ha7f99af054d38dc8E.exit"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.d, %.sroa.01.0.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit

._crit_edge.i.i.i.i.i.i.i.i.thread:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.not.i.i.i.i.i.i.i.i.i.i.i.i26 = icmp eq i64 %i.d, %.sroa.01.0.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i26, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.s, i64 %i.m, i1 false), !noalias !42900
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit

common.resume:                                    ; preds = %.body, %bb.o, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.al, %bb.l ], [ %i.al, %bb.k ], [ %eh.lpad-body, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, %.sroa.01.0.i
  br i1 %.not.i.i.i.i.i.i.i, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.s, i64 %i.m, i1 false), !noalias !42901
  store i64 %i.m, ptr %i.c, align 8, !noalias !42901
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.thread
  %.val7.i.i.i.i.i.i.i.i30.ph = phi i64 [ %.sroa.01.0.i, %._crit_edge.i.i.i.i.i.i.i.i.thread ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ]
  %.sroa.10.0.i.i.i20.i.i28.ph = phi ptr [ %i.u, %._crit_edge.i.i.i.i.i.i.i.i.thread ], [ inttoptr (i64 1 to ptr), %._crit_edge.i.i.i.i.i.i.i.i ]
  store i64 %.sroa.01.0.i, ptr %i.b, align 8, !alias.scope !42902, !noalias !42903
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i20.i.i28.ph, ptr %.sroa.4.0..sroa_idx.i.i39, align 8, !alias.scope !42902, !noalias !42903
  %.sroa.5.0..sroa_idx13.i.i40 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val7.i.i.i.i.i.i.i.i30.ph, ptr %.sroa.5.0..sroa_idx13.i.i40, align 8, !alias.scope !42902, !noalias !42903
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %spec.select.i, i64 noundef range(i64 0, -9223372036854775808) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70
          to label %.noexc unwind label %bb.n

_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit: ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i20.i.i2736 = phi ptr [ %i.u, %bb.j ], [ inttoptr (i64 1 to ptr), %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val7.i.i.i.i.i.i.i.i2934 = phi i64 [ %.sroa.01.0.i, %bb.j ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ] ; 4 uses
  store i64 %i.m, ptr %i.c, align 8, !noalias !42900
  store i64 %.sroa.01.0.i, ptr %i.b, align 8, !alias.scope !42902, !noalias !42903
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i20.i.i2736, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !42902, !noalias !42903
  %.sroa.5.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 %.val7.i.i.i.i.i.i.i.i2934, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !alias.scope !42902, !noalias !42903
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42905)
  %i.am = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.am)
  store i64 %spec.select.i, ptr %i.c, align 8, !alias.scope !42905, !noalias !42904
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.i ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.m, ptr %i.ap, align 8, !alias.scope !42904, !noalias !42905
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.aq, align 8, !alias.scope !42904, !noalias !42905
  store ptr %i.an, ptr %i.a, align 8, !alias.scope !42904, !noalias !42905
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !alias.scope !42904, !noalias !42905
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.as, align 8, !alias.scope !42904, !noalias !42905
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42906)
  %gepdiff = sub nuw nsw i64 %i.m, %spec.select.i ; 9 uses
  %i.at = sub nsw i64 %.sroa.01.0.i, %.val7.i.i.i.i.i.i.i.i2934
  %i.au = icmp ugt i64 %gepdiff, %i.at
  br i1 %i.au, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i", !prof !66

.noexc:                                           ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread
  unreachable

bb.m:                                             ; preds = %.loopexit, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread, %bb.b
  ret void

bb.n:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit.thread
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.n
  %.sroa.4.0..sroa_idx.i.i41 = phi ptr [ %.sroa.4.0..sroa_idx.i.i39, %bb.n ], [ %.sroa.4.0..sroa_idx.i.i, %bb.q ]
  %.val.i = phi i64 [ %.sroa.01.0.i, %bb.n ], [ %.val.i.pre, %bb.q ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.bw, %bb.q ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42907)
  %i.aw = icmp eq i64 %.val.i, 0
  br i1 %i.aw, label %common.resume, label %bb.o

bb.o:                                             ; preds = %.body
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i41, align 8, !alias.scope !42907, !nonnull !55, !noundef !55
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !42907
  br label %common.resume

bb.p:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.val7.i.i.i.i.i.i.i.i2934, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i" unwind label %bb.q, !noalias !42908

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i": ; preds = %bb.p
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !alias.scope !42906, !noalias !42908
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !42906, !noalias !42908
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i", %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit
  %i.ax = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i" ], [ %.sroa.10.0.i.i.i20.i.i2736, %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit ] ; 4 uses
  %i.ay = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit_crit_edge.i" ], [ %.val7.i.i.i.i.i.i.i.i2934, %_ZN4core4iter6traits8iterator8Iterator7collect17hd7fd7a46c6d2ef2eE.exit ] ; 8 uses
  %i.az = ptrtoaddr ptr %i.ax to i64
  %.not11.i.i.i.not = icmp ugt i64 %i.m, %3
  br i1 %.not11.i.i.i.not, label %iter.check68, label %.loopexit

iter.check68:                                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i"
  %min.iters.check53 = icmp samesign ult i64 %gepdiff, 8
  br i1 %min.iters.check53, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check68
  %i.ba = add i64 %spec.select.i, %i.r
  %i.bb = add i64 %i.ay, %i.az
  %i.bc = sub i64 %i.ba, %i.bb
  %diff.check = icmp ugt i64 %i.bc, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check54

vector.main.loop.iter.check54:                    ; preds = %vector.memcheck
  %min.iters.check55 = icmp samesign ult i64 %gepdiff, 32
  br i1 %min.iters.check55, label %vec.epilog.ph72, label %vector.ph56

vector.ph56:                                      ; preds = %vector.main.loop.iter.check54
  %i.bd = and i64 %gepdiff, 24
  %n.vec57 = and i64 %gepdiff, 9223372036854775776 ; 5 uses
  %i.be = add i64 %i.ay, %n.vec57                 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.an, i64 %n.vec57
  %i.bg = getelementptr i8, ptr %i.ax, i64 %i.ay
  br label %vector.body58

vector.body58:                                    ; preds = %vector.ph56, %vector.body58
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next63, %vector.body58 ] ; 3 uses
  %next.gep60 = getelementptr i8, ptr %i.an, i64 %index59 ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load61 = load <16 x i8>, ptr %next.gep60, align 1, !noalias !42909
  %wide.load62 = load <16 x i8>, ptr %i.bh, align 1, !noalias !42909
  %i.bi = getelementptr i8, ptr %i.bg, i64 %index59 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <16 x i8> %wide.load61, ptr %i.bi, align 1, !noalias !42910
  store <16 x i8> %wide.load62, ptr %i.bj, align 1, !noalias !42910
  %index.next63 = add nuw i64 %index59, 32        ; 2 uses
  %i.bk = icmp eq i64 %index.next63, %n.vec57
  br i1 %i.bk, label %middle.block64, label %vector.body58, !llvm.loop !42888

middle.block64:                                   ; preds = %vector.body58
  %cmp.n65 = icmp eq i64 %gepdiff, %n.vec57
  br i1 %cmp.n65, label %.loopexit, label %vec.epilog.iter.check70

vec.epilog.iter.check70:                          ; preds = %middle.block64
  %min.epilog.iters.check71 = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check71, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph72, !prof !160

vec.epilog.ph72:                                  ; preds = %vector.main.loop.iter.check54, %vec.epilog.iter.check70
  %vec.epilog.resume.val66 = phi i64 [ %n.vec57, %vec.epilog.iter.check70 ], [ 0, %vector.main.loop.iter.check54 ]
  %n.vec73 = and i64 %gepdiff, 9223372036854775800 ; 4 uses
  %i.bl = add i64 %i.ay, %n.vec73                 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.an, i64 %n.vec73
  %i.bn = getelementptr i8, ptr %i.ax, i64 %i.ay
  br label %vec.epilog.vector.body74

vec.epilog.vector.body74:                         ; preds = %vec.epilog.vector.body74, %vec.epilog.ph72
  %index75 = phi i64 [ %vec.epilog.resume.val66, %vec.epilog.ph72 ], [ %index.next78, %vec.epilog.vector.body74 ] ; 3 uses
  %next.gep76 = getelementptr i8, ptr %i.an, i64 %index75
  %wide.load77 = load <8 x i8>, ptr %next.gep76, align 1, !noalias !42909
  %i.bo = getelementptr i8, ptr %i.bn, i64 %index75
  store <8 x i8> %wide.load77, ptr %i.bo, align 1, !noalias !42910
  %index.next78 = add nuw i64 %index75, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.bp, label %vec.epilog.middle.block79, label %vec.epilog.vector.body74, !llvm.loop !42889

vec.epilog.middle.block79:                        ; preds = %vec.epilog.vector.body74
  %cmp.n80 = icmp eq i64 %gepdiff, %n.vec73
  br i1 %cmp.n80, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check68, %vector.memcheck, %vec.epilog.iter.check70, %vec.epilog.middle.block79
  %.ph = phi i64 [ %i.ay, %iter.check68 ], [ %i.ay, %vector.memcheck ], [ %i.be, %vec.epilog.iter.check70 ], [ %i.bl, %vec.epilog.middle.block79 ]
  %.ph83 = phi ptr [ %i.an, %iter.check68 ], [ %i.an, %vector.memcheck ], [ %i.bf, %vec.epilog.iter.check70 ], [ %i.bm, %vec.epilog.middle.block79 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bq = phi i64 [ %i.bv, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.br = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.ph83, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  %i.bt = load i8, ptr %i.br, align 1, !noalias !42909, !noundef !55
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bq
  store i8 %i.bt, ptr %i.bu, align 1, !noalias !42910
  %i.bv = add i64 %i.bq, 1                        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.ao
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !42890

bb.q:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #72, !noalias !42906
  %.val.i.pre = load i64, ptr %i.b, align 8, !range !65, !alias.scope !42907
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block64, %vec.epilog.middle.block79, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i"
  %.val7.i.i.i = phi i64 [ %i.ay, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i" ], [ %i.bl, %vec.epilog.middle.block79 ], [ %i.be, %middle.block64 ], [ %i.bv, %.lr.ph.i.i.i ]
  store i64 %.val7.i.i.i, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !alias.scope !42906, !noalias !42911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic14blob_functions6splice17hf882de7b79a29b21E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !55 ; 17 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43048)
  %.val.i = load i64, ptr %0, align 8, !range !65, !alias.scope !43048, !noundef !55 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !43048, !nonnull !55, !noundef !55
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43048
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %1, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp samesign ult i64 %1, %i.b
  br i1 %.not.i, label %.split.i, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.h = sub i64 0, %1
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.b, i64 range(i64 1, -9223372036854775807) %i.h)
  br label %.split.i

.split.i:                                         ; preds = %bb.f, %bb.e
  %.promoted = phi i64 [ %i.i, %bb.f ], [ %1, %bb.e ] ; 16 uses
  %i.j = icmp slt i64 %2, 1
  %i.k = icmp eq i64 %i.b, %.promoted
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %.thread, label %bb.g

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit": ; preds = %bb.c, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit": ; preds = %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", %bb.af, %bb.m, %bb.n, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"
  ret void

bb.g:                                             ; preds = %.split.i
  %i.l = sub nsw i64 %i.b, %.promoted
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.l) ; 4 uses
  %i.m = add nuw i64 %spec.select.i, %.promoted   ; 11 uses
  %.sroa.031.0.copyload = load i64, ptr %3, align 8 ; 6 uses
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.532.0.copyload = load ptr, ptr %.sroa.532.0..sroa_idx, align 8 ; 17 uses
  %.sroa.532.0.copyload129 = ptrtoaddr ptr %.sroa.532.0.copyload to i64 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.0.copyload.fr = freeze i64 %.sroa.7.0.copyload ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43049)
  %i.n = icmp ugt i64 %i.m, %i.b
  br i1 %i.n, label %.invoke.i, label %.lr.ph.preheader.i.i.i, !prof !66

.invoke.i:                                        ; preds = %bb.g
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70
          to label %.cont.i unwind label %bb.h, !noalias !43050

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.h:                                             ; preds = %.invoke.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.p, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.532.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.031.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43051
  br label %.body

.thread:                                          ; preds = %.split.i, %bb.e
  %.sroa.0.0.copyload = load i64, ptr %3, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !55, !noundef !55 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %i.q = icmp sgt i64 %.sroa.5.0.copyload, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43053)
  %i.r = load i64, ptr %0, align 8, !range !65, !alias.scope !43054, !noalias !43055, !noundef !55
  %i.s = sub nsw i64 %i.r, %i.b
  %i.t = icmp ugt i64 %.sroa.5.0.copyload, %i.s
  br i1 %i.t, label %bb.l, label %bb.m, !prof !66

bb.j:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.v, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43056
  br label %.body

bb.l:                                             ; preds = %.thread
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.5.0.copyload, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.j, !noalias !43055

.noexc.i:                                         ; preds = %bb.l
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !43057, !noalias !43055
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i, %.thread
  %i.w = phi i64 [ %i.b, %.thread ], [ %.pre.i.i, %.noexc.i ] ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !43057, !noalias !43055, !nonnull !55, !noundef !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !43058
  %i.ab = add nuw i64 %i.w, %.sroa.5.0.copyload
  store i64 %i.ab, ptr %i.a, align 8, !alias.scope !43057, !noalias !43055
  %i.ac = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ac, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43059
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h5525c597950470caE.exit"

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  store i64 %.promoted, ptr %i.a, align 8, !alias.scope !43060, !noalias !43061
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !43060, !noalias !43061, !nonnull !55, !noundef !55 ; 5 uses
  %i.af = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ag = sub nuw nsw i64 %i.b, %i.m              ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.532.0.copyload) ]
  %i.ai = icmp sgt i64 %.sroa.7.0.copyload.fr, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.532.0.copyload, i64 %.sroa.7.0.copyload.fr ; 7 uses
  %i.ak = icmp eq i64 %i.b, %i.m                  ; 2 uses
  br i1 %i.ak, label %bb.o, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader"

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader": ; preds = %.lr.ph.preheader.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.promoted ; 4 uses
  %.not.not.i.i.i51 = icmp samesign eq i64 %.sroa.7.0.copyload.fr, 0
  br i1 %.not.not.i.i.i51, label %.loopexit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader"
  %i.am = add nsw i64 %.sroa.7.0.copyload.fr, -1
  %i.an = add nsw i64 %spec.select.i, -1
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.an)
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 9
  br i1 %min.iters.check, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aq = add i64 %.promoted, %i.af
  %i.ar = sub i64 %.sroa.532.0.copyload129, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -4
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.as = and i64 %i.ap, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 4, i64 %i.as
  %n.vec = sub i64 %i.ap, %i.au                   ; 3 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %n.vec
  %i.aw = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ax, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.al, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep131, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep131, align 1, !noalias !43062
  %wide.load132 = load <2 x i8>, ptr %i.ay, align 1, !noalias !43062
  %i.az = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %wide.load, ptr %next.gep, align 1, !noalias !43063
  store <2 x i8> %wide.load132, ptr %i.az, align 1, !noalias !43063
  %i.ba = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bb = add <2 x i64> %vec.phi130, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !42942

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph

scalar.ph:                                        ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %bc.merge.rdx = phi i64 [ %i.bd, %middle.block ], [ %.promoted, %.lr.ph.preheader ], [ %.promoted, %vector.memcheck ]
  %bc.resume.val = phi ptr [ %i.av, %middle.block ], [ %i.al, %.lr.ph.preheader ], [ %i.al, %vector.memcheck ] ; 2 uses
  %bc.resume.val133 = phi ptr [ %i.aw, %middle.block ], [ %.sroa.532.0.copyload, %.lr.ph.preheader ], [ %.sroa.532.0.copyload, %vector.memcheck ] ; 2 uses
  %bc.resume.val138 = ptrtoaddr ptr %bc.resume.val to i64
  %bc.resume.val133135 = ptrtoaddr ptr %bc.resume.val133 to i64 ; 4 uses
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph.preheader.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43065)
  %i.be = load i64, ptr %0, align 8, !range !65, !alias.scope !43066, !noalias !43067, !noundef !55
  %i.bf = sub nsw i64 %i.be, %.promoted
  %i.bg = icmp ugt i64 %.sroa.7.0.copyload.fr, %i.bf
  br i1 %i.bg, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i", !prof !66

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.promoted, i64 noundef %.sroa.7.0.copyload.fr, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" unwind label %bb.x, !noalias !43068

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread": ; preds = %bb.p
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !43069, !noalias !43067
  %.pre75 = load ptr, ptr %i.ad, align 8, !alias.scope !43069, !noalias !43067
  br label %iter.check199

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i": ; preds = %bb.o
  %.not7.i.i.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.7.0.copyload.fr, 0
  br i1 %.not7.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %iter.check199

iter.check199:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i"
  %i.bh = phi i64 [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %.promoted, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 7 uses
  %i.bi = phi ptr [ %.pre75, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.thread" ], [ %i.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i" ] ; 8 uses
  %min.iters.check183 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 8
  br i1 %min.iters.check183, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck180

vector.memcheck180:                               ; preds = %iter.check199
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = add i64 %i.bh, %i.bj
  %i.bl = sub i64 %.sroa.532.0.copyload129, %i.bk
  %diff.check181 = icmp ugt i64 %i.bl, -32
  br i1 %diff.check181, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check184

vector.main.loop.iter.check184:                   ; preds = %vector.memcheck180
  %min.iters.check185 = icmp samesign ult i64 %.sroa.7.0.copyload.fr, 32
  br i1 %min.iters.check185, label %vec.epilog.ph203, label %vector.ph186

vector.ph186:                                     ; preds = %vector.main.loop.iter.check184
  %i.bm = and i64 %.sroa.7.0.copyload.fr, 24
  %n.vec187 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775776 ; 5 uses
  %i.bn = add i64 %i.bh, %n.vec187                ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec187
  %i.bp = getelementptr i8, ptr %i.bi, i64 %i.bh
  br label %vector.body188

vector.body188:                                   ; preds = %vector.ph186, %vector.body188
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next193, %vector.body188 ] ; 3 uses
  %next.gep190 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index189 ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <16 x i8>, ptr %next.gep190, align 1, !noalias !43070
  %wide.load192 = load <16 x i8>, ptr %i.bq, align 1, !noalias !43070
  %i.br = getelementptr i8, ptr %i.bp, i64 %index189 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load191, ptr %i.br, align 1, !noalias !43071
  store <16 x i8> %wide.load192, ptr %i.bs, align 1, !noalias !43071
  %index.next193 = add nuw i64 %index189, 32      ; 2 uses
  %i.bt = icmp eq i64 %index.next193, %n.vec187
  br i1 %i.bt, label %middle.block194, label %vector.body188, !llvm.loop !42969

middle.block194:                                  ; preds = %vector.body188
  %cmp.n195 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec187
  br i1 %cmp.n195, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block194
  %min.epilog.iters.check202 = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check202, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph203, !prof !160

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check184, %vec.epilog.iter.check201
  %vec.epilog.resume.val196 = phi i64 [ %n.vec187, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check184 ]
  %n.vec204 = and i64 %.sroa.7.0.copyload.fr, 9223372036854775800 ; 4 uses
  %i.bu = add i64 %i.bh, %n.vec204                ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %n.vec204
  %i.bw = getelementptr i8, ptr %i.bi, i64 %i.bh
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph203
  %index206 = phi i64 [ %vec.epilog.resume.val196, %vec.epilog.ph203 ], [ %index.next209, %vec.epilog.vector.body205 ] ; 3 uses
  %next.gep207 = getelementptr i8, ptr %.sroa.532.0.copyload, i64 %index206
  %wide.load208 = load <8 x i8>, ptr %next.gep207, align 1, !noalias !43070
  %i.bx = getelementptr i8, ptr %i.bw, i64 %index206
  store <8 x i8> %wide.load208, ptr %i.bx, align 1, !noalias !43071
  %index.next209 = add nuw i64 %index206, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next209, %n.vec204
  br i1 %i.by, label %vec.epilog.middle.block210, label %vec.epilog.vector.body205, !llvm.loop !42970

vec.epilog.middle.block210:                       ; preds = %vec.epilog.vector.body205
  %cmp.n211 = icmp eq i64 %.sroa.7.0.copyload.fr, %n.vec204
  br i1 %cmp.n211, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check199, %vector.memcheck180, %vec.epilog.iter.check201, %vec.epilog.middle.block210
  %.ph = phi i64 [ %i.bh, %iter.check199 ], [ %i.bh, %vector.memcheck180 ], [ %i.bn, %vec.epilog.iter.check201 ], [ %i.bu, %vec.epilog.middle.block210 ] ; 2 uses
  %.ph216 = phi ptr [ %.sroa.532.0.copyload, %iter.check199 ], [ %.sroa.532.0.copyload, %vector.memcheck180 ], [ %i.bo, %vec.epilog.iter.check201 ], [ %i.bv, %vec.epilog.middle.block210 ] ; 3 uses
  %i.bz = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %.ph216239 = ptrtoaddr ptr %.ph216 to i64       ; 2 uses
  %i.ca = sub i64 %i.bz, %.ph216239
  %xtraiter240 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %i.cb = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cc = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph216, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter242 = phi i64 [ %prol.iter242.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !43070, !noundef !55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cb
  store i8 %i.cd, ptr %i.cf, align 1, !noalias !43071
  %i.cg = add i64 %i.cb, 1                        ; 3 uses
  %prol.iter242.next = add i64 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !42971

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr243 = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr244 = phi ptr [ %.ph216, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ch = sub i64 %.ph216239, %i.bz
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cj = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr243, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ck = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr244, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !43070, !noundef !55
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cj
  store i8 %i.cl, ptr %i.cn, align 1, !noalias !43071
  %i.co = load i8, ptr %i.cm, align 1, !noalias !43070, !noundef !55
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cq = getelementptr i8, ptr %i.bi, i64 %i.cj
  %i.cr = getelementptr i8, ptr %i.cq, i64 1
  store i8 %i.co, ptr %i.cr, align 1, !noalias !43071
  %i.cs = load i8, ptr %i.cp, align 1, !noalias !43070, !noundef !55
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.cu = getelementptr i8, ptr %i.bi, i64 %i.cj
  %i.cv = getelementptr i8, ptr %i.cu, i64 2
  store i8 %i.cs, ptr %i.cv, align 1, !noalias !43071
  %i.cw = load i8, ptr %i.ct, align 1, !noalias !43070, !noundef !55
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.bi, i64 %i.cj
  %i.cz = getelementptr i8, ptr %i.cy, i64 3
  store i8 %i.cw, ptr %i.cz, align 1, !noalias !43071
  %i.da = add i64 %i.cj, 4                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.cx, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i.3, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !42972

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i": ; preds = %.lr.ph
  %.not.not.i.i.i = icmp eq ptr %i.de, %i.aj
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.not.i.i.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge", label %.lr.ph, !llvm.loop !42973

.lr.ph:                                           ; preds = %scalar.ph, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"
  %indvar = phi i64 [ 0, %scalar.ph ], [ %indvar.next, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.db = phi i64 [ %bc.merge.rdx, %scalar.ph ], [ %i.dg, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ]
  %.sroa.0.08.i.i.i52 = phi ptr [ %bc.resume.val, %scalar.ph ], [ %i.dd, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.dc = phi ptr [ %bc.resume.val133, %scalar.ph ], [ %i.de, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i" ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i52, i64 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 9 uses
  %i.df = load i8, ptr %i.dc, align 1, !noalias !43062, !noundef !55
  store i8 %i.df, ptr %.sroa.0.08.i.i.i52, align 1, !noalias !43063
  %i.dg = add i64 %i.db, 1                        ; 6 uses
  %i.dh = icmp eq ptr %i.dd, %i.ah
  br i1 %i.dh, label %.loopexit.i.i, label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"

.loopexit.i.i:                                    ; preds = %.lr.ph
  store i64 %i.dg, ptr %i.a, align 8, !noalias !43063
  %i.di = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = sub nuw i64 %i.di, %i.dj                ; 5 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.de
  br i1 %.not.i.i, label %.loopexit.i, label %bb.s

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i": ; preds = %scalar.ph137
  store i64 %i.hh, ptr %i.a, align 8, !noalias !43072
  %.pre.i.i11 = ptrtoint ptr %i.hf to i64
  %.pre22.i = sub nuw i64 %i.di, %.pre.i.i11
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i": ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i"
  %.pre-phi.i = phi i64 [ %i.dk, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %.pre22.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ] ; 5 uses
  %i.dl = phi i64 [ %.promoted59, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.hh, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ]
  %.val.i.i.i.i.i.i.i = phi ptr [ %i.de, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i" ], [ %i.hf, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i" ] ; 7 uses
  %.val.i.i.i.i.i.i.i156 = ptrtoaddr ptr %.val.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.dm = icmp slt i64 %.pre-phi.i, 0
  br i1 %i.dm, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !43073

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"
  %i.dn = icmp eq ptr %i.aj, %.val.i.i.i.i.i.i.i
  br i1 %i.dn, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43074
  %i.do = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.pre-phi.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !43074 ; 13 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.r, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.dq = ptrtoaddr ptr %i.do to i64
  %i.dr = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129
  %i.ds = sub i64 %i.dr, %.val.i.i.i.i.i.i.i156   ; 7 uses
  %min.iters.check159 = icmp ult i64 %i.ds, 4
  %i.dt = sub i64 %.val.i.i.i.i.i.i.i156, %i.dq
  %diff.check157 = icmp ugt i64 %i.dt, -32
  %or.cond214 = or i1 %min.iters.check159, %diff.check157
  br i1 %or.cond214, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check160 = icmp ult i64 %i.ds, 32
  br i1 %min.iters.check160, label %vec.epilog.ph, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check
  %i.du = and i64 %i.ds, 28
  %n.vec162 = and i64 %i.ds, -32                  ; 7 uses
  %i.dv = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %n.vec162
  br label %vector.body163

vector.body163:                                   ; preds = %vector.ph161, %vector.body163
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next168, %vector.body163 ] ; 3 uses
  %next.gep165 = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %index164 ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load166 = load <16 x i8>, ptr %next.gep165, align 1, !noalias !43075
  %wide.load167 = load <16 x i8>, ptr %i.dw, align 1, !noalias !43075
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 %index164 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <16 x i8> %wide.load166, ptr %i.dx, align 1, !noalias !43076
  store <16 x i8> %wide.load167, ptr %i.dy, align 1, !noalias !43076
  %index.next168 = add nuw i64 %index164, 32      ; 2 uses
  %i.dz = icmp eq i64 %index.next168, %n.vec162
  br i1 %i.dz, label %middle.block169, label %vector.body163, !llvm.loop !43016

middle.block169:                                  ; preds = %vector.body163
  %ind.escape = add i64 %n.vec162, -1
  %cmp.n = icmp eq i64 %i.ds, %n.vec162
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block169
  %min.epilog.iters.check = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !159

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec162, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec171 = and i64 %i.ds, -4                   ; 6 uses
  %i.ea = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %n.vec171
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index172 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next175, %vec.epilog.vector.body ] ; 3 uses
  %next.gep173 = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %index172
  %wide.load174 = load <4 x i8>, ptr %next.gep173, align 1, !noalias !43075
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 %index172
  store <4 x i8> %wide.load174, ptr %i.eb, align 1, !noalias !43076
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43017

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape176 = add i64 %n.vec171, -1
  %cmp.n177 = icmp eq i64 %i.ds, %n.vec171
  br i1 %cmp.n177, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph218 = phi i64 [ 0, %iter.check ], [ %n.vec162, %vec.epilog.iter.check ], [ %n.vec171, %vec.epilog.middle.block ] ; 2 uses
  %.ph219 = phi ptr [ %.val.i.i.i.i.i.i.i, %iter.check ], [ %i.dv, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ] ; 3 uses
  %i.ed = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %.ph219237 = ptrtoaddr ptr %.ph219 to i64       ; 2 uses
  %i.ee = sub i64 %i.ed, %.ph219237
  %xtraiter = and i64 %i.ee, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ef = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph218, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.eg = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph219, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.eh = load i8, ptr %i.eg, align 1, !noalias !43075, !noundef !55
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ef
  store i8 %i.eh, ptr %i.ej, align 1, !noalias !43076
  %i.ek = add nuw i64 %i.ef, 1                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !43018

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa221.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.lcssa220.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph218, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.unr238 = phi ptr [ %.ph219, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.el = sub i64 %.ph219237, %i.ed
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %.pre-phi.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70
          to label %.noexc5.i unwind label %bb.x, !noalias !43068

.noexc5.i:                                        ; preds = %bb.r
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.en = phi i64 [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.eo = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr238, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !43075, !noundef !55
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.en
  store i8 %i.ep, ptr %i.er, align 1, !noalias !43076
  %i.es = load i8, ptr %i.eq, align 1, !noalias !43075, !noundef !55
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.en
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 %i.es, ptr %i.ev, align 1, !noalias !43076
  %i.ew = load i8, ptr %i.et, align 1, !noalias !43075, !noundef !55
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.en
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store i8 %i.ew, ptr %i.ez, align 1, !noalias !43076
  %i.fa = add nuw i64 %i.en, 3                    ; 2 uses
  %i.fb = load i8, ptr %i.ex, align 1, !noalias !43075, !noundef !55
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fa
  store i8 %i.fb, ptr %i.fd, align 1, !noalias !43076
  %i.fe = add nuw i64 %i.en, 4                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.fc, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !43019

bb.s:                                             ; preds = %.loopexit.i.i
  %i.ff = load i64, ptr %0, align 8, !range !65, !noalias !43077, !noundef !55
  %i.fg = sub nsw i64 %i.ff, %i.b
  %i.fh = icmp ugt i64 %i.dk, %i.fg
  br i1 %i.fh, label %bb.t, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i", !prof !66

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %i.dk, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" unwind label %bb.x, !noalias !43068

"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge": ; preds = %bb.t
  %.pre = load ptr, ptr %i.ad, align 8, !noalias !43077
  %.pre70 = load i64, ptr %i.a, align 8, !noalias !43072
  br label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i": ; preds = %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge", %bb.s
  %.promoted59 = phi i64 [ %.pre70, %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" ], [ %i.dg, %bb.s ] ; 8 uses
  %i.fi = phi ptr [ %.pre, %"._ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i_crit_edge" ], [ %i.ae, %bb.s ] ; 5 uses
  %i.fj = ptrtoaddr ptr %i.fi to i64
  %i.fk = add i64 %i.dk, %i.m                     ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.m
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fk ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull align 1 %i.fl, i64 %i.ag, i1 false), !noalias !43077
  %i.fn = icmp samesign eq i64 %.promoted59, %i.fk
  br i1 %i.fn, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.i.i", label %.lr.ph57

.lr.ph57:                                         ; preds = %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$9move_tail17h57ef1d815f8dc8a9E.exit.i.i"
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.promoted59 ; 4 uses
  %i.fp = add i64 %.sroa.7.0.copyload.fr, %.sroa.532.0.copyload129 ; 2 uses
  %i.fq = xor i64 %bc.resume.val133135, -1
  %i.fr = add i64 %i.fp, %i.fq
  %i.fs = freeze i64 %i.fr
  %i.ft = add i64 %.promoted, %i.af
  %i.fu = add i64 %i.ft, %spec.select.i
  %i.fv = xor i64 %bc.resume.val138, -1
  %i.fw = add i64 %i.fu, %i.fv
  %i.fx = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 %i.fw) ; 2 uses
  %i.fy = add i64 %i.fp, -2
  %i.fz = add i64 %i.fx, %bc.resume.val133135
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = freeze i64 %i.ga
  %i.gc = add i64 %.promoted, %.sroa.7.0.copyload.fr
  %i.gd = add i64 %i.gc, %.sroa.532.0.copyload129
  %i.ge = add i64 %i.gd, %spec.select.i
  %i.gf = add i64 %i.ge, -2
  %i.gg = add i64 %.promoted59, %bc.resume.val133135
  %i.gh = add i64 %i.gg, %i.fx
  %i.gi = sub i64 %i.gf, %i.gh
  %i.gj = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 %i.gi)
  %i.gk = add i64 %i.gj, 1                        ; 3 uses
  %min.iters.check138 = icmp ult i64 %i.gk, 17
  br i1 %min.iters.check138, label %scalar.ph137.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph57
  %i.gl = add i64 %.promoted59, %i.fj
  %i.gm = xor i64 %bc.resume.val133135, -1
  %i.gn = sub i64 %i.gm, %indvar
  %i.go = add i64 %i.gl, %i.gn
  %i.gp = add i64 %i.go, -1
  %diff.check136 = icmp ult i64 %i.gp, 3
  br i1 %diff.check136, label %scalar.ph137.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck134
  %i.gq = and i64 %i.gk, 3                        ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  %i.gs = select i1 %i.gr, i64 4, i64 %i.gq
  %n.vec140 = sub i64 %i.gk, %i.gs                ; 3 uses
  %i.gt = getelementptr i8, ptr %i.fo, i64 %n.vec140
  %i.gu = getelementptr i8, ptr %i.de, i64 %n.vec140
  %i.gv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted59, i64 0
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next149, %vector.body141 ] ; 3 uses
  %vec.phi143 = phi <2 x i64> [ %i.gv, %vector.ph139 ], [ %i.gy, %vector.body141 ]
  %vec.phi144 = phi <2 x i64> [ zeroinitializer, %vector.ph139 ], [ %i.gz, %vector.body141 ]
  %next.gep145 = getelementptr i8, ptr %i.fo, i64 %index142 ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.de, i64 %index142 ; 2 uses
  %i.gw = getelementptr i8, ptr %next.gep146, i64 2
  %wide.load147 = load <2 x i8>, ptr %next.gep146, align 1, !noalias !43078
  %wide.load148 = load <2 x i8>, ptr %i.gw, align 1, !noalias !43078
  %i.gx = getelementptr i8, ptr %next.gep145, i64 2
  store <2 x i8> %wide.load147, ptr %next.gep145, align 1, !noalias !43072
  store <2 x i8> %wide.load148, ptr %i.gx, align 1, !noalias !43072
  %i.gy = add <2 x i64> %vec.phi143, splat (i64 1) ; 2 uses
  %i.gz = add <2 x i64> %vec.phi144, splat (i64 1) ; 2 uses
  %index.next149 = add nuw i64 %index142, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.ha, label %middle.block150, label %vector.body141, !llvm.loop !43024

middle.block150:                                  ; preds = %vector.body141
  %bin.rdx151 = add <2 x i64> %i.gz, %i.gy
  %i.hb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx151)
  br label %scalar.ph137.preheader

scalar.ph137.preheader:                           ; preds = %vector.memcheck134, %.lr.ph57, %middle.block150
  %.ph222 = phi i64 [ %.promoted59, %vector.memcheck134 ], [ %.promoted59, %.lr.ph57 ], [ %i.hb, %middle.block150 ]
  %.sroa.0.08.i23.i.i56.ph = phi ptr [ %i.fo, %vector.memcheck134 ], [ %i.fo, %.lr.ph57 ], [ %i.gt, %middle.block150 ]
  %.ph223 = phi ptr [ %i.de, %vector.memcheck134 ], [ %i.de, %.lr.ph57 ], [ %i.gu, %middle.block150 ]
  br label %scalar.ph137

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i": ; preds = %scalar.ph137
  %.not.not.i24.i.i = icmp eq ptr %i.hf, %i.aj
  br i1 %.not.not.i24.i.i, label %.loopexit.i.loopexit, label %scalar.ph137, !llvm.loop !43025

scalar.ph137:                                     ; preds = %scalar.ph137.preheader, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  %i.hc = phi i64 [ %i.hh, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph222, %scalar.ph137.preheader ]
  %.sroa.0.08.i23.i.i56 = phi ptr [ %i.he, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.sroa.0.08.i23.i.i56.ph, %scalar.ph137.preheader ] ; 2 uses
  %i.hd = phi ptr [ %i.hf, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i" ], [ %.ph223, %scalar.ph137.preheader ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i23.i.i56, i64 1 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 4 uses
  %i.hg = load i8, ptr %i.hd, align 1, !noalias !43078, !noundef !55
  store i8 %i.hg, ptr %.sroa.0.08.i23.i.i56, align 1, !noalias !43072
  %i.hh = add i64 %i.hc, 1                        ; 5 uses
  %i.hi = icmp eq ptr %i.he, %i.fm
  br i1 %i.hi, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit26.thread.loopexit.i.i", label %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"

"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i": ; preds = %bb.w, %bb.v
  %.pre.i = phi i64 [ %i.hp, %bb.v ], [ %i.hz, %bb.w ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43079
  br label %.loopexit.i

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block169
  %.lcssa116 = phi i64 [ %ind.escape176, %vec.epilog.middle.block ], [ %ind.escape, %middle.block169 ], [ %.lcssa221.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa115 = phi i64 [ %n.vec171, %vec.epilog.middle.block ], [ %n.vec162, %middle.block169 ], [ %.lcssa220.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.hj = icmp sgt i64 %.lcssa115, -1
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.do, i64 %.lcssa115
  %i.hl = add i64 %i.dk, %i.b                     ; 2 uses
  %i.hm = load i64, ptr %0, align 8, !range !65, !noalias !43080, !noundef !55
  %i.hn = sub i64 %i.hm, %i.hl
  %.not53.i.i = icmp ult i64 %.lcssa116, %i.hn
  br i1 %.not53.i.i, label %bb.v, label %bb.u, !prof !74

bb.u:                                             ; preds = %.loopexit
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef align 8 dereferenceable(16) %0, i64 noundef %i.hl, i64 noundef %.lcssa115, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge unwind label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", !noalias !43081

._crit_edge:                                      ; preds = %bb.u
  %.pre71 = load ptr, ptr %i.ad, align 8, !noalias !43080
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %.loopexit
  %i.ho = phi ptr [ %.pre71, %._crit_edge ], [ %i.fi, %.loopexit ] ; 3 uses
  %i.hp = add i64 %.lcssa115, %i.fk               ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.fk
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hp ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr nonnull align 1 %i.hq, i64 %i.ag, i1 false), !noalias !43080
  %i.hs = load i64, ptr %i.a, align 8, !noalias !43082, !noundef !55 ; 2 uses
  %i.ht = icmp samesign eq i64 %i.hs, %i.hp
  br i1 %i.ht, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.v
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hs
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph127
  %.sroa.0.08.i32.i.i126 = phi ptr [ %i.hu, %.lr.ph127 ], [ %i.hw, %bb.w ] ; 2 uses
  %i.hv = phi ptr [ %i.do, %.lr.ph127 ], [ %i.ib, %bb.w ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i32.i.i126, i64 1 ; 2 uses
  %i.hx = load i8, ptr %i.hv, align 1, !noalias !43083, !noundef !55
  store i8 %i.hx, ptr %.sroa.0.08.i32.i.i126, align 1, !noalias !43082
  %i.hy = load i64, ptr %i.a, align 8, !noalias !43082, !noundef !55
  %i.hz = add i64 %i.hy, 1                        ; 2 uses
  store i64 %i.hz, ptr %i.a, align 8, !noalias !43082
  %i.ia = icmp eq ptr %i.hw, %i.hr
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 1 ; 2 uses
  %.not.not.i33.i.i = icmp eq ptr %i.ib, %i.hk
  %or.cond215 = select i1 %i.ia, i1 true, i1 %.not.not.i33.i.i
  br i1 %or.cond215, label %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", label %bb.w

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i": ; preds = %bb.u
  %i.ic = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %.pre-phi.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43084
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r, %bb.p
  %.sroa.21.3 = phi i64 [ %i.b, %bb.p ], [ %i.fk, %bb.r ], [ %i.m, %bb.t ]
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i", %bb.x
  %.sroa.21.1 = phi i64 [ %.sroa.21.3, %bb.x ], [ %i.fk, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.id, %bb.x ], [ %i.ic, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u8$GT$$GT$17he9e72251f253d1fbE.exit.i.i" ] ; 2 uses
  br i1 %i.ak, label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ie = load i64, ptr %i.a, align 8, !noalias !43085, !noundef !55 ; 4 uses
  %i.if = icmp sgt i64 %i.ie, -1
  tail call void @llvm.assume(i1 %i.if)
  %.not3.i.i.i.i = icmp eq i64 %.sroa.21.1, %i.ie
  br i1 %.not3.i.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.ig = add nuw i64 %i.ie, %i.ag
  store i64 %i.ig, ptr %i.a, align 8, !noalias !43085
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit"

bb.ab:                                            ; preds = %bb.z
  %i.ih = load ptr, ptr %i.ad, align 8, !noalias !43085, !nonnull !55, !noundef !55 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.21.1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ie
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull align 1 %i.ii, i64 %i.ag, i1 false), !noalias !43085
  br label %bb.aa

"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit": ; preds = %bb.y, %bb.aa
  %i.ik = icmp eq i64 %.sroa.031.0.copyload, 0
  br i1 %i.ik, label %.body, label %bb.ae

"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge": ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i"
  store i64 %i.dg, ptr %i.a, align 8, !noalias !43063
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i22.i.i"
  store i64 %i.hh, ptr %i.a, align 8, !noalias !43072
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %.loopexit.i.i, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader", %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge", %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %i.il = phi i64 [ %i.m, %.loopexit.i.i ], [ %i.hp, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.fk, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.m, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge" ], [ %i.fk, %.loopexit.i.loopexit ] ; 2 uses
  %i.im = phi i64 [ %i.dg, %.loopexit.i.i ], [ %.pre.i, %"_ZN5alloc3vec6splice55_$LT$impl$u20$alloc..vec..drain..Drain$LT$T$C$A$GT$$GT$4fill17hdaf06ff9bd37871eE.exit35.thread44.i.i" ], [ %i.dl, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.promoted, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i.preheader" ], [ %i.dg, %"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3190358d40a833cfE.exit.i.i.i..loopexit.i.loopexit40_crit_edge" ], [ %i.hh, %.loopexit.i.loopexit ] ; 4 uses
  %i.in = icmp sgt i64 %i.im, -1
  tail call void @llvm.assume(i1 %i.in)
  %.not3.i.i.i.i.i = icmp eq i64 %i.il, %i.im
  br i1 %.not3.i.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %.loopexit.i
  %i.io = add nuw i64 %i.im, %i.ag
  br label %"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E.exit.i"

bb.ad:                                            ; preds = %.loopexit.i
  %i.ip = load ptr, ptr %i.ad, align 8, !noalias !43086, !nonnull !55, !noundef !55 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.il
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.im
end_hunk_0
begin_hunk_1_@_ZN4rhai8packages10blob_basic14blob_functions8split_at17h38993f1eac418c7eE:bb.a
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"

iter.check73:                                     ; preds = %bb.i
  %.pre.i = load i64, ptr %i.t, align 8, !alias.scope !43164, !noalias !43165 ; 7 uses
  %i.ae = load ptr, ptr %i.s, align 8, !alias.scope !43164, !noalias !43165, !nonnull !55, !noundef !55 ; 8 uses
  %min.iters.check58 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check58, label %.lr.ph.i.i.i.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %iter.check73
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = add i64 %.pre.i, %i.af
  %i.ah = add i64 %i.ag, %spec.select.i
  %i.ai = add i64 %i.f, %i.x
  %i.aj = sub i64 %i.ai, %i.ah
  %diff.check57 = icmp ugt i64 %i.aj, -32
  br i1 %diff.check57, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check59

vector.main.loop.iter.check59:                    ; preds = %vector.memcheck56
  %min.iters.check60 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check60, label %vec.epilog.ph77, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check59
  %i.ak = and i64 %spec.select.i, 24
  %n.vec62 = and i64 %spec.select.i, 9223372036854775776 ; 5 uses
  %i.al = add i64 %.pre.i, %n.vec62               ; 2 uses
  %i.am = getelementptr i8, ptr %i.y, i64 %n.vec62
  %i.an = getelementptr i8, ptr %i.ae, i64 %.pre.i
  br label %vector.body63

vector.body63:                                    ; preds = %vector.ph61, %vector.body63
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next68, %vector.body63 ] ; 3 uses
  %next.gep65 = getelementptr i8, ptr %i.y, i64 %index64 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load66 = load <16 x i8>, ptr %next.gep65, align 1, !noalias !43167
  %wide.load67 = load <16 x i8>, ptr %i.ao, align 1, !noalias !43167
  %i.ap = getelementptr i8, ptr %i.an, i64 %index64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %wide.load66, ptr %i.ap, align 1, !noalias !43168
  store <16 x i8> %wide.load67, ptr %i.aq, align 1, !noalias !43168
  %index.next68 = add nuw i64 %index64, 32        ; 2 uses
  %i.ar = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.ar, label %middle.block69, label %vector.body63, !llvm.loop !43134

middle.block69:                                   ; preds = %vector.body63
  %cmp.n70 = icmp eq i64 %i.n, %n.vec62
  br i1 %cmp.n70, label %.loopexit, label %vec.epilog.iter.check75

vec.epilog.iter.check75:                          ; preds = %middle.block69
  %min.epilog.iters.check76 = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check76, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph77, !prof !160

vec.epilog.ph77:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check75
  %vec.epilog.resume.val71 = phi i64 [ %n.vec62, %vec.epilog.iter.check75 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec78 = and i64 %spec.select.i, 9223372036854775800 ; 4 uses
  %i.as = add i64 %.pre.i, %n.vec78               ; 2 uses
  %i.at = getelementptr i8, ptr %i.y, i64 %n.vec78
  %i.au = getelementptr i8, ptr %i.ae, i64 %.pre.i
  br label %vec.epilog.vector.body79

vec.epilog.vector.body79:                         ; preds = %vec.epilog.vector.body79, %vec.epilog.ph77
  %index80 = phi i64 [ %vec.epilog.resume.val71, %vec.epilog.ph77 ], [ %index.next83, %vec.epilog.vector.body79 ] ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.y, i64 %index80
  %wide.load82 = load <8 x i8>, ptr %next.gep81, align 1, !noalias !43167
  %i.av = getelementptr i8, ptr %i.au, i64 %index80
  store <8 x i8> %wide.load82, ptr %i.av, align 1, !noalias !43168
  %index.next83 = add nuw i64 %index80, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next83, %n.vec78
  br i1 %i.aw, label %vec.epilog.middle.block84, label %vec.epilog.vector.body79, !llvm.loop !43135

vec.epilog.middle.block84:                        ; preds = %vec.epilog.vector.body79
  %cmp.n85 = icmp eq i64 %i.n, %n.vec78
  br i1 %cmp.n85, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check73, %vector.memcheck56, %vec.epilog.iter.check75, %vec.epilog.middle.block84
  %.ph = phi i64 [ %.pre.i, %iter.check73 ], [ %.pre.i, %vector.memcheck56 ], [ %i.al, %vec.epilog.iter.check75 ], [ %i.as, %vec.epilog.middle.block84 ] ; 2 uses
  %.ph88 = phi ptr [ %i.y, %iter.check73 ], [ %i.y, %vector.memcheck56 ], [ %i.am, %vec.epilog.iter.check75 ], [ %i.at, %vec.epilog.middle.block84 ] ; 3 uses
  %i.ax = add i64 %i.f, %i.x                      ; 2 uses
  %.ph8895 = ptrtoaddr ptr %.ph88 to i64          ; 2 uses
  %i.ay = sub i64 %i.ax, %.ph8895
  %xtraiter96 = and i64 %i.ay, 3                  ; 2 uses
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.az = phi i64 [ %i.be, %.lr.ph.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ba = phi ptr [ %i.bb, %.lr.ph.i.i.i.prol ], [ %.ph88, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter98 = phi i64 [ %prol.iter98.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.ba, align 1, !noalias !43167, !noundef !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.az
  store i8 %i.bc, ptr %i.bd, align 1, !noalias !43168
  %i.be = add i64 %i.az, 1                        ; 3 uses
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !43136

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa89.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.prol ]
  %.unr99 = phi i64 [ %.ph, %.lr.ph.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.prol ]
  %.unr100 = phi ptr [ %.ph88, %.lr.ph.i.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.i.prol ]
  %i.bf = sub i64 %.ph8895, %i.ax
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.bh = phi i64 [ %i.by, %.lr.ph.i.i.i ], [ %.unr99, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.bi = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %.unr100, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bi, align 1, !noalias !43167, !noundef !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bh
  store i8 %i.bk, ptr %i.bl, align 1, !noalias !43168
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bn = load i8, ptr %i.bj, align 1, !noalias !43167, !noundef !55
  %i.bo = getelementptr i8, ptr %i.ae, i64 %i.bh
  %i.bp = getelementptr i8, ptr %i.bo, i64 1
  store i8 %i.bn, ptr %i.bp, align 1, !noalias !43168
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.br = load i8, ptr %i.bm, align 1, !noalias !43167, !noundef !55
  %i.bs = getelementptr i8, ptr %i.ae, i64 %i.bh
  %i.bt = getelementptr i8, ptr %i.bs, i64 2
  store i8 %i.br, ptr %i.bt, align 1, !noalias !43168
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bv = load i8, ptr %i.bq, align 1, !noalias !43167, !noundef !55
  %i.bw = getelementptr i8, ptr %i.ae, i64 %i.bh
  %i.bx = getelementptr i8, ptr %i.bw, i64 3
  store i8 %i.bv, ptr %i.bx, align 1, !noalias !43168
  %i.by = add i64 %i.bh, 4                        ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.bu, %i.z
  br i1 %.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !43137

.body:                                            ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #72, !noalias !43164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43166)
  %.val.i = load i64, ptr %i.d, align 8, !range !65, !alias.scope !43166, !noundef !55 ; 2 uses
  %i.ca = icmp eq i64 %.val.i, 0
  br i1 %i.ca, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit", label %bb.k

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block84, %middle.block69
  %.lcssa = phi i64 [ %i.as, %vec.epilog.middle.block84 ], [ %i.al, %middle.block69 ], [ %.lcssa89.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.by, %.lr.ph.i.i.i ]
  store i64 %.lcssa, ptr %i.t, align 8, !alias.scope !43164, !noalias !43169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit": ; preds = %bb.l, %.body30, %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.k ], [ %i.bz, %.body ], [ %i.cb, %.body30 ], [ %i.cb, %bb.l ]
  resume { ptr, i32 } %.pn

.body30:                                          ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h319bc13a4d27c875E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #72, !noalias !43170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43171)
  %.val.i9 = load i64, ptr %i.b, align 8, !range !65, !alias.scope !43171, !noundef !55 ; 2 uses
  %i.cc = icmp eq i64 %.val.i9, 0
  br i1 %i.cc, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit", label %bb.l

bb.l:                                             ; preds = %.body30
  %.val1.i10 = load ptr, ptr %i.cd, align 8, !alias.scope !43171, !nonnull !55, !noundef !55
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10, i64 noundef %.val.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !43171
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h6b92919e1aab96c5E.exit"

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.ce, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43173)
  store i64 %.sroa.01.0.i, ptr %i.e, align 8, !alias.scope !43173, !noalias !43172
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !43173, !noalias !43172, !nonnull !55, !noundef !55 ; 3 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.01.0.i ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.f ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.f, ptr %i.ck, align 8, !alias.scope !43172, !noalias !43173
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.cl, align 8, !alias.scope !43172, !noalias !43173
  store ptr %i.ci, ptr %i.a, align 8, !alias.scope !43172, !noalias !43173
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cj, ptr %i.cm, align 8, !alias.scope !43172, !noalias !43173
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.cn, align 8, !alias.scope !43172, !noalias !43173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43170)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.n, i64 noundef 1, i64 noundef 1)
          to label %iter.check unwind label %.body30, !noalias !43174

iter.check:                                       ; preds = %bb.m
  %.pre.i29 = load i64, ptr %i.ce, align 8, !alias.scope !43170, !noalias !43174 ; 7 uses
  %i.co = load ptr, ptr %i.cd, align 8, !alias.scope !43170, !noalias !43174, !nonnull !55, !noundef !55 ; 8 uses
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i22.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cp = ptrtoaddr ptr %i.co to i64
  %i.cq = add i64 %.sroa.01.0.i, %i.ch
  %i.cr = add i64 %.pre.i29, %i.cp
  %i.cs = sub i64 %i.cq, %i.cr
  %diff.check = icmp ugt i64 %i.cs, -32
  br i1 %diff.check, label %.lr.ph.i.i.i22.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ct = and i64 %i.n, 24
  %n.vec = and i64 %i.n, -32                      ; 5 uses
  %i.cu = add i64 %.pre.i29, %n.vec               ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ci, i64 %n.vec
  %i.cw = getelementptr i8, ptr %i.co, i64 %.pre.i29
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %index ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !43175
  %wide.load46 = load <16 x i8>, ptr %i.cx, align 1, !noalias !43175
  %i.cy = getelementptr i8, ptr %i.cw, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <16 x i8> %wide.load, ptr %i.cy, align 1, !noalias !43176
  store <16 x i8> %wide.load46, ptr %i.cz, align 1, !noalias !43176
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !43158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit39, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i22.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.n, -8                     ; 4 uses
  %i.db = add i64 %.pre.i29, %n.vec48             ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ci, i64 %n.vec48
  %i.dd = getelementptr i8, ptr %i.co, i64 %.pre.i29
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %next.gep50 = getelementptr i8, ptr %i.ci, i64 %index49
  %wide.load51 = load <8 x i8>, ptr %next.gep50, align 1, !noalias !43175
  %i.de = getelementptr i8, ptr %i.dd, i64 %index49
  store <8 x i8> %wide.load51, ptr %i.de, align 1, !noalias !43176
  %index.next52 = add nuw i64 %index49, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %i.n, %n.vec48
  br i1 %cmp.n53, label %.loopexit39, label %.lr.ph.i.i.i22.preheader

.lr.ph.i.i.i22.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph90 = phi i64 [ %.pre.i29, %iter.check ], [ %.pre.i29, %vector.memcheck ], [ %i.cu, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ] ; 2 uses
  %.ph91 = phi ptr [ %i.ci, %iter.check ], [ %i.ci, %vector.memcheck ], [ %i.cv, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ] ; 3 uses
  %i.dg = add i64 %i.f, %i.ch                     ; 2 uses
  %.ph9193 = ptrtoaddr ptr %.ph91 to i64          ; 2 uses
  %i.dh = sub i64 %i.dg, %.ph9193
  %xtraiter = and i64 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i22.prol.loopexit, label %.lr.ph.i.i.i22.prol

.lr.ph.i.i.i22.prol:                              ; preds = %.lr.ph.i.i.i22.preheader, %.lr.ph.i.i.i22.prol
  %i.di = phi i64 [ %i.dn, %.lr.ph.i.i.i22.prol ], [ %.ph90, %.lr.ph.i.i.i22.preheader ] ; 2 uses
  %i.dj = phi ptr [ %i.dk, %.lr.ph.i.i.i22.prol ], [ %.ph91, %.lr.ph.i.i.i22.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i22.prol ], [ 0, %.lr.ph.i.i.i22.preheader ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 2 uses
  %i.dl = load i8, ptr %i.dj, align 1, !noalias !43175, !noundef !55
  %i.dm = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.di
  store i8 %i.dl, ptr %i.dm, align 1, !noalias !43176
  %i.dn = add i64 %i.di, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i22.prol.loopexit, label %.lr.ph.i.i.i22.prol, !llvm.loop !43160

.lr.ph.i.i.i22.prol.loopexit:                     ; preds = %.lr.ph.i.i.i22.prol, %.lr.ph.i.i.i22.preheader
  %.lcssa92.unr = phi i64 [ poison, %.lr.ph.i.i.i22.preheader ], [ %i.dn, %.lr.ph.i.i.i22.prol ]
  %.unr = phi i64 [ %.ph90, %.lr.ph.i.i.i22.preheader ], [ %i.dn, %.lr.ph.i.i.i22.prol ]
  %.unr94 = phi ptr [ %.ph91, %.lr.ph.i.i.i22.preheader ], [ %i.dk, %.lr.ph.i.i.i22.prol ]
  %i.do = sub i64 %.ph9193, %i.dg
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %.loopexit39, label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22.prol.loopexit, %.lr.ph.i.i.i22
  %i.dq = phi i64 [ %i.eh, %.lr.ph.i.i.i22 ], [ %.unr, %.lr.ph.i.i.i22.prol.loopexit ] ; 5 uses
  %i.dr = phi ptr [ %i.ed, %.lr.ph.i.i.i22 ], [ %.unr94, %.lr.ph.i.i.i22.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.dr, align 1, !noalias !43175, !noundef !55
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dq
  store i8 %i.dt, ptr %i.du, align 1, !noalias !43176
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dw = load i8, ptr %i.ds, align 1, !noalias !43175, !noundef !55
  %i.dx = getelementptr i8, ptr %i.co, i64 %i.dq
  %i.dy = getelementptr i8, ptr %i.dx, i64 1
  store i8 %i.dw, ptr %i.dy, align 1, !noalias !43176
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.ea = load i8, ptr %i.dv, align 1, !noalias !43175, !noundef !55
  %i.eb = getelementptr i8, ptr %i.co, i64 %i.dq
  %i.ec = getelementptr i8, ptr %i.eb, i64 2
  store i8 %i.ea, ptr %i.ec, align 1, !noalias !43176
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  %i.ee = load i8, ptr %i.dz, align 1, !noalias !43175, !noundef !55
  %i.ef = getelementptr i8, ptr %i.co, i64 %i.dq
  %i.eg = getelementptr i8, ptr %i.ef, i64 3
  store i8 %i.ee, ptr %i.eg, align 1, !noalias !43176
  %i.eh = add i64 %i.dq, 4                        ; 2 uses
  %.not.i.i.i23.3 = icmp eq ptr %i.ed, %i.cj
  br i1 %.not.i.i.i23.3, label %.loopexit39, label %.lr.ph.i.i.i22, !llvm.loop !43161

.loopexit39:                                      ; preds = %.lr.ph.i.i.i22.prol.loopexit, %.lr.ph.i.i.i22, %vec.epilog.middle.block, %middle.block
  %.lcssa44 = phi i64 [ %i.db, %vec.epilog.middle.block ], [ %i.cu, %middle.block ], [ %.lcssa92.unr, %.lr.ph.i.i.i22.prol.loopexit ], [ %i.eh, %.lr.ph.i.i.i22 ]
  store i64 %.lcssa44, ptr %i.ce, align 8, !alias.scope !43170, !noalias !43177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages10blob_basic14blob_functions8to_array17h551102819b8b8a31E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !55, !noundef !55 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !55 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43209)
  %i.e = shl i64 %i.d, 4                          ; 4 uses
  %i.f = icmp ugt i64 %i.d, 1152921504606846975
  %i.g = icmp ugt i64 %i.e, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !71

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43210
  %i.i = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #71, !noalias !43210 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70, !noalias !43211
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.i, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.d, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign eq i64 %i.d, 0
  br i1 %i.l, label %_ZN4core4iter6traits8iterator8Iterator7collect17h875d5280e72deb76E.exit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h8fdd6f58a4dd472aE.exit.i.i.i.i.i.i"
  %xtraiter = and i64 %i.d, 1
  %i.m = icmp eq i64 %i.d, 1
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.d, 1152921504606846974
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.n = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.v, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  %.val21.i.i.i.i.i.i.i.i.i = load i8, ptr %i.o, align 1, !noalias !43212, !noundef !55
  %i.p = zext i8 %.val21.i.i.i.i.i.i.i.i.i to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.n ; 4 uses
  store i8 4, ptr %i.q, align 8, !noalias !43213
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !43213
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 0, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !43213
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.p, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !43213
  %i.r = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  %.val21.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %i.s, align 1, !noalias !43212, !noundef !55
  %i.t = zext i8 %.val21.i.i.i.i.i.i.i.i.i.1 to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.r ; 4 uses
  store i8 4, ptr %i.u, align 8, !noalias !43213
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 1, !noalias !43213
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 4, !noalias !43213
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.t, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !43213
  %i.v = add nuw nsw i64 %i.n, 2                  ; 2 uses
end_hunk_1
