Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9histogram11find_anchorINtNtB4_5utils12OffsetLookupjEB11_ECskXtk6F4WjxZ_4just:bb.a
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !21041
  store i8 1, ptr %i.h, align 8, !noalias !21041
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.u

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.i, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %.loopexit.split-lp
  call void @llvm.experimental.noalias.scope.decl(metadata !21042)
  call void @llvm.experimental.noalias.scope.decl(metadata !21043)
  call void @llvm.experimental.noalias.scope.decl(metadata !21044)
  call void @llvm.experimental.noalias.scope.decl(metadata !21045)
  call void @llvm.experimental.noalias.scope.decl(metadata !21046)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !21047, !noundef !28 ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !21048)
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !21049, !noundef !28 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.e, align 8, !alias.scope !21049, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 16, !noalias !21050
  %i.v = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = bitcast <16 x i1> %i.v to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.u, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.x, %bb.e ], [ %i.ag, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.aj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.y = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.z = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !21051
  %i.aa = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -512 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aa to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ad = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = and i16 %i.ad, %.lcssa.i.i.i.i.i.i.i
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !21052, !noalias !21049 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.am = getelementptr i8, ptr %i.ai, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !21049, !nonnull !28, !noundef !28
  %i.an = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !21053
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.ao = icmp eq i64 %i.aj, 0
  br i1 %i.ao, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.d
  %i.ap = shl i64 %i.p, 5                         ; 2 uses
  %i.aq = add i64 %i.ap, 32                       ; 2 uses
  %i.ar = add i64 %i.p, 17
  %i.as = add i64 %i.ar, %i.aq                    ; 4 uses
  %i.at = icmp uge i64 %i.as, %i.aq
  %i.au = icmp ult i64 %i.as, 9223372036854775793
  call void @llvm.assume(i1 %i.at)
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.as, 0
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !21047, !nonnull !28, !noundef !28
  %i.ax = sub nuw nsw i64 -32, %i.ap
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 16) #70, !noalias !21047
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.bt, %bb.bn, %bb.bi
  %lpad.loopexit383 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %select.unfold342.invoke, %.invoke
  %lpad.loopexit.split-lp384 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit383, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp384, %.loopexit.split-lp.loopexit.split-lp ]
  %.val97 = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val98 = load i64, ptr %i.az, align 8, !noundef !28 ; 3 uses
  %i.ba = icmp eq i64 %.val98, 0
  br i1 %i.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %.loopexit.split-lp
  %i.bb = shl i64 %.val98, 4                      ; 2 uses
  %i.bc = add i64 %i.bb, 16                       ; 2 uses
  %i.bd = add i64 %.val98, 17
  %i.be = add i64 %i.bd, %i.bc                    ; 4 uses
  %i.bf = icmp uge i64 %i.be, %i.bc
  %i.bg = icmp ult i64 %i.be, 9223372036854775793
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97) ]
  %i.bh = icmp eq i64 %i.be, 0
  br i1 %i.bh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.bi = sub nuw nsw i64 -16, %i.bb
  %i.bj = getelementptr inbounds i8, ptr %.val97, i64 %i.bi
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 16) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit

bb.j:                                             ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i
  %.pre1.i.i104 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.m, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.bk = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.l, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ] ; 3 uses
  %i.bl = add i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  store i64 %i.bk, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  store i64 %.pre1.i.i104, ptr %.sroa.549.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bm = add i64 %i.bk, 2
  store i64 %i.bm, ptr %i.g, align 8, !noalias !21054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  store i64 %i.bl, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  store i64 %.pre1.i.i104, ptr %.sroa.552.0..sroa_idx, align 8
  %i.bn = icmp ult i64 %2, %3
  br i1 %i.bn, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !21055, !noalias !21056, !noundef !28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !21055, !noalias !21056, !noundef !28 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br label %bb.k

.preheader:                                       ; preds = %bb.bx, %bb.j
  %i.by = icmp ult i64 %5, %6
  br i1 %i.by, label %.lr.ph563.lr.ph, label %.outer._crit_edge.thread

.lr.ph563.lr.ph:                                  ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ca = load i64, ptr %i.bz, align 8            ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cc = load i64, ptr %i.cb, align 8            ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !28 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load i64, ptr %i.ch, align 8            ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i64, ptr %i.cj, align 8            ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !28 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %invariant.op638 = xor i64 %i.ci, -1
  %invariant.op652 = xor i64 %i.ca, -1
  %9 = add i64 %3, -1
  br label %.lr.ph563

bb.k:                                             ; preds = %.lr.ph, %bb.bx
  %.sroa.053.0560 = phi i64 [ %2, %.lr.ph ], [ %i.cp, %bb.bx ] ; 3 uses
  %i.cp = add i64 %.sroa.053.0560, 1              ; 2 uses
  %i.cq = sub i64 %.sroa.053.0560, %i.bp          ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %i.br
  br i1 %i.cr, label %bb.bd, label %.invoke

.invoke.loopexit1150.split.loop.exit:             ; preds = %.lr.ph578.split.us
  %.reass639.mux.le = select i1 %i.hr, i64 %.reass639, i64 %.reass653
  %.mux.le = select i1 %i.hr, i64 %i.ck, i64 %i.cc
  %.mux1034.le = select i1 %i.hr, ptr @347, ptr @348
  br label %.invoke

.invoke.loopexit1150.split.loop.exit1301:         ; preds = %bb.af
  %.mux1038.le = select i1 %i.id, i64 %i.ic, i64 %i.hk
  %.mux1039.le = select i1 %i.id, i64 %i.ck, i64 %i.cc
  %.mux1040.le = select i1 %i.id, ptr @349, ptr @350
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.w, %.invoke.loopexit1150.split.loop.exit, %.invoke.loopexit1150.split.loop.exit1301, %bb.ah, %.lr.ph578.split, %bb.aj, %.lr.ph1132
  %i.cs = phi i64 [ %i.io, %bb.ah ], [ %.mux1038.le, %.invoke.loopexit1150.split.loop.exit1301 ], [ %i.fh, %bb.w ], [ %i.cc, %bb.aj ], [ %i.iy, %.lr.ph1132 ], [ %i.ij, %.lr.ph578.split ], [ %.reass639.mux.le, %.invoke.loopexit1150.split.loop.exit ], [ %i.cq, %bb.k ]
  %i.ct = phi i64 [ %i.cc, %bb.ah ], [ %.mux1039.le, %.invoke.loopexit1150.split.loop.exit1301 ], [ %i.cc, %bb.w ], [ %i.cc, %bb.aj ], [ %i.ck, %.lr.ph1132 ], [ %i.ck, %.lr.ph578.split ], [ %.mux.le, %.invoke.loopexit1150.split.loop.exit ], [ %i.br, %bb.k ]
  %i.cu = phi ptr [ @348, %bb.ah ], [ %.mux1040.le, %.invoke.loopexit1150.split.loop.exit1301 ], [ @346, %bb.w ], [ @350, %bb.aj ], [ @349, %.lr.ph1132 ], [ @347, %.lr.ph578.split ], [ %.mux1034.le, %.invoke.loopexit1150.split.loop.exit ], [ @354, %bb.k ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu) #75
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.outer._crit_edge.loopexit:                       ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread
  %i.cv = select i1 %.sroa.02.1, i64 2, i64 1
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.outer._crit_edge.loopexit
  %.sroa.9.0.ph.lcssa549 = phi i64 [ %.sroa.9.0.ph641, %.outer._crit_edge.loopexit ], [ %.sroa.9.1.lcssa, %.outer ]
  %.sroa.7.0.ph.lcssa538 = phi i64 [ %.sroa.7.0.ph642, %.outer._crit_edge.loopexit ], [ %.sroa.7.1.lcssa, %.outer ]
  %.sroa.443.0.ph.lcssa527 = phi i64 [ %.sroa.443.0.ph643, %.outer._crit_edge.loopexit ], [ %.sroa.443.1.lcssa, %.outer ]
  %.sroa.041.0.ph.lcssa516 = phi i64 [ %.sroa.041.0.ph644, %.outer._crit_edge.loopexit ], [ %.sroa.041.1.lcssa, %.outer ]
  %.sroa.02.0.lcssa = phi i64 [ %i.cv, %.outer._crit_edge.loopexit ], [ 2, %.outer ]
  %i.cw = trunc nuw i64 %.sroa.041.0.ph.lcssa516 to i1
  br i1 %i.cw, label %bb.m, label %.outer._crit_edge.thread

bb.l:                                             ; preds = %.lr.ph563, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread
  %.sroa.02.0562 = phi i1 [ %.sroa.02.0.ph646, %.lr.ph563 ], [ %.sroa.02.1, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread ] ; 2 uses
  %.sroa.055.0561 = phi i64 [ %.sroa.055.0.ph640, %.lr.ph563 ], [ %i.cx, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread ] ; 9 uses
  %i.cx = add nuw i64 %.sroa.055.0561, 1          ; 6 uses
  %i.cy = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
          to label %bb.v unwind label %.loopexit

bb.m:                                             ; preds = %.outer._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.443.0.ph.lcssa527, ptr %i.cz, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.ph.lcssa538, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.ph.lcssa549, ptr %.sroa.546.0..sroa_idx, align 8
  br label %.loopexit382

.outer._crit_edge.thread:                         ; preds = %.preheader, %.outer._crit_edge
  %.sroa.02.0.lcssa875 = phi i64 [ %.sroa.02.0.lcssa, %.outer._crit_edge ], [ 1, %.preheader ]
  store i64 %.sroa.02.0.lcssa875, ptr %0, align 8
  %.val93 = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val94 = load i64, ptr %i.da, align 8, !noundef !28 ; 3 uses
  %i.db = icmp eq i64 %.val94, 0
  br i1 %i.db, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit108, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i107

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i107: ; preds = %.outer._crit_edge.thread
  %i.dc = shl i64 %.val94, 4                      ; 2 uses
  %i.dd = add i64 %i.dc, 16                       ; 2 uses
  %i.de = add i64 %.val94, 17
  %i.df = add i64 %i.de, %i.dd                    ; 4 uses
  %i.dg = icmp uge i64 %i.df, %i.dd
  %i.dh = icmp ult i64 %i.df, 9223372036854775793
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.assume(i1 %i.dh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val93) ]
  %i.di = icmp eq i64 %i.df, 0
  br i1 %i.di, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit108, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i107
  %i.dj = sub nuw nsw i64 -16, %i.dc
  %i.dk = getelementptr inbounds i8, ptr %.val93, i64 %i.dj
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dk, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) 16) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit108

.loopexit382:                                     ; preds = %bb.v, %bb.m
  %storemerge67 = phi i64 [ 0, %bb.m ], [ 2, %bb.v ]
  store i64 %storemerge67, ptr %0, align 8
  %.val95 = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val96 = load i64, ptr %i.dl, align 8, !noundef !28 ; 3 uses
  %i.dm = icmp eq i64 %.val96, 0
  br i1 %i.dm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit110, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i109

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i109: ; preds = %.loopexit382
  %i.dn = shl i64 %.val96, 4                      ; 2 uses
  %i.do = add i64 %i.dn, 16                       ; 2 uses
  %i.dp = add i64 %.val96, 17
  %i.dq = add i64 %i.dp, %i.do                    ; 4 uses
  %i.dr = icmp uge i64 %i.dq, %i.do
  %i.ds = icmp ult i64 %i.dq, 9223372036854775793
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95) ]
  %i.dt = icmp eq i64 %i.dq, 0
  br i1 %i.dt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit110, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i109
  %i.du = sub nuw nsw i64 -16, %i.dn
  %i.dv = getelementptr inbounds i8, ptr %.val95, i64 %i.du
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dv, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 16) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit110

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit108: ; preds = %bb.n, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i107, %.outer._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !21057)
  call void @llvm.experimental.noalias.scope.decl(metadata !21058)
  call void @llvm.experimental.noalias.scope.decl(metadata !21059)
  call void @llvm.experimental.noalias.scope.decl(metadata !21060)
  call void @llvm.experimental.noalias.scope.decl(metadata !21061)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !21062, !noundef !28 ; 3 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit129, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit108
  call void @llvm.experimental.noalias.scope.decl(metadata !21063)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !21064, !noundef !28 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i124, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ec = load ptr, ptr %i.e, align 8, !alias.scope !21064, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i111 = load <16 x i8>, ptr %i.ec, align 16, !noalias !21065
  %i.ed = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i111, splat (i8 -1)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = bitcast <16 x i1> %i.ed to i16
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i123, %bb.q
  %.sroa.06.017.i.i.i.i.i.i112 = phi ptr [ %i.ec, %bb.q ], [ %.sroa.06.1.i.i.i.i.i.i119, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i123 ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i113 = phi ptr [ %i.ee, %bb.q ], [ %.sroa.6.1.i.i.i.i.i.i118, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i123 ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i114 = phi i16 [ %i.ef, %bb.q ], [ %i.eo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i123 ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i115 = phi i64 [ %i.ea, %bb.q ], [ %i.er, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i123 ]
  %.not11.i.i.i.i.i.i.i116 = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i114, 0
  br i1 %.not11.i.i.i.i.i.i.i116, label %.lr.ph.i.i.i.i.i.i.i125, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i117

.lr.ph.i.i.i.i.i.i.i125:                          ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i125
  %i.eg = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.i125 ], [ %.sroa.6.016.i.i.i.i.i.i113, %bb.r ] ; 2 uses
  %i.eh = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i125 ], [ %.sroa.06.017.i.i.i.i.i.i112, %bb.r ]
  %.val9.i.i.i.i.i.i.i126 = load <16 x i8>, ptr %i.eg, align 16, !noalias !21066
  %i.ei = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i126, splat (i8 -1)
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -512 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i127 = bitcast <16 x i1> %i.ei to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i128 = icmp eq i16 %.cast.i.i.i.i.i.i.i127, 0
  br i1 %.not.i.i.i.i.i.i.i128, label %.lr.ph.i.i.i.i.i.i.i125, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i117

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i117: ; preds = %.lr.ph.i.i.i.i.i.i.i125, %bb.r
  %.sroa.6.1.i.i.i.i.i.i118 = phi ptr [ %.sroa.6.016.i.i.i.i.i.i113, %bb.r ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i125 ]
  %.sroa.06.1.i.i.i.i.i.i119 = phi ptr [ %.sroa.06.017.i.i.i.i.i.i112, %bb.r ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i125 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i120 = phi i16 [ %.sroa.87.015.i.i.i.i.i.i114, %bb.r ], [ %.cast.i.i.i.i.i.i.i127, %.lr.ph.i.i.i.i.i.i.i125 ] ; 3 uses
  %i.el = add i16 %.lcssa.i.i.i.i.i.i.i120, -1
  %i.em = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i120, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = and i16 %i.el, %.lcssa.i.i.i.i.i.i.i120
  %i.ep = sub nsw i64 0, %i.en
  %i.eq = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i119, i64 %i.ep ; 2 uses
  %i.er = add i64 %.sroa.108.014.i.i.i.i.i.i115, -1 ; 2 uses
  %i.es = getelementptr i8, ptr %i.eq, i64 -24
  %.val.i.i.i.i.i.i121 = load i64, ptr %i.es, align 8, !alias.scope !21067, !noalias !21064 ; 2 uses
  %i.et = icmp eq i64 %.val.i.i.i.i.i.i121, 0
  br i1 %i.et, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i123, label %bb.s

bb.s:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i117
  %i.eu = getelementptr i8, ptr %i.eq, i64 -16
  %.val5.i.i.i.i.i.i122 = load ptr, ptr %i.eu, align 8, !noalias !21064, !nonnull !28, !noundef !28
  %i.ev = shl nuw i64 %.val.i.i.i.i.i.i121, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i122, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !21068
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i123: ; preds = %bb.s, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i117
  %i.ew = icmp eq i64 %i.er, 0
  br i1 %i.ew, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i124, label %bb.r

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i124: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i123, %bb.p
  %i.ex = shl i64 %i.dx, 5                        ; 2 uses
  %i.ey = add i64 %i.ex, 32                       ; 2 uses
  %i.ez = add i64 %i.dx, 17
  %i.fa = add i64 %i.ez, %i.ey                    ; 4 uses
  %i.fb = icmp uge i64 %i.fa, %i.ey
  %i.fc = icmp ult i64 %i.fa, 9223372036854775793
  call void @llvm.assume(i1 %i.fb)
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp eq i64 %i.fa, 0
  br i1 %i.fd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit129, label %bb.t

bb.t:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i124
  %i.fe = load ptr, ptr %i.e, align 8, !alias.scope !21062, !nonnull !28, !noundef !28
  %i.ff = sub nuw nsw i64 -32, %i.ex
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fg, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 16) #70, !noalias !21062
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit129

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit129: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit108, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i124, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit182, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit129, %bb.c
  ret void

bb.v:                                             ; preds = %bb.l
  br i1 %i.cy, label %.loopexit382, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fh = sub i64 %.sroa.055.0561, %i.ca          ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %i.cc
  br i1 %i.fi, label %bb.x, label %.invoke

bb.x:                                             ; preds = %bb.w
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.fh
  %i.fk = load i64, ptr %i.fj, align 8, !noundef !28 ; 2 uses
  store i64 %i.fk, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !21069)
  %i.fl = load i64, ptr %i.cf, align 8, !alias.scope !21069, !noalias !21070, !noundef !28
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val.i = load i64, ptr %.sroa.448.0..sroa_idx, align 8, !alias.scope !21069, !noalias !21070, !noundef !28
  %.val5.i = load i64, ptr %.sroa.549.0..sroa_idx, align 8, !alias.scope !21069, !noalias !21070, !noundef !28
  %i.fn = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRjECskXtk6F4WjxZ_4just(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !21069 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21071)
  call void @llvm.experimental.noalias.scope.decl(metadata !21072)
  %i.fo = lshr i64 %i.fn, 57
  %i.fp = trunc nuw nsw i64 %i.fo to i8
  %i.fq = load i64, ptr %i.cg, align 8, !alias.scope !21073, !noalias !21074, !noundef !28 ; 2 uses
  %i.fr = load ptr, ptr %i.e, align 8, !alias.scope !21073, !noalias !21074, !nonnull !28, !noundef !28 ; 2 uses
  %i.fs = insertelement <16 x i8> poison, i8 %i.fp, i64 0
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.y ], [ %i.gk, %bb.ab ]
  %.pn.i.i = phi i64 [ %i.fn, %bb.y ], [ %i.gl, %bb.ab ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.fq     ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.fu, align 1, !noalias !21075 ; 2 uses
  %i.fv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.ft
  %i.fw = bitcast <16 x i1> %i.fv to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.fw, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.aa
  %.sroa.06.0.i31.i.i = phi i16 [ %i.gj, %bb.aa ], [ %i.fw, %bb.z ] ; 3 uses
  %i.fx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.fy = zext nneg i16 %i.fx to i64
  %i.fz = add i64 %.sroa.01.0.i.i.i, %i.fy
  %i.ga = and i64 %i.fz, %i.fq
  %i.gb = sub nsw i64 0, %i.ga
  %i.gc = getelementptr inbounds [32 x i8], ptr %i.fr, i64 %i.gb ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -32
  %.val2.i.i.i = load i64, ptr %i.gd, align 8, !noalias !21076, !noundef !28
  %i.ge = icmp eq i64 %i.fk, %.val2.i.i.i
  br i1 %i.ge, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit, label %bb.aa, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.aa, %bb.z
  %i.gf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.gg = bitcast <16 x i1> %i.gf to i16
  %i.gh = icmp eq i16 %i.gg, 0
  br i1 %i.gh, label %bb.ab, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread, !prof !44

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.gi = add i16 %.sroa.06.0.i31.i.i, -1
  %i.gj = and i16 %i.gi, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.gj, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.gk = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.gl = add i64 %.sroa.01.0.i.i.i, %i.gk
  br label %bb.z

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.i.i
  %i.gm = getelementptr inbounds i8, ptr %i.gc, i64 -8
  %i.gn = load i64, ptr %i.gm, align 8, !noundef !28 ; 8 uses
  %i.go = icmp ult i64 %i.gn, 1152921504606846976
  call void @llvm.assume(i1 %i.go)
  %i.gp = icmp samesign ugt i64 %i.gn, 64
  br i1 %i.gp, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit
  %i.gq = getelementptr inbounds i8, ptr %i.gc, i64 -16
  %i.gr = load ptr, ptr %i.gq, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %.idx = shl nuw nsw i64 %i.gn, 3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx
  %i.gt = icmp eq i64 %i.gn, 0
  br i1 %i.gt, label %.outer, label %.lr.ph631

.lr.ph631:                                        ; preds = %bb.ac
  %i.gu = icmp ugt i64 %.sroa.055.0561, %5
  %i.gv = load i64, ptr %i.cn, align 8
  %.fr654 = freeze i64 %i.gv
  %i.gw = icmp eq i64 %.fr654, 0                  ; 2 uses
  %.val.i146 = load i64, ptr %.sroa.451.0..sroa_idx, align 8 ; 2 uses
  %.val5.i147 = load i64, ptr %.sroa.552.0..sroa_idx, align 8 ; 3 uses
  %i.gx = xor i64 %.val.i146, 8317987319222330741
  %i.gy = xor i64 %.val5.i147, 7237128888997146477 ; 3 uses
  %i.gz = xor i64 %.val.i146, 7816392313619706465 ; 2 uses
  %i.ha = add i64 %i.gy, %i.gx                    ; 3 uses
  %i.hb = call i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 13)
  %i.hc = xor i64 %i.hb, %i.ha                    ; 4 uses
  %i.hd = call i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 32) ; 2 uses
  %i.he = call i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 17) ; 2 uses
  %i.hf = load i64, ptr %i.co, align 8            ; 4 uses
  %i.hg = load ptr, ptr %i.d, align 8, !nonnull !28 ; 4 uses
  %.reass653 = add i64 %.sroa.055.0561, %invariant.op652 ; 3 uses
  %i.hh = icmp uge i64 %.reass653, %i.cc
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.reass653
  %i.hj = icmp ult i64 %i.cx, %6
  %i.hk = sub i64 %i.cx, %i.ca                    ; 3 uses
  %i.hl = icmp uge i64 %i.hk, %i.cc
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.hk
  %i.hn = trunc nuw i64 %.sroa.041.0.ph644 to i1
  %invariant.op = xor i64 %.val5.i147, 8387220255154660723
  %10 = add i64 %.sroa.055.0561, 1                ; 2 uses
  %11 = icmp ult i64 %10, %6
  %invariant.op1300 = xor i64 %.val5.i147, 8387220255154660723
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph631, %bb.aq
  %.sroa.03.1629 = phi i64 [ %.sroa.03.0.ph645, %.lr.ph631 ], [ %.sroa.03.2, %bb.aq ] ; 5 uses
  %.sroa.08.0628 = phi ptr [ %i.gr, %.lr.ph631 ], [ %i.ho, %bb.aq ] ; 2 uses
  %.sroa.041.1627 = phi i1 [ %i.hn, %.lr.ph631 ], [ true, %bb.aq ]
  %.sroa.443.1626 = phi i64 [ %.sroa.443.0.ph643, %.lr.ph631 ], [ %.sroa.443.2, %bb.aq ] ; 5 uses
  %.sroa.7.1625 = phi i64 [ %.sroa.7.0.ph642, %.lr.ph631 ], [ %.sroa.7.2, %bb.aq ] ; 4 uses
  %.sroa.9.1624 = phi i64 [ %.sroa.9.0.ph641, %.lr.ph631 ], [ %.sroa.9.2, %bb.aq ] ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.08.0628, i64 8 ; 2 uses
  %i.hp = load i64, ptr %.sroa.08.0628, align 8, !noundef !28 ; 14 uses
  %i.hq = icmp ugt i64 %i.hp, %2
  %or.cond573 = and i1 %i.gu, %i.hq
  br i1 %or.cond573, label %.lr.ph578, label %._crit_edge579

.lr.ph578:                                        ; preds = %bb.ad
  br i1 %i.gw, label %.lr.ph578.split.us, label %.lr.ph578.split

.lr.ph578.split.us:                               ; preds = %.lr.ph578
  %.reass639 = add i64 %i.hp, %invariant.op638    ; 3 uses
  %i.hr = icmp uge i64 %.reass639, %i.ck          ; 4 uses
  %brmerge = select i1 %i.hr, i1 true, i1 %i.hh
  br i1 %brmerge, label %.invoke.loopexit1150.split.loop.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph578.split.us
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.reass639
  %i.ht = load i64, ptr %i.hs, align 8, !noundef !28
  %i.hu = load i64, ptr %i.hi, align 8, !noundef !28
  %i.hv = icmp eq i64 %i.ht, %i.hu
  br i1 %i.hv, label %select.unfold342.invoke, label %._crit_edge579.thread

.outer:                                           ; preds = %bb.aq, %bb.ac
  %.sroa.9.1.lcssa = phi i64 [ %.sroa.9.0.ph641, %bb.ac ], [ %.sroa.9.2, %bb.aq ] ; 2 uses
  %.sroa.7.1.lcssa = phi i64 [ %.sroa.7.0.ph642, %bb.ac ], [ %.sroa.7.2, %bb.aq ] ; 2 uses
  %.sroa.443.1.lcssa = phi i64 [ %.sroa.443.0.ph643, %bb.ac ], [ %.sroa.443.2, %bb.aq ] ; 2 uses
  %.sroa.041.1.lcssa = phi i64 [ %.sroa.041.0.ph644, %bb.ac ], [ 1, %bb.aq ] ; 2 uses
  %.sroa.03.1.lcssa = phi i64 [ %.sroa.03.0.ph645, %bb.ac ], [ %.sroa.03.2, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hw = icmp ult i64 %i.cx, %6
  br i1 %i.hw, label %.lr.ph563, label %.outer._crit_edge

.lr.ph563:                                        ; preds = %.lr.ph563.lr.ph, %.outer
  %.sroa.02.0.ph646 = phi i1 [ false, %.lr.ph563.lr.ph ], [ true, %.outer ]
  %.sroa.03.0.ph645 = phi i64 [ -1, %.lr.ph563.lr.ph ], [ %.sroa.03.1.lcssa, %.outer ] ; 2 uses
  %.sroa.041.0.ph644 = phi i64 [ 0, %.lr.ph563.lr.ph ], [ %.sroa.041.1.lcssa, %.outer ] ; 3 uses
  %.sroa.443.0.ph643 = phi i64 [ undef, %.lr.ph563.lr.ph ], [ %.sroa.443.1.lcssa, %.outer ] ; 3 uses
  %.sroa.7.0.ph642 = phi i64 [ undef, %.lr.ph563.lr.ph ], [ %.sroa.7.1.lcssa, %.outer ] ; 3 uses
  %.sroa.9.0.ph641 = phi i64 [ undef, %.lr.ph563.lr.ph ], [ %.sroa.9.1.lcssa, %.outer ] ; 3 uses
  %.sroa.055.0.ph640 = phi i64 [ %5, %.lr.ph563.lr.ph ], [ %i.cx, %.outer ]
  br label %bb.l

._crit_edge579:                                   ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163, %bb.ai, %bb.ad
  %.sroa.032.0.lcssa = phi i64 [ %i.gn, %bb.ad ], [ %spec.store.select1, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163 ], [ %.sroa.032.0574, %bb.ai ] ; 4 uses
  %.sroa.024.0.lcssa = phi i64 [ %.sroa.055.0561, %bb.ad ], [ %i.in, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163 ], [ %.sroa.024.0575, %bb.ai ] ; 6 uses
  %.sroa.016.0.lcssa = phi i64 [ %i.hp, %bb.ad ], [ %i.ii, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163 ], [ %.sroa.016.0576, %bb.ai ] ; 6 uses
  %i.hx = add i64 %i.hp, 1                        ; 3 uses
  %i.hy = icmp ult i64 %i.hx, %3
  br i1 %i.hy, label %.lr.ph599, label %._crit_edge600

._crit_edge579.thread:                            ; preds = %bb.ae
  %i.hz = add i64 %i.hp, 1                        ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %3
  br i1 %i.ia, label %.lr.ph599.split.us, label %._crit_edge600

.lr.ph599:                                        ; preds = %._crit_edge579
  br i1 %i.gw, label %.lr.ph599.split.us, label %.lr.ph599.split.preheader

.lr.ph599.split.preheader:                        ; preds = %.lr.ph599
  br i1 %11, label %.lr.ph1132, label %._crit_edge600

.lr.ph599.split.us:                               ; preds = %._crit_edge579.thread, %.lr.ph599
  %.sroa.032.0.lcssa879889 = phi i64 [ %.sroa.032.0.lcssa, %.lr.ph599 ], [ %i.gn, %._crit_edge579.thread ] ; 2 uses
  %.sroa.024.0.lcssa881888 = phi i64 [ %.sroa.024.0.lcssa, %.lr.ph599 ], [ %.sroa.055.0561, %._crit_edge579.thread ] ; 2 uses
  %.sroa.016.0.lcssa883887 = phi i64 [ %.sroa.016.0.lcssa, %.lr.ph599 ], [ %i.hp, %._crit_edge579.thread ] ; 2 uses
  %i.ib = phi i64 [ %i.hx, %.lr.ph599 ], [ %i.hz, %._crit_edge579.thread ]
  br i1 %i.hj, label %bb.af, label %._crit_edge600

bb.af:                                            ; preds = %.lr.ph599.split.us
  %i.ic = sub i64 %i.ib, %i.ci                    ; 3 uses
  %i.id = icmp uge i64 %i.ic, %i.ck               ; 4 uses
  %brmerge1037 = select i1 %i.id, i1 true, i1 %i.hl
  br i1 %brmerge1037, label %.invoke.loopexit1150.split.loop.exit1301, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ic
  %i.if = load i64, ptr %i.ie, align 8, !noundef !28
  %i.ig = load i64, ptr %i.hm, align 8, !noundef !28
  %i.ih = icmp eq i64 %i.if, %i.ig
  br i1 %i.ih, label %select.unfold342.invoke, label %._crit_edge600

.lr.ph578.split:                                  ; preds = %.lr.ph578, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163
  %.sroa.016.0576 = phi i64 [ %i.ii, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163 ], [ %i.hp, %.lr.ph578 ] ; 2 uses
  %.sroa.024.0575 = phi i64 [ %i.in, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163 ], [ %.sroa.055.0561, %.lr.ph578 ] ; 2 uses
  %.sroa.032.0574 = phi i64 [ %spec.store.select1, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163 ], [ %i.gn, %.lr.ph578 ] ; 2 uses
  %i.ii = add i64 %.sroa.016.0576, -1             ; 4 uses
  %i.ij = sub i64 %i.ii, %i.ci                    ; 3 uses
  %i.ik = icmp ult i64 %i.ij, %i.ck
  br i1 %i.ik, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %.lr.ph578.split
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ij
  %i.im = load i64, ptr %i.il, align 8, !noundef !28 ; 4 uses
  %i.in = add i64 %.sroa.024.0575, -1             ; 4 uses
  %i.io = sub i64 %i.in, %i.ca                    ; 3 uses
  %i.ip = icmp ult i64 %i.io, %i.cc
  br i1 %i.ip, label %bb.ai, label %.invoke

bb.ai:                                            ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.io
  %i.ir = load i64, ptr %i.iq, align 8, !noundef !28
  %i.is = icmp eq i64 %i.im, %i.ir
  br i1 %i.is, label %.lr.ph.i266, label %._crit_edge579

.lr.ph599.split:                                  ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit
  %i.it = add i64 %12, 1                          ; 2 uses
  %i.iu = icmp ult i64 %i.it, %6
  br i1 %i.iu, label %.lr.ph1132, label %._crit_edge600

._crit_edge600:                                   ; preds = %bb.ak, %.lr.ph599.split, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit, %.lr.ph599.split.preheader, %._crit_edge579.thread, %.lr.ph599.split.us, %bb.ag, %._crit_edge579
  %.sroa.016.0.lcssa882 = phi i64 [ %.sroa.016.0.lcssa, %._crit_edge579 ], [ %.sroa.016.0.lcssa883887, %bb.ag ], [ %.sroa.016.0.lcssa883887, %.lr.ph599.split.us ], [ %i.hp, %._crit_edge579.thread ], [ %.sroa.016.0.lcssa, %.lr.ph599.split.preheader ], [ %.sroa.016.0.lcssa, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit ], [ %.sroa.016.0.lcssa, %.lr.ph599.split ], [ %.sroa.016.0.lcssa, %bb.ak ] ; 4 uses
  %.sroa.024.0.lcssa880 = phi i64 [ %.sroa.024.0.lcssa, %._crit_edge579 ], [ %.sroa.024.0.lcssa881888, %bb.ag ], [ %.sroa.024.0.lcssa881888, %.lr.ph599.split.us ], [ %.sroa.055.0561, %._crit_edge579.thread ], [ %.sroa.024.0.lcssa, %.lr.ph599.split.preheader ], [ %.sroa.024.0.lcssa, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit ], [ %.sroa.024.0.lcssa, %.lr.ph599.split ], [ %.sroa.024.0.lcssa, %bb.ak ] ; 2 uses
  %.sroa.032.1.lcssa = phi i64 [ %.sroa.032.0.lcssa, %._crit_edge579 ], [ %.sroa.032.0.lcssa879889, %bb.ag ], [ %.sroa.032.0.lcssa879889, %.lr.ph599.split.us ], [ %i.gn, %._crit_edge579.thread ], [ %.sroa.032.0.lcssa, %.lr.ph599.split.preheader ], [ %.sroa.032.15951131, %bb.ak ], [ %spec.store.select, %.lr.ph599.split ], [ %spec.store.select, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit ] ; 3 uses
  %.sroa.010.0.lcssa = phi i64 [ %i.hp, %._crit_edge579 ], [ %i.hp, %bb.ag ], [ %i.hp, %.lr.ph599.split.us ], [ %i.hp, %._crit_edge579.thread ], [ %i.hp, %.lr.ph599.split.preheader ], [ %.sroa.010.05971130, %bb.ak ], [ %13, %.lr.ph599.split ], [ %9, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit ]
  %i.iv = sub i64 %.sroa.010.0.lcssa, %.sroa.016.0.lcssa882
  %i.iw = add i64 %i.iv, 1                        ; 3 uses
  %i.ix = icmp ule i64 %i.iw, %.sroa.9.1624
  %or.cond75.not = select i1 %.sroa.041.1627, i1 %i.ix, i1 false
  br i1 %or.cond75.not, label %bb.al, label %bb.ar

.lr.ph1132:                                       ; preds = %.lr.ph599.split.preheader, %.lr.ph599.split
  %12 = phi i64 [ %i.it, %.lr.ph599.split ], [ %10, %.lr.ph599.split.preheader ] ; 2 uses
  %.sroa.032.15951131 = phi i64 [ %spec.store.select, %.lr.ph599.split ], [ %.sroa.032.0.lcssa, %.lr.ph599.split.preheader ] ; 2 uses
  %.sroa.010.05971130 = phi i64 [ %13, %.lr.ph599.split ], [ %i.hp, %.lr.ph599.split.preheader ]
  %13 = phi i64 [ %i.nc, %.lr.ph599.split ], [ %i.hx, %.lr.ph599.split.preheader ] ; 4 uses
  %i.iy = sub i64 %13, %i.ci                      ; 3 uses
  %i.iz = icmp ult i64 %i.iy, %i.ck
  br i1 %i.iz, label %bb.aj, label %.invoke

bb.aj:                                            ; preds = %.lr.ph1132
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.iy
  %i.jb = load i64, ptr %i.ja, align 8, !noundef !28 ; 4 uses
  %i.jc = sub i64 %12, %i.ca                      ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.cc
  br i1 %i.jd, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %bb.aj
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.jc
  %i.jf = load i64, ptr %i.je, align 8, !noundef !28
  %i.jg = icmp eq i64 %i.jb, %i.jf
  br i1 %i.jg, label %.lr.ph.i, label %._crit_edge600

bb.al:                                            ; preds = %._crit_edge600
  %i.jh = icmp eq i64 %i.iw, %.sroa.9.1624
  br i1 %i.jh, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.ji = icmp ult i64 %.sroa.032.1.lcssa, %.sroa.03.1629
  br i1 %i.ji, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jj = icmp eq i64 %.sroa.032.1.lcssa, %.sroa.03.1629
  br i1 %i.jj, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jk = icmp ult i64 %.sroa.016.0.lcssa882, %.sroa.443.1626
  br i1 %i.jk, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jl = icmp eq i64 %.sroa.016.0.lcssa882, %.sroa.443.1626
  %i.jm = icmp ult i64 %.sroa.024.0.lcssa880, %.sroa.7.1625
  %or.cond73 = select i1 %i.jl, i1 %i.jm, i1 false
  br i1 %or.cond73, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an, %bb.al, %bb.ar
  %.sroa.9.2 = phi i64 [ %i.iw, %bb.ar ], [ %.sroa.9.1624, %bb.ap ], [ %.sroa.9.1624, %bb.an ], [ %.sroa.9.1624, %bb.al ] ; 2 uses
  %.sroa.7.2 = phi i64 [ %.sroa.024.0.lcssa880, %bb.ar ], [ %.sroa.7.1625, %bb.ap ], [ %.sroa.7.1625, %bb.an ], [ %.sroa.7.1625, %bb.al ] ; 2 uses
  %.sroa.443.2 = phi i64 [ %.sroa.016.0.lcssa882, %bb.ar ], [ %.sroa.443.1626, %bb.ap ], [ %.sroa.443.1626, %bb.an ], [ %.sroa.443.1626, %bb.al ] ; 2 uses
  %.sroa.03.2 = phi i64 [ %.sroa.032.1.lcssa, %bb.ar ], [ %.sroa.03.1629, %bb.ap ], [ %.sroa.03.1629, %bb.an ], [ %.sroa.03.1629, %bb.al ] ; 2 uses
  %i.jn = icmp eq ptr %i.ho, %i.gs
  br i1 %i.jn, label %.outer, label %bb.ad

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.am, %._crit_edge600
  br label %bb.aq

.lr.ph.i:                                         ; preds = %bb.ak
  %.reass610.reass.reass = xor i64 %i.jb, %invariant.op1300 ; 3 uses
  %i.jo = add i64 %.reass610.reass.reass, %i.gz   ; 2 uses
  %i.jp = call noundef i64 @llvm.fshl.i64(i64 %.reass610.reass.reass, i64 %.reass610.reass.reass, i64 16)
  %i.jq = xor i64 %i.jo, %i.jp                    ; 3 uses
  %i.jr = add i64 %i.hc, %i.jo                    ; 3 uses
  %i.js = add i64 %i.jq, %i.hd                    ; 2 uses
  %i.jt = xor i64 %i.jr, %i.he                    ; 3 uses
  %i.ju = call noundef i64 @llvm.fshl.i64(i64 %i.jq, i64 %i.jq, i64 21)
  %i.jv = call noundef i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 32)
  %i.jw = xor i64 %i.js, %i.jb
  %i.jx = xor i64 %i.js, %i.ju
  %i.jy = xor i64 %i.jx, 576460752303423488       ; 3 uses
  %i.jz = add i64 %i.jt, %i.jw                    ; 3 uses
  %i.ka = add i64 %i.jy, %i.jv                    ; 2 uses
  %i.kb = call noundef i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 13)
  %i.kc = xor i64 %i.kb, %i.jz                    ; 3 uses
  %i.kd = call noundef i64 @llvm.fshl.i64(i64 %i.jy, i64 %i.jy, i64 16)
  %i.ke = xor i64 %i.kd, %i.ka                    ; 3 uses
  %i.kf = call noundef i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 32)
  %i.kg = add i64 %i.ka, %i.kc                    ; 3 uses
  %i.kh = add i64 %i.ke, %i.kf                    ; 2 uses
  %i.ki = call noundef i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 17)
  %i.kj = xor i64 %i.kg, %i.ki                    ; 3 uses
  %i.kk = call noundef i64 @llvm.fshl.i64(i64 %i.ke, i64 %i.ke, i64 21)
  %i.kl = xor i64 %i.kk, %i.kh                    ; 3 uses
  %i.km = call noundef i64 @llvm.fshl.i64(i64 %i.kg, i64 %i.kg, i64 32)
  %i.kn = xor i64 %i.kh, 576460752303423488
  %i.ko = xor i64 %i.km, 255
  %i.kp = add i64 %i.kn, %i.kj                    ; 3 uses
  %i.kq = add i64 %i.kl, %i.ko                    ; 2 uses
  %i.kr = call noundef i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 13)
  %i.ks = xor i64 %i.kp, %i.kr                    ; 3 uses
  %i.kt = call noundef i64 @llvm.fshl.i64(i64 %i.kl, i64 %i.kl, i64 16)
  %i.ku = xor i64 %i.kt, %i.kq                    ; 3 uses
  %i.kv = call noundef i64 @llvm.fshl.i64(i64 %i.kp, i64 %i.kp, i64 32)
  %i.kw = add i64 %i.ks, %i.kq                    ; 3 uses
  %i.kx = add i64 %i.ku, %i.kv                    ; 2 uses
  %i.ky = call noundef i64 @llvm.fshl.i64(i64 %i.ks, i64 %i.ks, i64 17)
  %i.kz = xor i64 %i.kw, %i.ky                    ; 3 uses
  %i.la = call noundef i64 @llvm.fshl.i64(i64 %i.ku, i64 %i.ku, i64 21)
  %i.lb = xor i64 %i.la, %i.kx                    ; 3 uses
  %i.lc = call noundef i64 @llvm.fshl.i64(i64 %i.kw, i64 %i.kw, i64 32)
  %i.ld = add i64 %i.kz, %i.kx                    ; 3 uses
  %i.le = add i64 %i.lb, %i.lc                    ; 2 uses
  %i.lf = call noundef i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.kz, i64 13)
  %i.lg = xor i64 %i.lf, %i.ld                    ; 3 uses
  %i.lh = call noundef i64 @llvm.fshl.i64(i64 %i.lb, i64 %i.lb, i64 16)
  %i.li = xor i64 %i.lh, %i.le                    ; 3 uses
  %i.lj = call noundef i64 @llvm.fshl.i64(i64 %i.ld, i64 %i.ld, i64 32)
  %i.lk = add i64 %i.lg, %i.le                    ; 3 uses
  %i.ll = add i64 %i.li, %i.lj                    ; 2 uses
  %i.lm = call noundef i64 @llvm.fshl.i64(i64 %i.lg, i64 %i.lg, i64 17)
  %i.ln = xor i64 %i.lm, %i.lk                    ; 3 uses
  %i.lo = call noundef i64 @llvm.fshl.i64(i64 %i.li, i64 %i.li, i64 21)
  %i.lp = xor i64 %i.lo, %i.ll                    ; 3 uses
  %i.lq = call noundef i64 @llvm.fshl.i64(i64 %i.lk, i64 %i.lk, i64 32)
  %i.lr = add i64 %i.ln, %i.ll
  %i.ls = add i64 %i.lp, %i.lq                    ; 2 uses
  %i.lt = call noundef i64 @llvm.fshl.i64(i64 %i.ln, i64 %i.ln, i64 13)
  %i.lu = xor i64 %i.lt, %i.lr                    ; 3 uses
  %i.lv = call noundef i64 @llvm.fshl.i64(i64 %i.lp, i64 %i.lp, i64 16)
  %i.lw = xor i64 %i.lv, %i.ls                    ; 2 uses
  %i.lx = add i64 %i.lu, %i.ls                    ; 3 uses
  %i.ly = call noundef i64 @llvm.fshl.i64(i64 %i.lu, i64 %i.lu, i64 17)
  %i.lz = call noundef i64 @llvm.fshl.i64(i64 %i.lw, i64 %i.lw, i64 21)
  %i.ma = call noundef i64 @llvm.fshl.i64(i64 %i.lx, i64 %i.lx, i64 32)
  %i.mb = xor i64 %i.lz, %i.ly
  %i.mc = xor i64 %i.mb, %i.ma
  %i.md = xor i64 %i.mc, %i.lx                    ; 2 uses
  %i.me = lshr i64 %i.md, 57
  %i.mf = trunc nuw nsw i64 %i.me to i8
  %i.mg = insertelement <16 x i8> poison, i8 %i.mf, i64 0
  %i.mh = shufflevector <16 x i8> %i.mg, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.lr.ph.i
  %.sroa.9.0.i.i.i133 = phi i64 [ 0, %.lr.ph.i ], [ %i.my, %bb.au ]
  %.pn.i.i134 = phi i64 [ %i.md, %.lr.ph.i ], [ %i.mz, %bb.au ]
  %.sroa.01.0.i.i.i135 = and i64 %.pn.i.i134, %i.hf ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.01.0.i.i.i135
  %.sroa.0.0.copyload.i24.i.i136 = load <16 x i8>, ptr %i.mi, align 1, !noalias !21077 ; 2 uses
  %i.mj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i136, %i.mh
  %i.mk = bitcast <16 x i1> %i.mj to i16          ; 2 uses
  %.not.i.not30.i.i137 = icmp eq i16 %i.mk, 0
  br i1 %.not.i.not30.i.i137, label %._crit_edge.i.i142, label %.lr.ph.i.i138

.lr.ph.i.i138:                                    ; preds = %bb.as, %bb.at
  %.sroa.06.0.i31.i.i139 = phi i16 [ %i.mx, %bb.at ], [ %i.mk, %bb.as ] ; 3 uses
  %i.ml = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i139, i1 true)
  %i.mm = zext nneg i16 %i.ml to i64
  %i.mn = add i64 %.sroa.01.0.i.i.i135, %i.mm
  %i.mo = and i64 %i.mn, %i.hf
  %i.mp = sub nsw i64 0, %i.mo
  %i.mq = getelementptr inbounds [16 x i8], ptr %i.hg, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -16
  %.val2.i.i.i140 = load i64, ptr %i.mr, align 8, !noalias !21078, !noundef !28
  %i.ms = icmp eq i64 %i.jb, %.val2.i.i.i140
  br i1 %i.ms, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit, label %bb.at, !prof !29

._crit_edge.i.i142:                               ; preds = %bb.at, %bb.as
  %i.mt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i136, splat (i8 -1)
  %i.mu = bitcast <16 x i1> %i.mt to i16
  %i.mv = icmp eq i16 %i.mu, 0
  br i1 %i.mv, label %bb.au, label %select.unfold342.invoke, !prof !44

bb.at:                                            ; preds = %.lr.ph.i.i138
  %i.mw = add i16 %.sroa.06.0.i31.i.i139, -1
  %i.mx = and i16 %i.mw, %.sroa.06.0.i31.i.i139   ; 2 uses
  %.not.i.not.i.i141 = icmp eq i16 %i.mx, 0
  br i1 %.not.i.not.i.i141, label %._crit_edge.i.i142, label %.lr.ph.i.i138

bb.au:                                            ; preds = %._crit_edge.i.i142
  %i.my = add i64 %.sroa.9.0.i.i.i133, 16         ; 2 uses
  %i.mz = add i64 %.sroa.01.0.i.i.i135, %i.my
  br label %bb.as

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.i.i138
  %i.na = getelementptr inbounds i8, ptr %i.mq, i64 -8
  %i.nb = load i64, ptr %i.na, align 8, !noundef !28
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.nb, i64 %.sroa.032.15951131) ; 3 uses
  %i.nc = add nuw i64 %13, 1                      ; 2 uses
  %exitcond797.not = icmp eq i64 %i.nc, %3
  br i1 %exitcond797.not, label %._crit_edge600, label %.lr.ph599.split

.lr.ph.i266:                                      ; preds = %bb.ai
  %.reass.reass.reass = xor i64 %i.im, %invariant.op ; 3 uses
  %i.nd = add i64 %.reass.reass.reass, %i.gz      ; 2 uses
  %i.ne = call noundef i64 @llvm.fshl.i64(i64 %.reass.reass.reass, i64 %.reass.reass.reass, i64 16)
  %i.nf = xor i64 %i.nd, %i.ne                    ; 3 uses
  %i.ng = add i64 %i.hc, %i.nd                    ; 3 uses
  %i.nh = add i64 %i.nf, %i.hd                    ; 2 uses
  %i.ni = xor i64 %i.ng, %i.he                    ; 3 uses
  %i.nj = call noundef i64 @llvm.fshl.i64(i64 %i.nf, i64 %i.nf, i64 21)
  %i.nk = call noundef i64 @llvm.fshl.i64(i64 %i.ng, i64 %i.ng, i64 32)
  %i.nl = xor i64 %i.nh, %i.im
  %i.nm = xor i64 %i.nh, %i.nj
  %i.nn = xor i64 %i.nm, 576460752303423488       ; 3 uses
  %i.no = add i64 %i.ni, %i.nl                    ; 3 uses
  %i.np = add i64 %i.nn, %i.nk                    ; 2 uses
  %i.nq = call noundef i64 @llvm.fshl.i64(i64 %i.ni, i64 %i.ni, i64 13)
  %i.nr = xor i64 %i.nq, %i.no                    ; 3 uses
  %i.ns = call noundef i64 @llvm.fshl.i64(i64 %i.nn, i64 %i.nn, i64 16)
  %i.nt = xor i64 %i.ns, %i.np                    ; 3 uses
  %i.nu = call noundef i64 @llvm.fshl.i64(i64 %i.no, i64 %i.no, i64 32)
  %i.nv = add i64 %i.np, %i.nr                    ; 3 uses
  %i.nw = add i64 %i.nt, %i.nu                    ; 2 uses
  %i.nx = call noundef i64 @llvm.fshl.i64(i64 %i.nr, i64 %i.nr, i64 17)
  %i.ny = xor i64 %i.nv, %i.nx                    ; 3 uses
  %i.nz = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 21)
  %i.oa = xor i64 %i.nz, %i.nw                    ; 3 uses
  %i.ob = call noundef i64 @llvm.fshl.i64(i64 %i.nv, i64 %i.nv, i64 32)
  %i.oc = xor i64 %i.nw, 576460752303423488
  %i.od = xor i64 %i.ob, 255
  %i.oe = add i64 %i.oc, %i.ny                    ; 3 uses
  %i.of = add i64 %i.oa, %i.od                    ; 2 uses
  %i.og = call noundef i64 @llvm.fshl.i64(i64 %i.ny, i64 %i.ny, i64 13)
  %i.oh = xor i64 %i.oe, %i.og                    ; 3 uses
  %i.oi = call noundef i64 @llvm.fshl.i64(i64 %i.oa, i64 %i.oa, i64 16)
  %i.oj = xor i64 %i.oi, %i.of                    ; 3 uses
  %i.ok = call noundef i64 @llvm.fshl.i64(i64 %i.oe, i64 %i.oe, i64 32)
  %i.ol = add i64 %i.oh, %i.of                    ; 3 uses
  %i.om = add i64 %i.oj, %i.ok                    ; 2 uses
  %i.on = call noundef i64 @llvm.fshl.i64(i64 %i.oh, i64 %i.oh, i64 17)
  %i.oo = xor i64 %i.ol, %i.on                    ; 3 uses
  %i.op = call noundef i64 @llvm.fshl.i64(i64 %i.oj, i64 %i.oj, i64 21)
  %i.oq = xor i64 %i.op, %i.om                    ; 3 uses
  %i.or = call noundef i64 @llvm.fshl.i64(i64 %i.ol, i64 %i.ol, i64 32)
  %i.os = add i64 %i.oo, %i.om                    ; 3 uses
  %i.ot = add i64 %i.oq, %i.or                    ; 2 uses
  %i.ou = call noundef i64 @llvm.fshl.i64(i64 %i.oo, i64 %i.oo, i64 13)
  %i.ov = xor i64 %i.ou, %i.os                    ; 3 uses
  %i.ow = call noundef i64 @llvm.fshl.i64(i64 %i.oq, i64 %i.oq, i64 16)
  %i.ox = xor i64 %i.ow, %i.ot                    ; 3 uses
  %i.oy = call noundef i64 @llvm.fshl.i64(i64 %i.os, i64 %i.os, i64 32)
  %i.oz = add i64 %i.ov, %i.ot                    ; 3 uses
  %i.pa = add i64 %i.ox, %i.oy                    ; 2 uses
  %i.pb = call noundef i64 @llvm.fshl.i64(i64 %i.ov, i64 %i.ov, i64 17)
  %i.pc = xor i64 %i.pb, %i.oz                    ; 3 uses
  %i.pd = call noundef i64 @llvm.fshl.i64(i64 %i.ox, i64 %i.ox, i64 21)
  %i.pe = xor i64 %i.pd, %i.pa                    ; 3 uses
  %i.pf = call noundef i64 @llvm.fshl.i64(i64 %i.oz, i64 %i.oz, i64 32)
  %i.pg = add i64 %i.pc, %i.pa
  %i.ph = add i64 %i.pe, %i.pf                    ; 2 uses
  %i.pi = call noundef i64 @llvm.fshl.i64(i64 %i.pc, i64 %i.pc, i64 13)
  %i.pj = xor i64 %i.pi, %i.pg                    ; 3 uses
  %i.pk = call noundef i64 @llvm.fshl.i64(i64 %i.pe, i64 %i.pe, i64 16)
  %i.pl = xor i64 %i.pk, %i.ph                    ; 2 uses
  %i.pm = add i64 %i.pj, %i.ph                    ; 3 uses
  %i.pn = call noundef i64 @llvm.fshl.i64(i64 %i.pj, i64 %i.pj, i64 17)
  %i.po = call noundef i64 @llvm.fshl.i64(i64 %i.pl, i64 %i.pl, i64 21)
  %i.pp = call noundef i64 @llvm.fshl.i64(i64 %i.pm, i64 %i.pm, i64 32)
  %i.pq = xor i64 %i.po, %i.pn
  %i.pr = xor i64 %i.pq, %i.pp
  %i.ps = xor i64 %i.pr, %i.pm                    ; 2 uses
  %i.pt = lshr i64 %i.ps, 57
  %i.pu = trunc nuw nsw i64 %i.pt to i8
  %i.pv = insertelement <16 x i8> poison, i8 %i.pu, i64 0
  %i.pw = shufflevector <16 x i8> %i.pv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.lr.ph.i266
  %.sroa.9.0.i.i.i149 = phi i64 [ 0, %.lr.ph.i266 ], [ %i.qn, %bb.ax ]
  %.pn.i.i150 = phi i64 [ %i.ps, %.lr.ph.i266 ], [ %i.qo, %bb.ax ]
  %.sroa.01.0.i.i.i151 = and i64 %.pn.i.i150, %i.hf ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.01.0.i.i.i151
  %.sroa.0.0.copyload.i24.i.i152 = load <16 x i8>, ptr %i.px, align 1, !noalias !21079 ; 2 uses
  %i.py = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i152, %i.pw
  %i.pz = bitcast <16 x i1> %i.py to i16          ; 2 uses
  %.not.i.not30.i.i153 = icmp eq i16 %i.pz, 0
  br i1 %.not.i.not30.i.i153, label %._crit_edge.i.i158, label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %bb.av, %bb.aw
  %.sroa.06.0.i31.i.i155 = phi i16 [ %i.qm, %bb.aw ], [ %i.pz, %bb.av ] ; 3 uses
  %i.qa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i155, i1 true)
  %i.qb = zext nneg i16 %i.qa to i64
  %i.qc = add i64 %.sroa.01.0.i.i.i151, %i.qb
  %i.qd = and i64 %i.qc, %i.hf
  %i.qe = sub nsw i64 0, %i.qd
  %i.qf = getelementptr inbounds [16 x i8], ptr %i.hg, i64 %i.qe ; 2 uses
  %i.qg = getelementptr inbounds i8, ptr %i.qf, i64 -16
  %.val2.i.i.i156 = load i64, ptr %i.qg, align 8, !noalias !21080, !noundef !28
  %i.qh = icmp eq i64 %i.im, %.val2.i.i.i156
  br i1 %i.qh, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163, label %bb.aw, !prof !29

._crit_edge.i.i158:                               ; preds = %bb.aw, %bb.av
  %i.qi = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i152, splat (i8 -1)
  %i.qj = bitcast <16 x i1> %i.qi to i16
  %i.qk = icmp eq i16 %i.qj, 0
  br i1 %i.qk, label %bb.ax, label %select.unfold342.invoke, !prof !44

bb.aw:                                            ; preds = %.lr.ph.i.i154
  %i.ql = add i16 %.sroa.06.0.i31.i.i155, -1
  %i.qm = and i16 %i.ql, %.sroa.06.0.i31.i.i155   ; 2 uses
  %.not.i.not.i.i157 = icmp eq i16 %i.qm, 0
  br i1 %.not.i.not.i.i157, label %._crit_edge.i.i158, label %.lr.ph.i.i154

bb.ax:                                            ; preds = %._crit_edge.i.i158
  %i.qn = add i64 %.sroa.9.0.i.i.i149, 16         ; 2 uses
  %i.qo = add i64 %.sroa.01.0.i.i.i151, %i.qn
  br label %bb.av

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit163: ; preds = %.lr.ph.i.i154
  %i.qp = getelementptr inbounds i8, ptr %i.qf, i64 -8
  %i.qq = load i64, ptr %i.qp, align 8, !noundef !28
  %spec.store.select1 = call i64 @llvm.umin.i64(i64 %i.qq, i64 %.sroa.032.0574) ; 2 uses
  %i.qr = icmp ugt i64 %i.ii, %2
  %i.qs = icmp ugt i64 %i.in, %5
  %or.cond = and i1 %i.qs, %i.qr
  br i1 %or.cond, label %.lr.ph578.split, label %._crit_edge579

select.unfold342.invoke:                          ; preds = %bb.ae, %bb.ag, %._crit_edge.i.i158, %._crit_edge.i.i142
  %i.qt = phi ptr [ @353, %._crit_edge.i.i158 ], [ @352, %._crit_edge.i.i142 ], [ @353, %bb.ae ], [ @352, %bb.ag ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qt) #71
          to label %select.unfold342.cont unwind label %.loopexit.split-lp.loopexit.split-lp

select.unfold342.cont:                            ; preds = %select.unfold342.invoke
  unreachable

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit.thread: ; preds = %._crit_edge.i.i, %bb.x, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit
  %.sroa.02.1 = phi i1 [ true, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECskXtk6F4WjxZ_4just.exit ], [ %.sroa.02.0562, %bb.x ], [ %.sroa.02.0562, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.qu = icmp ult i64 %i.cx, %6
  br i1 %i.qu, label %bb.l, label %.outer._crit_edge.loopexit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit110: ; preds = %bb.o, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i109, %.loopexit382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !21081)
  call void @llvm.experimental.noalias.scope.decl(metadata !21082)
  call void @llvm.experimental.noalias.scope.decl(metadata !21083)
  call void @llvm.experimental.noalias.scope.decl(metadata !21084)
  call void @llvm.experimental.noalias.scope.decl(metadata !21085)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !alias.scope !21086, !noundef !28 ; 3 uses
  %i.qx = icmp eq i64 %i.qw, 0
  br i1 %i.qx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit182, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECskXtk6F4WjxZ_4just.exit110
  call void @llvm.experimental.noalias.scope.decl(metadata !21087)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.qz = load i64, ptr %i.qy, align 8, !alias.scope !21088, !noundef !28 ; 2 uses
  %i.ra = icmp eq i64 %i.qz, 0
  br i1 %i.ra, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i177, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rb = load ptr, ptr %i.e, align 8, !alias.scope !21088, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i164 = load <16 x i8>, ptr %i.rb, align 16, !noalias !21089
  %i.rc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i164, splat (i8 -1)
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.re = bitcast <16 x i1> %i.rc to i16
  br label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i176, %bb.az
  %.sroa.06.017.i.i.i.i.i.i165 = phi ptr [ %i.rb, %bb.az ], [ %.sroa.06.1.i.i.i.i.i.i172, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i176 ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i166 = phi ptr [ %i.rd, %bb.az ], [ %.sroa.6.1.i.i.i.i.i.i171, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i176 ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i167 = phi i16 [ %i.re, %bb.az ], [ %i.rn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i176 ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i168 = phi i64 [ %i.qz, %bb.az ], [ %i.rq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i176 ]
  %.not11.i.i.i.i.i.i.i169 = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i167, 0
  br i1 %.not11.i.i.i.i.i.i.i169, label %.lr.ph.i.i.i.i.i.i.i178, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i170

.lr.ph.i.i.i.i.i.i.i178:                          ; preds = %bb.ba, %.lr.ph.i.i.i.i.i.i.i178
  %i.rf = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i.i.i178 ], [ %.sroa.6.016.i.i.i.i.i.i166, %bb.ba ] ; 2 uses
  %i.rg = phi ptr [ %i.ri, %.lr.ph.i.i.i.i.i.i.i178 ], [ %.sroa.06.017.i.i.i.i.i.i165, %bb.ba ]
  %.val9.i.i.i.i.i.i.i179 = load <16 x i8>, ptr %i.rf, align 16, !noalias !21090
  %i.rh = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i179, splat (i8 -1)
  %i.ri = getelementptr inbounds i8, ptr %i.rg, i64 -512 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i180 = bitcast <16 x i1> %i.rh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i181 = icmp eq i16 %.cast.i.i.i.i.i.i.i180, 0
  br i1 %.not.i.i.i.i.i.i.i181, label %.lr.ph.i.i.i.i.i.i.i178, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i170

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i170: ; preds = %.lr.ph.i.i.i.i.i.i.i178, %bb.ba
  %.sroa.6.1.i.i.i.i.i.i171 = phi ptr [ %.sroa.6.016.i.i.i.i.i.i166, %bb.ba ], [ %i.rj, %.lr.ph.i.i.i.i.i.i.i178 ]
  %.sroa.06.1.i.i.i.i.i.i172 = phi ptr [ %.sroa.06.017.i.i.i.i.i.i165, %bb.ba ], [ %i.ri, %.lr.ph.i.i.i.i.i.i.i178 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i173 = phi i16 [ %.sroa.87.015.i.i.i.i.i.i167, %bb.ba ], [ %.cast.i.i.i.i.i.i.i180, %.lr.ph.i.i.i.i.i.i.i178 ] ; 3 uses
  %i.rk = add i16 %.lcssa.i.i.i.i.i.i.i173, -1
  %i.rl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i173, i1 true)
  %i.rm = zext nneg i16 %i.rl to i64
  %i.rn = and i16 %i.rk, %.lcssa.i.i.i.i.i.i.i173
  %i.ro = sub nsw i64 0, %i.rm
  %i.rp = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i172, i64 %i.ro ; 2 uses
  %i.rq = add i64 %.sroa.108.014.i.i.i.i.i.i168, -1 ; 2 uses
  %i.rr = getelementptr i8, ptr %i.rp, i64 -24
  %.val.i.i.i.i.i.i174 = load i64, ptr %i.rr, align 8, !alias.scope !21091, !noalias !21088 ; 2 uses
end_hunk_0
