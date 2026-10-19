Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN15index_scheduler14IndexScheduler33get_tasks_from_authorized_indexes17hc9a136e21ee28a25E:bb.a
  %i.bo = load i32, ptr %i.bn, align 4, !alias.scope !45670
  %narrow.i = select i1 %i.bm, i32 %i.bo, i32 -1  ; 2 uses
  %.sroa.018.0.i = zext i32 %narrow.i to i64      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !45678
  store i64 152, ptr %i.m, align 8, !noalias !45678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !45679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !45680
  call void @llvm.experimental.noalias.scope.decl(metadata !45681)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !45682), !noalias !45683
  %i.bp = icmp eq i32 %narrow.i, 0
  br i1 %i.bp, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !57, !noalias !45684, !nonnull !57 ; 2 uses
  %i.bs = invoke { i32, i32 } %i.br(ptr noundef nonnull align 1 %.sroa.08.0.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.ad, !noalias !45685, !inline_history !45527 ; 2 uses

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.w
  %i.bt = extractvalue { i32, i32 } %i.bs, 0
  %i.bu = trunc i32 %i.bt to i1
  br i1 %i.bu, label %bb.x, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.bv = extractvalue { i32, i32 } %i.bs, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.bw = add nsw i64 %.sroa.018.0.i, -1          ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !45686
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !45687, !noalias !45688, !noundef !57 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.by, align 8, !alias.scope !45687, !noalias !45688 ; 2 uses
  invoke fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue8get_task17h27ec9948e8e7a7e8E(ptr noalias noundef align 8 captures(address) dereferenceable(784) %i.e, i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, i32 noundef %i.bv)
          to label %.noexc2.i.i.i.i.i.i.i.i.i unwind label %bb.ad, !noalias !45689

.noexc2.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.x
  %i.bz = load i64, ptr %i.e, align 8, !range !79, !noalias !45690, !noundef !57 ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.ca, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.y

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc2.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.cb, i64 344, i1 false), !noalias !45691
  br label %bb.z

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45690
  store i64 136, ptr %i.d, align 8, !noalias !45690
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bz, 20
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ac

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.d, i64 344, i1 false), !noalias !45691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45690
  br label %bb.z

bb.z:                                             ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45686
  %i.cc = load i64, ptr %i.m, align 8, !range !80, !alias.scope !45692, !noalias !45693, !noundef !57
  %i.cd = icmp eq i64 %i.cc, 152
  br i1 %i.cd, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.m)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i" unwind label %bb.ab, !noalias !45694

bb.ab:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !45695
  br label %.body.i.i.i.i.i.i.i.i.i

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aa, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !45696
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %i.cb, i64 776, i1 false), !noalias !45691
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.d)
          to label %bb.ae unwind label %bb.ad, !noalias !45685

bb.ad:                                            ; preds = %bb.ac, %bb.x, %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45686
  %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(432) %i.bx, i64 432, i1 false), !noalias !45697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !45697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  store i64 %i.bz, ptr %i.k, align 8, !alias.scope !45681, !noalias !45698
  %.sroa.612.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.612.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 776, i1 false), !noalias !45699
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.cg = load i64, ptr %i.m, align 8, !range !80, !noalias !45700, !noundef !57
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.cg, 152
  %i.ch = icmp eq i64 %i.bw, 0                    ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ch, %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !45701
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !57, !noalias !45702, !nonnull !57
  invoke void %i.cj(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %.sroa.08.0.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !45703, !inline_history !45551

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !45701
  br label %bb.ak

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !45680
  %i.ck = load ptr, ptr %.sroa.69.0.i, align 8, !invariant.load !57, !noalias !45680 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  invoke void %i.ck(ptr noundef nonnull %.sroa.08.0.i)
          to label %bb.ah unwind label %bb.ai, !noalias !45703

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !56, !invariant.load !57, !noalias !45680 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !range !90, !invariant.load !57, !noalias !45680 ; 2 uses
  %i.cp = icmp ult i64 %i.co, -9223372036854775807
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp eq i64 %i.cm, 0
  br i1 %i.cq, label %bb.bf, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) %i.co) #77, !noalias !45703
  br label %bb.bf

bb.ai:                                            ; preds = %bb.ag
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !56, !invariant.load !57, !noalias !45680 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !range !90, !invariant.load !57, !noalias !45680 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, -9223372036854775807
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp eq i64 %i.ct, 0
  br i1 %i.cx, label %.body.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ai
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) %i.cv) #77, !noalias !45703
  br label %.body.i.i.i.i.i

bb.aj:                                            ; preds = %bb.al, %bb.af
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.k) #79
          to label %.body.i.i.i.i.i.i.i.i.i unwind label %bb.be, !noalias !45703

bb.ak:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !45704
  %i.cz = call noundef align 8 dereferenceable_or_null(3136) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 3136, i64 noundef range(i64 1, 9) 8) #77, !noalias !45704 ; 5 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 3136, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !45703

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.cz, ptr noundef nonnull align 8 dereferenceable(784) %i.k, i64 784, i1 false), !noalias !45703
  store i64 4, ptr %i.l, align 8, !noalias !45680
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !45680
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !45680
  call void @llvm.experimental.noalias.scope.decl(metadata !45705)
  call void @llvm.experimental.noalias.scope.decl(metadata !45706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !45707
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br i1 %i.ch, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.am
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344
  %.sroa.612.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 32
  br label %bb.an

bb.an:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.de = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ek, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.df = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.em, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.11.014.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !45708)
  call void @llvm.experimental.noalias.scope.decl(metadata !45709), !noalias !45710
  %i.dg = invoke { i32, i32 } %i.br(ptr noundef nonnull align 1 %.sroa.08.0.i)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i unwind label %bb.au, !noalias !45703, !inline_history !45527 ; 2 uses

.noexc9.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.an
  %i.dh = extractvalue { i32, i32 } %i.dg, 0
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %bb.ao, label %.loopexit.i.i.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.dj = extractvalue { i32, i32 } %i.dg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.dk = add nsw i64 %.sroa.11.014.i.i.i.i.i.i.i.i.i.i, -1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !45711
  invoke fastcc void @_ZN15index_scheduler5queue5tasks9TaskQueue8get_task17h27ec9948e8e7a7e8E(ptr noalias noundef align 8 captures(address) dereferenceable(784) %i.g, i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, i32 noundef %i.dj)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i unwind label %bb.au, !noalias !45712

.noexc10.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ao
  %i.dl = load i64, ptr %i.g, align 8, !range !79, !noalias !45713, !noundef !57 ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 21
  br i1 %i.dm, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ap

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.dc, i64 344, i1 false), !noalias !45714
  br label %bb.aq

bb.ap:                                            ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !45713
  store i64 136, ptr %i.f, align 8, !noalias !45713
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dl, 20
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.at

"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %i.f, i64 344, i1 false), !noalias !45714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45713
  br label %bb.aq

bb.aq:                                            ; preds = %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks28_$u7b$$u7b$closure$u7d$$u7d$17h18c191ed1251eec1E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !45711
  %i.dn = load i64, ptr %i.m, align 8, !range !80, !alias.scope !45715, !noalias !45716, !noundef !57
  %i.do = icmp eq i64 %i.dn, 152
  br i1 %i.do, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.m)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.as, !noalias !45717

bb.as:                                            ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !45718
  br label %.body11.i.i.i.i.i.i.i.i.i.i

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ar, %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.m, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !45719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %i.dc, i64 776, i1 false), !noalias !45714
  invoke void @"_ZN4core3ptr50drop_in_place$LT$index_scheduler..error..Error$GT$17hb6ff07c045ee620cE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.f)
          to label %bb.av unwind label %bb.au, !noalias !45703

.body11.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.bb, %bb.au, %bb.as
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.eo, %bb.bb ], [ %i.dq, %bb.au ], [ %i.dp, %bb.as ]
  invoke fastcc void @"_ZN4core3ptr565drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$C$index_scheduler..queue..tasks..TaskQueue..get_existing_tasks$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$index_scheduler..error..Error$GT$$GT$$GT$17h22810dd2c5855ce5E"(ptr nonnull %.sroa.08.0.i, ptr nonnull %.sroa.69.0.i) #79
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.bc, !noalias !45720

bb.au:                                            ; preds = %bb.at, %bb.ao, %bb.an
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !45711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.sroa.4.352..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(432) %i.db, i64 432, i1 false), !noalias !45721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 344, i1 false), !noalias !45721
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  store i64 %i.dl, ptr %i.i, align 8, !alias.scope !45708, !noalias !45722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.612.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 776, i1 false), !noalias !45723
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.dr = load i64, ptr %i.l, align 8, !range !56, !alias.scope !45710, !noalias !45680, !noundef !57
  %i.ds = icmp eq i64 %i.df, %i.dr
  br i1 %i.ds, label %bb.az, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc9.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i", %bb.am
  %.sroa.9.0.copyload17.i.i.i.i.i = phi i64 [ 1, %bb.am ], [ %i.df, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.df, %.noexc9.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.018.0.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.7.0.copyload15.i.i.i.i.i = phi ptr [ %i.cz, %bb.am ], [ %i.de, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h49613882b6d40837E.exit.thread5.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.de, %.noexc9.i.i.i.i.i.i.i.i.i.i ], [ %i.ek, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.dt = load ptr, ptr %.sroa.69.0.i, align 8, !invariant.load !57, !noalias !45724 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  invoke void %i.dt(ptr noundef nonnull %.sroa.08.0.i)
          to label %bb.ax unwind label %bb.ay, !noalias !45720

bb.ax:                                            ; preds = %bb.aw, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !56, !invariant.load !57, !noalias !45724 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !range !90, !invariant.load !57, !noalias !45724 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, -9223372036854775807
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp eq i64 %i.dv, 0
  br i1 %i.dz, label %bb.bd, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ax
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) %i.dx) #77, !noalias !45720
  br label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !range !56, !invariant.load !57, !noalias !45724 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.69.0.i, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !range !90, !invariant.load !57, !noalias !45724 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, -9223372036854775807
  call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp eq i64 %i.ec, 0
  br i1 %i.eg, label %.body.i.i.i.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.08.0.i, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) %i.ee) #77, !noalias !45720
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.av
  %i.eh = load i64, ptr %i.m, align 8, !range !80, !noalias !45725, !noundef !57
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.eh, 152
  %i.ei = icmp eq i64 %i.dk, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.ei, %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !45726
  %i.ej = load ptr, ptr %i.dd, align 8, !invariant.load !57, !noalias !45727, !nonnull !57
  invoke void %i.ej(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %.sroa.08.0.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bb, !noalias !45720, !inline_history !45551

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !45726
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i", %bb.av
  %i.ek = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.de, %bb.av ] ; 3 uses
  %i.el = getelementptr inbounds nuw [784 x i8], ptr %i.ek, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(784) %i.el, ptr noundef nonnull align 8 dereferenceable(784) %i.i, i64 784, i1 false), !noalias !45720
  %i.em = add nuw nsw i64 %i.df, 1                ; 2 uses
  store i64 %i.em, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !45710, !noalias !45680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.en = icmp eq i64 %i.dk, 0
  br i1 %i.en, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.an

bb.bb:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ba
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.i) #79
          to label %.body11.i.i.i.i.i.i.i.i.i.i unwind label %bb.bc, !noalias !45720

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h57a1a48961a3f6a0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.df, i64 noundef 1, i64 noundef 8, i64 noundef 784)
          to label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i" unwind label %bb.bb, !noalias !45728

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i_crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9fc502f1dc0d7b6cE.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !45710, !noalias !45680
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd8dc5bcbecb32494E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bc:                                            ; preds = %bb.bb, %.body11.i.i.i.i.i.i.i.i.i.i
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !45720
  unreachable

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ay, %.body11.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %.body11.i.i.i.i.i.i.i.i.i.i ], [ %i.ea, %bb.ay ], [ %i.ea, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  invoke void @"_ZN4core3ptr74drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..tasks..Task$GT$$GT$17hba0047fdac754a22E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #79
          to label %.body.i.i.i.i.i unwind label %bb.be, !noalias !45703

bb.bd:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !45707
  %.sroa.0.0.copyload13.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !45729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !45680
  br label %bb.bf

bb.be:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !45703
  unreachable

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.aj, %bb.ad, %bb.ab
  %.pn.ph.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cy, %bb.aj ], [ %i.cf, %bb.ad ], [ %i.ce, %bb.ab ]
  invoke fastcc void @"_ZN4core3ptr565drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$C$index_scheduler..queue..tasks..TaskQueue..get_existing_tasks$LT$core..iter..adapters..take..Take$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$u32$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$index_scheduler..error..Error$GT$$GT$$GT$17h22810dd2c5855ce5E"(ptr nonnull %.sroa.08.0.i, ptr nonnull %.sroa.69.0.i) #79
          to label %.body.i.i.i.i.i unwind label %bb.be, !noalias !45703

.body.i.i.i.i.i:                                  ; preds = %.body.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ai
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i ], [ %i.cr, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ], [ %i.cr, %bb.ai ] ; 2 uses
  %i.er = load i64, ptr %i.m, align 8, !range !80, !noalias !45678, !noundef !57
  %.not.i.i.i.i.i = icmp eq i64 %i.er, 152
  br i1 %.not.i.i.i.i.i, label %.body19, label %bb.bo

bb.bf:                                            ; preds = %bb.bd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ah
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ah ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.9.0.copyload17.i.i.i.i.i, %bb.bd ] ; 9 uses
  %.sroa.7.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ah ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.copyload15.i.i.i.i.i, %bb.bd ] ; 15 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.ah ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload13.i.i.i.i.i, %bb.bd ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45679
  %i.es = load i64, ptr %i.m, align 8, !range !80, !noalias !45678, !noundef !57 ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i64 %i.es, 152
  br i1 %.not.not.i.i.i.i.i, label %_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.thread.i, label %bb.bg

_ZN15index_scheduler5queue5tasks9TaskQueue18get_existing_tasks17h4ae7a94a35f499c5E.exit.thread.i: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !45678
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i.i.i.i) ]
  %i.et = icmp ult i64 %.sroa.9.0.i.i.i.i.i, 11764505149049459
  call void @llvm.assume(i1 %i.et)
  %.idx.i = mul nuw nsw i64 %.sroa.9.0.i.i.i.i.i, 784
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i.i.i.i, i64 %.idx.i ; 5 uses
  %i.ev = load ptr, ptr %.sink.i.i, align 8, !alias.scope !45671, !nonnull !57, !noundef !57 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !45675, !noundef !57 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, 288230376151711744
  call void @llvm.assume(i1 %i.ey)
  %i.ez = icmp eq i64 %i.ex, 0
  br i1 %i.ez, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4e90a96d48334d1cE.exit.i, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  %.sroa.664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.664.0.copyload.i = load i64, ptr %.sroa.664.0..sroa_idx.i, align 8, !noalias !45730
  %.sroa.966.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.966.0.copyload.i = load ptr, ptr %.sroa.966.0..sroa_idx.i, align 8, !noalias !45730
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !45730
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.11.0..sroa_idx.i, i64 312, i1 false), !noalias !45730
  %i.fa = icmp eq i64 %.sroa.9.0.i.i.i.i.i, 0
  br i1 %i.fa, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i.i.i.i.i.i", label %.lr.ph

bb.bh:                                            ; preds = %.lr.ph
  %i.fb = icmp eq i64 %i.fd, %.sroa.9.0.i.i.i.i.i
  br i1 %i.fb, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2dc91d9c0e6827aaE.exit.i.i.i.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.bg, %bb.bh
  %.sroa.0.0.i.i.i.i.i.i.i.i120 = phi i64 [ %i.fd, %bb.bh ], [ 0, %bb.bg ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [784 x i8], ptr %.sroa.7.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i120
  %i.fd = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i120, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef readonly align 8 dereferenceable(784) %i.fc)
          to label %bb.bh unwind label %bb.bj, !noalias !45731

bb.bi:                                            ; preds = %.lr.ph122
  %i.fe = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i121, 1 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, %.sroa.9.0.i.i.i.i.i
  br i1 %i.ff, label %.body.i.i.i.i.i.i, label %.lr.ph122

bb.bj:                                            ; preds = %.lr.ph
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = icmp eq i64 %i.fd, %.sroa.9.0.i.i.i.i.i
  br i1 %i.fh, label %.body.i.i.i.i.i.i, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.bj, %bb.bi
  %.sroa.0.1.i.i.i.i.i.i.i.i121 = phi i64 [ %i.fe, %bb.bi ], [ %i.fd, %bb.bj ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [784 x i8], ptr %.sroa.7.0.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i.i121
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef readonly align 8 dereferenceable(784) %i.fi) #79
          to label %bb.bi unwind label %bb.bk, !noalias !45731

bb.bk:                                            ; preds = %.lr.ph122
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !45732
  unreachable

.body.i.i.i.i.i.i:                                ; preds = %bb.bi, %bb.bj
  %i.fk = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.fk, label %.body19, label %bb.bl

bb.bl:                                            ; preds = %.body.i.i.i.i.i.i
  %i.fl = mul nuw i64 %.sroa.0.0.i.i.i.i.i, 784
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i.i.i.i, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !45731
  br label %.body19
end_hunk_0
begin_hunk_1_@_ZN3std9panicking12catch_unwind7do_call17h46595ba0c5074a38E:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !94213)
  call void @llvm.experimental.noalias.scope.decl(metadata !94214)
  %i.pr = load ptr, ptr %i.ay, align 8, !alias.scope !94215, !noalias !94051, !nonnull !57, !noundef !57
  %i.ps = atomicrmw sub ptr %i.pr, i64 1 release, align 8, !noalias !94216
  %i.pt = icmp eq i64 %i.ps, 1
  br i1 %i.pt, label %bb.gi, label %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit354.i.i.i"

bb.gi:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdfb7a3544ec9f782E"(ptr noalias noundef nonnull align 8 dereferenceable(496) %i.ay)
          to label %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit354.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !94058

"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit354.i.i.i": ; preds = %bb.gi, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !94051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !94051
  %.not720.i.i.i = icmp eq ptr %i.fv, %i.dx
  br i1 %.not720.i.i.i, label %._crit_edge.loopexit.i.i.i, label %bb.an

bb.gj:                                            ; preds = %bb.fv
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.oq, label %.body338.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i335.i.i.i, i64 noundef %.val1.i333.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !94217
  br label %.body338.i.i.i

bb.gl:                                            ; preds = %.thread490.i.i.i, %bb.hb, %.body320.i.i.i, %bb.eb, %bb.dw, %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit.i.i.i", %bb.am, %bb.d
  %i.pv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !94058
  unreachable

.thread589.i.i.i:                                 ; preds = %bb.fm, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i329.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !94051
  br label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i"

bb.gm:                                            ; preds = %bb.ey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.8100.i.i.i, i64 312, i1 false), !noalias !94059
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8100.i.i.i)
  %i.pw = icmp eq i64 %.sroa.669.sroa.0.0537.i.i.i, -9223372036854775808
  br i1 %i.pw, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i", label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.experimental.noalias.scope.decl(metadata !94218)
  %i.px = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.px, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.gn, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i.i.i = phi i64 [ %i.pz, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.gn ] ; 2 uses
  %i.py = getelementptr inbounds nuw [32 x i8], ptr %.sroa.669.sroa.6.i.i.i.sroa.0.0, i64 %.sroa.0.010.i.i.i.i.i.i.i.i ; 2 uses
  %i.pz = add nuw i64 %.sroa.0.010.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.py, align 8, !range !83, !alias.scope !94218, !noalias !94219, !noundef !57 ; 2 uses
  %i.qa = getelementptr i8, ptr %i.py, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.qa, align 8, !alias.scope !94218, !noalias !94219 ; 4 uses
  switch i64 %.val8.i.i.i.i.i.i.i.i, label %bb.go [
    i64 -9223372036854775808, label %bb.gp
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i.i.i"
  ]

bb.go:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.qb = shl nuw i64 %.val8.i.i.i.i.i.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %i.qb, i64 noundef range(i64 1, -9223372036854775807) 2) #77, !noalias !94220
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i.i.i"

bb.gp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #77, !noalias !94220
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.gp, %bb.go, %.lr.ph.i.i.i.i.i.i.i.i
  %i.qc = icmp eq i64 %i.pz, %.val1.i.i.i.i.i.i
  br i1 %i.qc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i.i.i.i.i.i.i", %bb.gn
  %i.qd = icmp eq i64 %.sroa.669.sroa.0.0537.i.i.i, 0
  br i1 %i.qd, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i", label %bb.gq

bb.gq:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i.i.i"
  %i.qe = shl nuw i64 %.sroa.669.sroa.0.0537.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.669.sroa.6.i.i.i.sroa.0.0, i64 noundef %i.qe, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !94219
  br label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i"

bb.gr:                                            ; preds = %bb.ex, %bb.ev, %bb.et
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E"(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #79, !noalias !94058
  br label %.body320.i.i.i

"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i": ; preds = %bb.gq, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i.i.i", %bb.gm, %.thread589.i.i.i, %bb.es, %bb.ei
  %.sroa.24.2 = phi i64 [ %.sroa.24.16.copyload, %.thread589.i.i.i ], [ %.sroa.698.sroa.7.0.copyload.i.i.i, %bb.gm ], [ %.sroa.698.sroa.7.0.copyload.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i.i.i" ], [ %.sroa.698.sroa.7.0.copyload.i.i.i, %bb.gq ], [ %.sroa.669.sroa.6.i.i.i.sroa.8.0.copyload68, %bb.es ], [ %.sroa.753.i.i.i.sroa.11.0.copyload, %bb.ei ]
  %.sroa.20.2 = phi ptr [ %.sroa.20.16.copyload, %.thread589.i.i.i ], [ %.sroa.698.sroa.6.0.copyload.i.i.i, %bb.gm ], [ %.sroa.698.sroa.6.0.copyload.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i.i.i" ], [ %.sroa.698.sroa.6.0.copyload.i.i.i, %bb.gq ], [ %.sroa.669.sroa.6.i.i.i.sroa.0.0.copyload67, %bb.es ], [ %.sroa.753.i.i.i.sroa.9.0.copyload, %bb.ei ]
  %.sroa.13.2 = phi i64 [ %i.od, %.thread589.i.i.i ], [ %.sroa.698.sroa.0.0.copyload.i.i.i, %bb.gm ], [ %.sroa.698.sroa.0.0.copyload.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i.i.i" ], [ %.sroa.698.sroa.0.0.copyload.i.i.i, %bb.gq ], [ %.sroa.669.sroa.0.0.copyload.i.i.i, %bb.es ], [ %i.nd, %bb.ei ]
  %.sroa.01.2 = phi i64 [ %i.oc, %.thread589.i.i.i ], [ %.sroa.096.0.copyload.i.i.i, %bb.gm ], [ %.sroa.096.0.copyload.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha7d00ef6d776646aE.exit.i.i.i.i.i.i" ], [ %.sroa.096.0.copyload.i.i.i, %bb.gq ], [ %.sroa.067.0.copyload.i.i.i, %bb.es ], [ %i.nc, %bb.ei ]
  invoke void @"_ZN4core3ptr56drop_in_place$LT$milli..fields_ids_map..FieldsIdsMap$GT$17hf2cb2acbe9a1065fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.au)
          to label %bb.gs unwind label %.loopexit.split-lp598.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !94058

bb.gs:                                            ; preds = %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i", %bb.ed
  %.sroa.24.3 = phi i64 [ %.sroa.022.i.i.i.sroa.8.0.copyload40, %bb.ed ], [ %.sroa.24.2, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i" ] ; 3 uses
  %.sroa.20.3 = phi ptr [ %.sroa.022.i.i.i.sroa.7.0.copyload36, %bb.ed ], [ %.sroa.20.2, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i" ] ; 3 uses
  %.sroa.13.3 = phi i64 [ %.sroa.022.i.i.i.sroa.0.0.copyload32, %bb.ed ], [ %.sroa.13.2, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i" ] ; 3 uses
  %.sroa.01.3 = phi i64 [ 127, %bb.ed ], [ %.sroa.01.2, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h612747656829f905E.exit.i.i.i" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !94051
  call void @llvm.experimental.noalias.scope.decl(metadata !94221)
  call void @llvm.experimental.noalias.scope.decl(metadata !94222)
  %i.qg = load ptr, ptr %i.fo, align 8, !alias.scope !94223, !noalias !94051, !noundef !57 ; 2 uses
  store ptr null, ptr %i.fo, align 8, !alias.scope !94223, !noalias !94051
  %.not.i.i357.i.i.i = icmp eq ptr %i.qg, null
  br i1 %.not.i.i357.i.i.i, label %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i358.i.i.i", label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @mdb_txn_abort(ptr noundef nonnull %i.qg) #77, !noalias !94224
  br label %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i358.i.i.i"

"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i358.i.i.i": ; preds = %bb.gt, %bb.gs
  call void @llvm.experimental.noalias.scope.decl(metadata !94225)
  call void @llvm.experimental.noalias.scope.decl(metadata !94226)
  %i.qh = load i64, ptr %i.aw, align 8, !range !71, !alias.scope !94227, !noalias !94051, !noundef !57
  %i.qi = icmp eq i64 %i.qh, 0
  br i1 %i.qi, label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i", label %bb.gu

bb.gu:                                            ; preds = %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i358.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !94228)
  call void @llvm.experimental.noalias.scope.decl(metadata !94229)
  %i.qj = load ptr, ptr %i.fp, align 8, !alias.scope !94230, !noalias !94051, !nonnull !57, !noundef !57
  %i.qk = atomicrmw sub ptr %i.qj, i64 1 release, align 8, !noalias !94231
  %i.ql = icmp eq i64 %i.qk, 1
  br i1 %i.ql, label %bb.gv, label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i"

bb.gv:                                            ; preds = %bb.gu
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdfb7a3544ec9f782E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fp)
          to label %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i" unwind label %.loopexit.split-lp593.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !94058

"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i": ; preds = %bb.dx, %bb.gv, %bb.gu, %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i358.i.i.i"
  %.sroa.24.4 = phi i64 [ %.sroa.24.3, %bb.gu ], [ %.sroa.24.3, %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i358.i.i.i" ], [ %.sroa.24.3, %bb.gv ], [ %.sroa.6.i.i.i.sroa.7.0.copyload, %bb.dx ] ; 2 uses
  %.sroa.20.4 = phi ptr [ %.sroa.20.3, %bb.gu ], [ %.sroa.20.3, %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i358.i.i.i" ], [ %.sroa.20.3, %bb.gv ], [ %.sroa.6.i.i.i.sroa.6.0.copyload, %bb.dx ] ; 2 uses
  %.sroa.13.4 = phi i64 [ %.sroa.13.3, %bb.gu ], [ %.sroa.13.3, %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i358.i.i.i" ], [ %.sroa.13.3, %bb.gv ], [ %.sroa.6.i.i.i.sroa.0.0.copyload, %bb.dx ] ; 2 uses
  %.sroa.01.4 = phi i64 [ %.sroa.01.3, %bb.gu ], [ %.sroa.01.3, %"_ZN67_$LT$heed..txn..RoTxn$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3d96153cc2b83dc7E.exit.i358.i.i.i" ], [ %.sroa.01.3, %bb.gv ], [ 127, %bb.dx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !94051
  call void @llvm.experimental.noalias.scope.decl(metadata !94232)
  call void @llvm.experimental.noalias.scope.decl(metadata !94233)
  call void @llvm.experimental.noalias.scope.decl(metadata !94234)
  call void @llvm.experimental.noalias.scope.decl(metadata !94235)
  %i.qm = load ptr, ptr %i.ay, align 8, !alias.scope !94236, !noalias !94051, !nonnull !57, !noundef !57
  %i.qn = atomicrmw sub ptr %i.qm, i64 1 release, align 8, !noalias !94237
  %i.qo = icmp eq i64 %i.qn, 1
  br i1 %i.qo, label %bb.gw, label %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit362.i.i.i"

bb.gw:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdfb7a3544ec9f782E"(ptr noalias noundef nonnull align 8 dereferenceable(496) %i.ay)
          to label %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit362.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !94058

"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit362.i.i.i": ; preds = %bb.gw, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i", %bb.du
  %.sroa.24.5 = phi i64 [ %.sroa.715.i.i.i.sroa.8.0.copyload, %bb.du ], [ %.sroa.24.4, %bb.gw ], [ %.sroa.24.4, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i" ]
  %.sroa.20.5 = phi ptr [ %.sroa.715.i.i.i.sroa.7.0.copyload, %bb.du ], [ %.sroa.20.4, %bb.gw ], [ %.sroa.20.4, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i" ]
  %.sroa.13.5 = phi i64 [ %i.mg, %bb.du ], [ %.sroa.13.4, %bb.gw ], [ %.sroa.13.4, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i" ]
  %.sroa.01.5 = phi i64 [ %i.mf, %bb.du ], [ %.sroa.01.4, %bb.gw ], [ %.sroa.01.4, %"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E.exit360.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !94051
  br label %.loopexit

.loopexit:                                        ; preds = %bb.as, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit362.i.i.i"
  %.sroa.24.6 = phi i64 [ %.sroa.24.5, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit362.i.i.i" ], [ undef, %bb.as ] ; 2 uses
  %.sroa.20.6 = phi ptr [ %.sroa.20.5, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit362.i.i.i" ], [ undef, %bb.as ] ; 2 uses
  %.sroa.13.6 = phi i64 [ %.sroa.13.5, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit362.i.i.i" ], [ undef, %bb.as ] ; 2 uses
  %.sroa.01.6 = phi i64 [ %.sroa.01.5, %"_ZN4core3ptr40drop_in_place$LT$milli..index..Index$GT$17he1632353358524b1E.exit362.i.i.i" ], [ 121, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !94051
  call void @llvm.experimental.noalias.scope.decl(metadata !94238)
  call void @llvm.experimental.noalias.scope.decl(metadata !94239)
  call void @llvm.experimental.noalias.scope.decl(metadata !94240)
  %i.qp = load ptr, ptr %i.bd, align 8, !alias.scope !94241, !noalias !94051, !nonnull !57, !noundef !57
  %i.qq = atomicrmw sub ptr %i.qp, i64 1 release, align 8, !noalias !94242
  %i.qr = icmp eq i64 %i.qq, 1
  br i1 %i.qr, label %bb.gx, label %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit364.i.i.i"

bb.gx:                                            ; preds = %.loopexit
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17ha8be12ceb15cd8deE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit364.i.i.i" unwind label %bb.ap, !noalias !94058

"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit364.i.i.i": ; preds = %bb.gx, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !94051
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$ureq..agent..Agent$GT$17h68f4e8994b3e6a97E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %"_ZN4core3ptr45drop_in_place$LT$http_client..ureq..Agent$GT$17ha8d0d43d20b08bf8E.exit366.i.i.i" unwind label %bb.ah, !noalias !94058

"_ZN4core3ptr45drop_in_place$LT$http_client..ureq..Agent$GT$17ha8d0d43d20b08bf8E.exit366.i.i.i": ; preds = %"_ZN4core3ptr68drop_in_place$LT$milli..must_stop_processing..MustStopProcessing$GT$17h78aea754c52841e2E.exit364.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !94051
  invoke void @"_ZN4core3ptr177drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$GT$$GT$17h54b3a00a736dcb19E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.gy unwind label %.split.i.i.i, !noalias !94058

bb.gy:                                            ; preds = %"_ZN4core3ptr45drop_in_place$LT$http_client..ureq..Agent$GT$17ha8d0d43d20b08bf8E.exit366.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !94051
  call void @llvm.experimental.noalias.scope.decl(metadata !94243)
  br label %.lr.ph.i.i.i369.i.i.i

.lr.ph.i.i.i369.i.i.i:                            ; preds = %"_ZN4core3ptr162drop_in_place$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17hc803a309732bd695E.exit.i.i.i373.i.i.i", %bb.gy
  %.sroa.0.011.i.i.i370.i.i.i = phi i64 [ %i.qt, %"_ZN4core3ptr162drop_in_place$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17hc803a309732bd695E.exit.i.i.i373.i.i.i" ], [ 0, %bb.gy ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.i.i, i64 %.sroa.0.011.i.i.i370.i.i.i ; 2 uses
  %i.qt = add nuw nsw i64 %.sroa.0.011.i.i.i370.i.i.i, 1 ; 2 uses
  %.val8.i.i.i371.i.i.i = load i64, ptr %i.qs, align 8, !range !56, !alias.scope !94244, !noalias !94245, !noundef !57 ; 2 uses
  %i.qu = icmp eq i64 %.val8.i.i.i371.i.i.i, 0
  br i1 %i.qu, label %"_ZN4core3ptr162drop_in_place$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17hc803a309732bd695E.exit.i.i.i373.i.i.i", label %bb.gz

bb.gz:                                            ; preds = %.lr.ph.i.i.i369.i.i.i
  %i.qv = getelementptr i8, ptr %i.qs, i64 8
  %.val9.i.i.i372.i.i.i = load ptr, ptr %i.qv, align 8, !alias.scope !94243, !noalias !94245, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i372.i.i.i, i64 noundef %.val8.i.i.i371.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !94246
  br label %"_ZN4core3ptr162drop_in_place$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17hc803a309732bd695E.exit.i.i.i373.i.i.i"

"_ZN4core3ptr162drop_in_place$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17hc803a309732bd695E.exit.i.i.i373.i.i.i": ; preds = %bb.gz, %.lr.ph.i.i.i369.i.i.i
  %i.qw = icmp eq i64 %i.qt, %.sroa.13.0.i.i
  br i1 %i.qw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8ca4d7632e9e8c6E.exit.i374.i.i.i", label %.lr.ph.i.i.i369.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8ca4d7632e9e8c6E.exit.i374.i.i.i": ; preds = %"_ZN4core3ptr162drop_in_place$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17hc803a309732bd695E.exit.i.i.i373.i.i.i"
  %i.qx = icmp eq i64 %.sroa.0.015.i.i, 0
  br i1 %i.qx, label %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit376.i.i.i", label %bb.ha

bb.ha:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8ca4d7632e9e8c6E.exit.i374.i.i.i"
  %i.qy = mul nuw i64 %.sroa.0.015.i.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i, i64 noundef %i.qy, i64 noundef range(i64 1, -9223372036854775807) 8) #77, !noalias !94245
  br label %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit376.i.i.i"

"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit376.i.i.i": ; preds = %bb.ha, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8ca4d7632e9e8c6E.exit.i374.i.i.i", %bb.g
  %.sroa.24.0 = phi i64 [ %.sroa.24.6, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8ca4d7632e9e8c6E.exit.i374.i.i.i" ], [ %.sroa.24.6, %bb.ha ], [ %.sroa.5424.0.copyload.i.i.i, %bb.g ] ; 2 uses
  %.sroa.20.0 = phi ptr [ %.sroa.20.6, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8ca4d7632e9e8c6E.exit.i374.i.i.i" ], [ %.sroa.20.6, %bb.ha ], [ %.sroa.4423.0.copyload.i.i.i, %bb.g ] ; 2 uses
  %.sroa.13.0 = phi i64 [ %.sroa.13.6, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8ca4d7632e9e8c6E.exit.i374.i.i.i" ], [ %.sroa.13.6, %bb.ha ], [ %.sroa.0422.0.copyload.i.i.i, %bb.g ] ; 2 uses
  %.sroa.01.0 = phi i64 [ %.sroa.01.6, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8ca4d7632e9e8c6E.exit.i374.i.i.i" ], [ %.sroa.01.6, %bb.ha ], [ %i.cb, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94247)
  call void @llvm.experimental.noalias.scope.decl(metadata !94248)
  call void @llvm.experimental.noalias.scope.decl(metadata !94249)
  %i.qz = load ptr, ptr %i.bk, align 8, !alias.scope !94250, !noalias !94051, !nonnull !57, !noundef !57
  %i.ra = atomicrmw sub ptr %i.qz, i64 1 release, align 8, !noalias !94251
  %i.rb = icmp eq i64 %i.ra, 1
  br i1 %i.rb, label %"_ZN4core3ptr46drop_in_place$LT$milli..progress..Progress$GT$17h7cad6e9634a33169E.exit310.sink.split.i.i.i", label %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h33aa3b7cd8f362bfE.exit"

bb.hb:                                            ; preds = %bb.ag
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$ureq..config..Config$GT$17h507d94178e10e861E"(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.bf)
          to label %.thread490.i.i.i unwind label %bb.gl, !noalias !94058

.thread490.i.i.i:                                 ; preds = %bb.hb, %bb.ah, %bb.ad
  %.pn292493.i.i.i = phi { ptr, i32 } [ %i.rc, %bb.hb ], [ %.pn290.i.i.i, %bb.ad ], [ %i.dq, %bb.ah ]
  invoke void @"_ZN4core3ptr177drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..DetailsExportIndexSettings$GT$$GT$17h54b3a00a736dcb19E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi) #79
          to label %bb.z unwind label %bb.gl, !noalias !94058

"_ZN4core3ptr46drop_in_place$LT$milli..progress..Progress$GT$17h7cad6e9634a33169E.exit.i.i.i": ; preds = %bb.d, %.body.i.i.i
  resume { ptr, i32 } %.pn296.i.i.i

"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h33aa3b7cd8f362bfE.exit": ; preds = %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit.i.i.i", %"_ZN4core3ptr46drop_in_place$LT$milli..progress..Progress$GT$17h7cad6e9634a33169E.exit310.sink.split.i.i.i", %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit376.i.i.i"
  %.sroa.24.7 = phi i64 [ %.sroa.24.1, %"_ZN4core3ptr46drop_in_place$LT$milli..progress..Progress$GT$17h7cad6e9634a33169E.exit310.sink.split.i.i.i" ], [ %.sroa.24.8.copyload, %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit.i.i.i" ], [ %.sroa.24.0, %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit376.i.i.i" ]
  %.sroa.20.7 = phi ptr [ %.sroa.20.1, %"_ZN4core3ptr46drop_in_place$LT$milli..progress..Progress$GT$17h7cad6e9634a33169E.exit310.sink.split.i.i.i" ], [ %.sroa.20.8.copyload, %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit.i.i.i" ], [ %.sroa.20.0, %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit376.i.i.i" ]
  %.sroa.13.7 = phi i64 [ %.sroa.13.1, %"_ZN4core3ptr46drop_in_place$LT$milli..progress..Progress$GT$17h7cad6e9634a33169E.exit310.sink.split.i.i.i" ], [ %.sroa.13.8.copyload, %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit.i.i.i" ], [ %.sroa.13.0, %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit376.i.i.i" ]
  %.sroa.01.7 = phi i64 [ %.sroa.01.1, %"_ZN4core3ptr46drop_in_place$LT$milli..progress..Progress$GT$17h7cad6e9634a33169E.exit310.sink.split.i.i.i" ], [ 152, %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit.i.i.i" ], [ %.sroa.01.0, %"_ZN4core3ptr185drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$meilisearch_types..index_uid_pattern..IndexUidPattern$C$alloc..string..String$C$$RF$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17hb1da73fb10f680b8E.exit376.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !94049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !94049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !94049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !94049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !94049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !94049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !94049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !94049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.26, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  store i64 %.sroa.01.7, ptr %0, align 8
  store i64 %.sroa.13.7, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %.sroa.20.7, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.24.7, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3std9panicking12catch_unwind7do_call17h81f5890ee33379e5E(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [320 x i8], align 8               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [320 x i8], align 8               ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [320 x i8], align 8               ; 9 uses
  %i.j = alloca [344 x i8], align 8               ; 9 uses
  %i.k = alloca [320 x i8], align 8               ; 6 uses
  %i.l = alloca [344 x i8], align 8               ; 10 uses
  %i.m = alloca [320 x i8], align 8               ; 6 uses
  %i.n = alloca [344 x i8], align 8               ; 10 uses
  %i.o = alloca [320 x i8], align 8               ; 9 uses
  %i.p = alloca [344 x i8], align 8               ; 8 uses
  %i.q = alloca [320 x i8], align 8               ; 7 uses
  %i.r = alloca [344 x i8], align 8               ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [344 x i8], align 8               ; 9 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.6182.i.i.i.sroa.11 = alloca [168 x i8], align 8 ; 7 uses
  %.sroa.8184.i.i.i = alloca [144 x i8], align 8  ; 5 uses
  %.sroa.7176.i.i.i.sroa.9 = alloca [168 x i8], align 8 ; 7 uses
  %i.ab = alloca [192 x i8], align 8              ; 12 uses
  %i.ac = alloca [344 x i8], align 8              ; 9 uses
  %i.ad = alloca [12 x i8], align 4               ; 4 uses
  %.sroa.8160.i.i.i.sroa.8 = alloca [312 x i8], align 1 ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.8142.i.i.i.sroa.8 = alloca [312 x i8], align 1 ; 5 uses
  %.sroa.10107.sroa.9.i.i.i = alloca [12 x i8], align 8 ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [12 x i8], align 4               ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 14 uses
  %i.aj = alloca [496 x i8], align 8              ; 12 uses
  %i.ak = alloca [496 x i8], align 8              ; 15 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 10 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %i.ar = alloca [344 x i8], align 8              ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 10 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.647.i.i.i.sroa.11 = alloca [168 x i8], align 8 ; 7 uses
  %.sroa.849.i.i.i = alloca [144 x i8], align 8   ; 5 uses
  %.sroa.741.i.i.i.sroa.9 = alloca [168 x i8], align 8 ; 7 uses
  %i.aw = alloca [192 x i8], align 16             ; 11 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.8.i.i.i.sroa.8 = alloca [312 x i8], align 1 ; 5 uses
  %i.ay = alloca [32 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 16              ; 12 uses
  %i.ba = alloca [496 x i8], align 8              ; 9 uses
  %.sroa.715.i.i.i.sroa.9 = alloca [312 x i8], align 8 ; 6 uses
  %i.bb = alloca [496 x i8], align 8              ; 17 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [32 x i8], align 8               ; 6 uses
  %i.bf = alloca [8 x i8], align 8                ; 8 uses
  %i.bg = alloca [112 x i8], align 8              ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 17 uses
  %i.bi = alloca [344 x i8], align 8              ; 9 uses
  %i.bj = alloca [8 x i8], align 8                ; 14 uses
  %i.bk = alloca [12 x i8], align 4               ; 6 uses
  %.sroa.67 = alloca [312 x i8], align 8          ; 16 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !nonnull !57, !noundef !57 ; 9 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !57, !noundef !57
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !57, !noundef !57
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !94526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2.0.copyload, i64 12, i1 false), !noalias !94526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !94526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !94526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !94526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !94526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !94526
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10107.sroa.9.i.i.i), !noalias !94526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !94526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !94526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !94526
  store ptr %.sroa.3.0.copyload, ptr %i.bj, align 8, !noalias !94528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !94528
  invoke void @_ZN15index_scheduler14IndexScheduler16user_index_names17h023a1b2fcebd1047E(ptr noalias noundef nonnull sret([344 x i8]) align 8 captures(address) dereferenceable(344) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %.sroa.0.0.copyload)
          to label %bb.d unwind label %bb.c, !noalias !94529

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h2802354c394a855dE.exit30.i.i": ; preds = %bb.h, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b4986a54636c755E.exit.i28.i.i", %bb.c
  %.pn510.i.i.i = phi { ptr, i32 } [ %i.bo, %bb.c ], [ %.pn508.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b4986a54636c755E.exit.i28.i.i" ], [ %.pn508.i.i.i, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !94530)
  call void @llvm.experimental.noalias.scope.decl(metadata !94531)
  call void @llvm.experimental.noalias.scope.decl(metadata !94532)
  %i.bl = load ptr, ptr %i.bj, align 8, !alias.scope !94533, !noalias !94528, !nonnull !57, !noundef !57
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !94534
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.b, label %"_ZN4core3ptr46drop_in_place$LT$milli..progress..Progress$GT$17h7cad6e9634a33169E.exit.i.i.i"

bb.b:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h2802354c394a855dE.exit30.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6aac73d09a16c5bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %"_ZN4core3ptr46drop_in_place$LT$milli..progress..Progress$GT$17h7cad6e9634a33169E.exit.i.i.i" unwind label %bb.cf, !noalias !94529

bb.c:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h2802354c394a855dE.exit30.i.i"

bb.d:                                             ; preds = %bb.a
  %i.bp = load i64, ptr %i.bi, align 8, !range !80, !noalias !94528, !noundef !57 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bp, 152
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.7.i.sroa.0.0.copyload34.i.i = load i64, ptr %i.bq, align 8, !noalias !94528 ; 9 uses
  %.sroa.7.i.sroa.7.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.7.i.sroa.7.0.copyload37.i.i = load ptr, ptr %.sroa.7.i.sroa.7.0..sroa_idx36.i.i, align 8, !noalias !94528 ; 11 uses
end_hunk_1
