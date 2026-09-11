Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error12invalid_utf8Cs9fPPV5zPXBl_5typst:bb.a
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store <4 x i8> <i8 0, i8 2, i8 2, i8 11>, ptr %i.g, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !28768
  %i.h = tail call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !28768 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.f, !prof !29

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 224) #61
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsj1PC5XHMKi0_12clap_builder5error10ErrorInnerECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.a) #62
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.e:                                             ; preds = %bb.h, %bb.f
  %.sroa.03.0 = phi i1 [ false, %bb.h ], [ true, %bb.f ]
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %.sroa.03.0.lpad-body = phi i1 [ %.sroa.03.0, %bb.e ], [ true, %bb.c ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.j, %bb.c ]
  %i.m = load i64, ptr %1, align 8, !range !55, !noundef !28 ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  %or.cond59.not = and i1 %.sroa.03.0.lpad-body, %i.n
  br i1 %or.cond59.not, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrECs9fPPV5zPXBl_5typst.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.h, ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error8with_cmdCs9fPPV5zPXBl_5typst(ptr noalias noundef nonnull align 8 %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %0)
          to label %bb.g unwind label %bb.e       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %1, align 8, !range !55, !noundef !28
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 4, ptr %i.b, align 8
  %i.r = invoke noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.h, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.j unwind label %bb.e

bb.i:                                             ; preds = %bb.j, %bb.g
  %.sroa.0.0 = phi ptr [ %i.r, %bb.j ], [ %i.h, %bb.g ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.k, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.k:                                             ; preds = %.body
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val58 = load ptr, ptr %i.s, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !28769
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_str9StyledStrECs9fPPV5zPXBl_5typst.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [224 x i8], align 8               ; 41 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.410 = alloca [31 x i8], align 1          ; 2 uses
  %.sroa.46 = alloca [31 x i8], align 1           ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  %i.k = alloca [120 x i8], align 8               ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !28
  %.idx = mul nuw nsw i64 %3, 24                  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !28867
  store i64 0, ptr %i.e, align 8, !noalias !28867
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !noalias !28867
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  store i64 0, ptr %i.s, align 8, !noalias !28867
  %i.t = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.t, label %._crit_edge.i.thread, label %.lr.ph.i

._crit_edge.i.thread:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28867
  %.sroa.46.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre69.i = load ptr, ptr %i.r, align 8, !noalias !28867 ; 10 uses
  %.pre70.i = load i64, ptr %i.e, align 8, !range !37, !noalias !28867 ; 4 uses
  %.pre71.i = load i64, ptr %i.s, align 8, !noalias !28867 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28867
  %i.u = icmp ult i64 %.pre71.i, 288230376151711744
  call void @llvm.assume(i1 %i.u)
  %.idx.i = shl nuw nsw i64 %.pre71.i, 5          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre69.i, i64 %.idx.i ; 6 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28868)
  call void @llvm.experimental.noalias.scope.decl(metadata !28869)
  %i.w = shl i64 %.pre70.i, 5                     ; 4 uses
  %i.x = udiv i64 %i.w, 24                        ; 3 uses
  %.not11.i.i.i.i.i.i = icmp eq i64 %.pre71.i, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %i.y = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.z = lshr exact i64 %i.y, 5
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.012.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !28870
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !28785

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.012.i.i.i.i.i.i.unr = phi ptr [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = icmp ult i64 %i.y, 224
  br i1 %i.af, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.012.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ag = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !28870
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !28870
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !28870
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !28870
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !28870
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !28870
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !28870
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 256 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !noalias !28870
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.av, %i.v
  br i1 %.not.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i.thread, %._crit_edge.i
  %i.ay = phi i64 [ %i.x, %._crit_edge.i ], [ 0, %._crit_edge.i.thread ], [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.az = phi i64 [ %i.w, %._crit_edge.i ], [ 0, %._crit_edge.i.thread ], [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.0..sroa_idx.i116 = phi ptr [ %.sroa.6.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.6.0..sroa_idx.i112, %._crit_edge.i.thread ], [ %.sroa.6.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.5.0..sroa_idx.i115 = phi ptr [ %.sroa.5.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.5.0..sroa_idx.i111, %._crit_edge.i.thread ], [ %.sroa.5.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.5.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.46.0..sroa_idx.i114 = phi ptr [ %.sroa.46.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.46.0..sroa_idx.i110, %._crit_edge.i.thread ], [ %.sroa.46.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.46.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.ba = phi ptr [ %i.v, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bb = phi ptr [ %.pre69.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %.pre69.i, %.lr.ph.i.i.i.i.i.i ], [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bc = phi i64 [ %.pre70.i, %._crit_edge.i ], [ 0, %._crit_edge.i.thread ], [ %.pre70.i, %.lr.ph.i.i.i.i.i.i ], [ %.pre70.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.val.i.i.i.i = phi ptr [ %.pre69.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi ptr [ %.pre69.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ax, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bd = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub nuw i64 %i.bd, %i.be                ; 2 uses
  %i.bg = udiv exact i64 %i.bf, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28871
  store ptr %i.bb, ptr %i.c, align 8, !noalias !28871
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !28871
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bc, ptr %i.bi, align 8, !noalias !28871
  call void @llvm.experimental.noalias.scope.decl(metadata !28872)
  %i.bj = ptrtoint ptr %i.ba to i64
  %i.bk = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bl = sub nuw i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 5
  store i64 0, ptr %.sroa.5.0..sroa_idx.i115, align 8, !alias.scope !28873, !noalias !28874
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !alias.scope !28873, !noalias !28874
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx.i114, align 8, !alias.scope !28873, !noalias !28874
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i116, align 8, !alias.scope !28873, !noalias !28874
  call void @llvm.experimental.noalias.scope.decl(metadata !28875)
  %i.bn = icmp eq ptr %i.ba, %.val.i.i.i.i
  br i1 %i.bn, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.bp = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  %.val8.i.i.i.i.i = load i64, ptr %i.bq, align 8, !range !37, !alias.scope !28876, !noalias !28877, !noundef !28 ; 2 uses
  %i.br = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr i8, ptr %i.bo, i64 16
  %.val9.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !28875, !noalias !28877, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !28878
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.bt = icmp eq i64 %i.bp, %i.bm
  br i1 %i.bt, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTdNtNtBI_6string6StringEB1N_EECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #62, !noalias !28879
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsj1PC5XHMKi0_12clap_builder6parser8features11suggestions12did_you_meanRB1Z_INtNtNtB4_5slice4iter4IterB1Z_EEs0_0EECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #62, !noalias !28880
  br label %.thread

.loopexit.i.i.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  %i.bv = mul nuw i64 %i.ay, 24                   ; 5 uses
  %i.bw = icmp ne i64 %i.az, %i.bv
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.bw, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.d, label %bb.w

bb.d:                                             ; preds = %.loopexit.i.i.i
  %i.bx = icmp ule i64 %i.bv, %i.az
  call void @llvm.assume(i1 %i.bx)
  %i.by = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.bb, i64 noundef %i.az, i64 noundef 8, i64 noundef %i.bv) #56, !noalias !28879 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.e, label %bb.w, !prof !29

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bv) #61
          to label %bb.f unwind label %bb.c, !noalias !28879

bb.f:                                             ; preds = %bb.e
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.i:                             ; preds = %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.h
  %.sroa.0.063.i = phi ptr [ %i.ca, %bb.h ], [ %2, %bb.a ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.063.i, i64 24 ; 2 uses
  %i.cb = getelementptr i8, ptr %.sroa.0.063.i, i64 8
  %.val.i.i = load ptr, ptr %i.cb, align 8, !noalias !28867, !nonnull !28, !noundef !28 ; 2 uses
  %i.cc = getelementptr i8, ptr %.sroa.0.063.i, i64 16
  %.val1.i.i = load i64, ptr %i.cc, align 8, !noalias !28867, !noundef !28 ; 9 uses
  %i.cd = invoke noundef double @_RNvCsdXfZfFJqRyQ_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.g unwind label %.loopexit.i, !noalias !28881 ; 4 uses

bb.g:                                             ; preds = %.lr.ph.i
  %i.ce = fcmp ogt double %i.cd, f0x3FE6666666666666
  br i1 %i.ce, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.s, %bb.g
  %i.cf = icmp eq ptr %i.ca, %i.q
  br i1 %i.cf, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp slt i64 %.val1.i.i, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !61

bb.j:                                             ; preds = %bb.i
  %i.cg = icmp eq i64 %.val1.i.i, 0               ; 2 uses
  br i1 %i.cg, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.j
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !28882
  %i.ch = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.val1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !28882 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, %bb.i
  %.sroa.438.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.438.0.ph.i, i64 %.val1.i.i) #61
          to label %bb.t unwind label %.loopexit.split-lp.i, !noalias !28881

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i: ; preds = %bb.l, %bb.j
  %i.cj = phi ptr [ %i.ch, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.j ] ; 2 uses
  %i.ck = load ptr, ptr %i.r, align 8, !noalias !28867, !nonnull !28, !noundef !28 ; 3 uses
  %i.cl = load i64, ptr %i.s, align 8, !noalias !28867, !noundef !28 ; 10 uses
  switch i64 %i.cl, label %.lr.ph.i.i [
    i64 0, label %bb.m
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ %i.cl, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.cr, %.lr.ph.i.i ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i ] ; 2 uses
  %i.cm = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.cn = add nuw nsw i64 %i.cm, %.sroa.05.016.i.i ; 3 uses
  %i.co = icmp ult i64 %i.cn, %i.cl
  call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cn
  %.val12.i.i = load double, ptr %i.cp, align 8, !alias.scope !28883, !noalias !28884, !noundef !28
  %i.cq = fcmp ogt double %.val12.i.i, %i.cd
  %i.cr = select i1 %i.cq, i64 %.sroa.05.016.i.i, i64 %i.cn, !unpredictable !28 ; 2 uses
  %i.cs = sub nuw nsw i64 %.sroa.01.017.i.i, %i.cm ; 2 uses
  %i.ct = icmp ugt i64 %i.cs, 1
  br i1 %i.ct, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i ], [ %i.cr, %.lr.ph.i.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.cu, align 8, !alias.scope !28883, !noalias !28884, !noundef !28
  %i.cv = fcmp ule double %.val14.i.i, %i.cd
  %i.cw = zext i1 %i.cv to i64
  %i.cx = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.cw ; 2 uses
  %i.cy = icmp ule i64 %i.cx, %i.cl
  call void @llvm.assume(i1 %i.cy)
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull align 1 %.val.i.i, i64 %.val1.i.i, i1 false), !noalias !28881
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i

bb.m:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i
  %.sroa.4.0.i.i = phi i64 [ %i.cl, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9fPPV5zPXBl_5typst.exit.thread53.i ], [ %i.cx, %._crit_edge.i.i ] ; 3 uses
  %i.cz = icmp ult i64 %i.cl, 288230376151711744
  call void @llvm.assume(i1 %i.cz)
  %i.da = load i64, ptr %i.e, align 8, !range !37, !alias.scope !28885, !noalias !28886, !noundef !28
  %i.db = icmp eq i64 %i.cl, %i.da
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCsj1PC5XHMKi0_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %._crit_edge68.i unwind label %bb.p, !noalias !28887

._crit_edge68.i:                                  ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.r, align 8, !alias.scope !28885, !noalias !28886
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge68.i, %bb.m
  %i.dc = phi ptr [ %.pre.i, %._crit_edge68.i ], [ %i.ck, %bb.m ]
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %.sroa.4.0.i.i ; 6 uses
  %i.de = icmp samesign ult i64 %.sroa.4.0.i.i, %i.cl
  br i1 %i.de, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cg, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef %.val1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !28888
  br label %.thread.i

bb.r:                                             ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dh = sub nuw nsw i64 %i.cl, %.sroa.4.0.i.i
  %i.di = shl nuw nsw i64 %i.dh, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.dd, i64 %i.di, i1 false), !noalias !28887
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  store double %i.cd, ptr %i.dd, align 8, !noalias !28881
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %.val1.i.i, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !28881
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.cj, ptr %.sroa.635.0..sroa_idx.i, align 8, !noalias !28881
  %.sroa.836.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 %.val1.i.i, ptr %.sroa.836.0..sroa_idx.i, align 8, !noalias !28881
  %i.dj = add nuw nsw i64 %i.cl, 1
  store i64 %i.dj, ptr %i.s, align 8, !alias.scope !28885, !noalias !28886
  br label %bb.h

bb.t:                                             ; preds = %bb.k
  unreachable

.thread.i:                                        ; preds = %bb.q, %bb.p, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.df, %bb.p ], [ %i.df, %bb.q ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28889)
  %.val4.i = load ptr, ptr %i.r, align 8, !alias.scope !28889, !noalias !28881, !nonnull !28, !noundef !28 ; 2 uses
  %.val5.i = load i64, ptr %i.s, align 8, !alias.scope !28889, !noalias !28881, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28890), !noalias !28881
  %i.dk = icmp eq i64 %.val5.i, 0
  br i1 %i.dk, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i, label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.thread.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.dm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ 0, %.thread.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.dm = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dl, i64 8
  %.val8.i.i.i = load i64, ptr %i.dn, align 8, !range !37, !alias.scope !28891, !noalias !28892, !noundef !28 ; 2 uses
  %i.do = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.do, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i87
  %i.dp = getelementptr i8, ptr %i.dl, i64 16
  %.val9.i.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !28890, !noalias !28892, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !28893
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.u, %.lr.ph.i.i.i87
  %i.dq = icmp eq i64 %i.dm, %.val5.i
  br i1 %i.dq, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i, label %.lr.ph.i.i.i87

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTdNtNtCs1xwejQucwHj_5alloc6string6StringEECs9fPPV5zPXBl_5typst.exit.i.i.i, %.thread.i
  %.val.i88 = load i64, ptr %i.e, align 8, !range !37, !alias.scope !28889, !noalias !28881, !noundef !28 ; 2 uses
  %i.dr = icmp eq i64 %.val.i88, 0
  br i1 %i.dr, label %.thread, label %bb.v

bb.v:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i
  %i.ds = shl nuw i64 %.val.i88, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !28892
  br label %.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.aq, %bb.z
  br i1 %.sroa.013.1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit86, label %.thread

bb.w:                                             ; preds = %bb.d, %.loopexit.i.i.i
  %.sroa.03.0.i.i.i = phi ptr [ %i.bb, %.loopexit.i.i.i ], [ %i.by, %bb.d ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !28867
  %i.dt = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i, %i.bb
  br i1 %i.dt, label %.thread123, label %bb.x

.thread123:                                       ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i.i.i) ]
  br label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i

bb.x:                                             ; preds = %bb.w
  %i.du = add nsw i64 %i.bg, -1                   ; 4 uses
  %i.dv = icmp samesign ult i64 %i.du, %i.ay
  call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp ult i64 %i.bf, -9223372036854775768
  call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.03.0.i.i.i, i64 %i.du ; 3 uses
  %.sroa.0105.0.copyload = load i64, ptr %i.dx, align 8 ; 2 uses
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.4106.0.copyload = load ptr, ptr %.sroa.4106.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %.sroa.5107.0.copyload = load i64, ptr %.sroa.5107.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !28894)
  %i.dy = icmp eq i64 %i.du, 0
  br i1 %i.dy, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.ea, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i ], [ 0, %bb.x ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.03.0.i.i.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.ea = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28895)
  call void @llvm.experimental.noalias.scope.decl(metadata !28896)
  %.val.i.i.i.i.i = load i64, ptr %i.dz, align 8, !range !37, !alias.scope !28897, !noalias !28898, !noundef !28 ; 2 uses
  %i.eb = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.eb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !alias.scope !28897, !noalias !28898, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !28899
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.y, %.lr.ph.i.i.i
  %i.ed = icmp eq i64 %i.ea, %i.du
  br i1 %i.ed, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i, %.thread123
  %.sroa.0.0108130 = phi i64 [ -1, %.thread123 ], [ %.sroa.0105.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i ] ; 2 uses
  %.sroa.8.0129 = phi ptr [ undef, %.thread123 ], [ %.sroa.4106.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i ] ; 2 uses
  %.sroa.9.0128 = phi i64 [ undef, %.thread123 ], [ %.sroa.5107.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit.i.i.i ] ; 2 uses
  %i.ee = icmp eq i64 %i.ay, 0
  br i1 %i.ee, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst.exit, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.thread

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.thread: ; preds = %bb.x, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i
  %.sroa.9.0128177 = phi i64 [ %.sroa.9.0128, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i ], [ %.sroa.5107.0.copyload, %bb.x ]
  %.sroa.8.0129173 = phi ptr [ %.sroa.8.0129, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i ], [ %.sroa.4106.0.copyload, %bb.x ]
  %.sroa.0.0108130171 = phi i64 [ %.sroa.0.0108130, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i ], [ %.sroa.0105.0.copyload, %bb.x ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.03.0.i.i.i, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !28898
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst.exit

bb.z:                                             ; preds = %bb.aj, %bb.ap, %.body
  %.sroa.013.1 = phi i1 [ %i.ej, %.body ], [ true, %bb.ap ], [ true, %bb.aj ]
  %.sroa.012.0 = phi i1 [ %i.ei, %.body ], [ true, %bb.ap ], [ true, %bb.aj ]
  %.pn70 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body78, %bb.ap ], [ %i.fm, %bb.aj ] ; 2 uses
  %i.ef = add i64 %.sroa.0.0108130172, -1
  %i.eg = icmp ult i64 %i.ef, -2
  %or.cond135.not = select i1 %i.eg, i1 %.sroa.012.0, i1 false
  br i1 %or.cond135.not, label %bb.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit

bb.aa:                                            ; preds = %bb.al, %bb.ae
  %.sroa.012.1 = phi i8 [ 0, %bb.al ], [ 1, %bb.ae ]
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.012.1.lpad-body = phi i8 [ %.sroa.012.1, %bb.aa ], [ 1, %bb.ac ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.eh, %bb.aa ], [ %i.er, %bb.ac ]
  %i.ei = trunc nuw i8 %.sroa.012.1.lpad-body to i1
  %i.ej = icmp eq i8 %.sroa.012.1.lpad-body, 0
  br label %bb.z

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.thread, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i
  %.sroa.9.0128178 = phi i64 [ %.sroa.9.0128177, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.thread ], [ %.sroa.9.0128, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i ]
  %.sroa.8.0129174 = phi ptr [ %.sroa.8.0129173, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.thread ], [ %.sroa.8.0129, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i ] ; 3 uses
  %.sroa.0.0108130172 = phi i64 [ %.sroa.0.0108130171, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i.thread ], [ %.sroa.0.0108130, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %i.ek, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %i.f, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr null, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 -2, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i8 -1, ptr %i.en, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  store i8 -1, ptr %.sroa.040.sroa.5.0..sroa_idx, align 4
  %.sroa.040.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i8 -1, ptr %.sroa.040.sroa.7.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  store i16 0, ptr %.sroa.441.0..sroa_idx, align 4
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 134
  store i8 -1, ptr %.sroa.542.0..sroa_idx, align 2
  %.sroa.542.sroa.5.0..sroa.542.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 138
  store i8 -1, ptr %.sroa.542.sroa.5.0..sroa.542.0..sroa_idx.sroa_idx, align 2
  %.sroa.542.sroa.7.0..sroa.542.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 142
  store i8 -1, ptr %.sroa.542.sroa.7.0..sroa.542.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.f, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx43, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  store i8 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i8 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  store i8 -1, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 162
  store i8 -1, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 166
  store i8 -1, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 170
  store i8 -1, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  store i8 -1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 180
  store i8 -1, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store i8 -1, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.1244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  store i16 0, ptr %.sroa.1244.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 190
  store i8 -1, ptr %.sroa.13.0..sroa_idx, align 2
  %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 194
  store i8 -1, ptr %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx, align 2
  %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 198
  store i8 -1, ptr %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 202
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  store i8 -1, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i8 -1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 212
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 218
  store <4 x i8> <i8 0, i8 2, i8 2, i8 0>, ptr %i.eo, align 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !28900
  %i.ep = call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !28900 ; 5 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ab, label %bb.ae, !prof !29

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 224) #61
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsj1PC5XHMKi0_12clap_builder5error10ErrorInnerECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.f) #62
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs9fPPV5zPXBl_5typst.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ep, ptr noundef nonnull align 8 dereferenceable(224) %i.f, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.et = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsj1PC5XHMKi0_12clap_builder5errorNtB2_5Error8with_cmdCs9fPPV5zPXBl_5typst(ptr noalias noundef nonnull align 8 %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %0)
          to label %bb.af unwind label %bb.aa     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.ep, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 1, ptr %i.j, align 8
end_hunk_0
