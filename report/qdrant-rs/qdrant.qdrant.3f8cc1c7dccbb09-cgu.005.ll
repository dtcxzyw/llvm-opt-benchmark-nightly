Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.005?download=true
inline.NumInlined: 10893
inline.NumDeleted: 3937
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6scrollNtNtNtBa_6common11strict_mode28StrictModeCheckedTocProviderE0Ba_:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit204: ; preds = %bb.qe, %bb.ps, %.body184
  %.pn95 = phi { ptr, i32 } [ %i.axs, %bb.ps ], [ %.pn93, %.body184 ], [ %.pn93, %bb.qe ] ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %1, i64 1089
  store i8 0, ptr %i.axo, align 1
  %i.axp = getelementptr inbounds nuw i8, ptr %1, i64 1087
  %i.axq = load i8, ptr %i.axp, align 1, !range !57, !noundef !20
  %i.axr = trunc nuw i8 %i.axq to i1
  br i1 %i.axr, label %bb.qf, label %bb.pv

bb.ps:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit196
  %i.axs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit204

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit196
  %i.axt = getelementptr inbounds nuw i8, ptr %1, i64 1089
  store i8 0, ptr %i.axt, align 1
  %i.axu = getelementptr inbounds nuw i8, ptr %1, i64 1087 ; 2 uses
  %i.axv = load i8, ptr %i.axu, align 1, !range !57, !noundef !20
  %i.axw = trunc nuw i8 %i.axv to i1
  br i1 %i.axw, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %bb.pu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit
  store i8 0, ptr %i.axu, align 1
  br label %bb.oq

bb.pu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit
  %i.axx = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.axx)
          to label %bb.pt unwind label %bb.pw

bb.pv:                                            ; preds = %bb.qf, %bb.pw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit204
  %.pn97 = phi { ptr, i32 } [ %i.axz, %bb.pw ], [ %.pn95, %bb.qf ], [ %.pn95, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit204 ]
  %i.axy = getelementptr inbounds nuw i8, ptr %1, i64 1087
  store i8 0, ptr %i.axy, align 1
  store i8 2, ptr %i.cb, align 8
  resume { ptr, i32 } %.pn97

bb.pw:                                            ; preds = %bb.pu
  %i.axz = landingpad { ptr, i32 }
          cleanup
  br label %bb.pv

bb.px:                                            ; preds = %bb.gw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bj) #22
          to label %bb.hf unwind label %bb.ai

bb.py:                                            ; preds = %.body142
  %i.aya = getelementptr inbounds nuw i8, ptr %1, i64 808
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard6scroll21ScrollRequestInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(272) %i.aya) #22
          to label %bb.aq unwind label %bb.ai

bb.pz:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7OrderByECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7OrderByEECsl8OoimOLbh_6qdrant.exit200 unwind label %bb.ai

bb.qa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7OrderByEECsl8OoimOLbh_6qdrant.exit200
  %i.ayb = getelementptr inbounds nuw i8, ptr %1, i64 1096
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16ShardKeySelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ayb) #22
          to label %bb.pe unwind label %bb.ai

bb.qb:                                            ; preds = %bb.pe
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithVectorsSelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bx) #22
          to label %.body188 unwind label %bb.ai

bb.qc:                                            ; preds = %.body188
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.by) #22
          to label %bb.pm unwind label %bb.ai

bb.qd:                                            ; preds = %bb.pm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ca)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECsl8OoimOLbh_6qdrant.exit202 unwind label %bb.ai

bb.qe:                                            ; preds = %.body184
  %i.ayc = getelementptr inbounds nuw i8, ptr %1, i64 712
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ayc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit204 unwind label %bb.ai

bb.qf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc18request_hw_counter16RequestHwCounterECsl8OoimOLbh_6qdrant.exit204
  %i.ayd = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ayd) #22
          to label %bb.pv unwind label %bb.ai
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtBa_6common11strict_mode28StrictModeCheckedTocProviderE0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(248) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 5 uses
  %.sroa.57.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.53.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i = alloca [15 x i8], align 1  ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [104 x i8], align 8               ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [176 x i8], align 8               ; 14 uses
  %i.j = alloca [104 x i8], align 8               ; 7 uses
  %i.k = alloca [112 x i8], align 8               ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.3229.i.i.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.5230.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.9209.i.i.i.i = alloca [36 x i8], align 4 ; 4 uses
  %.sroa.6192.i.i.i.i = alloca [24 x i8], align 8 ; 10 uses
  %.sroa.9195.i.i.i.i = alloca [16 x i8], align 8 ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [128 x i8], align 8               ; 21 uses
  %.sroa.3.i.i.i.i = alloca [24 x i8], align 8    ; 7 uses
  %.sroa.5163.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %i.u = alloca [472 x i8], align 8               ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [472 x i8], align 8               ; 17 uses
  %i.y = alloca [16 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [56 x i8], align 8               ; 24 uses
  %.sroa.3130.i.i.i = alloca [24 x i8], align 8   ; 7 uses
  %.sroa.5131.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %.sroa.11127.i.i.i = alloca [24 x i8], align 8  ; 7 uses
  %.sroa.12128.i.i.i = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.10113.i.i.i = alloca [36 x i8], align 4  ; 4 uses
  %.sroa.8119.i.i.i = alloca [48 x i8], align 8   ; 7 uses
  %.sroa.6102.i.i.i = alloca [40 x i8], align 8   ; 6 uses
  %i.ab = alloca [56 x i8], align 8               ; 11 uses
  %i.ac = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.8.i.i.i = alloca [28 x i8], align 4      ; 7 uses
  %.sroa.11.i.i = alloca [36 x i8], align 4       ; 4 uses
  %i.ad = alloca [56 x i8], align 8               ; 15 uses
  %i.ae = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.3.sroa.8.i = alloca [24 x i8], align 4   ; 6 uses
  %.sroa.947.sroa.9.i = alloca [24 x i8], align 4 ; 7 uses
  %.sroa.11.i = alloca [36 x i8], align 4         ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [128 x i8], align 8              ; 8 uses
  %i.ah = alloca [48 x i8], align 8               ; 8 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [472 x i8], align 8              ; 8 uses
  %i.ak = alloca [56 x i8], align 8               ; 7 uses
  %i.al = alloca [48 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 5 uses
  %i.an = alloca [48 x i8], align 8               ; 5 uses
  %i.ao = alloca [48 x i8], align 8               ; 5 uses
  %i.ap = alloca [296 x i8], align 8              ; 12 uses
  %i.aq = alloca [56 x i8], align 8               ; 22 uses
  %i.ar = alloca [48 x i8], align 8               ; 7 uses
  %i.as = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.3180.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.at = alloca [48 x i8], align 8               ; 7 uses
  %i.au = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.4154.i.i.i.i = alloca [288 x i8], align 8 ; 7 uses
  %i.av = alloca [296 x i8], align 8              ; 7 uses
  %.sroa.6138.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.aw = alloca [56 x i8], align 8               ; 11 uses
  %i.ax = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.8.i.i.i.i = alloca [28 x i8], align 4    ; 7 uses
  %.sroa.3.sroa.3.i = alloca [40 x i8], align 4   ; 7 uses
  %.sroa.1022.sroa.7.i = alloca [40 x i8], align 4 ; 7 uses
  %.sroa.9.i = alloca [15 x i8], align 1          ; 4 uses
  %.sroa.18450 = alloca [232 x i8], align 8       ; 2 uses
  %i.ay = alloca [248 x i8], align 8              ; 7 uses
  %i.az = alloca [40 x i8], align 8               ; 5 uses
  %i.ba = alloca [64 x i8], align 8               ; 5 uses
  %i.bb = alloca [112 x i8], align 8              ; 6 uses
  %i.bc = alloca [112 x i8], align 8              ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [144 x i8], align 8              ; 7 uses
  %.sroa.3423.sroa.8 = alloca [24 x i8], align 4  ; 2 uses
  %.sroa.8419.sroa.9 = alloca [24 x i8], align 4  ; 7 uses
  %i.bf = alloca [32 x i8], align 8               ; 5 uses
  %i.bg = alloca [128 x i8], align 8              ; 6 uses
  %i.bh = alloca [48 x i8], align 8               ; 6 uses
  %i.bi = alloca [472 x i8], align 8              ; 6 uses
  %.sroa.12389 = alloca [36 x i8], align 4        ; 5 uses
  %.sroa.2 = alloca [7 x i8], align 1             ; 2 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 9 uses
  %.sroa.8361 = alloca [40 x i8], align 8         ; 3 uses
  %.sroa.10357 = alloca [40 x i8], align 8        ; 9 uses
  %.sroa.7313 = alloca [15 x i8], align 1         ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 7 uses
  %i.bm = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.11304 = alloca [16 x i8], align 8        ; 6 uses
  %.sroa.7577 = alloca [16 x i8], align 8         ; 6 uses
  %i.bn = alloca [176 x i8], align 8              ; 7 uses
  %i.bo = alloca [176 x i8], align 8              ; 9 uses
  %.sroa.11291 = alloca [160 x i8], align 8       ; 6 uses
  %i.bp = alloca [176 x i8], align 8              ; 15 uses
  %i.bq = alloca [104 x i8], align 8              ; 7 uses
  %i.br = alloca [104 x i8], align 8              ; 9 uses
  %.sroa.11278 = alloca [88 x i8], align 8        ; 6 uses
  %i.bs = alloca [104 x i8], align 8              ; 24 uses
  %i.bt = alloca [112 x i8], align 8              ; 22 uses
  %i.bu = alloca [48 x i8], align 8               ; 5 uses
  %i.bv = alloca [48 x i8], align 8               ; 8 uses
  %i.bw = alloca [24 x i8], align 8               ; 5 uses
  %i.bx = alloca [72 x i8], align 8               ; 8 uses
  %i.by = alloca [72 x i8], align 8               ; 19 uses
  %i.bz = alloca [48 x i8], align 8               ; 13 uses
  %i.ca = alloca [48 x i8], align 8               ; 12 uses
  %i.cb = alloca [24 x i8], align 8               ; 17 uses
  %i.cc = alloca [24 x i8], align 8               ; 10 uses
  %i.cd = alloca [176 x i8], align 8              ; 14 uses
  %i.ce = alloca [32 x i8], align 8               ; 12 uses
  %i.cf = alloca [104 x i8], align 8              ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 1480 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !range !25, !noundef !20
  %.sink673.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  switch i8 %i.ch, label %default.unreachable641 [
    i8 0, label %bb.b
    i8 1, label %bb.be
    i8 2, label %bb.bf
    i8 3, label %bb.bg
    i8 4, label %bb.gp
  ]

default.unreachable641:                           ; preds = %bb.iz, %bb.hn, %bb.gz, %bb.gv, %bb.gp, %bb.bw, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.sink673.sroa.gep699 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 1489
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 1491
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1487
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1486
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1490 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 1485 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1484 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1483 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1482
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1481 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cs, i8 0, i64 3, i1 false)
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !20, !align !22, !noundef !20
  store ptr %i.cv, ptr %i.ct, align 8
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cd, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.13.0..sroa_idx, i64 176, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cf, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.16.0..sroa_idx, i64 104, i1 false)
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.0..sroa_idx, i64 24, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.18.0..sroa_idx, i64 48, i1 false)
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 432
  %.sroa.19.sroa.0.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 8 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.0..sroa_idx, i64 24, i1 false)
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 480
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 484
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.24.0..sroa_idx, i64 32, i1 false)
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.cx = load i32, ptr %i.cw, align 8, !range !94, !noundef !20
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 692
  %i.cz = load i32, ptr %i.cy, align 4
  store i8 1, ptr %i.ci, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.da, ptr noundef nonnull align 8 dereferenceable(128) %i.db, i64 128, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.de = load <2 x i64>, ptr %i.dd, align 8
  store <2 x i64> %i.de, ptr %i.dc, align 8
  store i8 1, ptr %i.cj, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.df, ptr noundef nonnull align 8 dereferenceable(40) %i.dg, i64 40, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 936
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, i64 24, i1 false)
  store i8 1, ptr %i.cn, align 2
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 960
  store i32 16843009, ptr %i.co, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.0..sroa_idx, i64 16, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.dl = load <2 x i64>, ptr %.sroa.11.0..sroa_idx, align 8
  store <2 x i64> %i.dl, ptr %i.dj, align 8
  store i8 1, ptr %i.cp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %.not.i = icmp eq i64 %.sroa.19.sroa.0.0.copyload, -1
  br i1 %.not.i, label %_RNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB4_14VectorInternal23from_vector_and_indices.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.19.sroa.10.0..sroa.19.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 440
  %.sroa.4453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4453.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.sroa.10.0..sroa.19.0..sroa_idx.sroa_idx, i64 16, i1 false)
  br label %_RNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB4_14VectorInternal23from_vector_and_indices.exit

_RNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB4_14VectorInternal23from_vector_and_indices.exit: ; preds = %bb.b, %bb.c
  %.sink673.sroa.phi = phi ptr [ %.sink673.sroa.gep, %bb.c ], [ %.sink673.sroa.gep699, %bb.b ]
  %.sroa.19.sroa.0.0.copyload.sink = phi i64 [ %.sroa.19.sroa.0.0.copyload, %bb.c ], [ -9223372036854775808, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink673.sroa.phi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, i64 24, i1 false)
  store i64 %.sroa.19.sroa.0.0.copyload.sink, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store i8 0, ptr %i.cn, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.0..sroa_idx, i64 24, i1 false)
  invoke void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions24into_named_vector_struct(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bz)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB4_14VectorInternal23from_vector_and_indices.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.bd

bb.e:                                             ; preds = %_RNvMs_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB4_14VectorInternal23from_vector_and_indices.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9881)
  %i.dn = load i64, ptr %i.bx, align 8, !range !9882, !alias.scope !9883, !noundef !20 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !9884 ; 2 uses
  br i1 %i.do, label %bb.bb, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.10.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx219, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  store i8 1, ptr %i.cq, align 1
  store i64 %i.dn, ptr %i.by, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  store ptr %i.dq, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store i8 0, ptr %i.cp, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %i.ca, i64 48, i1 false)
  invoke void @_RNvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common31convert_shard_selector_for_read(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bv, i32 noundef %i.cx, i32 %i.cz, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bu)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.ba

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9885)
  %i.ds = load i64, ptr %i.bv, align 8, !range !95, !alias.scope !9886, !noundef !20 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, -1
  %i.du = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !9887 ; 2 uses
  br i1 %i.dt, label %bb.ay, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.10226.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5230.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10226.0..sroa_idx227, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  store i8 1, ptr %i.cr, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i64 %i.ds, ptr %i.dw, align 8
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store ptr %i.dv, ptr %.sroa.4229.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store i8 0, ptr %i.cq, align 1
  %.sroa.0242.0.copyload = load i64, ptr %i.by, align 8 ; 4 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10244.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.12247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.sroa.12247.0.copyload = load i64, ptr %.sroa.12247.0..sroa_idx, align 8 ; 4 uses
  %.sroa.13250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %.sroa.13250.sroa.0.0.copyload = load i64, ptr %.sroa.13250.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13250.sroa.10.0..sroa.13250.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %.sroa.13250.sroa.7.0.copyload = load i64, ptr %.sroa.13250.sroa.10.0..sroa.13250.0..sroa_idx.sroa_idx.a, align 8 ; 3 uses
  %.sroa.13250.sroa.10.0..sroa.13250.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %3 = load <2 x i64>, ptr %.sroa.13250.sroa.10.0..sroa.13250.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %i.dx = icmp ne i64 %.sroa.0242.0.copyload, -9223372036854775806
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = xor i64 %.sroa.0242.0.copyload, -9223372036854775808
  %i.dz = icmp slt i64 %.sroa.0242.0.copyload, 0
  %i.ea = select i1 %i.dz, i64 %i.dy, i64 2
  %4 = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.12247.0.copyload, i64 0
  switch i64 %i.ea, label %bb.j [
    i64 0, label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.eb = insertelement <2 x i64> %3, i64 undef, i64 1
  br label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

bb.l:                                             ; preds = %bb.i
  %.sroa.16251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %.sroa.16251.0.copyload = load i64, ptr %.sroa.16251.0..sroa_idx, align 8
  br label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

bb.m:                                             ; preds = %bb.i
  br label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  %.sroa.12.sroa.8.0 = phi i64 [ %.sroa.13250.sroa.7.0.copyload, %bb.m ], [ %.sroa.13250.sroa.7.0.copyload, %bb.k ], [ %.sroa.13250.sroa.7.0.copyload, %bb.l ], [ %.sroa.10244.0.copyload, %bb.i ]
  %.sroa.12.sroa.0.0 = phi i64 [ %.sroa.13250.sroa.0.0.copyload, %bb.m ], [ %.sroa.13250.sroa.0.0.copyload, %bb.k ], [ %.sroa.13250.sroa.0.0.copyload, %bb.l ], [ %.sroa.6.0.copyload, %bb.i ]
  %.sroa.8235.sroa.7.0 = phi i64 [ %.sroa.12247.0.copyload, %bb.m ], [ %.sroa.12247.0.copyload, %bb.k ], [ %.sroa.10244.0.copyload, %bb.l ], [ undef, %bb.i ]
  %.sroa.8235.sroa.0.0 = phi i64 [ %.sroa.10244.0.copyload, %bb.m ], [ %.sroa.10244.0.copyload, %bb.k ], [ %.sroa.6.0.copyload, %bb.l ], [ undef, %bb.i ]
  %.sroa.15241.0 = phi i64 [ undef, %bb.m ], [ undef, %bb.k ], [ %.sroa.16251.0.copyload, %bb.l ], [ undef, %bb.i ]
  %.sroa.8239.0 = phi i64 [ -9223372036854775806, %bb.m ], [ -9223372036854775808, %bb.k ], [ %.sroa.12247.0.copyload, %bb.l ], [ -9223372036854775808, %bb.i ]
  %.sroa.0231.0 = phi i64 [ %.sroa.6.0.copyload, %bb.m ], [ %.sroa.6.0.copyload, %bb.k ], [ %.sroa.0242.0.copyload, %bb.l ], [ -1, %bb.i ]
  %i.ec = phi <2 x i64> [ %3, %bb.m ], [ %i.eb, %bb.k ], [ %3, %bb.l ], [ %4, %bb.i ]
  %5 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.0231.0, ptr %5, align 8
  %.sroa.8235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %.sroa.8235.sroa.0.0, ptr %.sroa.8235.0..sroa_idx, align 8
  %.sroa.8235.sroa.7.0..sroa.8235.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 %.sroa.8235.sroa.7.0, ptr %.sroa.8235.sroa.7.0..sroa.8235.0..sroa_idx.sroa_idx, align 8
  %.sroa.8239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i64 %.sroa.8239.0, ptr %.sroa.8239.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx240 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i64 %.sroa.12.sroa.0.0, ptr %.sroa.12.0..sroa_idx240, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store i64 %.sroa.12.sroa.8.0, ptr %i.ed, align 8
  %.sroa.12.sroa.9.0..sroa.12.0..sroa_idx240.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  store <2 x i64> %i.ec, ptr %.sroa.12.sroa.9.0..sroa.12.0..sroa_idx240.sroa_idx, align 8
  %.sroa.15241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  store i64 %.sroa.15241.0, ptr %.sroa.15241.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store i8 0, ptr %i.ck, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bq, ptr noundef nonnull align 8 dereferenceable(104) %i.cf, i64 104, i1 false)
  %i.ee = load i64, ptr %i.bq, align 8, !range !31, !alias.scope !9888, !noundef !20
  %.not.i109 = icmp eq i64 %i.ee, -1
  br i1 %.not.i109, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit
  invoke void @_RNvXs1c_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types6FilterINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant6FilterE8try_from(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %i.bq)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit unwind label %bb.o

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit.thread: ; preds = %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11278)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query10query_enum9QueryEnumECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(112) %i.bt) #22
          to label %bb.au unwind label %bb.ag

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit: ; preds = %bb.n
  %.pr = load i64, ptr %i.br, align 8, !alias.scope !9889 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9890)
  switch i64 %.pr, label %bb.p [
    i64 -3, label %bb.q
    i64 -2, label %bb.av
  ]

bb.p:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit
  %.sroa.8277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.8277.0.copyload = load ptr, ptr %.sroa.8277.0..sroa_idx, align 8, !alias.scope !9891
  %.sroa.11278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11278, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11278.0..sroa_idx, i64 88, i1 false), !alias.scope !9891
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit.thread, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit
  %.sroa.8277.0.ph = phi ptr [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit ], [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit.thread ], [ %.sroa.8277.0.copyload, %bb.p ]
  %.sroa.0276.0.ph = phi i64 [ -2, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit ], [ -2, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types6FilterNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3j_6common11strict_mode28StrictModeCheckedTocProviderE0s_0EB3j_.exit.thread ], [ %.pr, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %.sroa.5281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5281.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11278, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11278)
  store i64 %.sroa.0276.0.ph, ptr %i.bs, align 8
  %.sroa.4280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.sroa.8277.0.ph, ptr %.sroa.4280.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store i8 0, ptr %i.cm, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bn, ptr noundef nonnull align 8 dereferenceable(176) %i.cd, i64 176, i1 false)
  %i.eg = load i64, ptr %i.bn, align 8, !range !19, !alias.scope !9892, !noundef !20
  %.not.i110 = icmp eq i64 %i.eg, 2
  br i1 %.not.i110, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types12SearchParamsINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant12SearchParamsE8try_from(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %i.bn)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit unwind label %bb.s

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11291)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.ei = load i64, ptr %i.bs, align 8, !range !32, !alias.scope !9893, !noundef !20
  %i.ej = icmp eq i64 %i.ei, -2
  br i1 %i.ej, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant.exit, label %bb.u

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.r
  %.pr471 = load i64, ptr %i.bo, align 8, !alias.scope !9894 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9895)
  switch i64 %.pr471, label %bb.t [
    i64 -1, label %bb.v
    i64 2, label %bb.aq
  ]

bb.t:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit
  %.sroa.8290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.8290.0.copyload = load ptr, ptr %.sroa.8290.0..sroa_idx, align 8, !alias.scope !9896
  %.sroa.11291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.11291, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.11291.0..sroa_idx, i64 160, i1 false), !alias.scope !9896
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.bs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ag

bb.v:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit.thread, %bb.t
  %.sroa.8290.0.ph = phi ptr [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit ], [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.8290.0.copyload, %bb.t ]
  %.sroa.0289.0.ph = phi i64 [ 2, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit ], [ 2, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types12SearchParamsNtNtCsgOCJwUSa4vG_5tonic6status6StatusENvYBI_INtNtB5_7convert7TryIntoB1X_E8try_intoECsl8OoimOLbh_6qdrant.exit.thread ], [ %.pr471, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %.sroa.5294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5294.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.11291, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11291)
  store i64 %.sroa.0289.0.ph, ptr %i.bp, align 8
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %.sroa.8290.0.ph, ptr %.sroa.4293.0..sroa_idx, align 8
  %i.ek = trunc nuw i64 %.sroa.0.0.copyload to i1
  %spec.select.i = select i1 %i.ek, i64 %.sroa.10.0.copyload, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7577)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i8 0, ptr %i.cl, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false)
  %i.el = load i8, ptr %i.bl, align 8, !range !39, !alias.scope !9897, !noundef !20
  %.not.i114 = icmp eq i8 %i.el, -2
  br i1 %.not.i114, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXsx_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant19WithPayloadSelectorE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.bl)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit unwind label %bb.x

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit.thread: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11304)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7577)
  %i.en = load i64, ptr %i.bp, align 8, !range !19, !alias.scope !9898, !noundef !20
  %i.eo = icmp eq i64 %i.en, 2
  br i1 %i.eo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types12SearchParamsEECsl8OoimOLbh_6qdrant.exit117, label %bb.z

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit: ; preds = %bb.w
  %.pr480 = load i64, ptr %i.bm, align 8, !alias.scope !9899 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9900)
  switch i64 %.pr480, label %bb.y [
    i64 -2, label %bb.ab
    i64 -1, label %bb.ah
  ]

bb.y:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit
  %.sroa.8303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.8303.0.copyload = load ptr, ptr %.sroa.8303.0..sroa_idx, align 8, !alias.scope !9901
  %.sroa.11304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11304, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11304.0..sroa_idx, i64 16, i1 false), !alias.scope !9901
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !range !37, !alias.scope !9902, !noundef !20
  %i.er = icmp slt i64 %i.eq, -1
  br i1 %i.er, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types12SearchParamsEECsl8OoimOLbh_6qdrant.exit117, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ep)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types12SearchParamsEECsl8OoimOLbh_6qdrant.exit117 unwind label %bb.ag

bb.ab:                                            ; preds = %bb.y, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit.thread, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit
  %.sroa.8303.0.ph = phi ptr [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit ], [ undef, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit.thread ], [ %.sroa.8303.0.copyload, %bb.y ]
  %.sroa.0302.0.ph = phi i64 [ -1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit ], [ -1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorE3mapINtNtB5_6result6ResultNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceNtNtCsgOCJwUSa4vG_5tonic6status6StatusENCNCINvNtNtNtCsl8OoimOLbh_6qdrant5tonic3api12query_common6searchNtNtNtB3M_6common11strict_mode28StrictModeCheckedTocProviderE0s0_0EB3M_.exit.thread ], [ %.pr480, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7577, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11304, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11304)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7313)
  store i8 0, ptr %i.co, align 1
  %.sroa.0321.0.copyload = load i64, ptr %i.cb, align 8 ; 4 uses
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.5322.0.copyload = load i8, ptr %.sroa.5322.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 9
  %.not.i118 = icmp eq i64 %.sroa.0321.0.copyload, -3
  br i1 %.not.i118, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  switch i64 %.sroa.0321.0.copyload, label %bb.ad [
    i64 -2, label %bb.af
    i64 -1, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6323.0..sroa_idx, i64 15, i1 false)
  br label %bb.af
end_hunk_0
