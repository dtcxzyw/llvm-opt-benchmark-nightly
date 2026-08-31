Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.13?download=true
inline.NumInlined: 109
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8document5start:bb.a
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i64 0, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i64 -1, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store i64 -1, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 407
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(95) %.sroa.15.0..sroa_idx, i8 0, i64 95, i1 false)
  store i8 -1, ptr %.sroa.33.0..sroa_idx, align 1
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store i8 -1, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 409
  store i8 -92, ptr %.sroa.35.0..sroa_idx, align 1
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 410
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.36.0..sroa_idx, i8 30, i64 6, i1 false)
  store i8 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 417
  store i8 0, ptr %.sroa.43.0..sroa_idx, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 653
  store i32 0, ptr %i.q, align 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !86
  %i.r = tail call noundef align 8 dereferenceable_or_null(664) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 664, i64 noundef 8) #17, !noalias !86 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerE3newBH_.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 664) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(664) %i.c) #16
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.c, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body ], [ %i.t, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerE3newBH_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.r, ptr noundef nonnull align 8 dereferenceable(664) %i.c, i64 664, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  %.val = load ptr, ptr %i.v, align 8, !align !5, !noundef !4 ; 4 uses
  %i.w = icmp eq ptr %.val, null
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEEEB1z_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerE3newBH_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(664) %.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEEB1d_.exit.i unwind label %.body, !inline_history !89

.body:                                            ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 664, i64 noundef 8) #17, !inline_history !89
  store ptr %i.r, ptr %i.v, align 8
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEEB1d_.exit.i: ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 664, i64 noundef 8) #17, !inline_history !89
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEEEB1z_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEEEB1z_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerEEB1d_.exit.i, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCs2KzzoC5ewhj_8markdown9tokenizer9TokenizerE3newBH_.exit
  store ptr %i.r, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 60, ptr %i.y, align 8
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 17, ptr %i.z, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8document8flow_end(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 3 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 12 uses
  %i.n = load ptr, ptr %i.m, align 8, !align !5, !noundef !4
  %.not41 = icmp eq ptr %i.n, null
  br i1 %.not41, label %bb.c, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 6 uses
  %.sroa.010.0.copyload = load i64, ptr %i.o, align 8 ; 2 uses
  store i64 -1, ptr %i.o, align 8
  %.not42 = icmp eq i64 %.sroa.010.0.copyload, -1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %.not42, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5state5StateEBF_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5state5StateEBF_.exit: ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i16 71, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5state5StateEBF_.exit
  %i.p = phi i64 [ -9223372036854775808, %bb.d ], [ %.sroa.010.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5state5StateEBF_.exit ] ; 2 uses
  store i64 %i.p, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 -1, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !90, !noalias !93, !noundef !4 ; 3 uses
  %i.t = load i64, ptr %i.q, align 8, !range !43, !alias.scope !90, !noalias !93, !noundef !4
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEE8grow_oneB1H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.i unwind label %bb.g, !noalias !93

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEEB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #16
          to label %bb.bl unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !90, !noalias !93, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.aa = add i64 %i.s, 1
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !90, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ab = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 632
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 640
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4push(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(664) %i.ab, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %i.ah, i64 noundef %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ak = load i64, ptr %i.o, align 8, !range !13, !alias.scope !95, !noundef !4
  %i.al = icmp sgt i64 %i.ak, -1
  br i1 %i.al, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown7message7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit unwind label %.thread

.thread:                                          ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.an = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %._crit_edge.thread, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 504
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %2 = add nsw i64 %i.ap, -1                      ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.at, i64 %2
  %4 = load i8, ptr %3, align 1, !range !26, !noundef !4 ; 2 uses
  %i.au = icmp eq i64 %2, 0
  br i1 %i.au, label %._crit_edge, label %switch.early.test138

._crit_edge:                                      ; preds = %.peel.next, %bb.k
  %.lcssa137 = phi i8 [ %4, %bb.k ], [ %i.ax, %.peel.next ]
  switch i8 %.lcssa137, label %._crit_edge.thread [
    i8 78, label %bb.l
    i8 29, label %bb.l
  ]

.peel.next:                                       ; preds = %switch.early.test138
  %i.av = add i64 %i.ba, -1                       ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !range !26, !noundef !4 ; 2 uses
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %._crit_edge, label %switch.early.test138

switch.early.test138:                             ; preds = %bb.k, %.peel.next
  %i.az = phi i8 [ %i.ax, %.peel.next ], [ %4, %bb.k ]
  %i.ba = phi i64 [ %i.av, %.peel.next ], [ %2, %bb.k ]
  switch i8 %i.az, label %.peel.next [
    i8 78, label %bb.l
    i8 29, label %bb.l
  ]

._crit_edge.thread:                               ; preds = %._crit_edge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5state5StateEEB11_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 488
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4 ; 4 uses
  %i.bd = icmp ult i64 %i.bc, 115292150460684698
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp eq i64 %i.bc, 0
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %switch.early.test138, %switch.early.test138, %._crit_edge, %._crit_edge, %bb.n, %._crit_edge.thread
  %.sroa.013.0.lcssa124 = phi i8 [ 0, %bb.n ], [ 0, %._crit_edge.thread ], [ 1, %._crit_edge ], [ 1, %._crit_edge ], [ 1, %switch.early.test138 ], [ 1, %switch.early.test138 ] ; 3 uses
  %5 = phi ptr [ %i.bo, %bb.n ], [ %i.an, %._crit_edge.thread ], [ %i.an, %._crit_edge ], [ %i.an, %._crit_edge ], [ %i.an, %switch.early.test138 ], [ %i.an, %switch.early.test138 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 655
  store i8 0, ptr %i.bf, align 1
  %i.bg = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 656
  %i.bi = load i8, ptr %i.bh, align 8, !range !20, !noundef !4
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.t, label %bb.q

bb.m:                                             ; preds = %._crit_edge.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 480
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  %i.bm = add nsw i64 %i.bc, -1
  %i.bn = call noundef i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip8opt_back(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bl, i64 noundef %i.bc, i64 noundef %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 1) ; 3 uses
  %i.bo = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 488
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !4 ; 2 uses
  %i.br = icmp ult i64 %i.bn, %i.bq
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 480
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw [80 x i8], ptr %i.bt, i64 %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 73
  %i.bw = load i8, ptr %i.bv, align 1, !range !26, !noundef !4
  switch i8 %i.bw, label %bb.l [
    i8 91, label %bb.p
    i8 29, label %bb.p
  ]

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bn, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #18
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 655
  store i8 0, ptr %i.bx, align 1
  %i.by = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 656
  %i.ca = load i8, ptr %i.bz, align 8, !range !20, !noundef !4
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.l
  %.sroa.013.2 = phi i8 [ 1, %bb.s ], [ %.sroa.013.0.lcssa124, %bb.t ], [ %.sroa.013.0.lcssa124, %bb.l ], [ 1, %bb.r ], [ 1, %bb.p ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, 576460752303423488
  call void @llvm.assume(i1 %i.cg)
  %.not = icmp eq i64 %i.cd, %i.cf
  br i1 %.not, label %bb.v, label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ci = load i8, ptr %i.ch, align 8, !range !20, !noundef !4
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !4 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 576460752303423488
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 %i.cl, ptr %i.cn, align 8
  br label %bb.q

bb.t:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cp = load i8, ptr %i.co, align 8, !range !20, !noundef !4
  %i.cq = and i8 %i.cp, %.sroa.013.0.lcssa124
  %or.cond7.not = icmp eq i8 %i.cq, 0
  br i1 %or.cond7.not, label %bb.q, label %bb.s

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8document15exit_containers(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef align 8 dereferenceable(664) %1, i8 0)
  %i.cr = load i64, ptr %i.h, align 8, !range !3, !alias.scope !98, !noundef !4
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs2KzzoC5ewhj_8markdown7message7MessageEEB12_.exit, label %bb.w

bb.v:                                             ; preds = %bb.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs2KzzoC5ewhj_8markdown7message7MessageEEB12_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.cu = load i8, ptr %i.ct, align 8, !range !20, !noundef !4
  %i.cv = trunc nuw i8 %i.cu to i1
  store i64 0, ptr %i.cc, align 8
  br i1 %i.cv, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown7message7MessageEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs2KzzoC5ewhj_8markdown7message7MessageEEB12_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs2KzzoC5ewhj_8markdown7message7MessageEEB12_.exit: ; preds = %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i8 %.sroa.013.2, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 653
  store i8 0, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 61, ptr %i.cy, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct8document15exit_containers(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef align 8 dereferenceable(664) %1, i8 2)
  %i.cz = load i64, ptr %i.g, align 8, !range !3, !noundef !4
  %.not44 = icmp eq i64 %i.cz, -1
  br i1 %.not44, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2KzzoC5ewhj_8markdown.exit.i, %bb.x
  %storemerge = phi i64 [ -9223372036854775807, %bb.x ], [ -9223372036854775806, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2KzzoC5ewhj_8markdown.exit.i ]
  store i64 %storemerge, ptr %0, align 8
  br label %bb.bk

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bk

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.da = load ptr, ptr %i.m, align 8, !alias.scope !101, !align !5, !noundef !4 ; 5 uses
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %.noexc48, label %.preheader74.i, !prof !49

.preheader74.i:                                   ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 488
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 115292150460684698
  call void @llvm.assume(i1 %i.dd)
  %.not116.i = icmp eq i64 %i.dc, 0
  br i1 %.not116.i, label %._crit_edge100.i, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %.preheader74.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.ba

.noexc48:                                         ; preds = %bb.ab
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #18
  unreachable

._crit_edge100.i:                                 ; preds = %bb.bj, %.preheader74.i
  %.sroa.011.0.lcssa.i = phi i64 [ 0, %.preheader74.i ], [ %.sroa.011.1.i, %bb.bj ] ; 2 uses
  %.lcssa79.i = phi ptr [ %i.da, %.preheader74.i ], [ %i.kk, %bb.bj ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.lcssa79.i, i64 472
  %i.df = getelementptr inbounds nuw i8, ptr %.lcssa79.i, i64 520
  call void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap7consume(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 6 uses
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !101, !noundef !4 ; 3 uses
  %.not73.i = icmp eq i64 %i.dk, 0
  br i1 %.not73.i, label %._crit_edge105.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge100.i, %bb.ac
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.05.0.i.i.i, %bb.ac ], [ 0, %._crit_edge100.i ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [80 x i8], ptr %i.di, i64 %.sroa.0.06.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 73
  %i.dn = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef range(i64 0, -9223372036854775808) 1)
  br i1 %i.dn, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %.sroa.05.0.i.i.i = add nuw i64 %.sroa.0.06.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.05.0.i.i.i, %i.dk
  br i1 %exitcond.not.i.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i, label %.lr.ph.i.i.i

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i: ; preds = %bb.ac, %.lr.ph.i.i.i
  %.sroa.0.0.lcssa.i.i.ph.i = phi i64 [ %i.dk, %bb.ac ], [ %.sroa.0.06.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.pre124.i = load i64, ptr %i.dj, align 8, !alias.scope !101 ; 4 uses
  %i.do = icmp ult i64 %.pre124.i, 115292150460684698
  call void @llvm.assume(i1 %i.do)
  %i.dp = icmp ult i64 %.sroa.0.0.lcssa.i.i.ph.i, %.pre124.i
  br i1 %i.dp, label %.lr.ph104.i, label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %bb.af, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i, %._crit_edge100.i
  %.sroa.028.0.lcssa.i = phi i64 [ %.sroa.0.0.lcssa.i.i.ph.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i ], [ 0, %._crit_edge100.i ], [ %.sroa.0.0.lcssa.i.i61.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i ], [ %.sroa.028.0103.i, %bb.af ]
  %.lcssa76.i = phi i64 [ %.pre124.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i ], [ 0, %._crit_edge100.i ], [ %i.eh, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i ], [ %i.dy, %bb.af ]
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.dr = load ptr, ptr %i.dh, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  %i.ds = load ptr, ptr %i.m, align 8, !alias.scope !101, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 472
  %i.du = call { i64, i64 } @_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize13divide_events(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dr, i64 noundef %.lcssa76.i, i64 noundef %.sroa.028.0.lcssa.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dt, i64 noundef 0, i64 noundef 0) ; 0 uses
  call void @_RNvMNtNtCs2KzzoC5ewhj_8markdown4util8edit_mapNtB2_7EditMap7consume(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
  %i.dv = load i64, ptr %i.r, align 8, !alias.scope !101, !noundef !4 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 384307168202282326
  call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp ult i64 %.sroa.011.0.lcssa.i, %i.dv
  br i1 %i.dx, label %bb.ah, label %.noexc54

.lr.ph104.i:                                      ; preds = %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i
  %i.dy = phi i64 [ %i.eh, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i ], [ %.pre124.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i ] ; 5 uses
  %.sroa.028.0103.i = phi i64 [ %.sroa.0.0.lcssa.i.i61.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i ], [ %.sroa.0.0.lcssa.i.i.ph.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit.i ] ; 3 uses
  %i.dz = load ptr, ptr %i.dh, align 8, !alias.scope !101, !nonnull !4, !noundef !4 ; 2 uses
  %i.ea = getelementptr inbounds nuw [80 x i8], ptr %i.dz, i64 %.sroa.028.0103.i ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !range !61, !noundef !4
  %.not55.i = icmp eq i64 %i.eb, 2
  br i1 %.not55.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.af, %.lr.ph104.i
  %i.ec = add nuw nsw i64 %.sroa.028.0103.i, 1    ; 3 uses
  %i.ed = icmp samesign ult i64 %i.ec, %i.dy
  br i1 %i.ed, label %.lr.ph.i.i62.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i

.lr.ph.i.i62.i:                                   ; preds = %bb.ad, %bb.ae
  %.sroa.0.06.i.i63.i = phi i64 [ %.sroa.05.0.i.i64.i, %bb.ae ], [ %i.ec, %bb.ad ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [80 x i8], ptr %i.dz, i64 %.sroa.0.06.i.i63.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 73
  %i.eg = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown5event4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ef, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef range(i64 0, -9223372036854775808) 1)
  br i1 %i.eg, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i62.i
  %.sroa.05.0.i.i64.i = add i64 %.sroa.0.06.i.i63.i, 1 ; 2 uses
  %exitcond.not.i65.i = icmp eq i64 %.sroa.05.0.i.i64.i, %i.dy
  br i1 %exitcond.not.i65.i, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i, label %.lr.ph.i.i62.i

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i: ; preds = %bb.ae, %.lr.ph.i.i62.i
  %.sroa.0.0.lcssa.i.i61.ph.i = phi i64 [ %i.dy, %bb.ae ], [ %.sroa.0.06.i.i63.i, %.lr.ph.i.i62.i ]
  %.pre125.i = load i64, ptr %i.dj, align 8, !alias.scope !101
  br label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i

_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.i: ; preds = %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i, %bb.ad
  %i.eh = phi i64 [ %i.dy, %bb.ad ], [ %.pre125.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i ] ; 4 uses
  %.sroa.0.0.lcssa.i.i61.i = phi i64 [ %i.ec, %bb.ad ], [ %.sroa.0.0.lcssa.i.i61.ph.i, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util4skip2to.exit66.loopexit.i ] ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 115292150460684698
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp ult i64 %.sroa.0.0.lcssa.i.i61.i, %i.eh
  br i1 %i.ej, label %.lr.ph104.i, label %._crit_edge105.i

bb.af:                                            ; preds = %.lr.ph104.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.el = load i8, ptr %i.ek, align 8, !range !104, !noundef !4
  %.not56.i = icmp eq i8 %i.el, 0
  br i1 %.not56.i, label %._crit_edge105.i, label %bb.ad

.noexc54:                                         ; preds = %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5event5EventEEB1b_.exit.i, %._crit_edge105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !101
  %i.em = load ptr, ptr %i.m, align 8, !alias.scope !101, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 560 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !108, !noalias !105, !noundef !4 ; 9 uses
  %i.ep = icmp sgt i64 %i.eo, -1
  call void @llvm.assume(i1 %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 -576460752303423487, -9223372036854775808) %i.eo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.eq = load i64, ptr %i.b, align 8, !range !51, !noalias !110, !noundef !4
  %i.er = trunc nuw i64 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !52, !noalias !110, !noundef !4 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.er, label %.noexc55, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE9split_offBH_.exit.i, !prof !49

.noexc55:                                         ; preds = %.noexc54
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !110
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.et, i64 %i.ev) #18
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE9split_offBH_.exit.i: ; preds = %.noexc54
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ex = load ptr, ptr %i.eu, align 8, !noalias !110, !nonnull !4, !noundef !4 ; 3 uses
  %i.ey = icmp ule i64 %i.eo, %i.et
  call void @llvm.assume(i1 %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  store i64 %i.et, ptr %i.d, align 8, !alias.scope !105, !noalias !111
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_0
