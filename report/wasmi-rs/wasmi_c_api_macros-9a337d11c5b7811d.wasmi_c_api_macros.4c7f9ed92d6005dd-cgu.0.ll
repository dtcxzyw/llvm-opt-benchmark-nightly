Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api_macros-9a337d11c5b7811d.wasmi_c_api_macros.4c7f9ed92d6005dd-cgu.0?download=true
inline.NumInlined: 248
inline.NumDeleted: 142
begin_hunk_0_@_RINvNvNtNtCseSCJ3UB48O9_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsg_NtB6_6clientNtB24_6Client7expand2NvCs6zco5hFcJZh_18wasmi_c_api_macros13prefix_symbolE0EB2D_:bb.a
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [40 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 12 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 9 uses
  %i.ah = alloca [4 x i8], align 4                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [4 x i8], align 4                ; 5 uses
  %i.ak = alloca [4 x i8], align 4                ; 5 uses
  %i.al = alloca [4 x i8], align 4                ; 4 uses
  %i.am = alloca [12 x i8], align 4               ; 4 uses
  %i.an = alloca [40 x i8], align 8               ; 4 uses
  %i.ao = alloca [80 x i8], align 8               ; 10 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [40 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [40 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load <2 x ptr>, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.45.0.copyload = load i8, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !85
  %i.av = trunc nuw i8 %.sroa.45.0.copyload to i1
  invoke void @_RNvNtNtCseSCJ3UB48O9_10proc_macro6bridge6client24maybe_install_panic_hook(i1 zeroext %i.av)
          to label %.noexc.i.i unwind label %bb.cs, !noalias !85

.noexc.i.i:                                       ; preds = %bb.a
  invoke void @_RNvMs0_NtNtCseSCJ3UB48O9_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all()
          to label %.noexc24.i.i unwind label %bb.cs, !noalias !85

.noexc24.i.i:                                     ; preds = %.noexc.i.i
  %i.aw = load ptr, ptr %i.at, align 8, !noalias !85
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !85
  store ptr %i.aw, ptr %i.ap, align 8, !noalias !85, !captures !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  store i64 %i.ay, ptr %i.az, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !85
  invoke fastcc void @_RNvXs15_NtCseSCJ3UB48O9_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros(ptr noalias align 4 %i.am, ptr nonnull align 8 %i.ap) #11
          to label %.noexc25.i.i unwind label %bb.cs, !noalias !85

.noexc25.i.i:                                     ; preds = %.noexc24.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !86
  store i32 0, ptr %i.ak, align 4, !noalias !86
  %i.ba = load i64, ptr %i.az, align 8, !noalias !86 ; 4 uses
  %i.bb = icmp ugt i64 %i.ba, 3
  br i1 %i.bb, label %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc25.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %i.ba, ptr nonnull align 8 @80) #12
          to label %.noexc26.i.i unwind label %bb.cs, !noalias !85

.noexc26.i.i:                                     ; preds = %bb.b
  unreachable

_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc25.i.i
  %i.bc = load ptr, ptr %i.ap, align 8, !noalias !86 ; 3 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshTL54jFqpHF_11miniz_oxide(ptr nonnull %i.ak, i64 4, ptr %i.bc, i64 4, ptr nonnull align 8 @80)
          to label %.noexc27.i.i unwind label %bb.cs, !noalias !85

.noexc27.i.i:                                     ; preds = %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i
  %i.bd = add i64 %i.ba, -4                       ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ak, align 4, !noalias !86 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !86
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %_RNvXs5_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB9_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.noexc27.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 @79) #12
          to label %.noexc28.i.i unwind label %bb.cs, !noalias !85

.noexc28.i.i:                                     ; preds = %bb.c
  unreachable

_RNvXs5_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB9_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i: ; preds = %.noexc27.i.i
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.al, align 4, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !86
  store i32 0, ptr %i.aj, align 4, !noalias !86
  %i.bf = icmp ugt i64 %i.bd, 3
  br i1 %i.bf, label %bb.d, label %.invoke.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_RNvXs5_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB9_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshTL54jFqpHF_11miniz_oxide(ptr nonnull %i.aj, i64 4, ptr nonnull %i.be, i64 4, ptr nonnull align 8 @80)
          to label %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i1.i.i.i.i.i.i.i unwind label %bb.f, !noalias !86

.invoke.i.i.i.i.i.i.i:                            ; preds = %_RNvXs5_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB9_11TokenStreamINtNtB7_3rpc6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 0, i64 4, i64 %i.bd, ptr nonnull align 8 @80) #12
          to label %.cont.i.i.i.i.i.i.i unwind label %bb.f, !noalias !86

.cont.i.i.i.i.i.i.i:                              ; preds = %.invoke.i.i.i.i.i.i.i
  unreachable

_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i1.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.bg = add i64 %i.ba, -8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bh, ptr %i.ap, align 8, !noalias !86, !captures !4
  store i64 %i.bg, ptr %i.az, align 8, !noalias !86
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 4, !noalias !86 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !86
  %.not.i.i3.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i, label %bb.e, label %_RNvXs7_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanETNtB9_11TokenStreamB1p_EEINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i1.i.i.i.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 @79) #12
          to label %.noexc6.i.i.i.i.i.i.i unwind label %bb.f, !noalias !86

.noexc6.i.i.i.i.i.i.i:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e, %.invoke.i.i.i.i.i.i.i, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseSCJ3UB48O9_10proc_macro11TokenStreamECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 4 %i.al) #13
          to label %.body.i.i unwind label %bb.g, !noalias !86

bb.g:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !86
  unreachable

_RNvXs7_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanETNtB9_11TokenStreamB1p_EEINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i: ; preds = %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i1.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !86
  %.sroa.411.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.411.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.am, i64 12, i1 false), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !85
  %.sroa.310.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.at, align 8, !noalias !85
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !noalias !85
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !85
  %.sroa.57.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !noalias !85
  store i64 0, ptr %i.ao, align 8, !noalias !85
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store <2 x ptr> %i.au, ptr %i.bk, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !85
  %i.bl = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state12BRIDGE_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !85
  store ptr %i.ao, ptr %i.bl, align 8, !noalias !85
  store ptr %i.bm, ptr %i.ai, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !85
  store i32 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, ptr %i.ah, align 4, !noalias !85
  invoke void @_RNvXs1_Cs7djI6dnwcVV_11proc_macro2NtB5_11TokenStreamINtNtCskKLDkoKarTP_4core7convert4FromNtCseSCJ3UB48O9_10proc_macro11TokenStreamE4from(ptr nonnull sret([32 x i8]) align 8 %i.ag, i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCseSCJ3UB48O9_10proc_macro11TokenStreamINtB5_4IntoNtCs7djI6dnwcVV_11proc_macro211TokenStreamE4intoCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.co, !noalias !85

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCseSCJ3UB48O9_10proc_macro11TokenStreamINtB5_4IntoNtCs7djI6dnwcVV_11proc_macro211TokenStreamE4intoCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanETNtB9_11TokenStreamB1p_EEINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i
  invoke void @_RNvXs1_Cs7djI6dnwcVV_11proc_macro2NtB5_11TokenStreamINtNtCskKLDkoKarTP_4core7convert4FromNtCseSCJ3UB48O9_10proc_macro11TokenStreamE4from(ptr nonnull sret([32 x i8]) align 8 %i.af, i32 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCseSCJ3UB48O9_10proc_macro11TokenStreamINtB5_4IntoNtCs7djI6dnwcVV_11proc_macro211TokenStreamE4intoCs6zco5hFcJZh_18wasmi_c_api_macros.exit5.i.i.i.i.i.i.i.i.i.i unwind label %bb.cn, !noalias !85

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCseSCJ3UB48O9_10proc_macro11TokenStreamINtB5_4IntoNtCs7djI6dnwcVV_11proc_macro211TokenStreamE4intoCs6zco5hFcJZh_18wasmi_c_api_macros.exit5.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCseSCJ3UB48O9_10proc_macro11TokenStreamINtB5_4IntoNtCs7djI6dnwcVV_11proc_macro211TokenStreamE4intoCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !85
  %i.bn = invoke zeroext i1 @_RNvMCs7djI6dnwcVV_11proc_macro2NtB2_11TokenStream8is_empty(ptr nonnull align 8 %i.ag)
          to label %bb.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.a, !noalias !87

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.body31.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.06.3.i.i.i.i.i.i.i.i.i.i.i, label %.body.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.bo

.body.i.i.i.i.i.i.i.i.i.i.i.a:                    ; preds = %bb.bn, %bb.r, %bb.n, %bb.l, %bb.j, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCseSCJ3UB48O9_10proc_macro11TokenStreamINtB5_4IntoNtCs7djI6dnwcVV_11proc_macro211TokenStreamE4intoCs6zco5hFcJZh_18wasmi_c_api_macros.exit5.i.i.i.i.i.i.i.i.i.i
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.thread.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.bw
  %i.bo = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  br i1 %2, label %.body.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.bo

bb.i:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCseSCJ3UB48O9_10proc_macro11TokenStreamINtB5_4IntoNtCs7djI6dnwcVV_11proc_macro211TokenStreamE4intoCs6zco5hFcJZh_18wasmi_c_api_macros.exit5.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !88
  invoke void @_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7djI6dnwcVV_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull @71, i64 range(i64 28, 45) 44) #11
          to label %.thread.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.a, !noalias !87

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.bp = load i64, ptr %i.af, align 8, !noalias !90
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bs = invoke ptr @_RNvXs1_NtCs7djI6dnwcVV_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nonnull align 8 %i.br)
          to label %bb.r unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.a, !noalias !87

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !90
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !noalias !91
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs11_CseSCJ3UB48O9_10proc_macroNtB6_11TokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = invoke i32 @_RNvXsa_NtNtCseSCJ3UB48O9_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr nonnull align 4 %i.bt)
          to label %_RNvXs11_CseSCJ3UB48O9_10proc_macroNtB6_11TokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.a, !noalias !87

_RNvXs11_CseSCJ3UB48O9_10proc_macroNtB6_11TokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.bw = phi i32 [ 0, %bb.m ], [ %i.bv, %bb.n ]  ; 2 uses
  store i32 %i.bw, ptr %i.m, align 4, !noalias !91
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCseSCJ3UB48O9_10proc_macro9TokenTreeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7djI6dnwcVV_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.af)
          to label %_RNvXsA_NtCs7djI6dnwcVV_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !91

bb.o:                                             ; preds = %_RNvXs11_CseSCJ3UB48O9_10proc_macroNtB6_11TokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseSCJ3UB48O9_10proc_macro11TokenStreamECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 4 %i.m) #13
          to label %.body.thread.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !91

bb.p:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !91
  unreachable

_RNvXsA_NtCs7djI6dnwcVV_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs11_CseSCJ3UB48O9_10proc_macroNtB6_11TokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !92
  %.sroa.3.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.3.0.copyload3.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !92
  %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0.copyload5.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !90
  br label %bb.r

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !88
  br label %.invoke.i.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.bw
  br i1 %2, label %.invoke.i.i.i.i.i.i.i.i.i.i.i, label %bb.bq

bb.r:                                             ; preds = %_RNvXsA_NtCs7djI6dnwcVV_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %.sroa.46.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %_RNvXsA_NtCs7djI6dnwcVV_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.l ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.copyload5.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsA_NtCs7djI6dnwcVV_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.l ]
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.3.0.copyload3.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsA_NtCs7djI6dnwcVV_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bs, %bb.l ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsA_NtCs7djI6dnwcVV_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %bb.l ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !alias.scope !89, !noalias !87
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !89, !noalias !87
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !89, !noalias !87
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i32 %.sroa.46.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !89, !noalias !87
  invoke void @_RNvXs0_NtCs7djI6dnwcVV_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iter(ptr nonnull sret([40 x i8]) align 8 %i.ac, ptr nonnull align 8 %i.ab)
          to label %bb.s unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.a, !noalias !87

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !94
  invoke void @_RNvXNtCs7djI6dnwcVV_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.k, ptr nonnull align 8 %i.ac)
          to label %.noexc29.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, !noalias !87

.noexc29.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.s
  %i.bz = load i32, ptr %i.k, align 8, !noalias !95
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bz, -1
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit48.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc29.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %bb.t

bb.t:                                             ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !95
  %i.cf = load i32, ptr %i.j, align 8, !noalias !96
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.u, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96
  %i.ch = load i8, ptr %i.cb, align 8, !noalias !96
  switch i8 %i.ch, label %bb.w [
    i8 2, label %bb.y
    i8 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.ci = load i64, ptr %i.cc, align 8, !noalias !96
  %i.cj = icmp eq i64 %i.ci, 2
  br i1 %i.cj, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0B3_.exit.thread2.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.v
  %i.ck = load ptr, ptr %i.ca, align 8, !noalias !96
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = icmp ne i16 %i.cl, 28262
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !96
  br i1 %i.co, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cp = invoke zeroext i1 @_RINvMNtCskKLDkoKarTP_4core3stre11starts_withReECs7djI6dnwcVV_11proc_macro2(ptr nonnull @0, i64 2, ptr nonnull @81, i64 2)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !96

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.w
  br i1 %i.cp, label %bb.x, label %_RNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0B3_.exit.thread2.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = load ptr, ptr %i.ca, align 8, !noalias !96
  %i.cr = load i64, ptr %i.cc, align 8, !noalias !96 ; 2 uses
  %i.cs = invoke { ptr, i64 } @_RNvXs2_NtNtCskKLDkoKarTP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs7djI6dnwcVV_11proc_macro2(ptr nonnull @0, i64 2, i64 2, ptr nonnull align 8 @83) #11
          to label %.noexc1.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !96 ; 2 uses

.noexc1.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.x
  %i.ct = extractvalue { ptr, i64 } %i.cs, 1
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %.split4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0B3_.exit.thread2.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split4.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc1.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = extractvalue { ptr, i64 } %i.cs, 0
  %bcmp.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %i.cq, ptr readonly %i.cv, i64 %i.cr), !noalias !96
  %i.cw = icmp eq i32 %bcmp.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !96
  br i1 %i.cw, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.u
  invoke void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtCseSCJ3UB48O9_10proc_macro5IdentNtB5_8ToString9to_stringCs7djI6dnwcVV_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.ca) #11
          to label %.noexc2.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !96

.noexc2.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.y
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cd, align 8, !noalias !96
  %i.cx = icmp eq i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.cx, label %bb.z, label %_RNvXs1y_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eqCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.noexc2.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !noalias !96
  %i.cy = load i16, ptr %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.cz = icmp ne i16 %i.cy, 28262
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br label %_RNvXs1y_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eqCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1y_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eqCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %.noexc2.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.db, %bb.z ], [ false, %.noexc2.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 8 %i.i)
          to label %_RNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0B3_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !96

bb.aa:                                            ; preds = %_RNvXs1y_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eqCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y, %bb.x, %bb.w
  %i.dc = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.j) #13
          to label %.body31.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !96

_RNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0B3_.exit.thread2.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !96
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0B3_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1y_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtCskKLDkoKarTP_4core3cmp9PartialEqReE2eqCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !96
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0B3_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0B3_.exit.thread2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.j)
          to label %_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtCs7djI6dnwcVV_11proc_macro29TokenTreeENtNtB4_9try_trait3Try6branchCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !noalias !87

bb.ab:                                            ; preds = %bb.aa
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !96
  unreachable

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0B3_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.j, align 8, !noalias !95 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtCs7djI6dnwcVV_11proc_macro29TokenTreeENtNtB4_9try_trait3Try6branchCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae

_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtCs7djI6dnwcVV_11proc_macro29TokenTreeENtNtB4_9try_trait3Try6branchCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXNtCs7djI6dnwcVV_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.k, ptr nonnull align 8 %i.ac)
          to label %.noexc33.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !noalias !87

.noexc33.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtCs7djI6dnwcVV_11proc_macro29TokenTreeENtNtB4_9try_trait3Try6branchCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = load i32, ptr %i.k, align 8, !noalias !95
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.de, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit48.i.i.i.i.i.i.i.i.i.i.i, label %bb.t

.body31.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ac, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i, %bb.aa
  %.pn20.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn18.i.i.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.dc, %bb.aa ], [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.06.3.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.06.5.i.i.i.i.i.i.i.i.i.i.i, %bb.ac ], [ true, %bb.aa ], [ true, %.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.4.ph.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7djI6dnwcVV_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.ac) #13
          to label %.body.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.br, !noalias !87

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowNtCs7djI6dnwcVV_11proc_macro29TokenTreeENtNtB4_9try_trait3Try6branchCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body31.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.bm, %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %.sroa.06.4.ph.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.s ], [ true, %bb.bm ], [ %2, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ]
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body31.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ah, %bb.ad
  %.pn18.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.df, %bb.ad ], [ %.pn16.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ]
  %.sroa.06.5.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.06.6.i.i.i.i.i.i.i.i.i.i.i, %bb.ad ], [ %.sroa.06.7.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs7djI6dnwcVV_11proc_macro29TokenTreeEECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.aa) #13
          to label %.body31.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.br, !noalias !87

bb.ad:                                            ; preds = %bb.bt, %bb.bs, %bb.bl, %bb.ap, %.loopexit48.i.i.i.i.i.i.i.i.i.i.i, %bb.ae
  %.sroa.06.6.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %.loopexit48.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.bl ], [ false, %bb.ap ], [ true, %bb.bs ], [ true, %bb.bt ], [ true, %bb.ae ]
  %i.df = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.ac

bb.ae:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkNtCs7djI6dnwcVV_11proc_macro29TokenTreeNCNvCs6zco5hFcJZh_18wasmi_c_api_macros18prefix_symbol_impl0E0B1T_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 28, i1 false), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !94
  store i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aa, align 8, !alias.scope !93, !noalias !87
  invoke void @_RNvXNtCs7djI6dnwcVV_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([32 x i8]) align 8 %i.y, ptr nonnull align 8 %i.ac)
          to label %bb.af unwind label %bb.ad, !noalias !87

.loopexit48.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc33.i.i.i.i.i.i.i.i.i.i.i, %.noexc29.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !94
  store i32 -1, ptr %i.aa, align 8, !alias.scope !93, !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !97
  invoke void @_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7djI6dnwcVV_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull @76, i64 range(i64 28, 45) 28) #11
          to label %bb.bv unwind label %bb.ad, !noalias !87

bb.af:                                            ; preds = %bb.ae
  %i.dg = load i32, ptr %i.y, align 8, !noalias !87
  switch i32 %i.dg, label %bb.bt [
    i32 1, label %bb.ag
    i32 -1, label %bb.bs
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false), !noalias !87
  invoke void @_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringNtCs7djI6dnwcVV_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr nonnull sret([24 x i8]) align 8 %i.x, ptr nonnull align 8 %i.z)
          to label %bb.al unwind label %bb.ai, !noalias !87

bb.ah:                                            ; preds = %bb.aj, %bb.ai
  %.pn16.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.di, %bb.ai ], [ %.pn14.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ]
  %.sroa.06.7.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.06.8.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ true, %bb.aj ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.z) #13
          to label %bb.ac unwind label %bb.br, !noalias !87

bb.ai:                                            ; preds = %bb.bk, %bb.an, %bb.ag
  %.sroa.06.8.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.bk ], [ false, %bb.an ], [ true, %bb.ag ]
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.ah

bb.aj:                                            ; preds = %bb.as, %bb.ak
  %.pn14.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dj, %bb.ak ], [ %.pn11.pn.i.i.i.i.i.i.i.i.i.i.i, %bb.as ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 8 %i.x) #13
          to label %bb.ah unwind label %bb.br, !noalias !87

bb.ak:                                            ; preds = %bb.bj, %bb.aq, %bb.ao, %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.aj

bb.al:                                            ; preds = %bb.ag
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val26.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !87
  %i.dl = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val27.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dl, align 8, !noalias !87
  %i.dm = invoke zeroext i1 @_RINvMNtCskKLDkoKarTP_4core3stre11starts_withReECs7djI6dnwcVV_11proc_macro2(ptr %.val26.i.i.i.i.i.i.i.i.i.i.i, i64 %.val27.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull @72, i64 5)
          to label %bb.am unwind label %bb.ak, !noalias !87

bb.am:                                            ; preds = %bb.al
  br i1 %i.dm, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.0.0.copyload14.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !85
  %.sroa.6.0..sroa_idx16.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx16.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !85
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 8 %i.x)
          to label %bb.ap unwind label %bb.ai, !noalias !87

bb.ao:                                            ; preds = %bb.am
  invoke void @_RINvMNtNtCskKLDkoKarTP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCsexYYUdYSQU6_5alloc6string6StringECs7djI6dnwcVV_11proc_macro2(ptr nonnull sret([16 x i8]) align 8 %i.t, ptr nonnull align 8 %i.x)
          to label %bb.aq unwind label %bb.ak, !noalias !87

bb.ap:                                            ; preds = %bb.an
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.z)
          to label %.sink.split.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ad, !noalias !87

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.bv, %bb.bu, %bb.ap
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload14.i.i.i.i.i.i.i.i.i.i, %bb.ap ], [ -2, %bb.bv ], [ -2, %bb.bu ] ; 2 uses
  %2 = phi i1 [ false, %bb.ap ], [ true, %bb.bv ], [ true, %bb.bu ] ; 3 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs7djI6dnwcVV_11proc_macro29TokenTreeEECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.aa)
          to label %bb.bw unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, !noalias !87

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !87
  store ptr @73, ptr %i.g, align 8, !noalias !98
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.u, ptr %i.dn, align 8, !noalias !98
  %i.do = ptrtoint ptr %i.u to i64
  %i.dp = lshr exact i64 %i.do, 1
  invoke void @_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7djI6dnwcVV_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.v, ptr null, i64 %i.dp, ptr nonnull align 8 %i.g) #11
          to label %bb.ar unwind label %bb.ak, !noalias !87

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !87
  invoke void @_RNvMCs7djI6dnwcVV_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.s)
          to label %bb.au unwind label %bb.at, !noalias !87

bb.as:                                            ; preds = %bb.av, %bb.at
  %.pn11.pn.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn11.i.i.i.i.i.i.i.i.i.i.i, %bb.av ], [ %i.dq, %bb.at ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 8 %i.w) #13
          to label %bb.aj unwind label %bb.br, !noalias !87

bb.at:                                            ; preds = %bb.ar
  %i.dq = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.as

bb.au:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private10push_pound(ptr nonnull align 8 %i.s)
          to label %bb.ax unwind label %bb.aw, !noalias !87

bb.av:                                            ; preds = %bb.az, %bb.aw
  %.pn11.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dr, %bb.aw ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i, %bb.az ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.s) #13
          to label %bb.as unwind label %bb.br, !noalias !87

bb.aw:                                            ; preds = %bb.bi, %bb.bh, %bb.ax, %bb.au
  %i.dr = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.av

bb.ax:                                            ; preds = %bb.au
  invoke void @_RNvMCs7djI6dnwcVV_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.q)
          to label %bb.ay unwind label %bb.aw, !noalias !87

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private10push_ident(ptr nonnull align 8 %i.q, ptr nonnull @12, i64 6)
          to label %bb.bb unwind label %bb.ba, !noalias !87

bb.az:                                            ; preds = %bb.bd, %bb.ba
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ds, %bb.ba ], [ %i.dt, %bb.bd ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.q) #13
          to label %bb.av unwind label %bb.br, !noalias !87

bb.ba:                                            ; preds = %bb.bg, %bb.bb, %bb.ay
  %i.ds = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.az

bb.bb:                                            ; preds = %bb.ay
  invoke void @_RNvMCs7djI6dnwcVV_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.o)
          to label %bb.bc unwind label %bb.ba, !noalias !87

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private10push_ident(ptr nonnull align 8 %i.o, ptr nonnull @74, i64 11)
          to label %bb.be unwind label %bb.bd, !noalias !87

bb.bd:                                            ; preds = %bb.bf, %bb.be, %bb.bc
  %i.dt = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.o) #13
          to label %bb.az unwind label %bb.br, !noalias !87

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private7push_eq(ptr nonnull align 8 %i.o)
          to label %bb.bf unwind label %bb.bd, !noalias !87

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvXs6_NtCs5uUHdUE6bLW_5quote9to_tokensNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.o)
          to label %bb.bg unwind label %bb.bd, !noalias !87

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !87
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private10push_group(ptr nonnull align 8 %i.q, i8 0, ptr nonnull align 8 %i.p)
          to label %bb.bh unwind label %bb.ba, !noalias !87

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !87
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private10push_group(ptr nonnull align 8 %i.s, i8 2, ptr nonnull align 8 %i.r)
          to label %bb.bi unwind label %bb.aw, !noalias !87

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvXsu_NtCs5uUHdUE6bLW_5quote9to_tokensNtCs7djI6dnwcVV_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.s)
          to label %bb.bj unwind label %bb.aw, !noalias !87

bb.bj:                                            ; preds = %bb.bi
  %.sroa.0.0.copyload15.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !85
  %.sroa.6.0..sroa_idx17.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx17.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !85
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 8 %i.w)
          to label %bb.bk unwind label %bb.ak, !noalias !87

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 8 %i.x)
          to label %bb.bl unwind label %bb.ai, !noalias !87

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.z)
          to label %bb.bm unwind label %bb.ad, !noalias !87

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs7djI6dnwcVV_11proc_macro29TokenTreeEECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.aa)
          to label %bb.bn unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, !noalias !87

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7djI6dnwcVV_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.ac)
          to label %.invoke.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.a, !noalias !87

bb.bo:                                            ; preds = %.body.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.bp, %bb.h, %.body.i.i.i.i.i.i.i.i.i.i.i
  %.pn24.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.du, %bb.bp ], [ %.pn2247.i.i.i.i.i.i.i.i.i.i.i, %.body.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bo, %bb.h ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.ag) #13
          to label %.body.i.i.i.i.i.i unwind label %bb.br, !noalias !87

bb.bp:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.bo

bb.bq:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i, %bb.q
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.019.i.i.i.i.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.2.i.i.i.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.ag)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.cp, !noalias !85

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !85
  %i.dv = icmp eq i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.dv, label %bb.bx, label %bb.cj

bb.br:                                            ; preds = %.body.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.bo, %bb.bd, %bb.az, %bb.av, %bb.as, %bb.aj, %bb.ah, %bb.ac, %.body31.i.i.i.i.i.i.i.i.i.i.i
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !87
  unreachable

bb.bs:                                            ; preds = %bb.bt, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !99
  invoke void @_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs7djI6dnwcVV_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull @75, i64 range(i64 28, 45) 38) #11
          to label %bb.bu unwind label %bb.ad, !noalias !87

bb.bt:                                            ; preds = %bb.af
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro29TokenTreeEBD_(ptr nonnull align 8 %i.y)
          to label %bb.bs unwind label %bb.ad, !noalias !87

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !99
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %.loopexit48.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !97
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7djI6dnwcVV_11proc_macro212token_stream8IntoIterEBF_(ptr nonnull align 8 %i.ac)
          to label %bb.q unwind label %bb.h, !noalias !87

.invoke.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bn, %bb.q, %.thread.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.019.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.2.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.0.0.copyload15.i.i.i.i.i.i.i.i.i.i, %bb.bn ], [ -2, %.thread.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.af)
          to label %bb.bq unwind label %bb.bp, !noalias !87

.body.thread.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.o, %bb.h, %.body.i.i.i.i.i.i.i.i.i.i.i.a, %.body.i.i.i.i.i.i.i.i.i.i.i
  %.pn2247.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn20.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bx, %bb.o ], [ %i.bo, %bb.h ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.a ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.af) #13
          to label %bb.bo unwind label %bb.br, !noalias !87

bb.bx:                                            ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !85
  invoke void @_RNvMCs7djI6dnwcVV_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.d)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.ck, !noalias !85

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bx
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private11push_colon2(ptr nonnull align 8 %i.d)
          to label %bb.ca unwind label %bb.bz, !noalias !85

bb.by:                                            ; preds = %bb.cg, %bb.bz
  %.pn.i6.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dx, %bb.bz ], [ %i.dy, %bb.cg ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.d) #13
          to label %.body8.i.i.i.i.i.i.i.i.i.i unwind label %bb.ci, !noalias !85

bb.bz:                                            ; preds = %_RNvXNtCs5uUHdUE6bLW_5quote9to_tokensRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_8ToTokens9to_tokensCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.by

bb.ca:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private10push_ident(ptr nonnull align 8 %i.d, ptr nonnull @43, i64 4)
          to label %bb.cb unwind label %bb.bz, !noalias !85

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private11push_colon2(ptr nonnull align 8 %i.d)
          to label %bb.cc unwind label %bb.bz, !noalias !85

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private10push_ident(ptr nonnull align 8 %i.d, ptr nonnull @77, i64 13)
          to label %bb.cd unwind label %bb.bz, !noalias !85

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private9push_bang(ptr nonnull align 8 %i.d)
          to label %bb.ce unwind label %bb.bz, !noalias !85

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMCs7djI6dnwcVV_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.b)
          to label %bb.cf unwind label %bb.bz, !noalias !85

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvXs6_NtCs5uUHdUE6bLW_5quote9to_tokensNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.b)
          to label %_RNvXNtCs5uUHdUE6bLW_5quote9to_tokensRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_8ToTokens9to_tokensCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cg, !noalias !85

bb.cg:                                            ; preds = %bb.cf
  %i.dy = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.b) #13
          to label %bb.by unwind label %bb.ci, !noalias !85

_RNvXNtCs5uUHdUE6bLW_5quote9to_tokensRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_8ToTokens9to_tokensCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !85
  invoke void @_RNvNtCs5uUHdUE6bLW_5quote9___private10push_group(ptr nonnull align 8 %i.d, i8 0, ptr nonnull align 8 %i.c)
          to label %bb.ch unwind label %bb.bz, !noalias !85

bb.ch:                                            ; preds = %_RNvXNtCs5uUHdUE6bLW_5quote9to_tokensRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB2_8ToTokens9to_tokensCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !85
  %i.dz = invoke i32 @_RNvXs2_Cs7djI6dnwcVV_11proc_macro2NtCseSCJ3UB48O9_10proc_macro11TokenStreamINtNtCskKLDkoKarTP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.e)
          to label %bb.cl unwind label %bb.ck, !noalias !85

bb.ci:                                            ; preds = %bb.cg, %bb.by
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !85
  unreachable

bb.cj:                                            ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !85
  store i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !noalias !85
  %i.eb = invoke i32 @_RNvXs2_Cs7djI6dnwcVV_11proc_macro2NtCseSCJ3UB48O9_10proc_macro11TokenStreamINtNtCskKLDkoKarTP_4core7convert4FromNtB5_11TokenStreamE4from(ptr nonnull align 8 %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3set13RestoreOnDropECs6zco5hFcJZh_18wasmi_c_api_macros.exit8.i.i.i.i.i.i unwind label %bb.cp, !noalias !85

bb.ck:                                            ; preds = %bb.ch, %bb.bx
  %i.ec = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body8.i.i.i.i.i.i.i.i.i.i

.body8.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ck, %bb.by
  %eh.lpad-body9.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ec, %bb.ck ], [ %.pn.i6.i.i.i.i.i.i.i.i.i.i, %bb.by ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 8 %i.ae)
          to label %.body.i.i.i.i.i.i unwind label %bb.cm, !noalias !85

bb.cl:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !85
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 8 %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3set13RestoreOnDropECs6zco5hFcJZh_18wasmi_c_api_macros.exit8.i.i.i.i.i.i unwind label %bb.cp, !noalias !85

bb.cm:                                            ; preds = %bb.co, %bb.cn, %.body8.i.i.i.i.i.i.i.i.i.i
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !85
  unreachable

bb.cn:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCseSCJ3UB48O9_10proc_macro11TokenStreamINtB5_4IntoNtCs7djI6dnwcVV_11proc_macro211TokenStreamE4intoCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs7djI6dnwcVV_11proc_macro211TokenStreamECs5uUHdUE6bLW_5quote(ptr nonnull align 8 %i.ag) #13
          to label %.body.i.i.i.i.i.i unwind label %bb.cm, !noalias !85

bb.co:                                            ; preds = %_RNvXs7_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanETNtB9_11TokenStreamB1p_EEINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseSCJ3UB48O9_10proc_macro11TokenStreamECs7djI6dnwcVV_11proc_macro2(ptr nonnull align 4 %i.ah) #13
          to label %.body.i.i.i.i.i.i unwind label %bb.cm, !noalias !85

bb.cp:                                            ; preds = %bb.cl, %bb.cj, %bb.bq
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.cp, %bb.co, %bb.cn, %.body8.i.i.i.i.i.i.i.i.i.i, %bb.bo
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ef, %bb.cp ], [ %eh.lpad-body9.i.i.i.i.i.i.i.i.i.i, %.body8.i.i.i.i.i.i.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i.i, %bb.co ], [ %.pn24.i.i.i.i.i.i.i.i.i.i.i, %bb.bo ], [ %i.ee, %bb.cn ]
  invoke void @_RNvXNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.ai)
          to label %.thread.i.i.i.i.i unwind label %bb.cq, !noalias !85

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3set13RestoreOnDropECs6zco5hFcJZh_18wasmi_c_api_macros.exit8.i.i.i.i.i.i: ; preds = %bb.cl, %bb.cj
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.eb, %bb.cj ], [ %i.dz, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !85
  invoke void @_RNvXNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr nonnull align 8 %i.ai)
          to label %.thread43.i.i unwind label %bb.cr, !noalias !85

bb.cq:                                            ; preds = %.body.i.i.i.i.i.i
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !85
  unreachable

bb.cr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3set13RestoreOnDropECs6zco5hFcJZh_18wasmi_c_api_macros.exit8.i.i.i.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.cr, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.eh, %bb.cr ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !85
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.310.0..sroa_idx.i.i.i.i.i, align 8, !noalias !85
  %.sroa.2.0..sroa_idx.i.i.i.i.i16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i.i.i16.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !85
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from7reserve, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !85
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store ptr @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !85
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !85
  call void %i.ej(ptr nonnull byval([40 x i8]) align 8 %i.a) #15, !noalias !85, !inline_history !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  br label %.body.i.i

bb.cs:                                            ; preds = %bb.c, %_RNvXsf_NtNtCseSCJ3UB48O9_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCs6zco5hFcJZh_18wasmi_c_api_macros.exit.i.i.i.i.i.i.i.i.i, %bb.b, %.noexc24.i.i, %.noexc.i.i, %bb.a
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cs, %.thread.i.i.i.i.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ek, %bb.cs ], [ %eh.lpad-body.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.bi, %bb.f ]
  %i.el = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.em = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr %i.el)
          to label %bb.cu unwind label %bb.ct, !noalias !85 ; 2 uses

bb.ct:                                            ; preds = %.body.i.i
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #14, !noalias !85
  unreachable

.thread43.i.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvNtNtNtCseSCJ3UB48O9_10proc_macro6bridge6client5state3set13RestoreOnDropECs6zco5hFcJZh_18wasmi_c_api_macros.exit8.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.310.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !85
  call void @_RNvNvXs4_NtNtCseSCJ3UB48O9_10proc_macro6bridge6bufferNtB7_6BufferINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from4drop(ptr nonnull byval([40 x i8]) align 8 %i.at) #15, !noalias !85, !inline_history !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.an, i64 40, i1 false), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !85
  %.sroa.4.8.insert.ext.i.i = zext i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to i64
  %i.eo = inttoptr i64 %.sroa.4.8.insert.ext.i.i to ptr
  store i64 0, ptr %i.ax, align 8, !noalias !85
end_hunk_0
