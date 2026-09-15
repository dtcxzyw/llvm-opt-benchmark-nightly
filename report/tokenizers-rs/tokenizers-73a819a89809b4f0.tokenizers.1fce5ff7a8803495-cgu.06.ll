Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.06?download=true
inline.NumInlined: 1216
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE9read_file:bb.a
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

.split:                                           ; preds = %bb.bn
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body176

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit186: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ab

bb.bp:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  store ptr %i.do, ptr %0, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @20, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.dy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.p)
          to label %bb.bq unwind label %.split.thread.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body176 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bq
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit180 unwind label %bb.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit180: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bc

bb.bt:                                            ; preds = %bb.cd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit, %.body176, %bb.cc, %.split.thread, %.body151, %.body
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.bu:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body176 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i182: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit186 unwind label %.loopexit

bb.bx:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.p)
          to label %bb.bu unwind label %.split.thread.loopexit

.split.thread:                                    ; preds = %.split.thread.loopexit, %.split.thread.loopexit.split-lp, %bb.bo
  %.pn194 = phi { ptr, i32 } [ %eh.lpad-body152, %bb.bo ], [ %lpad.loopexit197, %.split.thread.loopexit ], [ %lpad.loopexit.split-lp198, %.split.thread.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #30
          to label %.body176 unwind label %bb.bt

bb.by:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.cd, ptr %0, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @20, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.ef, align 8
  br label %bb.bc

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit173: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.eg = load i8, ptr %i.v, align 8, !range !24, !noundef !4
  %i.eh = icmp eq i8 %i.eg, 5
  br i1 %i.eh, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.ce, %bb.ca, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cf

bb.ca:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit173
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.v)
          to label %bb.bz unwind label %bb.g

bb.cb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  br i1 %.sroa.063.0, label %bb.cd, label %.body

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.v) #30
          to label %.body unwind label %bb.bt

bb.cd:                                            ; preds = %bb.cb
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx)
          to label %.body unwind label %bb.bt

bb.ce:                                            ; preds = %bb.o
  store ptr %i.az, ptr %i.ba, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.ba, ptr %0, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @94, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.ej, align 8
  br label %bb.bz

bb.cf:                                            ; preds = %bb.ci, %bb.bz
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body190 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189: ; preds = %bb.cf
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit193 unwind label %bb.aw

bb.ci:                                            ; preds = %bb.i
  store ptr %i.ap, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.aq, ptr %0, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @96, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.en, align 8
  br label %bb.cf

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit193: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val1.i = load i64, ptr %i.eo, align 8, !alias.scope !1353, !noundef !4 ; 2 uses
  %i.ep = icmp eq i64 %.val1.i, 0
  br i1 %i.ep, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit193
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !1353, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #28, !noalias !1353
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit193, %bb.cj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.val2.i = load i32, ptr %i.eq, align 8, !range !23, !alias.scope !1353, !noundef !4
  %i.er = call noundef i32 @close(i32 noundef %.val2.i) #28, !noalias !1353 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ay
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 4 uses
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs1D9TkrBnOxz_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !16, !noalias !1360, !noundef !4
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs2JiOgHzbbc7_10tokenizers.exit, label %_RNvYNCNKNvNtCs1D9TkrBnOxz_15crossbeam_epoch7default6HANDLE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i, !prof !11

_RNvYNCNKNvNtCs1D9TkrBnOxz_15crossbeam_epoch7default6HANDLE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.a
  %i.j = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.f, ptr noalias noundef align 8 dereferenceable_or_null(16) null) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs2JiOgHzbbc7_10tokenizers.exit.thread.i, label %_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs2JiOgHzbbc7_10tokenizers.exit

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs2JiOgHzbbc7_10tokenizers.exit.thread.i: ; preds = %_RNvYNCNKNvNtCs1D9TkrBnOxz_15crossbeam_epoch7default6HANDLE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.l = tail call noundef nonnull align 8 ptr @_RNvNtCs1D9TkrBnOxz_15crossbeam_epoch7default9collector()
  %i.m = tail call noundef ptr @_RNvMs1_NtCs1D9TkrBnOxz_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l) ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 2072
  %.val2.val.i.i = load i64, ptr %i.n, align 8, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2080 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8
  %i.r = icmp eq i64 %.val2.val.i.i, 0            ; 2 uses
  %i.s = icmp eq i64 %i.p, 1
  %or.cond.i.i.i3.i.i = and i1 %i.r, %i.s
  br i1 %or.cond.i.i.i3.i.i, label %_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs2JiOgHzbbc7_10tokenizers.exit.thread, label %_RNCINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs2JiOgHzbbc7_10tokenizers.exit.i, !prof !17

_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs2JiOgHzbbc7_10tokenizers.exit.thread.i
  tail call void @_RNvMs6_NtCs1D9TkrBnOxz_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.m)
  br label %bb.d

_RNCINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs1D9TkrBnOxz_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECs2JiOgHzbbc7_10tokenizers.exit.thread.i
  br i1 %i.r, label %bb.d, label %bb.b

_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %_RNvYNCNKNvNtCs1D9TkrBnOxz_15crossbeam_epoch7default6HANDLE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.j, %_RNvYNCNKNvNtCs1D9TkrBnOxz_15crossbeam_epoch7default6HANDLE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i ], [ %i.f, %bb.a ]
  %.val.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noundef !4
  %2 = getelementptr i8, ptr %.val.i.i, i64 2072
  %.val.val.i.i = load i64, ptr %2, align 8, !noundef !4
  %.sroa.0.0.i.not = icmp eq i64 %.val.val.i.i, 0
  br i1 %.sroa.0.0.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs2JiOgHzbbc7_10tokenizers.exit.i, %_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs2JiOgHzbbc7_10tokenizers.exit
  fence seq_cst
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers(ptr %i.u) #30
          to label %bb.q unwind label %bb.p

bb.d:                                             ; preds = %_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs2JiOgHzbbc7_10tokenizers.exit.thread, %_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECs2JiOgHzbbc7_10tokenizers.exit, %bb.b, %_RNCINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB4_9is_pinned0bEs_0Cs2JiOgHzbbc7_10tokenizers.exit.i
  %i.u = tail call fastcc noundef ptr @_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECs2JiOgHzbbc7_10tokenizers() ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.w = load atomic i64, ptr %i.v acquire, align 8
  %i.x = sub i64 %i.w, %i.e
  %i.y = icmp slt i64 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  store i64 %i.z, ptr %i.a, align 8
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCs1D9TkrBnOxz_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs37HRbLTrFyI_15crossbeam_deque5deque6BufferNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefEE5derefCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.c       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = add i64 %i.ad, -1
  %i.af = and i64 %i.ae, %i.e
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load volatile { [2 x i64] }, ptr %i.ag, align 8 ; 2 uses
  %.fca.0.0.extract = extractvalue { [2 x i64] } %i.ah, 0, 0 ; 2 uses
  %.fca.0.1.extract = extractvalue { [2 x i64] } %i.ah, 0, 1
  %i.ai = inttoptr i64 %.fca.0.0.extract to ptr
  %i.aj = inttoptr i64 %.fca.0.1.extract to ptr
  %i.ak = load atomic i64, ptr %i.c acquire, align 8
  %.not = icmp eq i64 %i.ak, %i.z
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.al = add i64 %i.e, 1
  %i.am = cmpxchg ptr %i.d, i64 %i.e, i64 %i.al seq_cst monotonic, align 8
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ne i64 %.fca.0.0.extract, 0
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aj, ptr %i.aq, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = icmp eq ptr %i.u, null
  br i1 %i.ar, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 2072 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 8
  %i.av = icmp eq i64 %i.at, 1
  br i1 %i.av, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 2176
  store atomic i64 0, ptr %i.aw release, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 2080
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit, !prof !5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit.sink.split: ; preds = %bb.l, %bb.o
  call void @_RNvMs6_NtCs1D9TkrBnOxz_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.u)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit.sink.split, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  ret void

bb.m:                                             ; preds = %bb.h, %bb.e
  %i.ba = icmp eq ptr %i.u, null
  br i1 %i.ba, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 2072 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = icmp eq i64 %i.bc, 1
  br i1 %i.be, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 2176
  store atomic i64 0, ptr %i.bf release, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 2080
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !4
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.p:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.q:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB4_16WordLevelBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB2_16WordLevelBuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB4_16WordLevelBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 3 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !15, !noundef !4
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  invoke void @_RNvMs1_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_9WordLevel9read_file(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit29, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  invoke void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.m)
          to label %bb.t unwind label %bb.n

bb.d:                                             ; preds = %bb.k, %bb.e
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.n, %bb.e ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #30
          to label %.body unwind label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.n

bb.j:                                             ; preds = %bb.f
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.617.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
end_hunk_0
