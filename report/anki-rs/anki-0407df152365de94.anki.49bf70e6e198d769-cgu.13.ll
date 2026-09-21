Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6zopfli7squeeze12lz77_optimal17h4a7a4f9a3d6a950bE:bb.a
  %i.ad = alloca [144 x i8], align 8              ; 8 uses
  %i.ae = alloca [144 x i8], align 8              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 136 ; 2 uses
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke fastcc void @"_ZN62_$LT$zopfli..lz77..Lz77Store$u20$as$u20$core..clone..Clone$GT$5clone17h49aec94e0482abaaE"(ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ae)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.y, %.thread74, %.thread, %bb.c
  %.pn49.pn = phi { ptr, i32 } [ %.pn4970, %.thread ], [ %lpad.thr_comm.split-lp, %bb.y ], [ %i.af, %bb.c ], [ %i.mg, %.thread74 ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.ae) #40
          to label %bb.dp unwind label %bb.do

bb.c:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12322)
  %i.ag = icmp eq i64 %4, %5                      ; 2 uses
  br i1 %i.ag, label %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %.noexc unwind label %bb.z     ; 8 uses

.noexc:                                           ; preds = %bb.e
  %.not.i = icmp ugt i64 %5, %3
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !17

bb.f:                                             ; preds = %.noexc
  %i.ai = call i64 @llvm.usub.sat.i64(i64 %4, i64 32768) ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6warmup17h04ebcd04568fc9d5E(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.ai, i64 noundef %5)
          to label %.preheader82.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.preheader82.i.preheader:                         ; preds = %bb.f
  %i.aj = icmp ult i64 %i.ai, %4
  br i1 %i.aj, label %.lr.ph, label %.preheader75.i

bb.g:                                             ; preds = %.noexc
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %5, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @891) #39
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.preheader82.i:                                   ; preds = %.lr.ph
  %i.ak = add nuw i64 %.sroa.052.0.i436, 1        ; 2 uses
  %i.al = icmp ult i64 %i.ak, %4
  br i1 %i.al, label %.lr.ph, label %.preheader75.i

.preheader75.i:                                   ; preds = %.preheader82.i, %.preheader82.i.preheader
  %i.am = icmp ult i64 %4, %5
  br i1 %i.am, label %.lr.ph.lr.ph.i, label %.outer._crit_edge.i

.lr.ph.lr.ph.i:                                   ; preds = %.preheader75.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %.preheader82.i.preheader, %.preheader82.i
  %.sroa.052.0.i436 = phi i64 [ %i.ak, %.preheader82.i ], [ %i.ai, %.preheader82.i.preheader ] ; 2 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.052.0.i436)
          to label %.preheader82.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.outer._crit_edge.i:                              ; preds = %.outer.i, %._crit_edge, %.preheader75.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 720900, i64 noundef 2) #34
  br label %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit

bb.h:                                             ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.07.0103.i = phi i64 [ %.sroa.07.0.ph107.i, %.lr.ph.i ], [ %i.ce, %._crit_edge ] ; 16 uses
  %.sroa.024.0102.i = phi i1 [ %.sroa.024.0.ph106.i, %.lr.ph.i ], [ false, %._crit_edge ]
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.07.0103.i)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12323
  store ptr null, ptr %i.k, align 8, !noalias !12323
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$7try_get17hcbb6d17ff25d9fddE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, i64 noundef %.sroa.07.0103.i, i64 noundef 258, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef %4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

.noexc.i:                                         ; preds = %bb.i
  %i.aq = load i8, ptr %i.an, align 4, !range !26, !alias.scope !12324, !noalias !12325, !noundef !12
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i, label %bb.j

.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i: ; preds = %.noexc.i
  %.pre.i = load i16, ptr %i.ao, align 8, !noalias !12323
  %.pre128.i = load i16, ptr %i.ap, align 2, !noalias !12323
  br label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i

bb.j:                                             ; preds = %.noexc.i
  %i.as = sub nuw i64 %5, %.sroa.07.0103.i        ; 2 uses
  %i.at = icmp ult i64 %i.as, 3
  br i1 %i.at, label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.l, align 8, !alias.scope !12324, !noalias !12325, !noundef !12 ; 2 uses
  %i.av = add i64 %i.au, %.sroa.07.0103.i
  %i.aw = icmp ugt i64 %i.av, %5
  %spec.store.select.i.i = select i1 %i.aw, i64 %i.as, i64 %i.au ; 2 uses
  %i.ax = invoke { i16, i16 } @_ZN6zopfli4lz7723find_longest_match_loop17h5ff85276e6e5d364E(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.07.0103.i, i64 noundef %5, i64 noundef %spec.store.select.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ; 2 uses

.noexc65.i:                                       ; preds = %bb.k
  %i.ay = extractvalue { i16, i16 } %i.ax, 0      ; 2 uses
  %i.az = extractvalue { i16, i16 } %i.ax, 1      ; 2 uses
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$5store17h8b54cb83f0d87357E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.sroa.07.0103.i, i64 noundef %spec.store.select.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, i16 noundef %i.ay, i16 noundef %i.az, i64 noundef %4)
          to label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i: ; preds = %.noexc65.i, %bb.j, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i
  %i.ba = phi i16 [ %.pre128.i, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i ], [ %i.az, %.noexc65.i ], [ 0, %bb.j ] ; 5 uses
  %i.bb = phi i16 [ %.pre.i, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i ], [ %i.ay, %.noexc65.i ], [ 0, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12323
  %i.bc = zext i16 %i.ba to i32                   ; 2 uses
  %i.bd = icmp ugt i16 %i.bb, 1024
  %i.be = sext i1 %i.bd to i32
  %.sroa.039.0.i = add nsw i32 %i.be, %i.bc       ; 4 uses
  br i1 %.sroa.024.0102.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i
  %i.bf = icmp ugt i32 %.sroa.039.0.i, 2
  %i.bg = icmp ult i16 %i.ba, 258
  %or.cond.i = and i1 %i.bg, %i.bf
  br i1 %or.cond.i, label %.loopexit81.i, label %bb.n

bb.m:                                             ; preds = %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i
  %i.bh = icmp sgt i32 %.sroa.039.0.i, %.sroa.043.0.i
  br i1 %i.bh, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.t, %bb.l
  %i.bi = icmp ugt i32 %.sroa.039.0.i, 2
  br i1 %i.bi, label %bb.u, label %bb.v

.loopexit81.i:                                    ; preds = %bb.t, %bb.l
  %i.bj = zext i16 %i.bb to i32
  br label %.outer.i

.outer.i:                                         ; preds = %.preheader.i, %.preheader.preheader.i, %.loopexit81.i
  %.sroa.048.1.i = phi i32 [ %i.bj, %.loopexit81.i ], [ %.sroa.048.0.ph104.i, %.preheader.preheader.i ], [ %.sroa.048.0.ph104.i, %.preheader.i ]
  %.sroa.046.1.i = phi i32 [ %i.bc, %.loopexit81.i ], [ %.sroa.046.0.ph105.i, %.preheader.preheader.i ], [ %.sroa.046.0.ph105.i, %.preheader.i ]
  %.sroa.024.2.i = phi i1 [ true, %.loopexit81.i ], [ false, %.preheader.preheader.i ], [ false, %.preheader.i ]
  %.sroa.07.1.in.i = phi i64 [ %.sroa.07.0103.i, %.loopexit81.i ], [ %.sroa.07.0103.i, %.preheader.preheader.i ], [ %i.bt, %.preheader.i ]
  %.sroa.07.1.i = add i64 %.sroa.07.1.in.i, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12323
  %i.bk = icmp ult i64 %.sroa.07.1.i, %5
  br i1 %i.bk, label %.lr.ph.i, label %.outer._crit_edge.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.sroa.07.0.ph107.i = phi i64 [ %4, %.lr.ph.lr.ph.i ], [ %.sroa.07.1.i, %.outer.i ]
  %.sroa.024.0.ph106.i = phi i1 [ false, %.lr.ph.lr.ph.i ], [ %.sroa.024.2.i, %.outer.i ]
  %.sroa.046.0.ph105.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.046.1.i, %.outer.i ] ; 5 uses
  %.sroa.048.0.ph104.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.048.1.i, %.outer.i ] ; 4 uses
  %i.bl = icmp samesign ult i32 %.sroa.048.0.ph104.i, 1025
  %i.bm = zext i1 %i.bl to i32
  %.sroa.043.0.i = add nuw nsw i32 %.sroa.046.0.ph105.i, %i.bm
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  %i.bn = trunc nuw i32 %.sroa.046.0.ph105.i to i16 ; 2 uses
  %i.bo = trunc nuw i32 %.sroa.048.0.ph104.i to i16
  %i.bp = add i64 %.sroa.07.0103.i, -1
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.bn, i16 noundef %i.bo, i64 noundef %i.bp)
          to label %.preheader.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i

.preheader.preheader.i:                           ; preds = %bb.o
  %umax126.i = call i16 @llvm.umax.i16(i16 %i.bn, i16 2)
  %exitcond127.not.i441 = icmp ult i32 %.sroa.046.0.ph105.i, 3
  br i1 %exitcond127.not.i441, label %.outer.i, label %.lr.ph444

bb.p:                                             ; preds = %bb.m
  %i.bq = add i64 %.sroa.07.0103.i, -1            ; 4 uses
  %i.br = icmp ult i64 %i.bq, %5
  br i1 %i.br, label %bb.q, label %bb.r

.preheader.i:                                     ; preds = %.lr.ph444
  %i.bs = add nuw i16 %.sroa.055.0.i442, 1        ; 2 uses
  %exitcond127.not.i = icmp eq i16 %i.bs, %umax126.i
  br i1 %exitcond127.not.i, label %.outer.i, label %.lr.ph444

.lr.ph444:                                        ; preds = %.preheader.preheader.i, %.preheader.i
  %.sroa.07.2.i443 = phi i64 [ %i.bt, %.preheader.i ], [ %.sroa.07.0103.i, %.preheader.preheader.i ]
  %.sroa.055.0.i442 = phi i16 [ %i.bs, %.preheader.i ], [ 2, %.preheader.preheader.i ]
  %i.bt = add i64 %.sroa.07.2.i443, 1             ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.bt)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !12322, !noalias !12326, !noundef !12
  %i.bw = zext i8 %i.bv to i16
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.bw, i16 noundef 0, i64 noundef %i.bq)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bq, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @890) #39
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.s:                                             ; preds = %bb.r, %bb.g
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.bx = icmp ugt i32 %.sroa.039.0.i, 2
  %i.by = icmp ult i16 %i.ba, 258
  %or.cond5.i = and i1 %i.by, %i.bx
  br i1 %or.cond5.i, label %.loopexit81.i, label %bb.n

bb.u:                                             ; preds = %bb.n
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.ba, i16 noundef %i.bb, i64 noundef %.sroa.07.0103.i)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.v:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0103.i
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !12322, !noalias !12326, !noundef !12
  %i.cb = zext i8 %i.ca to i16
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.cb, i16 noundef 0, i64 noundef %.sroa.07.0103.i)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.030.0.i = phi i16 [ %i.ba, %bb.u ], [ 1, %bb.v ] ; 2 uses
  %exitcond.not.i437 = icmp ult i16 %.sroa.030.0.i, 2
  br i1 %exitcond.not.i437, label %._crit_edge, label %.lr.ph440

bb.x:                                             ; preds = %.lr.ph440
  %i.cc = add nuw i16 %.sroa.057.0.i438, 1        ; 2 uses
  %exitcond.not.i = icmp eq i16 %.sroa.030.0.i, %i.cc
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph440

.lr.ph440:                                        ; preds = %bb.w, %bb.x
  %.sroa.07.3.i439 = phi i64 [ %i.cd, %bb.x ], [ %.sroa.07.0103.i, %bb.w ]
  %.sroa.057.0.i438 = phi i16 [ %i.cc, %bb.x ], [ 1, %bb.w ]
  %i.cd = add i64 %.sroa.07.3.i439, 1             ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.cd)
          to label %bb.x unwind label %.loopexit.i

._crit_edge:                                      ; preds = %bb.x, %bb.w
  %.sroa.07.3.i.lcssa = phi i64 [ %.sroa.07.0103.i, %bb.w ], [ %i.cd, %bb.x ]
  %i.ce = add i64 %.sroa.07.3.i.lcssa, 1          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12323
  %i.cf = icmp ult i64 %i.ce, %5
  br i1 %i.cf, label %bb.h, label %.outer._crit_edge.i

.loopexit.i:                                      ; preds = %.lr.ph440
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph444
  %lpad.loopexit72.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i: ; preds = %bb.v, %bb.u, %bb.q, %.noexc65.i, %bb.k, %bb.i, %bb.h
  %lpad.loopexit78.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i: ; preds = %bb.o
  %lpad.loopexit.split-lp79.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph
  %lpad.loopexit83.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.r, %bb.g, %bb.f
  %lpad.loopexit.split-lp84.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit72.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp79.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit78.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit83.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp84.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 720900, i64 noundef 2) #34
  br label %.thread

.thread77:                                        ; preds = %bb.ac, %bb.ab
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef 720900, i64 noundef 2) #34
  br label %.thread

bb.y:                                             ; preds = %bb.cw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef 720900, i64 noundef 2) #34
  br label %bb.b

bb.z:                                             ; preds = %bb.e, %bb.aa, %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit: ; preds = %.outer._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2304) %i.n, i8 0, i64 2304, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.m, i8 0, i64 256, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 2304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.ac, i8 0, i64 5120, i1 false)
  invoke void @_ZN6zopfli7squeeze11SymbolStats14get_statistics17h29395d5ef7d2221cE(ptr noalias noundef nonnull align 8 dereferenceable(5120) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ae)
          to label %bb.aa unwind label %bb.z

bb.aa:                                            ; preds = %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit
  %i.ci = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %bb.ab unwind label %bb.z      ; 12 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.cj = sub i64 %5, %4                          ; 5 uses
  %i.ck = add i64 %i.cj, 1                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, i64 noundef %i.ck, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc53 unwind label %.thread77

.noexc53:                                         ; preds = %bb.ab
  %i.cl = load i64, ptr %i.j, align 8, !range !14, !noundef !12
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !31, !noundef !12 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.ac, label %bb.ad, !prof !17

bb.ac:                                            ; preds = %.noexc53
  %i.cq = load i64, ptr %i.cp, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.co, i64 %i.cq) #39
          to label %.noexc54 unwind label %.thread77

.noexc54:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %.noexc53
  %i.cr = load ptr, ptr %i.cp, align 8, !nonnull !12, !noundef !12
  %i.cs = icmp ule i64 %i.ck, %i.co
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.co, ptr %i.ab, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 9 uses
  store ptr %i.cr, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 10 uses
  store i64 0, ptr %i.cu, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.w, i8 0, i64 5120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i32 1, ptr %i.aa, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 2, ptr %i.cv, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.da = call i64 @llvm.usub.sat.i64(i64 %4, i64 32768) ; 3 uses
  %.not.i.i = icmp ugt i64 %5, %3
  %i.db = icmp ugt i64 %i.ck, 1
  %.sroa.13.0.i13.i = add i64 %i.cj, -1           ; 3 uses
  %i.dc = icmp eq i64 %.sroa.13.0.i13.i, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.dh = icmp ult i64 %4, %5
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 655364 ; 2 uses
  %i.dj = add i64 %4, 259
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.eh = icmp ult i64 %i.da, %4
  %i.ei = add i64 %5, -2
  %i.ej = sub i64 %i.ei, %4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.dj, %bb.ad
  %.sroa.04.0 = phi i64 [ -1, %bb.ad ], [ %.sroa.04.1, %bb.dj ] ; 3 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.ad ], [ %.sroa.02.1, %bb.dj ]
  %.sroa.01.0 = phi double [ 0.000000e+00, %bb.ad ], [ %i.ms, %bb.dj ]
  %.sroa.0.0 = phi double [ +inf, %bb.ad ], [ %.sroa.0.1, %bb.dj ] ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12327)
  call void @llvm.experimental.noalias.scope.decl(metadata !12328)
  call void @llvm.experimental.noalias.scope.decl(metadata !12329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !12330)
  call void @llvm.experimental.noalias.scope.decl(metadata !12331)
  call void @llvm.experimental.noalias.scope.decl(metadata !12332)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12333
  call void @llvm.experimental.noalias.scope.decl(metadata !12334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12335
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.ck, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc56 unwind label %.loopexit

.noexc56:                                         ; preds = %bb.ae
  %i.ek = load i64, ptr %i.c, align 8, !range !14, !noalias !12335, !noundef !12
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = load i64, ptr %i.cw, align 8, !range !31, !noalias !12335, !noundef !12 ; 2 uses
end_hunk_0
