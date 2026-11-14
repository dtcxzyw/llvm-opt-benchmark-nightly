Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.06?download=true
inline.NumInlined: 1216
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_9WordLevel9read_file:bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i133 unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body111 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i133: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit137 unwind label %bb.ag

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit137: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i138 = load i64, ptr %i.de, align 8, !alias.scope !978, !noundef !12 ; 2 uses
  %i.df = icmp eq i64 %.val1.i138, 0
  br i1 %i.df, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit141, label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit137
  %.val.i139 = load ptr, ptr %i.p, align 8, !alias.scope !978, !nonnull !12, !noundef !12
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i139, i64 noundef range(i64 1, 0) %.val1.i138, i64 noundef 1) #27, !noalias !978
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit141

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBK_2fs4FileEECs2JiOgHzbbc7_10tokenizers.exit141: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit137, %bb.bm
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.val2.i140 = load i32, ptr %i.dg, align 8, !range !31, !alias.scope !978, !noundef !12
  %i.dh = call noundef i32 @close(i32 noundef %.val2.i140) #27, !noalias !978 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ai

.thread150:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.thread, %bb.bg, %bb.bf, %bb.be, %bb.s, %bb.m, %.thread154
  %.pn87146 = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %lpad.thr_comm, %.thread154 ], [ %i.ax, %bb.m ], [ %.pn.pn.pn166, %bb.bf ], [ %i.bt, %bb.be ], [ %i.bt, %bb.bg ], [ %.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.thread ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit143 unwind label %bb.aw
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilder18end_of_word_suffix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !981 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !23, !alias.scope !982, !noundef !12
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %1) #29
          to label %bb.g unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  ret void

bb.f:                                             ; preds = %.body
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilder25continuing_subword_prefix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !985 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !23, !alias.scope !986, !noundef !12
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %1) #29
          to label %bb.g unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  ret void

bb.f:                                             ; preds = %.body
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0) unnamed_addr #1 !guid !987 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !998 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.473 = alloca [48 x i8], align 8          ; 3 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [88 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !range !40, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.s = trunc nuw i32 %i.q to i1
  br i1 %i.s, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !range !23, !noundef !12
  %.not79 = icmp eq i64 %i.u, -1
  br i1 %.not79, label %bb.n, label %bb.m

.thread228:                                       ; preds = %bb.cb, %bb.aq, %bb.az, %.body
  %.sroa.037.0 = phi i8 [ %.sroa.040.1.lpad-body, %.body ], [ 0, %bb.az ], [ 0, %bb.aq ], [ %.sroa.037.12.ph, %bb.cb ] ; 2 uses
  %.sroa.040.0 = phi i1 [ %i.y, %.body ], [ false, %bb.az ], [ false, %bb.aq ], [ false, %bb.cb ]
  %.sroa.047.0 = phi i8 [ %.sroa.047.1.lpad-body, %.body ], [ %.sroa.047.2, %bb.az ], [ %.sroa.047.2, %bb.aq ], [ %.sroa.047.2, %bb.cb ]
  %.sroa.054.0 = phi i8 [ 1, %.body ], [ 0, %bb.az ], [ 0, %bb.aq ], [ 1, %bb.cb ] ; 2 uses
  %.pn92 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ds, %bb.az ], [ %lpad.thr_comm.split-lp, %bb.aq ], [ %.pn85.ph, %bb.cb ] ; 2 uses
  %.sroa.30.0 = extractvalue { ptr, i32 } %.pn92, 1 ; 2 uses
  %.sroa.077.0 = extractvalue { ptr, i32 } %.pn92, 0 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !23, !noundef !12
  %.not94 = icmp eq i64 %i.w, -1
  %cond104 = icmp eq i8 %.sroa.047.0, 0
  %or.cond = or i1 %cond104, %.not94
  br i1 %or.cond, label %.thread, label %bb.cc

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit155, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i135, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i127, %bb.aj, %bb.n
  %.sroa.040.1 = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i135 ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit155 ], [ 1, %bb.aj ], [ 1, %bb.n ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i127 ]
  %.sroa.047.1 = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i135 ], [ %.sroa.047.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit155 ], [ %.sroa.047.2, %bb.aj ], [ %.sroa.047.2, %bb.n ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i127 ]
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ah, %bb.ac, %bb.g, %bb.c
  %.sroa.040.1.lpad-body = phi i8 [ 1, %bb.ac ], [ 1, %bb.g ], [ %.sroa.040.1, %bb.c ], [ 1, %bb.ah ] ; 2 uses
  %.sroa.047.1.lpad-body = phi i8 [ 0, %bb.ac ], [ 1, %bb.g ], [ %.sroa.047.1, %bb.c ], [ 0, %bb.ah ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.ac ], [ %i.ae, %bb.g ], [ %i.x, %bb.c ], [ %i.bt, %bb.ah ]
  %i.y = trunc nuw i8 %.sroa.040.1.lpad-body to i1
  br label %.thread228

bb.d:                                             ; preds = %bb.a
  %i.z = load float, ptr %i.r, align 4, !noundef !12 ; 2 uses
  %i.aa = fcmp oge float %i.z, 0.000000e+00
  %i.ab = fcmp ole float %i.z, 1.000000e+00
  %spec.select.i = and i1 %i.aa, %i.ab
  br i1 %spec.select.i, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 6, ptr %i.o, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !999
  %i.ac = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 32, i64 noundef range(i64 1, 9) 8) #27, !noalias !999 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %bb.i, !prof !15

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o) #29
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @20, ptr %i.ah, align 8
  store i64 2, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !range !23, !noundef !12
  %.not = icmp eq i64 %i.aj, -1
  br i1 %.not, label %.thread202, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, %bb.i
  %cond = phi i1 [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit ], [ false, %bb.i ]
  %.sroa.040.2 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit ], [ true, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body96 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.be unwind label %bb.bd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i158
  br i1 %cond, label %.thread206, label %.thread202

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !12, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !12, !noundef !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !12
  invoke void @_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE9read_file(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.av)
          to label %bb.q unwind label %bb.p

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit133, %bb.b
  %.sroa.047.2 = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit133 ], [ 1, %bb.b ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  invoke void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aw)
          to label %bb.aj unwind label %bb.c

bb.o:                                             ; preds = %bb.ae, %bb.af, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.br, %bb.af ], [ %eh.lpad-body119, %bb.ae ], [ %i.ax, %bb.p ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #29
          to label %.body112 unwind label %bb.ag

bb.p:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !range !23, !noundef !12 ; 2 uses
  %i.ba = icmp eq i64 %i.az, -1
  %i.bb = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  br i1 %i.ba, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bd, ptr %i.bf, align 8
  store i64 2, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i111 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body112 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i111: ; preds = %bb.r
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit115 unwind label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.473, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.560.0..sroa_idx, i64 48, i1 false)
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.762.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.az, ptr %i.l, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.u
  store ptr %i.bb, ptr %i.bi, align 8
  %.sroa.370.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.bd, ptr %.sroa.370.0..sroa_idx71, align 8
  %.sroa.473.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.473.0..sroa_idx74, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.473, i64 48, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ae unwind label %bb.x

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i121 unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body112 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i121: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit125 unwind label %bb.ab

.body112:                                         ; preds = %bb.s, %bb.z, %bb.ab, %bb.o
  %.pn90 = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.bg, %bb.s ], [ %i.bo, %bb.ab ], [ %i.bm, %bb.z ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #29
          to label %.thread242 unwind label %bb.ag

.thread242:                                       ; preds = %.body112
  %.sroa.30.0184 = extractvalue { ptr, i32 } %.pn90, 1
  %.sroa.077.0185 = extractvalue { ptr, i32 } %.pn90, 0
  br label %.thread.thread

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i121, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i111
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body112

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit125: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i127 unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit125
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i127: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit125
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit133 unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit133: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.n

bb.ae:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body119 = phi { ptr, i32 } [ %i.bl, %bb.y ], [ %i.bj, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %bb.o

bb.af:                                            ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bb, ptr %i.bi, align 8
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.bd, ptr %.sroa.370.0..sroa_idx, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.473.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.473, i64 48, i1 false)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.l) #29
          to label %bb.o unwind label %bb.ag

bb.ag:                                            ; preds = %.thread.thread, %bb.cb, %.thread217, %bb.bi, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %bb.ca, %.body177, %.body167, %.body172, %.body96, %bb.as, %bb.af, %.body112, %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit115: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i135 unwind label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit115
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i135: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit115
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit141 unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit141: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.thread202

bb.aj:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.j, ptr %i.bv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RINvXsb_NtCsiTTz6JxaXqu_5ahash8hash_mapINtB6_8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTmBR_EE9from_iterINtNtNtB1A_8adapters3map3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterBR_mENCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB4h_10BpeBuilder5build0EEB4n_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h)
          to label %bb.ak unwind label %bb.c

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !12 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bz = atomicrmw add ptr @_RNvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model13NEXT_CACHE_ID, i64 1 monotonic, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.3.sroa.0.0 = phi i64 [ %i.bz, %bb.al ], [ undef, %bb.ak ]
  %.sroa.07.0 = phi i64 [ 1, %bb.al ], [ 0, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !23, !noundef !12
  %.not82 = icmp eq i64 %i.cb, -1
  br i1 %.not82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !12 ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, -1
  call void @llvm.assume(i1 %i.ce)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.sink = phi i64 [ %i.cd, %bb.an ], [ 0, %bb.am ]
  store i64 %.sink, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cf = load i64, ptr %i.j, align 8, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1000
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.cf, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc142 unwind label %.thread233

.noexc142:                                        ; preds = %bb.ao
  %i.cg = load i64, ptr %i.a, align 8, !range !21, !noalias !1000, !noundef !12
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !22, !noalias !1000, !noundef !12 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ch, label %bb.ap, label %bb.ar, !prof !13

bb.ap:                                            ; preds = %.noexc142
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !1000
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cj, i64 %i.cl) #28
          to label %.noexc143 unwind label %.thread233

.noexc143:                                        ; preds = %bb.ap
  unreachable

.thread233:                                       ; preds = %bb.aw, %bb.ap, %bb.ao
  %.sroa.037.11.ph = phi i8 [ 1, %bb.ao ], [ 1, %bb.ap ], [ 0, %bb.aw ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread217

bb.aq:                                            ; preds = %bb.ba
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread228

bb.ar:                                            ; preds = %.noexc142
  %i.cm = load ptr, ptr %i.ck, align 8, !noalias !1000, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1000
  store i64 %i.cj, ptr %i.d, align 8, !alias.scope !1000
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !alias.scope !1000
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.cf, ptr %i.co, align 8, !alias.scope !1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.cr = load i64, ptr %1, align 8, !range !17, !noundef !12
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !12 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 192153584101141163
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.cq, i64 %i.ct
  store ptr %i.cq, ptr %i.b, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cq, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.cr, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.017.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.cv, ptr %.sroa.017.sroa.6.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %.sroa.418.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.f, ptr %i.cw, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.e, ptr %.sroa.524.0..sroa_idx, align 8
  invoke void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1F_6string6StringB2m_EEENCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2X_10BpeBuilder5builds_0ETTmmEB4d_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtB1F_5boxed3BoxDNtNtB6_5error5ErrorNtNtB6_6marker4SendNtB5O_4SyncEL_EENCINvXso_B4p_IB4n_INtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapB4d_B4d_EB59_EINtNtNtB4_6traits7collect12FromIteratorIB4n_B4c_B59_EE9from_iterBQ_E0B6D_EB33_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %.thread217 unwind label %bb.ag

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cy = load ptr, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  br i1 %i.cz, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dd, ptr %i.df, align 8
  store i64 2, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread217 unwind label %bb.ax

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.thread233

bb.ax:                                            ; preds = %bb.av
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.ay:                                            ; preds = %bb.at
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.667.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.1136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.1136.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  %i.di = load i32, ptr %i.p, align 8, !range !40, !noundef !12
  %i.dj = load float, ptr %i.r, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.631.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false)
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.732.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.833.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dn = load i8, ptr %i.dm, align 8, !range !20, !noundef !12
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.dp = load i8, ptr %i.do, align 1, !range !20, !noundef !12
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.dr = load i8, ptr %i.dq, align 2, !range !20, !noundef !12
  store i64 %.sroa.07.0, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.sroa.0.0, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.934.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.di, ptr %.sroa.934.0..sroa_idx, align 8
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.dj, ptr %.sroa.1035.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.cy, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.db, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.dd, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 %i.dn, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 297
  store i8 %i.dp, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 298
  store i8 %i.dr, ptr %.sroa.19.0..sroa_idx, align 2
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread228 unwind label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit153 unwind label %bb.aq

bb.bb:                                            ; preds = %bb.az
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit153: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit183

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit183: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i182, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit180, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit153
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit155 unwind label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit155: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dv = load i64, ptr %i.t, align 8, !range !23, !noundef !12
  %.not87 = icmp ne i64 %i.dv, -1
  %i.dw = trunc nuw i8 %.sroa.047.2 to i1
  %or.cond261 = and i1 %.not87, %i.dw
  br i1 %or.cond261, label %bb.j, label %.thread206

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.body96:                                          ; preds = %bb.k, %bb.bd
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.dx, %bb.bd ], [ %i.al, %bb.k ]
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #29
          to label %.body159 unwind label %bb.ag

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i158 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %.body159 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i158: ; preds = %bb.be
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.bh

.body159:                                         ; preds = %bb.bh, %bb.bf, %.body96
  %.pn88 = phi { ptr, i32 } [ %eh.lpad-body97, %.body96 ], [ %i.eb, %bb.bh ], [ %i.dz, %bb.bf ] ; 2 uses
  %.sroa.30.6 = extractvalue { ptr, i32 } %.pn88, 1 ; 2 uses
  %.sroa.077.6 = extractvalue { ptr, i32 } %.pn88, 0 ; 2 uses
  br i1 %.sroa.040.2, label %bb.bi, label %.body172

bb.bh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i158
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body159

bb.bi:                                            ; preds = %.body159
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ec)
          to label %bb.ca unwind label %bb.ag

.thread202:                                       ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit141, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ed)
          to label %bb.bn unwind label %bb.bj

bb.bj:                                            ; preds = %.thread202
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %3 = extractvalue { ptr, i32 } %i.ee, 0
  %4 = extractvalue { ptr, i32 } %i.ee, 1
  br label %bb.ca

.thread206:                                       ; preds = %bb.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapmNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.eg = load i64, ptr %i.ef, align 8, !range !23, !alias.scope !1001, !noundef !12
  %i.eh = icmp eq i64 %i.eg, -1
  br i1 %i.eh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.bk

bb.bk:                                            ; preds = %.thread206
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %.body156 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.bs

bb.bn:                                            ; preds = %.thread202
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body161 unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.thread206 unwind label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

.body172:                                         ; preds = %.body159, %bb.ca, %.body161
  %.sroa.077.8 = phi ptr [ %5, %.body161 ], [ %.sroa.077.7.ph, %bb.ca ], [ %.sroa.077.6, %.body159 ]
  %.sroa.30.8 = phi i32 [ %6, %.body161 ], [ %.sroa.30.7.ph, %bb.ca ], [ %.sroa.30.6, %.body159 ]
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em) #29
          to label %.body167 unwind label %bb.ag

bb.br:                                            ; preds = %bb.bp
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.body161:                                         ; preds = %bb.bo, %bb.br
  %eh.lpad-body162 = phi { ptr, i32 } [ %i.en, %bb.br ], [ %i.ek, %bb.bo ] ; 2 uses
  %5 = extractvalue { ptr, i32 } %eh.lpad-body162, 0
  %6 = extractvalue { ptr, i32 } %eh.lpad-body162, 1
  br label %.body172

.body167:                                         ; preds = %.body156, %.body172
  %.sroa.077.9 = phi ptr [ %7, %.body156 ], [ %.sroa.077.8, %.body172 ]
  %.sroa.30.9 = phi i32 [ %8, %.body156 ], [ %.sroa.30.8, %.body172 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo) #29
          to label %.body177 unwind label %bb.ag

bb.bs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body156

.body156:                                         ; preds = %bb.bl, %bb.bs
  %eh.lpad-body157 = phi { ptr, i32 } [ %i.ep, %bb.bs ], [ %i.ei, %bb.bl ] ; 2 uses
  %7 = extractvalue { ptr, i32 } %eh.lpad-body157, 0
  %8 = extractvalue { ptr, i32 } %eh.lpad-body157, 1
  br label %.body167

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.thread206, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.er = load i64, ptr %i.eq, align 8, !range !23, !alias.scope !1002, !noundef !12
  %i.es = icmp eq i64 %i.er, -1
  br i1 %i.es, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit180, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i176 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %.body166 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i176: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit180 unwind label %bb.bw

.body177:                                         ; preds = %.body166, %.body167
  %.sroa.077.10 = phi ptr [ %9, %.body166 ], [ %.sroa.077.9, %.body167 ]
  %.sroa.30.10 = phi i32 [ %10, %.body166 ], [ %.sroa.30.9, %.body167 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ev) #29
          to label %11 unwind label %bb.ag

bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i176
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body166

.body166:                                         ; preds = %bb.bu, %bb.bw
  %eh.lpad-body167 = phi { ptr, i32 } [ %i.ew, %bb.bw ], [ %i.et, %bb.bu ] ; 2 uses
  %9 = extractvalue { ptr, i32 } %eh.lpad-body167, 0
  %10 = extractvalue { ptr, i32 } %eh.lpad-body167, 1
  br label %.body177

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit180: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i176
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.ey = load i64, ptr %i.ex, align 8, !range !23, !alias.scope !1003, !noundef !12
  %i.ez = icmp eq i64 %i.ey, -1
  br i1 %i.ez, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit183, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit180
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ex)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i182 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ex)
          to label %common.resume unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.by, %11
  %common.resume.op = phi { ptr, i32 } [ %13, %11 ], [ %i.fa, %bb.by ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i182: ; preds = %bb.bx
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ex)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit183

bb.ca:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.077.7.ph = phi ptr [ %3, %bb.bj ], [ %.sroa.077.6, %bb.bi ]
  %.sroa.30.7.ph = phi i32 [ %4, %bb.bj ], [ %.sroa.30.6, %bb.bi ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %1) #29
          to label %.body172 unwind label %bb.ag

11:                                               ; preds = %bb.ce, %bb.ci, %.body177
  %.sroa.077.11 = phi ptr [ %.sroa.077.10, %.body177 ], [ %.sroa.077.0193248, %bb.ci ], [ %.sroa.077.0193248, %bb.ce ]
  %.sroa.30.11 = phi i32 [ %.sroa.30.10, %.body177 ], [ %.sroa.30.0192250, %bb.ci ], [ %.sroa.30.0192250, %bb.ce ]
  %12 = insertvalue { ptr, i32 } poison, ptr %.sroa.077.11, 0
  %13 = insertvalue { ptr, i32 } %12, i32 %.sroa.30.11, 1
  br label %common.resume

.thread217:                                       ; preds = %bb.av, %bb.as, %.thread233
  %.pn83223 = phi { ptr, i32 } [ %i.cx, %bb.as ], [ %lpad.thr_comm, %.thread233 ], [ %i.dg, %bb.av ]
  %.sroa.037.10221 = phi i8 [ 0, %bb.as ], [ %.sroa.037.11.ph, %.thread233 ], [ 0, %bb.av ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %bb.cb unwind label %bb.ag

bb.cb:                                            ; preds = %bb.bc, %.thread217
  %.sroa.037.12.ph = phi i8 [ 0, %bb.bc ], [ %.sroa.037.10221, %.thread217 ]
  %.pn85.ph = phi { ptr, i32 } [ %i.du, %bb.bc ], [ %.pn83223, %.thread217 ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %.thread228 unwind label %bb.ag

.thread:                                          ; preds = %bb.cd, %.thread228
  br i1 %.sroa.040.0, label %.thread.thread, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit189

bb.cc:                                            ; preds = %.thread228
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #29
          to label %bb.cd unwind label %bb.ag

bb.cd:                                            ; preds = %bb.cc
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fc) #29
          to label %.thread unwind label %bb.ag

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit189: ; preds = %.thread.thread, %.thread
  %.sroa.037.0198256 = phi i8 [ %.sroa.037.0, %.thread ], [ %.sroa.037.0198257, %.thread.thread ]
  %.sroa.054.0200254 = phi i8 [ %.sroa.054.0, %.thread ], [ %.sroa.054.0200255, %.thread.thread ]
  %.sroa.30.0192250 = phi i32 [ %.sroa.30.0, %.thread ], [ %.sroa.30.0192251, %.thread.thread ] ; 2 uses
  %.sroa.077.0193248 = phi ptr [ %.sroa.077.0, %.thread ], [ %.sroa.077.0193249, %.thread.thread ] ; 2 uses
  %i.fd = trunc nuw i8 %.sroa.037.0198256 to i1
  br i1 %i.fd, label %bb.cf, label %bb.ce

.thread.thread:                                   ; preds = %.thread242, %.thread
  %.sroa.037.0198257 = phi i8 [ 1, %.thread242 ], [ %.sroa.037.0, %.thread ]
  %.sroa.054.0200255 = phi i8 [ 1, %.thread242 ], [ %.sroa.054.0, %.thread ]
  %.sroa.30.0192251 = phi i32 [ %.sroa.30.0184, %.thread242 ], [ %.sroa.30.0, %.thread ]
  %.sroa.077.0193249 = phi ptr [ %.sroa.077.0185, %.thread242 ], [ %.sroa.077.0, %.thread ]
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fe)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit189 unwind label %bb.ag

bb.ce:                                            ; preds = %bb.cf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit189
  %cond105 = icmp eq i8 %.sroa.054.0200254, 0
  br i1 %cond105, label %11, label %bb.cg

bb.cf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit189
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %1) #29
          to label %bb.ce unwind label %bb.ag

bb.cg:                                            ; preds = %bb.ce
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ff) #29
          to label %bb.ch unwind label %bb.ag

bb.ch:                                            ; preds = %bb.cg
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fg) #29
          to label %bb.ci unwind label %bb.ag

bb.ci:                                            ; preds = %bb.ch
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fh) #29
          to label %11 unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilder5files(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1006 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !23, !alias.scope !1007, !noundef !12
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBY_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBY_EEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %1) #29
          to label %bb.e unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBY_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilder9unk_token(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(232) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1010 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !23, !alias.scope !1011, !noundef !12
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %1) #29
          to label %bb.g unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  ret void

bb.f:                                             ; preds = %.body
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB5_9WordPiece10read_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1028 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreaderINtB2_9BufReaderRShE13with_capacityCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.l, i64 noundef 8192, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.m = load atomic ptr, ptr @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE acquire, align 8, !noalias !1029 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.b, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1B_7get_src0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bb

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi ptr [ %i.m, %bb.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !1029, !nonnull !12, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !1029, !nonnull !12, !align !16, !noundef !12
  %i.s = load atomic ptr, ptr @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !1029 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !13

bb.c:                                             ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.u = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bb

_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.c, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.0.0.i1.i = phi ptr [ %i.s, %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !12, !noalias !1029, !nonnull !12
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %i.p)
          to label %.noexc37 unwind label %bb.bb, !inline_history !0

.noexc37:                                         ; preds = %_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y, i64 noundef %i.x)
          to label %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit unwind label %bb.bb

_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit: ; preds = %.noexc37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  store i64 0, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1031
  store i64 0, ptr %i.c, align 8, !noalias !1031
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1031
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !1031
  %i.ac = invoke { i64, ptr } @_RNvYINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderRShENtB9_7BufRead9read_lineCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.2.0..sroa_idx, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.f unwind label %bb.e, !noalias !1032 ; 2 uses

bb.e:                                             ; preds = %bb.t, %bb.k, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body unwind label %bb.ac, !noalias !1032

bb.f:                                             ; preds = %bb.d
  %i.ae = extractvalue { i64, ptr } %i.ac, 0
  %i.af = extractvalue { i64, ptr } %i.ac, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq ptr %i.af, null
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.8.0.i = phi ptr [ %i.af, %bb.f ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi i64 [ -1, %bb.f ], [ -2, %bb.g ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.i, !noalias !1032

bb.i:                                             ; preds = %bb.h
end_hunk_0
