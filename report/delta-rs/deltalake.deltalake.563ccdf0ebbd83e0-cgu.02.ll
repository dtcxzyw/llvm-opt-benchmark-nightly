inline.NumInlined: 6368
inline.NumDeleted: 3022
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  %lpad.loopexit282.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp281.i:                          ; preds = %bb.e
  %lpad.loopexit.split-lp283.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp281.i, %.loopexit280.i
  %lpad.phi284.i = phi { ptr, i32 } [ %lpad.loopexit282.i, %.loopexit280.i ], [ %lpad.loopexit.split-lp283.i, %.loopexit.split-lp281.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #29
          to label %.body.i unwind label %bb.f, !noalias !15270

bb.d:                                             ; preds = %bb.b
  br i1 %i.w, label %bb.e, label %bb.k, !prof !39

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #28
          to label %.noexc.i.i unwind label %.loopexit.split-lp281.i, !noalias !15270

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !15270
  unreachable

bb.g:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15264
  %i.y = load i64, ptr %i.o, align 8, !range !229, !noalias !15264, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15264
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.y, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.q unwind label %.loopexit.split-lp286.i

.body.i:                                          ; preds = %bb.df, %bb.cx, %.body118.i, %bb.m, %.loopexit.split-lp286.i, %.loopexit285.i, %bb.c
  %.pn100.i = phi { ptr, i32 } [ %.pn.i, %.body118.i ], [ %lpad.phi284.i, %bb.c ], [ %i.nk, %bb.cx ], [ %i.ae, %bb.m ], [ %i.nr, %bb.df ], [ %lpad.loopexit287.i, %.loopexit285.i ], [ %lpad.loopexit.split-lp288.i, %.loopexit.split-lp286.i ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.body.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body8 unwind label %bb.j

bb.i:                                             ; preds = %.body.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.ds

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.loopexit285.i:                                   ; preds = %bb.o
  %lpad.loopexit287.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp286.i:                          ; preds = %bb.dg, %bb.cy, %bb.r, %bb.g
  %lpad.loopexit.split-lp288.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !15264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15267
  %i.ab = load i64, ptr %i.r, align 8, !alias.scope !15271, !noalias !15274, !noundef !3 ; 3 uses
  %i.ac = load i64, ptr %i.o, align 8, !range !229, !alias.scope !15271, !noalias !15274, !noundef !3
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2pqxYH9ZEk8_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.m, !noalias !15276

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #29
          to label %.body.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.ag = load ptr, ptr %i.q, align 8, !alias.scope !15271, !noalias !15274, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.ai = add i64 %i.ab, 1
  store i64 %i.ai, ptr %i.r, align 8, !alias.scope !15271, !noalias !15274
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.0929.i, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !3, !nonnull !3
  %i.al = invoke { ptr, ptr } %i.ak(ptr noundef nonnull %.sroa.01.0930.i)
          to label %bb.p unwind label %.loopexit285.i ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.am = extractvalue { ptr, ptr } %i.al, 0      ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.q:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %i.g, align 8, !range !20, !noalias !15264, !noundef !3
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !114, !noalias !15264, !noundef !3 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.r, label %bb.s, !prof !39

bb.r:                                             ; preds = %bb.q
  %i.at = load i64, ptr %i.as, align 8, !noalias !15264
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #28
          to label %bb.dt unwind label %.loopexit.split-lp286.i

bb.s:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.as, align 8, !noalias !15264, !nonnull !3, !noundef !3
  %i.av = icmp samesign ule i64 %i.y, %i.ar
  call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15264
  store i64 %i.ar, ptr %i.m, align 8, !noalias !15264
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr %i.au, ptr %i.aw, align 8, !noalias !15264
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 6 uses
  store i64 0, ptr %i.ax, align 8, !noalias !15264
  %i.ay = load ptr, ptr %i.q, align 8, !noalias !15264, !nonnull !3, !noundef !3 ; 2 uses
  %i.az = load i64, ptr %i.r, align 8, !noalias !15264, !noundef !3 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.az, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %._crit_edge952.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %.sroa.016.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.016.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.016.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.016.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.016.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.016.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.016.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.016.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.016.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.8.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.i.sroa.9.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.8.i.sroa.12.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.8.i.sroa.13.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.8.i.sroa.14.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.t

bb.t:                                             ; preds = %.thread.i, %.lr.ph.i
  %.sroa.04.0947.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.bd, %.thread.i ] ; 3 uses
  %.sroa.63.0946.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.63.1.i, %.thread.i ]
  %.sroa.76.0945.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.76.1.i, %.thread.i ]
  %.sroa.78.0944.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.78.1.i, %.thread.i ]
  %.sroa.9022.0943.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.9022.1.i, %.thread.i ]
  %.sroa.6818.sroa.11.sroa.0.0942.i = phi i40 [ undef, %.lr.ph.i ], [ %.sroa.6818.sroa.11.sroa.0.1.i, %.thread.i ]
  %.sroa.9523.0941.i = phi ptr [ undef, %.lr.ph.i ], [ %.sroa.9523.1.i, %.thread.i ]
  %.sroa.99.0940.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.99.1.i, %.thread.i ]
  %.sroa.101.0939.i = phi ptr [ undef, %.lr.ph.i ], [ %.sroa.101.1.i, %.thread.i ]
  %.sroa.102.0938.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.102.1.i, %.thread.i ]
  %.sroa.103.0937.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.103.1.i, %.thread.i ]
  %.sroa.107.0936.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.107.1.i, %.thread.i ]
  %.sroa.110.0934.i = phi i1 [ undef, %.lr.ph.i ], [ %.sroa.110.2.i.mux.le, %.thread.i ]
  %.sroa.6818.sroa.961.0933.i = phi i8 [ undef, %.lr.ph.i ], [ %.sroa.6818.sroa.961.1.i, %.thread.i ]
  %.sroa.6818.sroa.9.0932.i = phi i8 [ undef, %.lr.ph.i ], [ %.sroa.6818.sroa.9.1.i, %.thread.i ]
  %.sroa.6818.sroa.0.0931.i = phi i8 [ undef, %.lr.ph.i ], [ %.sroa.6818.sroa.0.1.i, %.thread.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.0947.i, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.0947.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !3, !noundef !3
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.0947.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !3 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15264
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 2)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

._crit_edge.i:                                    ; preds = %.thread.i
  %.pre.i = load ptr, ptr %i.aw, align 8, !noalias !15264 ; 3 uses
  %.pre1653.i = load i64, ptr %i.ax, align 8, !noalias !15264 ; 3 uses
  %.idx957.i = shl nuw nsw i64 %.pre1653.i, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx957.i
  %.not958.i = icmp eq i64 %.pre1653.i, 0
  br i1 %.not958.i, label %._crit_edge952.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !15264 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  %invariant.op953.i = add i64 %i.bk, 2
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15264
  store ptr %.pre.i, ptr %i.k, align 8, !noalias !15264
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15264
  store ptr %i.k, ptr %i.j, align 8, !noalias !15264
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.461.0..sroa_idx.i, align 8, !noalias !15264
  %i.bo = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @183, ptr noundef nonnull @116, ptr noundef nonnull %i.j)
          to label %bb.v unwind label %.loopexit.loopexit.split-lp.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15264
  br i1 %i.bo, label %bb.de, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15264
  %.not959.peel.i = icmp eq i64 %.pre1653.i, 1
  br i1 %.not959.peel.i, label %._crit_edge952.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.w
  call void @llvm.assume(i1 %i.bl)
  br label %bb.dc

.body118.i:                                       ; preds = %bb.do, %bb.dl, %bb.dj, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.loopexit.split-lp.i, %.loopexit.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.i, %bb.dj ], [ %i.nu, %bb.dl ], [ %lpad.loopexit1649.i, %bb.do ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit268.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit273.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit275.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit278.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit1641.i, %.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp1642.i, %.loopexit.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.m) #29
          to label %.body.i unwind label %bb.ds

.loopexit.loopexit.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i122.i, %bb.dc
  %lpad.loopexit1641.i = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

.loopexit.loopexit.split-lp.i:                    ; preds = %bb.u
  %lpad.loopexit.split-lp1642.i = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph1805
  %lpad.loopexit268.i = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i
  %lpad.loopexit273.i = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.cw, %bb.cs
  %lpad.loopexit275.i = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.t
  %lpad.loopexit278.i = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %.invoke.i, %.loopexit1633.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

bb.x:                                             ; preds = %bb.t
  %.sroa.016.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !15264
  %.sroa.016.sroa.0.0.copyload.i.fr = freeze i64 %.sroa.016.sroa.0.0.copyload.i ; 2 uses
  %.sroa.016.sroa.4.0.copyload.i = load i64, ptr %.sroa.016.sroa.4.0..sroa_idx.i, align 8, !noalias !15264
  %.sroa.016.sroa.6.0.copyload.i = load i64, ptr %.sroa.016.sroa.6.0..sroa_idx.i, align 8, !noalias !15264 ; 3 uses
  %.sroa.016.sroa.7.0.copyload.i = load i64, ptr %.sroa.016.sroa.7.0..sroa_idx.i, align 8, !noalias !15264 ; 2 uses
  %.sroa.016.sroa.8.0.copyload.i = load i64, ptr %.sroa.016.sroa.8.0..sroa_idx.i, align 8, !noalias !15264
  %.sroa.016.sroa.10.0.copyload.i = load i64, ptr %.sroa.016.sroa.10.0..sroa_idx.i, align 8, !noalias !15264
  %.sroa.016.sroa.12.0.copyload.i = load ptr, ptr %.sroa.016.sroa.12.0..sroa_idx.i, align 8, !noalias !15264 ; 16 uses
  %.sroa.016.sroa.13.0.copyload.i = load i64, ptr %.sroa.016.sroa.13.0..sroa_idx.i, align 8, !noalias !15264 ; 40 uses
  %.sroa.016.sroa.14.0.copyload.i = load ptr, ptr %.sroa.016.sroa.14.0..sroa_idx.i, align 8, !noalias !15264 ; 5 uses
  %.sroa.016.sroa.15.0.copyload.i = load i64, ptr %.sroa.016.sroa.15.0..sroa_idx.i, align 8, !noalias !15264 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15264
  %.sroa.93.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.016.sroa.6.0.copyload.i to i8
  %.sroa.93.sroa.978.0.extract.shift.i = lshr i64 %.sroa.016.sroa.6.0.copyload.i, 16
  %.sroa.93.sroa.978.0.extract.trunc.i = trunc i64 %.sroa.93.sroa.978.0.extract.shift.i to i8
  %.not.i2.i.i = icmp eq i64 %.sroa.016.sroa.0.0.copyload.i.fr, 2
  %i.bp = trunc nuw i64 %.sroa.016.sroa.0.0.copyload.i.fr to i1
  %i.bq = add nsw i64 %.sroa.016.sroa.15.0.copyload.i, -1 ; 3 uses
  %i.br = and i64 %.sroa.016.sroa.6.0.copyload.i, -16711936 ; 2 uses
  br label %.loopexit271.i

.loopexit271.i:                                   ; preds = %.loopexit271.i.backedge, %bb.x
  %.sroa.6818.sroa.0.1.i = phi i8 [ %.sroa.6818.sroa.0.0931.i, %bb.x ], [ %.sroa.6818.sroa.0.8.i, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.6818.sroa.9.1.i = phi i8 [ %.sroa.6818.sroa.9.0932.i, %bb.x ], [ %.sroa.6818.sroa.9.2.i.lcssa, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.6818.sroa.961.1.i = phi i8 [ %.sroa.6818.sroa.961.0933.i, %bb.x ], [ %.sroa.6818.sroa.961.7.i, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.110.1.i = phi i1 [ %.sroa.110.0934.i, %bb.x ], [ %.sroa.110.7.i, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.107.1.i = phi i64 [ %.sroa.107.0936.i, %bb.x ], [ %.sroa.107.2.i.lcssa, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.103.1.i = phi i64 [ %.sroa.103.0937.i, %bb.x ], [ %.sroa.103.4.i, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.102.1.i = phi i64 [ %.sroa.102.0938.i, %bb.x ], [ %.sroa.102.2.i.lcssa, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.101.1.i = phi ptr [ %.sroa.101.0939.i, %bb.x ], [ %.sroa.101.2.i.lcssa, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.99.1.i = phi i64 [ %.sroa.99.0940.i, %bb.x ], [ %.sroa.99.2.i.lcssa, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.9523.1.i = phi ptr [ %.sroa.9523.0941.i, %bb.x ], [ %.sroa.9523.2.i.lcssa, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.6818.sroa.11.sroa.0.1.i = phi i40 [ %.sroa.6818.sroa.11.sroa.0.0942.i, %bb.x ], [ %.sroa.6818.sroa.11.sroa.0.2.i.lcssa, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.9022.1.i = phi i64 [ %.sroa.9022.0943.i, %bb.x ], [ %.sroa.9022.8.i, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.93.sroa.0.0.i = phi i8 [ %.sroa.93.sroa.0.0.extract.trunc.i, %bb.x ], [ %.sroa.93.sroa.0.1.i.lcssa, %.loopexit271.i.backedge ] ; 11 uses
  %.sroa.78.1.i = phi i64 [ %.sroa.78.0944.i, %bb.x ], [ %.sroa.78.8.i, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.76.1.i = phi i64 [ %.sroa.76.0945.i, %bb.x ], [ %.sroa.76.2.i.lcssa, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.93.sroa.978.0.i = phi i8 [ %.sroa.93.sroa.978.0.extract.trunc.i, %bb.x ], [ %.sroa.93.sroa.978.1.i.lcssa, %.loopexit271.i.backedge ] ; 10 uses
  %.sroa.63.1.i = phi i64 [ %.sroa.63.0946.i, %bb.x ], [ %.sroa.63.8.i, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.5815.0.i = phi i64 [ 2, %bb.x ], [ %.sroa.5815.11147.i, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.54.0.i = phi i1 [ false, %bb.x ], [ %.sroa.54.1.i.lcssa, %.loopexit271.i.backedge ] ; 2 uses
  %.sroa.44.0.i = phi i64 [ 0, %bb.x ], [ %.sroa.44.1.i.lcssa, %.loopexit271.i.backedge ] ; 9 uses
  %.sroa.317.0.i = phi i64 [ %.sroa.016.sroa.10.0.copyload.i, %bb.x ], [ %.sroa.317.1.i.lcssa, %.loopexit271.i.backedge ] ; 13 uses
  %.sroa.19.0.i = phi i64 [ %.sroa.016.sroa.8.0.copyload.i, %bb.x ], [ %.sroa.19.1.i.lcssa, %.loopexit271.i.backedge ] ; 13 uses
  %.sroa.5.0.i = phi i64 [ %.sroa.016.sroa.4.0.copyload.i, %bb.x ], [ %.sroa.5.1.i.lcssa, %.loopexit271.i.backedge ] ; 35 uses
  %i.bs = icmp eq i64 %.sroa.5815.0.i, 2          ; 2 uses
  %brmerge304 = select i1 %i.bs, i1 true, i1 %.sroa.110.1.i
  br i1 %brmerge304, label %_RNvYNvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitReENtNtNtNtBc_4iter6traits8iterator8Iterator4nextINtNtNtBc_3ops8function6FnOnceTQB5_EE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.lr.ph, label %bb.y

_RNvYNvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitReENtNtNtNtBc_4iter6traits8iterator8Iterator4nextINtNtNtBc_3ops8function6FnOnceTQB5_EE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.lr.ph: ; preds = %.loopexit271.i
  %brmerge = select i1 %.not.i2.i.i, i1 true, i1 %.sroa.54.0.i
  br i1 %brmerge, label %.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvYNvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitReENtNtNtNtBc_4iter6traits8iterator8Iterator4nextINtNtNtBc_3ops8function6FnOnceTQB5_EE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.sroa.12.0.copyload.i) ]
  br i1 %i.bp, label %bb.bs, label %.preheader.i134.i

bb.y:                                             ; preds = %._crit_edge, %.loopexit271.i
  %.sroa.63.2.i.lcssa302 = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %._crit_edge ], [ %.sroa.63.1.i, %.loopexit271.i ] ; 38 uses
  %.sroa.6818.sroa.0.2.i.lcssa = phi i8 [ %.sroa.6818.sroa.0.0.extract.trunc.i, %._crit_edge ], [ %.sroa.6818.sroa.0.1.i, %.loopexit271.i ] ; 10 uses
  %.sroa.6818.sroa.9.2.i.lcssa = phi i8 [ %.sroa.6818.sroa.9.0.extract.trunc.i, %._crit_edge ], [ %.sroa.6818.sroa.9.1.i, %.loopexit271.i ] ; 3 uses
  %.sroa.6818.sroa.961.2.i.lcssa = phi i8 [ %.sroa.6818.sroa.961.0.extract.trunc.i, %._crit_edge ], [ %.sroa.6818.sroa.961.1.i, %.loopexit271.i ] ; 9 uses
  %.sroa.107.2.i.lcssa = phi i64 [ %.sroa.4.0.i.i.i.i6.i.i, %._crit_edge ], [ %.sroa.107.1.i, %.loopexit271.i ] ; 7 uses
  %.sroa.103.2.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.sroa.103.1.i, %.loopexit271.i ] ; 9 uses
  %.sroa.102.2.i.lcssa = phi i64 [ %.sroa.8.i.sroa.14.0.copyload.i, %._crit_edge ], [ %.sroa.102.1.i, %.loopexit271.i ] ; 15 uses
  %.sroa.101.2.i.lcssa = phi ptr [ %.sroa.8.i.sroa.13.0.copyload.i, %._crit_edge ], [ %.sroa.101.1.i, %.loopexit271.i ] ; 6 uses
  %.sroa.99.2.i.lcssa = phi i64 [ %.sroa.8.i.sroa.12.0.copyload.i, %._crit_edge ], [ %.sroa.99.1.i, %.loopexit271.i ] ; 37 uses
  %.sroa.9523.2.i.lcssa = phi ptr [ %.sroa.8.i.sroa.11.0.copyload.i, %._crit_edge ], [ %.sroa.9523.1.i, %.loopexit271.i ] ; 17 uses
  %.sroa.6818.sroa.11.sroa.0.2.i.lcssa = phi i40 [ %.sroa.6818.sroa.11.0.extract.trunc.i, %._crit_edge ], [ %.sroa.6818.sroa.11.sroa.0.1.i, %.loopexit271.i ] ; 3 uses
  %.sroa.9022.2.i.lcssa = phi i64 [ %.sroa.8.i.sroa.9.0.copyload.i, %._crit_edge ], [ %.sroa.9022.1.i, %.loopexit271.i ] ; 12 uses
  %.sroa.93.sroa.0.1.i.lcssa = phi i8 [ %.sroa.93.sroa.0.4128.i, %._crit_edge ], [ %.sroa.93.sroa.0.0.i, %.loopexit271.i ]
  %.sroa.78.2.i.lcssa = phi i64 [ %.sroa.8.i.sroa.7.0.copyload.i, %._crit_edge ], [ %.sroa.78.1.i, %.loopexit271.i ] ; 12 uses
  %.sroa.76.2.i.lcssa = phi i64 [ %.sroa.8.i.sroa.6.0.copyload.i, %._crit_edge ], [ %.sroa.76.1.i, %.loopexit271.i ] ; 3 uses
  %.sroa.93.sroa.978.1.i.lcssa = phi i8 [ %.sroa.93.sroa.978.3130.i, %._crit_edge ], [ %.sroa.93.sroa.978.0.i, %.loopexit271.i ]
  %.sroa.5815.1.i.lcssa = phi i64 [ %.sroa.0.0.copyload30.i.i, %._crit_edge ], [ %.sroa.5815.0.i, %.loopexit271.i ]
  %.sroa.54.1.i.lcssa = phi i1 [ %.sroa.54.3.i, %._crit_edge ], [ %.sroa.54.0.i, %.loopexit271.i ]
  %.sroa.44.1.i.lcssa = phi i64 [ %.sroa.44.2.i, %._crit_edge ], [ %.sroa.44.0.i, %.loopexit271.i ]
  %.sroa.317.1.i.lcssa = phi i64 [ %.sroa.317.4134.i, %._crit_edge ], [ %.sroa.317.0.i, %.loopexit271.i ]
  %.sroa.19.1.i.lcssa = phi i64 [ %.sroa.19.4138.i, %._crit_edge ], [ %.sroa.19.0.i, %.loopexit271.i ]
  %.sroa.5.1.i.lcssa = phi i64 [ %.sroa.5.4140.i, %._crit_edge ], [ %.sroa.5.0.i, %.loopexit271.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9523.2.i.lcssa) ]
  %i.bt = trunc nuw i64 %.sroa.5815.1.i.lcssa to i1
  br i1 %i.bt, label %bb.aj, label %.preheader.i153.i

.preheader.i153.i:                                ; preds = %bb.y
  %i.bu = trunc nuw i8 %.sroa.6818.sroa.961.2.i.lcssa to i1
  br i1 %i.bu, label %.noexc.i, label %.lr.ph.i154.preheader.i

.lr.ph.i154.preheader.i:                          ; preds = %.preheader.i153.i
  %i.bv = trunc nuw i8 %.sroa.6818.sroa.0.2.i.lcssa to i1 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.63.2.i.lcssa302, 0
  br i1 %i.bw, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i154.preheader.i
  %.not.i.i.i157.peel.i = icmp ult i64 %.sroa.63.2.i.lcssa302, %.sroa.99.2.i.lcssa
  br i1 %.not.i.i.i157.peel.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = icmp eq i64 %.sroa.63.2.i.lcssa302, %.sroa.99.2.i.lcssa
  br i1 %i.bx, label %bb.ac, label %.loopexit1633.invoke.i

bb.ab:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.9523.2.i.lcssa, i64 %.sroa.63.2.i.lcssa302
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !15277, !noalias !15280, !noundef !3
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.ac, label %.loopexit1633.invoke.i

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.i154.preheader.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.9523.2.i.lcssa, i64 %.sroa.63.2.i.lcssa302 ; 4 uses
  %i.cc = icmp samesign eq i64 %.sroa.63.2.i.lcssa302, %.sroa.99.2.i.lcssa
  br i1 %i.cc, label %.loopexit1603.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = load i8, ptr %i.cb, align 1, !noalias !15287, !noundef !3 ; 5 uses
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %bb.ae, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i158.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i158.peel.i: ; preds = %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cg = and i8 %i.cd, 31
  %i.ch = zext nneg i8 %i.cg to i32               ; 3 uses
  %i.ci = add nuw nsw i64 %.sroa.63.2.i.lcssa302, 1
  %i.cj = icmp samesign ne i64 %i.ci, %.sroa.99.2.i.lcssa
  call void @llvm.assume(i1 %i.cj)
  %i.ck = load i8, ptr %i.cf, align 1, !noalias !15287, !noundef !3
  %i.cl = shl nuw nsw i32 %i.ch, 6
  %i.cm = and i8 %i.ck, 63
  %i.cn = zext nneg i8 %i.cm to i32               ; 2 uses
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = icmp samesign ugt i8 %i.cd, -33
  br i1 %i.cp, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i166.peel.i, label %bb.af

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i166.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i158.peel.i
end_hunk_0
