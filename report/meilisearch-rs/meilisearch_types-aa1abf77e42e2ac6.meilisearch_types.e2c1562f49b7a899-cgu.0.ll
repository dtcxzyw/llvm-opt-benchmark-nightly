Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN17meilisearch_types5tasks15KindWithContent7indexes17hb7b8618582f64dc2E:bb.a
bb.f:                                             ; preds = %bb.a, %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.ab = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #52 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.af, label %bb.ag, !prof !23

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.ad = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #52 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.ad, label %bb.ae, !prof !23

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !21, !noundef !21
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !21
  store ptr %i.ag, ptr %i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  store i64 1, ptr %i.c, align 8, !alias.scope !6697
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.ak, align 8, !alias.scope !6697
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %i.al, align 8, !alias.scope !6697
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = load i64, ptr %i.am, align 8, !range !25, !noundef !21
  %.not16 = icmp eq i64 %i.an, -9223372036854775808
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !21, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !21
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h19b0ca4e4289fc08E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @764)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit" unwind label %bb.l

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit": ; preds = %bb.j
  %i.as = load ptr, ptr %i.ak, align 8, !alias.scope !6698, !noalias !6699, !nonnull !21, !noundef !21 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.ap, ptr %i.at, align 8, !noalias !6700
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %i.ar, ptr %i.au, align 8
  store i64 2, ptr %i.al, align 8, !alias.scope !6698, !noalias !6699
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9861665d17727bedE.exit", %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val18 = load ptr, ptr %i.ak, align 8, !nonnull !21, !noundef !21
  %i.ax = shl nuw i64 %.val, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit": ; preds = %bb.ac, %.body.i.i.i.i, %.body.thread, %bb.v, %bb.u, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.v ], [ %i.bn, %.body.thread ], [ %i.av, %bb.l ], [ %i.av, %bb.m ], [ %i.cf, %bb.u ], [ %i.eb, %.body.i.i.i.i ], [ %i.eb, %bb.ac ]
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.ag, %bb.ae, %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit, %bb.k, %bb.e
  ret void

bb.o:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.y
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit", %bb.o
  %.sroa.014.075 = phi ptr [ %i.ay, %bb.o ], [ %i.v, %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit" ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !21, !noundef !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !21
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hde9aefb15bf8e790E"(ptr noalias noundef align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ba, i64 noundef %i.bc)
          to label %bb.p unwind label %.body.thread

._crit_edge:                                      ; preds = %bb.o, %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hcdc94e5f3885a038E.exit"
  %.sroa.046.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.347.0.copyload = load i64, ptr %.sroa.347.0..sroa_idx, align 8 ; 4 uses
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.046.0.copyload, align 16, !noalias !6701
  %i.bd = icmp eq i64 %.sroa.2.0.copyload, 0      ; 5 uses
  br i1 %i.bd, label %bb.q, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %._crit_edge
  %i.be = icmp slt i64 %.sroa.2.0.copyload, 1152921504606846975
  call void @llvm.assume(i1 %i.be)
  %i.bf = shl i64 %.sroa.2.0.copyload, 4          ; 2 uses
  %i.bg = add i64 %i.bf, 16                       ; 2 uses
  %i.bh = add nsw i64 %.sroa.2.0.copyload, 17
  %i.bi = add i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = icmp uge i64 %i.bi, %i.bg
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp ult i64 %i.bi, 9223372036854775793
  call void @llvm.assume(i1 %i.bk)
  %i.bl = sub nuw nsw i64 -16, %i.bf
  %i.bm = getelementptr inbounds i8, ptr %.sroa.046.0.copyload, i64 %i.bl
  br label %bb.q

.body.thread:                                     ; preds = %.lr.ph, %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %.val19 = load ptr, ptr %i.b, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val20 = load i64, ptr %i.bo, align 8, !noundef !21
  call fastcc void @"_ZN4core3ptr72drop_in_place$LT$std..collections..hash..set..HashSet$LT$$RF$str$GT$$GT$17hd7e6328b3e5b4870E"(ptr %.val19, i64 %.val20) #55
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

bb.p:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !noundef !21
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.014.075, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !noundef !21
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hde9aefb15bf8e790E"(ptr noalias noundef align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bq, i64 noundef %i.bs)
          to label %bb.o unwind label %.body.thread

bb.q:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %._crit_edge
  %.sroa.5.sroa.0.0.i.i.i.i = phi i64 [ %i.bi, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ] ; 8 uses
  %.sroa.5.sroa.4.0.i.i.i.i = phi ptr [ %i.bm, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ undef, %._crit_edge ] ; 8 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ], [ 0, %._crit_edge ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6702)
  call void @llvm.experimental.noalias.scope.decl(metadata !6703)
  call void @llvm.experimental.noalias.scope.decl(metadata !6704)
  call void @llvm.experimental.noalias.scope.decl(metadata !6705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6706
  %i.bt = icmp eq i64 %.sroa.347.0.copyload, 0
  br i1 %i.bt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i
  %i.bx = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bw, %bb.r ] ; 2 uses
  %i.by = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.046.0.copyload, %bb.r ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bx, align 16, !noalias !6707
  %i.bz = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -256 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  store i64 0, ptr %0, align 8, !alias.scope !6708, !noalias !6709
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cc, align 8, !alias.scope !6708, !noalias !6709
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cd, align 8, !alias.scope !6708, !noalias !6709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6706
  %i.ce = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.bd, %i.ce
  br i1 %or.cond.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6710
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit

bb.u:                                             ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond6.i.i = or i1 %i.bd, %i.cg
  br i1 %or.cond6.i.i, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6711
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.r
  %.sroa.14.0.i.i = phi ptr [ %i.bw, %bb.r ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.9.0.copyload.i.i.i.i = phi ptr [ %.sroa.046.0.copyload, %bb.r ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.bv, %bb.r ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ch = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ci = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = and i16 %i.ch, %.lcssa.i.i.i.i.i.i.i
  %i.cl = sub nsw i64 0, %i.cj
  %i.cm = getelementptr inbounds [16 x i8], ptr %.sroa.9.0.copyload.i.i.i.i, i64 %i.cl ; 2 uses
  %i.cn = add i64 %.sroa.347.0.copyload, -1       ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -16
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !6712, !nonnull !21, !align !37, !noundef !21
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !6712, !noundef !21
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.347.0.copyload, i64 4) ; 2 uses
  %i.cs = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 3 uses
  %i.ct = icmp ugt i64 %.sroa.347.0.copyload, 1152921504606846975
  %i.cu = icmp ugt i64 %i.cs, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.ct, %i.cu
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.w, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", !prof !30

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6713
  %i.cv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cs, i64 noundef range(i64 1, 9) 8) #52, !noalias !6713 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %._crit_edge20.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc.i.i.i.i unwind label %bb.u, !noalias !6706

.noexc.i.i.i.i:                                   ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store ptr %i.cp, ptr %i.cv, align 8, !noalias !6706
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cr, ptr %i.cx, align 8, !noalias !6706
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !noalias !6706
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.cv, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6706
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !6706
  call void @llvm.experimental.noalias.scope.decl(metadata !6714)
  call void @llvm.experimental.noalias.scope.decl(metadata !6715)
  %i.cy = icmp eq i64 %i.cn, 0
  br i1 %i.cy, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.x, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"
  %i.cz = phi ptr [ %i.dw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %i.cv, %bb.x ]
  %i.da = phi i64 [ %i.dz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ 1, %bb.x ] ; 5 uses
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %.sroa.14.0.i.i, %bb.x ] ; 2 uses
  %.lcssa410.i.i.i.i.i.i = phi ptr [ %.lcssa49.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.x ] ; 2 uses
  %i.db = phi i16 [ %i.dk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %i.ck, %bb.x ] ; 2 uses
  %.val56.i.i.i.i.i.i = phi i64 [ %i.dn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i" ], [ %i.cn, %bb.x ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.dc = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.dd = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa410.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dc, align 16, !noalias !6716
  %i.de = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -256 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.de to i16 ; 2 uses
  %.not.i.i.i.i.i11.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa49.i.i.i.i.i.i = phi ptr [ %.lcssa410.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.db, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dh = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.di = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.dj = zext nneg i16 %i.di to i64
  %i.dk = and i16 %i.dh, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.dl = sub nsw i64 0, %i.dj
  %i.dm = getelementptr inbounds [16 x i8], ptr %.lcssa49.i.i.i.i.i.i, i64 %i.dl ; 2 uses
  %i.dn = add i64 %.val56.i.i.i.i.i.i, -1         ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -16
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !6717, !nonnull !21, !align !37, !noundef !21
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !6717, !noundef !21
  %i.ds = icmp samesign ult i64 %i.da, 576460752303423488
  call void @llvm.assume(i1 %i.ds)
  %i.dt = load i64, ptr %i.a, align 8, !range !22, !alias.scope !6718, !noalias !6719, !noundef !21
  %i.du = icmp eq i64 %i.da, %i.dt
  br i1 %i.du, label %bb.ab, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i:                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i", %bb.x
  %i.dv = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.bd, %i.dv
  br i1 %or.cond.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6720
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.dw = phi ptr [ %.pre.i.i.i.i25, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.cz, %._crit_edge20.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.da ; 2 uses
  store ptr %i.dp, ptr %i.dx, align 8, !noalias !6721
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.dr, ptr %i.dy, align 8, !noalias !6721
  %i.dz = add nuw nsw i64 %i.da, 1                ; 2 uses
  store i64 %i.dz, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6718, !noalias !6719
  %i.ea = icmp eq i64 %i.dn, 0
  br i1 %i.ea, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.ab
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond16.i.i.i.i = or i1 %i.bd, %i.ec
  br i1 %or.cond16.i.i.i.i, label %.body.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #52, !noalias !6722
  br label %.body.i.i.i.i

bb.ab:                                            ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.da, i64 noundef %.val56.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.z, !noalias !6719

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.ab
  %.pre.i.i.i.i25 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6718, !noalias !6719
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd6c54bab08b088a6E.exit.i.i.i.i.i.i"

.body.i.i.i.i:                                    ; preds = %bb.aa, %bb.z
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6706 ; 2 uses
  %i.ed = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ed, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit", label %bb.ac

bb.ac:                                            ; preds = %.body.i.i.i.i
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6706, !nonnull !21, !noundef !21
  %i.ee = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !6706
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h58378993665cf9eaE.exit"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i": ; preds = %bb.y, %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !6709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6706
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit

_ZN4core4iter6traits8iterator8Iterator7collect17hea56e1ddcd7bbae7E.exit: ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h2dc985ebcc461eb3E.exit.i.i.i.i", %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.ad:                                            ; preds = %bb.g
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57
  unreachable

bb.ae:                                            ; preds = %bb.g
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !21, !noundef !21
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !21
  store ptr %i.eg, ptr %i.ad, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ei, ptr %i.ej, align 8
  store i64 1, ptr %0, align 8, !alias.scope !6723
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ek, align 8, !alias.scope !6723
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.el, align 8, !alias.scope !6723
  br label %bb.n

bb.af:                                            ; preds = %bb.f
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57
  unreachable

bb.ag:                                            ; preds = %bb.f
  store ptr @765, ptr %i.ab, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 10, ptr %i.em, align 8
  store i64 1, ptr %0, align 8, !alias.scope !6724
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.en, align 8, !alias.scope !6724
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.eo, align 8, !alias.scope !6724
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN17meilisearch_types5tasks164_$LT$impl$u20$core..convert..From$LT$$RF$meilisearch_types..tasks..KindWithContent$GT$$u20$for$u20$core..option..Option$LT$meilisearch_types..tasks..Details$GT$$GT$4from17hd95e18ec2071dc49E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [120 x i8], align 8               ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [72 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [168 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [192 x i8], align 8               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.521 = alloca [16 x i8], align 8          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i64, ptr %1, align 8, !range !74, !noundef !21 ; 3 uses
end_hunk_0
