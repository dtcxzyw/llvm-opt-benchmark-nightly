Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.08?download=true
inline.NumInlined: 813
inline.NumDeleted: 345
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs_NtCsbNLsQi0JuJ4_5tgrep8matchingNtB4_13SearchMatcher11replace_all:bb.a

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit: ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.copyload
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !1321, !noundef !6
  %i.be = icmp sgt i8 %i.bd, -65
  br i1 %i.be, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread57, !prof !16

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread57: ; preds = %bb.p, %bb.l, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.sroa.0.066, i64 noundef %.sroa.0.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #32
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread: ; preds = %bb.o, %bb.m, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.066
  %gepdiff = sub nuw nsw i64 %.sroa.0.0.copyload, %.sroa.0.066 ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %gepdiff)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread
  %i.bg = load i64, ptr %.sroa.511.0..sroa_idx, align 8, !alias.scope !1324, !noundef !6 ; 3 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  call void @llvm.assume(i1 %i.bh)
  %.not.i30 = icmp eq i64 %.sroa.0.0.copyload, %.sroa.0.066
  br i1 %.not.i30, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc32
  %i.bi = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1324, !nonnull !6, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull readonly align 1 %i.bf, i64 %gepdiff, i1 false)
  %.pre.i31 = load i64, ptr %.sroa.511.0..sroa_idx, align 8, !alias.scope !1324
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc32
  %i.bk = phi i64 [ %.pre.i31, %bb.y ], [ %i.bg, %.noexc32 ]
  %i.bl = add i64 %i.bk, %gepdiff                 ; 3 uses
  store i64 %i.bl, ptr %.sroa.511.0..sroa_idx, align 8, !alias.scope !1324
  %i.bm = icmp sgt i64 %i.bl, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = load ptr, ptr %.sroa.9.16..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.bo = load i64, ptr %i.ac, align 8, !noundef !6 ; 4 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bo)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.z
  %i.bp = load i64, ptr %.sroa.511.0..sroa_idx, align 8, !alias.scope !1325, !noundef !6 ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  call void @llvm.assume(i1 %i.bq)
  %.not.i34 = icmp eq i64 %i.bo, 0
  br i1 %.not.i34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.noexc36
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1325, !nonnull !6, !noundef !6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %i.bn, i64 %i.bo, i1 false)
  %.pre.i35 = load i64, ptr %.sroa.511.0..sroa_idx, align 8, !alias.scope !1325
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc36
  %i.bt = phi i64 [ %.pre.i35, %bb.aa ], [ %i.bp, %.noexc36 ]
  %i.bu = add i64 %i.bt, %i.bo                    ; 3 uses
  store i64 %i.bu, ptr %.sroa.511.0..sroa_idx, align 8, !alias.scope !1325
  %i.bv = icmp sgt i64 %i.bu, -1
  call void @llvm.assume(i1 %i.bv)
  %i.bw = load i64, ptr %i.q, align 8, !alias.scope !1326, !noundef !6 ; 3 uses
  %i.bx = load i64, ptr %i.f, align 8, !range !9, !alias.scope !1326, !noundef !6
  %i.by = icmp eq i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs22empcGmRho_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #30
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.bz = load ptr, ptr %i.p, align 8, !alias.scope !1326, !nonnull !6, !noundef !6
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bw ; 2 uses
  store i64 %i.bl, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %i.bu, ptr %i.cb, align 8
  %i.cc = add i64 %i.bw, 1
  store i64 %i.cc, ptr %i.q, align 8, !alias.scope !1326
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body39 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cf = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1327, !nonnull !6, !noundef !6
  %i.cg = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1327, !nonnull !6, !noundef !6 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.cf
  br i1 %i.ch, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTjjNtNtB9_6string6StringEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit

bb.ag:                                            ; preds = %.body39, %.body, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTjjNtNtBI_6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

.body:                                            ; preds = %bb.ah, %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTjjNtNtBI_6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit
  %.pn25 = phi { ptr, i32 } [ %.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTjjNtNtBI_6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.cj, %bb.ah ], [ %i.x, %bb.g ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #29
          to label %common.resume unwind label %bb.ag

bb.ah:                                            ; preds = %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit44 unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %bb.ai ], [ %.pn25, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit44: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep.exit
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.x
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsf3Ta7LF998c_4core6result6ResultbNtNtCsaNF60lbdjjq_6notify5error5ErrorEE18disconnect_sendersCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !6
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsaNF60lbdjjq_6notify5error5ErrorEE18disconnect_sendersCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !6
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE13with_capacityCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([512 x i8]) align 128 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @80, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %2 = add i64 %1, 1
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 1) ; 2 uses
  %i.a = icmp sgt i64 %3, -1
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %3, i1 false)
  %i.c = sub nuw nsw i64 64, %i.b
  %i.d = shl nuw i64 1, %i.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.04.0 = phi i64 [ %i.d, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.e = shl i64 %.sroa.04.0, 1
  %i.f = tail call { ptr, i64 } @_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc5array4SlotNtNtCs6mHKL3HfXZM_12notify_types5event5EventEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2t_8adapters3map3MapINtNtNtB2v_3ops5range5RangejENCNvMs_BT_INtBT_7ChannelB1C_E13with_capacity0EECsbNLsQi0JuJ4_5tgrep(i64 noundef 0, i64 noundef %1) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store i64 0, ptr %0, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.i, align 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.h, ptr %i.k, align 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %1, ptr %i.l, align 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.e, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %.sroa.04.0, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 0, ptr %i.o, align 128
  %.sroa.07.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i8 0, ptr %.sroa.07.sroa.5.0..sroa_idx, align 4
  %.sroa.07.sroa.6.sroa.5.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %.sroa.07.sroa.6.sroa.5.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.07.sroa.6.sroa.6.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.6.sroa.6.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx, align 16
  %.sroa.07.sroa.6.sroa.7.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.07.sroa.6.sroa.9.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.sroa.6.sroa.7.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.6.sroa.9.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.07.sroa.6.sroa.10.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %.sroa.07.sroa.6.sroa.10.0..sroa.07.sroa.6.0..sroa_idx.sroa_idx, align 16
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 1, ptr %.sroa.58.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.p, align 64
  %.sroa.07.sroa.5.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i8 0, ptr %.sroa.07.sroa.5.0..sroa_idx25, align 4
  %.sroa.07.sroa.6.sroa.5.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %.sroa.07.sroa.6.sroa.5.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx, align 8
  %.sroa.07.sroa.6.sroa.6.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.6.sroa.6.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx, align 16
  %.sroa.07.sroa.6.sroa.7.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.07.sroa.6.sroa.9.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.sroa.6.sroa.7.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.07.sroa.6.sroa.9.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx, align 8
  %.sroa.07.sroa.6.sroa.10.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %.sroa.07.sroa.6.sroa.10.0..sroa.07.sroa.6.0..sroa_idx27.sroa_idx, align 16
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 1, ptr %.sroa.58.0..sroa_idx9, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE18disconnect_sendersCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !6
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE20disconnect_receiversCsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8 ; 2 uses
  %i.e = load i64, ptr %i.a, align 16, !noundef !6 ; 2 uses
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #28
  %.pre = load i64, ptr %i.a, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = load atomic i64, ptr %0 monotonic, align 128
  %i.k = xor i64 %i.i, -1
  %i.l = and i64 %i.d, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.q = phi i64 [ %i.i, %bb.c ], [ %.pre.i, %bb.i ]
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %bb.i ] ; 7 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.1.i, %bb.i ] ; 5 uses
  %i.r = add i64 %i.q, -1
  %i.s = and i64 %.sroa.0.0.i, %i.r               ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !noundef !6
  %i.u = sub i64 0, %i.t
  %i.v = and i64 %.sroa.0.0.i, %i.u
  %i.w = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.x = load i64, ptr %i.o, align 32, !noundef !6
  %i.y = icmp ult i64 %i.s, %i.x
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %i.s ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = add i64 %.sroa.0.0.i, 1
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %i.l, %.sroa.0.0.i
  br i1 %i.ad, label %_RNvMs_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs6mHKL3HfXZM_12notify_types5event5EventE20discard_all_messagesCsbNLsQi0JuJ4_5tgrep.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = add nuw i64 %i.s, 1
  %i.af = load i64, ptr %i.p, align 128, !noundef !6
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.k, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp ult i32 %.sroa.0.07.i, 7
  br i1 %i.ah, label %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i
  %i.ai = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.ai, 7                    ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ai, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1328

_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCsf3Ta7LF998c_4core3numm15overflowing_pow.exit.i.i, %bb.h
  %i.ak = add i32 %.sroa.0.07.i, 1
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit.i, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.ak, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6mHKL3HfXZM_12notify_types5event5EventECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs5Xr050g3D4S_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.j:                                             ; preds = %bb.f
end_hunk_0
