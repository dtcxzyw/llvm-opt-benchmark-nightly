Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9histogram11find_anchorINtNtB4_5utils12OffsetLookupjEB11_EB6_:bb.a
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !8237
  store i8 1, ptr %i.n, align 8, !noalias !8237
  br label %bb.j

bb.c:                                             ; preds = %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit
  store i64 2, ptr %0, align 8
  br label %bb.v

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit: ; preds = %bb.i, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %.loopexit.split-lp
  call void @llvm.experimental.noalias.scope.decl(metadata !8238)
  call void @llvm.experimental.noalias.scope.decl(metadata !8239)
  call void @llvm.experimental.noalias.scope.decl(metadata !8240)
  call void @llvm.experimental.noalias.scope.decl(metadata !8241)
  call void @llvm.experimental.noalias.scope.decl(metadata !8242)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !8243, !noundef !5 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !8244)
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !8245, !noundef !5 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.e, align 8, !alias.scope !8245, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aa, align 16, !noalias !8246
  %i.ab = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = bitcast <16 x i1> %i.ab to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.ad, %bb.e ], [ %i.am, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.y, %bb.e ], [ %i.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.ae = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ae, align 16, !noalias !8247
  %i.ag = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -512 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ag to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.aj = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ak = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = and i16 %i.aj, %.lcssa.i.i.i.i.i.i.i
  %i.an = sub nsw i64 0, %i.al
  %i.ao = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.an ; 2 uses
  %i.ap = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !8245 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.as = getelementptr i8, ptr %i.ao, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !8245, !nonnull !5, !noundef !5
  %i.at = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !8245
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.au = icmp eq i64 %i.ap, 0
  br i1 %i.au, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.d
  %i.av = shl i64 %i.v, 5                         ; 2 uses
  %i.aw = add i64 %i.av, 32                       ; 2 uses
  %i.ax = add i64 %i.v, 17
  %i.ay = add i64 %i.ax, %i.aw                    ; 4 uses
  %i.az = icmp uge i64 %i.ay, %i.aw
  %i.ba = icmp ult i64 %i.ay, 9223372036854775793
  call void @llvm.assume(i1 %i.az)
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i
  %i.bc = load ptr, ptr %i.e, align 8, !alias.scope !8243, !nonnull !5, !noundef !5
  %i.bd = sub nuw nsw i64 -32, %i.av
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !8243
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.bs, %bb.bm, %bb.bh
  %lpad.loopexit401 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %select.unfold359.invoke, %.invoke
  %lpad.loopexit.split-lp402 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit401, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp402, %.loopexit.split-lp.loopexit.split-lp ]
  %.val97 = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val98 = load i64, ptr %i.bf, align 8, !noundef !5 ; 3 uses
  %i.bg = icmp eq i64 %.val98, 0
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %.loopexit.split-lp
  %i.bh = shl i64 %.val98, 4                      ; 2 uses
  %i.bi = add i64 %i.bh, 16                       ; 2 uses
  %i.bj = add i64 %.val98, 17
  %i.bk = add i64 %i.bj, %i.bi                    ; 4 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  %i.bm = icmp ult i64 %i.bk, 9223372036854775793
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val97) ]
  %i.bn = icmp eq i64 %i.bk, 0
  br i1 %i.bn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.bo = sub nuw nsw i64 -16, %i.bh
  %i.bp = getelementptr inbounds i8, ptr %.val97, i64 %i.bo
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 16) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit

bb.j:                                             ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i
  %.pre1.i.i104 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.s, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ] ; 2 uses
  %i.bq = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.r, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ] ; 3 uses
  %i.br = add i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  store i64 %i.bq, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  store i64 %.pre1.i.i104, ptr %.sroa.549.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bs = add i64 %i.bq, 2
  store i64 %i.bs, ptr %i.m, align 8, !noalias !8248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  store i64 %i.br, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  store i64 %.pre1.i.i104, ptr %.sroa.552.0..sroa_idx, align 8
  %i.bt = icmp ult i64 %2, %3
  br i1 %i.bt, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !8249, !noalias !8250, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !8249, !noalias !8250, !noundef !5 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br label %bb.k

.preheader:                                       ; preds = %bb.bw, %bb.j
  %i.ce = icmp ult i64 %5, %6
  br i1 %i.ce, label %.lr.ph581.lr.ph, label %.outer._crit_edge.thread

.lr.ph581.lr.ph:                                  ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cg = load i64, ptr %i.cf, align 8            ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ci = load i64, ptr %i.ch, align 8            ; 11 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !5 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load i64, ptr %i.cn, align 8            ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load i64, ptr %i.cp, align 8            ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !5 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %invariant.op658 = xor i64 %i.co, -1
  %invariant.op672 = xor i64 %i.cg, -1
  br label %.lr.ph581

bb.k:                                             ; preds = %.lr.ph, %bb.bw
  %.sroa.053.0578 = phi i64 [ %2, %.lr.ph ], [ %i.cv, %bb.bw ] ; 3 uses
  %i.cv = add i64 %.sroa.053.0578, 1              ; 2 uses
  %i.cw = sub i64 %.sroa.053.0578, %i.bv          ; 3 uses
  %i.cx = icmp ult i64 %i.cw, %i.bx
  br i1 %i.cx, label %bb.bc, label %.invoke

.invoke.loopexit1176.split.loop.exit:             ; preds = %.lr.ph596.split.us
  %.reass659.mux.le = select i1 %i.id, i64 %.reass659, i64 %.reass673
  %.mux.le = select i1 %i.id, i64 %i.cq, i64 %i.ci
  %.mux1060.le = select i1 %i.id, ptr @122, ptr @123
  br label %.invoke

.invoke.loopexit1176.split.loop.exit1327:         ; preds = %bb.ae
  %.mux1064.le = select i1 %i.ip, i64 %i.io, i64 %i.hw
  %.mux1065.le = select i1 %i.ip, i64 %i.cq, i64 %i.ci
  %.mux1066.le = select i1 %i.ip, ptr @124, ptr @125
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110.thread, %.invoke.loopexit1176.split.loop.exit, %.invoke.loopexit1176.split.loop.exit1327, %bb.ag, %.lr.ph596.split, %bb.ai, %.lr.ph1158
  %i.cy = phi i64 [ %i.ja, %bb.ag ], [ %.mux1064.le, %.invoke.loopexit1176.split.loop.exit1327 ], [ %i.ft, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110.thread ], [ %i.ci, %bb.ai ], [ %i.jk, %.lr.ph1158 ], [ %i.iv, %.lr.ph596.split ], [ %.reass659.mux.le, %.invoke.loopexit1176.split.loop.exit ], [ %i.cw, %bb.k ]
  %i.cz = phi i64 [ %i.ci, %bb.ag ], [ %.mux1065.le, %.invoke.loopexit1176.split.loop.exit1327 ], [ %i.ci, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110.thread ], [ %i.ci, %bb.ai ], [ %i.cq, %.lr.ph1158 ], [ %i.cq, %.lr.ph596.split ], [ %.mux.le, %.invoke.loopexit1176.split.loop.exit ], [ %i.bx, %bb.k ]
  %i.da = phi ptr [ @123, %bb.ag ], [ %.mux1066.le, %.invoke.loopexit1176.split.loop.exit1327 ], [ @121, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110.thread ], [ @125, %bb.ai ], [ @124, %.lr.ph1158 ], [ @122, %.lr.ph596.split ], [ %.mux1060.le, %.invoke.loopexit1176.split.loop.exit ], [ @129, %bb.k ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.outer._crit_edge.loopexit:                       ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread
  %i.db = select i1 %.sroa.02.1, i64 2, i64 1
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.outer._crit_edge.loopexit
  %.sroa.9.0.ph.lcssa567 = phi i64 [ %.sroa.9.0.ph661, %.outer._crit_edge.loopexit ], [ %.sroa.9.1.lcssa, %.outer ]
  %.sroa.7.0.ph.lcssa556 = phi i64 [ %.sroa.7.0.ph662, %.outer._crit_edge.loopexit ], [ %.sroa.7.1.lcssa, %.outer ]
  %.sroa.443.0.ph.lcssa545 = phi i64 [ %.sroa.443.0.ph663, %.outer._crit_edge.loopexit ], [ %.sroa.443.1.lcssa, %.outer ]
  %.sroa.041.0.ph.lcssa534 = phi i64 [ %.sroa.041.0.ph664, %.outer._crit_edge.loopexit ], [ %.sroa.041.1.lcssa, %.outer ]
  %.sroa.02.0.lcssa = phi i64 [ %i.db, %.outer._crit_edge.loopexit ], [ 2, %.outer ]
  %i.dc = trunc nuw i64 %.sroa.041.0.ph.lcssa534 to i1
  br i1 %i.dc, label %bb.n, label %.outer._crit_edge.thread

bb.l:                                             ; preds = %.lr.ph581, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread
  %.sroa.02.0580 = phi i1 [ %.sroa.02.0.ph666, %.lr.ph581 ], [ %.sroa.02.1, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ] ; 2 uses
  %.sroa.055.0579 = phi i64 [ %.sroa.055.0.ph660, %.lr.ph581 ], [ %i.dd, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ] ; 9 uses
  %i.dd = add nuw i64 %.sroa.055.0579, 1          ; 6 uses
  br i1 %.not.i, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc109 unwind label %.loopexit ; 2 uses

.noexc109:                                        ; preds = %bb.m
  %i.df = extractvalue { i64, i32 } %i.de, 0      ; 2 uses
  %i.dg = icmp eq i64 %i.df, %7
  br i1 %i.dg, label %.split343, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110

.split343:                                        ; preds = %.noexc109
  %i.dh = extractvalue { i64, i32 } %i.de, 1      ; 2 uses
  %i.di = icmp ult i32 %i.dh, 1000000000
  call void @llvm.assume(i1 %i.di)
  %i.dj = icmp samesign ugt i32 %i.dh, %8
  br i1 %i.dj, label %.loopexit400, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110.thread

bb.n:                                             ; preds = %.outer._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.443.0.ph.lcssa545, ptr %i.dk, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.ph.lcssa556, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.ph.lcssa567, ptr %.sroa.546.0..sroa_idx, align 8
  br label %.loopexit400

.outer._crit_edge.thread:                         ; preds = %.preheader, %.outer._crit_edge
  %.sroa.02.0.lcssa901 = phi i64 [ %.sroa.02.0.lcssa, %.outer._crit_edge ], [ 1, %.preheader ]
  store i64 %.sroa.02.0.lcssa901, ptr %0, align 8
  %.val93 = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val94 = load i64, ptr %i.dl, align 8, !noundef !5 ; 3 uses
  %i.dm = icmp eq i64 %.val94, 0
  br i1 %i.dm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit112, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i111

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i111: ; preds = %.outer._crit_edge.thread
  %i.dn = shl i64 %.val94, 4                      ; 2 uses
  %i.do = add i64 %i.dn, 16                       ; 2 uses
  %i.dp = add i64 %.val94, 17
  %i.dq = add i64 %i.dp, %i.do                    ; 4 uses
  %i.dr = icmp uge i64 %i.dq, %i.do
  %i.ds = icmp ult i64 %i.dq, 9223372036854775793
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val93) ]
  %i.dt = icmp eq i64 %i.dq, 0
  br i1 %i.dt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit112, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i111
  %i.du = sub nuw nsw i64 -16, %i.dn
  %i.dv = getelementptr inbounds i8, ptr %.val93, i64 %i.du
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dv, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 16) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit112

.loopexit400:                                     ; preds = %.split343, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110, %bb.n
  %storemerge67 = phi i64 [ 0, %bb.n ], [ 2, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110 ], [ 2, %.split343 ]
  store i64 %storemerge67, ptr %0, align 8
  %.val95 = load ptr, ptr %i.d, align 8           ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val96 = load i64, ptr %i.dw, align 8, !noundef !5 ; 3 uses
  %i.dx = icmp eq i64 %.val96, 0
  br i1 %i.dx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit114, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i113

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i113: ; preds = %.loopexit400
  %i.dy = shl i64 %.val96, 4                      ; 2 uses
  %i.dz = add i64 %i.dy, 16                       ; 2 uses
  %i.ea = add i64 %.val96, 17
  %i.eb = add i64 %i.ea, %i.dz                    ; 4 uses
  %i.ec = icmp uge i64 %i.eb, %i.dz
  %i.ed = icmp ult i64 %i.eb, 9223372036854775793
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.assume(i1 %i.ed)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val95) ]
  %i.ee = icmp eq i64 %i.eb, 0
  br i1 %i.ee, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit114, label %bb.p

bb.p:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i113
  %i.ef = sub nuw nsw i64 -16, %i.dy
  %i.eg = getelementptr inbounds i8, ptr %.val95, i64 %i.ef
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eg, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 16) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit114

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit112: ; preds = %bb.o, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i111, %.outer._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !8251)
  call void @llvm.experimental.noalias.scope.decl(metadata !8252)
  call void @llvm.experimental.noalias.scope.decl(metadata !8253)
  call void @llvm.experimental.noalias.scope.decl(metadata !8254)
  call void @llvm.experimental.noalias.scope.decl(metadata !8255)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !8256, !noundef !5 ; 3 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit133, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit112
  call void @llvm.experimental.noalias.scope.decl(metadata !8257)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !8258, !noundef !5 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i128, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.en = load ptr, ptr %i.e, align 8, !alias.scope !8258, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i115 = load <16 x i8>, ptr %i.en, align 16, !noalias !8259
  %i.eo = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i115, splat (i8 -1)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = bitcast <16 x i1> %i.eo to i16
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i127, %bb.r
  %.sroa.06.017.i.i.i.i.i.i116 = phi ptr [ %i.en, %bb.r ], [ %.sroa.06.1.i.i.i.i.i.i123, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i127 ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i117 = phi ptr [ %i.ep, %bb.r ], [ %.sroa.6.1.i.i.i.i.i.i122, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i127 ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i118 = phi i16 [ %i.eq, %bb.r ], [ %i.ez, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i127 ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i119 = phi i64 [ %i.el, %bb.r ], [ %i.fc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i127 ]
  %.not11.i.i.i.i.i.i.i120 = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i118, 0
  br i1 %.not11.i.i.i.i.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i129, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i121

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i129
  %i.er = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.sroa.6.016.i.i.i.i.i.i117, %bb.s ] ; 2 uses
  %i.es = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.sroa.06.017.i.i.i.i.i.i116, %bb.s ]
  %.val9.i.i.i.i.i.i.i130 = load <16 x i8>, ptr %i.er, align 16, !noalias !8260
  %i.et = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i130, splat (i8 -1)
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 -512 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i131 = bitcast <16 x i1> %i.et to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq i16 %.cast.i.i.i.i.i.i.i131, 0
  br i1 %.not.i.i.i.i.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i129, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i121

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i121: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %bb.s
  %.sroa.6.1.i.i.i.i.i.i122 = phi ptr [ %.sroa.6.016.i.i.i.i.i.i117, %bb.s ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i129 ]
  %.sroa.06.1.i.i.i.i.i.i123 = phi ptr [ %.sroa.06.017.i.i.i.i.i.i116, %bb.s ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.i129 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i124 = phi i16 [ %.sroa.87.015.i.i.i.i.i.i118, %bb.s ], [ %.cast.i.i.i.i.i.i.i131, %.lr.ph.i.i.i.i.i.i.i129 ] ; 3 uses
  %i.ew = add i16 %.lcssa.i.i.i.i.i.i.i124, -1
  %i.ex = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i124, i1 true)
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = and i16 %i.ew, %.lcssa.i.i.i.i.i.i.i124
  %i.fa = sub nsw i64 0, %i.ey
  %i.fb = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i123, i64 %i.fa ; 2 uses
  %i.fc = add i64 %.sroa.108.014.i.i.i.i.i.i119, -1 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fb, i64 -24
  %.val.i.i.i.i.i.i125 = load i64, ptr %i.fd, align 8, !noalias !8258 ; 2 uses
  %i.fe = icmp eq i64 %.val.i.i.i.i.i.i125, 0
  br i1 %i.fe, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i127, label %bb.t

bb.t:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i121
  %i.ff = getelementptr i8, ptr %i.fb, i64 -16
  %.val5.i.i.i.i.i.i126 = load ptr, ptr %i.ff, align 8, !noalias !8258, !nonnull !5, !noundef !5
  %i.fg = shl nuw i64 %.val.i.i.i.i.i.i125, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i126, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !8258
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i127

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i127: ; preds = %bb.t, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i121
  %i.fh = icmp eq i64 %i.fc, 0
  br i1 %i.fh, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i128, label %bb.s

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i128: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i127, %bb.q
  %i.fi = shl i64 %i.ei, 5                        ; 2 uses
  %i.fj = add i64 %i.fi, 32                       ; 2 uses
  %i.fk = add i64 %i.ei, 17
  %i.fl = add i64 %i.fk, %i.fj                    ; 4 uses
  %i.fm = icmp uge i64 %i.fl, %i.fj
  %i.fn = icmp ult i64 %i.fl, 9223372036854775793
  call void @llvm.assume(i1 %i.fm)
  call void @llvm.assume(i1 %i.fn)
  %i.fo = icmp eq i64 %i.fl, 0
  br i1 %i.fo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit133, label %bb.u

bb.u:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i128
  %i.fp = load ptr, ptr %i.e, align 8, !alias.scope !8256, !nonnull !5, !noundef !5
  %i.fq = sub nuw nsw i64 -32, %i.fi
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 %i.fq
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fr, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !8256
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit133

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit133: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit112, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i128, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit187, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit133, %bb.c
  ret void

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110: ; preds = %.noexc109
  %i.fs = icmp sgt i64 %i.df, %7
  br i1 %i.fs, label %.loopexit400, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110.thread: ; preds = %bb.l, %.split343, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ft = sub i64 %.sroa.055.0579, %i.cg          ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.ci
  br i1 %i.fu, label %bb.w, label %.invoke

bb.w:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit110.thread
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ft
  %i.fw = load i64, ptr %i.fv, align 8, !noundef !5 ; 2 uses
  store i64 %i.fw, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8261)
  %i.fx = load i64, ptr %i.cl, align 8, !alias.scope !8261, !noalias !8262, !noundef !5
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i = load i64, ptr %.sroa.448.0..sroa_idx, align 8, !alias.scope !8261, !noalias !8262, !noundef !5
  %.val5.i = load i64, ptr %.sroa.549.0..sroa_idx, align 8, !alias.scope !8261, !noalias !8262, !noundef !5
  %i.fz = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRjECsdftwklc2oBO_7similar(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !8261 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8263)
  call void @llvm.experimental.noalias.scope.decl(metadata !8264)
  %i.ga = lshr i64 %i.fz, 57
  %i.gb = trunc nuw nsw i64 %i.ga to i8
  %i.gc = load i64, ptr %i.cm, align 8, !alias.scope !8265, !noalias !8266, !noundef !5 ; 2 uses
  %i.gd = load ptr, ptr %i.e, align 8, !alias.scope !8265, !noalias !8266, !nonnull !5, !noundef !5 ; 2 uses
  %i.ge = insertelement <16 x i8> poison, i8 %i.gb, i64 0
  %i.gf = shufflevector <16 x i8> %i.ge, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.x ], [ %i.gw, %bb.aa ]
  %.pn.i.i = phi i64 [ %i.fz, %bb.x ], [ %i.gx, %bb.aa ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.gc     ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.gg, align 1, !noalias !8267 ; 2 uses
  %i.gh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.gf
  %i.gi = bitcast <16 x i1> %i.gh to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.gi, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.z
  %.sroa.06.0.i31.i.i = phi i16 [ %i.gv, %bb.z ], [ %i.gi, %bb.y ] ; 3 uses
  %i.gj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.gk = zext nneg i16 %i.gj to i64
  %i.gl = add i64 %.sroa.01.0.i.i.i, %i.gk
  %i.gm = and i64 %i.gl, %i.gc
  %i.gn = sub nsw i64 0, %i.gm
  %i.go = getelementptr inbounds [32 x i8], ptr %i.gd, i64 %i.gn ; 3 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -32
  %.val2.i.i.i = load i64, ptr %i.gp, align 8, !noalias !8268, !noundef !5
  %i.gq = icmp eq i64 %i.fw, %.val2.i.i.i
  br i1 %i.gq, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit, label %bb.z, !prof !11

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.y
  %i.gr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.gs = bitcast <16 x i1> %i.gr to i16
  %i.gt = icmp eq i16 %i.gs, 0
  br i1 %i.gt, label %bb.aa, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread, !prof !13

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.gu = add i16 %.sroa.06.0.i31.i.i, -1
  %i.gv = and i16 %i.gu, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.gv, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.gw = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.gx = add i64 %.sroa.01.0.i.i.i, %i.gw
  br label %bb.y

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit: ; preds = %.lr.ph.i.i
  %i.gy = getelementptr inbounds i8, ptr %i.go, i64 -8
  %i.gz = load i64, ptr %i.gy, align 8, !noundef !5 ; 8 uses
  %i.ha = icmp ult i64 %i.gz, 1152921504606846976
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp samesign ugt i64 %i.gz, 64
  br i1 %i.hb, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit
  %i.hc = getelementptr inbounds i8, ptr %i.go, i64 -16
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.gz, 3
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx
  %i.hf = icmp eq i64 %i.gz, 0
  br i1 %i.hf, label %.outer, label %.lr.ph651

.lr.ph651:                                        ; preds = %bb.ab
  %i.hg = icmp ugt i64 %.sroa.055.0579, %5
  %i.hh = load i64, ptr %i.ct, align 8
  %.fr674 = freeze i64 %i.hh
  %i.hi = icmp eq i64 %.fr674, 0                  ; 2 uses
  %.val.i151 = load i64, ptr %.sroa.451.0..sroa_idx, align 8 ; 2 uses
  %.val5.i152 = load i64, ptr %.sroa.552.0..sroa_idx, align 8 ; 3 uses
  %i.hj = xor i64 %.val.i151, 8317987319222330741
  %i.hk = xor i64 %.val5.i152, 7237128888997146477 ; 3 uses
  %i.hl = xor i64 %.val.i151, 7816392313619706465 ; 2 uses
  %i.hm = add i64 %i.hk, %i.hj                    ; 3 uses
  %i.hn = call i64 @llvm.fshl.i64(i64 %i.hm, i64 %i.hm, i64 32) ; 2 uses
  %i.ho = call i64 @llvm.fshl.i64(i64 %i.hk, i64 %i.hk, i64 13)
  %i.hp = xor i64 %i.hm, %i.ho                    ; 4 uses
  %i.hq = call i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 17) ; 2 uses
  %i.hr = load i64, ptr %i.cu, align 8            ; 4 uses
  %i.hs = load ptr, ptr %i.d, align 8, !nonnull !5 ; 4 uses
  %.reass673 = add i64 %.sroa.055.0579, %invariant.op672 ; 3 uses
  %i.ht = icmp uge i64 %.reass673, %i.ci
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.reass673
  %i.hv = icmp ult i64 %i.dd, %6
  %i.hw = sub i64 %i.dd, %i.cg                    ; 3 uses
  %i.hx = icmp uge i64 %i.hw, %i.ci
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.hw
  %i.hz = trunc nuw i64 %.sroa.041.0.ph664 to i1
  %invariant.op = xor i64 %.val5.i152, 8387220255154660723
  %invariant.op1326 = xor i64 %.val5.i152, 8387220255154660723
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph651, %bb.ap
  %.sroa.03.1649 = phi i64 [ %.sroa.03.0.ph665, %.lr.ph651 ], [ %.sroa.03.2, %bb.ap ] ; 5 uses
  %.sroa.08.0648 = phi ptr [ %i.hd, %.lr.ph651 ], [ %i.ia, %bb.ap ] ; 2 uses
  %.sroa.041.1647 = phi i1 [ %i.hz, %.lr.ph651 ], [ true, %bb.ap ]
  %.sroa.443.1646 = phi i64 [ %.sroa.443.0.ph663, %.lr.ph651 ], [ %.sroa.443.2, %bb.ap ] ; 5 uses
  %.sroa.7.1645 = phi i64 [ %.sroa.7.0.ph662, %.lr.ph651 ], [ %.sroa.7.2, %bb.ap ] ; 4 uses
  %.sroa.9.1644 = phi i64 [ %.sroa.9.0.ph661, %.lr.ph651 ], [ %.sroa.9.2, %bb.ap ] ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.08.0648, i64 8 ; 2 uses
  %i.ib = load i64, ptr %.sroa.08.0648, align 8, !noundef !5 ; 12 uses
  %i.ic = icmp ugt i64 %i.ib, %2
  %or.cond591 = and i1 %i.hg, %i.ic
  br i1 %or.cond591, label %.lr.ph596, label %._crit_edge597

.lr.ph596:                                        ; preds = %bb.ac
  br i1 %i.hi, label %.lr.ph596.split.us, label %.lr.ph596.split

.lr.ph596.split.us:                               ; preds = %.lr.ph596
  %.reass659 = add i64 %i.ib, %invariant.op658    ; 3 uses
  %i.id = icmp uge i64 %.reass659, %i.cq          ; 4 uses
  %brmerge = select i1 %i.id, i1 true, i1 %i.ht
  br i1 %brmerge, label %.invoke.loopexit1176.split.loop.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph596.split.us
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.reass659
  %i.if = load i64, ptr %i.ie, align 8, !noundef !5
  %i.ig = load i64, ptr %i.hu, align 8, !noundef !5
  %i.ih = icmp eq i64 %i.if, %i.ig
  br i1 %i.ih, label %select.unfold359.invoke, label %._crit_edge597.thread

.outer:                                           ; preds = %bb.ap, %bb.ab
  %.sroa.9.1.lcssa = phi i64 [ %.sroa.9.0.ph661, %bb.ab ], [ %.sroa.9.2, %bb.ap ] ; 2 uses
  %.sroa.7.1.lcssa = phi i64 [ %.sroa.7.0.ph662, %bb.ab ], [ %.sroa.7.2, %bb.ap ] ; 2 uses
  %.sroa.443.1.lcssa = phi i64 [ %.sroa.443.0.ph663, %bb.ab ], [ %.sroa.443.2, %bb.ap ] ; 2 uses
  %.sroa.041.1.lcssa = phi i64 [ %.sroa.041.0.ph664, %bb.ab ], [ 1, %bb.ap ] ; 2 uses
  %.sroa.03.1.lcssa = phi i64 [ %.sroa.03.0.ph665, %bb.ab ], [ %.sroa.03.2, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ii = icmp ult i64 %i.dd, %6
  br i1 %i.ii, label %.lr.ph581, label %.outer._crit_edge

.lr.ph581:                                        ; preds = %.lr.ph581.lr.ph, %.outer
  %.sroa.02.0.ph666 = phi i1 [ false, %.lr.ph581.lr.ph ], [ true, %.outer ]
  %.sroa.03.0.ph665 = phi i64 [ -1, %.lr.ph581.lr.ph ], [ %.sroa.03.1.lcssa, %.outer ] ; 2 uses
  %.sroa.041.0.ph664 = phi i64 [ 0, %.lr.ph581.lr.ph ], [ %.sroa.041.1.lcssa, %.outer ] ; 3 uses
  %.sroa.443.0.ph663 = phi i64 [ undef, %.lr.ph581.lr.ph ], [ %.sroa.443.1.lcssa, %.outer ] ; 3 uses
  %.sroa.7.0.ph662 = phi i64 [ undef, %.lr.ph581.lr.ph ], [ %.sroa.7.1.lcssa, %.outer ] ; 3 uses
  %.sroa.9.0.ph661 = phi i64 [ undef, %.lr.ph581.lr.ph ], [ %.sroa.9.1.lcssa, %.outer ] ; 3 uses
  %.sroa.055.0.ph660 = phi i64 [ %5, %.lr.ph581.lr.ph ], [ %i.dd, %.outer ]
  br label %bb.l

._crit_edge597:                                   ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168, %bb.ah, %bb.ac
  %.sroa.032.0.lcssa = phi i64 [ %i.gz, %bb.ac ], [ %spec.store.select1, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168 ], [ %.sroa.032.0592, %bb.ah ] ; 3 uses
  %.sroa.024.0.lcssa = phi i64 [ %.sroa.055.0579, %bb.ac ], [ %i.iz, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168 ], [ %.sroa.024.0593, %bb.ah ] ; 3 uses
  %.sroa.016.0.lcssa = phi i64 [ %i.ib, %bb.ac ], [ %i.iu, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168 ], [ %.sroa.016.0594, %bb.ah ] ; 3 uses
  %i.ij = add i64 %i.ib, 1                        ; 3 uses
  %i.ik = icmp ult i64 %i.ij, %3
  br i1 %i.ik, label %.lr.ph619.split.preheader, label %._crit_edge620

._crit_edge597.thread:                            ; preds = %bb.ad
  %i.il = add i64 %i.ib, 1                        ; 2 uses
  %i.im = icmp ult i64 %i.il, %3
  br i1 %i.im, label %.lr.ph619.split.us, label %._crit_edge620

.lr.ph619.split.preheader:                        ; preds = %._crit_edge597
  br i1 %i.hi, label %.lr.ph619.split.us, label %.lr.ph619.split

.lr.ph619.split.us:                               ; preds = %._crit_edge597.thread, %.lr.ph619.split.preheader
  %.sroa.032.0.lcssa905915 = phi i64 [ %.sroa.032.0.lcssa, %.lr.ph619.split.preheader ], [ %i.gz, %._crit_edge597.thread ] ; 2 uses
  %.sroa.024.0.lcssa907914 = phi i64 [ %.sroa.024.0.lcssa, %.lr.ph619.split.preheader ], [ %.sroa.055.0579, %._crit_edge597.thread ] ; 2 uses
  %.sroa.016.0.lcssa909913 = phi i64 [ %.sroa.016.0.lcssa, %.lr.ph619.split.preheader ], [ %i.ib, %._crit_edge597.thread ] ; 2 uses
  %i.in = phi i64 [ %i.ij, %.lr.ph619.split.preheader ], [ %i.il, %._crit_edge597.thread ]
  br i1 %i.hv, label %bb.ae, label %._crit_edge620

bb.ae:                                            ; preds = %.lr.ph619.split.us
  %i.io = sub i64 %i.in, %i.co                    ; 3 uses
  %i.ip = icmp uge i64 %i.io, %i.cq               ; 4 uses
  %brmerge1063 = select i1 %i.ip, i1 true, i1 %i.hx
  br i1 %brmerge1063, label %.invoke.loopexit1176.split.loop.exit1327, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.io
  %i.ir = load i64, ptr %i.iq, align 8, !noundef !5
  %i.is = load i64, ptr %i.hy, align 8, !noundef !5
  %i.it = icmp eq i64 %i.ir, %i.is
  br i1 %i.it, label %select.unfold359.invoke, label %._crit_edge620

.lr.ph596.split:                                  ; preds = %.lr.ph596, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168
  %.sroa.016.0594 = phi i64 [ %i.iu, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168 ], [ %i.ib, %.lr.ph596 ] ; 2 uses
  %.sroa.024.0593 = phi i64 [ %i.iz, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168 ], [ %.sroa.055.0579, %.lr.ph596 ] ; 2 uses
  %.sroa.032.0592 = phi i64 [ %spec.store.select1, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168 ], [ %i.gz, %.lr.ph596 ] ; 2 uses
  %i.iu = add i64 %.sroa.016.0594, -1             ; 4 uses
  %i.iv = sub i64 %i.iu, %i.co                    ; 3 uses
  %i.iw = icmp ult i64 %i.iv, %i.cq
  br i1 %i.iw, label %bb.ag, label %.invoke

bb.ag:                                            ; preds = %.lr.ph596.split
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.iv
  %i.iy = load i64, ptr %i.ix, align 8, !noundef !5 ; 4 uses
  %i.iz = add i64 %.sroa.024.0593, -1             ; 4 uses
  %i.ja = sub i64 %i.iz, %i.cg                    ; 3 uses
  %i.jb = icmp ult i64 %i.ja, %i.ci
  br i1 %i.jb, label %bb.ah, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ja
  %i.jd = load i64, ptr %i.jc, align 8, !noundef !5
  %i.je = icmp eq i64 %i.iy, %i.jd
  br i1 %i.je, label %._crit_edge.i.i272, label %._crit_edge597

.lr.ph619.split:                                  ; preds = %.lr.ph619.split.preheader, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit
  %9 = phi i64 [ %i.no, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit ], [ %i.ij, %.lr.ph619.split.preheader ] ; 4 uses
  %.sroa.029.0616 = phi i64 [ %i.jf, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit ], [ %.sroa.055.0579, %.lr.ph619.split.preheader ]
  %.sroa.032.1615 = phi i64 [ %spec.store.select, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit ], [ %.sroa.032.0.lcssa, %.lr.ph619.split.preheader ] ; 3 uses
  %i.jf = add i64 %.sroa.029.0616, 1              ; 3 uses
  %i.jg = icmp ult i64 %i.jf, %6
  br i1 %i.jg, label %.lr.ph1158, label %._crit_edge620.loopexit

._crit_edge620.loopexit:                          ; preds = %bb.aj, %.lr.ph619.split, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit
  %.sroa.032.1.lcssa.ph = phi i64 [ %spec.store.select, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit ], [ %.sroa.032.1615, %.lr.ph619.split ], [ %.sroa.032.1615, %bb.aj ]
  %.sroa.010.0.lcssa.ph.in = phi i64 [ %3, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit ], [ %9, %.lr.ph619.split ], [ %9, %bb.aj ]
  %.sroa.010.0.lcssa.ph = add i64 %.sroa.010.0.lcssa.ph.in, -1
  br label %._crit_edge620

._crit_edge620:                                   ; preds = %._crit_edge597.thread, %._crit_edge620.loopexit, %.lr.ph619.split.us, %bb.af, %._crit_edge597
  %.sroa.016.0.lcssa909 = phi i64 [ %.sroa.016.0.lcssa, %._crit_edge597 ], [ %.sroa.016.0.lcssa909913, %bb.af ], [ %.sroa.016.0.lcssa909913, %.lr.ph619.split.us ], [ %.sroa.016.0.lcssa, %._crit_edge620.loopexit ], [ %i.ib, %._crit_edge597.thread ] ; 4 uses
  %.sroa.024.0.lcssa907 = phi i64 [ %.sroa.024.0.lcssa, %._crit_edge597 ], [ %.sroa.024.0.lcssa907914, %bb.af ], [ %.sroa.024.0.lcssa907914, %.lr.ph619.split.us ], [ %.sroa.024.0.lcssa, %._crit_edge620.loopexit ], [ %.sroa.055.0579, %._crit_edge597.thread ] ; 2 uses
  %.sroa.032.1.lcssa = phi i64 [ %.sroa.032.0.lcssa, %._crit_edge597 ], [ %.sroa.032.0.lcssa905915, %bb.af ], [ %.sroa.032.0.lcssa905915, %.lr.ph619.split.us ], [ %.sroa.032.1.lcssa.ph, %._crit_edge620.loopexit ], [ %i.gz, %._crit_edge597.thread ] ; 3 uses
  %.sroa.010.0.lcssa = phi i64 [ %i.ib, %._crit_edge597 ], [ %i.ib, %bb.af ], [ %i.ib, %.lr.ph619.split.us ], [ %.sroa.010.0.lcssa.ph, %._crit_edge620.loopexit ], [ %i.ib, %._crit_edge597.thread ]
  %i.jh = sub i64 %.sroa.010.0.lcssa, %.sroa.016.0.lcssa909
  %i.ji = add i64 %i.jh, 1                        ; 3 uses
  %i.jj = icmp ule i64 %i.ji, %.sroa.9.1644
  %or.cond75.not = select i1 %.sroa.041.1647, i1 %i.jj, i1 false
  br i1 %or.cond75.not, label %bb.ak, label %bb.aq

.lr.ph1158:                                       ; preds = %.lr.ph619.split
  %i.jk = sub i64 %9, %i.co                       ; 3 uses
  %i.jl = icmp ult i64 %i.jk, %i.cq
  br i1 %i.jl, label %bb.ai, label %.invoke

bb.ai:                                            ; preds = %.lr.ph1158
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.jk
  %i.jn = load i64, ptr %i.jm, align 8, !noundef !5 ; 4 uses
  %i.jo = sub i64 %i.jf, %i.cg                    ; 2 uses
  %i.jp = icmp ult i64 %i.jo, %i.ci
  br i1 %i.jp, label %bb.aj, label %.invoke

bb.aj:                                            ; preds = %bb.ai
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.jo
  %i.jr = load i64, ptr %i.jq, align 8, !noundef !5
  %i.js = icmp eq i64 %i.jn, %i.jr
  br i1 %i.js, label %._crit_edge.i.i253, label %._crit_edge620.loopexit

bb.ak:                                            ; preds = %._crit_edge620
  %i.jt = icmp eq i64 %i.ji, %.sroa.9.1644
  br i1 %i.jt, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.ju = icmp ult i64 %.sroa.032.1.lcssa, %.sroa.03.1649
  br i1 %i.ju, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jv = icmp eq i64 %.sroa.032.1.lcssa, %.sroa.03.1649
  br i1 %i.jv, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.jw = icmp ult i64 %.sroa.016.0.lcssa909, %.sroa.443.1646
  br i1 %i.jw, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jx = icmp eq i64 %.sroa.016.0.lcssa909, %.sroa.443.1646
  %i.jy = icmp ult i64 %.sroa.024.0.lcssa907, %.sroa.7.1645
  %or.cond73 = select i1 %i.jx, i1 %i.jy, i1 false
  br i1 %or.cond73, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.ak, %bb.aq
  %.sroa.9.2 = phi i64 [ %i.ji, %bb.aq ], [ %.sroa.9.1644, %bb.ao ], [ %.sroa.9.1644, %bb.am ], [ %.sroa.9.1644, %bb.ak ] ; 2 uses
  %.sroa.7.2 = phi i64 [ %.sroa.024.0.lcssa907, %bb.aq ], [ %.sroa.7.1645, %bb.ao ], [ %.sroa.7.1645, %bb.am ], [ %.sroa.7.1645, %bb.ak ] ; 2 uses
  %.sroa.443.2 = phi i64 [ %.sroa.016.0.lcssa909, %bb.aq ], [ %.sroa.443.1646, %bb.ao ], [ %.sroa.443.1646, %bb.am ], [ %.sroa.443.1646, %bb.ak ] ; 2 uses
  %.sroa.03.2 = phi i64 [ %.sroa.032.1.lcssa, %bb.aq ], [ %.sroa.03.1649, %bb.ao ], [ %.sroa.03.1649, %bb.am ], [ %.sroa.03.1649, %bb.ak ] ; 2 uses
  %i.jz = icmp eq ptr %i.ia, %i.he
  br i1 %i.jz, label %.outer, label %bb.ac

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.al, %._crit_edge620
  br label %bb.ap

._crit_edge.i.i253:                               ; preds = %bb.aj
  %.reass630.reass.reass = xor i64 %i.jn, %invariant.op1326 ; 3 uses
  %i.ka = add i64 %.reass630.reass.reass, %i.hl   ; 2 uses
  %i.kb = call noundef i64 @llvm.fshl.i64(i64 %.reass630.reass.reass, i64 %.reass630.reass.reass, i64 16)
  %i.kc = xor i64 %i.ka, %i.kb                    ; 3 uses
  %i.kd = add i64 %i.hn, %i.kc                    ; 2 uses
  %i.ke = xor i64 %i.kd, %i.jn
  %i.kf = add i64 %i.hp, %i.ka                    ; 3 uses
  %i.kg = call noundef i64 @llvm.fshl.i64(i64 %i.kf, i64 %i.kf, i64 32)
  %i.kh = call noundef i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 21)
  %i.ki = xor i64 %i.kf, %i.hq                    ; 3 uses
  %i.kj = xor i64 %i.kh, %i.kd
  %i.kk = xor i64 %i.kj, 576460752303423488       ; 3 uses
  %i.kl = add i64 %i.ki, %i.ke                    ; 3 uses
  %i.km = add i64 %i.kk, %i.kg                    ; 2 uses
  %i.kn = call noundef i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 13)
  %i.ko = xor i64 %i.kn, %i.kl                    ; 3 uses
  %i.kp = call noundef i64 @llvm.fshl.i64(i64 %i.kk, i64 %i.kk, i64 16)
  %i.kq = xor i64 %i.kp, %i.km                    ; 3 uses
  %i.kr = call noundef i64 @llvm.fshl.i64(i64 %i.kl, i64 %i.kl, i64 32)
  %i.ks = add i64 %i.km, %i.ko                    ; 3 uses
  %i.kt = add i64 %i.kq, %i.kr                    ; 2 uses
  %i.ku = call noundef i64 @llvm.fshl.i64(i64 %i.ko, i64 %i.ko, i64 17)
  %i.kv = xor i64 %i.ks, %i.ku                    ; 3 uses
  %i.kw = call noundef i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 21)
  %i.kx = xor i64 %i.kw, %i.kt                    ; 3 uses
  %i.ky = call noundef i64 @llvm.fshl.i64(i64 %i.ks, i64 %i.ks, i64 32)
  %i.kz = xor i64 %i.kt, 576460752303423488
  %i.la = xor i64 %i.ky, 255
  %i.lb = add i64 %i.kz, %i.kv                    ; 3 uses
  %i.lc = add i64 %i.kx, %i.la                    ; 2 uses
  %i.ld = call noundef i64 @llvm.fshl.i64(i64 %i.kv, i64 %i.kv, i64 13)
  %i.le = xor i64 %i.lb, %i.ld                    ; 3 uses
  %i.lf = call noundef i64 @llvm.fshl.i64(i64 %i.kx, i64 %i.kx, i64 16)
  %i.lg = xor i64 %i.lf, %i.lc                    ; 3 uses
  %i.lh = call noundef i64 @llvm.fshl.i64(i64 %i.lb, i64 %i.lb, i64 32)
  %i.li = add i64 %i.le, %i.lc                    ; 3 uses
  %i.lj = add i64 %i.lg, %i.lh                    ; 2 uses
  %i.lk = call noundef i64 @llvm.fshl.i64(i64 %i.le, i64 %i.le, i64 17)
  %i.ll = xor i64 %i.li, %i.lk                    ; 3 uses
  %i.lm = call noundef i64 @llvm.fshl.i64(i64 %i.lg, i64 %i.lg, i64 21)
  %i.ln = xor i64 %i.lm, %i.lj                    ; 3 uses
  %i.lo = call noundef i64 @llvm.fshl.i64(i64 %i.li, i64 %i.li, i64 32)
  %i.lp = add i64 %i.ll, %i.lj                    ; 3 uses
  %i.lq = add i64 %i.ln, %i.lo                    ; 2 uses
  %i.lr = call noundef i64 @llvm.fshl.i64(i64 %i.ll, i64 %i.ll, i64 13)
  %i.ls = xor i64 %i.lr, %i.lp                    ; 3 uses
  %i.lt = call noundef i64 @llvm.fshl.i64(i64 %i.ln, i64 %i.ln, i64 16)
  %i.lu = xor i64 %i.lt, %i.lq                    ; 3 uses
  %i.lv = call noundef i64 @llvm.fshl.i64(i64 %i.lp, i64 %i.lp, i64 32)
  %i.lw = add i64 %i.ls, %i.lq                    ; 3 uses
  %i.lx = add i64 %i.lu, %i.lv                    ; 2 uses
  %i.ly = call noundef i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 17)
  %i.lz = xor i64 %i.ly, %i.lw                    ; 3 uses
  %i.ma = call noundef i64 @llvm.fshl.i64(i64 %i.lu, i64 %i.lu, i64 21)
  %i.mb = xor i64 %i.ma, %i.lx                    ; 3 uses
  %i.mc = call noundef i64 @llvm.fshl.i64(i64 %i.lw, i64 %i.lw, i64 32)
  %i.md = add i64 %i.lz, %i.lx
  %i.me = add i64 %i.mb, %i.mc                    ; 2 uses
  %i.mf = call noundef i64 @llvm.fshl.i64(i64 %i.lz, i64 %i.lz, i64 13)
  %i.mg = xor i64 %i.mf, %i.md                    ; 3 uses
  %i.mh = call noundef i64 @llvm.fshl.i64(i64 %i.mb, i64 %i.mb, i64 16)
  %i.mi = xor i64 %i.mh, %i.me                    ; 2 uses
  %i.mj = add i64 %i.mg, %i.me                    ; 3 uses
  %i.mk = call noundef i64 @llvm.fshl.i64(i64 %i.mg, i64 %i.mg, i64 17)
  %i.ml = call noundef i64 @llvm.fshl.i64(i64 %i.mi, i64 %i.mi, i64 21)
  %i.mm = call noundef i64 @llvm.fshl.i64(i64 %i.mj, i64 %i.mj, i64 32)
  %i.mn = xor i64 %i.ml, %i.mk
  %i.mo = xor i64 %i.mn, %i.mm
  %i.mp = xor i64 %i.mo, %i.mj                    ; 2 uses
  %i.mq = lshr i64 %i.mp, 57
  %i.mr = trunc nuw nsw i64 %i.mq to i8
  %i.ms = insertelement <16 x i8> poison, i8 %i.mr, i64 0
  %i.mt = shufflevector <16 x i8> %i.ms, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %._crit_edge.i.i253
  %.sroa.9.0.i.i.i138 = phi i64 [ 0, %._crit_edge.i.i253 ], [ %i.nk, %bb.at ]
  %.pn.i.i139 = phi i64 [ %i.mp, %._crit_edge.i.i253 ], [ %i.nl, %bb.at ]
  %.sroa.01.0.i.i.i140 = and i64 %.pn.i.i139, %i.hr ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.sroa.01.0.i.i.i140
  %.sroa.0.0.copyload.i24.i.i141 = load <16 x i8>, ptr %i.mu, align 1, !noalias !8269 ; 2 uses
  %i.mv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i141, %i.mt
  %i.mw = bitcast <16 x i1> %i.mv to i16          ; 2 uses
  %.not.i.not30.i.i142 = icmp eq i16 %i.mw, 0
  br i1 %.not.i.not30.i.i142, label %._crit_edge.i.i147, label %.lr.ph.i.i143

.lr.ph.i.i143:                                    ; preds = %bb.ar, %bb.as
  %.sroa.06.0.i31.i.i144 = phi i16 [ %i.nj, %bb.as ], [ %i.mw, %bb.ar ] ; 3 uses
  %i.mx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i144, i1 true)
  %i.my = zext nneg i16 %i.mx to i64
  %i.mz = add i64 %.sroa.01.0.i.i.i140, %i.my
  %i.na = and i64 %i.mz, %i.hr
  %i.nb = sub nsw i64 0, %i.na
  %i.nc = getelementptr inbounds [16 x i8], ptr %i.hs, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 -16
  %.val2.i.i.i145 = load i64, ptr %i.nd, align 8, !noalias !8270, !noundef !5
  %i.ne = icmp eq i64 %i.jn, %.val2.i.i.i145
  br i1 %i.ne, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit, label %bb.as, !prof !11

._crit_edge.i.i147:                               ; preds = %bb.as, %bb.ar
  %i.nf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i141, splat (i8 -1)
  %i.ng = bitcast <16 x i1> %i.nf to i16
  %i.nh = icmp eq i16 %i.ng, 0
  br i1 %i.nh, label %bb.at, label %select.unfold359.invoke, !prof !13

bb.as:                                            ; preds = %.lr.ph.i.i143
  %i.ni = add i16 %.sroa.06.0.i31.i.i144, -1
  %i.nj = and i16 %i.ni, %.sroa.06.0.i31.i.i144   ; 2 uses
  %.not.i.not.i.i146 = icmp eq i16 %i.nj, 0
  br i1 %.not.i.not.i.i146, label %._crit_edge.i.i147, label %.lr.ph.i.i143

bb.at:                                            ; preds = %._crit_edge.i.i147
  %i.nk = add i64 %.sroa.9.0.i.i.i138, 16         ; 2 uses
  %i.nl = add i64 %.sroa.01.0.i.i.i140, %i.nk
  br label %bb.ar

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit: ; preds = %.lr.ph.i.i143
  %i.nm = getelementptr inbounds i8, ptr %i.nc, i64 -8
  %i.nn = load i64, ptr %i.nm, align 8, !noundef !5
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.nn, i64 %.sroa.032.1615) ; 2 uses
  %i.no = add nuw i64 %9, 1                       ; 2 uses
  %exitcond817.not = icmp eq i64 %i.no, %3
  br i1 %exitcond817.not, label %._crit_edge620.loopexit, label %.lr.ph619.split

._crit_edge.i.i272:                               ; preds = %bb.ah
  %.reass.reass.reass = xor i64 %i.iy, %invariant.op ; 3 uses
  %i.np = add i64 %.reass.reass.reass, %i.hl      ; 2 uses
  %i.nq = call noundef i64 @llvm.fshl.i64(i64 %.reass.reass.reass, i64 %.reass.reass.reass, i64 16)
  %i.nr = xor i64 %i.np, %i.nq                    ; 3 uses
  %i.ns = add i64 %i.hn, %i.nr                    ; 2 uses
  %i.nt = xor i64 %i.ns, %i.iy
  %i.nu = add i64 %i.hp, %i.np                    ; 3 uses
  %i.nv = call noundef i64 @llvm.fshl.i64(i64 %i.nu, i64 %i.nu, i64 32)
  %i.nw = call noundef i64 @llvm.fshl.i64(i64 %i.nr, i64 %i.nr, i64 21)
  %i.nx = xor i64 %i.nu, %i.hq                    ; 3 uses
  %i.ny = xor i64 %i.nw, %i.ns
  %i.nz = xor i64 %i.ny, 576460752303423488       ; 3 uses
  %i.oa = add i64 %i.nx, %i.nt                    ; 3 uses
  %i.ob = add i64 %i.nz, %i.nv                    ; 2 uses
  %i.oc = call noundef i64 @llvm.fshl.i64(i64 %i.nx, i64 %i.nx, i64 13)
  %i.od = xor i64 %i.oc, %i.oa                    ; 3 uses
  %i.oe = call noundef i64 @llvm.fshl.i64(i64 %i.nz, i64 %i.nz, i64 16)
  %i.of = xor i64 %i.oe, %i.ob                    ; 3 uses
  %i.og = call noundef i64 @llvm.fshl.i64(i64 %i.oa, i64 %i.oa, i64 32)
  %i.oh = add i64 %i.ob, %i.od                    ; 3 uses
  %i.oi = add i64 %i.of, %i.og                    ; 2 uses
  %i.oj = call noundef i64 @llvm.fshl.i64(i64 %i.od, i64 %i.od, i64 17)
  %i.ok = xor i64 %i.oh, %i.oj                    ; 3 uses
  %i.ol = call noundef i64 @llvm.fshl.i64(i64 %i.of, i64 %i.of, i64 21)
  %i.om = xor i64 %i.ol, %i.oi                    ; 3 uses
  %i.on = call noundef i64 @llvm.fshl.i64(i64 %i.oh, i64 %i.oh, i64 32)
  %i.oo = xor i64 %i.oi, 576460752303423488
  %i.op = xor i64 %i.on, 255
  %i.oq = add i64 %i.oo, %i.ok                    ; 3 uses
  %i.or = add i64 %i.om, %i.op                    ; 2 uses
  %i.os = call noundef i64 @llvm.fshl.i64(i64 %i.ok, i64 %i.ok, i64 13)
  %i.ot = xor i64 %i.oq, %i.os                    ; 3 uses
  %i.ou = call noundef i64 @llvm.fshl.i64(i64 %i.om, i64 %i.om, i64 16)
  %i.ov = xor i64 %i.ou, %i.or                    ; 3 uses
  %i.ow = call noundef i64 @llvm.fshl.i64(i64 %i.oq, i64 %i.oq, i64 32)
  %i.ox = add i64 %i.ot, %i.or                    ; 3 uses
  %i.oy = add i64 %i.ov, %i.ow                    ; 2 uses
  %i.oz = call noundef i64 @llvm.fshl.i64(i64 %i.ot, i64 %i.ot, i64 17)
  %i.pa = xor i64 %i.ox, %i.oz                    ; 3 uses
  %i.pb = call noundef i64 @llvm.fshl.i64(i64 %i.ov, i64 %i.ov, i64 21)
  %i.pc = xor i64 %i.pb, %i.oy                    ; 3 uses
  %i.pd = call noundef i64 @llvm.fshl.i64(i64 %i.ox, i64 %i.ox, i64 32)
  %i.pe = add i64 %i.pa, %i.oy                    ; 3 uses
  %i.pf = add i64 %i.pc, %i.pd                    ; 2 uses
  %i.pg = call noundef i64 @llvm.fshl.i64(i64 %i.pa, i64 %i.pa, i64 13)
  %i.ph = xor i64 %i.pg, %i.pe                    ; 3 uses
  %i.pi = call noundef i64 @llvm.fshl.i64(i64 %i.pc, i64 %i.pc, i64 16)
  %i.pj = xor i64 %i.pi, %i.pf                    ; 3 uses
  %i.pk = call noundef i64 @llvm.fshl.i64(i64 %i.pe, i64 %i.pe, i64 32)
  %i.pl = add i64 %i.ph, %i.pf                    ; 3 uses
  %i.pm = add i64 %i.pj, %i.pk                    ; 2 uses
  %i.pn = call noundef i64 @llvm.fshl.i64(i64 %i.ph, i64 %i.ph, i64 17)
  %i.po = xor i64 %i.pn, %i.pl                    ; 3 uses
  %i.pp = call noundef i64 @llvm.fshl.i64(i64 %i.pj, i64 %i.pj, i64 21)
  %i.pq = xor i64 %i.pp, %i.pm                    ; 3 uses
  %i.pr = call noundef i64 @llvm.fshl.i64(i64 %i.pl, i64 %i.pl, i64 32)
  %i.ps = add i64 %i.po, %i.pm
  %i.pt = add i64 %i.pq, %i.pr                    ; 2 uses
  %i.pu = call noundef i64 @llvm.fshl.i64(i64 %i.po, i64 %i.po, i64 13)
  %i.pv = xor i64 %i.pu, %i.ps                    ; 3 uses
  %i.pw = call noundef i64 @llvm.fshl.i64(i64 %i.pq, i64 %i.pq, i64 16)
  %i.px = xor i64 %i.pw, %i.pt                    ; 2 uses
  %i.py = add i64 %i.pv, %i.pt                    ; 3 uses
  %i.pz = call noundef i64 @llvm.fshl.i64(i64 %i.pv, i64 %i.pv, i64 17)
  %i.qa = call noundef i64 @llvm.fshl.i64(i64 %i.px, i64 %i.px, i64 21)
  %i.qb = call noundef i64 @llvm.fshl.i64(i64 %i.py, i64 %i.py, i64 32)
  %i.qc = xor i64 %i.qa, %i.pz
  %i.qd = xor i64 %i.qc, %i.qb
  %i.qe = xor i64 %i.qd, %i.py                    ; 2 uses
  %i.qf = lshr i64 %i.qe, 57
  %i.qg = trunc nuw nsw i64 %i.qf to i8
  %i.qh = insertelement <16 x i8> poison, i8 %i.qg, i64 0
  %i.qi = shufflevector <16 x i8> %i.qh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %._crit_edge.i.i272
  %.sroa.9.0.i.i.i154 = phi i64 [ 0, %._crit_edge.i.i272 ], [ %i.qz, %bb.aw ]
  %.pn.i.i155 = phi i64 [ %i.qe, %._crit_edge.i.i272 ], [ %i.ra, %bb.aw ]
  %.sroa.01.0.i.i.i156 = and i64 %.pn.i.i155, %i.hr ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.sroa.01.0.i.i.i156
  %.sroa.0.0.copyload.i24.i.i157 = load <16 x i8>, ptr %i.qj, align 1, !noalias !8271 ; 2 uses
  %i.qk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i157, %i.qi
  %i.ql = bitcast <16 x i1> %i.qk to i16          ; 2 uses
  %.not.i.not30.i.i158 = icmp eq i16 %i.ql, 0
  br i1 %.not.i.not30.i.i158, label %._crit_edge.i.i163, label %.lr.ph.i.i159

.lr.ph.i.i159:                                    ; preds = %bb.au, %bb.av
  %.sroa.06.0.i31.i.i160 = phi i16 [ %i.qy, %bb.av ], [ %i.ql, %bb.au ] ; 3 uses
  %i.qm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i160, i1 true)
  %i.qn = zext nneg i16 %i.qm to i64
  %i.qo = add i64 %.sroa.01.0.i.i.i156, %i.qn
  %i.qp = and i64 %i.qo, %i.hr
  %i.qq = sub nsw i64 0, %i.qp
  %i.qr = getelementptr inbounds [16 x i8], ptr %i.hs, i64 %i.qq ; 2 uses
  %i.qs = getelementptr inbounds i8, ptr %i.qr, i64 -16
  %.val2.i.i.i161 = load i64, ptr %i.qs, align 8, !noalias !8272, !noundef !5
  %i.qt = icmp eq i64 %i.iy, %.val2.i.i.i161
  br i1 %i.qt, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168, label %bb.av, !prof !11

._crit_edge.i.i163:                               ; preds = %bb.av, %bb.au
  %i.qu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i157, splat (i8 -1)
  %i.qv = bitcast <16 x i1> %i.qu to i16
  %i.qw = icmp eq i16 %i.qv, 0
  br i1 %i.qw, label %bb.aw, label %select.unfold359.invoke, !prof !13

bb.av:                                            ; preds = %.lr.ph.i.i159
  %i.qx = add i16 %.sroa.06.0.i31.i.i160, -1
  %i.qy = and i16 %i.qx, %.sroa.06.0.i31.i.i160   ; 2 uses
  %.not.i.not.i.i162 = icmp eq i16 %i.qy, 0
  br i1 %.not.i.not.i.i162, label %._crit_edge.i.i163, label %.lr.ph.i.i159

bb.aw:                                            ; preds = %._crit_edge.i.i163
  %i.qz = add i64 %.sroa.9.0.i.i.i154, 16         ; 2 uses
  %i.ra = add i64 %.sroa.01.0.i.i.i156, %i.qz
  br label %bb.au

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjjNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit168: ; preds = %.lr.ph.i.i159
  %i.rb = getelementptr inbounds i8, ptr %i.qr, i64 -8
  %i.rc = load i64, ptr %i.rb, align 8, !noundef !5
  %spec.store.select1 = call i64 @llvm.umin.i64(i64 %i.rc, i64 %.sroa.032.0592) ; 2 uses
  %i.rd = icmp ugt i64 %i.iu, %2
  %i.re = icmp ugt i64 %i.iz, %5
  %or.cond = and i1 %i.re, %i.rd
  br i1 %or.cond, label %.lr.ph596.split, label %._crit_edge597

select.unfold359.invoke:                          ; preds = %bb.ad, %bb.af, %._crit_edge.i.i163, %._crit_edge.i.i147
  %i.rf = phi ptr [ @128, %._crit_edge.i.i163 ], [ @127, %._crit_edge.i.i147 ], [ @128, %bb.ad ], [ @127, %bb.af ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rf) #38
          to label %select.unfold359.cont unwind label %.loopexit.split-lp.loopexit.split-lp

select.unfold359.cont:                            ; preds = %select.unfold359.invoke
  unreachable

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread: ; preds = %._crit_edge.i.i, %bb.w, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit
  %.sroa.02.1 = phi i1 [ true, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit ], [ %.sroa.02.0580, %bb.w ], [ %.sroa.02.0580, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.rg = icmp ult i64 %i.dd, %6
  br i1 %i.rg, label %bb.l, label %.outer._crit_edge.loopexit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit114: ; preds = %bb.p, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i113, %.loopexit400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !8273)
  call void @llvm.experimental.noalias.scope.decl(metadata !8274)
  call void @llvm.experimental.noalias.scope.decl(metadata !8275)
  call void @llvm.experimental.noalias.scope.decl(metadata !8276)
  call void @llvm.experimental.noalias.scope.decl(metadata !8277)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !alias.scope !8278, !noundef !5 ; 3 uses
  %i.rj = icmp eq i64 %i.ri, 0
  br i1 %i.rj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit187, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapjjEECsdftwklc2oBO_7similar.exit114
  call void @llvm.experimental.noalias.scope.decl(metadata !8279)
  %i.rk = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.rl = load i64, ptr %i.rk, align 8, !alias.scope !8280, !noundef !5 ; 2 uses
  %i.rm = icmp eq i64 %i.rl, 0
  br i1 %i.rm, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i182, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.rn = load ptr, ptr %i.e, align 8, !alias.scope !8280, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i169 = load <16 x i8>, ptr %i.rn, align 16, !noalias !8281
  %i.ro = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i169, splat (i8 -1)
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rq = bitcast <16 x i1> %i.ro to i16
  br label %bb.az

bb.az:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i181, %bb.ay
  %.sroa.06.017.i.i.i.i.i.i170 = phi ptr [ %i.rn, %bb.ay ], [ %.sroa.06.1.i.i.i.i.i.i177, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i181 ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i171 = phi ptr [ %i.rp, %bb.ay ], [ %.sroa.6.1.i.i.i.i.i.i176, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i181 ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i172 = phi i16 [ %i.rq, %bb.ay ], [ %i.rz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i181 ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i173 = phi i64 [ %i.rl, %bb.ay ], [ %i.sc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i181 ]
  %.not11.i.i.i.i.i.i.i174 = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i172, 0
  br i1 %.not11.i.i.i.i.i.i.i174, label %.lr.ph.i.i.i.i.i.i.i183, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i175

.lr.ph.i.i.i.i.i.i.i183:                          ; preds = %bb.az, %.lr.ph.i.i.i.i.i.i.i183
  %i.rr = phi ptr [ %i.rv, %.lr.ph.i.i.i.i.i.i.i183 ], [ %.sroa.6.016.i.i.i.i.i.i171, %bb.az ] ; 2 uses
  %i.rs = phi ptr [ %i.ru, %.lr.ph.i.i.i.i.i.i.i183 ], [ %.sroa.06.017.i.i.i.i.i.i170, %bb.az ]
  %.val9.i.i.i.i.i.i.i184 = load <16 x i8>, ptr %i.rr, align 16, !noalias !8282
  %i.rt = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i184, splat (i8 -1)
  %i.ru = getelementptr inbounds i8, ptr %i.rs, i64 -512 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rr, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i185 = bitcast <16 x i1> %i.rt to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i186 = icmp eq i16 %.cast.i.i.i.i.i.i.i185, 0
  br i1 %.not.i.i.i.i.i.i.i186, label %.lr.ph.i.i.i.i.i.i.i183, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i175

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i175: ; preds = %.lr.ph.i.i.i.i.i.i.i183, %bb.az
  %.sroa.6.1.i.i.i.i.i.i176 = phi ptr [ %.sroa.6.016.i.i.i.i.i.i171, %bb.az ], [ %i.rv, %.lr.ph.i.i.i.i.i.i.i183 ]
  %.sroa.06.1.i.i.i.i.i.i177 = phi ptr [ %.sroa.06.017.i.i.i.i.i.i170, %bb.az ], [ %i.ru, %.lr.ph.i.i.i.i.i.i.i183 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i178 = phi i16 [ %.sroa.87.015.i.i.i.i.i.i172, %bb.az ], [ %.cast.i.i.i.i.i.i.i185, %.lr.ph.i.i.i.i.i.i.i183 ] ; 3 uses
  %i.rw = add i16 %.lcssa.i.i.i.i.i.i.i178, -1
  %i.rx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i178, i1 true)
  %i.ry = zext nneg i16 %i.rx to i64
  %i.rz = and i16 %i.rw, %.lcssa.i.i.i.i.i.i.i178
  %i.sa = sub nsw i64 0, %i.ry
  %i.sb = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i177, i64 %i.sa ; 2 uses
  %i.sc = add i64 %.sroa.108.014.i.i.i.i.i.i173, -1 ; 2 uses
  %i.sd = getelementptr i8, ptr %i.sb, i64 -24
  %.val.i.i.i.i.i.i179 = load i64, ptr %i.sd, align 8, !noalias !8280 ; 2 uses
end_hunk_0
