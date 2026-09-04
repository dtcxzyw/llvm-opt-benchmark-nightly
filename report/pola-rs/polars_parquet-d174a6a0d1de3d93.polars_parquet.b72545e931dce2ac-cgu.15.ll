Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.15?download=true
inline.NumInlined: 2995
inline.NumDeleted: 2017
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_RNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6readerNtB5_10PageReader9read_dict:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !25127
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !25128
  %i.bf = load i8, ptr %i.be, align 8, !dbg !25128, !range !1585, !noundef !1321
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page(ptr noalias noundef nonnull sret([344 x i8]) align 8 captures(none) dereferenceable(344) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(360) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i8 noundef %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1), !dbg !25125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !25129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !25129
  %i.bg = load i64, ptr %i.g, align 8, !dbg !25130, !range !1478, !noundef !1321
  %i.bh = icmp eq i64 %i.bg, 3, !dbg !25130
  br i1 %i.bh, label %bb.v, label %bb.w, !dbg !25131

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25132
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.z unwind label %bb.ad, !dbg !25132

bb.v:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !25133
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !dbg !25133
  store i64 3, ptr %0, align 8, !dbg !25134
  br label %bb.x, !dbg !25135

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.a, ptr noundef nonnull align 8 dereferenceable(344) %i.g, i64 344, i1 false), !dbg !25137
  call fastcc void @_RNCNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6readerNtB7_10PageReader9read_dict0Bf_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(344) %i.a), !dbg !25136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25138
  br label %bb.x, !dbg !25139

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !25140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !25141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !25142
  br label %bb.y, !dbg !25143

bb.y:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10PageHeaderECsfISxE4fmY1Y_14polars_parquet.exit, %bb.x, %bb.c
  ret void, !dbg !25143

bb.z:                                             ; preds = %bb.u
  %i.bk = load i64, ptr %i.b, align 8, !dbg !25132, !range !1399, !noundef !1321
  %i.bl = trunc nuw i64 %i.bk to i1, !dbg !25144
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !25145
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !25145, !range !1396, !noundef !1321 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !25145 ; 2 uses
  br i1 %i.bl, label %bb.aa, label %bb.ab, !dbg !25144, !prof !1345

bb.aa:                                            ; preds = %bb.z
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !25146
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #44
          to label %bb.ac unwind label %bb.ad, !dbg !25147

bb.ab:                                            ; preds = %bb.z
  %i.bq = load ptr, ptr %i.bo, align 8, !dbg !25148, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bn, 43, !dbg !25149
  call void @llvm.assume(i1 %i.br), !dbg !25150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.bq, ptr noundef nonnull align 1 dereferenceable(44) @107, i64 44, i1 false), !dbg !25152
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25153
  store i64 -9223372036854775808, ptr %i.bs, align 8, !dbg !25153
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25153
  store i64 %i.bn, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !25153
  %.sroa.429.sroa.4.0..sroa.429.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25153
  store ptr %i.bq, ptr %.sroa.429.sroa.4.0..sroa.429.0..sroa_idx.sroa_idx, align 8, !dbg !25153
  %.sroa.429.sroa.5.0..sroa.429.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25153
  store i64 44, ptr %.sroa.429.sroa.5.0..sroa.429.0..sroa_idx.sroa_idx, align 8, !dbg !25153
  store i64 3, ptr %0, align 8, !dbg !25153
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.f, !dbg !25154

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !25141
  br label %bb.af, !dbg !25104

bb.ac:                                            ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.aa, %bb.u
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ap unwind label %bb.ae, !dbg !25155

bb.ae:                                            ; preds = %bb.ad, %bb.ap
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !25156
  unreachable, !dbg !25156

bb.af:                                            ; preds = %bb.an, %bb.ao, %bb.n, %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit, %bb.h
  %i.bu = load i64, ptr %i.l, align 8, !dbg !25157, !range !1478, !alias.scope !25062, !noundef !1321
  %i.bv = icmp eq i64 %i.bu, 3, !dbg !25157
  br i1 %i.bv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.ag, !dbg !25157

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit.i unwind label %bb.ah, !dbg !25158

bb.ah:                                            ; preds = %bb.ag
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 152, !dbg !25159 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !dbg !25160, !range !1478, !alias.scope !25063, !noundef !1321
  %i.bz = icmp eq i64 %i.by, 3, !dbg !25160
  br i1 %i.bz, label %common.resume, label %bb.ai, !dbg !25160

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.bx)
          to label %common.resume unwind label %bb.ak, !dbg !25161

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.ag, %bb.af
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 152, !dbg !25159 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !25162, !range !1478, !alias.scope !25064, !noundef !1321
  %i.cc = icmp eq i64 %i.cb, 3, !dbg !25162
  br i1 %i.cc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10PageHeaderECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.aj, !dbg !25162

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit.i
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.ca), !dbg !25163
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10PageHeaderECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !25162

bb.ak:                                            ; preds = %bb.ai
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !25159
  unreachable, !dbg !25159

common.resume:                                    ; preds = %bb.ap, %bb.ah, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.ah ], [ %i.bw, %bb.ai ], [ %.pn.ph, %bb.ap ]
  resume { ptr, i32 } %common.resume.op, !dbg !25164

bb.al:                                            ; preds = %bb.k
  %i.ce = extractvalue { i64, ptr } %i.aj, 0, !dbg !25065
  %i.cf = trunc nuw i64 %i.ce to i1, !dbg !25165
  br i1 %i.cf, label %bb.am, label %bb.an, !dbg !25165

bb.am:                                            ; preds = %bb.al
  %i.cg = extractvalue { i64, ptr } %i.aj, 1, !dbg !25065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !25166
  invoke void @_RNvXs3_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB5_12ParquetErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noundef nonnull %i.cg)
          to label %bb.ao unwind label %bb.f, !dbg !25166

bb.an:                                            ; preds = %bb.al
  store i64 2, ptr %0, align 8, !dbg !25167
  br label %bb.af, !dbg !25168

bb.ao:                                            ; preds = %bb.am
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !25169
  store i64 3, ptr %0, align 8, !dbg !25169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !25170
  br label %bb.af, !dbg !25102

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10PageHeaderECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.aj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !25142
  br label %bb.y, !dbg !25077

bb.ap:                                            ; preds = %bb.f, %bb.ad
  %.pn.ph = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %lpad.thr_comm, %bb.ad ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10PageHeaderECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(360) %i.l) #41
          to label %common.resume unwind label %bb.ae, !dbg !25142
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB5_6Parser17parse_child_types(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !25171 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.657.i63 = alloca [24 x i8], align 8      ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 9 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [12 x i8], align 4               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.674.i = alloca [24 x i8], align 8        ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.668.i = alloca [24 x i8], align 8        ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.644.i = alloca [16 x i8], align 8        ; 7 uses
  %.sroa.9.i = alloca [31 x i8], align 1          ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 9 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 13 uses
  %i.av = alloca [32 x i8], align 8               ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 12 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 10 uses
  %i.bc = alloca [104 x i8], align 8              ; 5 uses
  %i.bd = alloca [104 x i8], align 8              ; 37 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 13 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !26248
  %i.bg = load ptr, ptr %1, align 8, !dbg !26514, !nonnull !1321, !align !1344, !noundef !1321 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24, !dbg !26515 ; 36 uses
  %i.bi = load i64, ptr %i.bh, align 8, !dbg !26515, !noundef !1321 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !26516 ; 12 uses
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !26516, !noundef !1321 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 576460752303423488, !dbg !26517
  tail call void @llvm.assume(i1 %i.bl), !dbg !26518
  %i.bm = icmp ult i64 %i.bi, %i.bk, !dbg !26515
  br i1 %i.bm, label %bb.b, label %.split.i, !dbg !26515

bb.b:                                             ; preds = %bb.a
  %i.bn = add nuw nsw i64 %i.bi, 1, !dbg !26519   ; 3 uses
  store i64 %i.bn, ptr %i.bh, align 8, !dbg !26519
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !26520 ; 13 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !26520, !nonnull !1321, !noundef !1321
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bi, !dbg !26521 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !26522, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !26522
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !26522, !noundef !1321 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26242), !dbg !26248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26243), !dbg !26248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr @112, ptr %i.bb, align 8, !noalias !26244
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 1, ptr %i.bu, align 8, !noalias !26244
  %i.bv = icmp eq i64 %i.bt, 1, !dbg !26523
  br i1 %i.bv, label %bb.c, label %.split25.i, !dbg !26523

.split.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr @112, ptr %i.bb, align 8, !noalias !26245
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 1, ptr %i.bw, align 8, !noalias !26245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !26524, !noalias !26244
  store ptr %i.bb, ptr %i.ay, align 8, !dbg !26524, !noalias !26244
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !26524
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.49.0..sroa_idx.i, align 8, !dbg !26524, !noalias !26244
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !26525
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull @180, ptr noundef nonnull %i.ay), !dbg !26526, !noalias !26243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !26527, !noalias !26244
  store i64 -9223372036854775808, ptr %i.bf, align 8, !dbg !26525, !alias.scope !26242, !noalias !26246
  br label %bb.d, !dbg !26528

bb.c:                                             ; preds = %bb.b
  %lhsc.i = load i8, ptr %i.br, align 1, !dbg !26529, !alias.scope !26243, !noalias !26247
  %i.bx = icmp eq i8 %lhsc.i, 123, !dbg !26529
  br i1 %i.bx, label %bb.e, label %.split25.i, !dbg !26530

.split25.i:                                       ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !26531, !noalias !26244
  store ptr %i.br, ptr %i.ba, align 8, !dbg !26531, !noalias !26244
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !26531
  store i64 %i.bt, ptr %i.by, align 8, !dbg !26531, !noalias !26244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !26532, !noalias !26244
  store ptr %i.bb, ptr %i.az, align 8, !dbg !26532, !noalias !26244
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !26532
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.413.0..sroa_idx.i, align 8, !dbg !26532, !noalias !26244
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !26532
  store ptr %i.ba, ptr %i.bz, align 8, !dbg !26532, !noalias !26244
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24, !dbg !26532
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.417.0..sroa_idx.i, align 8, !dbg !26532, !noalias !26244
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !26533
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull @181, ptr noundef nonnull %i.az), !dbg !26534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !26535, !noalias !26244
  store i64 -9223372036854775808, ptr %i.bf, align 8, !dbg !26533, !alias.scope !26242, !noalias !26246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !26536, !noalias !26244
  br label %bb.d, !dbg !26536

bb.d:                                             ; preds = %.split.i, %.split25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !26537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !dbg !26538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !26539
  br label %bb.gb, !dbg !26540

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !26537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !26539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !26541
  store i64 0, ptr %i.be, align 8, !dbg !26542
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !26542 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ca, align 8, !dbg !26542
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !26542 ; 3 uses
  store i64 0, ptr %i.cb, align 8, !dbg !26542
  %i.cc = icmp samesign ult i64 %i.bn, %i.bk, !dbg !26543
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !dbg !26543

.lr.ph:                                           ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %.sroa.735.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.836.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.742.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 19 uses
  %.sroa.244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 11 uses
  %.sroa.345.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 17 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 5 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.6109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.sroa.3112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 20 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.49.0..sroa_idx.i214.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.45.0..sroa_idx.i215.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.413.0..sroa_idx.i209.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.417.0..sroa_idx.i210.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %.sroa.6125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.7126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 3 uses
  %.sroa.8131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 25 ; 2 uses
  %.sroa.644.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 7
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.49.0..sroa_idx.i224.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.45.0..sroa_idx.i225.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.413.0..sroa_idx.i219.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.417.0..sroa_idx.i220.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.45.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.7163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.3140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 25
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.657.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %.sroa.780.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.881.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.787.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.563.sroa.4.0..sroa.563.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB5_6Parser17parse_child_types:bb.a
  br i1 %i.ux, label %bb.dy, label %bb.dv, !dbg !26998

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.644.i), !dbg !26999
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !dbg !26999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !26999, !noalias !26407
  %i.uy = icmp samesign ult i64 %i.ur, %i.tw, !dbg !27000
  br i1 %i.uy, label %bb.ec, label %bb.ea, !dbg !27000

bb.dz:                                            ; preds = %.noexc44, %bb.dv
  %i.uz = phi i64 [ %.pre, %.noexc44 ], [ %i.tw, %bb.dv ], !dbg !27001 ; 4 uses
  %i.va = phi i64 [ %.pre40.i, %.noexc44 ], [ %i.uq, %bb.dv ], !dbg !27002 ; 5 uses
  %i.vb = icmp ult i64 %i.uz, 576460752303423488, !dbg !27003
  call void @llvm.assume(i1 %i.vb), !dbg !27004
  %i.vc = icmp ult i64 %i.va, %i.uz, !dbg !27002
  br i1 %i.vc, label %bb.ew, label %bb.ev, !dbg !27002

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !27005, !noalias !26407
  invoke fastcc void @_RNCNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB7_6Parser18add_primitive_types_0Bf_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.af) #42
          to label %.noexc42 unwind label %.loopexit, !dbg !27005

.noexc42:                                         ; preds = %bb.ea
  %.sroa.050.0.copyload.i = load i64, ptr %i.af, align 8, !dbg !27006, !noalias !26407
  %.sroa.652.0.copyload.i = load ptr, ptr %.sroa.652.0..sroa_idx.i, align 8, !dbg !27006, !noalias !26407
  %i.vd = load <2 x i64>, ptr %.sroa.855.0..sroa_idx.i, align 8, !dbg !27006, !noalias !26407
  %.sroa.855.0.copyload.i = load i64, ptr %.sroa.855.0..sroa_idx.i, align 8, !dbg !27006, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !27007, !noalias !26407
  store i64 %.sroa.050.0.copyload.i, ptr %i.cz, align 8, !dbg !27008, !noalias !26407
  store ptr %.sroa.652.0.copyload.i, ptr %.sroa.6125.0..sroa_idx.i, align 8, !dbg !27008, !noalias !26407
  store <2 x i64> %i.vd, ptr %.sroa.7126.0..sroa_idx.i, align 8, !dbg !27008, !noalias !26407
  %i.ve = trunc i64 %.sroa.855.0.copyload.i to i8, !dbg !27009
  br label %bb.eb, !dbg !27009

bb.eb:                                            ; preds = %._crit_edge41.i, %.noexc42
  %.sroa.6136.0.copyload.i = phi i8 [ %.sroa.6136.0.copyload.pre.i, %._crit_edge41.i ], [ %i.ve, %.noexc42 ], !dbg !27010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.644.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !dbg !27010, !noalias !26407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.8131.0..sroa_idx.i, i64 15, i1 false), !dbg !27010, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !27011, !noalias !26407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.644.i, i64 16, i1 false), !dbg !27011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.3140.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.i, i64 15, i1 false), !dbg !27011
  store i8 %.sroa.6136.0.copyload.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !dbg !27012, !alias.scope !26407
  store i64 9, ptr %i.bd, align 8, !dbg !27012, !alias.scope !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.644.i), !dbg !27013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !27013
  br label %.noexc30, !dbg !27014

bb.ec:                                            ; preds = %bb.dy
  %i.vf = add nuw nsw i64 %i.tx, 3, !dbg !27015
  store i64 %i.vf, ptr %i.bh, align 8, !dbg !27015, !noalias !26407
  %i.vg = getelementptr inbounds nuw [16 x i8], ptr %i.uj, i64 %i.ur, !dbg !27016 ; 2 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !dbg !27017, !noalias !26407, !nonnull !1321, !noundef !1321
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 8, !dbg !27017
  %i.vj = load i64, ptr %i.vi, align 8, !dbg !27017, !noalias !26407, !noundef !1321
  invoke fastcc void @_RNCNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB7_6Parser18add_primitive_types0_0Bf_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vh, i64 noundef %i.vj) #42
          to label %.noexc43 unwind label %.loopexit, !dbg !27018

.noexc43:                                         ; preds = %bb.ec
  %i.vk = load i64, ptr %i.ao, align 8, !dbg !27019, !range !26456, !noalias !26407, !noundef !1321 ; 3 uses
  %i.vl = icmp eq i64 %i.vk, 20, !dbg !27019
  br i1 %i.vl, label %._crit_edge41.i, label %bb.ed, !dbg !27009

._crit_edge41.i:                                  ; preds = %.noexc43
  %.sroa.6136.0.copyload.pre.i = load i8, ptr %.sroa.7126.0..sroa_idx.i, align 8, !dbg !27010, !noalias !26407
  br label %bb.eb, !dbg !27009

bb.ed:                                            ; preds = %.noexc43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.644.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !dbg !27020, !noalias !26407
  %.sroa.7130.0.copyload.i = load i8, ptr %.sroa.7126.0..sroa_idx.i, align 8, !dbg !27020, !noalias !26407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8131.0..sroa_idx.i, i64 31, i1 false), !dbg !27020, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !27011, !noalias !26407
  %i.vm = trunc nuw i8 %.sroa.7130.0.copyload.i to i1, !dbg !26999
  store i64 %i.vk, ptr %i.ae, align 8, !dbg !26999, !noalias !26407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.644.0..sroa_idx45.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.644.i, i64 16, i1 false), !dbg !26999, !noalias !26407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !27021, !noalias !26407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.32..sroa_idx.i, i64 24, i1 false), !dbg !26999, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.644.i), !dbg !27013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !27013
  br i1 %i.vm, label %bb.ef, label %bb.ee, !dbg !27022

bb.ee:                                            ; preds = %bb.ed
  store i8 12, ptr %i.an, align 8, !dbg !27023, !noalias !26407
  br label %bb.eg, !dbg !27024

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.668.i), !dbg !27025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !27025, !noalias !26407
  %i.vn = load ptr, ptr %i.da, align 8, !dbg !27026, !noalias !26407, !nonnull !1321, !noundef !1321
  %i.vo = load i64, ptr %i.db, align 8, !dbg !27027, !noalias !26407, !noundef !1321
  invoke fastcc void @_RNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB5_6Parser18parse_logical_type(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.am, ptr nonnull %i.bg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vn, i64 noundef %i.vo)
          to label %bb.ei unwind label %bb.eh, !dbg !27028, !noalias !26407

bb.eg:                                            ; preds = %bb.ek, %bb.ee
  %i.vp = icmp eq i64 %i.vk, 2, !dbg !27029
  br i1 %i.vp, label %bb.el, label %bb.ep, !dbg !27029

bb.eh:                                            ; preds = %bb.eq, %bb.el, %bb.ef
  %i.vq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #41
          to label %.body unwind label %bb.fq, !dbg !27030, !noalias !26407

bb.ei:                                            ; preds = %bb.ef
  %i.vr = load i64, ptr %i.am, align 8, !dbg !27031, !range !1692, !noalias !26407, !noundef !1321 ; 2 uses
  %.not199.i = icmp eq i64 %i.vr, -9223372036854775803, !dbg !27031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false), !dbg !27032, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !27033, !noalias !26407
  br i1 %.not199.i, label %bb.ek, label %bb.ej, !dbg !27034

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.244.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668.i, i64 24, i1 false), !dbg !27033
  store i64 %i.vr, ptr %i.ci, align 8, !dbg !27035, !alias.scope !26407
  store i64 9, ptr %i.bd, align 8, !dbg !27035, !alias.scope !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668.i), !dbg !27036
  br label %bb.fr, !dbg !27037

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.668.i, i64 24, i1 false), !dbg !27025, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668.i), !dbg !27036
  br label %bb.eg, !dbg !27024

bb.el:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.674.i), !dbg !27038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !27038, !noalias !26407
  invoke fastcc void @_RNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB5_6Parser23parse_converted_decimal(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.al, ptr nonnull %i.bg)
          to label %bb.em unwind label %bb.eh, !dbg !27039, !noalias !26407

bb.em:                                            ; preds = %bb.el
  %i.vs = load i64, ptr %i.al, align 8, !dbg !27040, !range !1692, !noalias !26407, !noundef !1321 ; 2 uses
  %.not200.i = icmp eq i64 %i.vs, -9223372036854775803, !dbg !27040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.674.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !dbg !27041, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !27042, !noalias !26407
  br i1 %.not200.i, label %bb.eo, label %bb.en, !dbg !27043

bb.en:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.244.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.674.i, i64 24, i1 false), !dbg !27042
  store i64 %i.vs, ptr %i.ci, align 8, !dbg !27044, !alias.scope !26407
  store i64 9, ptr %i.bd, align 8, !dbg !27044, !alias.scope !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.674.i), !dbg !27045
  br label %bb.fr, !dbg !27046

bb.eo:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.674.i, i64 24, i1 false), !dbg !27038, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.674.i), !dbg !27045
  br label %bb.ep, !dbg !27045

bb.ep:                                            ; preds = %bb.eo, %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !27047, !noalias !26407
  %i.vt = load i64, ptr %i.bh, align 8, !dbg !27048, !noalias !26407, !noundef !1321 ; 3 uses
  %i.vu = load i64, ptr %i.bj, align 8, !dbg !27049, !noalias !26407, !noundef !1321 ; 2 uses
  %i.vv = icmp ult i64 %i.vu, 576460752303423488, !dbg !27050
  call void @llvm.assume(i1 %i.vv), !dbg !27051
  %i.vw = icmp ult i64 %i.vt, %i.vu, !dbg !27048
  br i1 %i.vw, label %bb.er, label %bb.eq, !dbg !27048

bb.eq:                                            ; preds = %bb.er, %bb.ep
  %.sroa.579.0.i = phi i64 [ %i.wc, %bb.er ], [ undef, %bb.ep ], !dbg !27052
  %.sroa.078.0.i = phi ptr [ %i.wa, %bb.er ], [ null, %bb.ep ], !dbg !27052
  invoke fastcc void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_message12assert_token(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ak, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.078.0.i, i64 %.sroa.579.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109)
          to label %bb.es unwind label %bb.eh, !dbg !27047

bb.er:                                            ; preds = %bb.ep
  %i.vx = add nuw nsw i64 %i.vt, 1, !dbg !27053
  store i64 %i.vx, ptr %i.bh, align 8, !dbg !27053, !noalias !26407
  %i.vy = load ptr, ptr %i.bo, align 8, !dbg !27054, !noalias !26407, !nonnull !1321, !noundef !1321
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %i.vy, i64 %i.vt, !dbg !27055 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !dbg !27056, !noalias !26407, !nonnull !1321, !noundef !1321
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 8, !dbg !27056
  %i.wc = load i64, ptr %i.wb, align 8, !dbg !27056, !noalias !26407, !noundef !1321
  br label %bb.eq, !dbg !27057

bb.es:                                            ; preds = %bb.eq
  %i.wd = load i64, ptr %i.ak, align 8, !dbg !27058, !range !1692, !noalias !26407, !noundef !1321
  %.not201.i = icmp eq i64 %i.wd, -9223372036854775803, !dbg !27058
  br i1 %.not201.i, label %bb.eu, label %bb.et, !dbg !27059

bb.et:                                            ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !dbg !27060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !27061, !noalias !26407
  store i64 9, ptr %i.bd, align 8, !dbg !27062, !alias.scope !26407
  br label %bb.fr, !dbg !27063

bb.eu:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !27061, !noalias !26407
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.ap)
          to label %.noexc44 unwind label %.loopexit, !dbg !27030

.noexc44:                                         ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !27030, !noalias !26407
  %.pre40.i = load i64, ptr %i.bh, align 8, !dbg !27002, !noalias !26407
  %.pre = load i64, ptr %i.bj, align 8, !dbg !27001, !noalias !26407
  br label %bb.dz, !dbg !26992

bb.ev:                                            ; preds = %bb.ex, %bb.ew, %bb.dz
  %i.we = phi i64 [ %i.wg, %bb.ew ], [ %i.va, %bb.dz ], [ %i.wg, %bb.ex ], !dbg !27064
  %i.wf = add i64 %i.we, -1, !dbg !27064          ; 2 uses
  store i64 %i.wf, ptr %i.bh, align 8, !dbg !27064, !noalias !26407
  br label %bb.ez, !dbg !27065

bb.ew:                                            ; preds = %bb.dz
  %i.wg = add nuw nsw i64 %i.va, 1, !dbg !27066   ; 5 uses
  store i64 %i.wg, ptr %i.bh, align 8, !dbg !27066, !noalias !26407
  %i.wh = load ptr, ptr %i.bo, align 8, !dbg !27067, !noalias !26407, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.wi = getelementptr inbounds nuw [16 x i8], ptr %i.wh, i64 %i.va, !dbg !27068 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8, !dbg !27069
  %i.wk = load i64, ptr %i.wj, align 8, !dbg !27069, !noalias !26407, !noundef !1321
  %i.wl = icmp eq i64 %i.wk, 1, !dbg !27070
  br i1 %i.wl, label %bb.ex, label %bb.ev, !dbg !27070

bb.ex:                                            ; preds = %bb.ew
  %i.wm = load ptr, ptr %i.wi, align 8, !dbg !27069, !noalias !26407, !nonnull !1321, !noundef !1321
  %lhsc202.i = load i8, ptr %i.wm, align 1, !dbg !27071, !noalias !26407
  %i.wn = icmp eq i8 %lhsc202.i, 61, !dbg !27071
  br i1 %i.wn, label %bb.ey, label %bb.ev, !dbg !27072

bb.ey:                                            ; preds = %bb.ex
  %i.wo = icmp samesign ult i64 %i.wg, %i.uz, !dbg !27073
  br i1 %i.wo, label %bb.fa, label %.thread.i, !dbg !27073

.thread.i:                                        ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !27074, !noalias !26407
  br label %.split.i223.i, !dbg !27075

bb.ez:                                            ; preds = %bb.fa, %bb.ev
  %2 = phi i64 [ %i.wf, %bb.ev ], [ %i.wq, %bb.fa ], !dbg !27075 ; 3 uses
  %.sroa.581.0.i = phi i32 [ undef, %bb.ev ], [ %.sroa.5175.0.extract.trunc.i, %bb.fa ], !dbg !27076
  %.sroa.080.0.i = phi i32 [ 0, %bb.ev ], [ %..i, %bb.fa ], !dbg !27076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !27074, !noalias !26407
  %i.wp = icmp ult i64 %2, %i.uz, !dbg !27075
  br i1 %i.wp, label %bb.fb, label %.split.i223.i, !dbg !27075

bb.fa:                                            ; preds = %bb.ey
  %i.wq = add nuw nsw i64 %i.va, 2, !dbg !27077   ; 2 uses
  store i64 %i.wq, ptr %i.bh, align 8, !dbg !27077, !noalias !26407
  %i.wr = getelementptr inbounds nuw [16 x i8], ptr %i.wh, i64 %i.wg, !dbg !27078 ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !dbg !27079, !noalias !26407, !nonnull !1321, !noundef !1321
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 8, !dbg !27079
  %i.wu = load i64, ptr %i.wt, align 8, !dbg !27079, !noalias !26407, !noundef !1321
  %i.wv = call fastcc i64 @_RNvMsp_NtCscgRAwXFJnXP_4core3numl16from_ascii_radix(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ws, i64 noundef %i.wu) #42, !dbg !27080 ; 2 uses
  %.sroa.5175.0.extract.shift.i = lshr i64 %i.wv, 32, !dbg !27080
  %.sroa.5175.0.extract.trunc.i = trunc nuw i64 %.sroa.5175.0.extract.shift.i to i32, !dbg !27080
  %i.ww = trunc i64 %i.wv to i32, !dbg !27081
  %not..i = and i32 %i.ww, 1, !dbg !27082
  %..i = xor i32 %not..i, 1, !dbg !27082
  br label %bb.ez, !dbg !27083

bb.fb:                                            ; preds = %bb.ez
  %i.wx = add nuw nsw i64 %2, 1, !dbg !27084
  store i64 %i.wx, ptr %i.bh, align 8, !dbg !27084, !noalias !26407
  %i.wy = load ptr, ptr %i.bo, align 8, !dbg !27085, !noalias !26407, !nonnull !1321, !noundef !1321
  %i.wz = getelementptr inbounds nuw [16 x i8], ptr %i.wy, i64 %2, !dbg !27086 ; 2 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !dbg !27087, !noalias !26407, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 8, !dbg !27087
  %i.xc = load i64, ptr %i.xb, align 8, !dbg !27087, !noalias !26407, !noundef !1321 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26496), !dbg !27074
  call void @llvm.experimental.noalias.scope.decl(metadata !26497), !dbg !27074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !26407
  store ptr @115, ptr %i.u, align 8, !noalias !26498
  store i64 1, ptr %i.de, align 8, !noalias !26498
  %i.xd = icmp eq i64 %i.xc, 1, !dbg !27088
  br i1 %i.xd, label %bb.fc, label %.split25.i218.i, !dbg !27088

.split.i223.i:                                    ; preds = %bb.ez, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !26407
  store ptr @115, ptr %i.u, align 8, !noalias !26499
  store i64 1, ptr %i.de, align 8, !noalias !26499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !27089, !noalias !26498
  store ptr %i.u, ptr %i.r, align 8, !dbg !27089, !noalias !26498
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.49.0..sroa_idx.i224.i, align 8, !dbg !27089, !noalias !26498
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.45.0..sroa_idx.i225.i, ptr noundef nonnull @180, ptr noundef nonnull %i.r)
          to label %.noexc45 unwind label %.loopexit, !dbg !27090

.noexc45:                                         ; preds = %.split.i223.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !27091, !noalias !26498
  store i64 -9223372036854775808, ptr %i.aj, align 8, !dbg !27092, !alias.scope !26496, !noalias !26500
  br label %bb.fd, !dbg !27093

bb.fc:                                            ; preds = %bb.fb
  %lhsc.i222.i = load i8, ptr %i.xa, align 1, !dbg !27094, !alias.scope !26497, !noalias !26501
  %i.xe = icmp eq i8 %lhsc.i222.i, 59, !dbg !27094
  br i1 %i.xe, label %bb.fe, label %.split25.i218.i, !dbg !27095

.split25.i218.i:                                  ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !27096, !noalias !26498
  store ptr %i.xa, ptr %i.t, align 8, !dbg !27096, !noalias !26498
  store i64 %i.xc, ptr %i.df, align 8, !dbg !27096, !noalias !26498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !27097, !noalias !26498
  store ptr %i.u, ptr %i.s, align 8, !dbg !27097, !noalias !26498
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.413.0..sroa_idx.i219.i, align 8, !dbg !27097, !noalias !26498
  store ptr %i.t, ptr %i.dg, align 8, !dbg !27097, !noalias !26498
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.417.0..sroa_idx.i220.i, align 8, !dbg !27097, !noalias !26498
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.45.0..sroa_idx.i225.i, ptr noundef nonnull @181, ptr noundef nonnull %i.s)
          to label %.noexc46 unwind label %.loopexit, !dbg !27098

.noexc46:                                         ; preds = %.split25.i218.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !27099, !noalias !26498
  store i64 -9223372036854775808, ptr %i.aj, align 8, !dbg !27100, !alias.scope !26496, !noalias !26500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !27101, !noalias !26498
  br label %bb.fd, !dbg !27101

bb.fd:                                            ; preds = %.noexc46, %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !27102, !noalias !26407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !dbg !27103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !27104, !noalias !26407
  store i64 9, ptr %i.bd, align 8, !dbg !27105, !alias.scope !26407
  br label %.noexc30, !dbg !27106

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !27102, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !27104, !noalias !26407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !27107, !noalias !26407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !27108
  %i.xf = icmp eq i64 %i.un, 0, !dbg !27108
  br i1 %i.xf, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread28.i, label %bb.ff, !dbg !27108

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread28.i: ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !27109
  br label %bb.fj, !dbg !27110

bb.ff:                                            ; preds = %bb.fe
  %i.xg = icmp ult i64 %i.un, 25, !dbg !27111
  br i1 %i.xg, label %bb.fh, label %bb.fg, !dbg !27111

bb.fg:                                            ; preds = %bb.ff
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %i.un, i64 32), !dbg !27112 ; 2 uses
  %i.xh = invoke noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i)
          to label %.noexc47 unwind label %.loopexit, !dbg !27113 ; 3 uses

.noexc47:                                         ; preds = %bb.fg
  %i.xi = icmp eq ptr %i.xh, null, !dbg !27114
  br i1 %i.xi, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i, label %bb.fi, !dbg !27115

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i: ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !27109
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread.i, !dbg !27116

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.q, i8 0, i64 23, i1 false), !dbg !27117, !noalias !26504
  %i.xj = trunc nuw nsw i64 %i.un to i8, !dbg !27118
  %i.xk = or disjoint i8 %i.xj, -64, !dbg !27119
  store i8 %i.xk, ptr %.23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !27119, !noalias !26504
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 1 %i.ul, i64 %i.un, i1 false), !dbg !27120, !noalias !26505
  %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i = load ptr, ptr %i.q, align 8, !dbg !27121, !noalias !26506
  %.8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i = load i64, ptr %.8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !27121, !noalias !26506
  %.16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i = load i64, ptr %.16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !27121, !noalias !26506
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i, !dbg !27122

bb.fi:                                            ; preds = %.noexc47
  %i.xl = or i64 %.sroa.0.0.i.i.i.i.i.i, -2882303761517117440, !dbg !27123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.xh, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ul, i64 range(i64 25, 0) %i.un, i1 false), !dbg !27124, !noalias !26507
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i, !dbg !27125

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i: ; preds = %bb.fi, %bb.fh
  %.sroa.02.0.i.i = phi ptr [ %i.xh, %bb.fi ], [ %.0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i, %bb.fh ], !dbg !27126
  %.sroa.6.0.i.i = phi i64 [ %i.un, %bb.fi ], [ %.8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i, %bb.fh ], !dbg !27126
  %.sroa.7.0.i.i = phi i64 [ %i.xl, %bb.fi ], [ %.16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i, %bb.fh ], !dbg !27127 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !27109
  %i.xm = and i64 %.sroa.7.0.i.i, -72057594037927936, !dbg !27116
  %or.cond.i = icmp eq i64 %i.xm, -2738188573441261568, !dbg !27116
  br i1 %or.cond.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread.i, label %bb.fj, !dbg !27116, !prof !1994

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i
  invoke void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #39
          to label %.noexc48 unwind label %.loopexit.split-lp, !dbg !27128

.noexc48:                                         ; preds = %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread.i
  unreachable, !dbg !27128

bb.fj:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread28.i
  %.sroa.02.0736.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread28.i ], [ %.sroa.02.0.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i ]
  %.sroa.43.035.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread28.i ], [ %.sroa.6.0.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i ]
  %.sroa.5.0834.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread28.i ], [ %.sroa.7.0.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i ] ; 2 uses
  store ptr %.sroa.02.0736.i, ptr %i.ai, align 8, !dbg !27129, !noalias !26407
  store i64 %.sroa.43.035.i, ptr %.sroa.45.0..sroa_idx.i33, align 8, !dbg !27129, !noalias !26407
  store i64 %.sroa.5.0834.i, ptr %.sroa.56.0..sroa_idx.i, align 8, !dbg !27129, !noalias !26407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !27130, !noalias !26407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !27130, !noalias !26407
  store i32 %i.sn, ptr %i.ag, align 4, !dbg !27130, !noalias !26407
  store i32 %.sroa.0.0.i, ptr %i.dh, align 4, !dbg !27130, !noalias !26407
  store i32 %.sroa.3.0.i, ptr %i.di, align 4, !dbg !27130, !noalias !26407
  %i.xn = lshr i64 %.sroa.5.0834.i, 56, !dbg !27131 ; 2 uses
  invoke void @_RNvXNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types13physical_typeNtB2_12PhysicalTypeINtNtCscgRAwXFJnXP_4core7convert7TryFromTNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format4TypeINtNtB1C_6option6OptionlEEE8try_from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ag)
          to label %bb.fk unwind label %bb.fo, !dbg !27131, !noalias !26407

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !27132, !noalias !26407
  %i.xo = load i64, ptr %i.ah, align 8, !dbg !27133, !range !1692, !noalias !26407, !noundef !1321 ; 2 uses
  %.not204.i = icmp eq i64 %i.xo, -9223372036854775803, !dbg !27133
  %i.xp = load i64, ptr %i.dj, align 8, !dbg !27134, !noalias !26407 ; 2 uses
  %i.xq = load i64, ptr %i.dk, align 8, !dbg !27134, !noalias !26407 ; 2 uses
  br i1 %.not204.i, label %bb.fn, label %bb.fl, !dbg !27135

bb.fl:                                            ; preds = %bb.fk
  %.sroa.7163.0.copyload.i = load i64, ptr %.sroa.7163.0..sroa_idx.i, align 8, !dbg !27136, !noalias !26407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !27137, !noalias !26407
  store i64 %i.xo, ptr %i.ci, align 8, !dbg !27138, !alias.scope !26407
  store i64 %i.xp, ptr %.sroa.244.0..sroa_idx.i, align 8, !dbg !27138, !alias.scope !26407
  store i64 %i.xq, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !dbg !27138, !alias.scope !26407
  store i64 %.sroa.7163.0.copyload.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !dbg !27138, !alias.scope !26407
  store i64 9, ptr %i.bd, align 8, !dbg !27138, !alias.scope !26407
  %i.xr = icmp eq i64 %i.xn, 216, !dbg !27139
  br i1 %i.xr, label %bb.fm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !27139, !prof !1345

bb.fm:                                            ; preds = %bb.fl
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet.exit.i unwind label %.loopexit, !dbg !27140

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !27141, !noalias !26407
  br label %.noexc30, !dbg !27106

bb.fn:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !27137, !noalias !26407
  invoke void @_RNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_11ParquetType18try_from_primitive(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai, i64 noundef %i.xp, i64 %i.xq, i8 noundef range(i8 0, 3) %.sroa.641.0.copyload.i.pre, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an, i32 noundef %.sroa.080.0.i, i32 %.sroa.581.0.i)
          to label %.noexc50 unwind label %.loopexit, !dbg !27142

.noexc50:                                         ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !27141, !noalias !26407
  br label %.noexc30, !dbg !27143

bb.fo:                                            ; preds = %bb.fj
  %i.xs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xt = icmp eq i64 %i.xn, 216, !dbg !27144
  br i1 %i.xt, label %bb.fp, label %.body, !dbg !27144, !prof !1345

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body unwind label %bb.fq, !dbg !27145, !noalias !26407

bb.fq:                                            ; preds = %bb.fp, %bb.eh
  %i.xu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !27146, !noalias !26407
  unreachable, !dbg !27146

bb.fr:                                            ; preds = %bb.et, %bb.en, %bb.ej
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.ap)
          to label %.noexc53 unwind label %.loopexit, !dbg !27030

.noexc53:                                         ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !27030, !noalias !26407
  br label %.noexc30, !dbg !27014

.noexc30:                                         ; preds = %.noexc53, %.noexc50, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.fd, %bb.eb, %_RNCNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB7_6Parser18add_primitive_type0Bf_.exit.i, %bb.dp, %bb.dl, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !27143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !27143
  br label %.noexc27, !dbg !27147

bb.fs:                                            ; preds = %bb.cx
  %i.xv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !27148, !noalias !26277, !inline_history !25377
  unreachable, !dbg !27148

.noexc27:                                         ; preds = %_RNCNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB7_6Parser14add_group_type0Bf_.exit.i, %bb.az, %bb.bm, %bb.cn, %bb.cu, %.noexc30, %.noexc28, %bb.x, %bb.k
  %i.xw = load i64, ptr %i.bd, align 8, !dbg !27149, !range !1995, !noundef !1321 ; 2 uses
  %i.xx = icmp eq i64 %i.xw, 9, !dbg !27149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 32, i1 false), !dbg !27150
  br i1 %i.xx, label %bb.ft, label %bb.fw, !dbg !27151

bb.ft:                                            ; preds = %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !27152
end_hunk_1
begin_hunk_2_@llvm.smax.i64
!26874 = !DILocation(line: 2652, column: 25, scope: !25832, inlinedAt: !25812)
!26875 = !DILocation(line: 389, column: 13, scope: !25805, inlinedAt: !25516)
!26876 = !DILocation(line: 387, column: 9, scope: !25805, inlinedAt: !25516)
!26877 = !DILocation(line: 394, column: 6, scope: !25515, inlinedAt: !25516)
!26878 = !DILocation(line: 356, column: 5, scope: !25515, inlinedAt: !25516)
!26879 = !DILocation(line: 347, column: 80, scope: !25428, inlinedAt: !25219)
!26880 = !DILocation(line: 155, column: 40, scope: !25500, inlinedAt: !25442)
!26881 = !DILocation(line: 155, column: 72, scope: !25441, inlinedAt: !25442)
!26882 = !DILocation(line: 2175, column: 17, scope: !25833, inlinedAt: !25834)
!26883 = !DILocation(line: 347, column: 79, scope: !25428, inlinedAt: !25219)
!26884 = !DILocation(line: 2189, column: 23, scope: !25835, inlinedAt: !25838)
!26885 = !DILocation(line: 810, column: 1, scope: !36, inlinedAt: !25840)
!26886 = !DILocation(line: 810, column: 1, scope: !37, inlinedAt: !25841)
!26887 = !DILocation(line: 810, column: 1, scope: !37, inlinedAt: !25842)
!26888 = !DILocation(line: 0, scope: !26406, inlinedAt: !25219)
!26889 = !DILocation(line: 2174, column: 16, scope: !25833, inlinedAt: !25834)
!26890 = !DILocation(line: 810, column: 1, scope: !36, inlinedAt: !25844)
!26891 = !DILocation(line: 810, column: 1, scope: !37, inlinedAt: !25845)
!26892 = !DILocation(line: 810, column: 1, scope: !37, inlinedAt: !25846)
!26893 = !DILocation(line: 348, column: 22, scope: !25849, inlinedAt: !25219)
!26894 = !DILocation(line: 402, column: 25, scope: !25850, inlinedAt: !25851)
!26895 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !25854)
!26896 = !DILocation(line: 3024, column: 19, scope: !25855, inlinedAt: !25856)
!26897 = !DILocation(line: 403, column: 13, scope: !25850, inlinedAt: !25851)
!26898 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !25857)
!26899 = !DILocation(line: 3024, column: 19, scope: !25855, inlinedAt: !25858)
!26900 = !DILocation(line: 3029, column: 37, scope: !25859, inlinedAt: !25858)
!26901 = !DILocation(line: 3029, column: 18, scope: !25859, inlinedAt: !25858)
!26902 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !25857)
!26903 = !DILocation(line: 614, column: 9, scope: !25860, inlinedAt: !25873)
!26904 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !25877)
!26905 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !25857)
!26906 = !DILocation(line: 22, column: 12, scope: !1226, inlinedAt: !25886)
!26907 = !DILocation(line: 253, column: 39, scope: !1969, inlinedAt: !25882)
!26908 = !DILocation(line: 659, column: 34, scope: !164, inlinedAt: !25892)
!26909 = !DILocation(line: 253, column: 39, scope: !1230, inlinedAt: !25882)
!26910 = !DILocation(line: 253, column: 17, scope: !1230, inlinedAt: !25882)
!26911 = !DILocation(line: 255, column: 11, scope: !1230, inlinedAt: !25882)
!26912 = !DILocation(line: 158, column: 13, scope: !1234, inlinedAt: !25893)
!26913 = !DILocation(line: 249, column: 24, scope: !1230, inlinedAt: !25882)
!26914 = !DILocation(line: 250, column: 14, scope: !1230, inlinedAt: !25882)
!26915 = !DILocation(line: 250, column: 46, scope: !1971, inlinedAt: !25882)
!26916 = !DILocation(line: 659, column: 34, scope: !164, inlinedAt: !25896)
!26917 = !DILocation(line: 250, column: 46, scope: !1235, inlinedAt: !25882)
!26918 = !DILocation(line: 250, column: 24, scope: !1235, inlinedAt: !25882)
!26919 = !DILocation(line: 252, column: 11, scope: !1230, inlinedAt: !25882)
!26920 = !DILocation(line: 257, column: 2, scope: !1230, inlinedAt: !25882)
!26921 = !DILocation(line: 2175, column: 17, scope: !25897, inlinedAt: !25898)
!26922 = !DILocation(line: 403, column: 53, scope: !25850, inlinedAt: !25851)
!26923 = !DILocation(line: 2189, column: 23, scope: !25900, inlinedAt: !25903)
!26924 = !DILocation(line: 0, scope: !26416, inlinedAt: !25851)
!26925 = !DILocation(line: 404, column: 26, scope: !25850, inlinedAt: !25851)
!26926 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !25904)
!26927 = !DILocation(line: 0, scope: !25852, inlinedAt: !25904)
!26928 = !DILocation(line: 2173, column: 15, scope: !25905, inlinedAt: !25906)
!26929 = !DILocation(line: 0, scope: !25905, inlinedAt: !25906)
!26930 = !DILocation(line: 2173, column: 9, scope: !25905, inlinedAt: !25906)
!26931 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !25904)
!26932 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !25909)
!26933 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !25904)
!26934 = !DILocation(line: 230, column: 9, scope: !25852, inlinedAt: !25904)
!26935 = !DILocation(line: 2175, column: 17, scope: !25905, inlinedAt: !25906)
!26936 = !DILocation(line: 408, column: 14, scope: !25850, inlinedAt: !25851)
!26937 = !DILocation(line: 2189, column: 23, scope: !25910, inlinedAt: !25913)
!26938 = !DILocation(line: 409, column: 13, scope: !25914, inlinedAt: !25851)
!26939 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !25915)
!26940 = !DILocation(line: 3024, column: 19, scope: !25855, inlinedAt: !25916)
!26941 = !DILocation(line: 3029, column: 37, scope: !25917, inlinedAt: !25916)
!26942 = !DILocation(line: 3029, column: 18, scope: !25917, inlinedAt: !25916)
!26943 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !25915)
!26944 = !DILocation(line: 614, column: 9, scope: !25860, inlinedAt: !25924)
!26945 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !25926)
!26946 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !25915)
!26947 = !DILocation(line: 22, column: 12, scope: !1226, inlinedAt: !25935)
!26948 = !DILocation(line: 253, column: 39, scope: !1969, inlinedAt: !25931)
!26949 = !DILocation(line: 659, column: 34, scope: !164, inlinedAt: !25941)
!26950 = !DILocation(line: 253, column: 39, scope: !1230, inlinedAt: !25931)
!26951 = !DILocation(line: 253, column: 17, scope: !1230, inlinedAt: !25931)
!26952 = !DILocation(line: 255, column: 11, scope: !1230, inlinedAt: !25931)
!26953 = !DILocation(line: 158, column: 13, scope: !1234, inlinedAt: !25942)
!26954 = !DILocation(line: 249, column: 24, scope: !1230, inlinedAt: !25931)
!26955 = !DILocation(line: 250, column: 14, scope: !1230, inlinedAt: !25931)
!26956 = !DILocation(line: 250, column: 46, scope: !1971, inlinedAt: !25931)
!26957 = !DILocation(line: 659, column: 34, scope: !164, inlinedAt: !25945)
!26958 = !DILocation(line: 250, column: 46, scope: !1235, inlinedAt: !25931)
!26959 = !DILocation(line: 250, column: 24, scope: !1235, inlinedAt: !25931)
!26960 = !DILocation(line: 252, column: 11, scope: !1230, inlinedAt: !25931)
!26961 = !DILocation(line: 257, column: 2, scope: !1230, inlinedAt: !25931)
!26962 = !DILocation(line: 2175, column: 17, scope: !25897, inlinedAt: !25946)
!26963 = !DILocation(line: 409, column: 53, scope: !25914, inlinedAt: !25851)
!26964 = !DILocation(line: 2189, column: 23, scope: !25947, inlinedAt: !25950)
!26965 = !DILocation(line: 0, scope: !26436, inlinedAt: !25851)
!26966 = !DILocation(line: 402, column: 22, scope: !25850, inlinedAt: !25851)
!26967 = !DILocation(line: 0, scope: !25850, inlinedAt: !25851)
!26968 = !DILocation(line: 3029, column: 37, scope: !25951, inlinedAt: !25856)
!26969 = !DILocation(line: 3029, column: 18, scope: !25951, inlinedAt: !25856)
!26970 = !DILocation(line: 434, column: 15, scope: !25954, inlinedAt: !25980)
!26971 = !DILocation(line: 434, column: 9, scope: !25954, inlinedAt: !25980)
!26972 = !DILocation(line: 0, scope: !25954, inlinedAt: !25980)
!26973 = !DILocation(line: 442, column: 17, scope: !25954, inlinedAt: !25980)
!26974 = !DILocation(line: 442, column: 25, scope: !25981, inlinedAt: !25980)
!26975 = !DILocation(line: 435, column: 16, scope: !25954, inlinedAt: !25980)
!26976 = !DILocation(line: 767, column: 9, scope: !25982, inlinedAt: !25984)
!26977 = !DILocation(line: 210, column: 9, scope: !25985, inlinedAt: !25986)
!26978 = !DILocation(line: 443, column: 9, scope: !25954, inlinedAt: !25980)
!26979 = !DILocation(line: 552, column: 14, scope: !25987, inlinedAt: !25991)
!26980 = !DILocation(line: 39, column: 9, scope: !25965, inlinedAt: !25970)
!26981 = !DILocation(line: 1369, column: 21, scope: !25967, inlinedAt: !25968)
!26982 = !DILocation(line: 2189, column: 23, scope: !25992, inlinedAt: !25995)
!26983 = !DILocation(line: 0, scope: !26439, inlinedAt: !25851)
!26984 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !25854)
!26985 = !DILocation(line: 614, column: 9, scope: !25860, inlinedAt: !26002)
!26986 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !26004)
!26987 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !25854)
!26988 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !26007)
!26989 = !DILocation(line: 222, column: 9, scope: !26008, inlinedAt: !26009)
!26990 = !DILocation(line: 458, column: 14, scope: !26005, inlinedAt: !25851)
!26991 = !DILocation(line: 458, column: 20, scope: !26005, inlinedAt: !25851)
!26992 = !DILocation(line: 422, column: 46, scope: !26005, inlinedAt: !25851)
!26993 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !26007)
!26994 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !26012)
!26995 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !26007)
!26996 = !DILocation(line: 22, column: 12, scope: !26014, inlinedAt: !26019)
!26997 = !DILocation(line: 158, column: 13, scope: !26021, inlinedAt: !26022)
!26998 = !DILocation(line: 422, column: 58, scope: !26006, inlinedAt: !25851)
!26999 = !DILocation(line: 423, column: 60, scope: !26006, inlinedAt: !25851)
!27000 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !26023)
!27001 = !DILocation(line: 3024, column: 19, scope: !25855, inlinedAt: !26027)
!27002 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !26026)
!27003 = !DILocation(line: 3029, column: 37, scope: !26028, inlinedAt: !26027)
!27004 = !DILocation(line: 3029, column: 18, scope: !26028, inlinedAt: !26027)
!27005 = !DILocation(line: 1369, column: 25, scope: !26029, inlinedAt: !26030)
!27006 = !DILocation(line: 1369, column: 21, scope: !26029, inlinedAt: !26030)
!27007 = !DILocation(line: 1369, column: 30, scope: !26029, inlinedAt: !26030)
!27008 = !DILocation(line: 1494, column: 23, scope: !26032, inlinedAt: !26033)
!27009 = !DILocation(line: 2173, column: 9, scope: !26034, inlinedAt: !26035)
!27010 = !DILocation(line: 2175, column: 17, scope: !26034, inlinedAt: !26035)
!27011 = !DILocation(line: 438, column: 19, scope: !26006, inlinedAt: !25851)
!27012 = !DILocation(line: 2189, column: 23, scope: !26036, inlinedAt: !26039)
!27013 = !DILocation(line: 438, column: 20, scope: !26006, inlinedAt: !25851)
!27014 = !DILocation(line: 0, scope: !26452, inlinedAt: !25851)
!27015 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !26023)
!27016 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !26042)
!27017 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !26023)
!27018 = !DILocation(line: 1493, column: 22, scope: !26043, inlinedAt: !26033)
!27019 = !DILocation(line: 2173, column: 15, scope: !26034, inlinedAt: !26035)
!27020 = !DILocation(line: 2174, column: 16, scope: !26034, inlinedAt: !26035)
!27021 = !DILocation(line: 423, column: 51, scope: !26006, inlinedAt: !25851)
!27022 = !DILocation(line: 440, column: 35, scope: !26044, inlinedAt: !25851)
!27023 = !DILocation(line: 443, column: 17, scope: !26044, inlinedAt: !25851)
!27024 = !DILocation(line: 440, column: 32, scope: !26044, inlinedAt: !25851)
!27025 = !DILocation(line: 441, column: 22, scope: !26044, inlinedAt: !25851)
!27026 = !DILocation(line: 614, column: 9, scope: !26045, inlinedAt: !26058)
!27027 = !DILocation(line: 1841, column: 86, scope: !26049, inlinedAt: !26054)
!27028 = !DILocation(line: 441, column: 27, scope: !26044, inlinedAt: !25851)
!27029 = !DILocation(line: 447, column: 34, scope: !26059, inlinedAt: !25851)
!27030 = !DILocation(line: 456, column: 9, scope: !26006, inlinedAt: !25851)
!27031 = !DILocation(line: 2173, column: 15, scope: !26060, inlinedAt: !26061)
!27032 = !DILocation(line: 0, scope: !26060, inlinedAt: !26061)
!27033 = !DILocation(line: 441, column: 53, scope: !26044, inlinedAt: !25851)
!27034 = !DILocation(line: 2173, column: 9, scope: !26060, inlinedAt: !26061)
!27035 = !DILocation(line: 2189, column: 23, scope: !26062, inlinedAt: !26065)
!27036 = !DILocation(line: 441, column: 54, scope: !26044, inlinedAt: !25851)
!27037 = !DILocation(line: 0, scope: !26462, inlinedAt: !25851)
!27038 = !DILocation(line: 449, column: 26, scope: !26059, inlinedAt: !25851)
!27039 = !DILocation(line: 449, column: 31, scope: !26059, inlinedAt: !25851)
!27040 = !DILocation(line: 2173, column: 15, scope: !26066, inlinedAt: !26067)
!27041 = !DILocation(line: 0, scope: !26066, inlinedAt: !26067)
!27042 = !DILocation(line: 449, column: 56, scope: !26059, inlinedAt: !25851)
!27043 = !DILocation(line: 2173, column: 9, scope: !26066, inlinedAt: !26067)
!27044 = !DILocation(line: 2189, column: 23, scope: !26068, inlinedAt: !26071)
!27045 = !DILocation(line: 449, column: 57, scope: !26059, inlinedAt: !25851)
!27046 = !DILocation(line: 0, scope: !26464, inlinedAt: !25851)
!27047 = !DILocation(line: 454, column: 13, scope: !26072, inlinedAt: !25851)
!27048 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !26073)
!27049 = !DILocation(line: 3024, column: 19, scope: !25855, inlinedAt: !26074)
!27050 = !DILocation(line: 3029, column: 37, scope: !26075, inlinedAt: !26074)
!27051 = !DILocation(line: 3029, column: 18, scope: !26075, inlinedAt: !26074)
!27052 = !DILocation(line: 0, scope: !25852, inlinedAt: !26073)
!27053 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !26073)
!27054 = !DILocation(line: 614, column: 9, scope: !25860, inlinedAt: !26082)
!27055 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !26084)
!27056 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !26073)
!27057 = !DILocation(line: 230, column: 9, scope: !25852, inlinedAt: !26073)
!27058 = !DILocation(line: 2173, column: 15, scope: !25897, inlinedAt: !26085)
!27059 = !DILocation(line: 2173, column: 9, scope: !25897, inlinedAt: !26085)
!27060 = !DILocation(line: 2175, column: 17, scope: !25897, inlinedAt: !26085)
!27061 = !DILocation(line: 454, column: 53, scope: !26072, inlinedAt: !25851)
!27062 = !DILocation(line: 2189, column: 23, scope: !26086, inlinedAt: !26089)
!27063 = !DILocation(line: 0, scope: !26474, inlinedAt: !25851)
!27064 = !DILocation(line: 222, column: 9, scope: !26008, inlinedAt: !26090)
!27065 = !DILocation(line: 462, column: 18, scope: !26024, inlinedAt: !25851)
!27066 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !26026)
!27067 = !DILocation(line: 614, column: 9, scope: !25860, inlinedAt: !26097)
!27068 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !26099)
!27069 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !26026)
!27070 = !DILocation(line: 22, column: 12, scope: !26100, inlinedAt: !26103)
!27071 = !DILocation(line: 158, column: 13, scope: !26104, inlinedAt: !26105)
!27072 = !DILocation(line: 462, column: 30, scope: !26025, inlinedAt: !25851)
!27073 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !26106)
!27074 = !DILocation(line: 468, column: 9, scope: !26107, inlinedAt: !25851)
!27075 = !DILocation(line: 230, column: 12, scope: !25852, inlinedAt: !26108)
!27076 = !DILocation(line: 0, scope: !26024, inlinedAt: !25851)
!27077 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !26106)
!27078 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !26111)
!27079 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !26106)
!27080 = !DILocation(line: 1625, column: 17, scope: !26112, inlinedAt: !26122)
!27081 = !DILocation(line: 713, column: 15, scope: !26123, inlinedAt: !26124)
!27082 = !DILocation(line: 0, scope: !26123, inlinedAt: !26124)
!27083 = !DILocation(line: 1546, column: 27, scope: !26116, inlinedAt: !26118)
!27084 = !DILocation(line: 231, column: 13, scope: !25852, inlinedAt: !26108)
!27085 = !DILocation(line: 614, column: 9, scope: !25860, inlinedAt: !26131)
!27086 = !DILocation(line: 272, column: 9, scope: !25874, inlinedAt: !26133)
!27087 = !DILocation(line: 232, column: 18, scope: !25852, inlinedAt: !26108)
!27088 = !DILocation(line: 22, column: 12, scope: !1226, inlinedAt: !26142)
!27089 = !DILocation(line: 253, column: 39, scope: !1969, inlinedAt: !26138)
!27090 = !DILocation(line: 659, column: 34, scope: !164, inlinedAt: !26148)
!27091 = !DILocation(line: 253, column: 39, scope: !1230, inlinedAt: !26138)
!27092 = !DILocation(line: 253, column: 17, scope: !1230, inlinedAt: !26138)
!27093 = !DILocation(line: 255, column: 11, scope: !1230, inlinedAt: !26138)
!27094 = !DILocation(line: 158, column: 13, scope: !1234, inlinedAt: !26149)
!27095 = !DILocation(line: 249, column: 24, scope: !1230, inlinedAt: !26138)
!27096 = !DILocation(line: 250, column: 14, scope: !1230, inlinedAt: !26138)
!27097 = !DILocation(line: 250, column: 46, scope: !1971, inlinedAt: !26138)
!27098 = !DILocation(line: 659, column: 34, scope: !164, inlinedAt: !26152)
!27099 = !DILocation(line: 250, column: 46, scope: !1235, inlinedAt: !26138)
!27100 = !DILocation(line: 250, column: 24, scope: !1235, inlinedAt: !26138)
!27101 = !DILocation(line: 252, column: 11, scope: !1230, inlinedAt: !26138)
!27102 = !DILocation(line: 257, column: 2, scope: !1230, inlinedAt: !26138)
!27103 = !DILocation(line: 2175, column: 17, scope: !25897, inlinedAt: !26153)
!27104 = !DILocation(line: 468, column: 49, scope: !26107, inlinedAt: !25851)
!27105 = !DILocation(line: 2189, column: 23, scope: !26154, inlinedAt: !26157)
!27106 = !DILocation(line: 0, scope: !26503, inlinedAt: !25851)
!27107 = !DILocation(line: 471, column: 13, scope: !26107, inlinedAt: !25851)
!27108 = !DILocation(line: 68, column: 12, scope: !1267, inlinedAt: !26165)
!27109 = !DILocation(line: 77, column: 6, scope: !1266, inlinedAt: !26165)
!27110 = !DILocation(line: 2650, column: 9, scope: !26166, inlinedAt: !26167)
!27111 = !DILocation(line: 70, column: 19, scope: !1267, inlinedAt: !26165)
!27112 = !DILocation(line: 1038, column: 12, scope: !441, inlinedAt: !26170)
!27113 = !DILocation(line: 296, column: 18, scope: !1273, inlinedAt: !26169)
!27114 = !DILocation(line: 2173, column: 15, scope: !1274, inlinedAt: !26171)
!27115 = !DILocation(line: 2173, column: 9, scope: !1274, inlinedAt: !26171)
!27116 = !DILocation(line: 835, column: 9, scope: !1275, inlinedAt: !26172)
!27117 = !DILocation(line: 27, column: 39, scope: !1277, inlinedAt: !26179)
!27118 = !DILocation(line: 30, column: 34, scope: !1278, inlinedAt: !26179)
!27119 = !DILocation(line: 30, column: 9, scope: !1278, inlinedAt: !26179)
!27120 = !DILocation(line: 552, column: 14, scope: !1279, inlinedAt: !26180)
!27121 = !DILocation(line: 73, column: 13, scope: !1280, inlinedAt: !26165)
!27122 = !DILocation(line: 70, column: 16, scope: !1267, inlinedAt: !26165)
!27123 = !DILocation(line: 74, column: 26, scope: !1281, inlinedAt: !26181)
!27124 = !DILocation(line: 552, column: 14, scope: !1282, inlinedAt: !26185)
!27125 = !DILocation(line: 839, column: 6, scope: !1285, inlinedAt: !26186)
!27126 = !DILocation(line: 195, column: 9, scope: !1268, inlinedAt: !26164)
!27127 = !DILocation(line: 0, scope: !1267, inlinedAt: !26165)
!27128 = !DILocation(line: 2652, column: 25, scope: !26187, inlinedAt: !26167)
!27129 = !DILocation(line: 57, column: 9, scope: !26160, inlinedAt: !26161)
!27130 = !DILocation(line: 472, column: 13, scope: !26107, inlinedAt: !25851)
!27131 = !DILocation(line: 819, column: 9, scope: !26188, inlinedAt: !26189)
!27132 = !DILocation(line: 472, column: 46, scope: !26107, inlinedAt: !25851)
!27133 = !DILocation(line: 2173, column: 15, scope: !26190, inlinedAt: !26191)
!27134 = !DILocation(line: 0, scope: !26190, inlinedAt: !26191)
!27135 = !DILocation(line: 2173, column: 9, scope: !26190, inlinedAt: !26191)
!27136 = !DILocation(line: 2175, column: 17, scope: !26190, inlinedAt: !26191)
!27137 = !DILocation(line: 472, column: 47, scope: !26107, inlinedAt: !25851)
!27138 = !DILocation(line: 2189, column: 23, scope: !26192, inlinedAt: !26195)
!27139 = !DILocation(line: 779, column: 12, scope: !127, inlinedAt: !26199)
!27140 = !DILocation(line: 780, column: 13, scope: !127, inlinedAt: !26199)
!27141 = !DILocation(line: 477, column: 9, scope: !26107, inlinedAt: !25851)
!27142 = !DILocation(line: 470, column: 9, scope: !26107, inlinedAt: !25851)
!27143 = !DILocation(line: 478, column: 6, scope: !25850, inlinedAt: !25851)
!27144 = !DILocation(line: 779, column: 12, scope: !127, inlinedAt: !26203)
!27145 = !DILocation(line: 780, column: 13, scope: !127, inlinedAt: !26203)
!27146 = !DILocation(line: 396, column: 5, scope: !25850, inlinedAt: !25851)
!27147 = !DILocation(line: 349, column: 13, scope: !25350, inlinedAt: !25219)
!27148 = !DILocation(line: 336, column: 5, scope: !25218, inlinedAt: !25219)
!27149 = !DILocation(line: 2173, column: 15, scope: !26204, inlinedAt: !26509)
!27150 = !DILocation(line: 0, scope: !26204, inlinedAt: !26509)
!27151 = !DILocation(line: 2173, column: 9, scope: !26204, inlinedAt: !26509)
!27152 = !DILocation(line: 330, column: 41, scope: !25206)
!27153 = !DILocation(line: 330, column: 43, scope: !25206)
!27154 = !DILocation(line: 810, column: 1, scope: !70, inlinedAt: !26205)
!27155 = !DILocation(line: 810, column: 1, scope: !71, inlinedAt: !26206)
!27156 = !DILocation(line: 0, scope: !25171)
!27157 = !DILocation(line: 810, column: 1, scope: !71, inlinedAt: !26207)
!27158 = !DILocation(line: 2174, column: 16, scope: !26204, inlinedAt: !26509)
!27159 = !DILocation(line: 1037, column: 19, scope: !26211, inlinedAt: !26213)
!27160 = !DILocation(line: 619, column: 49, scope: !26214, inlinedAt: !26218)
!27161 = !DILocation(line: 1040, column: 12, scope: !26216, inlinedAt: !26213)
!27162 = !DILocation(line: 1041, column: 22, scope: !26216, inlinedAt: !26213)
!27163 = !DILocation(line: 1050, column: 5, scope: !26211, inlinedAt: !26213)
!27164 = !DILocation(line: 1035, column: 5, scope: !26211, inlinedAt: !26213)
!27165 = !DILocation(line: 614, column: 9, scope: !26219, inlinedAt: !26226)
!27166 = !DILocation(line: 961, column: 18, scope: !26227, inlinedAt: !26228)
!27167 = !DILocation(line: 1045, column: 29, scope: !26229, inlinedAt: !26213)
!27168 = !DILocation(line: 1046, column: 13, scope: !26229, inlinedAt: !26213)
!27169 = !DILocation(line: 3024, column: 19, scope: !25173, inlinedAt: !26513)
!27170 = !DILocation(line: 3029, column: 37, scope: !26230, inlinedAt: !26513)
!27171 = !DILocation(line: 3029, column: 18, scope: !26230, inlinedAt: !26513)
!27172 = !DILocation(line: 322, column: 5, scope: !25171)
!27173 = distinct !DISubprogram(name: "parse_logical_type", linkageName: "_RNvMs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB5_6Parser18parse_logical_type", scope: !1966, file: !1902, line: 509, type: !1338, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27174 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet", scope: !1880, file: !1877, line: 20, type: !1322, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27175 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27176 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq", scope: !1885, file: !1882, line: 29, type: !1322, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27177 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet", scope: !1881, file: !1381, line: 2123, type: !1322, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27178 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsfISxE4fmY1Y_14polars_parquet", scope: !1879, file: !1877, line: 152, type: !1322, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27179 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27180 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27181 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27182 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27183 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27184 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB4_9TokenizerNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next", scope: !1967, file: !1902, line: 229, type: !1322, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27185 = distinct !DILexicalBlock(scope: !27173, file: !1902, line: 514, column: 83)
!27186 = distinct !DISubprogram(name: "len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecReE3lenCsfISxE4fmY1Y_14polars_parquet", scope: !1525, file: !1523, line: 3023, type: !1322, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27187 = distinct !DILexicalBlock(scope: !27186, file: !1523, line: 3024, column: 9)
!27188 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27189 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27190 = distinct !DILexicalBlock(scope: !27173, file: !1902, line: 539, column: 91)
!27191 = distinct !DILexicalBlock(scope: !27186, file: !1523, line: 3024, column: 9)
!27192 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27193 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27194 = distinct !DILexicalBlock(scope: !27173, file: !1902, line: 567, column: 91)
!27195 = distinct !DILexicalBlock(scope: !27186, file: !1523, line: 3024, column: 9)
!27196 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27197 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27198 = distinct !DILexicalBlock(scope: !27173, file: !1902, line: 596, column: 87)
!27199 = distinct !DILexicalBlock(scope: !27186, file: !1523, line: 3024, column: 9)
!27200 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27201 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27202 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27203 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27204 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27205 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27206 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27207 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27208 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27209 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27210 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27211 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27212 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !1528, file: !1526, line: 433, type: !1322, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27213 = distinct !DISubprogram(name: "oos<&str>", linkageName: "_RINvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB3_12ParquetError3oosReEB7_", scope: !1910, file: !1908, line: 38, type: !1322, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27214 = distinct !DISubprogram(name: "into<&str, alloc::string::String>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCsgZ49sUHp3tW_5alloc6string6StringE4intoCsfISxE4fmY1Y_14polars_parquet", scope: !1371, file: !1369, line: 777, type: !1322, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27215 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsK_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !1857, file: !1855, line: 3113, type: !1322, scopeLine: 3113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27216 = distinct !DISubprogram(name: "to_owned", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned", scope: !1757, file: !1755, line: 210, type: !1322, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27217 = distinct !DISubprogram(name: "to_owned<u8>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc5sliceShNtNtB7_6borrow7ToOwned8to_ownedCsfISxE4fmY1Y_14polars_parquet", scope: !1754, file: !1749, line: 841, type: !1322, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27218 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSh6to_vecCsfISxE4fmY1Y_14polars_parquet", scope: !1751, file: !1749, line: 372, type: !1322, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27219 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !1751, file: !1749, line: 396, type: !1322, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27220 = distinct !DISubprogram(name: "to_vec<u8, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet", scope: !1753, file: !1749, line: 446, type: !1322, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27221 = distinct !DILexicalBlock(scope: !27220, file: !1749, line: 447, column: 17)
!27222 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !1525, file: !1523, line: 976, type: !1322, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27223 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !1529, file: !1526, line: 175, type: !1322, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27224 = distinct !DILexicalBlock(scope: !27212, file: !1526, line: 442, column: 13)
!27225 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCsfISxE4fmY1Y_14polars_parquet", scope: !1528, file: !1526, line: 766, type: !1322, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27226 = distinct !DILexicalBlock(scope: !27212, file: !1526, line: 435, column: 13)
!27227 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1759, file: !1758, line: 202, type: !1322, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27228 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECsfISxE4fmY1Y_14polars_parquet", scope: !1343, file: !1342, line: 531, type: !1322, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27229 = distinct !DILexicalBlock(scope: !27221, file: !1749, line: 448, column: 17)
!27230 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh22copy_to_nonoverlappingCsfISxE4fmY1Y_14polars_parquet", scope: !1364, file: !1362, line: 1247, type: !1322, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27231 = distinct !DISubprogram(name: "backtrack", linkageName: "_RNvMNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema10io_message12from_messageNtB2_9Tokenizer9backtrack", scope: !1918, file: !1902, line: 221, type: !1322, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27232 = distinct !DILexicalBlock(scope: !27220, file: !1749, line: 447, column: 17)
!27233 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullReECsfISxE4fmY1Y_14polars_parquet", scope: !1528, file: !1526, line: 613, type: !1322, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27234 = distinct !DISubprogram(name: "index<&str, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecReEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !1865, file: !1523, line: 3830, type: !1322, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27235 = distinct !DISubprogram(name: "deref<&str, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecReENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCsfISxE4fmY1Y_14polars_parquet", scope: !1819, file: !1523, line: 3755, type: !1322, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27236 = distinct !DISubprogram(name: "as_slice<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecReE8as_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !1525, file: !1523, line: 1824, type: !1322, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27237 = distinct !DISubprogram(name: "as_ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecReE6as_ptrCsfISxE4fmY1Y_14polars_parquet", scope: !1525, file: !1523, line: 1939, type: !1322, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27238 = distinct !DISubprogram(name: "ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecReE3ptrCsfISxE4fmY1Y_14polars_parquet", scope: !1529, file: !1526, line: 295, type: !1322, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27239 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrReECsfISxE4fmY1Y_14polars_parquet", scope: !1528, file: !1526, line: 608, type: !1322, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27240 = distinct !DISubprogram(name: "index<&str>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !1720, file: !1673, line: 270, type: !1322, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27241 = distinct !DISubprogram(name: "index<&str, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSReINtNtNtB6_3ops5index5IndexjE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !1740, file: !1673, line: 18, type: !1322, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27242 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27243 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27244 = distinct !DILexicalBlock(scope: !27212, file: !1526, line: 442, column: 13)
!27245 = distinct !DILexicalBlock(scope: !27212, file: !1526, line: 435, column: 13)
!27246 = distinct !DILexicalBlock(scope: !27232, file: !1749, line: 448, column: 17)
!27247 = distinct !DISubprogram(name: "branch<i32, polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultlNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorENtNtNtB7_3ops9try_trait3Try6branchBR_", scope: !1580, file: !1421, line: 2172, type: !1322, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27248 = distinct !DISubprogram(name: "from_residual<polars_parquet::parquet::parquet_bridge::PrimitiveLogicalType, polars_parquet::parquet::error::ParquetError, polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge20PrimitiveLogicalTypeNtNtBO_5error12ParquetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB24_EE13from_residualBQ_", scope: !1691, file: !1421, line: 2187, type: !1322, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27249 = distinct !DILexicalBlock(scope: !27248, file: !1421, line: 2189, column: 13)
!27250 = distinct !DILexicalBlock(scope: !27198, file: !1902, line: 601, column: 22)
!27251 = distinct !DILexicalBlock(scope: !27250, file: !1902, line: 601, column: 22)
!27252 = distinct !DILexicalBlock(scope: !27198, file: !1902, line: 597, column: 21)
!27253 = distinct !DILexicalBlock(scope: !27252, file: !1902, line: 602, column: 78)
!27254 = distinct !DILexicalBlock(scope: !27186, file: !1523, line: 3024, column: 9)
!27255 = distinct !DILexicalBlock(scope: !27220, file: !1749, line: 447, column: 17)
!27256 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27257 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27258 = distinct !DILexicalBlock(scope: !27212, file: !1526, line: 442, column: 13)
!27259 = distinct !DILexicalBlock(scope: !27212, file: !1526, line: 435, column: 13)
!27260 = distinct !DILexicalBlock(scope: !27255, file: !1749, line: 448, column: 17)
!27261 = distinct !DISubprogram(name: "branch<bool, polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultbNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorENtNtNtB7_3ops9try_trait3Try6branchBR_", scope: !1580, file: !1421, line: 2172, type: !1322, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27262 = distinct !DILexicalBlock(scope: !27248, file: !1421, line: 2189, column: 13)
!27263 = distinct !DILexicalBlock(scope: !27253, file: !1902, line: 607, column: 26)
!27264 = distinct !DILexicalBlock(scope: !27263, file: !1902, line: 607, column: 26)
!27265 = distinct !DILexicalBlock(scope: !27252, file: !1902, line: 602, column: 21)
!27266 = distinct !DILexicalBlock(scope: !27186, file: !1523, line: 3024, column: 9)
!27267 = distinct !DISubprogram(name: "branch<(), polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorENtNtNtB7_3ops9try_trait3Try6branchBR_", scope: !1580, file: !1421, line: 2172, type: !1322, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27268 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsf_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_11IntegerTypeINtNtCscgRAwXFJnXP_4core7convert4FromTlbEE4from", scope: !27586, file: !1618, line: 397, type: !1322, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27269 = distinct !DILexicalBlock(scope: !27268, file: !1618, line: 397, column: 58)
!27270 = distinct !DILexicalBlock(scope: !27173, file: !1902, line: 596, column: 17)
!27271 = distinct !DISubprogram(name: "into<(i32, bool), polars_parquet::parquet::parquet_bridge::IntegerType>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertTlbEINtB5_4IntoNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge11IntegerTypeE4intoBT_", scope: !1371, file: !1369, line: 777, type: !1322, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27272 = distinct !DILexicalBlock(scope: !27174, file: !1877, line: 21, column: 9)
!27273 = distinct !DILexicalBlock(scope: !27178, file: !1877, line: 157, column: 13)
!27274 = distinct !DISubprogram(name: "branch<polars_parquet::parquet::parquet_bridge::TimeUnit, polars_parquet::parquet::error::ParquetError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8TimeUnitNtNtBO_5error12ParquetErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_", scope: !1580, file: !1421, line: 2172, type: !1322, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27275 = distinct !DILexicalBlock(scope: !27248, file: !1421, line: 2189, column: 13)
!27276 = distinct !DILexicalBlock(scope: !27194, file: !1902, line: 572, column: 22)
end_hunk_2
