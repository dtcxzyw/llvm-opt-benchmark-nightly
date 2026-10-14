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
