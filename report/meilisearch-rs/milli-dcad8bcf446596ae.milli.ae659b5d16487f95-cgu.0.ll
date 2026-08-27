Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/milli-dcad8bcf446596ae.milli.ae659b5d16487f95-cgu.0?download=true
inline.NumInlined: 106527
inline.NumDeleted: 43100
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h87e0fe5776e56004E":bb.a

bb.bx:                                            ; preds = %.noexc.i28.i.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread unwind label %bb.bu, !noalias !181341

.thread49.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !181183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !181183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !181183
  br label %.loopexit56.i.i

bb.by:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hed7d0df8d595b940E.exit41.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hed7d0df8d595b940E.exit46.i.i.i"
  %.sroa.717.0.i.i = phi ptr [ %i.ix, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hed7d0df8d595b940E.exit46.i.i.i" ], [ %.sroa.717.0.copyload19.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hed7d0df8d595b940E.exit41.i.i.i" ] ; 3 uses
  %.sroa.614.0.i.i = phi i64 [ %.sroa.614.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hed7d0df8d595b940E.exit46.i.i.i" ], [ %.sroa.614.0.copyload16.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hed7d0df8d595b940E.exit41.i.i.i" ] ; 2 uses
  %.sroa.012.0.i.i = phi ptr [ %.sroa.012.0.copyload.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hed7d0df8d595b940E.exit46.i.i.i" ], [ %i.gp, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hed7d0df8d595b940E.exit41.i.i.i" ] ; 4 uses
  %.sroa.820.0.copyload22.i.i = load i64, ptr %.sroa.820.0..sroa_idx.i.i, align 8, !noalias !181340 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.923.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.923.0..sroa_idx.i.i, i64 24, i1 false), !noalias !181340
  %.sroa.10.0.copyload26.i.i = load i8, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !181340 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12.0..sroa_idx.i.i, i64 15, i1 false), !noalias !181340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !181258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !181183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !181183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !181183
  %.not16.i.i = icmp eq i8 %.sroa.10.0.copyload26.i.i, 12
  br i1 %.not16.i.i, label %.loopexit56.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.012.0.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.923.i.i, i64 24, i1 false), !noalias !181183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.38.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12.i.i, i64 15, i1 false), !noalias !181183
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.717.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.923.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 176
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !181235, !noundef !10 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.az

.loopexit56.i.i:                                  ; preds = %bb.by, %.thread49.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.923.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.i.i)
  br label %bb.cf

bb.ca:                                            ; preds = %bb.ar
  store i16 1, ptr %i.dm, align 2, !noalias !181253
  %i.lk = getelementptr inbounds nuw i8, ptr %i.di, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i.i, i64 24, i1 false), !noalias !181183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.76.sroa.4.0..sroa.76.0..sroa_idx.sroa_idx.i.i, i64 16, i1 false), !noalias !181183
  %i.ll = getelementptr inbounds nuw i8, ptr %i.di, i64 464
  store ptr %.sroa.717.099.lcssa.i.i, ptr %i.ll, align 8, !noalias !181253
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.717.099.lcssa.i.i, i64 176
  store ptr %i.di, ptr %i.lm, align 8, !noalias !181342
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.717.099.lcssa.i.i, i64 448
  store i16 1, ptr %i.ln, align 8, !noalias !181342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !181238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !181238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !181183
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38.i.i)
  br label %bb.cf

bb.cb:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !181345
  unreachable

bb.cc:                                            ; preds = %bb.p
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17ha8df8e57be74fcabE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #107
          to label %bb.cd unwind label %bb.cb, !noalias !181195

bb.cd:                                            ; preds = %bb.cc
  %i.lq = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %.noexc16.i unwind label %bb.cb, !noalias !181345

.noexc16.i:                                       ; preds = %bb.cd
  br i1 %i.lq, label %.thread, label %bb.ce

bb.ce:                                            ; preds = %.noexc16.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %.thread unwind label %bb.cb, !noalias !181345

bb.cf:                                            ; preds = %bb.al, %.loopexit56.i.i, %bb.ca, %bb.q
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !noalias !181172, !noundef !10
  %i.lt = add i64 %i.ls, 1
  store i64 %i.lt, ptr %i.lr, align 8, !noalias !181172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i8 12, ptr %0, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  ret void

bb.ch:                                            ; preds = %bb.l, %.noexc
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.8.0.i.i.i206 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.lu, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lu, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.cg

.thread:                                          ; preds = %bb.ce, %.noexc16.i, %bb.bx, %.noexc.i28.i.i, %.noexc6.i.i.i, %bb.av, %.noexc.i5.i.i.i, %bb.ai, %.noexc.i.i.i, %.thread33
  %.pn32 = phi { ptr, i32 } [ %i.ds, %bb.av ], [ %eh.lpad-body36, %.thread33 ], [ %i.lp, %.noexc16.i ], [ %i.ds, %.noexc.i5.i.i.i ], [ %i.dv, %.noexc6.i.i.i ], [ %i.lp, %bb.ce ], [ %lpad.phi.i.i, %bb.bx ], [ %i.cw, %.noexc.i.i.i ], [ %lpad.phi.i.i, %.noexc.i28.i.i ], [ %i.cw, %bb.ai ]
  resume { ptr, i32 } %.pn32

.thread33:                                        ; preds = %.noexc21.i, %bb.n, %.thread37
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.bg, %.thread37 ], [ %i.be, %bb.n ], [ %i.be, %.noexc21.i ]
  invoke void @"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17ha8df8e57be74fcabE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %3) #107
          to label %.thread unwind label %bb.ci

bb.ci:                                            ; preds = %.thread33
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h907d580d8dd9a426E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(13) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.26.i.i.i = alloca [13 x i8], align 8     ; 8 uses
  %.sroa.11.i.i = alloca [13 x i8], align 8       ; 11 uses
  %.sroa.1021.i.i = alloca [13 x i8], align 8     ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181351)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !181349, !noalias !181353, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !181349, !noalias !181353, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181354)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !181357, !noalias !181360 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.e, %bb.b ], [ %i.aq, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.ap, %bb.g ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181362)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 12 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.j = load i16, ptr %i.i, align 2, !noalias !181363, !noundef !10 ; 4 uses
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %.idx = mul nuw nsw i64 %i.k, 13
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %i.m = icmp eq i16 %i.j, 0
  br i1 %i.m, label %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i._crit_edge", label %.lr.ph

bb.d:                                             ; preds = %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i"
  %i.n = icmp eq ptr %i.o, %i.l
  br i1 %i.n, label %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i.i29 = phi ptr [ %i.o, %bb.d ], [ %i.h, %bb.c ] ; 4 uses
  %.sroa.8.0.i.i.i28 = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i29, i64 13 ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.8.0.i.i.i28, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181364)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i29, i64 12
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !181367, !noalias !181369, !noundef !10 ; 2 uses
  %i.s = icmp eq i8 %i.g, %i.r
  br i1 %i.s, label %loadbb, label %bb.e

res_block:                                        ; preds = %loadbb95, %loadbb
  %phi.src1 = phi i64 [ %i.x, %loadbb ], [ %i.ag, %loadbb95 ]
  %phi.src2 = phi i64 [ %i.y, %loadbb ], [ %i.ah, %loadbb95 ]
  %i.t = icmp ult i64 %phi.src1, %phi.src2
  %i.u = select i1 %i.t, i32 -1, i32 1
  br label %endblock

loadbb:                                           ; preds = %.lr.ph
  %i.v = load i64, ptr %1, align 1
  %i.w = load i64, ptr %.sroa.01.0.i.i.i29, align 1
  %i.x = tail call i64 @llvm.bswap.i64(i64 %i.v)  ; 2 uses
  %i.y = tail call i64 @llvm.bswap.i64(i64 %i.w)  ; 2 uses
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %loadbb95, label %res_block

loadbb95:                                         ; preds = %loadbb
  %i.aa = getelementptr i8, ptr %1, i64 8
  %i.ab = getelementptr i8, ptr %.sroa.01.0.i.i.i29, i64 8
  %i.ac = load i32, ptr %i.aa, align 1
  %i.ad = load i32, ptr %i.ab, align 1
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.ag = zext i32 %i.ae to i64                   ; 2 uses
  %i.ah = zext i32 %i.af to i64                   ; 2 uses
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb95
  %phi.res = phi i32 [ 0, %loadbb95 ], [ %i.u, %res_block ]
  %i.aj = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  br label %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i"

bb.e:                                             ; preds = %.lr.ph
  %i.ak = tail call i8 @llvm.ucmp.i8.i8(i8 %i.g, i8 %i.r)
  br label %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i"

"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i": ; preds = %bb.e, %endblock
  %.sroa.0.0.i6.i.i.i = phi i8 [ %i.aj, %endblock ], [ %i.ak, %bb.e ]
  switch i8 %.sroa.0.0.i6.i.i.i, label %bb.f [
    i8 -1, label %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i._crit_edge"
    i8 0, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h05c98719f8b243efE.exit"
    i8 1, label %bb.d
  ]

bb.f:                                             ; preds = %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i"
  unreachable

"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i._crit_edge": ; preds = %bb.d, %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i", %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %.sroa.8.0.i.i.i28, %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i" ] ; 10 uses
  %i.al = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i._crit_edge"
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 160
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.4.0.i.ph.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !181370, !nonnull !10, !noundef !10
  %i.aq = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

.thread:                                          ; preds = %bb.a
  %.sroa.15.32.copyload9 = load ptr, ptr %1, align 1, !alias.scope !181353, !noalias !181349
  %.sroa.18.32..sroa_idx10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.18.32.copyload11 = load i40, ptr %.sroa.18.32..sroa_idx10, align 1, !alias.scope !181353, !noalias !181349
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !181373
  %i.ar = tail call noalias noundef align 8 dereferenceable_or_null(160) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !181373 ; 6 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.az, label %"_ZN5alloc11collections5btree4node115NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$16push_with_handle17hebf9470682a224e8E.exit.i", !prof !59

bb.h:                                             ; preds = %"_ZN87_$LT$milli..update..new..indexer..mini_string..MiniString$u20$as$u20$core..cmp..Ord$GT$3cmp17h0908821f7c2db0bfE.exit.i.i.i._crit_edge"
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10 ; 9 uses
  %.sroa.15.32.copyload = load ptr, ptr %1, align 1, !alias.scope !181353, !noalias !181349 ; 2 uses
  %.sroa.18.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.18.32.copyload = load i40, ptr %.sroa.18.32..sroa_idx, align 1, !alias.scope !181353, !noalias !181349 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26.i.i.i)
  %i.au = icmp ult i16 %i.j, 11
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #101, !noalias !181377
  %i.aw = tail call noalias noundef align 8 dereferenceable_or_null(160) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !181377 ; 19 uses
  %i.ax = icmp eq ptr %i.aw, null                 ; 4 uses
  br i1 %i.av, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.k
  br i1 %.not.i.i.i.i.not, label %bb.k, label %bb.af

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw [13 x i8], ptr %i.h, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 13
  %i.ba = sub nuw nsw i64 %i.k, %.sroa.4.0.i.ph.i.i
  %i.bb = mul nuw nsw i64 %i.ba, 13
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 1 %i.ay, i64 %i.bb, i1 false), !alias.scope !181386, !noalias !181389
  br label %bb.af

bb.l:                                             ; preds = %bb.i
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.q [
    i64 5, label %bb.u
    i64 6, label %bb.y
  ]

bb.m:                                             ; preds = %bb.i
  br i1 %i.ax, label %bb.n, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i.i.i.i", !prof !59

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 160) #106, !noalias !181395
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i.i.i.i": ; preds = %bb.m
  store ptr null, ptr %i.aw, align 8, !noalias !181395
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181399)
  %i.bd = load i16, ptr %i.at, align 2, !noalias !181402, !noundef !10
  %i.be = zext i16 %i.bd to i64
  %i.bf = add nsw i64 %i.be, -5                   ; 4 uses
  %i.bg = trunc i64 %i.bf to i16
  store i16 %i.bg, ptr %i.bc, align 2, !alias.scope !181399, !noalias !181404
  %i.bh = icmp ult i64 %i.bf, 12
  br i1 %i.bh, label %"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h3ef650038a405805E.exit.i.i.i", label %bb.o, !prof !119

bb.o:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i.i.i.i"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bf, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2467) #106
          to label %.noexc.i.i.i.i unwind label %bb.p, !noalias !181395

.noexc.i.i.i.i:                                   ; preds = %bb.o
  unreachable

common.resume.i.i.i:                              ; preds = %bb.ab, %bb.x, %bb.t, %bb.p
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %i.bt, %bb.t ], [ %i.cf, %bb.x ], [ %i.cq, %bb.ab ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef 160, i64 noundef 8) #101, !noalias !181377
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h3ef650038a405805E.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i.i.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bl = getelementptr i8, ptr %.sroa.0.0.i.i, i64 77
  %i.bm = mul nuw nsw i64 %i.bf, 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull readonly align 1 %i.bl, i64 %i.bm, i1 false), !alias.scope !181405, !noalias !181404
  store i16 4, ptr %i.at, align 2, !noalias !181402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.26.i.i.i, ptr noundef nonnull align 2 dereferenceable(13) %i.bj, i64 13, i1 false), !noalias !181377
  br label %bb.ac

bb.q:                                             ; preds = %bb.l
  br i1 %i.ax, label %bb.r, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i40.i.i.i", !prof !59

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 160) #106, !noalias !181409
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i40.i.i.i": ; preds = %bb.q
  store ptr null, ptr %i.aw, align 8, !noalias !181409
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181413)
  %i.bo = load i16, ptr %i.at, align 2, !noalias !181416, !noundef !10
  %i.bp = zext i16 %i.bo to i64
  %i.bq = add nsw i64 %i.bp, -7                   ; 4 uses
  %i.br = trunc i64 %i.bq to i16                  ; 2 uses
  store i16 %i.br, ptr %i.bn, align 2, !alias.scope !181413, !noalias !181418
  %i.bs = icmp ult i64 %i.bq, 12
  br i1 %i.bs, label %"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h3ef650038a405805E.exit44.i.i.i", label %bb.s, !prof !119

bb.s:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i40.i.i.i"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bq, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2467) #106
          to label %.noexc.i43.i.i.i unwind label %bb.t, !noalias !181409

.noexc.i43.i.i.i:                                 ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h3ef650038a405805E.exit44.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i40.i.i.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 90
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bw = getelementptr i8, ptr %.sroa.0.0.i.i, i64 103
  %i.bx = mul nuw nsw i64 %i.bq, 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr nonnull readonly align 1 %i.bw, i64 %i.bx, i1 false), !alias.scope !181419, !noalias !181418
  store i16 6, ptr %i.at, align 2, !noalias !181416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.26.i.i.i, ptr noundef nonnull align 2 dereferenceable(13) %i.bu, i64 13, i1 false), !noalias !181377
  %i.by = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.ac

bb.u:                                             ; preds = %bb.l
  br i1 %i.ax, label %bb.v, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i45.i.i.i", !prof !59

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 160) #106, !noalias !181423
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i45.i.i.i": ; preds = %bb.u
  store ptr null, ptr %i.aw, align 8, !noalias !181423
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181427)
  %i.ca = load i16, ptr %i.at, align 2, !noalias !181430, !noundef !10
  %i.cb = zext i16 %i.ca to i64
  %i.cc = add nsw i64 %i.cb, -6                   ; 4 uses
  %i.cd = trunc i64 %i.cc to i16
  store i16 %i.cd, ptr %i.bz, align 2, !alias.scope !181427, !noalias !181432
  %i.ce = icmp ult i64 %i.cc, 12
  br i1 %i.ce, label %"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h3ef650038a405805E.exit49.i.i.i", label %bb.w, !prof !119

bb.w:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i45.i.i.i"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.cc, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2467) #106
          to label %.noexc.i48.i.i.i unwind label %bb.x, !noalias !181423

.noexc.i48.i.i.i:                                 ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h3ef650038a405805E.exit49.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hf3ef01b5500e986aE.exit.i45.i.i.i"
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 77
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ci = getelementptr i8, ptr %.sroa.0.0.i.i, i64 90
  %i.cj = mul nuw nsw i64 %i.cc, 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr nonnull readonly align 2 %i.ci, i64 %i.cj, i1 false), !alias.scope !181433, !noalias !181432
end_hunk_0
begin_hunk_1_@_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E
declare noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E() unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare void @_ZN10tokenizers6models3bpe5model10BpeBuilder3new17h90b2603a47eda4b5E(ptr dead_on_unwind noalias noundef writable sret([232 x i8]) align 8 captures(address) dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN10tokenizers6models3bpe5model10BpeBuilder9unk_token17h8a2705a6d04f5907E(ptr dead_on_unwind noalias noundef writable sret([232 x i8]) align 8 captures(address) dereferenceable(232), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN10tokenizers6models3bpe5model10BpeBuilder25continuing_subword_prefix17he16ead9ea62246f4E(ptr dead_on_unwind noalias noundef writable sret([232 x i8]) align 8 captures(address) dereferenceable(232), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN10tokenizers6models3bpe5model10BpeBuilder18end_of_word_suffix17hd33a25fff10a41d6E(ptr dead_on_unwind noalias noundef writable sret([232 x i8]) align 8 captures(address) dereferenceable(232), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN10tokenizers6models3bpe5model10BpeBuilder5build17h55203a205214fee5E(ptr dead_on_unwind noalias noundef writable sret([376 x i8]) align 8 captures(address) dereferenceable(376), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17he552d3e7f5a29733E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN10tokenizers14pre_tokenizers9metaspace9Metaspace3new17hc5c180645d134563E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), i32 noundef range(i32 0, 1114112), i8 noundef range(i8 0, 3), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$13parse_str_raw17hfbae946a49ab53cbE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN101_$LT$candle_core..safetensors..MmapedSafetensors$u20$as$u20$candle_nn..var_builder..SimpleBackend$GT$3get17h79f66975da01d7c1E"(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 14), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN101_$LT$candle_core..safetensors..MmapedSafetensors$u20$as$u20$candle_nn..var_builder..SimpleBackend$GT$13get_unchecked17h44ec35cf5ef3f0baE"(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 14), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN101_$LT$candle_core..safetensors..MmapedSafetensors$u20$as$u20$candle_nn..var_builder..SimpleBackend$GT$15contains_tensor17hf9038e1da147bba1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9candle_nn11var_builder92VarBuilderArgs$LT$alloc..boxed..Box$LT$dyn$u20$candle_nn..var_builder..SimpleBackend$GT$$GT$12from_backend17h35a1386a8f0763e0E"(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i8 noundef range(i8 0, 14), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN89_$LT$candle_core..pickle..PthTensors$u20$as$u20$candle_nn..var_builder..SimpleBackend$GT$3get17ha8ccd9c45d93bb73E"(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 14), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN89_$LT$candle_core..pickle..PthTensors$u20$as$u20$candle_nn..var_builder..SimpleBackend$GT$13get_unchecked17h05e270f029b99677E"(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 14), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN89_$LT$candle_core..pickle..PthTensors$u20$as$u20$candle_nn..var_builder..SimpleBackend$GT$15contains_tensor17h19a7f6633f5e7667E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops130_$LT$impl$u20$core..ops..arith..SubAssign$LT$$RF$roaring..bitmap..RoaringBitmap$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$10sub_assign17h264c5df42b061371E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops88_$LT$impl$u20$core..ops..bit..BitOrAssign$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$12bitor_assign17h09102212d483a5f9E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder11FrozenItems3get17h8232a006ae0a176bE(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$22explode_level_zero_geo17hcf0ca64506284c6eE"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), i32 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(152), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder18get_children_cells17h56839557153c4de8E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops86_$LT$impl$u20$core..ops..bit..BitOr$u20$for$u20$$RF$roaring..bitmap..RoaringBitmap$GT$5bitor17h843290a2aaa5c578E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap8inherent79_$LT$impl$u20$core..clone..Clone$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$5clone17h4debcbbb2170dfb6E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite7builder14get_cell_shape17h4b4d0174ccd9b0d8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i48 @"_ZN139_$LT$zerometry..Zerometry$u20$as$u20$zerometry..relation..RelationBetweenShapes$LT$geo_types..geometry..multi_polygon..MultiPolygon$GT$$GT$8relation17h59cb8aadfa6cb0b1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i56) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN71_$LT$cellulite..metadata..Version$u20$as$u20$core..default..Default$GT$7default17hcacaaff74eccc834E"(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN9cellulite9Cellulite11set_version17h1d01d6968d680604E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_ZN3h3o5index4cell9CellIndex13new_unchecked17h23669f4b7fb1e7a1E(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN7roaring6bitmap3cmp48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$11is_disjoint17ha348ac29f04de799E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN9cellulite7builder38_$LT$impl$u20$cellulite..Cellulite$GT$23does_cell_have_children17h84537149144d1b60E"(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap3ops87_$LT$impl$u20$core..ops..bit..BitAnd$u20$for$u20$$RF$roaring..bitmap..RoaringBitmap$GT$6bitand17h4de24adb76117199E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_ZN9getrandom3imp15getrandom_inner17hcc95ace2602abb33E(ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #97

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0d70a2aca5a74746E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hf18db4cd2fb82979E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h62e5106d99f1b73fE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h735543a5df864733E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8a84036aa67c6426E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hfb508c726c1591a7E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hcf90f16bf92fc41fE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haf9a94306ebe8e65E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h81bf1721db791309E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hd5337b6ce675cfa9E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h20f46899da433db4E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3acfa6491530e6b7E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hed6d773e1d62b7f4E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17haaa7a586260f9f22E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h242a826b93b21512E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN9once_cell3imp18initialize_or_wait17h8267270b59612bf2E(ptr noundef nonnull align 8, ptr noundef align 1, ptr) unnamed_addr #32

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$4init17h2560442118af329bE"(ptr noundef nonnull align 8) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef align 8 dereferenceable(64) ptr @"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$4init17h3a287387e363e5bcE"(ptr noundef nonnull align 8) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN62_$LT$getrandom..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h5d17286a64b5f174E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #89

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #86

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #86

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #89

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #104

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #89

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #89

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #97

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #89

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #89

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #89

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #105

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #89

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #89

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #97

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #89

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #97

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #89

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #97

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #89

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #89

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #97

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #89

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #89

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #89

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #89

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nofree nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { inlinehint mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #58 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #59 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { noinline nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #61 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #62 = { nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #63 = { nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #65 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #66 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #67 = { mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #68 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #69 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #70 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #71 = { nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #72 = { cold mustprogress noinline norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #73 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #74 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #75 = { mustprogress norecurse nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #76 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #77 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #78 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #79 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #80 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #81 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #82 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #83 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #84 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #85 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #86 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #87 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #88 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #89 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #90 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #91 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #92 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #93 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #94 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #95 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #96 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #97 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #98 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #99 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #100 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #101 = { nounwind }
attributes #102 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #103 = { cold nofree noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #104 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #105 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #106 = { noreturn }
attributes #107 = { cold }
attributes #108 = { cold noreturn nounwind }
attributes #109 = { noreturn nounwind }
attributes #110 = { "function-inline-cost-multiplier"="2" }
attributes #111 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN5alloc11collections5btree3set21BTreeSet$LT$T$C$A$GT$12intersection17h36069f0796b17c91E: argument 1"}
!5 = distinct !{!5, !"_ZN5alloc11collections5btree3set21BTreeSet$LT$T$C$A$GT$12intersection17h36069f0796b17c91E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN5alloc11collections5btree3set21BTreeSet$LT$T$C$A$GT$12intersection17h36069f0796b17c91E: argument 2"}
!8 = !{!9, !7}
!9 = distinct !{!9, !5, !"_ZN5alloc11collections5btree3set21BTreeSet$LT$T$C$A$GT$12intersection17h36069f0796b17c91E: argument 0"}
!10 = !{}
!11 = !{!12, !9, !4, !7}
!12 = distinct !{!12, !13, !"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hddf7a8a80e792555E: argument 0"}
!13 = distinct !{!13, !"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hddf7a8a80e792555E"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!9, !4, !7}
!17 = !{!18, !9, !4, !7}
!18 = distinct !{!18, !19, !"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hf4da483afd361a6cE: argument 0"}
!19 = distinct !{!19, !"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hf4da483afd361a6cE"}
!20 = !{!21, !18, !9, !4, !7}
!21 = distinct !{!21, !22, !"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hddf7a8a80e792555E: argument 0"}
!22 = distinct !{!22, !"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hddf7a8a80e792555E"}
!23 = distinct !{!23, !15}
!24 = !{!25, !9, !4, !7}
!25 = distinct !{!25, !26, !"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hf4da483afd361a6cE: argument 0"}
!26 = distinct !{!26, !"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hf4da483afd361a6cE"}
!27 = !{!28, !25, !9, !4, !7}
!28 = distinct !{!28, !29, !"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hddf7a8a80e792555E: argument 0"}
!29 = distinct !{!29, !"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hddf7a8a80e792555E"}
!30 = distinct !{!30, !15}
!31 = !{!9, !4}
!32 = !{!33, !9, !4, !7}
!33 = distinct !{!33, !34, !"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hddf7a8a80e792555E: argument 0"}
!34 = distinct !{!34, !"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17hddf7a8a80e792555E"}
!35 = distinct !{!35, !15}
!36 = !{!37, !9, !4, !7}
!37 = distinct !{!37, !38, !"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hf4da483afd361a6cE: argument 0"}
!38 = distinct !{!38, !"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$14last_leaf_edge17hf4da483afd361a6cE"}
end_hunk_1
