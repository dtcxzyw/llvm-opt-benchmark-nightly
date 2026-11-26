Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57303
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN15index_scheduler14IndexScheduler33get_tasks_from_authorized_indexes17hc9a136e21ee28a25E:bb.a
  %i.de = extractvalue { i32, i32 } %i.dd, 0
  %i.df = trunc i32 %i.de to i1
  br i1 %i.df, label %bb.al, label %.loopexit.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.dg = extractvalue { i32, i32 } %i.dd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.dh = add nsw i64 %.sroa.11.014.i.i.i.i.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !48584
  invoke fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue8get_task17h27ec9948e8e7a7e8E(ptr noalias noundef align 8 captures(address) dereferenceable(784) %i.g, i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, i32 noundef %i.dg)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %bb.ar, !noalias !48585

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.al
  %i.di = load i64, ptr %i.g, align 8, !range !197, !noalias !48586, !noundef !175 ; 3 uses
  %i.dj = icmp eq i64 %i.di, 21
  br i1 %i.dj, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.am

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.cz, i64 344, i1 false), !noalias !48587
  br label %bb.an

bb.am:                                            ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !48586
  store i64 136, ptr %i.f, align 8, !noalias !48586
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.di, 20
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.aq

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.f, i64 344, i1 false), !noalias !48587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !48586
  br label %bb.an

bb.an:                                            ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48584
  %i.dk = load i64, ptr %i.m, align 16, !range !198, !alias.scope !48588, !noalias !48589, !noundef !175
  %i.dl = icmp eq i64 %i.dk, 152
  br i1 %i.dl, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.m)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.ap, !noalias !48590

bb.ap:                                            ; preds = %bb.ao
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !48591
  br label %.body11.i.i.i.i.i.i.i.i.i.i

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ao, %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !48592
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %i.cz, i64 776, i1 false), !noalias !48587
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.f)
          to label %bb.as unwind label %bb.ar, !noalias !48593

.body11.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.ay, %bb.ar, %bb.ap
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.el, %bb.ay ], [ %i.dn, %bb.ar ], [ %i.dm, %bb.ap ]
  invoke fastcc void @"_ZN4core3ptr565drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$C$index_scheduler..queue..tasks..TaskQueue..get_existing_tasks$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$index_scheduler..error..Error$GT$$GT$$GT$17h22810dd2c5855ce5E"(ptr nonnull %.sroa.08.0.i, ptr nonnull %.sroa.69.0.i) #79
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !48594

bb.ar:                                            ; preds = %bb.aq, %bb.al, %bb.ak
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !48586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(432) %i.cy, i64 432, i1 false), !noalias !48595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !48595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  store i64 %i.di, ptr %i.i, align 8, !alias.scope !48580, !noalias !48596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.612.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 776, i1 false), !noalias !48597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.do = load i64, ptr %i.l, align 8, !range !174, !alias.scope !48582, !noalias !48556, !noundef !175
  %i.dp = icmp eq i64 %i.dc, %i.do
  br i1 %i.dp, label %bb.aw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc9.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i", %bb.aj
  %.sroa.9.0.copyload17.i.i.i.i.i = phi i64 [ 1, %bb.aj ], [ %i.dc, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.dc, %.noexc9.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.018.0.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.7.0.copyload15.i.i.i.i.i = phi ptr [ %i.cw, %bb.aj ], [ %i.db, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.db, %.noexc9.i.i.i.i.i.i.i.i.i.i ], [ %i.eh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.dq = load ptr, ptr %.sroa.69.0.i, align 8, !invariant.load !175, !noalias !48598 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  invoke void %i.dq(ptr noundef nonnull %.sroa.08.0.i)
          to label %bb.au unwind label %bb.av, !noalias !48594

bb.au:                                            ; preds = %bb.at, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !range !174, !invariant.load !175, !noalias !48598 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !range !208, !invariant.load !175, !noalias !48598 ; 2 uses
  %i.dv = icmp ult i64 %i.du, -9223372036854775807
  call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp eq i64 %i.ds, 0
  br i1 %i.dw, label %bb.ba, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.au
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) %i.du) #77, !noalias !48594
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !174, !invariant.load !175, !noalias !48598 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !208, !invariant.load !175, !noalias !48598 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, -9223372036854775807
  call void @llvm.assume(i1 %i.ec)
  %i.ed = icmp eq i64 %i.dz, 0
  br i1 %i.ed, label %.body.i.i.i.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.av
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) %i.eb) #77, !noalias !48594
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.as
  %i.ee = load i64, ptr %i.m, align 16, !range !198, !noalias !48599, !noundef !175
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ee, 152
  %i.ef = icmp eq i64 %i.dh, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.ef, %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !48600
  %i.eg = load ptr, ptr %i.da, align 8, !invariant.load !175, !noalias !48601, !nonnull !175
  invoke void %i.eg(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %.sroa.08.0.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !48602, !inline_history !48426

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !48600
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i", %bb.as
  %i.eh = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.db, %bb.as ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [784 x i8], ptr %i.eh, i64 %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.ei, ptr noundef nonnull align 8 dereferenceable(784) %i.i, i64 784, i1 false), !noalias !48594
  %i.ej = add nuw nsw i64 %i.dc, 1                ; 2 uses
  store i64 %i.ej, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !48582, !noalias !48556
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.ek = icmp eq i64 %i.dh, 0
  br i1 %i.ek, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.ak

bb.ay:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ax
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.i) #79
          to label %.body11.i.i.i.i.i.i.i.i.i.i unwind label %bb.az, !noalias !48594

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aw
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.dc, i64 noundef 1, i64 noundef 8, i64 noundef 784)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i" unwind label %bb.ay, !noalias !48603

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !48582, !noalias !48556
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.az:                                            ; preds = %bb.ay, %.body11.i.i.i.i.i.i.i.i.i.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !48594
  unreachable

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.av, %.body11.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %.body11.i.i.i.i.i.i.i.i.i.i ], [ %i.dx, %bb.av ], [ %i.dx, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  invoke void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #79
          to label %.body.i.i.i.i.i unwind label %bb.bb, !noalias !48575

bb.ba:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !48579
  %.sroa.0.0.copyload13.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !48604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !48556
  br label %bb.bc

bb.bb:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i, %bb.ag
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !48575
  unreachable

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.ag, %bb.aa
  %.pn.ph.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cv, %bb.ag ], [ %i.cc, %bb.aa ]
  invoke fastcc void @"_ZN4core3ptr565drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$C$index_scheduler..queue..tasks..TaskQueue..get_existing_tasks$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$index_scheduler..error..Error$GT$$GT$$GT$17h22810dd2c5855ce5E"(ptr nonnull %.sroa.08.0.i, ptr nonnull %.sroa.69.0.i) #79
          to label %.body.i.i.i.i.i unwind label %bb.bb, !noalias !48575

.body.i.i.i.i.i:                                  ; preds = %.body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.af
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i ], [ %i.co, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ], [ %i.co, %bb.af ] ; 2 uses
  %i.eo = load i64, ptr %i.m, align 16, !range !198, !noalias !48554, !noundef !175
  %.not.i.i.i.i.i = icmp eq i64 %i.eo, 152
  br i1 %.not.i.i.i.i.i, label %.body19, label %bb.bl

bb.bc:                                            ; preds = %bb.ba, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ae
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ae ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload17.i.i.i.i.i, %bb.ba ] ; 9 uses
  %.sroa.7.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ae ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.copyload15.i.i.i.i.i, %bb.ba ] ; 14 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.ae ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload13.i.i.i.i.i, %bb.ba ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !48555
  %i.ep = load i64, ptr %i.m, align 16, !range !198, !noalias !48554, !noundef !175
  %.not.not.i.i.i.i.i = icmp eq i64 %i.ep, 152
  br i1 %.not.not.i.i.i.i.i, label %_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.thread.i, label %bb.bd

_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.thread.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !48554
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i.i.i.i) ]
  %i.eq = icmp ult i64 %.sroa.9.0.i.i.i.i.i, 11764505149049459
  call void @llvm.assume(i1 %i.eq)
  %.idx.i = mul nuw nsw i64 %.sroa.9.0.i.i.i.i.i, 784
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i.i.i.i, i64 %.idx.i ; 4 uses
  %i.es = load ptr, ptr %.sink.i.i, align 8, !alias.scope !48547, !nonnull !175, !noundef !175 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !noalias !48550, !noundef !175 ; 2 uses
  %i.ev = icmp ult i64 %i.eu, 288230376151711744
  call void @llvm.assume(i1 %i.ev)
  %i.ew = icmp eq i64 %i.eu, 0
  br i1 %i.ew, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e90a96d48334d1cE.exit.i, label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  %i.ex = load <2 x i64>, ptr %i.m, align 16, !noalias !48605
  %.sroa.966.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.966.0.copyload.i = load ptr, ptr %.sroa.966.0..sroa_idx.i, align 16, !noalias !48605
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !48605
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.11.i, ptr noundef nonnull align 16 dereferenceable(312) %.sroa.11.0..sroa_idx.i, i64 312, i1 false), !noalias !48605
  %i.ey = icmp eq i64 %.sroa.9.0.i.i.i.i.i, 0
  br i1 %i.ey, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i.i.i.i.i.i", label %.lr.ph

bb.be:                                            ; preds = %.lr.ph
  %i.ez = icmp eq i64 %i.fb, %.sroa.9.0.i.i.i.i.i
  br i1 %i.ez, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i.i.i.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.bd, %bb.be
  %.sroa.0.0.i.i.i.i.i.i.i.i120 = phi i64 [ %i.fb, %bb.be ], [ 0, %bb.bd ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [784 x i8], ptr %.sroa.7.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i120
  %i.fb = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i120, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef readonly align 8 dereferenceable(784) %i.fa)
          to label %bb.be unwind label %bb.bg, !noalias !48606

bb.bf:                                            ; preds = %.lr.ph122
  %i.fc = add nuw i64 %.sroa.0.1.i.i.i.i.i.i.i.i121, 1 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, %.sroa.9.0.i.i.i.i.i
  br i1 %i.fd, label %.body.i.i.i.i.i.i, label %.lr.ph122

bb.bg:                                            ; preds = %.lr.ph
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = icmp eq i64 %i.fb, %.sroa.9.0.i.i.i.i.i
  br i1 %i.ff, label %.body.i.i.i.i.i.i, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.bg, %bb.bf
  %.sroa.0.1.i.i.i.i.i.i.i.i121 = phi i64 [ %i.fc, %bb.bf ], [ %i.fb, %bb.bg ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [784 x i8], ptr %.sroa.7.0.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i.i121
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef readonly align 8 dereferenceable(784) %i.fg) #79
          to label %bb.bf unwind label %bb.bh, !noalias !48606

bb.bh:                                            ; preds = %.lr.ph122
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !48607
  unreachable

.body.i.i.i.i.i.i:                                ; preds = %bb.bf, %bb.bg
  %i.fi = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.fi, label %.body19, label %bb.bi

bb.bi:                                            ; preds = %.body.i.i.i.i.i.i
  %i.fj = mul nuw i64 %.sroa.0.0.i.i.i.i.i, 784
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i.i.i, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !48606
  br label %.body19

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i.i.i.i.i.i": ; preds = %bb.be, %bb.bd
  %i.fk = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.fk, label %_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.i, label %bb.bj

bb.bj:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i.i.i.i.i.i"
  %i.fl = mul nuw i64 %.sroa.0.0.i.i.i.i.i, 784
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i.i.i, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !48606
  br label %_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.i

bb.bk:                                            ; preds = %bb.bl
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !48608
  unreachable

bb.bl:                                            ; preds = %.body.i.i.i.i.i
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.m)
          to label %.body19 unwind label %bb.bk, !noalias !48608

_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.i: ; preds = %bb.bj, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !48554
  %.sroa.352.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.352.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.11.i, i64 312, i1 false), !noalias !48549
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  store <2 x i64> %i.ex, ptr %0, align 8, !alias.scope !48544
  %.sroa.251.sroa.2.0..sroa.251.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.966.0.copyload.i, ptr %.sroa.251.sroa.2.0..sroa.251.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !48544
  %.sroa.251.sroa.3.0..sroa.251.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.251.sroa.3.0..sroa.251.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !48544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %"_ZN15index_scheduler5queue5tasks47_$LT$impl$u20$index_scheduler..queue..Queue$GT$33get_tasks_from_authorized_indexes17h52d59eab48e4e0b1E.exit"

bb.bm:                                            ; preds = %_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.thread.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !48547, !noundef !175 ; 3 uses
  %.not57.i = icmp eq ptr %i.fo, null
  br i1 %.not57.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e90a96d48334d1cE.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !48609
  store ptr %.sroa.7.0.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !48610, !noalias !48611
  %.sroa.0101.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.0101.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.0101.sroa.5.0..sroa_idx.i, align 8, !alias.scope !48610, !noalias !48611
  %.sroa.0101.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.er, ptr %.sroa.0101.sroa.6.0..sroa_idx.i, align 8, !alias.scope !48610, !noalias !48611
  %.sroa.4102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sink.i.i, ptr %.sroa.4102.0..sroa_idx.i, align 8, !alias.scope !48610, !noalias !48611
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.fn, ptr %.sroa.5103.0..sroa_idx.i, align 8, !alias.scope !48610, !noalias !48611
  call void @llvm.experimental.noalias.scope.decl(metadata !48612)
  call void @llvm.experimental.noalias.scope.decl(metadata !48613)
  call void @llvm.experimental.noalias.scope.decl(metadata !48614)
  call void @llvm.experimental.noalias.scope.decl(metadata !48615)
  call void @llvm.experimental.noalias.scope.decl(metadata !48616)
  call void @llvm.experimental.noalias.scope.decl(metadata !48617)
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.9.0.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i63.i:                              ; preds = %.body5.i.i.i.i.i.i, %bb.bu
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hv, %.body5.i.i.i.i.i.i ], [ %i.gw, %bb.bu ]
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$meilisearch_types..tasks..Task$GT$$GT$17h2985d294045dfb28E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.c)
          to label %.body19 unwind label %bb.ca, !noalias !48618

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 792
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 744 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 760
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 776 ; 2 uses
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 796
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 797
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %.sroa.02.192..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i.i.i.i, i64 192
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %.sroa.02.424..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i.i.i.i, i64 424
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %.sroa.02.320..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i.i.i.i, i64 320
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %.sroa.02.296..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i.i.i.i, i64 296
  %i.fw = getelementptr i8, ptr %i.es, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 1440
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 1176
  br label %bb.bo

bb.bo:                                            ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0aac9fb751049419E.exit.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.4.013.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fz, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0aac9fb751049419E.exit.i.i.i.i.i.i.i.i.i" ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.fq, ptr noundef nonnull align 8 dereferenceable(784) %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 784, i1 false), !noalias !48620
  %i.fz = getelementptr i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 784 ; 4 uses
  store ptr %.sroa.7.0.i.i.i.i.i, ptr %i.a, align 8, !noalias !48619
  store ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, ptr %i.fp, align 8, !noalias !48619
  call void @llvm.experimental.noalias.scope.decl(metadata !48621)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !48622)
  call void @llvm.experimental.noalias.scope.decl(metadata !48623)
  %i.ga = load i32, ptr %i.fr, align 8, !alias.scope !48624, !noalias !48619, !noundef !175 ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fw, align 8, !noalias !48625, !nonnull !175, !noundef !175 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.et, align 8, !noalias !48625, !noundef !175 ; 5 uses
  %i.gb = lshr i32 %i.ga, 16
  %i.gc = trunc nuw i32 %i.gb to i16              ; 3 uses
  %i.gd = trunc i32 %i.ga to i16
  switch i64 %.val1.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
    i64 1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bo
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bo ], [ %i.go, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ge = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 24
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.gg, align 8, !alias.scope !48626, !noalias !48625, !noundef !175 ; 2 uses
  %i.gh = icmp eq i16 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gc
  br i1 %i.gh, label %bb.bq, label %bb.bp

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.025.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val1.i.i.i.i.i.i.i.i.i.i.i, %bb.bo ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bo ] ; 2 uses
  %i.gi = lshr i64 %.sroa.01.025.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gj = add i64 %i.gi, %.sroa.05.024.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.gk = icmp ult i64 %i.gj, %.val1.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gk)
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gj
  %i.gm = getelementptr i8, ptr %i.gl, i64 24
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.gm, align 8, !alias.scope !48626, !noalias !48625, !noundef !175
  %i.gn = icmp ugt i16 %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gc
  %i.go = select i1 %i.gn, i64 %.sroa.05.024.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gj, !unpredictable !175 ; 2 uses
  %i.gp = sub nuw i64 %.sroa.01.025.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gi ; 2 uses
  %i.gq = icmp ugt i64 %i.gp, 1
  br i1 %i.gq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = icmp ult i16 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gc
  %i.gs = zext i1 %i.gr to i64
  %i.gt = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gs
  %i.gu = icmp ule i64 %i.gt, %.val1.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gu)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gf, i16 noundef %i.gd)
          to label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.br, !noalias !48625

bb.br:                                            ; preds = %bb.bq
  %i.gw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fz, ptr %.sroa.0101.sroa.4.0..sroa_idx.i, align 8, !alias.scope !48627, !noalias !48609
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(784) %i.fq) #79
          to label %bb.bu unwind label %bb.bt, !noalias !48628

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bq
  br i1 %i.gv, label %bb.bs, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.bp, %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %.sroa.02.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(784) %i.fq, i64 712, i1 false), !noalias !48619
  %i.gx = load <4 x i32>, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !48629, !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !48619
  %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !48629, !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !48619
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0aac9fb751049419E.exit.i.i.i.i.i.i.i.i.i"

bb.bs:                                            ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.gy = load i32, ptr %i.fx, align 8, !noalias !48625, !noundef !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i64 16, i1 false), !noalias !48630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.02.192..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.fs, i64 104, i1 false), !noalias !48619
  %i.gz = load <4 x i32>, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.02.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(784) %i.fq, i64 192, i1 false), !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.02.424..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(288) %i.ft, i64 288, i1 false), !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.02.320..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.fu, i64 104, i1 false), !noalias !48619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.296..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fv, i64 24, i1 false), !noalias !48619
  %i.ha = insertelement <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>, i32 %i.gy, i64 1
  %i.hb = shufflevector <4 x i32> %i.ha, <4 x i32> %i.gz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0aac9fb751049419E.exit.i.i.i.i.i.i.i.i.i"

bb.bt:                                            ; preds = %bb.br
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !48625
  unreachable

bb.bu:                                            ; preds = %bb.br
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$meilisearch_types..tasks..Task$GT$$GT$17h6600de28d806a61dE"(ptr nonnull %.sroa.7.0.i.i.i.i.i, ptr nonnull %.sroa.4.013.i.i.i.i.i.i.i.i.i) #79
          to label %.body.i.i.i.i.i63.i unwind label %bb.bv, !noalias !48630

bb.bv:                                            ; preds = %bb.bu
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !48630
  unreachable

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0aac9fb751049419E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.bs, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.17.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.bs ], [ %.sroa.17.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.he = phi <4 x i32> [ %i.hb, %bb.bs ], [ %i.gx, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$8contains17h1efb0bc9953441a3E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %.sroa.4.013.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(712) %.sroa.02.i.i.i.i.i.i.i.i.i.i, i64 712, i1 false), !noalias !48630
  %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 712
  store <4 x i32> %i.he, ptr %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !48630
  %.sroa.4.sroa.8.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.8.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !48630
  %.sroa.4.sroa.9.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.9.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !48630
  %.sroa.4.sroa.10.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.10.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !48630
  %.sroa.4.sroa.11.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 776
  store i32 %i.ga, ptr %.sroa.4.sroa.11.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !48630
  %.sroa.4.sroa.12.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 780
  store i8 %.sroa.17.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.12.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !48630
  %.sroa.4.sroa.13.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.i, i64 781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.sroa.13.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.i.i.i.i.i.i.i.i.i.i, i64 3, i1 false), !noalias !48630
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48619
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fz, %i.er
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.bo

.loopexit.i.i.i.i.i.i:                            ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0aac9fb751049419E.exit.i.i.i.i.i.i.i.i.i", %bb.bn
  %i.hf = phi ptr [ %.sroa.7.0.i.i.i.i.i, %bb.bn ], [ %i.fz, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0aac9fb751049419E.exit.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.hg = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hh = ptrtoint ptr %.sroa.7.0.i.i.i.i.i to i64
  %i.hi = sub nuw i64 %i.hg, %i.hh
  %i.hj = udiv exact i64 %i.hi, 784               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48631
  store ptr %.sroa.7.0.i.i.i.i.i, ptr %i.b, align 8, !noalias !48631
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.hj, ptr %i.hk, align 8, !noalias !48631
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.hl, align 8, !noalias !48631
  call void @llvm.experimental.noalias.scope.decl(metadata !48632)
  %i.hm = ptrtoint ptr %i.er to i64
  %i.hn = sub nuw i64 %i.hm, %i.hg
  %i.ho = udiv exact i64 %i.hn, 784               ; 3 uses
  store i64 0, ptr %.sroa.0101.sroa.5.0..sroa_idx.i, align 8, !alias.scope !48633, !noalias !48609
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !48633, !noalias !48609
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0101.sroa.4.0..sroa_idx.i, align 8, !alias.scope !48633, !noalias !48609
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0101.sroa.6.0..sroa_idx.i, align 8, !alias.scope !48633, !noalias !48609
  %i.hp = icmp eq ptr %i.er, %i.hf
  br i1 %i.hp, label %_ZN4core4iter6traits8iterator8Iterator7collect17h786de8b4553910b1E.exit.i, label %.lr.ph124

bb.bw:                                            ; preds = %.lr.ph124
  %i.hq = icmp eq i64 %i.hs, %i.ho
  br i1 %i.hq, label %_ZN4core4iter6traits8iterator8Iterator7collect17h786de8b4553910b1E.exit.i, label %.lr.ph124

.lr.ph124:                                        ; preds = %.loopexit.i.i.i.i.i.i, %bb.bw
  %.sroa.0.0.i.i.i.i.i.i.i61.i123 = phi i64 [ %i.hs, %bb.bw ], [ 0, %.loopexit.i.i.i.i.i.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [784 x i8], ptr %i.hf, i64 %.sroa.0.0.i.i.i.i.i.i.i61.i123
  %i.hs = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i61.i123, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef readonly align 8 dereferenceable(784) %i.hr)
          to label %bb.bw unwind label %bb.by, !noalias !48634

bb.bx:                                            ; preds = %.lr.ph126
  %i.ht = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i62.i125, 1 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, %i.ho
  br i1 %i.hu, label %.body5.i.i.i.i.i.i, label %.lr.ph126

bb.by:                                            ; preds = %.lr.ph124
  %i.hv = landingpad { ptr, i32 }
          cleanup
  %i.hw = icmp eq i64 %i.hs, %i.ho
  br i1 %i.hw, label %.body5.i.i.i.i.i.i, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.by, %bb.bx
  %.sroa.0.1.i.i.i.i.i.i.i62.i125 = phi i64 [ %i.ht, %bb.bx ], [ %i.hs, %bb.by ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [784 x i8], ptr %i.hf, i64 %.sroa.0.1.i.i.i.i.i.i.i62.i125
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef readonly align 8 dereferenceable(784) %i.hx) #79
          to label %bb.bx unwind label %bb.bz, !noalias !48634

bb.bz:                                            ; preds = %.lr.ph126
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !48635
  unreachable

.body5.i.i.i.i.i.i:                               ; preds = %bb.bx, %bb.by
  invoke fastcc void @"_ZN4core3ptr143drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$meilisearch_types..tasks..Task$C$meilisearch_types..tasks..Task$GT$$GT$17hbc3db89830870216E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #79
          to label %.body.i.i.i.i.i63.i unwind label %bb.ca, !noalias !48636

bb.ca:                                            ; preds = %.body5.i.i.i.i.i.i, %.body.i.i.i.i.i63.i
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !48636
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h786de8b4553910b1E.exit.i: ; preds = %bb.bw, %.loopexit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48631
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$meilisearch_types..tasks..Task$GT$$GT$17h2985d294045dfb28E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.c)
          to label %.noexc22 unwind label %bb.cb, !noalias !48618

.noexc22:                                         ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h786de8b4553910b1E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !48609
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e90a96d48334d1cE.exit.i

_ZN4core4iter6traits8iterator8Iterator7collect17h4e90a96d48334d1cE.exit.i: ; preds = %.noexc22, %bb.bm, %_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.thread.i
  %.sroa.9.0.i.i.i.i.sink.i = phi i64 [ %i.hj, %.noexc22 ], [ %.sroa.9.0.i.i.i.i.i, %bb.bm ], [ %.sroa.9.0.i.i.i.i.i, %_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.thread.i ]
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.ia, align 8, !alias.scope !48544
  %.sroa.025.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.i.i.i.i.i, ptr %.sroa.025.sroa.4.0..sroa_idx.i, align 8, !alias.scope !48544
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.i.i.i.i.sink.i, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !alias.scope !48544
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !48544
  store i64 152, ptr %0, align 8, !alias.scope !48544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %"_ZN15index_scheduler5queue5tasks47_$LT$impl$u20$index_scheduler..queue..Queue$GT$33get_tasks_from_authorized_indexes17h52d59eab48e4e0b1E.exit"

bb.cb:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h786de8b4553910b1E.exit.i, %bb.s, %bb.p, %bb.m
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %bb.r, %bb.u, %.body.i.i.i.i.i, %.body.i.i.i.i.i.i, %bb.bi, %bb.bl, %.body.i.i.i.i.i63.i, %bb.cb
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.ib, %bb.cb ], [ %i.bf, %bb.r ], [ %i.bi, %bb.u ], [ %i.fe, %bb.bi ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.i.i.i.i.i, %bb.bl ], [ %i.fe, %.body.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i.i63.i ] ; 2 uses
  %i.ic = atomicrmw add ptr %i.aj, i32 -1 release, align 4
  %i.id = add i32 %i.ic, -1                       ; 2 uses
  %i.ie = and i32 %i.id, -1073741825
  %or.cond.not.i.i = icmp eq i32 %i.ie, -2147483648
  br i1 %or.cond.not.i.i, label %bb.cc, label %.body, !prof !233

bb.cc:                                            ; preds = %.body19
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.aj, i32 noundef %i.id)
          to label %.body unwind label %bb.ch

"_ZN15index_scheduler5queue5tasks47_$LT$impl$u20$index_scheduler..queue..Queue$GT$33get_tasks_from_authorized_indexes17h52d59eab48e4e0b1E.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h4e90a96d48334d1cE.exit.i, %_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.i, %bb.n
  %i.if = atomicrmw add ptr %i.aj, i32 -1 release, align 4
  %i.ig = add i32 %i.if, -1                       ; 2 uses
  %i.ih = and i32 %i.ig, -1073741825
  %or.cond.not.i.i24 = icmp eq i32 %i.ih, -2147483648
  br i1 %or.cond.not.i.i24, label %bb.cd, label %"_ZN4core3ptr115drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$index_scheduler..processing..ProcessingTasks$GT$$GT$17h93ec9213d294903cE.exit26", !prof !233

bb.cd:                                            ; preds = %"_ZN15index_scheduler5queue5tasks47_$LT$impl$u20$index_scheduler..queue..Queue$GT$33get_tasks_from_authorized_indexes17h52d59eab48e4e0b1E.exit"
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.aj, i32 noundef %i.ig)
          to label %"_ZN4core3ptr115drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$index_scheduler..processing..ProcessingTasks$GT$$GT$17h93ec9213d294903cE.exit26" unwind label %bb.f

"_ZN4core3ptr115drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$index_scheduler..processing..ProcessingTasks$GT$$GT$17h93ec9213d294903cE.exit26": ; preds = %"_ZN15index_scheduler5queue5tasks47_$LT$impl$u20$index_scheduler..queue..Queue$GT$33get_tasks_from_authorized_indexes17h52d59eab48e4e0b1E.exit", %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !48637)
  call void @llvm.experimental.noalias.scope.decl(metadata !48638)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !48639, !noundef !175 ; 2 uses
  store ptr null, ptr %i.ii, align 8, !alias.scope !48639
  %.not.i.i27 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i27, label %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i", label %bb.ce

bb.ce:                                            ; preds = %"_ZN4core3ptr115drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$index_scheduler..processing..ProcessingTasks$GT$$GT$17h93ec9213d294903cE.exit26"
  call void @mdb_txn_abort(ptr noundef nonnull %i.ij) #77, !noalias !48639
  br label %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i"

"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i": ; preds = %bb.ce, %"_ZN4core3ptr115drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$index_scheduler..processing..ProcessingTasks$GT$$GT$17h93ec9213d294903cE.exit26"
  call void @llvm.experimental.noalias.scope.decl(metadata !48640)
  call void @llvm.experimental.noalias.scope.decl(metadata !48641)
  %i.ik = load i64, ptr %i.w, align 8, !range !189, !alias.scope !48642, !noundef !175
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit", label %bb.cf

bb.cf:                                            ; preds = %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i"
  %i.im = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48643)
  call void @llvm.experimental.noalias.scope.decl(metadata !48644)
  %i.in = load ptr, ptr %i.im, align 8, !alias.scope !48645, !nonnull !175, !noundef !175
  %i.io = atomicrmw add ptr %i.in, i64 -1 release, align 8, !noalias !48645
  %i.ip = icmp eq i64 %i.io, 1
  br i1 %i.ip, label %bb.cg, label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit"

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdfb7a3544ec9f782E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.im)
  br label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit"

"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit": ; preds = %bb.cg, %bb.cf, %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i", %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.ch:                                            ; preds = %bb.cc, %.body
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80
  unreachable

bb.ci:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN15index_scheduler14IndexScheduler34network_import_finished_for_remote17hc6a3c0c447ca8de5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !48726 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [344 x i8], align 8               ; 10 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.731.i.sroa.9.sroa.9 = alloca [304 x i8], align 8 ; 7 uses
  %.sroa.437.i = alloca [432 x i8], align 8       ; 6 uses
  %i.m = alloca [784 x i8], align 8               ; 12 uses
  %i.n = alloca [784 x i8], align 8               ; 21 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [128 x i8], align 8               ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [128 x i8], align 8               ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 14 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.29.sroa.7 = alloca [304 x i8], align 8   ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48728)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !48729
  store ptr null, ptr %i.v, align 8, !noalias !48729
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !48728, !nonnull !175, !noundef !175
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !48729, !nonnull !175, !noundef !175
  %i.ai = call noundef i32 @mdb_txn_begin(ptr noundef nonnull %i.ah, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.v) #77, !noalias !48729
end_hunk_0
begin_hunk_1_@"_ZN15index_scheduler9scheduler14process_export49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16export_one_index17hd3586986bea50523E":bb.a
  store ptr %i.em, ptr %.sroa.651.0..sroa_idx, align 8, !noalias !68506
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.gm, ptr %.sroa.752.0..sroa_idx, align 8, !noalias !68506
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.gk, ptr %.sroa.853.0..sroa_idx, align 8, !noalias !68506
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.eg, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !68506
  %.sroa.1054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %i.de, ptr %.sroa.1054.0..sroa_idx, align 8, !noalias !68506
  %.sroa.1155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %i.dg, ptr %.sroa.1155.0..sroa_idx, align 8, !noalias !68506
  %.sroa.1256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.dc, ptr %.sroa.1256.0..sroa_idx, align 8, !noalias !68506
  %.sroa.1357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr %i.db, ptr %.sroa.1357.0..sroa_idx, align 8, !noalias !68506
  %.sroa.1458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store ptr %i.agp, ptr %.sroa.1458.0..sroa_idx, align 8, !noalias !68506
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store ptr %i.ed, ptr %.sroa.15.0..sroa_idx, align 8, !noalias !68506
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store ptr %i.dd, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !68506
  %i.ags = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 520 ; 3 uses
  %i.agt = load i64, ptr %i.ags, align 8, !noalias !68505, !noundef !175 ; 16 uses
  %i.agu = icmp ult i64 %i.agt, 192153584101141163
  call void @llvm.assume(i1 %i.agu)
  %i.agv = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN10rayon_core8registry19WORKER_THREAD_STATE29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hc308a4bd969f62fdE")
  %.val.i.i.i.i1087 = load ptr, ptr %i.agv, align 8, !noalias !68505, !noundef !175 ; 4 uses
  %i.agw = icmp eq ptr %.val.i.i.i.i1087, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !68505
  call void @llvm.experimental.noalias.scope.decl(metadata !68507)
  br i1 %i.agw, label %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.agx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i1087, i64 272 ; 2 uses
  %i.agy = load ptr, ptr %i.agx, align 16, !noalias !68508, !nonnull !175, !noundef !175
  %i.agz = atomicrmw add ptr %i.agy, i64 1 monotonic, align 8, !noalias !68508
  %i.aha = icmp slt i64 %i.agz, 0
  br i1 %i.aha, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.ahb = load ptr, ptr %i.agx, align 16, !noalias !68508, !nonnull !175, !noundef !175
  %i.ahc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i1087, i64 256
  %i.ahd = load i64, ptr %i.ahc, align 128, !noalias !68508, !noundef !175
  br label %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i

bb.it:                                            ; preds = %bb.ir
  call void @llvm.trap()
  unreachable

_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i: ; preds = %bb.is, %bb.iq
  %.sroa.7.0.i.i.i = phi i64 [ %i.ahd, %bb.is ], [ 0, %bb.iq ]
  %.sroa.03.0.i.i.i = phi ptr [ %i.ahb, %bb.is ], [ null, %bb.iq ]
  store i64 %i.agt, ptr %i.k, align 8, !alias.scope !68507, !noalias !68505
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i.i.i, ptr %i.ahe, align 8, !alias.scope !68507, !noalias !68505
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !68507, !noalias !68505
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !68507, !noalias !68505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !68505
  call void @llvm.experimental.noalias.scope.decl(metadata !68509)
  call void @llvm.experimental.noalias.scope.decl(metadata !68510)
  call void @llvm.experimental.noalias.scope.decl(metadata !68511)
  call void @llvm.experimental.noalias.scope.decl(metadata !68512)
  %i.ahf = mul i64 %i.agt, 360                    ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.agt, 25620477880152155
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.iv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !203

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i
  %i.ahg = icmp eq i64 %i.ahf, 0
  br i1 %i.ahg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i", label %bb.iu

bb.iu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !68513
  %i.ahh = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ahf, i64 noundef range(i64 1, 9) 8) #77, !noalias !68513 ; 2 uses
  %i.ahi = icmp eq ptr %i.ahh, null
  br i1 %i.ahi, label %bb.iv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i"

bb.iv:                                            ; preds = %bb.iu, %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.iu ], [ 0, %_ZN10rayon_core5latch10CountLatch10with_count17hc97020c292264696E.exit.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.ahf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc.i.i1094 unwind label %bb.iy, !noalias !68514

.noexc.i.i1094:                                   ; preds = %bb.iv
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.iu, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.ahh, %bb.iu ] ; 21 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.agt, %bb.iu ] ; 7 uses
  %i.ahj = icmp samesign ule i64 %i.agt, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.ahj)
  %.not.i.i1088 = icmp eq i64 %i.agt, 0           ; 3 uses
  br i1 %.not.i.i1088, label %.loopexit18.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i"
  %xtraiter1984 = and i64 %i.agt, 3               ; 3 uses
  %i.ahk = icmp samesign ult i64 %i.agt, 4
  br i1 %i.ahk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.agt, 36028797018963964
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.ahl = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ahr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ahm = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahl ; 3 uses
  store ptr %i.k, ptr %i.ahm, align 8, !noalias !68515
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !68515
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !68515
  %i.ahn = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahl ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 360
  store ptr %i.k, ptr %i.aho, align 8, !noalias !68515
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ahn, i64 368
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !68515
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ahn, i64 376
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !68515
  %i.ahp = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahl ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 720
  store ptr %i.k, ptr %i.ahq, align 8, !noalias !68515
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ahp, i64 728
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !68515
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ahp, i64 736
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !68515
  %i.ahr = add nuw nsw i64 %i.ahl, 4              ; 2 uses
  %i.ahs = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahl ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 1080
  store ptr %i.k, ptr %i.aht, align 8, !noalias !68515
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ahs, i64 1088
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !68515
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ahs, i64 1096
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !68515
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit18.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %bb.jx, %bb.jw, %bb.iy
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i.i, %.loopexit.split-lp.i.i ], [ %i.ahx, %bb.iy ], [ %.pn.i.i.i.i.i.i.i, %bb.jw ], [ %.pn.i.i.i.i.i.i.i, %bb.jx ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !68516)
  call void @llvm.experimental.noalias.scope.decl(metadata !68517)
  %i.ahu = load ptr, ptr %i.ahe, align 8, !alias.scope !68518, !noalias !68505, !noundef !175 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ahu, null
  br i1 %.not.i.i.i.i, label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit", label %bb.iw

bb.iw:                                            ; preds = %.body.i.i
  %i.ahv = atomicrmw add ptr %i.ahu, i64 -1 release, align 8, !noalias !68519
  %i.ahw = icmp eq i64 %i.ahv, 1
  br i1 %i.ahw, label %bb.ix, label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit"

bb.ix:                                            ; preds = %bb.iw
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h20baad51a127d8d8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahe)
          to label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit" unwind label %bb.kp, !noalias !68505

bb.iy:                                            ; preds = %bb.iv
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit18.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod1985.not = icmp eq i64 %xtraiter1984, 0
  br i1 %lcmp.mod1985.not, label %.loopexit18.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.loopexit18.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ahr, %.loopexit18.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1986 = icmp ne i64 %xtraiter1984, 0
  call void @llvm.assume(i1 %lcmp.mod1986)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.ahy = phi i64 [ %i.ahz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ahz = add nuw nsw i64 %i.ahy, 1
  %i.aia = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahy ; 3 uses
  store ptr %i.k, ptr %i.aia, align 8, !noalias !68515
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  store ptr %i.l, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !68515
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  store i64 153, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !68515
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1984
  br i1 %epil.iter.cmp.not, label %.loopexit18.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !68105

.loopexit18.i.i:                                  ; preds = %.loopexit18.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5c8207ef20eac3e5E.exit.i.i.i.i.i.i.i.i"
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !68520, !noalias !68505
  %.sroa.4.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx3.i.i.i.i.i.i, align 8, !alias.scope !68520, !noalias !68505
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i1089 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.agt, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i1089, align 8, !alias.scope !68520, !noalias !68505
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %i.ahf ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !68505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !68505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !68505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !68505
  %i.aic = load i64, ptr %i.ags, align 8, !noalias !68505, !noundef !175 ; 3 uses
  store i64 %i.aic, ptr %i.i, align 8, !noalias !68505
  %i.aid = icmp ult i64 %i.aic, 192153584101141163
  call void @llvm.assume(i1 %i.aid)
  %i.aie = ptrtoint ptr %i.aib to i64
  %i.aif = ptrtoint ptr %.sroa.10.0.i.i.i.i.i.i.i to i64 ; 5 uses
  store i64 %i.agt, ptr %i.h, align 8, !noalias !68505
  %i.aig = icmp eq i64 %i.aic, %i.agt
  br i1 %i.aig, label %bb.ja, label %bb.iz, !prof !176

bb.iz:                                            ; preds = %.loopexit18.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !68505
  store ptr null, ptr %i.g, align 8, !noalias !68505
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #78
          to label %.noexc11.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68505

.noexc11.i.i:                                     ; preds = %bb.iz
  unreachable

bb.ja:                                            ; preds = %.loopexit18.i.i
  %i.aih = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 384 ; 6 uses
  %i.aii = cmpxchg ptr %i.aih, i32 0, i32 1 acquire monotonic, align 4, !noalias !68521
  %i.aij = extractvalue { i32, i1 } %i.aii, 1
  br i1 %i.aij, label %.noexc12.i.i, label %bb.jb, !prof !176

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.aih)
          to label %.noexc12.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68521

.noexc12.i.i:                                     ; preds = %bb.jb, %bb.ja
  %i.aik = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !68521
  %i.ail = and i64 %i.aik, 9223372036854775807
  %i.aim = icmp eq i64 %i.ail, 0
  br i1 %i.aim, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i", label %bb.jc, !prof !176

bb.jc:                                            ; preds = %.noexc12.i.i
  %i.ain = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68521

.noexc13.i.i:                                     ; preds = %bb.jc
  %i.aio = xor i1 %i.ain, true
  %i.aip = zext i1 %i.aio to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i": ; preds = %.noexc13.i.i, %.noexc12.i.i
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.aip, %.noexc13.i.i ], [ 0, %.noexc12.i.i ] ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 388 ; 2 uses
  %i.air = load atomic i8, ptr %i.aiq monotonic, align 4, !noalias !68521
  %.not.i.i.i = icmp eq i8 %i.air, 0
  br i1 %.not.i.i.i, label %bb.ji, label %bb.jd, !prof !176

bb.jd:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !68522
  store ptr %i.aih, ptr %i.c, align 8, !noalias !68522
  %i.ais = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %i.ais, align 8, !noalias !68522
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2166, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #78
          to label %bb.jf unwind label %bb.je, !noalias !68522

bb.je:                                            ; preds = %bb.jd
  %i.ait = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr187drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$$GT$17h172096cde49b32baE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #79
          to label %.loopexit.split-lp.i.i unwind label %bb.jg, !noalias !68522

bb.jf:                                            ; preds = %bb.jd
  unreachable

bb.jg:                                            ; preds = %bb.je
  %i.aiu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !68522
  unreachable

bb.jh:                                            ; preds = %bb.jj
  unreachable

bb.ji:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h9c1537d6d7b48bd1E.exit.i.i.i"
  %i.aiv = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1
  %i.aiw = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 408
  %i.aix = load i64, ptr %i.aiw, align 8, !noalias !68505, !noundef !175 ; 3 uses
  store i64 %i.aix, ptr %i.f, align 8, !noalias !68505
  %i.aiy = icmp ult i64 %i.aix, 288230376151711744
  call void @llvm.assume(i1 %i.aiy)
  store i64 %i.agt, ptr %i.e, align 8, !noalias !68505
  %i.aiz = icmp eq i64 %i.aix, %i.agt
  br i1 %i.aiz, label %bb.jk, label %bb.jj, !prof !176

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !68505
  store ptr null, ptr %i.d, align 8, !noalias !68505
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #78
          to label %bb.jh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68505

bb.jk:                                            ; preds = %bb.ji
  %i.aja = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 400
  %i.ajb = load ptr, ptr %i.aja, align 8, !noalias !68505, !nonnull !175, !noundef !175
  br i1 %.not.i.i1088, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jl, %bb.jj
  %lpad.loopexit.split-lp1687 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E"(ptr nonnull %i.aih, i8 %.sroa.01.0.i.i.i.i.i) #79
          to label %.loopexit.split-lp.i.i unwind label %bb.js, !noalias !68505

.lr.ph.i.i.i:                                     ; preds = %bb.jk, %bb.jr
  %.sroa.8.034.i.i.i = phi i64 [ %i.ajc, %bb.jr ], [ 0, %bb.jk ] ; 3 uses
  %i.ajc = add nuw nsw i64 %.sroa.8.034.i.i.i, 1  ; 2 uses
  %i.ajd = getelementptr inbounds nuw [32 x i8], ptr %i.ajb, i64 %.sroa.8.034.i.i.i ; 5 uses
  %i.aje = getelementptr inbounds nuw [360 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.8.034.i.i.i
  %i.ajf = load ptr, ptr %i.ajd, align 8, !noalias !68505, !nonnull !175, !noundef !175 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 264
  %i.ajh = load atomic i64, ptr %i.ajg monotonic, align 8, !noalias !68505 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajf, i64 256
  %i.ajj = load atomic i64, ptr %i.aji acquire, align 8, !noalias !68505
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16 ; 2 uses
  %i.ajl = load i64, ptr %i.ajk, align 8, !noalias !68505, !noundef !175 ; 3 uses
  %i.ajm = sub i64 %i.ajh, %i.ajj
  %.not.i.i10.i.i = icmp slt i64 %i.ajm, %i.ajl
  br i1 %.not.i.i10.i.i, label %bb.jr, label %bb.jl, !prof !176

bb.jl:                                            ; preds = %.lr.ph.i.i.i
  %i.ajn = shl i64 %i.ajl, 1
  invoke fastcc void @"_ZN15crossbeam_deque5deque15Worker$LT$T$GT$6resize17h752b9ad78bc3026aE"(ptr noundef nonnull align 8 %i.ajd, i64 noundef %i.ajn)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68505

.noexc.i.i.i:                                     ; preds = %bb.jl
  %i.ajo = load i64, ptr %i.ajk, align 8, !noalias !68505, !noundef !175
  br label %bb.jr

._crit_edge.i.i.i:                                ; preds = %bb.jr, %bb.jk
  br i1 %i.aiv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.jm

bb.jm:                                            ; preds = %._crit_edge.i.i.i
  %i.ajp = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !68505
  %i.ajq = and i64 %i.ajp, 9223372036854775807
  %i.ajr = icmp eq i64 %i.ajq, 0
  br i1 %i.ajr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.jn, !prof !176

bb.jn:                                            ; preds = %bb.jm
  %i.ajs = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68505

.noexc14.i.i:                                     ; preds = %bb.jn
  br i1 %i.ajs, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.jo

bb.jo:                                            ; preds = %.noexc14.i.i
  store atomic i8 1, ptr %i.aiq monotonic, align 4, !noalias !68505
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i: ; preds = %bb.jo, %.noexc14.i.i, %bb.jm, %._crit_edge.i.i.i
  %i.ajt = atomicrmw xchg ptr %i.aih, i32 0 release, align 4, !noalias !68505
  %i.aju = icmp eq i32 %i.ajt, 2
  br i1 %i.aju, label %bb.jp, label %"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i", !prof !178

bb.jp:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.aih)
          to label %"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68505

"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i": ; preds = %bb.jp, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i
  %i.ajv = load i64, ptr %i.ags, align 8, !noalias !68505, !noundef !175 ; 3 uses
  %i.ajw = icmp ult i64 %i.ajv, 192153584101141163
  call void @llvm.assume(i1 %i.ajw)
  %.not39.i.i.i = icmp eq i64 %i.ajv, 0
  br i1 %.not39.i.i.i, label %.loopexit14.i.i, label %.lr.ph36.i.i.i

.lr.ph36.i.i.i:                                   ; preds = %"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i"
  %i.ajx = getelementptr inbounds nuw i8, ptr %.val.i1086, i64 472
  br label %bb.jq

bb.jq:                                            ; preds = %.noexc16.i.i, %.lr.ph36.i.i.i
  %.sroa.02.035.i.i.i = phi i64 [ 0, %.lr.ph36.i.i.i ], [ %i.ajy, %.noexc16.i.i ] ; 2 uses
  invoke void @_ZN10rayon_core5sleep5Sleep26notify_worker_latch_is_set17hdc6ec13179791057E(ptr noundef nonnull align 8 %i.ajx, i64 noundef %.sroa.02.035.i.i.i)
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68505

.noexc16.i.i:                                     ; preds = %bb.jq
  %i.ajy = add nuw nsw i64 %.sroa.02.035.i.i.i, 1 ; 2 uses
  %exitcond41.not.i.i.i = icmp eq i64 %i.ajy, %i.ajv
  br i1 %exitcond41.not.i.i.i, label %.loopexit14.i.i, label %bb.jq

bb.jr:                                            ; preds = %.noexc.i.i.i, %.lr.ph.i.i.i
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.ajo, %.noexc.i.i.i ], [ %i.ajl, %.lr.ph.i.i.i ]
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  %.sroa.01.0.i.i.i.i = load ptr, ptr %i.ajz, align 8, !noalias !68505, !noundef !175
  %i.aka = add i64 %.sroa.02.0.i.i.i.i, -1
  %i.akb = and i64 %i.aka, %i.ajh
  %i.akc = getelementptr inbounds [16 x i8], ptr %.sroa.01.0.i.i.i.i, i64 %i.akb ; 2 uses
  store volatile ptr @"_ZN83_$LT$rayon_core..job..StackJob$LT$L$C$F$C$R$GT$$u20$as$u20$rayon_core..job..Job$GT$7execute17hbc95f89f5c179597E", ptr %i.akc, align 8, !noalias !68505
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  store volatile ptr %i.aje, ptr %i.akd, align 8, !noalias !68505
  fence release
  %i.ake = load ptr, ptr %i.ajd, align 8, !noalias !68505, !nonnull !175, !noundef !175
  %i.akf = add i64 %i.ajh, 1
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ake, i64 264
  store atomic i64 %i.akf, ptr %i.akg release, align 8, !noalias !68505
  %exitcond.not.i.i.i = icmp eq i64 %i.ajc, %i.agt
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.js:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.akh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !68505
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jq, %.loopexit14.i.i, %bb.jp, %bb.jn, %bb.jc, %bb.jb, %bb.iz
  %lpad.loopexit.split-lp1685 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit14.i.i:                                  ; preds = %.noexc16.i.i, %"_ZN4core3ptr149drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$crossbeam_deque..deque..Worker$LT$rayon_core..job..JobRef$GT$$GT$$GT$$GT$17h470ad8fa1382fa70E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !68505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !68505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !68505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !68505
  invoke void @_ZN10rayon_core5latch10CountLatch4wait17h9ed8dbd8fa81987cE(ptr noundef nonnull align 8 %i.k, ptr noundef align 128 %.val.i.i.i.i1087)
          to label %bb.jt unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !68505

bb.jt:                                            ; preds = %.loopexit14.i.i
  %i.aki = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i.i, 360 ; 4 uses
  %i.akj = udiv i64 %i.aki, 344                   ; 4 uses
  br i1 %.not.i.i1088, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.kg, %bb.kb
  %i.akk = phi ptr [ inttoptr (i64 8 to ptr), %bb.kg ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.kb ], [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.akl = phi i64 [ 0, %bb.kg ], [ %.sroa.4.0.i.i.i.i.i.i.i, %bb.kb ], [ %.sroa.4.0.i.i.i.i.i.i.i, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.val2.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.kg ], [ %i.aib, %bb.kb ], [ %i.aib, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.akm = phi ptr [ inttoptr (i64 8 to ptr), %bb.kg ], [ %i.akx, %bb.kb ], [ %i.akx, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.amc, %bb.kg ], [ %i.alc, %bb.kb ], [ %i.alc, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.akn = ptrtoint ptr %.val2.i.i.i.i.i.i.i.i.i to i64
  %i.ako = ptrtoint ptr %i.akm to i64
  %i.akp = sub nuw i64 %i.akn, %i.ako
  %i.akq = udiv exact i64 %i.akp, 360
  invoke fastcc void @"_ZN4core3ptr488drop_in_place$LT$$u5b$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..CountLatch$GT$$C$$RF$rayon_core..broadcast..broadcast_in$LT$index_scheduler..scheduler..process_export..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..export_one_index..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$u5d$$GT$17hdf8cb23645e52294E"(ptr noalias noundef nonnull align 8 %i.akm, i64 noundef %i.akq)
          to label %bb.jw unwind label %bb.ju, !noalias !68523

bb.ju:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.akr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aks = icmp eq i64 %i.akl, 0
  br i1 %i.aks, label %.body.i.i.i.i.i.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.akt = mul nuw nsw i64 %i.akl, 360
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akk, i64 noundef %i.akt, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !68523
  br label %.body.i.i.i.i.i.i

bb.jw:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.aku = icmp eq i64 %i.akl, 0
  br i1 %i.aku, label %.body.i.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.akv = mul nuw nsw i64 %i.akl, 360
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.akk, i64 noundef %i.akv, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !68523
  br label %.body.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.jt, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.4.026.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.alu, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.jt ] ; 7 uses
  %i.akw = phi ptr [ %i.akx, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.jt ] ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !68524 ; 4 uses
  %.sroa.313.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 24
  %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.313.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !68524 ; 3 uses
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 32
  %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !68524 ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 360 ; 6 uses
  %i.aky = icmp ne i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, 154
  call void @llvm.assume(i1 %i.aky)
  %i.akz = add nsw i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, -153
  %i.ala = icmp samesign ugt i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, 152
  %i.alb = select i1 %i.ala, i64 %i.akz, i64 1
  switch i64 %i.alb, label %bb.jy [
    i64 0, label %bb.jz
    i64 1, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i"
    i64 2, label %bb.ka
  ], !prof !228

bb.jy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.jz:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #78
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.kb, !noalias !68525

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.jz
  unreachable

bb.ka:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  invoke void @_ZN10rayon_core6unwind16resume_unwinding17h583035347eb15765E(ptr noundef nonnull align 1 %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i) #78
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.kb, !noalias !68525

.noexc3.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ka
  unreachable

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.alc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ald = ptrtoint ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i to i64
  %i.ale = sub nuw i64 %i.ald, %i.aif
  %i.alf = udiv exact i64 %i.ale, 344             ; 3 uses
  %i.alg = icmp eq ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, %.sroa.10.0.i.i.i.i.i.i.i
  br i1 %i.alg, label %.body.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.kb, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ali, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.kb ] ; 2 uses
  %i.alh = getelementptr inbounds nuw [344 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ali = add nuw i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.alj = load i64, ptr %i.alh, align 8, !range !198, !alias.scope !68526, !noalias !68527, !noundef !175
  %i.alk = icmp eq i64 %i.alj, 152
  br i1 %i.alk, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.kc

bb.kc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.alh)
          to label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.kd, !noalias !68527

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.kc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.all = icmp eq i64 %i.ali, %i.alf
  br i1 %i.all, label %.body.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.kd:                                            ; preds = %bb.kc
  %i.alm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aln = icmp eq i64 %i.ali, %i.alf
  br i1 %i.aln, label %.body.i.i.i.i.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.kd, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.110.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.alp, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ali, %bb.kd ] ; 2 uses
  %i.alo = getelementptr inbounds nuw [344 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 %.sroa.0.110.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.alp = add nuw i64 %.sroa.0.110.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.alq = load i64, ptr %i.alo, align 8, !range !198, !alias.scope !68528, !noalias !68527, !noundef !175
  %i.alr = icmp eq i64 %i.alq, 152
  br i1 %i.alr, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ke

bb.ke:                                            ; preds = %.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.alo)
          to label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.kf, !noalias !68527

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ke, %.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.als = icmp eq i64 %i.alp, %i.alf
  br i1 %i.als, label %.body.i.i.i.i.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.kf:                                            ; preds = %bb.ke
  %i.alt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !68527
  unreachable

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.kd
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !68527
  unreachable

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 40
  %.sroa.4.sroa.6.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, i64 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.4.sroa.6.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.515.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 320, i1 false), !noalias !68524
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !68527
  %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !68527
  %.sroa.4.sroa.5.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !68527
  %i.alu = getelementptr inbounds nuw i8, ptr %.sroa.4.026.i.i.i.i.i.i.i.i.i.i, i64 344 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i1090 = icmp eq ptr %i.akx, %i.aib
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1090, label %._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i:         ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h5b83a7e51fb577a6E.exit.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i = ptrtoint ptr %i.alu to i64
  %.pre56.i.i = ptrtoint ptr %i.akx to i64
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i, %bb.jt
  %.pre-phi57.i.i = phi i64 [ %.pre56.i.i, %._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i ], [ %i.aif, %bb.jt ]
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i ], [ %i.aif, %bb.jt ] ; 2 uses
  %i.alv = phi ptr [ %i.akx, %._crit_edge.i.i.i.i.i.i.i.i.loopexit.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.jt ]
  %i.alw = sub nuw i64 %.pre-phi.i.i, %i.aif
  %i.alx = udiv exact i64 %i.alw, 344             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68529
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !68529
  %i.aly = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.alx, ptr %i.aly, align 8, !noalias !68529
  %i.alz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.alz, align 8, !noalias !68529
  %i.ama = sub nuw i64 %i.aie, %.pre-phi57.i.i
  %i.amb = udiv exact i64 %i.ama, 360
  invoke fastcc void @"_ZN4core3ptr488drop_in_place$LT$$u5b$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..CountLatch$GT$$C$$RF$rayon_core..broadcast..broadcast_in$LT$index_scheduler..scheduler..process_export..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..export_one_index..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$u5d$$GT$17hdf8cb23645e52294E"(ptr noalias noundef nonnull align 8 %i.alv, i64 noundef %i.amb)
          to label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i" unwind label %bb.kg, !noalias !68530

bb.kg:                                            ; preds = %bb.kj, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.amc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr608drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..CountLatch$GT$$C$$RF$rayon_core..broadcast..broadcast_in$LT$index_scheduler..scheduler..process_export..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..export_one_index..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$GT$17h99bd1f792f2d7d7dE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #79
          to label %.body.i.i.i.i.i.i.i unwind label %bb.kl, !noalias !68529

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i1091 = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i.i, 0 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i1091, label %bb.km, label %bb.kh

bb.kh:                                            ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i"
  %i.amd = mul nuw nsw i64 %i.akj, 344            ; 4 uses
  %.not49.i.i.i.i.i.i.i = icmp eq i64 %i.aki, %i.amd
  br i1 %.not49.i.i.i.i.i.i.i, label %bb.km, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.ame = icmp samesign ule i64 %i.amd, %i.aki
  call void @llvm.assume(i1 %i.ame)
  %i.amf = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i, i64 noundef %i.aki, i64 noundef 8, i64 noundef %i.amd) #77, !noalias !68529 ; 2 uses
  %i.amg = icmp eq ptr %i.amf, null
  br i1 %i.amg, label %bb.kj, label %bb.km, !prof !184

bb.kj:                                            ; preds = %bb.ki
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.amd) #78
          to label %bb.kk unwind label %bb.kg, !noalias !68529

bb.kk:                                            ; preds = %bb.kj
  unreachable

bb.kl:                                            ; preds = %bb.kg
  %i.amh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.kl, %bb.jv, %bb.ju
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !68529
  unreachable

bb.km:                                            ; preds = %bb.ki, %bb.kh, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h10fc52b9687f0237E.exit.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.kh ], [ %i.amf, %bb.ki ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !68505
  call void @llvm.experimental.noalias.scope.decl(metadata !68531)
  call void @llvm.experimental.noalias.scope.decl(metadata !68532)
  %i.ami = load ptr, ptr %i.ahe, align 8, !alias.scope !68533, !noalias !68505, !noundef !175 ; 2 uses
  %.not.i.i32.i.i = icmp eq ptr %i.ami, null
  br i1 %.not.i.i32.i.i, label %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.amj = atomicrmw add ptr %i.ami, i64 -1 release, align 8, !noalias !68534
  %i.amk = icmp eq i64 %i.amj, 1
  br i1 %i.amk, label %bb.ko, label %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i

bb.ko:                                            ; preds = %bb.kn
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h20baad51a127d8d8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahe)
          to label %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i unwind label %bb.il, !noalias !68505

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.je
  %eh.lpad-body.ph.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1687, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ait, %bb.je ], [ %lpad.loopexit.split-lp1685, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr501drop_in_place$LT$alloc..vec..Vec$LT$rayon_core..job..StackJob$LT$rayon_core..latch..LatchRef$LT$rayon_core..latch..CountLatch$GT$$C$$RF$rayon_core..broadcast..broadcast_in$LT$index_scheduler..scheduler..process_export..$LT$impl$u20$index_scheduler..IndexScheduler$GT$..export_one_index..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$C$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$$GT$$GT$17hd006cb6526d4f79bE"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #79
          to label %.body.i.i unwind label %bb.kp, !noalias !68505

bb.kp:                                            ; preds = %.loopexit.split-lp.i.i, %bb.ix
  %i.aml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !68505
  unreachable

_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i: ; preds = %bb.ko, %bb.kn, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !68505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !68505
  %i.amm = atomicrmw add ptr %i.agq, i64 -1 monotonic, align 8, !noalias !68504 ; 0 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  %i.amo = load ptr, ptr %i.amn, align 8, !noalias !68504, !nonnull !175, !noundef !175
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  %i.amq = atomicrmw xchg ptr %i.amp, i8 0 seq_cst, align 1, !noalias !68504
  %i.amr = icmp eq i8 %i.amq, 0
  br i1 %i.amr, label %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit.thread227, label %bb.kq

bb.kq:                                            ; preds = %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i.i) ]
  %i.ams = icmp eq i64 %.pre-phi.i.i, %i.aif
  br i1 %i.ams, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.kq, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i"
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.amu, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i" ], [ 0, %bb.kq ] ; 2 uses
  %i.amt = getelementptr inbounds nuw [344 x i8], ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i ; 2 uses
  %i.amu = add nuw i64 %.sroa.0.09.i.i.i.i, 1     ; 4 uses
  %i.amv = load i64, ptr %i.amt, align 8, !range !198, !alias.scope !68535, !noalias !68536, !noundef !175
  %i.amw = icmp eq i64 %i.amv, 152
  br i1 %i.amw, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i", label %bb.kr

bb.kr:                                            ; preds = %.lr.ph.i.i.i.i
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.amt)
          to label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i" unwind label %bb.ks, !noalias !68536

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i": ; preds = %bb.kr, %.lr.ph.i.i.i.i
  %i.amx = icmp eq i64 %i.amu, %i.alx
  br i1 %i.amx, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i", label %.lr.ph.i.i.i.i

bb.ks:                                            ; preds = %bb.kr
  %i.amy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amz = icmp eq i64 %i.amu, %i.alx
  br i1 %i.amz, label %.body.i3.i, label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %bb.ks, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i"
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.anb, %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i" ], [ %i.amu, %bb.ks ] ; 2 uses
  %i.ana = getelementptr inbounds nuw [344 x i8], ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 %.sroa.0.110.i.i.i.i ; 2 uses
  %i.anb = add nuw i64 %.sroa.0.110.i.i.i.i, 1    ; 2 uses
  %i.anc = load i64, ptr %i.ana, align 8, !range !198, !alias.scope !68537, !noalias !68536, !noundef !175
  %i.and = icmp eq i64 %i.anc, 152
  br i1 %i.and, label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i", label %bb.kt

bb.kt:                                            ; preds = %.lr.ph12.i.i.i.i
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.ana)
          to label %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i" unwind label %bb.ku, !noalias !68536

"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i": ; preds = %bb.kt, %.lr.ph12.i.i.i.i
  %i.ane = icmp eq i64 %i.anb, %i.alx
  br i1 %i.ane, label %.body.i3.i, label %.lr.ph12.i.i.i.i

bb.ku:                                            ; preds = %bb.kt
  %i.anf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !68536
  unreachable

.body.i3.i:                                       ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit8.i.i.i.i", %bb.ks
  br i1 %.not.i.i.i.i.i.i.i1091, label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit", label %bb.kv

bb.kv:                                            ; preds = %.body.i3.i
  %i.ang = mul nuw nsw i64 %i.akj, 344
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i.i.i.i.i.i.i, i64 noundef %i.ang, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !68536
  br label %"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..network..Origin$GT$17h6e2e2022bcfba0e0E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i": ; preds = %"_ZN4core3ptr89drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$index_scheduler..error..Error$GT$$GT$17h45239f87e224389dE.exit.i.i.i.i", %bb.kq
  br i1 %.not.i.i.i.i.i.i.i1091, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i"
  %i.anh = mul nuw nsw i64 %i.akj, 344
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i.i.i.i.i.i.i, i64 noundef %i.anh, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !68536
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h783ed708f92bbe56E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store i64 95, ptr %i.cg, align 8
  %.sroa.4323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 -9223372036854775798, ptr %.sroa.4323.0..sroa_idx, align 8
  %.val426 = load ptr, ptr %i.eg, align 8, !nonnull !175, !align !182, !noundef !175
  %.val427 = load i64, ptr %i.ek, align 8, !noundef !175
  invoke fastcc void @"_ZN15index_scheduler9scheduler14process_export49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16export_one_index28_$u7b$$u7b$closure$u7d$$u7d$17haa09abe0750a68a5E"(ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.ch, ptr nonnull %.val426, i64 %.val427, ptr noalias noundef readonly align 8 captures(address) dereferenceable(320) %i.cg)
          to label %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit unwind label %bb.il

_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit: ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %.sroa.0139.0.copyload = load i64, ptr %i.ch, align 8 ; 2 uses
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.6141.sroa.0.0.copyload = load i64, ptr %.sroa.6141.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6141.sroa.6.0..sroa.6141.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.6141.sroa.6.0.copyload = load ptr, ptr %.sroa.6141.sroa.6.0..sroa.6141.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6141.sroa.7.0..sroa.6141.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.6141.sroa.7.0.copyload = load i64, ptr %.sroa.6141.sroa.7.0..sroa.6141.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.8143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.8143, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.8143.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %.not362 = icmp eq i64 %.sroa.0139.0.copyload, 152
  br i1 %.not362, label %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit.thread227, label %bb.ky

bb.ky:                                            ; preds = %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit
  %.sroa.3335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.3335.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.8143, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8143)
  store i64 %.sroa.0139.0.copyload, ptr %0, align 8
  %.sroa.2334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6141.sroa.0.0.copyload, ptr %.sroa.2334.0..sroa_idx, align 8
  %.sroa.2334.sroa.2.0..sroa.2334.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6141.sroa.6.0.copyload, ptr %.sroa.2334.sroa.2.0..sroa.2334.0..sroa_idx.sroa_idx, align 8
  %.sroa.2334.sroa.3.0..sroa.2334.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6141.sroa.7.0.copyload, ptr %.sroa.2334.sroa.3.0..sroa.2334.0..sroa_idx.sroa_idx, align 8
  br label %bb.io

_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit.thread227: ; preds = %_ZN10rayon_core9broadcast12broadcast_in17h224d2231e63cdbc8E.exit.i, %_ZN5milli20thread_pool_no_abort17ThreadPoolNoAbort9broadcast17h1c7ea5b664239c43E.exit
end_hunk_1
begin_hunk_2_@"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h0f575a644b12d5caE":bb.a
  invoke fastcc void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hf8d23fdb8ca291c5E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.ah)
          to label %.noexc.i.i.i unwind label %.thread47.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231751

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.aw = load i8, ptr %i.ag, align 8, !range !192, !noalias !231750, !noundef !175
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !231750, !nonnull !175, !align !179, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !231750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !231748
  br label %bb.al

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !range !183, !noalias !231750, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !231750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !231748
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i.i.i.i.i", %bb.b
  %i.bc = phi i64 [ 2, %bb.e ], [ 1, %bb.b ], [ 1, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i.i.i.i.i" ]
  %i.bd = phi ptr [ %i.av, %bb.e ], [ %.sroa.2.0.copyload.i.i, %bb.b ], [ %i.av, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i.i.i.i.i" ] ; 4 uses
  %i.be = phi i8 [ %i.bb, %bb.e ], [ 3, %bb.b ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i.i.i.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231754)
  %i.bf = icmp eq ptr %i.bd, %i.as
  br i1 %i.bf, label %bb.o, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i72.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i72.i.i.i.i": ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.bg, ptr %.sroa.436.0..sroa_idx.i.i.i, align 8, !alias.scope !231755, !noalias !231756
  %.sroa.0.0.copyload7.i.i.i.i.i.i.i = load i8, ptr %i.bd, align 8, !noalias !231757 ; 3 uses
  %.not.i.i.i73.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload7.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i73.i.i.i.i, label %bb.o, label %bb.g

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i72.i.i.i.i"
  %.sroa.8.0..sroa_idx8.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %.sroa.2.0..sroa_idx.i.i.i74.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !231758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i74.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx8.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !231758
  store i64 %i.bc, ptr %i.at, align 8, !alias.scope !231759, !noalias !231756
  store i8 %.sroa.0.0.copyload7.i.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !231758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !231762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231763)
  switch i8 %.sroa.0.0.copyload7.i.i.i.i.i.i.i, label %bb.h [
    i8 16, label %bb.k
    i8 17, label %bb.i
    i8 18, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h843ca6f6de54903cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.af)
          to label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h812d0f97cc5ed149E.exit.i.i.i.i.i.i.i.i.i" unwind label %.thread47.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231764

bb.i:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !231765, !noalias !231758, !nonnull !175, !align !179, !noundef !175 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !231766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !noalias !231766
  invoke fastcc void @"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h843ca6f6de54903cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ad)
          to label %bb.j unwind label %bb.l, !noalias !231767

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !231766
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef 32, i64 noundef 8) #77, !noalias !231766
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h812d0f97cc5ed149E.exit.i.i.i.i.i.i.i.i.i"

bb.k:                                             ; preds = %bb.g, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 3, ptr %i.bj, align 1, !noalias !231767
  store i8 0, ptr %i.ae, align 8, !noalias !231767
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h73ccac2b1ed295d4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.af)
          to label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h812d0f97cc5ed149E.exit.i.i.i.i.i.i.i.i.i" unwind label %.thread47.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231768

bb.l:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef 32, i64 noundef 8) #77, !noalias !231766
  br label %.thread42.i.i.i

"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h812d0f97cc5ed149E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.k, %bb.j, %bb.h
  %i.bl = load i8, ptr %i.ae, align 8, !range !192, !noalias !231767, !noundef !175
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h812d0f97cc5ed149E.exit.i.i.i.i.i.i.i.i.i"
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bn, align 1, !noalias !231767 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 3
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i = load i24, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 2, !noalias !231758
  %.sroa.6.1.insert.ext.i.i.i.i.i.i.i = zext i8 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i to i32
  %i.bo = zext i24 %.sroa.5.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i to i32
  %i.bp = shl nuw i32 %i.bo, 8
  %.sroa.6.2.insert.shift.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.bp
  %.sroa.6.2.insert.insert.i.i.i.i.i.i.i = or disjoint i32 %.sroa.6.2.insert.shift.i.i.i.i.i.i.i, %.sroa.6.1.insert.ext.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !231762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !231758
  br label %bb.o

bb.n:                                             ; preds = %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17h812d0f97cc5ed149E.exit.i.i.i.i.i.i.i.i.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !231767, !nonnull !175, !align !179, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !231762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !231758
  br label %bb.al

bb.o:                                             ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i72.i.i.i.i", %bb.f
  %.sroa.5117.0.ph.i.i.i.i = phi i32 [ 5, %bb.f ], [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i72.i.i.i.i" ], [ %.sroa.6.2.insert.insert.i.i.i.i.i.i.i, %bb.m ] ; 2 uses
  %.sroa.013.0.extract.trunc.i.i.i.i = trunc i32 %.sroa.5117.0.ph.i.i.i.i to i8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i32 %.sroa.5117.0.ph.i.i.i.i, 8
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.3.0.extract.shift.i.i.i.i to i24
  %.not60.i.i.i.i = icmp eq i8 %.sroa.013.0.extract.trunc.i.i.i.i, 5
  %..sroa.013.0.extract.trunc.i.i.i.i = select i1 %.not60.i.i.i.i, i8 4, i8 %.sroa.013.0.extract.trunc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !231769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !231769
  invoke fastcc void @"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17he251339d50f79b46E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ak, ptr nonnull align 8 dereferenceable(40) %i.an)
          to label %.noexc10.i.i.i unwind label %.thread47.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231770

.noexc10.i.i.i:                                   ; preds = %bb.o
  %i.bs = load i64, ptr %i.ak, align 8, !range !237, !noalias !231769, !noundef !175 ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !231769 ; 3 uses
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !231769
  br label %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit112.i.i.i.i"

bb.q:                                             ; preds = %.noexc10.i.i.i
  %.sroa.654.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.654.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !231769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !231769
  %.not61.i.i.i.i = icmp eq i64 %i.bs, 3
  br i1 %.not61.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.524.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421.i.i.i.i, i64 16, i1 false), !noalias !231769
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.bv, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 8, !noalias !231769
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = phi ptr [ %i.bv, %bb.r ], [ undef, %bb.q ] ; 5 uses
  %i.bx = phi i64 [ %i.bs, %bb.r ], [ 2, %bb.q ]  ; 4 uses
  store i64 %i.bx, ptr %i.al, align 8, !noalias !231769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !231769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !231769
  invoke fastcc void @"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17he251339d50f79b46E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ai, ptr nonnull align 8 dereferenceable(40) %i.an)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231770

.loopexit.split-lp.i.i.i.i:                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ck, %bb.z ], [ %lpad.loopexit.split-lp561, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al) #79
          to label %.thread42.i.i.i unwind label %bb.ak, !noalias !231769

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i.i.i.i.i", %bb.s
  %lpad.loopexit.split-lp561 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.by = load i64, ptr %i.ai, align 8, !range !237, !noalias !231769, !noundef !175 ; 3 uses
  %i.bz = icmp eq i64 %i.by, 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !231769 ; 2 uses
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !231769
  br label %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit.i.i.i.i"

bb.v:                                             ; preds = %bb.t
  %.sroa.657.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.434.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.657.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !231769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !231769
  %.not62.i.i.i.i = icmp eq i64 %i.by, 3
  br i1 %.not62.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.537.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.537.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.434.i.i.i.i, i64 16, i1 false), !noalias !231769
  %.sroa.436.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.cb, ptr %.sroa.436.0..sroa_idx.i.i.i.i, align 8, !noalias !231769
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cc = phi i64 [ %i.by, %bb.w ], [ 2, %bb.v ]  ; 2 uses
  store i64 %i.cc, ptr %i.aj, align 8, !noalias !231769
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231773)
  %i.cd = load ptr, ptr %.sroa.638.0..sroa_idx.i.i.i, align 8, !alias.scope !231774, !noalias !231775, !nonnull !175, !noundef !175 ; 3 uses
  %i.ce = load ptr, ptr %.sroa.436.0..sroa_idx.i.i.i, align 8, !alias.scope !231774, !noalias !231775, !nonnull !175, !noundef !175 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, %i.cd
  br i1 %i.cf, label %._crit_edge.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i77.i.i.i.i"

._crit_edge.i.i:                                  ; preds = %bb.x
  %.sroa.6.0.copyload.pre.i.i = load i64, ptr %i.at, align 8, !noalias !231740
  br label %bb.am

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i77.i.i.i.i": ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 3 uses
  store ptr %i.cg, ptr %.sroa.436.0..sroa_idx.i.i.i, align 8, !alias.scope !231774, !noalias !231775
  %.sroa.0.0.copyload2.i.i.i78.i.i.i.i = load i8, ptr %i.ce, align 8, !noalias !231776 ; 2 uses
  %.not.i.i.i79.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i78.i.i.i.i, 22
  %.sroa.6.0.copyload.pre282.i.i = load i64, ptr %i.at, align 8, !noalias !231740 ; 2 uses
  br i1 %.not.i.i.i79.i.i.i.i, label %bb.am, label %bb.y

bb.y:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i77.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %.sroa.2.0..sroa_idx.i.i.i81.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !231777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i81.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i80.i.i.i.i, i64 31, i1 false), !noalias !231777
  %i.ch = add i64 %.sroa.6.0.copyload.pre282.i.i, 1 ; 2 uses
  store i64 %i.ch, ptr %i.at, align 8, !alias.scope !231778, !noalias !231775
  store i8 %.sroa.0.0.copyload2.i.i.i78.i.i.i.i, ptr %i.ac, align 8, !noalias !231777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !231779
  invoke fastcc void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_option17hf8d23fdb8ca291c5E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.ac)
          to label %.noexc.i.i.i.i unwind label %bb.z, !noalias !231780

.noexc.i.i.i.i:                                   ; preds = %bb.y
  %i.ci = load i8, ptr %i.ab, align 8, !range !192, !noalias !231779, !noundef !175
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.aa, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aj) #79
          to label %.loopexit.split-lp.i.i.i.i unwind label %bb.ak, !noalias !231769

bb.aa:                                            ; preds = %.noexc.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !231779, !nonnull !175, !align !179, !noundef !175 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !231779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !231777
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231781)
  %i.cn = icmp eq i64 %i.cc, 0
  br i1 %i.cn, label %bb.ab, label %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231784)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !231785
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.co, align 8, !alias.scope !231786, !noalias !231769 ; 3 uses
  %.not.i.i.i.i.i85.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i85.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !231786, !noalias !231769
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !231786, !noalias !231769 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !231787, !noalias !231785
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !231787, !noalias !231785
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !231787, !noalias !231785
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !231787, !noalias !231785
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !231787, !noalias !231785
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !231787, !noalias !231785
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ac, %bb.ab
  %.sink23.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, %bb.ac ], [ 0, %bb.ab ]
  store i64 %.sink23.i.i.i.i.i.i.i.i.i, ptr %i.aa, align 8, !alias.scope !231787, !noalias !231785
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.sink23.i.i.i.i.i.i.i.i.i, ptr %i.cp, align 8, !alias.scope !231787, !noalias !231785
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i.i.i.i, ptr %i.cq, align 8, !alias.scope !231787, !noalias !231785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !231788
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h80ec820f49f640d3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.noexc86.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231785

.noexc86.i.i.i.i:                                 ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i.i.i.i.i"
  %i.cr = load ptr, ptr %i.z, align 8, !noalias !231788, !noundef !175 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc86.i.i.i.i
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc87.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cs = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cx, %.noexc87.i.i.i.i ]
  %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !231788
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231790)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !range !174, !alias.scope !231791, !noalias !231788, !noundef !175 ; 2 uses
  %i.cv = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cv, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !231791, !noalias !231788, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !231792
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !231788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !231788
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h80ec820f49f640d3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.noexc87.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231785

.noexc87.i.i.i.i:                                 ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i.i.i.i.i"
  %i.cx = load ptr, ptr %i.z, align 8, !noalias !231788, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i.i.i.i.i", label %bb.ad

"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i.i.i.i.i": ; preds = %.noexc87.i.i.i.i, %.noexc86.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !231788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !231785
  br label %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit.i.i.i.i"

bb.af:                                            ; preds = %.noexc.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !183, !noalias !231779, !noundef !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !231779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !231777
  br label %bb.am

"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i.i.i.i.i", %bb.aa, %bb.u
  %.sroa.9.0.i.i.i = phi ptr [ %i.cb, %bb.u ], [ %i.cm, %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i.i.i.i.i" ], [ %i.cm, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !231769
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231793)
  %i.da = icmp eq i64 %i.bx, 0
  br i1 %i.da, label %bb.ag, label %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit112.i.i.i.i"

bb.ag:                                            ; preds = %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !231797
  %.not.i.i.i.i.i89.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i89.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i100.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.5.0..sroa_idx.i.i.i.i90.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.5.0.copyload.i.i.i.i91.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i90.i.i.i.i, align 8, !alias.scope !231798, !noalias !231769
  %.sroa.4.0..sroa_idx.i.i.i.i92.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.4.0.copyload.i.i.i.i93.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i92.i.i.i.i, align 8, !alias.scope !231798, !noalias !231769 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i94.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i94.i.i.i.i, align 8, !alias.scope !231799, !noalias !231797
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i95.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.bw, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i95.i.i.i.i, align 8, !alias.scope !231799, !noalias !231797
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i96.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i93.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i96.i.i.i.i, align 8, !alias.scope !231799, !noalias !231797
  %.sroa.4.0..sroa_idx.i.i.i.i.i97.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i97.i.i.i.i, align 8, !alias.scope !231799, !noalias !231797
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i98.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr %i.bw, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i98.i.i.i.i, align 8, !alias.scope !231799, !noalias !231797
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i99.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i93.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i99.i.i.i.i, align 8, !alias.scope !231799, !noalias !231797
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i100.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i100.i.i.i.i": ; preds = %bb.ah, %bb.ag
  %.sink23.i.i.i.i.i101.i.i.i.i = phi i64 [ 1, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i102.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i91.i.i.i.i, %bb.ah ], [ 0, %bb.ag ]
  store i64 %.sink23.i.i.i.i.i101.i.i.i.i, ptr %i.y, align 8, !alias.scope !231799, !noalias !231797
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i64 %.sink23.i.i.i.i.i101.i.i.i.i, ptr %i.db, align 8, !alias.scope !231799, !noalias !231797
  %i.dc = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i102.i.i.i.i, ptr %i.dc, align 8, !alias.scope !231799, !noalias !231797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !231800
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h80ec820f49f640d3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %.noexc11.i.i.i unwind label %.thread47.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231797

.noexc11.i.i.i:                                   ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i100.i.i.i.i"
  %i.dd = load ptr, ptr %i.x, align 8, !noalias !231800, !noundef !175 ; 2 uses
  %.not5.i.i.i.i.i.i103.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not5.i.i.i.i.i.i103.i.i.i.i, label %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i111.i.i.i.i", label %.lr.ph.i.i.i.i.i.i104.i.i.i.i

.lr.ph.i.i.i.i.i.i104.i.i.i.i:                    ; preds = %.noexc11.i.i.i
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i105.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc12.i.i.i, %.lr.ph.i.i.i.i.i.i104.i.i.i.i
  %i.de = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i104.i.i.i.i ], [ %i.dj, %.noexc12.i.i.i ]
  %.sroa.23.0.copyload.i.i.i.i.i.i106.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i105.i.i.i.i, align 8, !noalias !231800
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.sroa.23.0.copyload.i.i.i.i.i.i106.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231802)
  %.val.i.i.i.i.i.i.i.i.i107.i.i.i.i = load i64, ptr %i.dg, align 8, !range !174, !alias.scope !231803, !noalias !231800, !noundef !175 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i107.i.i.i.i, 0
  br i1 %i.dh, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i109.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.val1.i.i.i.i.i.i.i.i.i108.i.i.i.i = load ptr, ptr %i.di, align 8, !alias.scope !231803, !noalias !231800, !nonnull !175, !noundef !175
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i108.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i107.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !231804
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i109.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i109.i.i.i.i": ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !231800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !231800
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h80ec820f49f640d3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %.noexc12.i.i.i unwind label %.thread47.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !231797

.noexc12.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i109.i.i.i.i"
  %i.dj = load ptr, ptr %i.x, align 8, !noalias !231800, !noundef !175 ; 2 uses
  %.not.i.i.i.i.i.i110.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i.i110.i.i.i.i, label %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i111.i.i.i.i", label %bb.ai

"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i111.i.i.i.i": ; preds = %.noexc12.i.i.i, %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !231800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !231797
  br label %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit112.i.i.i.i"

bb.ak:                                            ; preds = %bb.z, %.loopexit.split-lp.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !231769
  unreachable

"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit112.i.i.i.i": ; preds = %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i111.i.i.i.i", %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit.i.i.i.i", %bb.p
  %.sroa.9.1.i.i.i = phi ptr [ %i.bv, %bb.p ], [ %.sroa.9.0.i.i.i, %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$17hcd297ea2c35614e5E.exit.i111.i.i.i.i" ], [ %.sroa.9.0.i.i.i, %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !231769
  br label %bb.al

.thread47.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17hf338c883a536e9afE.exit.i.i.i.i.i.i109.i.i.i.i", %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h70e1f94313e2236aE.exit.i.i.i.i100.i.i.i.i", %bb.o, %bb.k, %bb.h, %bb.c
  %lpad.loopexit.split-lp559 = landingpad { ptr, i32 }
          cleanup
  br label %.thread42.i.i.i

bb.al:                                            ; preds = %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit112.i.i.i.i", %bb.n, %bb.d
  %.sroa.9.2.ph.i.i.i = phi ptr [ %i.az, %bb.d ], [ %i.br, %bb.n ], [ %.sroa.9.1.i.i.i, %"_ZN4core3ptr130drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17h293f6b05824ac01dE.exit112.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.434.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.421.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.045.sroa.0.i.sroa.5.i.i.i, i64 48, i1 false), !noalias !231805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !231740
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h1b36876552c609f2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.an)
          to label %_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.i.i unwind label %.body.thread11.i.i, !noalias !231740

bb.am:                                            ; preds = %bb.af, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i77.i.i.i.i", %._crit_edge.i.i
  %.sroa.6.0.copyload.i.i = phi i64 [ %i.ch, %bb.af ], [ %.sroa.6.0.copyload.pre.i.i, %._crit_edge.i.i ], [ %.sroa.6.0.copyload.pre282.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i77.i.i.i.i" ] ; 2 uses
  %.sroa.4.0.copyload.i.i = phi ptr [ %i.cg, %bb.af ], [ %i.ce, %._crit_edge.i.i ], [ %i.cg, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i77.i.i.i.i" ] ; 2 uses
  %i.dl = phi i8 [ %i.cz, %bb.af ], [ 3, %._crit_edge.i.i ], [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88da521c71ceeb9bE.exit.i.i.i77.i.i.i.i" ]
  %.sroa.045.sroa.0.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.045.sroa.0.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.045.sroa.0.i.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !231740
  %.sroa.045.sroa.0.i.sroa.5.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.045.sroa.0.i.sroa.5.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.045.sroa.0.i.sroa.5.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !noalias !231740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !231769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !231769
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.434.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.421.i.i.i.i)
  store i64 %i.bx, ptr %i.am, align 8, !noalias !231740
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !231740
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.045.sroa.0.i.sroa.5.i.i.i, i64 48, i1 false), !noalias !231740
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  store i8 %..sroa.013.0.extract.trunc.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !231740
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 65
  store i24 %.sroa.3.0.extract.trunc.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !noalias !231740
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 68
  store i8 %i.be, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !231740
  %.sroa.934.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 69
  store i8 %i.dl, ptr %.sroa.934.0..sroa_idx.i.i.i, align 1, !noalias !231740
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h1b36876552c609f2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.an)
          to label %.noexc13.i.i.i unwind label %bb.ao, !noalias !231740

.noexc13.i.i.i:                                   ; preds = %bb.am
  %i.dm = icmp eq ptr %i.cd, %.sroa.4.0.copyload.i.i
  br i1 %i.dm, label %bb.aq, label %bb.an, !prof !176

bb.an:                                            ; preds = %.noexc13.i.i.i
  %i.dn = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64
  %i.do = ptrtoint ptr %i.cd to i64
  %i.dp = sub nuw i64 %i.do, %i.dn
  %i.dq = lshr exact i64 %i.dp, 5
  %i.dr = add i64 %i.dq, %.sroa.6.0.copyload.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !231806
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.w, align 8, !noalias !231806
  %i.ds = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17he2c6dc45493aac23E(i64 noundef %i.dr, ptr noundef nonnull align 1 %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2753)
          to label %bb.ap unwind label %bb.ao, !noalias !231806

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..settings..TypoSettings$GT$17h22ac3b6af101bbd7E"(ptr noalias noundef align 8 dereferenceable(72) %i.am) #79
          to label %.body.thread.thread.i.i unwind label %bb.ar, !noalias !231740

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !231806
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..settings..TypoSettings$GT$17h22ac3b6af101bbd7E"(ptr noalias noundef align 8 dereferenceable(72) %i.am)
          to label %_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.sink.split.i.i unwind label %.body.thread11.i.i, !noalias !231740

bb.aq:                                            ; preds = %.noexc13.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.045.sroa.0.i.sroa.5.i.i.i, i64 48, i1 false)
  %.sroa.20.0.copyload12 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !231805
  br label %_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.sink.split.i.i

bb.ar:                                            ; preds = %.thread42.i.i.i, %bb.ao
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !231740
  unreachable

.thread42.i.i.i:                                  ; preds = %.thread47.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.i.i.i, %bb.l
  %eh.lpad-body45.i.i.i = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %.pn.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit.split-lp559, %.thread47.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h1b36876552c609f2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.an)
          to label %.body.thread.i.i unwind label %bb.ar, !noalias !231740

_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.sink.split.i.i: ; preds = %bb.aq, %bb.ap
  %.sroa.20.3 = phi i64 [ %.sroa.20.0.copyload12, %bb.aq ], [ undef, %bb.ap ]
  %.sroa.11.3 = phi ptr [ %i.bw, %bb.aq ], [ %i.ds, %bb.ap ]
  %.sroa.0.3 = phi i64 [ %i.bx, %bb.aq ], [ 3, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !231740
  br label %_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.i.i

_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.i.i: ; preds = %_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.sink.split.i.i, %bb.al
  %.sroa.20.4 = phi i64 [ undef, %bb.al ], [ %.sroa.20.3, %_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.sink.split.i.i ]
  %.sroa.11.4 = phi ptr [ %.sroa.9.2.ph.i.i.i, %bb.al ], [ %.sroa.11.3, %_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.sink.split.i.i ]
  %.sroa.0.4 = phi i64 [ 3, %bb.al ], [ %.sroa.0.3, %_ZN5serde7private2de7content17visit_content_seq17h8170e84f70e85693E.exit.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !231740
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.sroa.0.i.sroa.5.i.i.i)
  br label %bb.dp

bb.as:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.dv, align 8, !alias.scope !231738
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !231738, !nonnull !175, !noundef !175 ; 4 uses
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !231738 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.580.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.574.i.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !231807
  %i.dw = icmp ult i64 %.sroa.33.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.dw)
  %.idx.i12.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i, 6
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i, i64 %.idx.i12.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %i.dy, align 8, !noalias !231808
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  store ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !231808
  %.sroa.531.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.531.0..sroa_idx.i.i.i, align 8, !noalias !231808
  %.sroa.632.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  store ptr %i.dx, ptr %.sroa.632.0..sroa_idx.i.i.i, align 8, !noalias !231808
  store i8 22, ptr %i.u, align 8, !noalias !231808
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 3 uses
  store i64 0, ptr %i.dz, align 8, !noalias !231808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !231808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !231809
  store i64 3, ptr %i.t, align 8, !noalias !231809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !231809
  store i64 3, ptr %i.s, align 8, !noalias !231809
  %i.ea = icmp eq i64 %.sroa.33.0.copyload.i.i, 0
  br i1 %i.ea, label %bb.dj, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.as
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i179.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i180.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.4102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5103.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.654.0..sroa_idx55.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 9 uses
  %.sroa.757.0..sroa_idx58.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.499.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.5100.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.637.0..sroa_idx38.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 11 uses
  %.sroa.740.0..sroa_idx41.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i141.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i13.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.2.0..sroa_idx.i.i.i135.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.2.0..sroa_idx.i.i.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.654.0..sroa_idx55.promoted.i.i.i.i = load ptr, ptr %.sroa.654.0..sroa_idx55.i.i.i.i, align 8, !noalias !231809
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.i.i.i.i": ; preds = %bb.bs, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i"
  %.sroa.499.0.copyload487.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.499.0.copyload486.i.i.i.i, %bb.bs ] ; 20 uses
  %.sroa.4102.0.copyload466.i.i.i.i = phi ptr [ %.sroa.654.0..sroa_idx55.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.4102.0.copyload465.i.i.i.i, %bb.bs ] ; 15 uses
  %i.eh = phi ptr [ %.sroa.22.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ft, %bb.bs ] ; 4 uses
  %.sroa.0.0449.i.i.i.i = phi i8 [ 4, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i, %bb.bs ] ; 7 uses
  %.sroa.06.0448.i.i.i.i = phi i8 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.06.1.i.i.i.i, %bb.bs ] ; 7 uses
  %.sroa.010.0447.i.i.i.i = phi i8 [ 4, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.010.1.i.i.i.i, %bb.bs ] ; 7 uses
  %.sroa.8.sroa.0.0446.i.i.i.i = phi i24 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %.sroa.8.sroa.0.1.i.i.i.i, %bb.bs ] ; 6 uses
  %i.ei = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fr, %bb.bs ] ; 25 uses
  %i.ej = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fq, %bb.bs ] ; 20 uses
  %i.ek = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fp, %bb.bs ] ; 11 uses
  %i.el = phi i64 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.fo, %bb.bs ] ; 16 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  store ptr %i.em, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !231808
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i = load i8, ptr %i.eh, align 8, !noalias !231810 ; 3 uses
  %.not.i.i.i.i.i15.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i15.i.i, label %.thread.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88c58ec42fed6d96E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.en = load i64, ptr %i.dz, align 8, !noalias !231808, !noundef !175
  %i.eo = add i64 %i.en, 1
  store i64 %i.eo, ptr %i.dz, align 8, !noalias !231808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !231811
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !231811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !231811
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i64 32, i1 false), !noalias !231811
  %i.eq = load i8, ptr %i.u, align 8, !range !221, !noalias !231808, !noundef !175
  %i.er = icmp eq i8 %i.eq, 22
  br i1 %i.er, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h5c79dae1ae525fccE.exit.i.i.i.i.i.i.i", label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h73ccac2b1ed295d4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.u)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h5c79dae1ae525fccE.exit.i.i.i.i.i.i.i" unwind label %bb.be, !noalias !231808

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17h5c79dae1ae525fccE.exit.i.i.i.i.i.i.i": ; preds = %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !231808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !231811
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !231811
  %.sroa.51.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231811 ; 7 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231811 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !231811 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !231812)
  call void @llvm.experimental.noalias.scope.decl(metadata !231813)
  call void @llvm.experimental.noalias.scope.decl(metadata !231814)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i [
    i8 1, label %bb.av
    i8 4, label %bb.aw
    i8 12, label %bb.ax
    i8 13, label %bb.az
    i8 14, label %bb.ba
    i8 15, label %bb.bc
  ], !prof !222

end_hunk_2
