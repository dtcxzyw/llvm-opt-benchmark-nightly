Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.12?download=true
inline.NumInlined: 14058
inline.NumDeleted: 4214
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11trusted_lenINtNtB9_5utils6NoNullINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt32TypeEEINtNtNtCs8774dFTUdNv_12polars_arrow6legacy5utils22FromTrustedLenIteratormE24from_iter_trusted_lengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3X_3ops5range5RangemENCNvNtB7_6random34create_rand_index_with_replacement0EEB9_:bb.a
  %i.by = xor i64 %i.bw, %i.bq, !dbg !75006       ; 2 uses
  %i.bz = xor i64 %i.bv, %i.bu, !dbg !75007       ; 2 uses
  %i.ca = call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 45), !dbg !75008 ; 2 uses
  %i.cb = lshr i64 %i.bt, 32, !dbg !75009
  %i.cc = mul nuw i64 %i.cb, %i.v, !dbg !75010    ; 2 uses
  %i.cd = trunc i64 %i.cc to i32, !dbg !75011
  %.not.i.i.i.i.i = icmp ugt i32 %.sroa.7.0.copyload, %i.cd, !dbg !75012
  br i1 %.not.i.i.i.i.i, label %bb.b, label %bb.c, !dbg !75012

bb.c:                                             ; preds = %bb.b
  %i.ce = add nuw i32 %.sroa.2219.037.i.i, 1, !dbg !74982 ; 2 uses
  %i.cf = lshr i64 %i.cc, 32, !dbg !75013
  %i.cg = trunc nuw i64 %i.cf to i32, !dbg !75011
  %i.ch = add i32 %.sroa.5.0.copyload, %i.cg, !dbg !75014
  store i32 %i.ch, ptr %.sroa.02.042.i.i, align 4, !dbg !74994, !noalias !74920
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.02.042.i.i, i64 4, !dbg !74995
  %exitcond.not.i.i = icmp eq i32 %i.ce, %.sroa.9.0.copyload, !dbg !74978
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.split.i.i, !dbg !74979

bb.d:                                             ; preds = %bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #52
          to label %common.resume unwind label %bb.e, !dbg !75015, !noalias !74918

bb.e:                                             ; preds = %bb.d
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !75016, !noalias !74918
  unreachable, !dbg !75016

common.resume:                                    ; preds = %bb.f, %.thread12, %bb.t, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.cj, %bb.d ], [ %eh.lpad-body, %.thread12 ], [ %eh.lpad-body, %bb.f ], [ %i.cz, %bb.t ]
  resume { ptr, i32 } %common.resume.op, !dbg !75017

bb.f:                                             ; preds = %.body
  br i1 %.sroa.01.1.lpad-body, label %.thread12, label %common.resume, !dbg !75018

bb.g:                                             ; preds = %.loopexit, %bb.l
  %.sroa.01.1 = phi i1 [ true, %.loopexit ], [ false, %bb.l ], !dbg !75019
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !75020

.body:                                            ; preds = %bb.o, %bb.i, %bb.g
  %.sroa.01.1.lpad-body = phi i1 [ true, %bb.i ], [ %.sroa.01.1, %bb.g ], [ false, %bb.o ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.cr, %bb.i ], [ %i.cl, %bb.g ], [ %i.cx, %bb.o ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.i) #52
          to label %bb.f unwind label %bb.u, !dbg !75020

.loopexit:                                        ; preds = %bb.c, %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %.noexc.i
  %i.cm = load i64, ptr %i.o, align 8, !dbg !75021, !alias.scope !74919, !noalias !74920, !noundef !4867 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 2305843009213693952, !dbg !75022
  call void @llvm.assume(i1 %i.cn), !dbg !75023
  %i.co = add nuw nsw i64 %i.cm, %.sink1.i.i.i.i, !dbg !75024
  store i64 %i.co, ptr %i.o, align 8, !dbg !75025, !alias.scope !74919, !noalias !74920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !75026, !noalias !74950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !75015, !noalias !74918
  %i.cp = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemE8from_vecCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l), !dbg !75027
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BuffermE12from_storageCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.cp), !dbg !75028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !75029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !75030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !75031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !75031
  store i8 3, ptr %i.i, align 16, !dbg !75032, !alias.scope !74954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !75033, !noalias !74955
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.i, i16 noundef 1) #55
          to label %.noexc unwind label %bb.g, !dbg !75034

.noexc:                                           ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !74956), !dbg !75035
  call void @llvm.experimental.noalias.scope.decl(metadata !74957), !dbg !75035
  %i.cq = load i64, ptr %i.b, align 8, !dbg !75036, !range !5058, !alias.scope !74957, !noalias !74958, !noundef !4867
  %.not.i.i = icmp eq i64 %i.cq, 18, !dbg !75036
  br i1 %.not.i.i, label %bb.l, label %bb.h, !dbg !75037, !prof !5059

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !75038, !noalias !74959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !75038, !noalias !74958
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #53
          to label %bb.j unwind label %bb.i, !dbg !75039, !noalias !74960

bb.i:                                             ; preds = %bb.h
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %.body unwind label %bb.k, !dbg !75040, !noalias !74960

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !75041, !noalias !74960
  unreachable, !dbg !75041

bb.l:                                             ; preds = %.noexc
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !75042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ct, i64 32, i1 false), !dbg !75042, !alias.scope !74961, !noalias !74962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !75043, !noalias !74955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !75044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !75044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !75045
  store ptr null, ptr %i.g, align 8, !dbg !75045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !75046
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraymE7try_newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.m unwind label %bb.g, !dbg !75046

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !74964), !dbg !75047
  call void @llvm.experimental.noalias.scope.decl(metadata !74965), !dbg !75047
  %i.cu = load i8, ptr %i.e, align 8, !dbg !75048, !range !5534, !alias.scope !74965, !noalias !74964, !noundef !4867
  %i.cv = icmp eq i8 %i.cu, 42, !dbg !75048
  br i1 %i.cv, label %bb.n, label %bb.r, !dbg !75049, !prof !4879

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !75050, !noalias !74966
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !75050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.cw, i64 72, i1 false), !dbg !75050, !noalias !74964
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #53
          to label %bb.p unwind label %bb.o, !dbg !75051, !noalias !74966

bb.o:                                             ; preds = %bb.n
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #52
          to label %.body unwind label %bb.q, !dbg !75052, !noalias !74966

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !75053, !noalias !74966
  unreachable, !dbg !75053

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.e, i64 88, i1 false), !dbg !75054, !alias.scope !74966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !75055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !75056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !75056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !75056
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.i)
          to label %bb.s unwind label %bb.t, !dbg !75020

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !75020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !75057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !dbg !75057
  call void @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEE4fromB6_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.f), !dbg !75058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !75059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !75060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !75018
  ret void, !dbg !75061

bb.t:                                             ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(88) %i.k) #52
          to label %common.resume unwind label %bb.u, !dbg !75060

bb.u:                                             ; preds = %.thread12, %bb.t, %.body
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !75062
  unreachable, !dbg !75062

.thread12:                                        ; preds = %bb.f
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.u, !dbg !75063
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11trusted_lenINtNtB9_5utils6NoNullINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt32TypeEEINtNtNtCs8774dFTUdNv_12polars_arrow6legacy5utils22FromTrustedLenIteratormE24from_iter_trusted_lengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3X_5slice4iter4IterAmj2_ENCNvMs9_NtNtNtB9_5frame8group_by8positionNtB5h_10GroupsType11group_counts_0EEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !75064 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 6 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 16               ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !75177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !75178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !75179, !noalias !75154
  store i64 0, ptr %i.c, align 8, !dbg !75180, !noalias !75154
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !75180 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.n, align 8, !dbg !75180, !noalias !75154
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !75180 ; 4 uses
  store i64 0, ptr %i.o, align 8, !dbg !75180, !noalias !75154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75155), !dbg !75181
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.p = ptrtoint ptr %2 to i64, !dbg !75182      ; 2 uses
  %i.q = ptrtoint ptr %1 to i64, !dbg !75182      ; 2 uses
  %i.r = sub nuw i64 %i.p, %i.q, !dbg !75182
  %i.s = lshr exact i64 %i.r, 3, !dbg !75182      ; 2 uses
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.s)
          to label %.noexc.i unwind label %bb.b, !dbg !75183, !noalias !75154

.noexc.i:                                         ; preds = %bb.a
  %i.t = load i64, ptr %i.o, align 8, !dbg !75184, !alias.scope !75155, !noalias !75154, !noundef !4867 ; 4 uses
  %i.u = icmp ult i64 %i.t, 2305843009213693952, !dbg !75185
  call void @llvm.assume(i1 %i.u), !dbg !75186
  %i.v = icmp eq ptr %1, %2, !dbg !75187
  br i1 %i.v, label %bb.f, label %.lr.ph.preheader.i.i, !dbg !75188

.lr.ph.preheader.i.i:                             ; preds = %.noexc.i
  %i.w = load ptr, ptr %i.n, align 8, !dbg !75189, !alias.scope !75155, !noalias !75154, !nonnull !4867, !noundef !4867 ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.w, i64 %i.t, !dbg !75190 ; 5 uses
  %i.y = add i64 %i.p, -8, !dbg !75188
  %i.z = sub i64 %i.y, %i.q, !dbg !75188          ; 4 uses
  %i.aa = lshr i64 %i.z, 3, !dbg !75188
  %i.ab = add nuw nsw i64 %i.aa, 1, !dbg !75188   ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 320, !dbg !75188
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck, !dbg !75188

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.ac = shl nuw nsw i64 %i.t, 2, !dbg !75188
  %i.ad = lshr i64 %i.z, 1, !dbg !75188
  %i.ae = and i64 %i.ad, 9223372036854775804, !dbg !75188
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ac, !dbg !75188
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae, !dbg !75188
  %scevgep = getelementptr i8, ptr %i.ag, i64 4, !dbg !75188
  %scevgep18 = getelementptr i8, ptr %1, i64 4, !dbg !75188
  %i.ah = and i64 %i.z, -8, !dbg !75188
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah, !dbg !75188
  %scevgep19 = getelementptr i8, ptr %i.ai, i64 8, !dbg !75188
  %bound0 = icmp ult ptr %i.x, %scevgep19, !dbg !75188
  %bound1 = icmp ult ptr %scevgep18, %scevgep, !dbg !75188
  %found.conflict = and i1 %bound0, %bound1, !dbg !75188
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aj = and i64 %i.ab, 7                        ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 8, i64 %i.aj
  %n.vec = sub nsw i64 %i.ab, %i.al               ; 3 uses
  %i.am = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %i.x, i64 %i.am
  %i.ao = shl i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %1, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aq ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep20 = getelementptr i8, ptr %1, i64 %i.ar
  %i.as = getelementptr i8, ptr %1, i64 %i.ar
  %i.at = getelementptr i8, ptr %next.gep20, i64 4, !dbg !75191
  %i.au = getelementptr i8, ptr %i.as, i64 36, !dbg !75191
  %wide.vec = load <8 x i32>, ptr %i.at, align 4, !dbg !75191, !alias.scope !75156, !noalias !75157
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !75191
  %wide.vec22 = load <8 x i32>, ptr %i.au, align 4, !dbg !75191, !alias.scope !75156, !noalias !75157
  %strided.vec23 = shufflevector <8 x i32> %wide.vec22, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !75191
  %i.av = getelementptr i8, ptr %next.gep, i64 16, !dbg !75192
  store <4 x i32> %strided.vec, ptr %next.gep, align 4, !dbg !75192, !alias.scope !75158, !noalias !75159
  store <4 x i32> %strided.vec23, ptr %i.av, align 4, !dbg !75192, !alias.scope !75158, !noalias !75159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec, !dbg !75188
  br i1 %i.aw, label %.lr.ph.i.i.preheader, label %vector.body, !dbg !75188, !llvm.loop !75121

.lr.ph.i.i.preheader:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader.i.i
  %.sroa.02.019.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader.i.i ], [ %i.an, %vector.body ]
  %.sroa.011.018.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader.i.i ], [ %i.ap, %vector.body ]
  br label %.lr.ph.i.i, !dbg !75188

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.02.019.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.sroa.02.019.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.011.018.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.sroa.011.018.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i.i, i64 8, !dbg !75193 ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.011.018.i.i, i64 4, !dbg !75191
  %.val.i.i.i = load i32, ptr %i.ay, align 4, !dbg !75191, !noalias !75157, !noundef !4867
  store i32 %.val.i.i.i, ptr %.sroa.02.019.i.i, align 4, !dbg !75192, !noalias !75154
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.019.i.i, i64 4, !dbg !75194
  %i.ba = icmp eq ptr %i.ax, %2, !dbg !75187
  br i1 %i.ba, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !dbg !75188, !llvm.loop !75125

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load i64, ptr %i.o, align 8, !dbg !75195, !alias.scope !75155, !noalias !75154
  br label %bb.f, !dbg !75195

bb.b:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #52
          to label %common.resume unwind label %bb.c, !dbg !75196, !noalias !75154

bb.c:                                             ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !75197, !noalias !75154
  unreachable, !dbg !75197

common.resume:                                    ; preds = %bb.d, %.thread11, %bb.s, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.b ], [ %eh.lpad-body, %.thread11 ], [ %eh.lpad-body, %bb.d ], [ %i.br, %bb.s ]
  resume { ptr, i32 } %common.resume.op, !dbg !75198

bb.d:                                             ; preds = %.body
  br i1 %.sroa.01.1.lpad-body, label %.thread11, label %common.resume, !dbg !75199

bb.e:                                             ; preds = %bb.f, %bb.k
  %.sroa.01.1 = phi i1 [ true, %bb.f ], [ false, %bb.k ], !dbg !75200
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !75201

.body:                                            ; preds = %bb.n, %bb.h, %bb.e
  %.sroa.01.1.lpad-body = phi i1 [ true, %bb.h ], [ %.sroa.01.1, %bb.e ], [ false, %bb.n ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.h ], [ %i.bd, %bb.e ], [ %i.bp, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.i) #52
          to label %bb.d unwind label %bb.t, !dbg !75201

bb.f:                                             ; preds = %.noexc.i, %._crit_edge.loopexit.i.i
  %i.be = phi i64 [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.t, %.noexc.i ], !dbg !75195 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 2305843009213693952, !dbg !75202
  call void @llvm.assume(i1 %i.bf), !dbg !75203
  %i.bg = add nuw nsw i64 %i.be, %i.s, !dbg !75204
  store i64 %i.bg, ptr %i.o, align 8, !dbg !75205, !alias.scope !75155, !noalias !75154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !75206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !75196, !noalias !75154
  %i.bh = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemE8from_vecCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l), !dbg !75207
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BuffermE12from_storageCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.bh), !dbg !75208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !75209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !75210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !75211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !75211
  store i8 3, ptr %i.i, align 16, !dbg !75212, !alias.scope !75163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !75213, !noalias !75164
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.i, i16 noundef 1) #55
          to label %.noexc unwind label %bb.e, !dbg !75214

.noexc:                                           ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !75165), !dbg !75215
  call void @llvm.experimental.noalias.scope.decl(metadata !75166), !dbg !75215
  %i.bi = load i64, ptr %i.b, align 8, !dbg !75216, !range !5058, !alias.scope !75166, !noalias !75167, !noundef !4867
  %.not.i.i = icmp eq i64 %i.bi, 18, !dbg !75216
  br i1 %.not.i.i, label %bb.k, label %bb.g, !dbg !75217, !prof !5059

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !75218, !noalias !75168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false), !dbg !75218, !noalias !75167
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #53
          to label %bb.i unwind label %bb.h, !dbg !75219, !noalias !75169

bb.h:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #52
          to label %.body unwind label %bb.j, !dbg !75220, !noalias !75169

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !75221, !noalias !75169
  unreachable, !dbg !75221

bb.k:                                             ; preds = %.noexc
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !75222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !dbg !75222, !alias.scope !75170, !noalias !75171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !75223, !noalias !75164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !75224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !75224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !75225
  store ptr null, ptr %i.g, align 8, !dbg !75225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !75226
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraymE7try_newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.l unwind label %bb.e, !dbg !75226

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !75173), !dbg !75227
  call void @llvm.experimental.noalias.scope.decl(metadata !75174), !dbg !75227
  %i.bm = load i8, ptr %i.e, align 8, !dbg !75228, !range !5534, !alias.scope !75174, !noalias !75173, !noundef !4867
  %i.bn = icmp eq i8 %i.bm, 42, !dbg !75228
  br i1 %i.bn, label %bb.m, label %bb.q, !dbg !75229, !prof !4879

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !75230, !noalias !75175
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !75230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bo, i64 72, i1 false), !dbg !75230, !noalias !75173
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #53
          to label %bb.o unwind label %bb.n, !dbg !75231, !noalias !75175

bb.n:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #52
          to label %.body unwind label %bb.p, !dbg !75232, !noalias !75175

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !75233, !noalias !75175
  unreachable, !dbg !75233

bb.q:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.e, i64 88, i1 false), !dbg !75234, !alias.scope !75175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !75235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !75236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !75236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !75236
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.i)
          to label %bb.r unwind label %bb.s, !dbg !75201

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !75201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !75237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !dbg !75237
  call void @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEE4fromB6_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.f), !dbg !75238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !75239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !75240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !75199
  ret void, !dbg !75241

bb.s:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(88) %i.k) #52
end_hunk_0
begin_hunk_1_@_RNvXsS_NtNtCscgRAwXFJnXP_4core3fmt3numnNtB7_5Debug3fmt:bb.a
  br label %bb.f, !dbg !242891

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs_NtNtCscgRAwXFJnXP_4core3fmt3numnNtB6_7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !242892
  br label %bb.f, !dbg !242892

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsN_NtNtCscgRAwXFJnXP_4core3fmt3numnNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !242893
  br label %bb.f, !dbg !242893

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !242894
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4472 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !242897
  %i.b = load i32, ptr %i.a, align 8, !dbg !242897, !noundef !4867 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !242897
  %i.d = icmp eq i32 %i.c, 0, !dbg !242898
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !242898

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864, !dbg !242899
  %i.f = icmp eq i32 %i.e, 0, !dbg !242900
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !242900

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsu_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !242901
  br label %bb.f, !dbg !242901

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !242902
  br label %bb.f, !dbg !242902

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsw_NtNtCscgRAwXFJnXP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !242903
  br label %bb.f, !dbg !242903

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !242904
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 !dbg !684 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !242930 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !242930, !alias.scope !242929, !noundef !4867 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !242931
  tail call void @llvm.assume(i1 %i.c), !dbg !242932
  %i.d = icmp samesign ult i32 %1, 128, !dbg !242933 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b, !dbg !242933

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048, !dbg !242934
  br i1 %i.e, label %bb.d, label %bb.c, !dbg !242934

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536, !dbg !242935
  %..i = select i1 %i.f, i64 3, i64 4, !dbg !242936
  br label %bb.d, !dbg !242936

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ], !dbg !242936 ; 2 uses
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i), !dbg !242937
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !242938
  %i.h = load ptr, ptr %i.g, align 8, !dbg !242938, !alias.scope !242929, !nonnull !4867, !noundef !4867
  %i.i = load i64, ptr %i.a, align 8, !dbg !242939, !alias.scope !242929, !noundef !4867 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !242940
  tail call void @llvm.assume(i1 %i.j), !dbg !242941
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i, !dbg !242942 ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e, !dbg !242943

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048, !dbg !242944
  %i.m = trunc i32 %1 to i8, !dbg !242945
  %i.n = and i8 %i.m, 63, !dbg !242945
  %i.o = or disjoint i8 %i.n, -128, !dbg !242945  ; 3 uses
  %i.p = lshr i32 %1, 6, !dbg !242946
  %i.q = trunc i32 %i.p to i8, !dbg !242947       ; 2 uses
  %i.r = and i8 %i.q, 63, !dbg !242947
  %i.s = or disjoint i8 %i.r, -128, !dbg !242947  ; 2 uses
  %i.t = lshr i32 %1, 12, !dbg !242948
  %i.u = trunc i32 %i.t to i8, !dbg !242949       ; 2 uses
  %i.v = and i8 %i.u, 63, !dbg !242949
  %i.w = or disjoint i8 %i.v, -128, !dbg !242949
  %i.x = lshr i32 %1, 18, !dbg !242950
  %i.y = trunc nuw nsw i32 %i.x to i8, !dbg !242951
  %i.z = or disjoint i8 %i.y, -16, !dbg !242951
  br i1 %i.l, label %bb.g, label %bb.h, !dbg !242952

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8, !dbg !242953
  store i8 %i.aa, ptr %i.k, align 1, !dbg !242953
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !242954

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64, !dbg !242955
  store i8 %i.ab, ptr %i.k, align 1, !dbg !242955
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !242956
  store i8 %i.o, ptr %i.ac, align 1, !dbg !242957
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !242958

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536, !dbg !242944
  br i1 %i.ad, label %bb.i, label %bb.j, !dbg !242959

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32, !dbg !242960
  store i8 %i.ae, ptr %i.k, align 1, !dbg !242960
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !242961
  store i8 %i.s, ptr %i.af, align 1, !dbg !242962
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !242963
  store i8 %i.o, ptr %i.ag, align 1, !dbg !242964
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !242958

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1, !dbg !242965
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !242966
  store i8 %i.w, ptr %i.ah, align 1, !dbg !242967
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !242968
  store i8 %i.s, ptr %i.ai, align 1, !dbg !242969
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3, !dbg !242970
  store i8 %i.o, ptr %i.aj, align 1, !dbg !242971
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !242972

_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b, !dbg !242973
  store i64 %i.ak, ptr %i.a, align 8, !dbg !242974, !alias.scope !242929
  ret i1 false, !dbg !242975
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 !dbg !652 {
bb.a:
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !dbg !242994, !noalias !242992
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !242995 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !242995, !alias.scope !242993, !noalias !242992, !noundef !4867 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !242996
  tail call void @llvm.assume(i1 %i.c), !dbg !242997
  %.not.i.i = icmp eq i64 %2, 0, !dbg !242998
  br i1 %.not.i.i, label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8push_str.exit, label %bb.b, !dbg !242998

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !242999
  %i.e = load ptr, ptr %i.d, align 8, !dbg !242999, !alias.scope !242993, !noalias !242992, !nonnull !4867, !noundef !4867
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b, !dbg !243000
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !243001
  %.pre.i.i = load i64, ptr %i.a, align 8, !dbg !243002, !alias.scope !242993, !noalias !242992
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8push_str.exit, !dbg !243003

_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ], !dbg !243002
  %i.h = add i64 %i.g, %2, !dbg !243002
  store i64 %i.h, ptr %i.a, align 8, !dbg !243002, !alias.scope !242993, !noalias !242992
  ret i1 false, !dbg !243004
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4469 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !243007
  %i.b = load i32, ptr %i.a, align 8, !dbg !243007, !noundef !4867 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !243007
  %i.d = icmp eq i32 %i.c, 0, !dbg !243008
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !243008

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864, !dbg !243009
  %i.f = icmp eq i32 %i.e, 0, !dbg !243010
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !243010

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !243011
  br label %bb.f, !dbg !243011

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !243012
  br label %bb.f, !dbg !243012

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !243013
  br label %bb.f, !dbg !243013

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !243014
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs1LHh8CLbVkQ_11polars_core7testingNtNtB6_6series6SeriesNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #2 !dbg !3478 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs1LHh8CLbVkQ_11polars_core7testingNtNtB4_6series6Series14equals_missing(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !243015
  ret i1 %i.a, !dbg !243016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i16, i16 } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumNtNtB6_7float164pf16ENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243017 {
bb.a:
  ret { i16, i16 } zeroinitializer, !dbg !243018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i8, i8 } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumaENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243019 {
bb.a:
  ret { i8, i8 } zeroinitializer, !dbg !243020
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { double, double } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumdENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243021 {
bb.a:
  ret { double, double } zeroinitializer, !dbg !243022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { float, float } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumfENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243023 {
bb.a:
  ret { float, float } zeroinitializer, !dbg !243024
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i8, i8 } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumhENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243025 {
bb.a:
  ret { i8, i8 } zeroinitializer, !dbg !243026
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i32, i32 } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumlENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243027 {
bb.a:
  ret { i32, i32 } zeroinitializer, !dbg !243028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i32, i32 } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSummENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243029 {
bb.a:
  ret { i32, i32 } zeroinitializer, !dbg !243030
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumnENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !243031 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, i8 0, i64 32, i1 false), !dbg !243032
  ret void, !dbg !243033
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumoENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !243034 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, i8 0, i64 32, i1 false), !dbg !243035
  ret void, !dbg !243036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i16, i16 } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumsENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243037 {
bb.a:
  ret { i16, i16 } zeroinitializer, !dbg !243038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i16, i16 } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumtENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243039 {
bb.a:
  ret { i16, i16 } zeroinitializer, !dbg !243040
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i64, i64 } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumxENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243041 {
bb.a:
  ret { i64, i64 } zeroinitializer, !dbg !243042
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef { i64, i64 } @_RNvXs_NtCs2mZqlW55729_12polars_utils9kahan_sumINtB4_8KahanSumyENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs1LHh8CLbVkQ_11polars_core() unnamed_addr #28 personality ptr @rust_eh_personality !dbg !243043 {
bb.a:
  ret { i64, i64 } zeroinitializer, !dbg !243044
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs1LHh8CLbVkQ_11polars_core5frame10arithmeticNtNtB6_9dataframe9DataFrameINtNtNtCscgRAwXFJnXP_4core3ops5arith3AddRNtNtB8_6series6SeriesE3add(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !243045 {
bb.a:
  invoke void @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core5frame10arithmeticRNtNtB4_9dataframe9DataFrameINtNtNtCscgRAwXFJnXP_4core3ops5arith3AddRNtNtB6_6series6SeriesE3add(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %bb.c unwind label %bb.b, !dbg !243047

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEBM_(ptr noalias noundef align 8 dereferenceable(48) %1) #52
          to label %bb.e unwind label %bb.d, !dbg !243048

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEBM_(ptr noalias noundef align 8 dereferenceable(48) %1), !dbg !243048
  ret void, !dbg !243049

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !243050
  unreachable, !dbg !243050

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !243050
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs1LHh8CLbVkQ_11polars_core6series10comparisonNtB6_6SeriesINtNtNtB8_13chunked_array3ops16ChunkCompareIneqRBS_E2gt(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !243051 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 2 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 2 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [72 x i8], align 8                ; 2 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [72 x i8], align 8               ; 2 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [72 x i8], align 8               ; 2 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [72 x i8], align 8               ; 2 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [72 x i8], align 8               ; 2 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [72 x i8], align 8               ; 2 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [72 x i8], align 8               ; 2 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [72 x i8], align 8               ; 2 uses
  %i.bf = alloca [72 x i8], align 8               ; 4 uses
  %i.bg = alloca [72 x i8], align 8               ; 4 uses
  %i.bh = alloca [72 x i8], align 8               ; 6 uses
  %i.bi = alloca [72 x i8], align 8               ; 6 uses
  %i.bj = alloca [72 x i8], align 8               ; 6 uses
  %i.bk = alloca [72 x i8], align 8               ; 6 uses
  %i.bl = alloca [72 x i8], align 8               ; 4 uses
  %i.bm = alloca [72 x i8], align 8               ; 4 uses
  %i.bn = alloca [72 x i8], align 8               ; 4 uses
  %i.bo = alloca [72 x i8], align 8               ; 4 uses
  %i.bp = alloca [72 x i8], align 8               ; 6 uses
  %i.bq = alloca [72 x i8], align 8               ; 4 uses
  %i.br = alloca [72 x i8], align 8               ; 4 uses
  %i.bs = alloca [72 x i8], align 8               ; 4 uses
  %i.bt = alloca [72 x i8], align 8               ; 4 uses
  %i.bu = alloca [72 x i8], align 8               ; 4 uses
  %i.bv = alloca [72 x i8], align 8               ; 6 uses
  %i.bw = alloca [72 x i8], align 8               ; 4 uses
  %i.bx = alloca [72 x i8], align 8               ; 4 uses
  %i.by = alloca [72 x i8], align 8               ; 4 uses
  %i.bz = alloca [72 x i8], align 8               ; 4 uses
  %i.ca = alloca [72 x i8], align 8               ; 4 uses
  %i.cb = alloca [72 x i8], align 8               ; 6 uses
  %i.cc = alloca [72 x i8], align 8               ; 4 uses
  %i.cd = alloca [72 x i8], align 8               ; 4 uses
  %i.ce = alloca [72 x i8], align 8               ; 4 uses
  %i.cf = alloca [72 x i8], align 8               ; 4 uses
  %i.cg = alloca [72 x i8], align 8               ; 4 uses
  %i.ch = alloca [72 x i8], align 8               ; 4 uses
  %i.ci = alloca [72 x i8], align 8               ; 4 uses
  %i.cj = alloca [72 x i8], align 8               ; 4 uses
  %i.ck = alloca [72 x i8], align 8               ; 4 uses
  %i.cl = alloca [72 x i8], align 8               ; 4 uses
  %i.cm = alloca [72 x i8], align 8               ; 4 uses
  %i.cn = alloca [72 x i8], align 8               ; 4 uses
  %i.co = alloca [72 x i8], align 8               ; 4 uses
  %i.cp = alloca [72 x i8], align 8               ; 4 uses
  %i.cq = alloca [72 x i8], align 8               ; 4 uses
  %i.cr = alloca [72 x i8], align 8               ; 4 uses
  %i.cs = alloca [72 x i8], align 8               ; 4 uses
  %i.ct = alloca [72 x i8], align 8               ; 4 uses
  %i.cu = alloca [72 x i8], align 8               ; 4 uses
  %i.cv = alloca [72 x i8], align 8               ; 4 uses
  %i.cw = alloca [72 x i8], align 8               ; 4 uses
  %i.cx = alloca [72 x i8], align 8               ; 4 uses
  %i.cy = alloca [72 x i8], align 8               ; 4 uses
  %i.cz = alloca [72 x i8], align 8               ; 4 uses
  %i.da = alloca [72 x i8], align 8               ; 4 uses
  %i.db = alloca [72 x i8], align 8               ; 4 uses
  %i.dc = alloca [72 x i8], align 8               ; 4 uses
  %i.dd = alloca [72 x i8], align 8               ; 4 uses
  %i.de = alloca [72 x i8], align 8               ; 4 uses
  %i.df = alloca [72 x i8], align 8               ; 6 uses
  %i.dg = alloca [72 x i8], align 8               ; 6 uses
  %i.dh = alloca [72 x i8], align 8               ; 6 uses
  %i.di = alloca [72 x i8], align 8               ; 4 uses
  %i.dj = alloca [72 x i8], align 8               ; 4 uses
  %i.dk = alloca [72 x i8], align 8               ; 4 uses
  %i.dl = alloca [72 x i8], align 8               ; 4 uses
  %i.dm = alloca [72 x i8], align 8               ; 4 uses
  %i.dn = alloca [72 x i8], align 8               ; 4 uses
  %i.do = alloca [72 x i8], align 8               ; 4 uses
  %i.dp = alloca [72 x i8], align 8               ; 4 uses
  %i.dq = alloca [72 x i8], align 8               ; 4 uses
  %i.dr = alloca [72 x i8], align 8               ; 4 uses
  %i.ds = alloca [72 x i8], align 8               ; 4 uses
  %i.dt = alloca [24 x i8], align 8               ; 5 uses
  %i.du = alloca [72 x i8], align 8               ; 5 uses
  %i.dv = alloca [24 x i8], align 8               ; 4 uses
  %i.dw = alloca [48 x i8], align 8               ; 9 uses
  %i.dx = alloca [8 x i8], align 8                ; 4 uses
  %i.dy = alloca [8 x i8], align 8                ; 4 uses
  %i.dz = alloca [24 x i8], align 8               ; 2 uses
  %i.ea = alloca [24 x i8], align 8               ; 4 uses
  %i.eb = alloca [8 x i8], align 8                ; 4 uses
  %i.ec = alloca [64 x i8], align 8               ; 11 uses
  %i.ed = alloca [8 x i8], align 8                ; 4 uses
  %i.ee = alloca [8 x i8], align 8                ; 4 uses
  %i.ef = alloca [8 x i8], align 8                ; 4 uses
  %i.eg = alloca [8 x i8], align 8                ; 4 uses
  %i.eh = alloca [24 x i8], align 8               ; 2 uses
  %i.ei = alloca [24 x i8], align 8               ; 4 uses
  %i.ej = alloca [64 x i8], align 8               ; 11 uses
  %i.ek = alloca [8 x i8], align 8                ; 4 uses
  %i.el = alloca [8 x i8], align 8                ; 4 uses
  %i.em = alloca [8 x i8], align 8                ; 4 uses
  %i.en = alloca [8 x i8], align 8                ; 4 uses
  %i.eo = alloca [24 x i8], align 8               ; 2 uses
  %i.ep = alloca [24 x i8], align 8               ; 4 uses
  %i.eq = alloca [64 x i8], align 8               ; 11 uses
  %i.er = alloca [8 x i8], align 8                ; 4 uses
  %i.es = alloca [8 x i8], align 8                ; 4 uses
  %i.et = alloca [8 x i8], align 8                ; 4 uses
  %i.eu = alloca [8 x i8], align 8                ; 4 uses
  %i.ev = alloca [24 x i8], align 8               ; 2 uses
  %i.ew = alloca [24 x i8], align 8               ; 4 uses
  %i.ex = alloca [72 x i8], align 8               ; 6 uses
  %i.ey = alloca [72 x i8], align 8               ; 6 uses
  %i.ez = alloca [72 x i8], align 8               ; 6 uses
  %i.fa = alloca [72 x i8], align 8               ; 6 uses
  %i.fb = alloca [72 x i8], align 8               ; 6 uses
  %i.fc = alloca [72 x i8], align 8               ; 6 uses
  %i.fd = alloca [72 x i8], align 8               ; 6 uses
  %i.fe = alloca [72 x i8], align 8               ; 6 uses
  %i.ff = alloca [72 x i8], align 8               ; 6 uses
  %i.fg = alloca [72 x i8], align 8               ; 6 uses
  %i.fh = alloca [72 x i8], align 8               ; 6 uses
  %i.fi = alloca [72 x i8], align 8               ; 6 uses
  %i.fj = alloca [72 x i8], align 8               ; 6 uses
  %i.fk = alloca [72 x i8], align 8               ; 6 uses
end_hunk_1
