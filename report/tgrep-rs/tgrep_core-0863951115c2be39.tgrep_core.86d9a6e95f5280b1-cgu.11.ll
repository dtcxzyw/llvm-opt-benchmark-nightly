Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.11?download=true
inline.NumInlined: 561
inline.NumDeleted: 278
begin_hunk_0_@_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder11build_index:bb.a
  store i64 %8, ptr %i.q, align 8, !noalias !321
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  store i64 0, ptr %i.ac, align 8, !alias.scope !323
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !323
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !323
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !323
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !323
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.ab, align 8, !alias.scope !323
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i8 1, ptr %i.ad, align 4, !alias.scope !323
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 67108864, ptr %i.ae, align 8, !alias.scope !323
  store i64 1, ptr %i.e, align 8, !alias.scope !323
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 67108864, ptr %i.af, align 8, !alias.scope !323
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ah = zext i1 %5 to i8
  store i8 %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 73
  %i.aj = zext i1 %6 to i8
  store i8 %i.aj, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 74
  store i8 0, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 75
  store i8 0, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i8 1, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 67108864, ptr %i.ap, align 8
  store i64 1, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 67108864, ptr %i.aq, align 8
  invoke void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder24build_index_with_options(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address, read_provenance) %3, i64 %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder12BuildOutcomeEBF_.exit.i, %.loopexit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.p, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.g ], [ %i.bc, %bb.p ], [ %.pn.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder12BuildOptionsEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.f) #22
          to label %bb.t unwind label %bb.y

bb.h:                                             ; preds = %.loopexit
  %i.as = load i64, ptr %i.g, align 8, !range !8, !noundef !5
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.av)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEEB2c_.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d) #22
          to label %.body.i.i unwind label %bb.r

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEEB2c_.exit.i.i: ; preds = %bb.j
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEEB2c_.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %.body.i.i unwind label %bb.n

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEEB2c_.exit.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.l, %bb.k
  %.pn.i.i = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ba, %bb.o ], [ %i.ax, %bb.l ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #22
          to label %.body unwind label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder12BuildOutcomeEBF_.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.r:                                             ; preds = %.body.i.i, %bb.k
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder12BuildOutcomeEBF_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder11build_index0B5_.exit unwind label %bb.g

_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder11build_index0B5_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder12BuildOutcomeEBF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core7builder11build_index0B5_.exit, %bb.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core7builder12BuildOptionsEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.f)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.u, %.body
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.u ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #22
          to label %common.resume unwind label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.v
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.y:                                             ; preds = %bb.t, %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder12batch_ranges(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8
  %.idx = shl nuw nsw i64 %2, 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.e, label %.lr.ph

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtNtB4_3ops5range5RangejEEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #22
          to label %bb.n unwind label %bb.m

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.f = phi i64 [ %i.z, %bb.i ], [ 0, %bb.a ]    ; 6 uses
  %.sroa.0.035 = phi i64 [ %.sroa.0.1, %bb.i ], [ 0, %bb.a ] ; 7 uses
  %.sroa.06.034 = phi i64 [ %i.ab, %bb.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.08.033 = phi i64 [ %i.ae, %bb.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.0.02332 = phi ptr [ %i.g, %bb.i ], [ %1, %bb.a ] ; 5 uses
  %.sroa.7.031 = phi i64 [ %i.h, %bb.i ], [ 0, %bb.a ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02332, i64 16 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.7.031, 1
  %i.i = sub i64 %.sroa.7.031, %.sroa.0.035
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.l, label %bb.f

._crit_edge:                                      ; preds = %bb.i
  %i.k = icmp samesign ult i64 %.sroa.0.1, %2
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.l = load i64, ptr %i.a, align 8, !range !17, !alias.scope !328, !noundef !5
  %i.m = icmp eq i64 %i.z, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8grow_oneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit unwind label %.loopexit.split-lp

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.d, %bb.c
  %i.n = load ptr, ptr %i.b, align 8, !alias.scope !328, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.z ; 2 uses
  store i64 %.sroa.0.1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %2, ptr %i.p, align 8
  %i.q = add i64 %i.z, 1
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !328
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.lr.ph
  %i.r = load i64, ptr %.sroa.0.02332, align 8, !noundef !5
  %i.s = call i64 @llvm.uadd.sat.i64(i64 %.sroa.06.034, i64 %i.r)
  %i.t = icmp ugt i64 %i.s, 67108864
  br i1 %i.t, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ugt i64 %.sroa.7.031, %.sroa.0.035
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.02332, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  %i.x = call i64 @llvm.uadd.sat.i64(i64 %.sroa.08.033, i64 %i.w)
  %i.y = icmp ugt i64 %i.x, 268435456
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit22, %bb.g, %bb.l, %bb.h
  %i.z = phi i64 [ %i.f, %bb.g ], [ %i.f, %bb.h ], [ %i.f, %bb.l ], [ %i.al, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit22 ] ; 4 uses
  %.sroa.08.1 = phi i64 [ %.sroa.08.033, %bb.g ], [ %.sroa.08.033, %bb.h ], [ %.sroa.08.033, %bb.l ], [ 0, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit22 ]
  %.sroa.06.1 = phi i64 [ %.sroa.06.034, %bb.g ], [ %.sroa.06.034, %bb.h ], [ %.sroa.06.034, %bb.l ], [ 0, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit22 ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.035, %bb.g ], [ %.sroa.0.035, %bb.h ], [ %.sroa.0.035, %bb.l ], [ %.sroa.7.031, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit22 ] ; 3 uses
  %i.aa = load i64, ptr %.sroa.0.02332, align 8, !noundef !5
  %i.ab = call i64 @llvm.uadd.sat.i64(i64 %.sroa.06.1, i64 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02332, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  %i.ae = call i64 @llvm.uadd.sat.i64(i64 %.sroa.08.1, i64 %i.ad)
  %i.af = icmp eq ptr %i.g, %i.d
  br i1 %i.af, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.l, %bb.h
  %i.ag = load i64, ptr %i.a, align 8, !range !17, !alias.scope !329, !noundef !5
  %i.ah = icmp eq i64 %i.f, %i.ag
  br i1 %i.ah, label %bb.k, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit22

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8grow_oneCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit22 unwind label %.loopexit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit22: ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %i.b, align 8, !alias.scope !329, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.f ; 2 uses
  store i64 %.sroa.0.035, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.7.031, ptr %i.ak, align 8
  %i.al = add i64 %i.f, 1                         ; 2 uses
  store i64 %i.al, ptr %i.c, align 8, !alias.scope !329
  br label %bb.i

bb.l:                                             ; preds = %bb.f, %.lr.ph
  %i.am = icmp ugt i64 %.sroa.7.031, %.sroa.0.035
  br i1 %i.am, label %bb.j, label %bb.i

bb.m:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7builder14read_for_index(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [176 x i8], align 8               ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [176 x i8], align 8               ; 6 uses
  %.sroa.01.i79 = alloca [72 x i8], align 8       ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [4 x i8], align 4                 ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [16 x i8], align 8                ; 11 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [176 x i8], align 8               ; 5 uses
  %i.s = alloca [80 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [176 x i8], align 8               ; 6 uses
  %.sroa.01.i49 = alloca [72 x i8], align 8       ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [4 x i8], align 4                 ; 10 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [176 x i8], align 8              ; 5 uses
  %i.ac = alloca [80 x i8], align 8               ; 5 uses
  %i.ad = alloca [176 x i8], align 8              ; 6 uses
  %.sroa.01.i24 = alloca [72 x i8], align 8       ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [4 x i8], align 4                ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [176 x i8], align 8              ; 5 uses
  %i.ak = alloca [80 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 9 uses
  %i.am = alloca [176 x i8], align 8              ; 6 uses
  %.sroa.01.i = alloca [72 x i8], align 8         ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [4 x i8], align 4                ; 11 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %i.ar = alloca [8 x i8], align 8                ; 5 uses
  %i.as = alloca [32 x i8], align 8               ; 9 uses
  %i.at = alloca [128 x i8], align 8              ; 11 uses
  %.sroa.10 = alloca [88 x i8], align 8           ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 2 uses
  %i.aw = alloca [8 x i8], align 8                ; 6 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  store i64 %3, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.ay = trunc nuw i64 %5 to i1                  ; 2 uses
  %. = select i1 %i.ay, i64 %6, i64 -1            ; 2 uses
  store i64 %., ptr %i.aw, align 8
  %i.az = icmp ugt i64 %3, %.
  br i1 %i.az, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = icmp ugt i64 %3, 1048575
  br i1 %i.ba, label %bb.af, label %bb.c

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.aw, ptr %i.au, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noundef nonnull @7, ptr noundef nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.bb = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtB7_6string6StringECs30WoLBgco1_6ignore(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.av) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.en

bb.c:                                             ; preds = %bb.av, %bb.b
  %i.bd = phi i64 [ %.pre, %bb.av ], [ %3, %bb.b ]
  %.val19 = load ptr, ptr %4, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.be = call fastcc { ptr, i64 } @_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_15OwnedReadBudget7acquire(ptr nonnull %.val19, i64 noundef %i.bd) ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %i.ax, ptr %i.as, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 6 uses
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %i.bg, ptr %i.bj, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !453
  invoke void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File4openRNtNtB8_4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.e unwind label %.thread.i, !noalias !454

.thread47.i:                                      ; preds = %bb.q, %bb.p, %bb.l
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %.val3550.i = load i32, ptr %i.ao, align 4, !range !6, !noalias !453, !noundef !5
  %i.bk = call noundef i32 @close(i32 noundef %.val3550.i) #26, !noalias !454 ; 0 uses
  br label %bb.ae

bb.d:                                             ; preds = %bb.x
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

.thread.i:                                        ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.bm = load i32, ptr %i.an, align 8, !range !4, !noalias !453, !noundef !5
  %i.bn = trunc nuw i32 %i.bm to i1
  br i1 %i.bn, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !453, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !453
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  invoke void @_RNvXs1_NtCsbzNSmZPCnTx_10tgrep_core7builderNtB5_15OwnedReadPermitNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %bb.i unwind label %bb.g, !noalias !457

bb.g:                                             ; preds = %bb.f
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.br = load ptr, ptr %i.bi, align 8, !alias.scope !460, !noalias !461, !nonnull !5, !noundef !5
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !462
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core7builder15OwnedReadBudgetE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi) #25
          to label %common.resume unwind label %bb.k, !noalias !457

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.bu = load ptr, ptr %i.bi, align 8, !alias.scope !465, !noalias !461, !nonnull !5, !noundef !5
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !466
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.j, label %bb.aw

end_hunk_0
