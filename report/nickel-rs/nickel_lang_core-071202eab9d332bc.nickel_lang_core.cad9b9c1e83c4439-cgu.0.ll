Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37289
inline.NumDeleted: 15087
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h7b2119c3c7514ae3E:bb.a
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.r)
          to label %.body unwind label %bb.aq, !noalias !98628, !inline_history !5

bb.br:                                            ; preds = %bb.ap, %bb.ak, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9fbda31365e0bd48E.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.96, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.96)
  %i.er = icmp eq ptr %i.t, %i.ap
  br i1 %i.er, label %._crit_edge, label %bb.b

bb.bs:                                            ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.96)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.es, align 8, !alias.scope !98643
  store i64 20, ptr %0, align 8, !alias.scope !98643
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void

._crit_edge:                                      ; preds = %bb.br, %bb.a
  %.sroa.10.1 = phi i16 [ %.sroa.10.0.copyload, %bb.a ], [ 0, %bb.br ]
  %.sroa.9.1 = phi i16 [ %.sroa.9.0.copyload, %bb.a ], [ %i.cd, %bb.br ]
  %.sroa.7.1 = phi ptr [ %.sroa.7.0.copyload, %bb.a ], [ %i.bt, %bb.br ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.copyload, %bb.a ], [ 10, %bb.br ]
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5150.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, i64 72, i1 false)
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !98644
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.1, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !98644
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 %.sroa.9.1, ptr %.sroa.6151.0..sroa_idx, align 8, !alias.scope !98644
  %.sroa.7152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 %.sroa.10.1, ptr %.sroa.7152.0..sroa_idx, align 2, !alias.scope !98644
  %.sroa.8153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.sroa.11.0.copyload, ptr %.sroa.8153.0..sroa_idx, align 4, !alias.scope !98644
  br label %bb.bt

.body:                                            ; preds = %bb.bq, %bb.bp, %.thread65.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.pn.pn19.i, %bb.bp ], [ %i.ca, %.thread65.i ], [ %.pn.pn.pn.pn19.i, %bb.bq ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits7collect6Extend10extend_one17h54fe0446177c6a15E(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !98662 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98664)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.in.in.in.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.in.in.i = load i64, ptr %.sroa.0.0.in.in.in.i, align 8, !range !175, !alias.scope !98664, !noundef !152 ; 2 uses
  %.sroa.0.0.in.i = icmp ne i64 %.sroa.0.0.in.in.i, -9223372036854775808 ; 3 uses
  %.sroa.0.0.i = zext i1 %.sroa.0.0.in.i to i64   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !98665, !noundef !152
  %i.g = icmp ult i64 %i.f, %.sroa.0.0.i
  br i1 %i.g, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h50371087c42fa132E.exit.i.i", !prof !154

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !98666, !noundef !152
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !98666, !nonnull !152, !noundef !152
  %i.l = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.i, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h50371087c42fa132E.exit.i.i" unwind label %bb.e, !noalias !98664 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h50371087c42fa132E.exit.i.i": ; preds = %bb.b, %bb.a
  %i.m = load i64, ptr %0, align 8, !range !153, !alias.scope !98666, !noundef !152
  %i.n = load i64, ptr %i.d, align 8, !alias.scope !98666, !noundef !152 ; 2 uses
  %i.o = icmp ult i64 %i.n, 128102389400760776
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nsw i64 %i.m, %i.n
  %i.q = icmp ult i64 %i.p, %.sroa.0.0.i
  br i1 %i.q, label %bb.c, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hf0cffbab8317fe46E.exit.i"

bb.c:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h50371087c42fa132E.exit.i.i"
  %i.r = load i64, ptr %i.c, align 8, !alias.scope !98666, !noundef !152
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !98666, !noundef !152
  %i.t = add i64 %i.s, %i.r
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h11945144d7fa79ebE(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 1, i64 noundef %i.t)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hf0cffbab8317fe46E.exit.i" unwind label %bb.e, !noalias !98664

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hf0cffbab8317fe46E.exit.i": ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h50371087c42fa132E.exit.i.i"
  br i1 %.sroa.0.0.in.i, label %.noexc2.us.i.i.i, label %"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hd59ab6e39a902f2fE.exit"

.noexc2.us.i.i.i:                                 ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hf0cffbab8317fe46E.exit.i"
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 24, i1 false), !noalias !98668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.513.0..sroa_idx.i, i64 32, i1 false), !noalias !98663
  store i64 %.sroa.0.0.in.in.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !98667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98669
  call fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h28504d69f541eba9E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.i), !noalias !98664
  %i.v = load i64, ptr %i.u, align 8, !range !175, !noalias !98670, !noundef !152
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %"._ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h07c6ef64ba45a993E.exit4_crit_edge.split.us.i.i.i", label %bb.d

bb.d:                                             ; preds = %.noexc2.us.i.i.i
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h7982ac6aa15750d5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.u), !noalias !98664
  br label %"._ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h07c6ef64ba45a993E.exit4_crit_edge.split.us.i.i.i"

"._ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h07c6ef64ba45a993E.exit4_crit_edge.split.us.i.i.i": ; preds = %bb.d, %.noexc2.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98667
  br label %"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hd59ab6e39a902f2fE.exit"

"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h07c6ef64ba45a993E.exit.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br i1 %.sroa.0.0.in.i, label %bb.f, label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h07c6ef64ba45a993E.exit.i"

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h7982ac6aa15750d5E"(ptr noalias noundef readonly align 8 dereferenceable(40) %.sroa.0.0.in.in.in.i)
          to label %"_ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h07c6ef64ba45a993E.exit.i" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !98664
  unreachable

"_ZN117_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hd59ab6e39a902f2fE.exit": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hf0cffbab8317fe46E.exit.i", %"._ZN4core3ptr139drop_in_place$LT$core..option..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h07c6ef64ba45a993E.exit4_crit_edge.split.us.i.i.i"
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 1114113) i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h63273c8f10b4fb50E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -1) %1) unnamed_addr #42 personality ptr @rust_eh_personality !guid !98691 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98692)
  %i.a = icmp ugt i64 %1, 31
  br i1 %i.a, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !alias.scope !98692, !nonnull !152, !noundef !152 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !98692, !nonnull !152, !noundef !152 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %.idx.i = and i64 %i.g, -32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.i = icmp eq i64 %1, 32
  %i.j = icmp samesign eq i64 %.idx.i, 0
  %or.cond37.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond37.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd739053eb1bd9b04E.exit.thread.i", label %.lr.ph.i.i.i

.loopexit.i:                                      ; preds = %bb.c, %.lr.ph45.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %.sroa.0.1.lcssa.i, %.lr.ph45.i ], [ %.sroa.0.1.lcssa.i, %bb.c ] ; 2 uses
  %.not2148.i = icmp eq i64 %.sroa.0.0.i, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not2148.i, label %.loopexit.i..loopexit_crit_edge, label %.lr.ph50.i

.loopexit.i..loopexit_crit_edge:                  ; preds = %.loopexit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre7 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !98693
  br label %.loopexit

.lr.ph50.i:                                       ; preds = %.loopexit.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd739053eb1bd9b04E.exit.thread.i"
  %.promoted47.i = phi ptr [ %i.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd739053eb1bd9b04E.exit.thread.i" ], [ %.pre, %.loopexit.i ]
  %.sroa.0.0159.i = phi i64 [ %.sroa.0.1.lcssa.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd739053eb1bd9b04E.exit.thread.i" ], [ %.sroa.0.0.i, %.loopexit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !98692, !nonnull !152, !noundef !152 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  br label %bb.d

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd739053eb1bd9b04E.exit.thread.i": ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.r, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i = phi i64 [ %1, %bb.b ], [ %op.rdx, %.lr.ph.i.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.06.0.lcssa.i ; 4 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !98694
  %.not18.i = icmp ule i64 %.sroa.06.0.lcssa.i, %i.g
  tail call void @llvm.assume(i1 %.not18.i)
  %.not1944.i = icmp eq ptr %i.d, %i.n
  br i1 %.not1944.i, label %.lr.ph50.i, label %.lr.ph45.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.0.140.i = phi i64 [ %op.rdx, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  %.sroa.06.039.i = phi i64 [ %i.r, %.lr.ph.i.i.i ], [ 0, %bb.b ]
  %.sroa.0.03038.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.o = load <32 x i8>, ptr %.sroa.0.03038.i, align 1, !noalias !98692
  %i.p = icmp sgt <32 x i8> %i.o, splat (i8 -65)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.03038.i, i64 32 ; 2 uses
  %i.r = add nuw i64 %.sroa.06.039.i, 32          ; 2 uses
  %i.s = bitcast <32 x i1> %i.p to i32
  %i.t = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.s)
  %i.u = zext nneg i32 %i.t to i64
  %op.rdx = sub i64 %.sroa.0.140.i, %i.u          ; 3 uses
  %i.v = icmp ult i64 %op.rdx, 33
  %i.w = icmp eq ptr %i.q, %i.h
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd739053eb1bd9b04E.exit.thread.i", label %.lr.ph.i.i.i

.lr.ph45.i:                                       ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd739053eb1bd9b04E.exit.thread.i", %bb.c
  %i.x = phi ptr [ %i.aa, %bb.c ], [ %i.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd739053eb1bd9b04E.exit.thread.i" ] ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !noalias !98692, !noundef !152
  %i.z = icmp slt i8 %i.y, -64
  br i1 %i.z, label %bb.c, label %.loopexit.i

bb.c:                                             ; preds = %.lr.ph45.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !alias.scope !98695
  %.not19.i = icmp eq ptr %i.d, %i.aa
  br i1 %.not19.i, label %.loopexit.i, label %.lr.ph45.i

bb.d:                                             ; preds = %bb.e, %.lr.ph50.i
  %.sroa.0.249.i = phi i64 [ %.sroa.0.0159.i, %.lr.ph50.i ], [ %i.ae, %bb.e ]
  %i.ab = phi ptr [ %.promoted47.i, %.lr.ph50.i ], [ %i.ak, %bb.e ] ; 4 uses
  %.not22.i = icmp eq ptr %i.l, %i.ab
  br i1 %.not22.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub nuw i64 %i.m, %i.ac
  %i.ae = add i64 %.sroa.0.249.i, -1              ; 2 uses
  %i.af = load i8, ptr %i.ab, align 1, !noalias !98692, !noundef !152
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @2791, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !98692, !noundef !152
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aj ; 3 uses
  store ptr %i.ak, ptr %0, align 8, !alias.scope !98696
  %.not24.i = icmp uge i64 %i.ad, %i.aj
  tail call void @llvm.assume(i1 %.not24.i)
  %.not21.i = icmp eq i64 %i.ae, 0
  br i1 %.not21.i, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.e, %.loopexit.i..loopexit_crit_edge
  %i.al = phi ptr [ %.pre7, %.loopexit.i..loopexit_crit_edge ], [ %i.l, %bb.e ] ; 4 uses
  %i.am = phi ptr [ %.pre, %.loopexit.i..loopexit_crit_edge ], [ %i.ak, %bb.e ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98698)
  %.not.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit", label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !alias.scope !98693
  %i.ao = load i8, ptr %i.am, align 1, !noalias !98699, !noundef !152 ; 5 uses
  %i.ap = icmp sgt i8 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i": ; preds = %bb.f
  %i.aq = and i8 %i.ao, 31
  %i.ar = zext nneg i8 %i.aq to i32               ; 3 uses
  %i.as = icmp ne ptr %i.an, %i.al
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 2 ; 3 uses
  store ptr %i.at, ptr %0, align 8, !alias.scope !98700
  %i.au = load i8, ptr %i.an, align 1, !noalias !98699, !noundef !152
  %i.av = shl nuw nsw i32 %i.ar, 6
  %i.aw = and i8 %i.au, 63
  %i.ax = zext nneg i8 %i.aw to i32               ; 2 uses
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = icmp samesign ugt i8 %i.ao, -33
  br i1 %i.az, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit"

bb.g:                                             ; preds = %bb.f
  %i.ba = zext nneg i8 %i.ao to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i"
  %i.bb = icmp ne ptr %i.at, %i.al
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 3 ; 3 uses
  store ptr %i.bc, ptr %0, align 8, !alias.scope !98701
  %i.bd = load i8, ptr %i.at, align 1, !noalias !98699, !noundef !152
  %i.be = shl nuw nsw i32 %i.ax, 6
  %i.bf = and i8 %i.bd, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg            ; 2 uses
  %i.bi = shl nuw nsw i32 %i.ar, 12
  %i.bj = or disjoint i32 %i.bh, %i.bi
  %i.bk = icmp samesign ugt i8 %i.ao, -17
  br i1 %i.bk, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit16.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit16.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i"
  %i.bl = icmp ne ptr %i.bc, %i.al
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.bm, ptr %0, align 8, !alias.scope !98702
  %i.bn = load i8, ptr %i.bc, align 1, !noalias !98699, !noundef !152
  %i.bo = shl nuw nsw i32 %i.ar, 18
  %i.bp = and i32 %i.bo, 1835008
  %i.bq = shl nuw nsw i32 %i.bh, 6
  %i.br = and i8 %i.bn, 63
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bq, %i.bs
  %i.bu = or disjoint i32 %i.bt, %i.bp
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE.exit": ; preds = %bb.d, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit16.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i", %bb.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i", %.loopexit
  %.sroa.0.0 = phi i32 [ 1114112, %.loopexit ], [ %i.ba, %bb.g ], [ %i.ay, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i" ], [ %i.bu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit16.i.i" ], [ %i.bj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i" ], [ 1114112, %bb.d ]
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator3nth17h837c6f00ae2307a9E(ptr noalias noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !98703 {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i.i = phi i64 [ %i.c, %bb.b ], [ %1, %bb.a ]
  %i.a = tail call fastcc { ptr, i64 } @"_ZN100_$LT$unicode_segmentation..grapheme..Graphemes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h23989c0c124e9c8bE"(ptr noalias noundef nonnull align 8 dereferenceable(192) %0)
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h7ca3e39fc6e8315dE.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.c = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader.i.i

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.e = tail call fastcc { ptr, i64 } @"_ZN100_$LT$unicode_segmentation..grapheme..Graphemes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h23989c0c124e9c8bE"(ptr noalias noundef align 8 dereferenceable(192) %0) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  br label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h7ca3e39fc6e8315dE.exit

_ZN4core4iter6traits8iterator8Iterator10advance_by17h7ca3e39fc6e8315dE.exit: ; preds = %.preheader.i.i, %.loopexit
  %.sroa.3.0 = phi i64 [ %i.g, %.loopexit ], [ undef, %.preheader.i.i ]
  %.sroa.0.0 = phi ptr [ %i.f, %.loopexit ], [ null, %.preheader.i.i ]
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator3nth17hb4c5a0447c7fbce9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !98716 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.01.0.i.i.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98717
  call void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !98718
  %i.d = load i64, ptr %i.b, align 8, !range !182, !noalias !98717, !noundef !152
  %cond.i.i.i = icmp eq i64 %i.d, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98717
  br i1 %cond.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !98719)
  call void @llvm.experimental.noalias.scope.decl(metadata !98720)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98721
  call void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !98719
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !98720, !noundef !152
  %i.i = load i64, ptr %i.a, align 8, !range !182, !noalias !98721, !noundef !152
  switch i64 %i.i, label %bb.e [
    i64 2, label %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"
    i64 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !alias.scope !98720, !nonnull !152, !align !170, !noundef !152
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load <2 x i64>, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !98721
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ]
  %i.l = phi <2 x i64> [ %i.k, %bb.e ], [ undef, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i, ptr %i.m, align 8, !alias.scope !98719
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !98719
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.l, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i, align 8, !alias.scope !98719
  br label %"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit"

"_ZN98_$LT$regex..regex..string..SubCaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc98b1521b71476e1E.exit": ; preds = %bb.d, %bb.f
  %storemerge.i = phi i64 [ 1, %bb.f ], [ 0, %bb.d ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !98719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98721
end_hunk_0
