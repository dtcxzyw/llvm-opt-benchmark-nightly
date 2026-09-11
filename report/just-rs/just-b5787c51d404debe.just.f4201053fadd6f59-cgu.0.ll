Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 598
loop-unroll.NumUnrolled: 723
begin_hunk_0_@_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error12invalid_utf8CskXtk6F4WjxZ_4just:bb.a
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 11>, ptr %i.g, align 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34053
  %i.h = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !34053 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.f, !prof !26

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #71
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.a) #72
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.e:                                             ; preds = %bb.h, %bb.f
  %.sroa.03.0 = phi i1 [ false, %bb.h ], [ true, %bb.f ]
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %.sroa.03.0.lpad-body = phi i1 [ %.sroa.03.0, %bb.e ], [ true, %bb.c ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.j, %bb.c ]
  %i.m = load i64, ptr %1, align 8, !range !37, !noundef !28 ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  %or.cond66.not = and i1 %.sroa.03.0.lpad-body, %i.n
  br i1 %or.cond66.not, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrECskXtk6F4WjxZ_4just.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.h, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error8with_cmdCskXtk6F4WjxZ_4just(ptr noalias noundef nonnull align 8 %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(760) %0)
          to label %bb.g unwind label %bb.e       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %1, align 8, !range !37, !noundef !28
  %.not = icmp eq i64 %i.p, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 4, ptr %i.b, align 8
  %i.r = invoke noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8 %i.h, i8 noundef 15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.j unwind label %bb.e

bb.i:                                             ; preds = %bb.j, %bb.g
  %.sroa.0.0 = phi ptr [ %i.r, %bb.j ], [ %i.h, %bb.g ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrECskXtk6F4WjxZ_4just.exit: ; preds = %bb.k, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.k:                                             ; preds = %.body
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val65 = load ptr, ptr %i.s, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val65, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34054
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrECskXtk6F4WjxZ_4just.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error13invalid_valueCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(760) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [256 x i8], align 8               ; 46 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.410 = alloca [31 x i8], align 1          ; 2 uses
  %.sroa.46 = alloca [31 x i8], align 1           ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  %i.k = alloca [120 x i8], align 8               ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !28
  %.idx = mul nuw nsw i64 %3, 24                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34152
  store i64 0, ptr %i.e, align 8, !noalias !34152
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !34152
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  store i64 0, ptr %i.r, align 8, !noalias !34152
  %i.s = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.s, label %._crit_edge.i.thread, label %.lr.ph.i

._crit_edge.i.thread:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34152
  %.sroa.46.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre69.i = load ptr, ptr %i.q, align 8, !noalias !34152 ; 10 uses
  %.pre70.i = load i64, ptr %i.e, align 8, !range !43, !noalias !34152 ; 4 uses
  %.pre71.i = load i64, ptr %i.r, align 8, !noalias !34152 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34152
  %i.t = icmp ult i64 %.pre71.i, 288230376151711744
  call void @llvm.assume(i1 %i.t)
  %.idx.i = shl nuw nsw i64 %.pre71.i, 5          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pre69.i, i64 %.idx.i ; 6 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34153)
  call void @llvm.experimental.noalias.scope.decl(metadata !34154)
  %i.v = shl i64 %.pre70.i, 5                     ; 4 uses
  %i.w = udiv i64 %i.v, 24                        ; 3 uses
  %.not11.i.i.i.i.i.i = icmp eq i64 %.pre71.i, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %i.x = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.y = lshr exact i64 %i.x, 5
  %i.z = add nuw nsw i64 %i.y, 1
  %xtraiter = and i64 %i.z, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.012.i.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.aa = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !34155
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !34070

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.012.i.i.i.i.i.i.unr = phi ptr [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %i.x, 224
  br i1 %i.ae, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.012.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.af = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !34155
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !34155
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !34155
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !34155
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !34155
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !34155
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 144
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !34155
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 168
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 256 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !34155
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.au, %i.u
  br i1 %.not.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i.thread, %._crit_edge.i
  %i.ax = phi i64 [ %i.w, %._crit_edge.i ], [ 0, %._crit_edge.i.thread ], [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.ay = phi i64 [ %i.v, %._crit_edge.i ], [ 0, %._crit_edge.i.thread ], [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.6.0..sroa_idx.i124 = phi ptr [ %.sroa.6.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.6.0..sroa_idx.i120, %._crit_edge.i.thread ], [ %.sroa.6.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.5.0..sroa_idx.i123 = phi ptr [ %.sroa.5.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.5.0..sroa_idx.i119, %._crit_edge.i.thread ], [ %.sroa.5.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.5.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.46.0..sroa_idx.i122 = phi ptr [ %.sroa.46.0..sroa_idx.i, %._crit_edge.i ], [ %.sroa.46.0..sroa_idx.i118, %._crit_edge.i.thread ], [ %.sroa.46.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.46.0..sroa_idx.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.az = phi ptr [ %i.u, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ba = phi ptr [ %.pre69.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %.pre69.i, %.lr.ph.i.i.i.i.i.i ], [ %.pre69.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bb = phi i64 [ %.pre70.i, %._crit_edge.i ], [ 0, %._crit_edge.i.thread ], [ %.pre70.i, %.lr.ph.i.i.i.i.i.i ], [ %.pre70.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.val.i.i.i.i = phi ptr [ %.pre69.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi ptr [ %.pre69.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %._crit_edge.i.thread ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bc = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub nuw i64 %i.bc, %i.bd                ; 2 uses
  %i.bf = udiv exact i64 %i.be, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34156
  store ptr %i.ba, ptr %i.c, align 8, !noalias !34156
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !noalias !34156
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bb, ptr %i.bh, align 8, !noalias !34156
  call void @llvm.experimental.noalias.scope.decl(metadata !34157)
  %i.bi = ptrtoint ptr %i.az to i64
  %i.bj = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %i.bl = lshr exact i64 %i.bk, 5
  store i64 0, ptr %.sroa.5.0..sroa_idx.i123, align 8, !alias.scope !34158, !noalias !34159
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !alias.scope !34158, !noalias !34159
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx.i122, align 8, !alias.scope !34158, !noalias !34159
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i124, align 8, !alias.scope !34158, !noalias !34159
  call void @llvm.experimental.noalias.scope.decl(metadata !34160)
  %i.bm = icmp eq ptr %i.az, %.val.i.i.i.i
  br i1 %i.bm, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.bo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.bo = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  %.val8.i.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !34161, !noalias !34162 ; 2 uses
  %i.bq = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.bq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.br = getelementptr i8, ptr %i.bn, i64 16
  %.val9.i.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !34160, !noalias !34162, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34163
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.bs = icmp eq i64 %i.bo, %i.bl
  br i1 %i.bs, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTdNtNtBI_6string6StringEB1N_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #72, !noalias !34164
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCs2FJGJNE9lTN_12clap_builder6parser8features11suggestions12did_you_meanRB1Z_INtNtNtB4_5slice4iter4IterB1Z_EEs0_0EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #72, !noalias !34165
  br label %.thread

.loopexit.i.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  %i.bu = mul nuw i64 %i.ax, 24                   ; 5 uses
  %i.bv = icmp ne i64 %i.ay, %i.bu
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.bv, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %5, label %bb.x

5:                                                ; preds = %.loopexit.i.i.i
  %6 = icmp eq i64 %i.ay, 0
  br i1 %6, label %bb.x, label %bb.d

bb.d:                                             ; preds = %5
  %i.bw = icmp ule i64 %i.bu, %i.ay
  call void @llvm.assume(i1 %i.bw)
  %i.bx = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %i.ba, i64 noundef %i.ay, i64 noundef 8, i64 noundef range(i64 0, -15) %i.bu) #70, !noalias !34164 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.e, label %bb.x, !prof !26

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bu) #71
          to label %bb.f unwind label %bb.c, !noalias !34164

bb.f:                                             ; preds = %bb.e
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.i:                             ; preds = %bb.l
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.h
  %.sroa.0.063.i = phi ptr [ %i.bz, %bb.h ], [ %2, %bb.a ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.063.i, i64 24 ; 2 uses
  %i.ca = getelementptr i8, ptr %.sroa.0.063.i, i64 8
  %.val.i.i = load ptr, ptr %i.ca, align 8, !noalias !34152, !nonnull !28, !noundef !28 ; 2 uses
  %i.cb = getelementptr i8, ptr %.sroa.0.063.i, i64 16
  %.val1.i.i = load i64, ptr %i.cb, align 8, !noalias !34152, !noundef !28 ; 9 uses
  %i.cc = invoke noundef double @_RNvCsjbiQO9vOOWI_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.g unwind label %.loopexit.i, !noalias !34166 ; 4 uses

bb.g:                                             ; preds = %.lr.ph.i
  %i.cd = fcmp ogt double %i.cc, f0x3FE6666666666666
  br i1 %i.cd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.t, %bb.g
  %i.ce = icmp eq ptr %i.bz, %i.p
  br i1 %i.ce, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp slt i64 %.val1.i.i, 0
  br i1 %.not.i.i, label %bb.l, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.cf = icmp eq i64 %.val1.i.i, 0               ; 2 uses
  br i1 %i.cf, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34167
  %i.cg = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.val1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34167 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.438.0.ph.i = phi i64 [ 1, %bb.k ], [ 0, %bb.i ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.438.0.ph.i, i64 %.val1.i.i) #71
          to label %bb.u unwind label %.loopexit.split-lp.i, !noalias !34166

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i: ; preds = %bb.m, %bb.j
  %i.ci = phi ptr [ %i.cg, %bb.m ], [ inttoptr (i64 1 to ptr), %bb.j ] ; 2 uses
  %i.cj = load ptr, ptr %i.q, align 8, !noalias !34152, !nonnull !28, !noundef !28 ; 3 uses
  %i.ck = load i64, ptr %i.r, align 8, !noalias !34152, !noundef !28 ; 10 uses
  switch i64 %i.ck, label %.lr.ph.i.i [
    i64 0, label %bb.n
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.cr, %.lr.ph.i.i ], [ %i.ck, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.cq, %.lr.ph.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i ] ; 2 uses
  %i.cl = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, %.sroa.05.016.i.i ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.ck
  call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cm
  %.val12.i.i = load double, ptr %i.co, align 8, !alias.scope !34168, !noalias !34169, !noundef !28
  %i.cp = fcmp ogt double %.val12.i.i, %i.cc
  %i.cq = select i1 %i.cp, i64 %.sroa.05.016.i.i, i64 %i.cm, !unpredictable !28 ; 2 uses
  %i.cr = sub nuw nsw i64 %.sroa.01.017.i.i, %i.cl ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 1
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i ], [ %i.cq, %.lr.ph.i.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load double, ptr %i.ct, align 8, !alias.scope !34168, !noalias !34169, !noundef !28
  %i.cu = fcmp ule double %.val14.i.i, %i.cc
  %i.cv = zext i1 %i.cu to i64
  %i.cw = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.cv ; 2 uses
  %i.cx = icmp ule i64 %i.cw, %i.ck
  call void @llvm.assume(i1 %i.cx)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %.val.i.i, i64 %.val1.i.i, i1 false), !noalias !34166
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i

bb.n:                                             ; preds = %._crit_edge.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i
  %.sroa.4.0.i.i = phi i64 [ %i.ck, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread53.i ], [ %i.cw, %._crit_edge.i.i ] ; 3 uses
  %i.cy = icmp ult i64 %i.ck, 288230376151711744
  call void @llvm.assume(i1 %i.cy)
  %i.cz = load i64, ptr %i.e, align 8, !range !43, !alias.scope !34170, !noalias !34171, !noundef !28
  %i.da = icmp eq i64 %i.ck, %i.cz
  br i1 %i.da, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %._crit_edge68.i unwind label %bb.q, !noalias !34172

._crit_edge68.i:                                  ; preds = %bb.o
  %.pre.i = load ptr, ptr %i.q, align 8, !alias.scope !34170, !noalias !34171
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge68.i, %bb.n
  %i.db = phi ptr [ %.pre.i, %._crit_edge68.i ], [ %i.cj, %bb.n ]
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.4.0.i.i ; 6 uses
  %i.dd = icmp samesign ult i64 %.sroa.4.0.i.i, %i.ck
  br i1 %i.dd, label %bb.s, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cf, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef %.val1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34173
  br label %.thread.i

bb.s:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.dg = sub nuw nsw i64 %i.ck, %.sroa.4.0.i.i
  %i.dh = shl nuw nsw i64 %i.dg, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr nonnull align 8 %i.dc, i64 %i.dh, i1 false), !noalias !34172
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  store double %i.cc, ptr %i.dc, align 8, !noalias !34166
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %.val1.i.i, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !34166
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.ci, ptr %.sroa.635.0..sroa_idx.i, align 8, !noalias !34166
  %.sroa.836.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store i64 %.val1.i.i, ptr %.sroa.836.0..sroa_idx.i, align 8, !noalias !34166
  %i.di = add nuw nsw i64 %i.ck, 1
  store i64 %i.di, ptr %i.r, align 8, !alias.scope !34170, !noalias !34171
  br label %bb.h

bb.u:                                             ; preds = %bb.l
  unreachable

.thread.i:                                        ; preds = %bb.r, %bb.q, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.de, %bb.q ], [ %i.de, %bb.r ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34174)
  %.val4.i = load ptr, ptr %i.q, align 8, !alias.scope !34174, !noalias !34166, !nonnull !28, !noundef !28 ; 2 uses
  %.val5.i = load i64, ptr %i.r, align 8, !alias.scope !34174, !noalias !34166, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34175), !noalias !34166
  %i.dj = icmp eq i64 %.val5.i, 0
  br i1 %i.dj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i94

.lr.ph.i.i.i94:                                   ; preds = %.thread.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.dl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %.thread.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 8
  %.val8.i.i.i = load i64, ptr %i.dm, align 8, !alias.scope !34176, !noalias !34177 ; 2 uses
  %i.dn = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.dn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i94
  %i.do = getelementptr i8, ptr %i.dk, i64 16
  %.val9.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !34175, !noalias !34177, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34178
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i94
  %i.dp = icmp eq i64 %i.dl, %.val5.i
  br i1 %i.dp, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i94

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTdNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i, %.thread.i
  %.val.i95 = load i64, ptr %i.e, align 8, !alias.scope !34174, !noalias !34166 ; 2 uses
  %i.dq = icmp eq i64 %.val.i95, 0
  br i1 %i.dq, label %.thread, label %bb.w

bb.w:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  %i.dr = shl nuw i64 %.val.i95, 5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !34177
  br label %.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %bb.as, %bb.aa
  br i1 %.sroa.013.1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit93, label %.thread

bb.x:                                             ; preds = %bb.d, %5, %.loopexit.i.i.i
  %.sroa.03.0.i.i.i = phi ptr [ %i.ba, %.loopexit.i.i.i ], [ %i.bx, %bb.d ], [ inttoptr (i64 8 to ptr), %5 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34152
  %i.ds = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i, %i.ba
  br i1 %i.ds, label %.thread131, label %bb.y

.thread131:                                       ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i.i.i) ]
  br label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dt = add nsw i64 %i.bf, -1                   ; 4 uses
  %i.du = icmp samesign ult i64 %i.dt, %i.ax
  call void @llvm.assume(i1 %i.du)
  %i.dv = icmp ult i64 %i.be, -9223372036854775768
  call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.03.0.i.i.i, i64 %i.dt ; 3 uses
  %.sroa.0113.0.copyload = load i64, ptr %i.dw, align 8 ; 2 uses
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.4114.0.copyload = load ptr, ptr %.sroa.4114.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %.sroa.5115.0.copyload = load i64, ptr %.sroa.5115.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34179)
  %i.dx = icmp eq i64 %i.dt, 0
  br i1 %i.dx, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.dz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %bb.y ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.03.0.i.i.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.dz = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34180)
  call void @llvm.experimental.noalias.scope.decl(metadata !34181)
  %.val.i.i.i.i.i = load i64, ptr %i.dy, align 8, !alias.scope !34182, !noalias !34183 ; 2 uses
  %i.ea = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ea, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !34182, !noalias !34183, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34184
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i
  %i.ec = icmp eq i64 %i.dz, %i.dt
  br i1 %i.ec, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, %.thread131
  %.sroa.0.0116138 = phi i64 [ -1, %.thread131 ], [ %.sroa.0113.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %.sroa.8.0137 = phi ptr [ undef, %.thread131 ], [ %.sroa.4114.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %.sroa.9.0136 = phi i64 [ undef, %.thread131 ], [ %.sroa.5115.0.copyload, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %i.ed = icmp eq i64 %i.ax, 0
  br i1 %i.ed, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.thread

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.thread: ; preds = %bb.y, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  %.sroa.9.0136185 = phi i64 [ %.sroa.9.0136, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.5115.0.copyload, %bb.y ]
  %.sroa.8.0137181 = phi ptr [ %.sroa.8.0137, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.4114.0.copyload, %bb.y ]
  %.sroa.0.0116138179 = phi i64 [ %.sroa.0.0116138, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.0113.0.copyload, %bb.y ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.03.0.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !34183
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit

bb.aa:                                            ; preds = %bb.al, %bb.ar, %.body
  %.sroa.013.1 = phi i1 [ %i.ei, %.body ], [ true, %bb.ar ], [ true, %bb.al ]
  %.sroa.012.0 = phi i1 [ %i.eh, %.body ], [ true, %bb.ar ], [ true, %bb.al ]
  %.pn77 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body85, %bb.ar ], [ %i.fl, %bb.al ] ; 2 uses
  %i.ee = add i64 %.sroa.0.0116138180, -1
  %i.ef = icmp ult i64 %i.ee, -2
  %or.cond143.not = select i1 %i.ef, i1 %.sroa.012.0, i1 false
  br i1 %or.cond143.not, label %bb.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.ab:                                            ; preds = %bb.an, %bb.af
  %.sroa.012.1 = phi i8 [ 0, %bb.an ], [ 1, %bb.af ]
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.012.1.lpad-body = phi i8 [ %.sroa.012.1, %bb.ab ], [ 1, %bb.ad ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.eg, %bb.ab ], [ %i.eq, %bb.ad ]
  %i.eh = trunc nuw i8 %.sroa.012.1.lpad-body to i1
  %i.ei = icmp eq i8 %.sroa.012.1.lpad-body, 0
  br label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.thread, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  %.sroa.9.0136186 = phi i64 [ %.sroa.9.0136185, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.thread ], [ %.sroa.9.0136, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i ]
  %.sroa.8.0137182 = phi ptr [ %.sroa.8.0137181, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.thread ], [ %.sroa.8.0137, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i ] ; 3 uses
  %.sroa.0.0116138180 = phi i64 [ %.sroa.0.0116138179, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.thread ], [ %.sroa.0.0116138, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %i.ej, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %i.f, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr null, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 -2, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i8 -1, ptr %i.em, align 8
  %.sroa.042.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  store i8 -1, ptr %.sroa.042.sroa.5.0..sroa_idx, align 4
  %.sroa.042.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i8 -1, ptr %.sroa.042.sroa.7.0..sroa_idx, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  store i16 0, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 134
  store i8 -1, ptr %.sroa.544.0..sroa_idx, align 2
  %.sroa.544.sroa.5.0..sroa.544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 138
  store i8 -1, ptr %.sroa.544.sroa.5.0..sroa.544.0..sroa_idx.sroa_idx, align 2
  %.sroa.544.sroa.7.0..sroa.544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 142
  store i8 -1, ptr %.sroa.544.sroa.7.0..sroa.544.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.f, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx45, align 2
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
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 190
  store i8 -1, ptr %.sroa.1346.0..sroa_idx, align 2
  %.sroa.1346.sroa.5.0..sroa.1346.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 194
  store i8 -1, ptr %.sroa.1346.sroa.5.0..sroa.1346.0..sroa_idx.sroa_idx, align 2
  %.sroa.1346.sroa.7.0..sroa.1346.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 198
  store i8 -1, ptr %.sroa.1346.sroa.7.0..sroa.1346.0..sroa_idx.sroa_idx, align 2
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
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 218
  store i8 -1, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 222
  store i8 -1, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 226
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 246
  store <4 x i8> <i8 0, i8 2, i8 2, i8 0>, ptr %i.en, align 2
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34185
  %i.eo = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !34185 ; 5 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ac, label %bb.af, !prof !26

bb.ac:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #71
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.f) #72
          to label %.body unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.eo, ptr noundef nonnull align 8 dereferenceable(256) %i.f, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.es = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error8with_cmdCskXtk6F4WjxZ_4just(ptr noalias noundef nonnull align 8 %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(760) %0)
          to label %bb.ag unwind label %bb.ab     ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser16parse_attributes:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.59)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %i.cz, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.582.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.566.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.554.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.520.i.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.59.i.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.vi = load i64, ptr %i.et, align 8, !alias.scope !46092, !noalias !46093, !noundef !28 ; 2 uses
  %i.vj = icmp ult i64 %i.vi, 46116860184273880
  call void @llvm.assume(i1 %i.vj)
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.i

bb.da:                                            ; preds = %bb.ct, %bb.qw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.59)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %i.cz, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.582.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.566.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.554.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.520.i.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.59.i.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.vk = load i64, ptr %i.et, align 8, !alias.scope !46094, !noalias !46095, !noundef !28 ; 2 uses
  %i.vl = icmp ult i64 %i.vk, 46116860184273880
  call void @llvm.assume(i1 %i.vl)
  br label %bb.db

default.unreachable:                              ; preds = %.thread356.i, %bb.po
  unreachable

bb.db:                                            ; preds = %bb.da, %bb.po, %bb.po, %bb.po
  %i.vm = phi i64 [ %i.vk, %bb.da ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ]
  %.sroa.0.0.i.i.ph13957048 = phi i8 [ %.sroa.0.0.i.i.ph.ph.jt3, %bb.da ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ]
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.i

bb.dc:                                            ; preds = %bb.cv, %bb.po
  %i.vn = phi i64 [ %i.va, %bb.cv ], [ %i.ayk, %bb.po ]
  br label %bb.de

bb.dd:                                            ; preds = %bb.cw, %bb.po
  %i.vo = phi i64 [ %i.vc, %bb.cw ], [ %i.ayk, %bb.po ]
  br label %bb.de

bb.de:                                            ; preds = %bb.cy, %bb.dd, %bb.dc, %bb.po, %bb.po, %bb.po, %bb.po
  %i.vp = phi i64 [ %i.vg, %bb.cy ], [ %i.vo, %bb.dd ], [ %i.vn, %bb.dc ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ] ; 3 uses
  %.sroa.0.0.i.i.ph13957047 = phi i8 [ %.sroa.0.0.i.i.ph.ph.jt10, %bb.cy ], [ 15, %bb.dd ], [ 8, %bb.dc ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ]
  %.sroa.0231.0.i = phi i64 [ 1, %bb.cy ], [ 1, %bb.dd ], [ 2, %bb.dc ], [ 1, %bb.po ], [ 1, %bb.po ], [ 1, %bb.po ], [ 1, %bb.po ] ; 3 uses
  %.sroa.12.0.i = phi i64 [ 1, %bb.cy ], [ -1, %bb.dd ], [ 2, %bb.dc ], [ 1, %bb.po ], [ 1, %bb.po ], [ 1, %bb.po ], [ 1, %bb.po ] ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %.sroa.0231.0.i, %i.vp
  br i1 %.not.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.i

.body.i:                                          ; preds = %.loopexit1533, %.loopexit.split-lp1534, %.thread371.i, %bb.ja, %bb.iy, %bb.iw, %bb.ho, %bb.gg, %bb.fx, %bb.eu, %.body189.i, %bb.ek, %.body.i.i, %bb.dg
  %.sroa.0103.0.i = phi i1 [ false, %bb.gg ], [ false, %.thread371.i ], [ false, %bb.ho ], [ false, %.body.i.i ], [ false, %bb.ja ], [ false, %bb.iy ], [ false, %bb.fx ], [ false, %bb.iw ], [ true, %bb.dg ], [ true, %.body189.i ], [ false, %bb.ek ], [ true, %bb.eu ], [ %.sroa.0103.1.i.ph, %.loopexit1533 ], [ true, %.loopexit.split-lp1534 ]
  %.pn173.i = phi { ptr, i32 } [ %i.adb, %bb.gg ], [ %.pn171374.i, %.thread371.i ], [ %.pn171.i, %bb.ho ], [ %.pn.i.i, %.body.i.i ], [ %i.afg, %bb.ja ], [ %i.afe, %bb.iy ], [ %.pn.i, %bb.fx ], [ %i.afc, %bb.iw ], [ %i.wb, %bb.dg ], [ %eh.lpad-body190.i, %.body189.i ], [ %.pn.i.i, %bb.ek ], [ %eh.lpad-body190.i, %bb.eu ], [ %lpad.loopexit1535, %.loopexit1533 ], [ %lpad.loopexit.split-lp1536, %.loopexit.split-lp1534 ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtB4_6option6OptionNtNtB1H_10expression10ExpressionEEEEB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx) #72
          to label %bb.fg unwind label %bb.fm, !noalias !46096

.loopexit1533:                                    ; preds = %bb.en, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit194.thread.i, %bb.gc, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit196.thread.i, %bb.gh
  %.sroa.0103.1.i.ph = phi i1 [ false, %bb.gc ], [ false, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit194.thread.i ], [ false, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i ], [ true, %bb.en ], [ false, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit196.thread.i ], [ false, %bb.gh ]
  %lpad.loopexit1535 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp1534:                           ; preds = %bb.ff, %bb.fn
  %lpad.loopexit.split-lp1536 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.cz, %bb.de, %bb.db, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po, %bb.po
  %i.vq = phi i64 [ %i.vi, %bb.cz ], [ %i.vp, %bb.de ], [ %i.vm, %bb.db ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ] ; 16 uses
  %.sroa.0.0.i.i.ph13957049 = phi i8 [ %.sroa.0.0.i.i.ph1395.jt5, %bb.cz ], [ %.sroa.0.0.i.i.ph13957047, %bb.de ], [ %.sroa.0.0.i.i.ph13957048, %bb.db ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ] ; 3 uses
  %i.vr = phi i64 [ 0, %bb.cz ], [ %.sroa.0231.0.i, %bb.de ], [ 0, %bb.db ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ]
  %.sroa.12.0338.i = phi i64 [ 0, %bb.cz ], [ %.sroa.12.0.i, %bb.de ], [ 1, %bb.db ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ], [ 0, %bb.po ] ; 2 uses
  %.not381.i = icmp ugt i64 %i.vq, %.sroa.12.0338.i
  br i1 %.not381.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.i, %bb.de
  %i.vs = phi i64 [ %i.vq, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.i ], [ %i.vp, %bb.de ] ; 2 uses
  %i.vt = phi i64 [ %.sroa.12.0338.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.12.0.i, %bb.de ]
  %i.vu = phi i64 [ %i.vr, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.0231.0.i, %bb.de ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !46097
  %i.vv = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.vv, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bk, i64 72, i1 false), !noalias !46098
  %i.vw = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.vs, ptr %i.vw, align 8, !noalias !46097
  %i.vx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.vu, ptr %i.vx, align 8, !noalias !46097
  %i.vy = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 %i.vt, ptr %i.vy, align 8, !noalias !46097
  store i64 -9223372036854775796, ptr %i.bf, align 8, !noalias !46097
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !46099
  %i.vz = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !46099 ; 3 uses
  %i.wa = icmp eq ptr %i.vz, null
  br i1 %i.wa, label %bb.df, label %bb.di, !prof !26

bb.df:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc.i.i.i643 unwind label %bb.dg, !noalias !46100

.noexc.i.i.i643:                                  ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.df
  %i.wb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.bf) #72
          to label %.body.i unwind label %bb.dh, !noalias !46101

bb.dh:                                            ; preds = %bb.dg
  %i.wc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !46101
  unreachable

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i: ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.i
  switch i8 %.sroa.0.0.i.i.ph13957049, label %bb.dj [
    i8 3, label %bb.el
    i8 6, label %bb.el
    i8 8, label %bb.el
    i8 26, label %bb.el
    i8 29, label %bb.el
  ]

bb.di:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.vz, ptr noundef nonnull align 8 dereferenceable(128) %i.bf, i64 128, i1 false), !noalias !46101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !46097
  %.sroa.36.16.copyload1018 = load ptr, ptr %i.bk, align 8, !alias.scope !46102, !noalias !46103
  %.sroa.43.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.43.16.copyload1033 = load i64, ptr %.sroa.43.16..sroa_idx, align 8, !alias.scope !46102, !noalias !46103
  %.sroa.44.16.copyload1049 = load ptr, ptr %i.gh, align 8, !alias.scope !46102, !noalias !46103
  %.sroa.46.16.copyload1063 = load i64, ptr %i.gi, align 8, !alias.scope !46102, !noalias !46103
  %.sroa.47.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.47.16.copyload1077 = load i64, ptr %.sroa.47.16..sroa_idx, align 8, !alias.scope !46102, !noalias !46103
  %.sroa.48.16.copyload1091 = load i64, ptr %i.gk, align 8, !alias.scope !46102, !noalias !46103
  %.sroa.49.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.49.16.copyload1105 = load i64, ptr %.sroa.49.16..sroa_idx, align 8, !alias.scope !46102, !noalias !46103
  %.sroa.50.16.copyload1119 = load i64, ptr %i.gj, align 8, !alias.scope !46102, !noalias !46103
  %.sroa.51.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.sroa.51.16.copyload1132 = load i64, ptr %.sroa.51.16..sroa_idx, align 8, !alias.scope !46102, !noalias !46103
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB11_.exit193.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB11_.exit193.i: ; preds = %bb.fe, %bb.ff, %bb.di
  %i.wd = phi i64 [ %i.vq, %bb.fe ], [ %i.vq, %bb.ff ], [ %i.vs, %bb.di ] ; 4 uses
  %.sroa.51.sroa.20.sroa.0.5.in.in = phi i64 [ %.sroa.8251.0.copyload.i, %bb.fe ], [ %.sroa.8251.0.copyload.i, %bb.ff ], [ %.sroa.51.16.copyload1132, %bb.di ] ; 2 uses
  %.sroa.50.5 = phi i64 [ %.sroa.7248.0.copyload.i, %bb.fe ], [ %.sroa.7248.0.copyload.i, %bb.ff ], [ %.sroa.50.16.copyload1119, %bb.di ]
  %.sroa.49.5 = phi i64 [ %.sroa.7.0.copyload.i, %bb.fe ], [ %.sroa.7.0.copyload.i, %bb.ff ], [ %.sroa.49.16.copyload1105, %bb.di ]
  %.sroa.48.5 = phi i64 [ %.sroa.6243.0.copyload.i, %bb.fe ], [ %.sroa.6243.0.copyload.i, %bb.ff ], [ %.sroa.48.16.copyload1091, %bb.di ]
  %.sroa.47.5 = phi i64 [ %.sroa.6.0.copyload.i, %bb.fe ], [ %.sroa.6.0.copyload.i, %bb.ff ], [ %.sroa.47.16.copyload1077, %bb.di ]
  %.sroa.46.5 = phi i64 [ %.sroa.5.0.copyload.i, %bb.fe ], [ %.sroa.5.0.copyload.i, %bb.ff ], [ %.sroa.46.16.copyload1063, %bb.di ]
  %.sroa.44.5 = phi ptr [ %.sroa.4236.0.copyload.i, %bb.fe ], [ %.sroa.4236.0.copyload.i, %bb.ff ], [ %.sroa.44.16.copyload1049, %bb.di ]
  %.sroa.43.5 = phi i64 [ %.sroa.43.16.copyload1035, %bb.fe ], [ %.sroa.43.16.copyload1035, %bb.ff ], [ %.sroa.43.16.copyload1033, %bb.di ]
  %.sroa.36.5 = phi ptr [ %.sroa.36.16.copyload1019, %bb.fe ], [ %.sroa.36.16.copyload1019, %bb.ff ], [ %.sroa.36.16.copyload1018, %bb.di ]
  %.sroa.20.5.in = phi ptr [ %i.abc, %bb.fe ], [ %i.abc, %bb.ff ], [ %i.vz, %bb.di ]
  %.sroa.20.5 = ptrtoint ptr %.sroa.20.5.in to i64
  %.sroa.51.sroa.0.5 = trunc i64 %.sroa.51.sroa.20.sroa.0.5.in.in to i8
  %.sroa.51.sroa.20.sroa.0.5.in = lshr i64 %.sroa.51.sroa.20.sroa.0.5.in.in, 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtB4_6option6OptionNtNtB1H_10expression10ExpressionEEEEB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.fh unwind label %.split.i, !noalias !46096

bb.dj:                                            ; preds = %bb.cx, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i, %bb.po, %bb.po
  %i.we = phi i64 [ %i.ve, %bb.cx ], [ %i.vq, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i ], [ %i.ayk, %bb.po ], [ %i.ayk, %bb.po ] ; 2 uses
  %.sroa.0.0.i.i.ph13957046 = phi i8 [ %.sroa.0.0.i.i.ph.ph.jt4, %bb.cx ], [ %.sroa.0.0.i.i.ph13957049, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ], [ %.sroa.0.0.i.i.ph13957043, %bb.po ]
  %i.wf = load ptr, ptr %i.ev, align 8, !alias.scope !46104, !noalias !46105, !nonnull !28, !noundef !28 ; 18 uses
  %i.wg = load i64, ptr %i.by, align 8, !range !43, !alias.scope !46104, !noalias !46105, !noundef !28 ; 4 uses
  %.idx386.i = mul nuw nsw i64 %i.we, 200
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.idx386.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !46106
  store i8 -1, ptr %i.fl, align 8, !noalias !46106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !46107
  store ptr %i.wf, ptr %i.ae, align 16, !alias.scope !46108, !noalias !46109
  store i64 %i.wg, ptr %.sroa.5293.0..sroa_idx.i, align 16, !alias.scope !46108, !noalias !46109
  store ptr %i.wh, ptr %.sroa.6294.0..sroa_idx.i, align 8, !alias.scope !46108, !noalias !46109
  store ptr %i.bk, ptr %.sroa.7295.0..sroa_idx.i, align 16, !alias.scope !46108, !noalias !46109
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx6.i.i, align 8, !alias.scope !46108, !noalias !46110
  call void @llvm.experimental.noalias.scope.decl(metadata !46111)
  call void @llvm.experimental.noalias.scope.decl(metadata !46112)
  %i.wi = mul i64 %i.wg, 200                      ; 9 uses
  %i.wj = udiv i64 %i.wi, 104                     ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46113)
  call void @llvm.experimental.noalias.scope.decl(metadata !46114)
  call void @llvm.experimental.noalias.scope.decl(metadata !46115)
  call void @llvm.experimental.noalias.scope.decl(metadata !46116)
  call void @llvm.experimental.noalias.scope.decl(metadata !46117)
  %.not18.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.we, 0
  br i1 %.not18.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.body10.i.i.i.i.i.i, %bb.ds
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body11.i.i.i.i.i.i, %.body10.i.i.i.i.i.i ], [ %eh.lpad-body.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.ds ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB1u_10expression10ExpressionEEEB1u_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ae)
          to label %.body.i.i unwind label %bb.ed, !noalias !46118

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.dj, %bb.dt
  %.sroa.4.019.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wx, %bb.dt ], [ %i.wf, %bb.dj ] ; 8 uses
  %i.wk = phi ptr [ %i.wl, %bb.dt ], [ %i.wf, %bb.dj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !46119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.fn, ptr noundef nonnull align 8 dereferenceable(200) %i.wk, i64 200, i1 false), !noalias !46120
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 200 ; 5 uses
  store ptr %i.wf, ptr %i.ac, align 8, !noalias !46119
  store ptr %.sroa.4.019.i.i.i.i.i.i.i.i.i.i, ptr %i.fm, align 8, !noalias !46119
  call void @llvm.experimental.noalias.scope.decl(metadata !46121)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !46122)
  call void @llvm.experimental.noalias.scope.decl(metadata !46123)
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fo, align 8, !alias.scope !46121, !noalias !46124 ; 2 uses
  %i.wm = icmp ne i64 %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775801
  call void @llvm.assume(i1 %i.wm)
  %i.wn = icmp eq i64 %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775794
  br i1 %i.wn, label %bb.dr, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  store ptr %i.wl, ptr %.sroa.4292.0..sroa_idx.i, align 8, !alias.scope !46125, !noalias !46126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !46127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bk, i64 72, i1 false), !noalias !46128
  store i64 -9223372036854775795, ptr %i.ab, align 8, !noalias !46127
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !46129
  %i.wo = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !46129 ; 3 uses
  %i.wp = icmp eq ptr %i.wo, null
  br i1 %i.wp, label %bb.dl, label %bb.do, !prof !26

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.dm, !noalias !46130

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.dl
  unreachable

bb.dm:                                            ; preds = %bb.dl
  %i.wq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.ab) #72
          to label %.body.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.dn, !noalias !46131

bb.dn:                                            ; preds = %bb.dm
  %i.wr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !46131
  unreachable

bb.do:                                            ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.wo, ptr noundef nonnull align 8 dereferenceable(128) %i.ab, i64 128, i1 false), !noalias !46131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !46127
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.fo)
          to label %.thread.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.dq, !noalias !46132

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.6.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.fn, i64 72, i1 false), !noalias !46133
  br label %bb.du

.body.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.dm
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.fo) #72
          to label %bb.ds unwind label %bb.dp, !noalias !46134

bb.dp:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ws = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !46135
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fp, align 8, !alias.scope !46136, !noalias !46133 ; 2 uses
  %.sroa.53.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !46136, !noalias !46133 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wk, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.6.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.wu, i64 72, i1 false), !noalias !46120
  %i.wv = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.wv, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.dt

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.dr
  store ptr %i.wl, ptr %.sroa.4292.0..sroa_idx.i, align 8, !alias.scope !46125, !noalias !46126
  br label %bb.du

bb.ds:                                            ; preds = %bb.dq, %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.ph.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wt, %bb.dq ], [ %i.wq, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_drop11InPlaceDropNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1C_(ptr nonnull %i.wf, ptr nonnull %.sroa.4.019.i.i.i.i.i.i.i.i.i.i) #72, !noalias !46137
  br label %.body.i.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %.sroa.7.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i.i.i.i.i.i.i.i.i.i, i64 88
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wk, i64 168
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ww, i64 16, i1 false), !noalias !46120
  %.sroa.611.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.53.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.611.16..sroa.4.8.2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46138
  %.sroa.6.sroa.6.0..sroa.611.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.6.0..sroa.611.16..sroa.4.8.2.sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !46132
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.019.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46139
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i.i.i.i.i.i.i.i.i.i, i64 104 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !46119
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wl, %i.wh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.du:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.53.015.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wo, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.53.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.53.015.i.i.i.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !alias.scope !46116, !noalias !46140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.6.0..8.val.sroa_idx6.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.6.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !46140
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !46119
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.dt, %bb.du, %bb.dj
  %.val.i.i.i.i.i.i.i = phi ptr [ %i.wl, %bb.du ], [ %i.wf, %bb.dj ], [ %i.wh, %bb.dt ] ; 4 uses
  %.sroa.4.019.i.i.pn.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.4.019.i.i.i.i.i.i.i.i.i.i, %bb.du ], [ %i.wf, %bb.dj ], [ %i.wx, %bb.dt ] ; 6 uses
  %i.wy = ptrtoint ptr %.sroa.4.019.i.i.pn.i.i.i.i.i.i.i.i to i64
  %i.wz = ptrtoint ptr %i.wf to i64
  %i.xa = sub nuw i64 %i.wy, %i.wz                ; 9 uses
  %i.xb = udiv exact i64 %i.xa, 104               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !46141
  store ptr %i.wf, ptr %i.ad, align 8, !noalias !46141
  store i64 %i.xb, ptr %i.fr, align 8, !noalias !46141
  store i64 %i.wg, ptr %i.fs, align 8, !noalias !46141
  call void @llvm.experimental.noalias.scope.decl(metadata !46142)
  %i.xc = ptrtoint ptr %i.wh to i64
  %i.xd = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64
  %i.xe = sub nuw i64 %i.xc, %i.xd
  %i.xf = udiv exact i64 %i.xe, 200               ; 3 uses
  store i64 0, ptr %.sroa.5293.0..sroa_idx.i, align 16, !alias.scope !46143, !noalias !46144
  store <2 x ptr> <ptr inttoptr (i64 8 to ptr), ptr inttoptr (i64 8 to ptr)>, ptr %i.ae, align 16, !alias.scope !46143, !noalias !46144
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6294.0..sroa_idx.i, align 8, !alias.scope !46143, !noalias !46144
  %i.xg = icmp eq ptr %i.wh, %.val.i.i.i.i.i.i.i
  br i1 %i.xg, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEE32forget_allocation_drop_remainingB11_.exit.i.i.i.i.i.i, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.xh = icmp eq i64 %i.xj, %i.xf
  br i1 %i.xh, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEE32forget_allocation_drop_remainingB11_.exit.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i11659 = phi i64 [ %i.xj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [200 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i11659
  %i.xj = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i11659, 1 ; 4 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 72
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.xk)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit.i.i.i.i.i.i.i.i unwind label %bb.dv, !noalias !46145

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit7.i.i.i.i.i.i.i.i: ; preds = %.lr.ph11690
  %i.xl = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i11688, 1 ; 2 uses
  %i.xm = icmp eq i64 %i.xl, %i.xf
  br i1 %i.xm, label %.body10.i.i.i.i.i.i, label %.lr.ph11690

bb.dv:                                            ; preds = %.lr.ph
  %i.xn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xo = icmp eq i64 %i.xj, %i.xf
  br i1 %i.xo, label %.body10.i.i.i.i.i.i, label %.lr.ph11690

.lr.ph11690:                                      ; preds = %bb.dv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit7.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i11688 = phi i64 [ %i.xl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit7.i.i.i.i.i.i.i.i ], [ %i.xj, %bb.dv ] ; 2 uses
  %i.xp = getelementptr inbounds nuw [200 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.0.1.i.i.i.i.i.i.i.i11688
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 72
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.xq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit7.i.i.i.i.i.i.i.i unwind label %bb.dw, !noalias !46145

bb.dw:                                            ; preds = %.lr.ph11690
  %i.xr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !46146
  unreachable

bb.dx:                                            ; preds = %bb.eb
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i.i.i.i.i.i

.body10.i.i.i.i.i.i:                              ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit7.i.i.i.i.i.i.i.i, %bb.dv, %bb.dx
  %eh.lpad-body11.i.i.i.i.i.i = phi { ptr, i32 } [ %i.xs, %bb.dx ], [ %i.xn, %bb.dv ], [ %i.xn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit7.i.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB1Q_10expression10ExpressionENtNtB1Q_14string_literal13StringLiteralEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #72, !noalias !46147
  br label %.body.i.i.i.i.i.i

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEE32forget_allocation_drop_remainingB11_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtBG_10expression10ExpressionEEBG_.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.wg, 0
  %i.xt = mul nuw i64 %i.wj, 104                  ; 6 uses
  %i.xu = icmp ne i64 %i.wi, %i.xt
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.xu, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.dy, label %_RINvXsf_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1G_8adapters12GenericShuntINtNtB2Q_3map3MapINtNtB6_9into_iter8IntoIterTNtNtBK_5token5TokenNtNtBK_10expression10ExpressionEENCNvMs_NtBK_9attributeNtB4Z_9Attribute3news2_0EINtNtB1I_6result6ResultNtNtB1I_7convert10InfallibleNtNtBK_13compile_error12CompileErrorEEEBK_.exit.i.i.i

bb.dy:                                            ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEE32forget_allocation_drop_remainingB11_.exit.i.i.i.i.i.i
  %i.xv = icmp ult i64 %i.wi, 104
  br i1 %i.xv, label %2, label %bb.ea

2:                                                ; preds = %bb.dy
  %3 = icmp eq i64 %i.wi, 0
  br i1 %3, label %_RINvXsf_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1G_8adapters12GenericShuntINtNtB2Q_3map3MapINtNtB6_9into_iter8IntoIterTNtNtBK_5token5TokenNtNtBK_10expression10ExpressionEENCNvMs_NtBK_9attributeNtB4Z_9Attribute3news2_0EINtNtB1I_6result6ResultNtNtB1I_7convert10InfallibleNtNtBK_13compile_error12CompileErrorEEEBK_.exit.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wf, i64 noundef %i.wi, i64 noundef 8) #70, !noalias !46147
  br label %_RINvXsf_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1G_8adapters12GenericShuntINtNtB2Q_3map3MapINtNtB6_9into_iter8IntoIterTNtNtBK_5token5TokenNtNtBK_10expression10ExpressionEENCNvMs_NtBK_9attributeNtB4Z_9Attribute3news2_0EINtNtB1I_6result6ResultNtNtB1I_7convert10InfallibleNtNtBK_13compile_error12CompileErrorEEEBK_.exit.i.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.xw = icmp ule i64 %i.xt, %i.wi
  call void @llvm.assume(i1 %i.xw)
  %i.xx = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %i.wf, i64 noundef %i.wi, i64 noundef 8, i64 noundef range(i64 0, -15) %i.xt) #70, !noalias !46147 ; 2 uses
  %i.xy = icmp eq ptr %i.xx, null
  br i1 %i.xy, label %bb.eb, label %_RINvXsf_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1G_8adapters12GenericShuntINtNtB2Q_3map3MapINtNtB6_9into_iter8IntoIterTNtNtBK_5token5TokenNtNtBK_10expression10ExpressionEENCNvMs_NtBK_9attributeNtB4Z_9Attribute3news2_0EINtNtB1I_6result6ResultNtNtB1I_7convert10InfallibleNtNtBK_13compile_error12CompileErrorEEEBK_.exit.i.i.i, !prof !26

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.xt) #71
          to label %bb.ec unwind label %bb.dx, !noalias !46147

bb.ec:                                            ; preds = %bb.eb
  unreachable

bb.ed:                                            ; preds = %.body.i.i.i.i.i.i
  %i.xz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !46147
  unreachable

_RINvXsf_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1G_8adapters12GenericShuntINtNtB2Q_3map3MapINtNtB6_9into_iter8IntoIterTNtNtBK_5token5TokenNtNtBK_10expression10ExpressionEENCNvMs_NtBK_9attributeNtB4Z_9Attribute3news2_0EINtNtB1I_6result6ResultNtNtB1I_7convert10InfallibleNtNtBK_13compile_error12CompileErrorEEEBK_.exit.i.i.i: ; preds = %bb.ea, %bb.dz, %2, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEE32forget_allocation_drop_remainingB11_.exit.i.i.i.i.i.i
  %.val.i930 = phi ptr [ inttoptr (i64 8 to ptr), %bb.dz ], [ %i.xx, %bb.ea ], [ %i.wf, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB11_10expression10ExpressionEE32forget_allocation_drop_remainingB11_.exit.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %2 ] ; 27 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !46141
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just5token5TokenNtNtB1u_10expression10ExpressionEEEB1u_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ae)
          to label %bb.ef unwind label %bb.ee, !noalias !46148

.body.i.i:                                        ; preds = %bb.ee, %.body.i.i.i.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.yb, %bb.ee ] ; 2 uses
  %i.ya = load i8, ptr %i.fl, align 8, !range !45, !noalias !46106, !noundef !28
  %.not.i177.i = icmp eq i8 %i.ya, -1
  br i1 %.not.i177.i, label %.body.i, label %bb.ek

bb.ee:                                            ; preds = %_RINvXsf_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1G_8adapters12GenericShuntINtNtB2Q_3map3MapINtNtB6_9into_iter8IntoIterTNtNtBK_5token5TokenNtNtBK_10expression10ExpressionEENCNvMs_NtBK_9attributeNtB4Z_9Attribute3news2_0EINtNtB1I_6result6ResultNtNtB1I_7convert10InfallibleNtNtBK_13compile_error12CompileErrorEEEBK_.exit.i.i.i
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ef:                                            ; preds = %_RINvXsf_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1G_8adapters12GenericShuntINtNtB2Q_3map3MapINtNtB6_9into_iter8IntoIterTNtNtBK_5token5TokenNtNtBK_10expression10ExpressionEENCNvMs_NtBK_9attributeNtB4Z_9Attribute3news2_0EINtNtB1I_6result6ResultNtNtB1I_7convert10InfallibleNtNtBK_13compile_error12CompileErrorEEEBK_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !46107
  %i.yc = load i8, ptr %i.fl, align 8, !range !45, !noalias !46106, !noundef !28 ; 2 uses
  %.not.not.i.i = icmp eq i8 %i.yc, -1
  br i1 %.not.not.i.i, label %.thread356.i, label %bb.eg

.thread356.i:                                     ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !46106
  store i64 %i.wj, ptr %i.au, align 8, !noalias !46097
  store ptr %.val.i930, ptr %.sroa.4322.0..sroa_idx.i, align 8, !noalias !46097
  store i64 %i.xb, ptr %.sroa.5323.0..sroa_idx.i, align 8, !noalias !46097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !46097
  switch i8 %.sroa.0.0.i.i.ph13957046, label %default.unreachable [
    i8 0, label %bb.gl
    i8 1, label %bb.gm
    i8 2, label %bb.gn
    i8 3, label %bb.go
    i8 4, label %bb.gp
    i8 5, label %bb.gq
    i8 6, label %bb.go
    i8 7, label %bb.gr
    i8 8, label %bb.go
    i8 9, label %bb.gs
    i8 10, label %bb.gt
    i8 11, label %bb.gu
    i8 12, label %bb.gv
    i8 13, label %bb.gw
    i8 14, label %bb.gx
    i8 15, label %bb.gy
    i8 16, label %bb.gz
    i8 17, label %bb.ha
    i8 18, label %bb.hb
    i8 19, label %bb.hc
    i8 20, label %bb.hd
    i8 21, label %bb.he
    i8 22, label %bb.hf
    i8 23, label %bb.hg
    i8 24, label %bb.hh
    i8 25, label %bb.hi
    i8 26, label %bb.go
    i8 27, label %bb.hj
    i8 28, label %bb.hk
    i8 29, label %bb.go
  ], !prof !46149

bb.eg:                                            ; preds = %bb.ef
  %.sroa.0277.0.copyload.i = load i64, ptr %i.af, align 8, !noalias !46150
  %.sroa.7280.0.copyload.i = load ptr, ptr %.sroa.6.sroa.6.0..8.val.sroa_idx6.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46150
  %.sroa.8284.0.copyload.i = load i64, ptr %.sroa.8284.0..sroa_idx.i, align 8, !noalias !46150
  %.sroa.9288.i.sroa.0.0.copyload = load ptr, ptr %.sroa.9288.0..sroa_idx.i, align 8, !noalias !46097
  %.sroa.9288.i.sroa.4.0.copyload = load i64, ptr %.sroa.9288.i.sroa.4.0..sroa.9288.0..sroa_idx.i.sroa_idx, align 8, !noalias !46097
  %.sroa.9288.i.sroa.5.0.copyload = load i64, ptr %.sroa.9288.i.sroa.5.0..sroa.9288.0..sroa_idx.i.sroa_idx, align 8, !noalias !46097
  %.sroa.9288.i.sroa.6.0.copyload = load i64, ptr %.sroa.9288.i.sroa.6.0..sroa.9288.0..sroa_idx.i.sroa_idx, align 8, !noalias !46097
  %.sroa.9288.i.sroa.7.0.copyload = load i64, ptr %.sroa.9288.i.sroa.7.0..sroa.9288.0..sroa_idx.i.sroa_idx, align 8, !noalias !46097
  %.sroa.9288.i.sroa.8.0.copyload = load i64, ptr %.sroa.9288.i.sroa.8.0..sroa.9288.0..sroa_idx.i.sroa_idx, align 8, !noalias !46097
  %.sroa.12290.i.sroa.0.0.copyload = load i56, ptr %.sroa.12290.0..sroa_idx.i, align 1, !noalias !46097
  call void @llvm.experimental.noalias.scope.decl(metadata !46151)
  %i.yd = icmp eq ptr %.sroa.4.019.i.i.pn.i.i.i.i.i.i.i.i, %i.wf
  br i1 %i.yd, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.eg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.yf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i ], [ 0, %bb.eg ] ; 2 uses
  %i.ye = getelementptr inbounds nuw [104 x i8], ptr %.val.i930, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.yf = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46152)
  call void @llvm.experimental.noalias.scope.decl(metadata !46153)
  call void @llvm.experimental.noalias.scope.decl(metadata !46154)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ye, align 8, !alias.scope !46155, !noalias !46156 ; 2 uses
  %i.yg = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.yg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.yh, align 8, !alias.scope !46155, !noalias !46156, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !46157
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i: ; preds = %bb.eh, %.lr.ph.i.i.i.i.i
  %i.yi = icmp eq i64 %i.yf, %i.xb
  br i1 %i.yi, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i, %bb.eg
  %i.yj = icmp ult i64 %i.wi, 104
  br i1 %i.yj, label %bb.gk, label %bb.ei

bb.ei:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i930, i64 noundef %i.xt, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !46156
  br label %bb.gk

bb.ej:                                            ; preds = %bb.ek
  %i.yk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !46148
  unreachable

bb.ek:                                            ; preds = %.body.i.i
  %.val.i.i = load ptr, ptr %i.af, align 8, !alias.scope !46158, !noalias !46106, !nonnull !28, !noundef !28
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCskXtk6F4WjxZ_4just13compile_error12CompileErrorEEB1s_(ptr %.val.i.i) #72
          to label %.body.i unwind label %bb.ej, !noalias !46148

bb.el:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivejEINtB6_11RangeBoundsjE8containsjECskXtk6F4WjxZ_4just.exit.thread447.i
  call void @llvm.experimental.noalias.scope.decl(metadata !46159)
  call void @llvm.experimental.noalias.scope.decl(metadata !46160)
  %i.yl = load ptr, ptr %i.bx, align 8, !alias.scope !46161, !noalias !46162, !noundef !28 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.yl, null
  br i1 %.not.i.i.i, label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1e_10expression10ExpressionEEE9pop_firstB1e_.exit.thread.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ym = load i64, ptr %i.eu, align 8, !alias.scope !46161, !noalias !46162, !noundef !28 ; 5 uses
  %i.yn = icmp eq i64 %i.ym, 0
  br i1 %i.yn, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i639.preheader

.lr.ph.i.i.i639.preheader:                        ; preds = %bb.em
  %xtraiter13946 = and i64 %i.ym, 7               ; 2 uses
  %lcmp.mod13947.not = icmp eq i64 %xtraiter13946, 0
  br i1 %lcmp.mod13947.not, label %.lr.ph.i.i.i639.prol.loopexit, label %.lr.ph.i.i.i639.prol

.lr.ph.i.i.i639.prol:                             ; preds = %.lr.ph.i.i.i639.preheader, %.lr.ph.i.i.i639.prol
  %.sroa.023.040.i.i.i.prol = phi ptr [ %i.yp, %.lr.ph.i.i.i639.prol ], [ %i.yl, %.lr.ph.i.i.i639.preheader ]
  %.sroa.021.039.i.i.i.prol = phi i64 [ %i.yq, %.lr.ph.i.i.i639.prol ], [ %i.ym, %.lr.ph.i.i.i639.preheader ]
  %prol.iter13948 = phi i64 [ %prol.iter13948.next, %.lr.ph.i.i.i639.prol ], [ 0, %.lr.ph.i.i.i639.preheader ]
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i.i.i.prol, i64 2392
  %i.yp = load ptr, ptr %i.yo, align 8, !noalias !46163, !nonnull !28, !noundef !28 ; 3 uses
  %i.yq = add i64 %.sroa.021.039.i.i.i.prol, -1   ; 2 uses
  %prol.iter13948.next = add i64 %prol.iter13948, 1 ; 2 uses
  %prol.iter13948.cmp.not = icmp eq i64 %prol.iter13948.next, %xtraiter13946
  br i1 %prol.iter13948.cmp.not, label %.lr.ph.i.i.i639.prol.loopexit, label %.lr.ph.i.i.i639.prol, !llvm.loop !45540

.lr.ph.i.i.i639.prol.loopexit:                    ; preds = %.lr.ph.i.i.i639.prol, %.lr.ph.i.i.i639.preheader
  %.lcssa11901.unr = phi ptr [ poison, %.lr.ph.i.i.i639.preheader ], [ %i.yp, %.lr.ph.i.i.i639.prol ]
  %.sroa.023.040.i.i.i.unr = phi ptr [ %i.yl, %.lr.ph.i.i.i639.preheader ], [ %i.yp, %.lr.ph.i.i.i639.prol ]
  %.sroa.021.039.i.i.i.unr = phi i64 [ %i.ym, %.lr.ph.i.i.i639.preheader ], [ %i.yq, %.lr.ph.i.i.i639.prol ]
  %i.yr = icmp ult i64 %i.ym, 8
  br i1 %i.yr, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i639

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i639.prol.loopexit, %.lr.ph.i.i.i639, %bb.em
  %.sroa.023.0.lcssa.i.i.i = phi ptr [ %i.yl, %bb.em ], [ %.lcssa11901.unr, %.lr.ph.i.i.i639.prol.loopexit ], [ %i.zj, %.lr.ph.i.i.i639 ] ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.023.0.lcssa.i.i.i, i64 2386
  %i.yt = load i16, ptr %i.ys, align 2, !noalias !46163, !noundef !28
  %.not38.i.i.i = icmp eq i16 %i.yt, 0
  br i1 %.not38.i.i.i, label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1e_10expression10ExpressionEEE9pop_firstB1e_.exit.thread.i, label %bb.en

.lr.ph.i.i.i639:                                  ; preds = %.lr.ph.i.i.i639.prol.loopexit, %.lr.ph.i.i.i639
  %.sroa.023.040.i.i.i = phi ptr [ %i.zj, %.lr.ph.i.i.i639 ], [ %.sroa.023.040.i.i.i.unr, %.lr.ph.i.i.i639.prol.loopexit ]
  %.sroa.021.039.i.i.i = phi i64 [ %i.zk, %.lr.ph.i.i.i639 ], [ %.sroa.021.039.i.i.i.unr, %.lr.ph.i.i.i639.prol.loopexit ]
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i.i.i, i64 2392
  %i.yv = load ptr, ptr %i.yu, align 8, !noalias !46163, !nonnull !28, !noundef !28
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 2392
  %i.yx = load ptr, ptr %i.yw, align 8, !noalias !46163, !nonnull !28, !noundef !28
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 2392
  %i.yz = load ptr, ptr %i.yy, align 8, !noalias !46163, !nonnull !28, !noundef !28
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 2392
  %i.zb = load ptr, ptr %i.za, align 8, !noalias !46163, !nonnull !28, !noundef !28
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 2392
  %i.zd = load ptr, ptr %i.zc, align 8, !noalias !46163, !nonnull !28, !noundef !28
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 2392
  %i.zf = load ptr, ptr %i.ze, align 8, !noalias !46163, !nonnull !28, !noundef !28
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 2392
  %i.zh = load ptr, ptr %i.zg, align 8, !noalias !46163, !nonnull !28, !noundef !28
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 2392
  %i.zj = load ptr, ptr %i.zi, align 8, !noalias !46163, !nonnull !28, !noundef !28 ; 2 uses
  %i.zk = add i64 %.sroa.021.039.i.i.i, -8        ; 2 uses
  %i.zl = icmp eq i64 %i.zk, 0
  br i1 %i.zl, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i639

bb.en:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !46164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !46164
  store ptr %.sroa.023.0.lcssa.i.i.i, ptr %i.aa, align 8, !noalias !46164
  store ptr %i.bx, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !46164
  invoke fastcc void @_RNvMs5_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1s_10expression10ExpressionEEE9remove_kvB1s_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(216) %i.be, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.aa)
          to label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1e_10expression10ExpressionEEE9pop_firstB1e_.exit.i unwind label %.loopexit1533, !noalias !46096

_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1e_10expression10ExpressionEEE9pop_firstB1e_.exit.i: ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !46164
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !46097 ; 3 uses
  %i.zm = icmp eq i64 %.pre.i, -2
  br i1 %i.zm, label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1e_10expression10ExpressionEEE9pop_firstB1e_.exit.thread.i, label %bb.eo

bb.eo:                                            ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1e_10expression10ExpressionEEE9pop_firstB1e_.exit.i
  %i.zn = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.4236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %.sroa.4236.0.copyload.i = load ptr, ptr %.sroa.4236.0..sroa_idx.i, align 8, !noalias !46097 ; 9 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !46097 ; 8 uses
end_hunk_1
begin_hunk_2_@_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe3run:bb.a
  br i1 %.not462, label %bb.tj, label %.thread461

.thread461:                                       ; preds = %bb.ti
  store i8 %.sroa.8343.0, ptr %i.cr, align 1, !alias.scope !69805, !noalias !69806
  %.sroa.5.0..sroa_idx2.i214 = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %.sroa.10344.sroa.0.0, ptr %.sroa.5.0..sroa_idx2.i214, align 1, !alias.scope !69805, !noalias !69806
  %.sroa.6.0..sroa_idx4.i215 = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 %.sroa.10344.sroa.5.0, ptr %.sroa.6.0..sroa_idx4.i215, align 1, !alias.scope !69805, !noalias !69806
  %.sroa.7.0..sroa_idx6.i216 = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  store i8 %.sroa.10344.sroa.6.0, ptr %.sroa.7.0..sroa_idx6.i216, align 1, !alias.scope !69805, !noalias !69806
  %.sroa.8.0..sroa_idx8.i217 = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i8 %.sroa.10344.sroa.7.0, ptr %.sroa.8.0..sroa_idx8.i217, align 1, !alias.scope !69805, !noalias !69806
  %.sroa.9.0..sroa_idx10.i218 = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  store i8 %.sroa.10344.sroa.8.0, ptr %.sroa.9.0..sroa_idx10.i218, align 1, !alias.scope !69805, !noalias !69806
  %.sroa.10.0..sroa_idx12.i219 = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  store i8 %.sroa.10344.sroa.9.0, ptr %.sroa.10.0..sroa_idx12.i219, align 1, !alias.scope !69805, !noalias !69806
  %.sroa.11.0..sroa_idx14.i220 = getelementptr inbounds nuw i8, ptr %i.cr, i64 7
  store i8 %.sroa.10344.sroa.10.0, ptr %.sroa.11.0..sroa_idx14.i220, align 1, !alias.scope !69805, !noalias !69806
  %.sroa.12.0..sroa_idx16.i221 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %.sroa.10344.sroa.11.0, ptr %.sroa.12.0..sroa_idx16.i221, align 1, !alias.scope !69805, !noalias !69806
  %.sroa.13.0..sroa_idx18.i222 = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  store i32 %.sroa.19.0, ptr %.sroa.13.0..sroa_idx18.i222, align 1, !alias.scope !69805, !noalias !69806
  br label %bb.tk

bb.tj:                                            ; preds = %bb.ti
  %.sroa.13.0..sroa_idx18.i222426 = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cr, i8 0, i64 9, i1 false)
  store i32 255, ptr %.sroa.13.0..sroa_idx18.i222426, align 1, !alias.scope !69805, !noalias !69806
  br label %bb.tk

bb.tk:                                            ; preds = %.thread450, %.thread461, %bb.tj, %.thread428
  %.sroa.21.0.sink = phi i32 [ %.sroa.21.0, %.thread450 ], [ %.sroa.21.0, %.thread461 ], [ 255, %bb.tj ], [ 255, %.thread428 ] ; 2 uses
  %.sroa.13.0.i248 = phi i32 [ %.sroa.19.0, %.thread450 ], [ %.sroa.19.0, %.thread461 ], [ 255, %bb.tj ], [ 255, %.thread428 ]
  %.sroa.12.0.i249 = phi i8 [ %.sroa.10344.sroa.11.0, %.thread450 ], [ %.sroa.10344.sroa.11.0, %.thread461 ], [ 0, %bb.tj ], [ 0, %.thread428 ]
  %.sroa.11.0.i250 = phi i8 [ %.sroa.10344.sroa.10.0, %.thread450 ], [ %.sroa.10344.sroa.10.0, %.thread461 ], [ 0, %bb.tj ], [ 0, %.thread428 ]
  %.sroa.10.0.i251 = phi i8 [ %.sroa.10344.sroa.9.0, %.thread450 ], [ %.sroa.10344.sroa.9.0, %.thread461 ], [ 0, %bb.tj ], [ 0, %.thread428 ]
  %.sroa.9.0.i252 = phi i8 [ %.sroa.10344.sroa.8.0, %.thread450 ], [ %.sroa.10344.sroa.8.0, %.thread461 ], [ 0, %bb.tj ], [ 0, %.thread428 ]
  %.sroa.8.0.i253 = phi i8 [ %.sroa.10344.sroa.7.0, %.thread450 ], [ %.sroa.10344.sroa.7.0, %.thread461 ], [ 0, %bb.tj ], [ 0, %.thread428 ]
  %.sroa.7.0.i254 = phi i8 [ %.sroa.10344.sroa.6.0, %.thread450 ], [ %.sroa.10344.sroa.6.0, %.thread461 ], [ 0, %bb.tj ], [ 0, %.thread428 ]
  %.sroa.6.0.i255 = phi i8 [ %.sroa.10344.sroa.5.0, %.thread450 ], [ %.sroa.10344.sroa.5.0, %.thread461 ], [ 0, %bb.tj ], [ 0, %.thread428 ]
  %.sroa.5.0.i256 = phi i8 [ %.sroa.10344.sroa.0.0, %.thread450 ], [ %.sroa.10344.sroa.0.0, %.thread461 ], [ 0, %bb.tj ], [ 0, %.thread428 ]
  %.sroa.0.0.i257 = phi i8 [ %.sroa.8343.0, %.thread450 ], [ %.sroa.8343.0, %.thread461 ], [ 0, %bb.tj ], [ 0, %.thread428 ]
  %.sroa.14.0..sroa_idx20.i223460 = getelementptr inbounds nuw i8, ptr %i.cr, i64 13
  store i32 %.sroa.21.0.sink, ptr %.sroa.14.0..sroa_idx20.i223460, align 1, !alias.scope !69805, !noalias !69806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  store i8 %.sroa.0.0.i257, ptr %i.cq, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.5.0..sroa_idx2.i258 = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 %.sroa.5.0.i256, ptr %.sroa.5.0..sroa_idx2.i258, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.6.0..sroa_idx4.i259 = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 %.sroa.6.0.i255, ptr %.sroa.6.0..sroa_idx4.i259, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.7.0..sroa_idx6.i260 = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  store i8 %.sroa.7.0.i254, ptr %.sroa.7.0..sroa_idx6.i260, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.8.0..sroa_idx8.i261 = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i8 %.sroa.8.0.i253, ptr %.sroa.8.0..sroa_idx8.i261, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.9.0..sroa_idx10.i262 = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  store i8 %.sroa.9.0.i252, ptr %.sroa.9.0..sroa_idx10.i262, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.10.0..sroa_idx12.i263 = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  store i8 %.sroa.10.0.i251, ptr %.sroa.10.0..sroa_idx12.i263, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.11.0..sroa_idx14.i264 = getelementptr inbounds nuw i8, ptr %i.cq, i64 7
  store i8 %.sroa.11.0.i250, ptr %.sroa.11.0..sroa_idx14.i264, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.12.0..sroa_idx16.i265 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 %.sroa.12.0.i249, ptr %.sroa.12.0..sroa_idx16.i265, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.13.0..sroa_idx18.i266 = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  store i32 %.sroa.13.0.i248, ptr %.sroa.13.0..sroa_idx18.i266, align 1, !alias.scope !69807, !noalias !69808
  %.sroa.14.0..sroa_idx20.i267 = getelementptr inbounds nuw i8, ptr %i.cq, i64 13
  store i32 %.sroa.21.0.sink, ptr %.sroa.14.0..sroa_idx20.i267, align 1, !alias.scope !69807, !noalias !69808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.experimental.noalias.scope.decl(metadata !69809)
  %i.auc = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aud = load ptr, ptr %i.auc, align 8, !alias.scope !69809, !nonnull !28, !noundef !28 ; 4 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.auf = load i64, ptr %i.aue, align 8, !alias.scope !69809, !noundef !28 ; 4 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.auh = load i64, ptr %i.aug, align 8, !alias.scope !69809, !noundef !28 ; 7 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.auj = load i64, ptr %i.aui, align 8, !alias.scope !69809, !noundef !28 ; 2 uses
  %i.auk = add i64 %i.auj, %i.auh                 ; 5 uses
  %i.aul = icmp ugt i64 %i.auh, %i.auk
  %i.aum = icmp ugt i64 %i.auk, %i.auf
  %or.cond.i.i = or i1 %i.aul, %i.aum
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, label %bb.tl, !prof !31

bb.tl:                                            ; preds = %bb.tk
  %i.aun = icmp eq i64 %i.auh, %i.auf
  br i1 %i.aun, label %bb.tp, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.auo = icmp eq i64 %i.auh, 0
  br i1 %i.auo, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.to, %bb.tm
  %i.aup = icmp eq i64 %i.auk, %i.auf
  br i1 %i.aup, label %bb.tp, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.to:                                            ; preds = %bb.tm
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.auh
  %i.aur = load i8, ptr %i.auq, align 1, !alias.scope !69810, !noalias !69809, !noundef !28
  %i.aus = icmp sgt i8 %i.aur, -65
  br i1 %i.aus, label %bb.tn, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.tn
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.auk
  %i.auu = load i8, ptr %i.aut, align 1, !alias.scope !69810, !noalias !69809, !noundef !28
  %i.auv = icmp sgt i8 %i.auu, -65
  br i1 %i.auv, label %bb.tp, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.to, %bb.tk
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aud, i64 noundef %i.auf, i64 noundef %i.auh, i64 noundef %i.auk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %.noexc291 unwind label %bb.ta

.noexc291:                                        ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i
  unreachable

bb.tp:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.tn, %bb.tl
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.auh
  store ptr %i.auw, ptr %i.cp, align 8
  %i.aux = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.auj, ptr %i.aux, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  %i.auy = uitofp i64 %i.ats to double
  %i.auz = icmp ult i32 %i.att, 1000000000
  call void @llvm.assume(i1 %i.auz)
  %i.ava = uitofp nneg i32 %i.att to double
  %i.avb = fdiv double %i.ava, 1.000000e+09
  %i.avc = fadd double %i.avb, %i.auy
  store double %i.avc, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store ptr %i.cr, ptr %i.cn, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr @_RNvXs2_NtCsaBFuFXHOo0Z_12nu_ansi_term4ansiNtB5_6PrefixNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.avd = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.cp, ptr %i.avd, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.436.0..sroa_idx, align 8
  %i.ave = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store ptr %i.co, ptr %i.ave, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store ptr @_RNvXs7_NtNtCsj6eKBz9Db1c_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.440.0..sroa_idx, align 8
  %i.avf = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store ptr %i.cq, ptr %i.avf, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  store ptr @_RNvXs4_NtCsaBFuFXHOo0Z_12nu_ansi_term4ansiNtB5_6SuffixNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @1263, ptr noundef nonnull %i.cn)
          to label %bb.tq unwind label %bb.ta

bb.tq:                                            ; preds = %bb.tp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.td

bb.tr:                                            ; preds = %bb.tb, %.body, %bb.ts
  %i.avg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.ts:                                            ; preds = %bb.an, %bb.al
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9evaluator9EvaluatorEBF_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.cx) #72
          to label %.body unwind label %bb.tr
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe6groups(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 304
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet6groups(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !28, !noundef !28 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !28 ; 3 uses
  %i.l = icmp ult i64 %i.k, 88686269585142076
  tail call void @llvm.assume(i1 %i.l)
  %.idx = mul nuw i64 %i.k, 104                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 5 uses
  %i.n = load i64, ptr %i.f, align 8, !range !43, !noundef !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !69846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69848)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69849
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69853)
  %i.o = mul i64 %i.n, 104                        ; 8 uses
  %i.p = udiv i64 %i.o, 24                        ; 3 uses
  %.not11.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.a
  %i.q = add i64 %.idx, -104                      ; 2 uses
  %i.r = udiv i64 %i.q, 104
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter = and i64 %i.s, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.4.012.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.t = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !69854
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !69832

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.4.012.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.q, 728
  br i1 %i.w, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.4.012.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.4.012.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.x = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !69854
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.i.i, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 208
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !69854
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.i.i, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !69854
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.i.i, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !69854
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.i.i, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 520
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !69854
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.i.i, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 624
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !69854
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.i.i, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 728
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !69854
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.i.i, i64 168
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 832 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !69854
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.am, %i.m
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.a
  %.val2.i.i.i.i.i.i = phi ptr [ %i.i, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i to i64
  %i.ap = ptrtoint ptr %i.i to i64
  %i.aq = sub nuw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = udiv exact i64 %i.aq, 24                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69855
  store ptr %i.i, ptr %i.b, align 8, !noalias !69855
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !noalias !69855
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.at, align 8, !noalias !69855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69856)
  %i.au = ptrtoint ptr %i.m to i64
  %i.av = ptrtoint ptr %.val2.i.i.i.i.i.i to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 104
  store i64 0, ptr %.sroa.5.0..sroa_idx2, align 8, !alias.scope !69857, !noalias !69858
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !69857, !noalias !69858
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx1, align 8, !alias.scope !69857, !noalias !69858
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx3, align 8, !alias.scope !69857, !noalias !69858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69859)
  %i.ay = icmp eq ptr %i.m, %.val2.i.i.i.i.i.i
  br i1 %i.ay, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE32forget_allocation_drop_remainingB10_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i = phi i64 [ %i.ba, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [104 x i8], ptr %.val2.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69862)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !69863, !noalias !69864 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !69863, !noalias !69864, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !69865
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.bd = icmp eq i64 %i.ba, %i.ax
  br i1 %i.bd, label %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE32forget_allocation_drop_remainingB10_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

common.resume.i:                                  ; preds = %bb.n, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.be, %bb.c ], [ %i.bw, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralNtNtBI_6string6StringEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #72, !noalias !69855
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB21_6recipeNtB2X_6Recipe6groups0EEB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #72, !noalias !69858
  br label %common.resume.i

_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE32forget_allocation_drop_remainingB10_.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp ne i64 %i.n, 0
  %i.bf = mul nuw i64 %i.p, 24                    ; 5 uses
  %i.bg = icmp ne i64 %i.o, %i.bf
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.bg, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB1J_6recipeNtB2F_6Recipe6groups0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtBY_6string6StringEEB1J_.exit.i

bb.d:                                             ; preds = %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE32forget_allocation_drop_remainingB10_.exit.i.i.i.i.i
  %i.bh = icmp ult i64 %i.o, 24
  br i1 %i.bh, label %2, label %bb.f

2:                                                ; preds = %bb.d
  %3 = icmp eq i64 %i.o, 0
  br i1 %3, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB1J_6recipeNtB2F_6Recipe6groups0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtBY_6string6StringEEB1J_.exit.i, label %bb.e

bb.e:                                             ; preds = %2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.o, i64 noundef 8) #70, !noalias !69855
  br label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB1J_6recipeNtB2F_6Recipe6groups0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtBY_6string6StringEEB1J_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bi = icmp ule i64 %i.bf, %i.o
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %i.i, i64 noundef %i.o, i64 noundef 8, i64 noundef range(i64 0, -15) %i.bf) #70, !noalias !69855 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.g, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB1J_6recipeNtB2F_6Recipe6groups0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtBY_6string6StringEEB1J_.exit.i, !prof !26

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bf) #71
          to label %bb.h unwind label %bb.c, !noalias !69855

bb.h:                                             ; preds = %bb.g
  unreachable

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB1J_6recipeNtB2F_6Recipe6groups0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtBY_6string6StringEEB1J_.exit.i: ; preds = %bb.f, %bb.e, %2, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE32forget_allocation_drop_remainingB10_.exit.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.bj, %bb.f ], [ %i.i, %_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE32forget_allocation_drop_remainingB10_.exit.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %2 ] ; 7 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !69866, !noalias !69867
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.03.0.i.i.i.i.i, ptr %i.bl, align 8, !alias.scope !69866, !noalias !69867
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ar, ptr %i.bm, align 8, !alias.scope !69866, !noalias !69867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69849
  %i.bn = icmp ult i64 %i.aq, -9223372036854775792
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i, %i.i
  br i1 %i.bo, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB1J_6recipeNtB2F_6Recipe6groups0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtBY_6string6StringEEB1J_.exit.i
  %i.bp = icmp ult i64 %i.aq, 48
  br i1 %i.bp, label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i, label %bb.j, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp ult i64 %i.aq, 504
  br i1 %i.bq, label %bb.l, label %bb.k, !prof !29

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainNtNtCs4wP2HXfJTCR_5alloc6string6StringNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtB13_3vec3VecBZ_EECsgYJ0xFPoqCG_13clap_complete(ptr noalias nofree noundef nonnull align 8 %.sroa.03.0.i.i.i.i.i, i64 noundef range(i64 1, 384307168202282326) %i.ar, ptr noalias nofree noundef nonnull %i.a) #74
          to label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i unwind label %bb.n, !noalias !69846

bb.l:                                             ; preds = %bb.j
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs4wP2HXfJTCR_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %.sroa.03.0.i.i.i.i.i, i64 noundef range(i64 1, 384307168202282326) %i.ar)
  br label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB1J_6recipeNtB2F_6Recipe6groups0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtBY_6string6StringEEB1J_.exit.i
  store ptr null, ptr %0, align 8, !alias.scope !69845, !noalias !69868
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !69845, !noalias !69868
  %i.br = icmp ult i64 %i.o, 24
  br i1 %i.br, label %_RINvXsd_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB3M_6recipeNtB4I_6Recipe6groups0EEB3M_.exit, label %bb.m

bb.m:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.03.0.i.i.i.i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !69869
  br label %_RINvXsd_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB3M_6recipeNtB4I_6Recipe6groups0EEB3M_.exit

_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !69846
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 %i.aq
  store ptr %.sroa.03.0.i.i.i.i.i, ptr %i.d, align 8, !noalias !69846
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.p, ptr %i.bt, align 8, !noalias !69846
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.03.0.i.i.i.i.i, ptr %i.bu, align 8, !noalias !69846
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bs, ptr %i.bv, align 8, !noalias !69846
  call fastcc void @_RINvMse_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringE16from_sorted_iterINtNtNtBc_3vec9into_iter8IntoIterB18_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.d), !noalias !69868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !69846
  br label %_RINvXsd_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB3M_6recipeNtB4I_6Recipe6groups0EEB3M_.exit

bb.n:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #72, !noalias !69846
  br label %common.resume.i

_RINvXsd_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB6_8BTreeSetNtNtBc_6string6StringEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB1B_8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENCNvMs_NtB3M_6recipeNtB4I_6Recipe6groups0EEB3M_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i, %bb.m, %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortNtNtB4_6string6StringNvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69846
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute15remove_required(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 3, 8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [216 x i8], align 8               ; 9 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %.sroa.6.sroa.5 = alloca [72 x i8], align 8     ; 5 uses
  %.sroa.6.sroa.6 = alloca [40 x i8], align 8     ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69896)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69897)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !69898, !noalias !69899, !noundef !28 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !69898, !noalias !69899, !noundef !28
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.aa, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.z, %bb.f ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2386
  %i.i = load i16, ptr %i.h, align 2, !noalias !69900, !noundef !28 ; 2 uses
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.j, 4
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.idx
  %i.l = icmp eq i16 %i.i, 0
  br i1 %i.l, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i75, i64 16 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.8.0.i.i.i.i74, 1
  %i.o = icmp eq ptr %i.m, %i.k
  br i1 %i.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.01.i.i.i.i75 = phi ptr [ %i.m, %bb.d ], [ %.sroa.0.0.i.i.i, %bb.c ] ; 3 uses
  %.sroa.8.0.i.i.i.i74 = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.0.01.i.i.i.i75, align 8, !noalias !69900, !nonnull !28, !noundef !28
  %i.p = getelementptr i8, ptr %.sroa.0.01.i.i.i.i75, i64 8
  %.val6.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !69900, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 3, 9) %3, i64 %.val6.i.i.i.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %2, ptr nonnull readonly %.val.i.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !69901, !noalias !69902 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %3, %.val6.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  switch i8 %i.u, label %bb.e [
    i8 -1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge
    i8 0, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1f_10expression10ExpressionEEE12remove_entryeEB1f_.exit.i
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge: ; preds = %bb.d, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i, %bb.c
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %.sroa.8.0.i.i.i.i74, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i ] ; 2 uses
  %i.v = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.v, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2392
  %i.x = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.4.0.i.ph.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !noalias !69903, !nonnull !28, !noundef !28
  %i.aa = add i64 %.sroa.3.0.i.i.i, -1
  br label %bb.c

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1f_10expression10ExpressionEEE12remove_entryeEB1f_.exit.i: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69904
  store ptr %.sroa.0.0.i.i.i, ptr %i.a, align 8, !noalias !69904
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.3.0.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !69904
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.8.0.i.i.i.i74, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !69904
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.ab, align 8, !noalias !69904
  call fastcc void @_RNvMs5_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1s_10expression10ExpressionEEE9remove_kvB1s_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(216) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a), !noalias !69905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69904
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !69906 ; 3 uses
  %i.ac = icmp eq i64 %.pre.i, -2
  br i1 %i.ac, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1f_10expression10ExpressionEEE12remove_entryeEB1f_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  %.sroa.831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.831.sroa.0.0.copyload = load ptr, ptr %.sroa.831.0..sroa_idx, align 8, !noalias !69907
  %.sroa.831.sroa.5.0..sroa.831.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.831.sroa.5.0..sroa.831.0..sroa_idx.sroa_idx, i64 72, i1 false)
  %.sroa.831.sroa.6.0..sroa.831.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.831.sroa.6.0..sroa.831.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not29 = icmp eq i64 %.pre.i, -1
  br i1 %.not29, label %bb.i, label %bb.h

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge, %bb.a, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1f_10expression10ExpressionEEE12remove_entryeEB1f_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.623.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.sroa.6, i64 40, i1 false)
  %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.522.sroa.4.0..sroa.522.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.sroa.5, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.pre.i, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.831.sroa.0.0.copyload, ptr %.sroa.522.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  store i64 -9223372036854775794, ptr %i.c, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !69908
  %i.af = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !69908 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error.exit, !prof !26
end_hunk_2
