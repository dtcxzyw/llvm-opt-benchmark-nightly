Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0Cs2JiOgHzbbc7_10tokenizers:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !3, !noundef !4
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0Cs2JiOgHzbbc7_10tokenizers.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #25
  unreachable

_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !inline_history !706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0E0B1L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !13, !noundef !4 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !3, !noundef !4
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0B10_.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #25
  unreachable

_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0B10_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.f = tail call noundef ptr %i.e(), !inline_history !707
  store ptr %i.f, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !708, !noalias !711, !align !13, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !708, !noalias !711
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !3, !noalias !714, !noundef !4
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #25, !noalias !714
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #25, !noalias !714
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !714, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !714
  call void %i.f(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !noalias !714, !inline_history !715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !714
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !716, !noalias !719, !align !13, !noundef !4 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !716, !noalias !719
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.c, align 4, !range !3, !noalias !722, !noundef !4
  %i.d = trunc nuw i8 %.val.i.i to i1
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #25, !noalias !722
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #25, !noalias !722
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs2JiOgHzbbc7_10tokenizers5utils4onig8SysRegexE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !noalias !722, !nonnull !4, !noundef !4
  %i.f = tail call noundef ptr %i.e(), !noalias !722, !inline_history !723
  store ptr %i.f, ptr %i.b, align 8, !noalias !722
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding10merge_with(ptr noalias noundef align 8 dereferenceable(256) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(256) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [256 x i8], align 8               ; 5 uses
  %i.q = alloca [256 x i8], align 8               ; 4 uses
  %i.r = alloca [256 x i8], align 8               ; 6 uses
  %i.s = alloca [256 x i8], align 8               ; 5 uses
  %i.t = alloca [256 x i8], align 8               ; 4 uses
  %i.u = alloca [256 x i8], align 8               ; 6 uses
  %i.v = alloca [256 x i8], align 8               ; 5 uses
  %i.w = alloca [256 x i8], align 8               ; 4 uses
  %i.x = alloca [256 x i8], align 8               ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 7 uses
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.af, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 184
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph178, %._crit_edge
  %.sroa.0.0176 = phi ptr [ %i.ad, %.lr.ph178 ], [ %i.ak, %._crit_edge ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0176, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke fastcc void @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5_8EncodingNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.0176)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit

._crit_edge179:                                   ; preds = %._crit_edge, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %.idx185 = shl nuw nsw i64 %i.ao, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx185
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %._crit_edge183, label %.lr.ph182

.thread166:                                       ; preds = %bb.aw, %bb.at
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.hl, %bb.aw ], [ %i.hj, %bb.at ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %bb.bm

.loopexit:                                        ; preds = %.lr.ph182
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread67

.loopexit.split-lp.loopexit:                      ; preds = %bb.b
  %lpad.loopexit172 = landingpad { ptr, i32 }
          cleanup
  br label %.thread67

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.am, %bb.ar, %bb.aq, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %._crit_edge183
  %.sroa.016.1.ph.ph.a = phi i1 [ false, %bb.aq ], [ false, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit ], [ false, %bb.am ], [ false, %bb.ar ], [ true, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %._crit_edge183 ]
  %.sroa.015.1.ph.ph = phi i1 [ false, %bb.aq ], [ true, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit ], [ true, %bb.am ], [ false, %bb.ar ], [ true, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %._crit_edge183 ]
  %.sroa.014.1.ph.ph = phi i1 [ true, %bb.aq ], [ true, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit ], [ true, %bb.am ], [ false, %bb.ar ], [ true, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %._crit_edge183 ]
  %.sroa.017.1.ph.ph = phi i1 [ false, %bb.aq ], [ false, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit ], [ false, %bb.am ], [ false, %bb.ar ], [ false, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %._crit_edge183 ]
  %.sroa.018.1.ph.ph = phi i1 [ false, %bb.aq ], [ false, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit ], [ false, %bb.am ], [ false, %bb.ar ], [ false, %bb.ag ], [ false, %bb.af ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %._crit_edge183 ]
  %.sroa.019.1.ph.ph = phi i1 [ false, %bb.aq ], [ false, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit ], [ false, %bb.am ], [ false, %bb.ar ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %._crit_edge183 ]
  %.sroa.020.1.ph.ph = phi i1 [ false, %bb.aq ], [ false, %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit ], [ false, %bb.am ], [ false, %bb.ar ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ true, %bb.ac ], [ true, %._crit_edge183 ]
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.thread67

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke fastcc void @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5_8EncodingNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1)
          to label %bb.e unwind label %bb.t

bb.d:                                             ; preds = %.lr.ph
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread67

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding10merge_with(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.w, i1 noundef zeroext %2)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.v, ptr noundef nonnull align 8 dereferenceable(256) %i.x, i64 256, i1 false)
  %i.ar = load i64, ptr %i.aa, align 8, !alias.scope !724, !noalias !727, !noundef !4 ; 3 uses
  %i.as = load i64, ptr %i.y, align 8, !range !93, !alias.scope !724, !noalias !727, !noundef !4
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.j unwind label %bb.h, !noalias !727

bb.h:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.v) #28
          to label %.thread67 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.aw = load ptr, ptr %i.z, align 8, !alias.scope !724, !noalias !727, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw [256 x i8], ptr %i.aw, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ax, ptr noundef nonnull align 8 dereferenceable(256) %i.v, i64 256, i1 false)
  %i.ay = add i64 %i.ar, 1
  store i64 %i.ay, ptr %i.aa, align 8, !alias.scope !724, !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.az = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = load i64, ptr %i.aj, align 8, !noundef !4 ; 2 uses
  %.idx184 = shl nuw nsw i64 %i.ba, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx184
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.q
  %.sroa.02.0175 = phi ptr [ %i.bd, %bb.q ], [ %i.az, %bb.j ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.0175, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke fastcc void @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5_8EncodingNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.0.0176)
          to label %bb.k unwind label %bb.d

._crit_edge:                                      ; preds = %bb.q, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.be = icmp eq ptr %i.ak, %i.ag
  br i1 %i.be, label %._crit_edge179, label %bb.b

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke fastcc void @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5_8EncodingNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.02.0175)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding10merge_with(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.t, i1 noundef zeroext %2)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.s, ptr noundef nonnull align 8 dereferenceable(256) %i.u, i64 256, i1 false)
  %i.bf = load i64, ptr %i.aa, align 8, !alias.scope !729, !noalias !732, !noundef !4 ; 3 uses
  %i.bg = load i64, ptr %i.y, align 8, !range !93, !alias.scope !729, !noalias !732, !noundef !4
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.q unwind label %bb.o, !noalias !732

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.s) #28
          to label %.thread67 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.bk = load ptr, ptr %i.z, align 8, !alias.scope !729, !noalias !732, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw [256 x i8], ptr %i.bk, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bl, ptr noundef nonnull align 8 dereferenceable(256) %i.s, i64 256, i1 false)
  %i.bm = add i64 %i.bf, 1
  store i64 %i.bm, ptr %i.aa, align 8, !alias.scope !729, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bn = icmp eq ptr %i.bd, %i.bb
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %bb.k, %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.u) #28
          to label %.thread67 unwind label %bb.s

bb.s:                                             ; preds = %bb.bp, %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %.thread67, %bb.ab, %bb.t, %bb.r
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.t:                                             ; preds = %bb.c, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.x) #28
          to label %.thread67 unwind label %bb.s

.lr.ph182:                                        ; preds = %._crit_edge179, %bb.aa
  %.sroa.05.0180 = phi ptr [ %i.bq, %bb.aa ], [ %i.am, %._crit_edge179 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.05.0180, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5_8EncodingNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %0)
          to label %bb.u unwind label %.loopexit

._crit_edge183:                                   ; preds = %bb.aa, %._crit_edge179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !noundef !4 ; 2 uses
  store i64 %i.bs, ptr %i.o, align 8
  %i.bt = icmp ult i64 %i.bs, 2305843009213693952
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.bu, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtNtNtBV_4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.lr.ph182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke fastcc void @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5_8EncodingNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.05.0180)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding10merge_with(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.q, i1 noundef zeroext %2)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.p, ptr noundef nonnull align 8 dereferenceable(256) %i.r, i64 256, i1 false)
  %i.bv = load i64, ptr %i.aa, align 8, !alias.scope !734, !noalias !737, !noundef !4 ; 3 uses
  %i.bw = load i64, ptr %i.y, align 8, !range !93, !alias.scope !734, !noalias !737, !noundef !4
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.aa unwind label %bb.y, !noalias !737

bb.y:                                             ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.p) #28
          to label %.thread67 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.ca = load ptr, ptr %i.z, align 8, !alias.scope !734, !noalias !737, !nonnull !4, !noundef !4
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.ca, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cb, ptr noundef nonnull align 8 dereferenceable(256) %i.p, i64 256, i1 false)
  %i.cc = add i64 %i.bv, 1
  store i64 %i.cc, ptr %i.aa, align 8, !alias.scope !734, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding10merge_with:bb.a
  %i.fd = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %i.fe = shufflevector <2 x i64> %i.fd, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ff = add <2 x i64> %i.fe, %i.fc
  store <2 x i64> %i.ff, ptr %i.fa, align 8, !noalias !757
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.01.i.i.unr = phi i64 [ %.sroa.0.01.i.i.ph, %scalar.ph.preheader ], [ %i.fb, %scalar.ph.prol ]
  %i.fg = icmp eq i64 %i.em, %.neg
  br i1 %i.fg, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.01.i.i = phi i64 [ %i.fs, %scalar.ph ], [ %.sroa.0.01.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.sroa.0.01.i.i
  %i.fi = load i64, ptr %.val6.i.i, align 8, !noalias !745, !noundef !4
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.sroa.0.01.i.i
  %i.fk = add nuw i64 %.sroa.0.01.i.i, 1          ; 2 uses
  %i.fl = load <2 x i64>, ptr %i.fh, align 8, !noalias !745
  %i.fm = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fn = shufflevector <2 x i64> %i.fm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fo = add <2 x i64> %i.fn, %i.fl
  store <2 x i64> %i.fo, ptr %i.fj, align 8, !noalias !757
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %i.fk
  %i.fq = load i64, ptr %.val6.i.i, align 8, !noalias !745, !noundef !4
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.fk
  %i.fs = add nuw i64 %.sroa.0.01.i.i, 2          ; 2 uses
  %i.ft = load <2 x i64>, ptr %i.fp, align 8, !noalias !745
  %i.fu = insertelement <2 x i64> poison, i64 %i.fq, i64 0
  %i.fv = shufflevector <2 x i64> %i.fu, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fw = add <2 x i64> %i.fv, %i.ft
  store <2 x i64> %i.fw, ptr %i.fr, align 8, !noalias !757
  %exitcond.not.i.i.1 = icmp eq i64 %i.fs, %i.em
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %scalar.ph, !llvm.loop !758

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc.i
  invoke void @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTjjEE32forget_allocation_drop_remainingCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %bb.am unwind label %bb.al, !noalias !745

bb.al:                                            ; preds = %.loopexit.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !759
  store i64 %i.eg, ptr %i.a, align 8, !noalias !759
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ef, ptr %i.fy, align 8, !noalias !759
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTjjEB1K_EECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.an, !noalias !745

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTjjEB1K_EECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !759
  br label %bb.aj

bb.am:                                            ; preds = %.loopexit.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !745
  unreachable

bb.ao:                                            ; preds = %bb.ai
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !4, !noundef !4
  %i.gc = getelementptr [16 x i8], ptr %i.gb, i64 %i.ec ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %.not.i = icmp eq ptr %i.gd, null
  br i1 %.not.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTjjEE6map_orjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB11_8Encoding10merge_withs_0EB15_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ge = getelementptr i8, ptr %i.gc, i64 -8
  %.val.i = load i64, ptr %i.ge, align 8, !alias.scope !760, !noundef !4
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRTjjEE6map_orjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB11_8Encoding10merge_withs_0EB15_.exit

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit: ; preds = %bb.am
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.gg = icmp ult i64 %i.em, 576460752303423488
  call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.em
  store ptr %i.ef, ptr %i.e, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.eg, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ef, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.gh, ptr %i.gk, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecTjjEEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjjEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2u_8Encoding10merge_withs0_0EB2k_EB2y_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.gp = load i64, ptr %i.gm, align 8, !range !93, !noundef !4
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.gr = load i64, ptr %i.gq, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gs = icmp ult i64 %i.gr, 2305843009213693952
  call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gr
  store ptr %i.go, ptr %i.d, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.gp, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.go, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.gt, ptr %i.gw, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendmINtNtB7_9into_iter8IntoItermEE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ha = load ptr, ptr %i.gz, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.hb = load i64, ptr %i.gy, align 8, !range !93, !noundef !4
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.hd = load i64, ptr %i.hc, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.he = icmp ult i64 %i.hd, 2305843009213693952
  call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hd
  store ptr %i.ha, ptr %i.c, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.hb, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ha, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.hf, ptr %i.hi, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecmEINtB5_10SpecExtendmINtNtB7_9into_iter8IntoItermEE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.thread166 unwind label %bb.av

bb.au:                                            ; preds = %bb.as
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.thread166

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit: ; preds = %bb.au
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit37 unwind label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.bo, %bb.bp, %bb.ax
  %common.resume.op = phi { ptr, i32 } [ %i.hn, %bb.ax ], [ %.pn246498121130147154165170, %bb.bp ], [ %.pn246498121130147154165170, %bb.bo ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit37: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
  ret void

bb.az:                                            ; preds = %.thread67
  br i1 %.sroa.020.0.ph, label %bb.bb, label %bb.ba

.thread67:                                        ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.o, %bb.r, %bb.ab, %bb.t, %bb.d, %bb.h, %bb.y, %bb.aj
  %.sroa.016.0.ph.a = phi i1 [ true, %bb.d ], [ true, %bb.t ], [ true, %bb.h ], [ true, %bb.ab ], [ true, %bb.o ], [ true, %bb.y ], [ false, %bb.aj ], [ true, %bb.r ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.016.1.ph.ph.a, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.015.0.ph = phi i1 [ true, %bb.d ], [ true, %bb.t ], [ true, %bb.h ], [ true, %bb.ab ], [ true, %bb.o ], [ true, %bb.y ], [ true, %bb.aj ], [ true, %bb.r ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.015.1.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.014.0.ph = phi i1 [ true, %bb.d ], [ true, %bb.t ], [ true, %bb.h ], [ true, %bb.ab ], [ true, %bb.o ], [ true, %bb.y ], [ true, %bb.aj ], [ true, %bb.r ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.014.1.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.017.0.ph = phi i1 [ true, %bb.d ], [ true, %bb.t ], [ true, %bb.h ], [ true, %bb.ab ], [ true, %bb.o ], [ true, %bb.y ], [ false, %bb.aj ], [ true, %bb.r ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.017.1.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.018.0.ph = phi i1 [ true, %bb.d ], [ true, %bb.t ], [ true, %bb.h ], [ true, %bb.ab ], [ true, %bb.o ], [ true, %bb.y ], [ false, %bb.aj ], [ true, %bb.r ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.018.1.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.019.0.ph = phi i1 [ true, %bb.d ], [ true, %bb.t ], [ true, %bb.h ], [ true, %bb.ab ], [ true, %bb.o ], [ true, %bb.y ], [ false, %bb.aj ], [ true, %bb.r ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.019.1.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.020.0.ph = phi i1 [ true, %bb.d ], [ true, %bb.t ], [ true, %bb.h ], [ true, %bb.ab ], [ true, %bb.o ], [ true, %bb.y ], [ false, %bb.aj ], [ true, %bb.r ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.020.1.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.021.0.ph = phi i1 [ true, %bb.d ], [ true, %bb.t ], [ true, %bb.h ], [ true, %bb.ab ], [ true, %bb.o ], [ true, %bb.y ], [ false, %bb.aj ], [ true, %bb.r ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn24.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %lpad.thr_comm, %bb.t ], [ %i.au, %bb.h ], [ %i.ce, %bb.ab ], [ %i.bi, %bb.o ], [ %i.by, %bb.y ], [ %.pn.i, %bb.aj ], [ %i.bo, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit172, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.y) #28
          to label %bb.az unwind label %bb.s

bb.ba:                                            ; preds = %bb.bb, %bb.az
  br i1 %.sroa.019.0.ph, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %1) #28
          to label %bb.ba unwind label %bb.s

bb.bc:                                            ; preds = %bb.bd, %bb.ba
  br i1 %.sroa.018.0.ph, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.ba
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.hp) #28
          to label %bb.bc unwind label %bb.s

bb.be:                                            ; preds = %bb.bf, %bb.bc
  br i1 %.sroa.017.0.ph, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.hq) #28
          to label %bb.be unwind label %bb.s

bb.bg:                                            ; preds = %bb.bh, %bb.be
  br i1 %.sroa.016.0.ph.a, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.hr) #28
          to label %bb.bg unwind label %bb.s

bb.bi:                                            ; preds = %bb.bj, %bb.bg
  br i1 %.sroa.015.0.ph, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.hs) #28
          to label %bb.bi unwind label %bb.s

bb.bk:                                            ; preds = %bb.bl, %bb.bi
  br i1 %.sroa.014.0.ph, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ht) #28
          to label %bb.bk unwind label %bb.s

bb.bm:                                            ; preds = %.thread166, %bb.bn, %bb.bk
  %.sroa.021.06299120131146155164171 = phi i1 [ false, %.thread166 ], [ %.sroa.021.0.ph, %bb.bn ], [ %.sroa.021.0.ph, %bb.bk ]
  %.pn246498121130147154165170 = phi { ptr, i32 } [ %eh.lpad-body35, %.thread166 ], [ %.pn24.ph, %bb.bn ], [ %.pn24.ph, %bb.bk ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.hu) #28
          to label %bb.bo unwind label %bb.s

bb.bn:                                            ; preds = %bb.bk
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.hv) #28
          to label %bb.bm unwind label %bb.s

bb.bo:                                            ; preds = %bb.bm
  br i1 %.sroa.021.06299120131146155164171, label %bb.bp, label %common.resume

bb.bp:                                            ; preds = %bb.bo
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEENtNtBV_4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.hw)
          to label %common.resume unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding11from_tokens(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [72 x i8], align 8                ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 16 uses
  %i.y = icmp ult i64 %i.x, 192153584101141163
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ab = load i64, ptr %1, align 8, !range !93, !noundef !4
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.x
  store ptr %i.aa, ptr %i.u, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.aa, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.ac, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.x, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.b unwind label %.thread26

.thread26:                                        ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.ag = load i64, ptr %i.i, align 8, !range !16, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !287, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.ak, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.al) #25
          to label %bb.ai unwind label %.thread26

bb.d:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.an = icmp samesign ule i64 %i.x, %i.aj
  tail call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.aj, ptr %i.s, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.x, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.j, %bb.f
  %.pn7 = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.bb, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.s) #28
          to label %.thread unwind label %bb.ae

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.ar = load i64, ptr %i.h, align 8, !range !16, !noundef !4
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !287, !noundef !4 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.aw = load i64, ptr %i.av, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #25
          to label %bb.ai unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4
  %i.ay = icmp samesign ule i64 %i.x, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.au, ptr %i.r, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ax, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.x, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.r) #28
          to label %bb.e unwind label %bb.ae

bb.k:                                             ; preds = %bb.i
  %i.bc = load i64, ptr %i.g, align 8, !range !16, !noundef !4
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !287, !noundef !4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %i.bg, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #25
          to label %bb.ai unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4
  %i.bj = icmp samesign ule i64 %i.x, %i.bf
  tail call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 %i.bf, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldTINtB8_3VecmEIB2J_NtNtBa_6string6StringEIB2J_TjjEEENCNvMNtBY_8encodingNtB3B_8Encoding11from_tokens0EB10_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !763
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 192153584101141163) %i.x, i1 noundef zeroext true, i64 noundef 4, i64 noundef 8)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  %i.bo = load i64, ptr %i.d, align 8, !range !16, !noalias !763, !noundef !4
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14word_to_tokens:bb.a
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.k ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !880 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -24
  %i.y = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownjINtB2_10EquivalentjE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x), !noalias !883
  br i1 %i.y, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.d, !prof !432

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %select.unfold.i, !prof !18

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -16
  %.val.i = load i64, ptr %i.ag, align 8, !alias.scope !886, !noundef !4
  %i.ah = getelementptr i8, ptr %i.w, i64 -8
  br label %_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit

_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i, %select.unfold.i
  %.pn.i = phi i64 [ 0, %select.unfold.i ], [ %.val.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 5 uses
  %.val10.pn.i.in = phi ptr [ %i.ai, %select.unfold.i ], [ %i.ah, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i ]
  %.val10.pn.i = load i64, ptr %.val10.pn.i.in, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  %i.al = icmp ult i64 %.val10.pn.i, %.pn.i
  %.not = icmp ugt i64 %.val10.pn.i, %i.ak
  %or.cond = or i1 %i.al, %.not
  br i1 %or.cond, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.val10.pn.i
  %.not.i.i.i.i = icmp samesign eq i64 %.pn.i, %.val10.pn.i
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.pn.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i
  %.sroa.722.0 = phi i64 [ %.sroa.722.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.020.0 = phi i64 [ %.sroa.020.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.7.0 = phi i64 [ %.sroa.7.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %i.aq = phi i64 [ %i.ay, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %i.ar = phi ptr [ %i.as, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.ar, align 4, !range !259, !alias.scope !889, !noalias !892, !noundef !4
  %i.at = getelementptr i8, ptr %i.ar, i64 4
  %.val6.i.i.i.i = load i32, ptr %i.at, align 4, !noalias !906 ; 2 uses
  %i.au = trunc nuw i32 %.val.i.i.i.i to i1
  br i1 %i.au, label %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i

_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i = icmp ugt i32 %.val6.i.i.i.i, %2
  br i1 %.not.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit, label %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i

_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i
  %i.av = icmp eq i32 %.val6.i.i.i.i, %2
  br i1 %i.av, label %bb.g, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i

bb.g:                                             ; preds = %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.020.0, 0
  %i.aw = icmp ult i64 %i.aq, %.sroa.722.0
  %or.cond31 = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.aw ; 2 uses
  %.sroa.722.2 = select i1 %or.cond31, i64 %i.aq, i64 %.sroa.722.0
  %.sroa.020.2 = select i1 %or.cond31, i64 1, i64 %.sroa.020.0
  %.not2.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %.sroa.0.0, 0
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.aq, %.sroa.7.0
  %or.cond32 = select i1 %.not2.i.i.i.i.i.i.i.i.i.i, i1 %.not1.i.i.i.i.i.i.i.i.i.i, i1 false ; 2 uses
  %i.ax = add nuw nsw i64 %i.aq, 1
  %spec.select = select i1 %or.cond32, i64 %.sroa.7.0, i64 %i.ax
  %spec.select33 = select i1 %or.cond32, i64 %.sroa.0.0, i64 1
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i: ; preds = %bb.g, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.722.1 = phi i64 [ %.sroa.722.0, %.lr.ph.i.i.i.i ], [ %.sroa.722.2, %bb.g ], [ %.sroa.722.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.020.1 = phi i64 [ %.sroa.020.0, %.lr.ph.i.i.i.i ], [ %.sroa.020.2, %bb.g ], [ %.sroa.020.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %.sroa.7.0, %.lr.ph.i.i.i.i ], [ %spec.select, %bb.g ], [ %.sroa.7.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %.lr.ph.i.i.i.i ], [ %spec.select33, %bb.g ], [ %.sroa.0.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = add nuw nsw i64 %i.aq, 1
  %.not17.i.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not17.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit: ; preds = %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i
  %.sroa.722.3 = phi i64 [ %.sroa.722.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %.sroa.722.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i ]
  %.sroa.020.3 = phi i64 [ %.sroa.020.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %.sroa.020.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i ]
  %.sroa.7.2 = phi i64 [ %.sroa.7.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %.sroa.7.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %.sroa.0.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i ]
  %i.az = trunc nuw i64 %.sroa.020.3 to i1
  %i.ba = trunc nuw i64 %.sroa.0.2 to i1
  %or.cond12 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond12, label %bb.h, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread

bb.h:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit
  %i.bb = add i64 %.sroa.722.3, %.pn.i
  %i.bc = add i64 %.sroa.7.2, %.pn.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bc, ptr %i.be, align 8
  br label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread: ; preds = %bb.h, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit, %bb.f, %_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit
  %storemerge34 = phi i64 [ 0, %_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit ], [ 1, %bb.h ], [ 0, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit ], [ 0, %bb.f ]
  store i64 %storemerge34, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding15set_overflowing(ptr noalias noundef align 8 dereferenceable(256) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding15set_sequence_id(ptr noalias noundef align 8 dereferenceable(256) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2305843009213693952
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %1, i64 noundef 0, i64 noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding16get_sequence_ids(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 7 uses
  %i.g = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !907
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %i.f, i1 noundef zeroext true, i64 noundef 8, i64 noundef 16), !noalias !907
  %i.h = load i64, ptr %i.b, align 8, !range !16, !noalias !907, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !287, !noalias !907, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !907
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25, !noalias !907
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !907, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !907
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !907
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !907
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.p, align 8, !alias.scope !907
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.r = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !nonnull !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.s, label %bb.c, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split

bb.c:                                             ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionjEE5drainINtNtNtBJ_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.f)
          to label %bb.d unwind label %.loopexit.split-lp.split.us

bb.d:                                             ; preds = %bb.c
  %.not.not.us.not = icmp eq i64 %i.f, 0
  %.sroa.010.0.us = select i1 %.not.not.us.not, i64 2, i64 1
  store i64 %.sroa.010.0.us, ptr %i.c, align 8, !alias.scope !910, !noalias !914
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !910, !noalias !914
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !910, !noalias !914
  invoke void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources8repeat_n7RepeatNINtNtBZ_6option6OptionjEEENtNtNtBZ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.e unwind label %.split.us.a

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtBT_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %.split31.us.loopexit unwind label %.loopexit.split-lp.split.us

.loopexit.split-lp.split.us:                      ; preds = %bb.e, %bb.c
  %lpad.loopexit.split-lp.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split.us.a:                                      ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.split31.us.loopexit:                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.split31.us

.split31.us:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit, %.split31.us.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split: ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.03.027 = phi i64 [ %i.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit ], [ 0, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ] ; 3 uses
  %i.aa = add nuw i64 %.sroa.03.027, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.03.027, ptr %i.a, align 8, !noalias !916
  %i.ab = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRjECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.split ; 2 uses

.noexc:                                           ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split
  %i.ac = lshr i64 %i.ab, 57
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %i.ae = insertelement <16 x i8> poison, i8 %i.ad, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.noexc
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.aw, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.ab, %.noexc ], [ %i.ax, %bb.h ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.w ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ag, align 1, !noalias !919 ; 2 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.af
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.av, %bb.g ], [ %i.ai, %bb.f ] ; 3 uses
  %i.aj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  %i.am = and i64 %i.al, %i.w
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -24
  %i.aq = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownjINtB2_10EquivalentjE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %.lr.ph.i.i.i
  br i1 %i.aq, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.g, !prof !432

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.ar = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.h, label %.loopexit24, !prof !18

bb.g:                                             ; preds = %.noexc21
  %i.au = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.av = and i16 %i.au, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ax = add i64 %.sroa.01.0.i.i.i.i, %i.aw
  br label %bb.f

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc21
  %i.ay = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %.val.i = load i64, ptr %i.ay, align 8, !alias.scope !927, !noundef !4
  %i.az = getelementptr i8, ptr %i.ao, i64 -8
  %.val10.i = load i64, ptr %i.az, align 8, !alias.scope !930, !noundef !4
  br label %.loopexit24

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.split:                         ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split, %.loopexit24, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.split.us, %.loopexit.split-lp.split, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %.us-phi29, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.split ], [ %lpad.loopexit.split-lp.us, %.loopexit.split-lp.split.us ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #28
          to label %bb.n unwind label %bb.m

.loopexit24:                                      ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i
  %.pn.i = phi i64 [ %.val.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i ], [ 0, %._crit_edge.i.i.i ] ; 3 uses
  %.val10.pn.i = phi i64 [ %.val10.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.f, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionjEE5drainINtNtNtBJ_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.pn.i, i64 noundef %.val10.pn.i)
          to label %bb.i unwind label %.loopexit.split-lp.split

bb.i:                                             ; preds = %.loopexit24
  %.not.not = icmp ugt i64 %.val10.pn.i, %.pn.i
  %.sroa.010.0 = select i1 %.not.not, i64 1, i64 2
  %.sroa.05.0 = call i64 @llvm.usub.sat.i64(i64 %.val10.pn.i, i64 %.pn.i)
  store i64 %.sroa.010.0, ptr %i.c, align 8, !alias.scope !910, !noalias !914
  store i64 %.sroa.03.027, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !910, !noalias !914
  store i64 %.sroa.05.0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !910, !noalias !914
  invoke void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources8repeat_n7RepeatNINtNtBZ_6option6OptionjEEENtNtNtBZ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.k unwind label %.split

.split:                                           ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.split.us.a, %.split
  %.us-phi29 = phi { ptr, i32 } [ %i.ba, %.split ], [ %i.z, %.split.us.a ]
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtBT_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtBT_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.split

bb.l:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not = icmp eq i64 %i.aa, %i.r
  br i1 %exitcond.not, label %.split31.us, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split

bb.m:                                             ; preds = %.body
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding17token_to_sequence(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2305843009213693952
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ugt i64 %1, %i.c
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtBS_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !933 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not.i.not.not.not.not.not.not = icmp ne ptr %i.k, null ; 2 uses
  br i1 %.not.i.not.not.not.not.not.not, label %bb.e, label %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.val9.i = load i64, ptr %i.l, align 8, !alias.scope !936, !noalias !941, !noundef !4
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val10.i = load i64, ptr %i.m, align 8, !alias.scope !943, !noalias !933
  %.not.i.i.i.i = icmp ule i64 %.val9.i, %1
  %i.n = icmp ult i64 %1, %.val10.i
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.n, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %.val8.i = load i64, ptr %i.k, align 8, !noalias !933
  br label %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit

_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit: ; preds = %bb.d, %bb.f
  %.sroa.5.0 = phi i64 [ %.val8.i, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0 = zext i1 %.not.i.not.not.not.not.not.not to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit ], [ undef, %bb.a ], [ 0, %bb.b ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit ], [ 0, %bb.a ], [ 1, %bb.b ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding3pad(ptr noalias noundef align 8 dereferenceable(256) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [64 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [64 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [1 x i8], align 1                 ; 3 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [4 x i8], align 4                 ; 4 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.z, align 8
  store i32 %2, ptr %i.y, align 4
  store i32 %3, ptr %i.x, align 4
  store ptr %4, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %5, ptr %i.aa, align 8
  %i.ab = zext i1 %6 to i8
  store i8 %i.ab, ptr %i.v, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelismINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtB9_9tokenizer8encoding8EncodingEINtB5_27MaybeParallelRefMutIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutB1o_EINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutB1o_EE18maybe_par_iter_mutB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.z, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.x, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.w, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.v, ptr %i.ag, align 8
  call void @_RINvMs0_CskqoA5J4kFRc_10rayon_condINtB6_12CondIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutB1t_EE8for_eachNCNvMB1v_B1t_3pad0EB1z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %.not = icmp ult i64 %i.ai, %i.ak
  br i1 %.not, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.al = sub nuw i64 %i.ak, %i.ai                ; 15 uses
  store i64 %i.al, ptr %i.s, align 8
  %i.am = load i8, ptr %i.v, align 1, !range !3, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.al, ptr %i.ap, align 8
  store ptr %i.y, ptr %i.d, align 8
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3pads7_0EEB2n_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.al, ptr %i.as, align 8
  store ptr %i.x, ptr %i.c, align 8
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3pads8_0EEB2n_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.al, ptr %i.av, align 8
  store ptr %i.w, ptr %i.b, align 8
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2D_8Encoding3pads9_0EEB2H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE14extend_trustedINtNtNtNtBK_4iter8adapters3map3MapINtNtNtBK_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2F_8Encoding3padsa_0EEB2J_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef 0, i64 noundef %i.al)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3padsb_0EEB2n_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 0, i64 noundef %i.al)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3padsc_0EEB2n_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef 0, i64 noundef %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTjjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB19_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2m_8Encoding3padsd_0EEB2q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef 0, i64 noundef %i.al)
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  store ptr %i.y, ptr %i.q, align 8, !alias.scope !944, !noalias !948
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !944, !noalias !948
end_hunk_2
begin_hunk_3_@_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding8truncate:bb.a
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4
  %i.ch = load i64, ptr %i.ay, align 8, !noundef !4 ; 2 uses
  %i.ci = icmp ult i64 %i.ce, %i.cc
  br i1 %i.ci, label %bb.t, label %bb.s, !prof !18

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #25
          to label %bb.r unwind label %bb.q

bb.m:                                             ; preds = %.thread, %.body119, %bb.ac, %bb.q
  %.pn80 = phi { ptr, i32 } [ %i.cl, %bb.q ], [ %.pn78, %bb.ac ], [ %.pn66133, %.body119 ], [ %i.of, %.thread ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %.body unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.ex

bb.p:                                             ; preds = %bb.n
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.q:                                             ; preds = %bb.w, %bb.u, %bb.t, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.r:                                             ; preds = %bb.eo, %bb.ek, %bb.eg, %bb.ec, %bb.dy, %bb.dr, %bb.dn, %bb.dh, %bb.cx, %bb.ct, %bb.cn, %bb.cj, %bb.cg, %bb.ce, %bb.bx, %bb.bs, %bb.bo, %bb.bj, %bb.bf, %bb.ba, %bb.aw, %bb.ar, %bb.aj, %bb.af, %bb.aa, %bb.w, %bb.t, %bb.l
  unreachable

bb.s:                                             ; preds = %bb.k
  %i.cm = sub nuw i64 %i.ce, %i.cc                ; 27 uses
  %.not40 = icmp ugt i64 %i.ce, %i.ch
  br i1 %.not40, label %bb.t, label %bb.u, !prof !18

bb.t:                                             ; preds = %bb.s, %bb.k
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #25
          to label %bb.r unwind label %bb.q

bb.u:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.v unwind label %bb.q

bb.v:                                             ; preds = %bb.u
  %i.co = load i64, ptr %i.v, align 8, !range !16, !noundef !4
  %i.cp = trunc nuw i64 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !287, !noundef !4 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.cp, label %bb.w, label %bb.x, !prof !18

bb.w:                                             ; preds = %bb.v
  %i.ct = load i64, ptr %i.cs, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cr, i64 %i.ct) #25
          to label %bb.r unwind label %bb.q

bb.x:                                             ; preds = %bb.v
  %i.cu = load ptr, ptr %i.cs, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cv = icmp ule i64 %i.cm, %i.cr
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.cr, ptr %i.an, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store i64 0, ptr %i.cx, align 8
  %.not41 = icmp eq i64 %i.ce, %i.cc              ; 6 uses
  br i1 %.not41, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !noundef !4 ; 2 uses
  %.not42 = icmp ugt i64 %i.ce, %i.da
  br i1 %.not42, label %bb.aa, label %bb.ab, !prof !18

bb.z:                                             ; preds = %bb.x
  %i.db = shl i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr nonnull align 4 %i.cn, i64 %i.db, i1 false)
  store i64 %i.cm, ptr %i.cx, align 8
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #25
          to label %bb.r unwind label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.dc = load ptr, ptr %i.cy, align 8, !nonnull !4, !noundef !4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %.body83, %bb.ad
  %.pn78 = phi { ptr, i32 } [ %i.de, %bb.ad ], [ %.pn75.pn, %.body83 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.an) #28
          to label %bb.m unwind label %bb.ex

bb.ad:                                            ; preds = %bb.af, %bb.ab, %bb.aa
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  %i.df = load i64, ptr %i.u, align 8, !range !16, !noundef !4
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !range !287, !noundef !4 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.dg, label %bb.af, label %bb.ag, !prof !18

bb.af:                                            ; preds = %bb.ae
  %i.dk = load i64, ptr %i.dj, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.di, i64 %i.dk) #25
          to label %bb.r unwind label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  %i.dl = load ptr, ptr %i.dj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dm = icmp ule i64 %i.cm, %i.di
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.di, ptr %i.am, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.dl, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 0, ptr %i.do, align 8
  br i1 %.not41, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !4 ; 2 uses
  %.not43 = icmp ugt i64 %i.ce, %i.dr
  br i1 %.not43, label %bb.aj, label %bb.ak, !prof !18

bb.ai:                                            ; preds = %bb.ag
  %i.ds = shl i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr nonnull align 4 %i.dd, i64 %i.ds, i1 false)
  store i64 %i.cm, ptr %i.do, align 8
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #25
          to label %bb.r unwind label %bb.aq

bb.ak:                                            ; preds = %bb.ah
  %i.dt = load ptr, ptr %i.dp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !987
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 384307168202282326) %i.cm, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.aq

.noexc:                                           ; preds = %bb.ak
  %i.dv = load i64, ptr %i.d, align 8, !range !16, !noalias !987, !noundef !4
  %i.dw = trunc nuw i64 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !287, !noalias !987, !noundef !4 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.dw, label %bb.al, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !18

bb.al:                                            ; preds = %.noexc
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !987
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dy, i64 %i.ea) #25
          to label %.noexc82 unwind label %bb.aq

.noexc82:                                         ; preds = %bb.al
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc
  %i.eb = load ptr, ptr %i.dz, align 8, !noalias !987, !nonnull !4, !noundef !4 ; 2 uses
  %i.ec = icmp ule i64 %i.cm, %i.dy
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !987
  store i64 %i.dy, ptr %i.f, align 8, !noalias !987
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.eb, ptr %i.ed, align 8, !noalias !987
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.ce
  %i.eg = icmp eq i64 %i.dy, 0
  br i1 %i.eg, label %.loopexit163, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, %bb.an
  %.sroa.012.023.i = phi ptr [ %i.ek, %bb.an ], [ %i.du, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.ej, %bb.an ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.eh, %bb.an ], [ %i.dy, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ]
  %i.eh = add i64 %.sroa.10.021.i, -1             ; 2 uses
  %i.ei = icmp eq ptr %.sroa.012.023.i, %i.ef
  br i1 %i.ei, label %.loopexit163, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i)
          to label %bb.an unwind label %bb.ap, !noalias !991

bb.an:                                            ; preds = %bb.am
  %i.ej = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !991
  %i.em = icmp eq i64 %i.eh, 0
  br i1 %i.em, label %.loopexit163, label %.lr.ph.i

bb.ao:                                            ; preds = %bb.ap
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !991
  unreachable

bb.ap:                                            ; preds = %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.ee, align 8, !noalias !987
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.f) #28
          to label %.body83 unwind label %bb.ao, !noalias !991

.body83:                                          ; preds = %bb.aq, %bb.ap, %bb.at
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %bb.at ], [ %i.eo, %bb.aq ], [ %lpad.loopexit.i, %bb.ap ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.am) #28
          to label %bb.ac unwind label %bb.ex

bb.aq:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.loopexit163:                                     ; preds = %bb.an, %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i
  store i64 %i.cm, ptr %i.ee, align 8, !noalias !987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !noundef !4 ; 2 uses
  %.not44 = icmp ugt i64 %i.ce, %i.er
  br i1 %.not44, label %bb.ar, label %bb.as, !prof !18

bb.ar:                                            ; preds = %.loopexit163
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #25
          to label %bb.r unwind label %bb.au

bb.as:                                            ; preds = %.loopexit163
  %i.es = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %bb.av unwind label %bb.au

bb.at:                                            ; preds = %bb.bc, %bb.au
  %.pn75 = phi { ptr, i32 } [ %i.eu, %bb.au ], [ %.pn73, %bb.bc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.al) #28
          to label %.body83 unwind label %bb.ex

bb.au:                                            ; preds = %bb.aw, %bb.as, %bb.ar
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.as
  %i.ev = load i64, ptr %i.t, align 8, !range !16, !noundef !4
  %i.ew = trunc nuw i64 %i.ev to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !range !287, !noundef !4 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.ew, label %bb.aw, label %bb.ax, !prof !18

bb.aw:                                            ; preds = %bb.av
  %i.fa = load i64, ptr %i.ez, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ey, i64 %i.fa) #25
          to label %bb.r unwind label %bb.au

bb.ax:                                            ; preds = %bb.av
  %i.fb = load ptr, ptr %i.ez, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fc = icmp ule i64 %i.cm, %i.ey
  call void @llvm.assume(i1 %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.ey, ptr %i.ak, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.fb, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 0, ptr %i.fe, align 8
  br i1 %.not41, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !noundef !4 ; 2 uses
  %.not45 = icmp ugt i64 %i.ce, %i.fh
  br i1 %.not45, label %bb.ba, label %bb.bb, !prof !18

bb.az:                                            ; preds = %bb.ax
  %i.fi = shl i64 %i.cm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fb, ptr nonnull align 4 %i.et, i64 %i.fi, i1 false)
  store i64 %i.cm, ptr %i.fe, align 8
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #25
          to label %bb.r unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ay
  %i.fj = load ptr, ptr %i.ff, align 8, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.be unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bl, %bb.bd
  %.pn73 = phi { ptr, i32 } [ %i.fl, %bb.bd ], [ %.pn71, %bb.bl ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #28
          to label %bb.at unwind label %bb.ex

bb.bd:                                            ; preds = %bb.bf, %bb.bb, %bb.ba
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %bb.bb
  %i.fm = load i64, ptr %i.s, align 8, !range !16, !noundef !4
  %i.fn = trunc nuw i64 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !range !287, !noundef !4 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.fn, label %bb.bf, label %bb.bg, !prof !18

bb.bf:                                            ; preds = %bb.be
  %i.fr = load i64, ptr %i.fq, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fp, i64 %i.fr) #25
          to label %bb.r unwind label %bb.bd

bb.bg:                                            ; preds = %bb.be
  %i.fs = load ptr, ptr %i.fq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ft = icmp ule i64 %i.cm, %i.fp
  call void @llvm.assume(i1 %i.ft)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %i.fp, ptr %i.aj, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.fs, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  store i64 0, ptr %i.fv, align 8
  br i1 %.not41, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !4 ; 2 uses
  %.not46 = icmp ugt i64 %i.ce, %i.fy
  br i1 %.not46, label %bb.bj, label %bb.bk, !prof !18

bb.bi:                                            ; preds = %bb.bg
  %i.fz = shl i64 %i.cm, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr nonnull align 8 %i.fk, i64 %i.fz, i1 false)
  store i64 %i.cm, ptr %i.fv, align 8
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.cc, i64 noundef %i.ce, i64 noundef %i.fy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #25
          to label %bb.r unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  %i.ga = load ptr, ptr %i.fw, align 8, !nonnull !4, !noundef !4
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.bn unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bu, %bb.bm
  %.pn71 = phi { ptr, i32 } [ %i.gc, %bb.bm ], [ %.pn69, %bb.bu ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #28
          to label %bb.bc unwind label %bb.ex

bb.bm:                                            ; preds = %bb.bo, %bb.bk, %bb.bj
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  %i.gd = load i64, ptr %i.r, align 8, !range !16, !noundef !4
  %i.ge = trunc nuw i64 %i.gd to i1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !287, !noundef !4 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.ge, label %bb.bo, label %bb.bp, !prof !18

bb.bo:                                            ; preds = %bb.bn
  %i.gi = load i64, ptr %i.gh, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gg, i64 %i.gi) #25
          to label %bb.r unwind label %bb.bm

bb.bp:                                            ; preds = %bb.bn
  %i.gj = load ptr, ptr %i.gh, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gk = icmp ule i64 %i.cm, %i.gg
  call void @llvm.assume(i1 %i.gk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %i.gg, ptr %i.ai, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.gj, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 0, ptr %i.gm, align 8
  br i1 %.not41, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.br, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !noundef !4 ; 2 uses
  %.not47 = icmp ugt i64 %i.ce, %i.gp
  br i1 %.not47, label %bb.bs, label %bb.bt, !prof !18

bb.br:                                            ; preds = %bb.bp
end_hunk_3
begin_hunk_4_@_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding8truncate:bb.a
  %i.js = add nuw nsw i64 %.sroa.01.0413, 1       ; 4 uses
  %i.jt = icmp samesign ult i64 %i.js, %i.jr
  br i1 %i.jt, label %bb.cd, label %bb.ce

._crit_edge:                                      ; preds = %bb.ew, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.w, ptr noundef nonnull align 8 dereferenceable(256) %i.ao, i64 256, i1 false)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %0)
          to label %bb.ez unwind label %.thread

bb.cd:                                            ; preds = %bb.cc
  %i.ju = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %i.js ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !noundef !4 ; 17 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.jz = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4
  %i.ka = load i64, ptr %i.ay, align 8, !noundef !4 ; 2 uses
  %i.kb = icmp ult i64 %i.jy, %i.jw
  br i1 %i.kb, label %bb.cg, label %bb.cf, !prof !18

bb.ce:                                            ; preds = %bb.cc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.js, i64 noundef %i.jr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #25
          to label %bb.r unwind label %.body119.thread.loopexit.split-lp

.body119.thread.loopexit:                         ; preds = %bb.ch
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body119

.body119.thread.loopexit.split-lp:                ; preds = %bb.cj, %bb.cg, %bb.ce
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.cf:                                            ; preds = %bb.cd
  %i.kc = sub nuw i64 %i.jy, %i.jw                ; 27 uses
  %.not48 = icmp ugt i64 %i.jy, %i.ka
  br i1 %.not48, label %bb.cg, label %bb.ch, !prof !18

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #25
          to label %bb.r unwind label %.body119.thread.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cf
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.kc, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ci unwind label %.body119.thread.loopexit

bb.ci:                                            ; preds = %bb.ch
  %i.ke = load i64, ptr %i.n, align 8, !range !16, !noundef !4
  %i.kf = trunc nuw i64 %i.ke to i1
  %i.kg = load i64, ptr %i.ic, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.kf, label %bb.cj, label %bb.ck, !prof !18

bb.cj:                                            ; preds = %bb.ci
  %i.kh = load i64, ptr %i.id, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.kg, i64 %i.kh) #25
          to label %bb.r unwind label %.body119.thread.loopexit.split-lp

bb.ck:                                            ; preds = %bb.ci
  %i.ki = load ptr, ptr %i.id, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.kj = icmp ule i64 %i.kc, %i.kg
  call void @llvm.assume(i1 %i.kj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.kg, ptr %i.ae, align 8
  store ptr %i.ki, ptr %i.ie, align 8
  store i64 0, ptr %i.if, align 8
  %.not49 = icmp eq i64 %i.jy, %i.jw              ; 6 uses
  br i1 %.not49, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cm, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.kk = load i64, ptr %i.cz, align 8, !noundef !4 ; 2 uses
  %.not50 = icmp ugt i64 %i.jy, %i.kk
  br i1 %.not50, label %bb.cn, label %bb.co, !prof !18

bb.cm:                                            ; preds = %bb.ck
  %i.kl = shl i64 %i.kc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ki, ptr nonnull align 4 %i.kd, i64 %i.kl, i1 false)
  store i64 %i.kc, ptr %i.if, align 8
  br label %bb.cl

bb.cn:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.kk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #25
          to label %bb.r unwind label %.loopexit.split-lp

bb.co:                                            ; preds = %bb.cl
  %i.km = load ptr, ptr %i.cy, align 8, !nonnull !4, !noundef !4
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.kc, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.cs unwind label %.loopexit134

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107: ; preds = %.loopexit134, %.loopexit.split-lp, %bb.df
  %.pn64 = phi { ptr, i32 } [ %.pn61.pn, %bb.df ], [ %lpad.loopexit135, %.loopexit134 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body unwind label %bb.cr

bb.cq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body119 unwind label %bb.ex

bb.cr:                                            ; preds = %bb.cp
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.loopexit134:                                     ; preds = %bb.co
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107

.loopexit.split-lp:                               ; preds = %bb.cn, %bb.ct
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107

bb.cs:                                            ; preds = %bb.co
  %i.kq = load i64, ptr %i.m, align 8, !range !16, !noundef !4
  %i.kr = trunc nuw i64 %i.kq to i1
  %i.ks = load i64, ptr %i.ig, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.kr, label %bb.ct, label %bb.cu, !prof !18

bb.ct:                                            ; preds = %bb.cs
  %i.kt = load i64, ptr %i.ih, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ks, i64 %i.kt) #25
          to label %bb.r unwind label %.loopexit.split-lp

bb.cu:                                            ; preds = %bb.cs
  %i.ku = load ptr, ptr %i.ih, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.kv = icmp ule i64 %i.kc, %i.ks
  call void @llvm.assume(i1 %i.kv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.ks, ptr %i.ad, align 8
  store ptr %i.ku, ptr %i.ii, align 8
  store i64 0, ptr %i.ij, align 8
  br i1 %.not49, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cw, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.kw = load i64, ptr %i.dq, align 8, !noundef !4 ; 2 uses
  %.not51 = icmp ugt i64 %i.jy, %i.kw
  br i1 %.not51, label %bb.cx, label %bb.cy, !prof !18

bb.cw:                                            ; preds = %bb.cu
  %i.kx = shl i64 %i.kc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ku, ptr nonnull align 4 %i.kn, i64 %i.kx, i1 false)
  store i64 %i.kc, ptr %i.ij, align 8
  br label %bb.cv

bb.cx:                                            ; preds = %bb.cv
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.kw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #25
          to label %bb.r unwind label %.loopexit.split-lp139

bb.cy:                                            ; preds = %bb.cv
  %i.ky = load ptr, ptr %i.dp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !996
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.kc, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc98 unwind label %.loopexit138

.noexc98:                                         ; preds = %bb.cy
  %i.la = load i64, ptr %i.a, align 8, !range !16, !noalias !996, !noundef !4
  %i.lb = trunc nuw i64 %i.la to i1
  %i.lc = load i64, ptr %i.ik, align 8, !range !287, !noalias !996, !noundef !4 ; 5 uses
  br i1 %i.lb, label %bb.cz, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92, !prof !18

bb.cz:                                            ; preds = %.noexc98
  %i.ld = load i64, ptr %i.il, align 8, !noalias !996
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.lc, i64 %i.ld) #25
          to label %.noexc99 unwind label %.loopexit.split-lp139

.noexc99:                                         ; preds = %bb.cz
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92: ; preds = %.noexc98
  %i.le = load ptr, ptr %i.il, align 8, !noalias !996, !nonnull !4, !noundef !4 ; 2 uses
  %i.lf = icmp ule i64 %i.kc, %i.lc
  call void @llvm.assume(i1 %i.lf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !996
  store i64 %i.lc, ptr %i.c, align 8, !noalias !996
  store ptr %i.le, ptr %i.im, align 8, !noalias !996
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.ky, i64 %i.jy
  %i.lh = icmp eq i64 %i.lc, 0
  br i1 %i.lh, label %.loopexit, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92, %bb.db
  %.sroa.012.023.i94 = phi ptr [ %i.ll, %bb.db ], [ %i.kz, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92 ] ; 3 uses
  %.sroa.7.022.i95 = phi i64 [ %i.lk, %bb.db ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92 ] ; 3 uses
  %.sroa.10.021.i96 = phi i64 [ %i.li, %bb.db ], [ %i.lc, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92 ]
  %i.li = add i64 %.sroa.10.021.i96, -1           ; 2 uses
  %i.lj = icmp eq ptr %.sroa.012.023.i94, %i.lg
  br i1 %i.lj, label %.loopexit, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i93
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i94)
          to label %bb.db unwind label %bb.dd, !noalias !1000

bb.db:                                            ; preds = %bb.da
  %i.lk = add nuw nsw i64 %.sroa.7.022.i95, 1
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i94, i64 24
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %.sroa.7.022.i95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1000
  %i.ln = icmp eq i64 %i.li, 0
  br i1 %i.ln, label %.loopexit, label %.lr.ph.i93

bb.dc:                                            ; preds = %bb.dd
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1000
  unreachable

bb.dd:                                            ; preds = %bb.da
  %lpad.loopexit.i97 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i95, ptr %i.in, align 8, !noalias !996
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.c) #28
          to label %.body100 unwind label %bb.dc, !noalias !1000

.body100:                                         ; preds = %.loopexit138, %.loopexit.split-lp139, %bb.dk, %bb.dd
  %.pn61.pn = phi { ptr, i32 } [ %lpad.loopexit.i97, %bb.dd ], [ %.pn61, %bb.dk ], [ %lpad.loopexit140, %.loopexit138 ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp139 ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %.body100
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body unwind label %bb.dg

bb.df:                                            ; preds = %.body100
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit107 unwind label %bb.ex

bb.dg:                                            ; preds = %bb.de
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.loopexit138:                                     ; preds = %bb.cy
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %.body100

.loopexit.split-lp139:                            ; preds = %bb.cx, %bb.cz
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.body100

.loopexit:                                        ; preds = %bb.db, %.lr.ph.i93, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i92
  store i64 %i.kc, ptr %i.in, align 8, !noalias !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.lr = load i64, ptr %i.eq, align 8, !noundef !4 ; 2 uses
  %.not52 = icmp ugt i64 %i.jy, %i.lr
  br i1 %.not52, label %bb.dh, label %bb.di, !prof !18

bb.dh:                                            ; preds = %.loopexit
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #25
          to label %bb.r unwind label %.loopexit.split-lp144

bb.di:                                            ; preds = %.loopexit
  %i.ls = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.kc, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %bb.dm unwind label %.loopexit143

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit143, %.loopexit.split-lp144, %bb.dv
  %.pn61 = phi { ptr, i32 } [ %.pn59, %bb.dv ], [ %lpad.loopexit145, %.loopexit143 ], [ %lpad.loopexit.split-lp146, %.loopexit.split-lp144 ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body unwind label %bb.dl

bb.dk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body100 unwind label %bb.ex

bb.dl:                                            ; preds = %bb.dj
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.loopexit143:                                     ; preds = %bb.di
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit

.loopexit.split-lp144:                            ; preds = %bb.dh, %bb.dn
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit

bb.dm:                                            ; preds = %bb.di
  %i.lw = load i64, ptr %i.l, align 8, !range !16, !noundef !4
  %i.lx = trunc nuw i64 %i.lw to i1
  %i.ly = load i64, ptr %i.io, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.lx, label %bb.dn, label %bb.do, !prof !18

bb.dn:                                            ; preds = %bb.dm
  %i.lz = load i64, ptr %i.ip, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ly, i64 %i.lz) #25
          to label %bb.r unwind label %.loopexit.split-lp144

bb.do:                                            ; preds = %bb.dm
  %i.ma = load ptr, ptr %i.ip, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.mb = icmp ule i64 %i.kc, %i.ly
  call void @llvm.assume(i1 %i.mb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.ly, ptr %i.ab, align 8
  store ptr %i.ma, ptr %i.iq, align 8
  store i64 0, ptr %i.ir, align 8
  br i1 %.not49, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.dq, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.mc = load i64, ptr %i.fg, align 8, !noundef !4 ; 2 uses
  %.not53 = icmp ugt i64 %i.jy, %i.mc
  br i1 %.not53, label %bb.dr, label %bb.ds, !prof !18

bb.dq:                                            ; preds = %bb.do
  %i.md = shl i64 %i.kc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ma, ptr nonnull align 4 %i.lt, i64 %i.md, i1 false)
  store i64 %i.kc, ptr %i.ir, align 8
  br label %bb.dp

bb.dr:                                            ; preds = %bb.dp
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.mc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #25
          to label %bb.r unwind label %.loopexit.split-lp149

bb.ds:                                            ; preds = %bb.dp
  %i.me = load ptr, ptr %i.ff, align 8, !nonnull !4, !noundef !4
  %i.mf = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.kc, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.dx unwind label %.loopexit148

bb.dt:                                            ; preds = %.loopexit148, %.loopexit.split-lp149, %bb.ee
  %.pn59 = phi { ptr, i32 } [ %.pn57, %bb.ee ], [ %lpad.loopexit150, %.loopexit148 ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body unwind label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ex

bb.dw:                                            ; preds = %bb.du
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.loopexit148:                                     ; preds = %bb.ds
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.loopexit.split-lp149:                            ; preds = %bb.dr, %bb.dy
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dx:                                            ; preds = %bb.ds
  %i.mi = load i64, ptr %i.k, align 8, !range !16, !noundef !4
  %i.mj = trunc nuw i64 %i.mi to i1
  %i.mk = load i64, ptr %i.is, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.mj, label %bb.dy, label %bb.dz, !prof !18

bb.dy:                                            ; preds = %bb.dx
  %i.ml = load i64, ptr %i.it, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.mk, i64 %i.ml) #25
          to label %bb.r unwind label %.loopexit.split-lp149

bb.dz:                                            ; preds = %bb.dx
  %i.mm = load ptr, ptr %i.it, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.mn = icmp ule i64 %i.kc, %i.mk
  call void @llvm.assume(i1 %i.mn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.mk, ptr %i.aa, align 8
  store ptr %i.mm, ptr %i.iu, align 8
  store i64 0, ptr %i.iv, align 8
  br i1 %.not49, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.eb, %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.mo = load i64, ptr %i.fx, align 8, !noundef !4 ; 2 uses
  %.not54 = icmp ugt i64 %i.jy, %i.mo
  br i1 %.not54, label %bb.ec, label %bb.ed, !prof !18

bb.eb:                                            ; preds = %bb.dz
  %i.mp = shl i64 %i.kc, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mm, ptr nonnull align 8 %i.mf, i64 %i.mp, i1 false)
  store i64 %i.kc, ptr %i.iv, align 8
  br label %bb.ea

bb.ec:                                            ; preds = %bb.ea
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.jw, i64 noundef %i.jy, i64 noundef %i.mo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #25
          to label %bb.r unwind label %.loopexit.split-lp154

bb.ed:                                            ; preds = %bb.ea
  %i.mq = load ptr, ptr %i.fw, align 8, !nonnull !4, !noundef !4
end_hunk_4
begin_hunk_5_@_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram4from:bb.a
  %i.cd = icmp ule i64 %i.bt, %i.ca
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not31 = icmp eq i64 %i.bt, 0
  br i1 %.not31, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.u
  store i64 %i.ca, ptr %i.j, align 8
  store ptr %i.cc, ptr %.sroa.423.0..sroa_idx, align 8
  store i64 %i.bt, ptr %.sroa.624.0..sroa_idx, align 8
  %i.ce = invoke { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i32 noundef %.sroa.7.079)
          to label %bb.x unwind label %.loopexit  ; 0 uses

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %i.br, i64 %i.bt, i1 false)
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trieINtB4_4TriehE4pushBa_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bt)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.080, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !noundef !4 ; 2 uses
  %i.ch = fcmp olt double %i.cg, %.sroa.04.081
  %.sroa.04.1 = select i1 %i.ch, double %i.cg, double %.sroa.04.081 ; 2 uses
  %i.ci = icmp eq ptr %i.bo, %i.av
  br i1 %i.ci, label %._crit_edge, label %bb.o

bb.z:                                             ; preds = %bb.t
  unreachable

.loopexit:                                        ; preds = %bb.o, %bb.v, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %.invoke, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4NodehEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.c, %bb.aa
  %.pn33.ph = phi { ptr, i32 } [ %i.aj, %bb.c ], [ %lpad.phi, %bb.aa ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %bb.ac unwind label %bb.r

bb.ac:                                            ; preds = %bb.b, %bb.ab
  %.pn35.ph = phi { ptr, i32 } [ %i.y, %bb.b ], [ %.pn33.ph, %bb.ab ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %1) #28
          to label %common.resume unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram6encode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 16 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.6.sroa.0.i = alloca [16 x i8], align 8   ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [56 x i8], align 8                ; 16 uses
  %i.t = alloca [24 x i8], align 8                ; 15 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = icmp eq i64 %3, 0
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !16, !noundef !4
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.h, %bb.ev, %bb.i, %bb.t, %bb.b
  ret void

bb.e:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB6_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EE3geteEBa_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull align 8 %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ak = load i64, ptr %i.af, align 8, !range !19, !noundef !4
  %.not45 = icmp eq i64 %i.ak, -1
  br i1 %.not45, label %bb.p, label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load double, ptr %i.al, align 8, !noundef !4
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  br i1 %i.an, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call fastcc void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram18encode_unoptimized(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ao = load i64, ptr %i.z, align 8, !range !19, !noundef !4 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.av, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  store i64 %i.ao, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1082
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef range(i64 0, 384307168202282326) %i.az, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.j
  %i.ba = load i64, ptr %i.u, align 8, !range !16, !noalias !1082, !noundef !4
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !287, !noalias !1082, !noundef !4 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.k, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !18

bb.k:                                             ; preds = %.noexc
  %i.bf = load i64, ptr %i.be, align 8, !noalias !1082
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #25
          to label %.noexc49 unwind label %bb.q

.noexc49:                                         ; preds = %bb.k
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc
  %i.bg = load ptr, ptr %i.be, align 8, !noalias !1082, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = icmp ule i64 %i.az, %i.bd
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1082
  store i64 %i.bd, ptr %i.w, align 8, !noalias !1082
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bg, ptr %i.bi, align 8, !noalias !1082
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.az
  %i.bl = icmp eq i64 %i.bd, 0
  br i1 %i.bl, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, %bb.m
  %.sroa.012.023.i = phi ptr [ %i.bp, %bb.m ], [ %i.ax, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.bo, %bb.m ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.bm, %bb.m ], [ %i.bd, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ]
  %i.bm = add i64 %.sroa.10.021.i, -1             ; 2 uses
  %i.bn = icmp eq ptr %.sroa.012.023.i, %i.bk
  br i1 %i.bn, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i)
          to label %bb.m unwind label %bb.o, !noalias !1086

bb.m:                                             ; preds = %bb.l
  %i.bo = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1086
  %i.br = icmp eq i64 %i.bm, 0
  br i1 %i.br, label %.loopexit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1086
  unreachable

bb.o:                                             ; preds = %bb.l
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.bj, align 8, !noalias !1082
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.w) #28
          to label %.body unwind label %bb.n, !noalias !1086

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 321
  %i.bu = load i8, ptr %i.bt, align 1, !range !3, !noundef !4
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.w, label %bb.v

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.q ], [ %lpad.loopexit.i, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #28
          to label %common.resume unwind label %bb.u

.loopexit:                                        ; preds = %bb.m, %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i
  store i64 %i.az, ptr %i.bj, align 8, !noalias !1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.ap, %bb.cs, %bb.dw, %.body, %bb.ez, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.ez ], [ %i.bx, %bb.r ], [ %eh.lpad-body, %.body ], [ %i.ml, %bb.dw ], [ %i.cu, %bb.y ], [ %i.fl, %bb.ap ], [ %.pn105.pn.i, %bb.cs ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.t

bb.t:                                             ; preds = %bb.ex, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.d

bb.u:                                             ; preds = %bb.fh, %bb.ez, %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call fastcc void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram18encode_unoptimized(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ca = load i64, ptr %i.ac, align 8, !range !19, !noundef !4 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br i1 %i.cb, label %bb.ev, label %bb.eu

bb.w:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ch = load double, ptr %i.cg, align 8, !noalias !1090, !noundef !4
  %i.ci = fadd double %i.ch, -1.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1090
  %i.cj = add i64 %3, 1                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1092
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 2, 1) %i.cj, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !1092
  %i.ck = load i64, ptr %i.b, align 8, !range !16, !noalias !1092, !noundef !4
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !287, !noalias !1092, !noundef !4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cl, label %bb.x, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i, !prof !18

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %i.co, align 8, !noalias !1092
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cn, i64 %i.cp) #25, !noalias !1096
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.w
  %i.cq = load ptr, ptr %i.co, align 8, !noalias !1092, !nonnull !4, !noundef !4
  %i.cr = icmp ule i64 %i.cj, %i.cn
  tail call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1092
  store i64 %i.cn, ptr %i.d, align 8, !noalias !1092
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cq, ptr %i.cs, align 8, !noalias !1092
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ct, align 8, !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1092
  store i64 0, ptr %i.c, align 8, !noalias !1097
  %.sroa.4199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4199.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1090
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBM_7Unigram16encode_optimized12BestPathNodeE11extend_withBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 2, 1) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
          to label %_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i unwind label %bb.y, !noalias !1096

bb.y:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB1f_7Unigram16encode_optimized12BestPathNodeEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.z, !noalias !1096

bb.z:                                             ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1096
  unreachable

_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1092
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %invariant.op.i = add i64 %3, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.027.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.027.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.6.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %bb.ab

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1090
  store i64 0, ptr %i.o, align 8, !noalias !1090
  %i.dl = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dl, align 8, !noalias !1090
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 9 uses
  store i64 0, ptr %i.dm, align 8, !noalias !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1090
  store i64 0, ptr %i.n, align 8, !noalias !1090
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dn, align 8, !noalias !1090
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 9 uses
  store i64 0, ptr %i.do, align 8, !noalias !1090
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.676.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.669.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.ad

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i, %_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i
  %.sroa.011.0355.i = phi i64 [ 0, %_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i ], [ %.pre470.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i ] ; 15 uses
  %i.du = load i64, ptr %i.cx, align 8, !noalias !1090, !noundef !4 ; 2 uses
  %i.dv = icmp ult i64 %.sroa.011.0355.i, %i.du
  br i1 %i.dv, label %bb.cv, label %.invoke598.i

bb.ac:                                            ; preds = %bb.cf
  %i.dw = load i64, ptr %i.do, align 8, !noalias !1090, !noundef !4 ; 5 uses
  %i.dx = icmp ult i64 %i.dw, 384307168202282326
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %._crit_edge468.i, label %bb.ae

._crit_edge468.i:                                 ; preds = %bb.ac
  %.pre469.i = load i64, ptr %i.dm, align 8, !noalias !1090
  br label %bb.af

bb.ad:                                            ; preds = %bb.cf, %bb.aa
  %.sroa.0.0357.i = phi i64 [ %3, %bb.aa ], [ %i.fr, %bb.cf ] ; 16 uses
  %i.dz = load i64, ptr %i.cx, align 8, !noalias !1090, !noundef !4 ; 2 uses
  %i.ea = icmp ult i64 %.sroa.0.0357.i, %i.dz
  br i1 %i.ea, label %bb.ar, label %bb.as

bb.ae:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr %i.dn, align 8, !noalias !1090, !nonnull !4, !noundef !4 ; 3 uses
end_hunk_5
