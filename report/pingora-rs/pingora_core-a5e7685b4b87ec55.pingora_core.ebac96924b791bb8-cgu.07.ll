Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.07?download=true
inline.NumInlined: 958
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br i1 %.sroa.026.174.i, label %bb.hk, label %.thread107.i

bb.hk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit.i, %.thread53.i, %bb.m
  %.sroa.027.162.i = phi i1 [ true, %.thread53.i ], [ %i.all, %bb.m ], [ %.sroa.027.273.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit.i ]
  %.pn.pn59.i = phi { ptr, i32 } [ %i.eq, %.thread53.i ], [ %lpad.phi.i, %bb.m ], [ %.pn70.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit.i ] ; 2 uses
  %i.alp = icmp eq i64 %i.en, 0
  br i1 %i.alp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8EECskeugdADtBsi_12pingora_core.exit.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.alq = shl nuw nsw i64 %i.en, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef range(i64 1, 0) %i.alq, i64 noundef 4) #15, !noalias !766
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8EECskeugdADtBsi_12pingora_core.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8EECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.hl, %bb.hk
  br i1 %.sroa.027.162.i, label %bb.hm, label %.thread122.i

bb.hm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8EECskeugdADtBsi_12pingora_core.exit.i, %.thread45.i, %.thread107.i
  %.pn.pn.pn50.i = phi { ptr, i32 } [ %i.el, %.thread45.i ], [ %.pn.pn.pn.i, %.thread107.i ], [ %.pn.pn59.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8EECskeugdADtBsi_12pingora_core.exit.i ] ; 2 uses
  %i.alr = icmp eq i64 %i.ej, 0
  br i1 %i.alr, label %.thread122.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.als = shl nuw nsw i64 %i.ej, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ei, i64 noundef range(i64 1, 0) %i.als, i64 noundef 4) #15, !noalias !766
  br label %.thread122.i

.thread122.i:                                     ; preds = %bb.hn, %bb.hm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8EECskeugdADtBsi_12pingora_core.exit.i, %.split.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxmEECskeugdADtBsi_12pingora_core.exit440.thread.i.i, %.split.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxmEECskeugdADtBsi_12pingora_core.exit440.i.i, %.body.thread117.i, %.thread107.i, %.thread39.i
  %.sroa.029.144.i = phi i1 [ true, %.thread39.i ], [ false, %.split.i ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8EECskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.029.5.ph.ph.i, %.body.thread117.i ], [ true, %.thread107.i ], [ true, %bb.hm ], [ true, %bb.hn ], [ false, %.split.i.i ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxmEECskeugdADtBsi_12pingora_core.exit440.i.i ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxmEECskeugdADtBsi_12pingora_core.exit440.thread.i.i ]
  %.pn.pn.pn.pn43.i = phi { ptr, i32 } [ %i.eh, %.thread39.i ], [ %.pn241.pn.pn.pn.pn.pn.pn525.i.i, %.split.i ], [ %.pn.pn59.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsiRgJJXJ4lb7_6brotli3enc6compat8CompatF8EECskeugdADtBsi_12pingora_core.exit.i ], [ %lpad.thr_comm115.i, %.body.thread117.i ], [ %.pn.pn.pn.i, %.thread107.i ], [ %.pn.pn.pn50.i, %bb.hm ], [ %.pn.pn.pn50.i, %bb.hn ], [ %.pn241.pn.pn.pn.pn.i.i, %.split.i.i ], [ %.pn241.pn.pn.pn.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxmEECskeugdADtBsi_12pingora_core.exit440.i.i ], [ %.pn241.pn.pn.pn.pn.pn.pn525.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxmEECskeugdADtBsi_12pingora_core.exit440.thread.i.i ] ; 2 uses
  %i.alt = icmp eq i64 %i.ec, 0
  br i1 %i.alt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit181.i, label %bb.ho

bb.ho:                                            ; preds = %.thread122.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eb, i64 noundef range(i64 1, 0) %i.ec, i64 noundef 1) #15, !noalias !766
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit181.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit181.i: ; preds = %bb.ho, %.thread122.i
  br i1 %.sroa.029.144.i, label %.thread.i, label %.body.thread

.thread.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit181.i, %.thread.loopexit.split-lp.loopexit.split-lp.i, %.thread.loopexit.split-lp.loopexit.i, %.thread.loopexit.i
  %.pn.pn.pn.pn.pn38.i = phi { ptr, i32 } [ %.pn.pn.pn.pn43.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit181.i ], [ %lpad.loopexit150.i, %.thread.loopexit.i ], [ %lpad.loopexit152.i, %.thread.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp153.i, %.thread.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %i.alu = icmp eq i64 %i.bv, 0
  br i1 %i.alu, label %.body.thread, label %bb.hp

bb.hp:                                            ; preds = %.thread.i
  %i.alv = mul nuw nsw i64 %i.bv, 1040
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef range(i64 1, 0) %i.alv, i64 noundef 8) #15, !noalias !766
  br label %.body.thread

bb.hq:                                            ; preds = %bb.e
  %i.alw = icmp eq i64 %.val85.i, 0
  %spec.select.i = select i1 %i.alw, i64 %i.br, i64 %.val85.i
  br label %bb.hr

.noexc45:                                         ; preds = %bb.hv, %bb.e
  %.val.i = phi ptr [ %.val84.i, %bb.e ], [ %i.amd, %bb.hv ]
  %.val61.i = phi i64 [ %.val85.i, %bb.e ], [ %i.ame, %bb.hv ] ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %.val112.i = load ptr, ptr %i.alx, align 8, !alias.scope !766, !noalias !767, !nonnull !7, !noundef !7 ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %.val113.i = load i64, ptr %i.aly, align 8, !alias.scope !766, !noalias !767, !noundef !7 ; 9 uses
  %i.alz = icmp ult i64 %.val113.i, %i.br
  br i1 %i.alz, label %bb.hw, label %.noexc47

bb.hr:                                            ; preds = %bb.hr, %bb.hq
  %.sroa.014.1.i = phi i64 [ %spec.select.i, %bb.hq ], [ %i.amb, %bb.hr ] ; 3 uses
  %i.ama = icmp ult i64 %.sroa.014.1.i, %i.br
  %i.amb = shl i64 %.sroa.014.1.i, 1
  br i1 %i.ama, label %bb.hr, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.amc = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %.sroa.014.1.i)
          to label %.noexc44 unwind label %.body.thread1100 ; 2 uses

.noexc44:                                         ; preds = %bb.hs
  %i.amd = extractvalue { ptr, i64 } %i.amc, 0    ; 5 uses
  %i.ame = extractvalue { ptr, i64 } %i.amc, 1    ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amd) ]
  %.not.i = icmp ugt i64 %.val85.i, %i.ame
  br i1 %.not.i, label %bb.ht, label %bb.hu, !prof !27

bb.ht:                                            ; preds = %.noexc44
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val85.i, i64 noundef %i.ame, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #25
          to label %bb.ie unwind label %bb.ih, !noalias !766

bb.hu:                                            ; preds = %.noexc44
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %i.amd, i64 noundef %.val85.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val84.i, i64 noundef %.val85.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72)
          to label %bb.hv unwind label %bb.ih, !noalias !766

bb.hv:                                            ; preds = %bb.hu
  store ptr %i.amd, ptr %12, align 8, !alias.scope !766, !noalias !767
  store i64 %i.ame, ptr %i.bo, align 8, !alias.scope !766, !noalias !767
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %.val84.i, i64 noundef %.val85.i)
          to label %.noexc45 unwind label %.body.thread1100

bb.hw:                                            ; preds = %.noexc45
  %i.amf = icmp eq i64 %.val113.i, 0
  %spec.select132.i = select i1 %i.amf, i64 %i.br, i64 %.val113.i
  br label %bb.hx

.noexc47:                                         ; preds = %bb.ib, %.noexc45
  %.val98.i = phi ptr [ %.val112.i, %.noexc45 ], [ %i.aml, %bb.ib ]
  %.val99.i = phi i64 [ %.val113.i, %.noexc45 ], [ %i.amm, %bb.ib ] ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 1, ptr %i.amg, align 8, !alias.scope !766, !noalias !767
  %i.amh = icmp ult i64 %i.bq, %.val61.i
  br i1 %i.amh, label %bb.ic, label %.invoke

bb.hx:                                            ; preds = %bb.hx, %bb.hw
  %.sroa.017.1.i = phi i64 [ %spec.select132.i, %bb.hw ], [ %i.amj, %bb.hx ] ; 3 uses
  %i.ami = icmp ult i64 %.sroa.017.1.i, %i.br
  %i.amj = shl i64 %.sroa.017.1.i, 1
  br i1 %i.ami, label %bb.hx, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.amk = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %.sroa.017.1.i)
          to label %.noexc46 unwind label %.body.thread1100 ; 2 uses

.noexc46:                                         ; preds = %bb.hy
  %i.aml = extractvalue { ptr, i64 } %i.amk, 0    ; 5 uses
  %i.amm = extractvalue { ptr, i64 } %i.amk, 1    ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aml) ]
  %.not57.i = icmp ugt i64 %.val113.i, %i.amm
  br i1 %.not57.i, label %bb.hz, label %bb.ia, !prof !27

bb.hz:                                            ; preds = %.noexc46
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val113.i, i64 noundef %i.amm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #25
          to label %bb.ie unwind label %bb.if, !noalias !766

bb.ia:                                            ; preds = %.noexc46
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implmECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 4 %i.aml, i64 noundef %.val113.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val112.i, i64 noundef %.val113.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73)
          to label %bb.ib unwind label %bb.if, !noalias !766

bb.ib:                                            ; preds = %bb.ia
  store ptr %i.aml, ptr %i.alx, align 8, !alias.scope !766, !noalias !767
  store i64 %i.amm, ptr %i.aly, align 8, !alias.scope !766, !noalias !767
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull align 4 %.val112.i, i64 noundef %.val113.i)
          to label %.noexc47 unwind label %.body.thread1100

bb.ic:                                            ; preds = %.noexc47
  %i.amn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  store i8 0, ptr %i.amn, align 1, !noalias !766
  %i.amo = icmp ult i64 %i.bq, %.val99.i
  br i1 %i.amo, label %bb.id, label %.invoke

bb.id:                                            ; preds = %bb.ic
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %.val98.i, i64 %i.bq
  %i.amq = trunc nuw nsw i64 %.sroa.0.0.lcssa to i32
  store i32 %i.amq, ptr %i.amp, align 4, !noalias !766
  store i64 %i.br, ptr %i.bp, align 8, !alias.scope !766, !noalias !767
  br label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllochECskeugdADtBsi_12pingora_core.exit

.invoke:                                          ; preds = %bb.ic, %.noexc47
  %i.amr = phi i64 [ %.val61.i, %.noexc47 ], [ %.val99.i, %bb.ic ]
  %i.ams = phi ptr [ @74, %.noexc47 ], [ @75, %bb.ic ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef %i.amr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ams) #24
          to label %.cont unwind label %.body.thread1100

.cont:                                            ; preds = %.invoke
  unreachable

bb.ie:                                            ; preds = %bb.hz, %bb.ht
  unreachable

bb.if:                                            ; preds = %bb.ia, %bb.hz
  %lpad.thr_comm101.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amt = icmp eq i64 %i.amm, 0
  br i1 %i.amt, label %.body.thread, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.amu = shl nuw nsw i64 %i.amm, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aml, i64 noundef range(i64 1, 0) %i.amu, i64 noundef 4) #15, !noalias !766
  br label %.body.thread

bb.ih:                                            ; preds = %bb.hu, %bb.ht
  %lpad.thr_comm93.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amv = icmp eq i64 %i.ame, 0
  br i1 %i.amv, label %.body.thread, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amd, i64 noundef range(i64 1, 0) %i.ame, i64 noundef 1) #15, !noalias !766
  br label %.body.thread

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllochECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.id, %bb.c, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllochECskeugdADtBsi_12pingora_core.exit.i
  call void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %i.bg, i64 noundef %i.bh)
  %i.amw = call { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatortE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %3) ; 2 uses
  %i.amx = extractvalue { ptr, i64 } %i.amw, 0    ; 18 uses
  %i.amy = extractvalue { ptr, i64 } %i.amw, 1    ; 28 uses
  %..i50 = call noundef i64 @llvm.umin.i64(i64 %2, i64 %3) ; 4 uses
  %.not2184 = icmp eq i64 %..i50, 0
  br i1 %.not2184, label %._crit_edge2178, label %.lr.ph2177

.lr.ph2177:                                       ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllochECskeugdADtBsi_12pingora_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amx) ]
  %i.amz = add nsw i64 %..i50, -1
  %i.ana = call i64 @llvm.umin.i64(i64 %i.amy, i64 %i.amz)
  %i.anb = add i64 %i.ana, 1                      ; 3 uses
  %min.iters.check5907 = icmp ult i64 %i.anb, 25
  br i1 %min.iters.check5907, label %scalar.ph5906.preheader, label %vector.memcheck5900

scalar.ph5906.preheader:                          ; preds = %vector.body5910, %vector.memcheck5900, %.lr.ph2177
  %.sroa.016.02176.ph = phi i64 [ 0, %vector.memcheck5900 ], [ 0, %.lr.ph2177 ], [ %n.vec5909, %vector.body5910 ]
  br label %scalar.ph5906

vector.memcheck5900:                              ; preds = %.lr.ph2177
  %i.anc = add nsw i64 %..i50, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.amy, i64 %i.anc) ; 2 uses
  %i.and = shl i64 %umin, 1
  %i.ane = getelementptr i8, ptr %i.amx, i64 %i.and
  %scevgep = getelementptr i8, ptr %i.ane, i64 2
  %scevgep5901 = getelementptr i8, ptr %1, i64 12
  %i.anf = shl i64 %umin, 4
  %i.ang = getelementptr i8, ptr %1, i64 %i.anf
  %scevgep5902 = getelementptr i8, ptr %i.ang, i64 14
  %bound05903 = icmp ult ptr %i.amx, %scevgep5902
  %bound15904 = icmp ult ptr %scevgep5901, %scevgep
  %found.conflict5905 = and i1 %bound05903, %bound15904
  br i1 %found.conflict5905, label %scalar.ph5906.preheader, label %vector.ph5908

vector.ph5908:                                    ; preds = %vector.memcheck5900
  %i.anh = and i64 %i.anb, 7                      ; 2 uses
  %i.ani = icmp eq i64 %i.anh, 0
  %i.anj = select i1 %i.ani, i64 8, i64 %i.anh
  %n.vec5909 = sub i64 %i.anb, %i.anj             ; 2 uses
  br label %vector.body5910

vector.body5910:                                  ; preds = %vector.body5910, %vector.ph5908
  %index5911 = phi i64 [ 0, %vector.ph5908 ], [ %index.next5912, %vector.body5910 ] ; 10 uses
  %i.ank = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index5911
  %i.anl = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index5911
  %i.anm = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index5911
  %i.ann = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index5911
  %i.ano = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index5911
  %i.anp = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index5911
  %i.anq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index5911
  %i.anr = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index5911
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ank, i64 12
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anl, i64 28
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anm, i64 44
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ann, i64 60
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ano, i64 76
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anp, i64 92
  %i.any = getelementptr inbounds nuw i8, ptr %i.anq, i64 108
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anr, i64 124
  %i.aoa = load i16, ptr %i.ans, align 4, !alias.scope !836, !noundef !7
  %i.aob = load i16, ptr %i.ant, align 4, !alias.scope !836, !noundef !7
  %i.aoc = load i16, ptr %i.anu, align 4, !alias.scope !836, !noundef !7
  %i.aod = load i16, ptr %i.anv, align 4, !alias.scope !836, !noundef !7
  %i.aoe = load i16, ptr %i.anw, align 4, !alias.scope !836, !noundef !7
  %i.aof = load i16, ptr %i.anx, align 4, !alias.scope !836, !noundef !7
  %i.aog = load i16, ptr %i.any, align 4, !alias.scope !836, !noundef !7
  %i.aoh = load i16, ptr %i.anz, align 4, !alias.scope !836, !noundef !7
  %i.aoi = insertelement <8 x i16> poison, i16 %i.aoa, i64 0
  %i.aoj = insertelement <8 x i16> %i.aoi, i16 %i.aob, i64 1
  %i.aok = insertelement <8 x i16> %i.aoj, i16 %i.aoc, i64 2
  %i.aol = insertelement <8 x i16> %i.aok, i16 %i.aod, i64 3
  %i.aom = insertelement <8 x i16> %i.aol, i16 %i.aoe, i64 4
  %i.aon = insertelement <8 x i16> %i.aom, i16 %i.aof, i64 5
  %i.aoo = insertelement <8 x i16> %i.aon, i16 %i.aog, i64 6
  %i.aop = insertelement <8 x i16> %i.aoo, i16 %i.aoh, i64 7
  %i.aoq = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %index5911
  store <8 x i16> %i.aop, ptr %i.aoq, align 2, !alias.scope !837, !noalias !836
  %index.next5912 = add nuw i64 %index5911, 8     ; 2 uses
  %i.aor = icmp eq i64 %index.next5912, %n.vec5909
  br i1 %i.aor, label %scalar.ph5906.preheader, label %vector.body5910, !llvm.loop !551

.body546.thread1108:                              ; preds = %.invoke4729, %bb.abf, %bb.im, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram16HistogramCommandNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAlloctECskeugdADtBsi_12pingora_core.exit.i, %bb.qz, %bb.rc, %bb.rf, %bb.ri
  %lpad.thr_comm1106 = landingpad { ptr, i32 }
          cleanup
  br label %.body546.thread

._crit_edge2178:                                  ; preds = %bb.abe, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllochECskeugdADtBsi_12pingora_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amx) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.aos = udiv i64 %3, 530
  %i.aot = call i64 @llvm.umin.i64(i64 %i.aos, i64 49) ; 3 uses
  %spec.store.select.i51 = add nuw nsw i64 %i.aot, 1 ; 10 uses
  br i1 %.not, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %._crit_edge2178
  %i.aou = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 1, ptr %i.aou, align 8, !alias.scope !839, !noalias !840
  br label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramCommandNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAlloctECskeugdADtBsi_12pingora_core.exit

bb.ik:                                            ; preds = %._crit_edge2178
  %i.aov = icmp ult i64 %3, 128
  br i1 %i.aov, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %.val84.i532 = load ptr, ptr %13, align 8, !alias.scope !839, !noalias !840, !nonnull !7, !noundef !7 ; 3 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %.val85.i533 = load i64, ptr %i.aow, align 8, !alias.scope !839, !noalias !840, !noundef !7 ; 9 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.aoy = load i64, ptr %i.aox, align 8, !alias.scope !839, !noalias !840, !noundef !7 ; 6 uses
  %i.aoz = add i64 %i.aoy, 1                      ; 7 uses
  %i.apa = icmp ult i64 %.val85.i533, %i.aoz
  br i1 %i.apa, label %bb.qx, label %.noexc549

.thread.loopexit.i76:                             ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter12RandomSampleNtNtB4_9histogram16HistogramCommandtECskeugdADtBsi_12pingora_core.exit.i.i
  %lpad.loopexit150.i77 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i54

.thread.loopexit.split-lp.loopexit.i68:           ; preds = %bb.ip
  %lpad.loopexit152.i69 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i54

.thread.loopexit.split-lp.loopexit.split-lp.i52:  ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter18RefineEntropyCodesNtNtB4_9histogram16HistogramCommandtECskeugdADtBsi_12pingora_core.exit.i, %.split29.us.i.invoke.i530, %.split27.us.i.invoke.i79, %bb.in, %.noexc544
  %lpad.loopexit.split-lp153.i53 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i54

bb.im:                                            ; preds = %bb.ik
  %i.apb = invoke { ptr, i64 } @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram16HistogramCommandE10alloc_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, i64 noundef %spec.store.select.i51)
          to label %.noexc544 unwind label %.body546.thread1108 ; 2 uses

.noexc544:                                        ; preds = %bb.im
  %i.apc = extractvalue { ptr, i64 } %i.apb, 0    ; 11 uses
  %i.apd = extractvalue { ptr, i64 } %i.apb, 1    ; 15 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.apc) ]
  %i.ape = udiv i64 %3, %spec.store.select.i51
  invoke void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram15ClearHistogramsNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 %i.apc, i64 noundef range(i64 0, 3256840408493919) %i.apd, i64 noundef range(i64 1, 34805177497565193) %spec.store.select.i51)
          to label %.noexc.i57 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i52, !noalias !839

.noexc.i57:                                       ; preds = %.noexc544
  %i.apf = add nsw i64 %3, -41
  %.not49.i.i58 = icmp eq i64 %i.apd, 0
  br i1 %.not49.i.i58, label %.split27.us.i.invoke.i79, label %bb.in

bb.in:                                            ; preds = %.noexc.i57
  invoke void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram18HistogramAddVectorNtB2_16HistogramCommandtECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(2832) %i.apc, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.amx, i64 noundef range(i64 0, 4611686018427387904) %i.amy, i64 noundef 40)
          to label %.noexc132.i59 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i52, !noalias !839

.noexc132.i59:                                    ; preds = %bb.in
  %exitcond43.peel.not.i.i60 = icmp ult i64 %3, 530
  br i1 %exitcond43.peel.not.i.i60, label %.loopexit155.i72, label %.split.peel.next.i.i61

.split.peel.next.i.i61:                           ; preds = %.noexc132.i59, %.noexc136.i70
  %.sroa.0.023.i.i62 = phi i32 [ %spec.store.select.i.i64, %.noexc136.i70 ], [ 7, %.noexc132.i59 ] ; 2 uses
  %.sroa.03.022.i.i63 = phi i64 [ %i.apu, %.noexc136.i70 ], [ 1, %.noexc132.i59 ] ; 5 uses
  %i.apg = icmp eq i32 %.sroa.0.023.i.i62, 0
  %i.aph = mul i32 %.sroa.0.023.i.i62, 16807
  %spec.store.select.i.i64 = select i1 %i.apg, i32 1, i32 %i.aph ; 2 uses
  %i.api = zext i32 %spec.store.select.i.i64 to i64
  %i.apj = urem i64 %i.api, %i.ape
  %i.apk = mul i64 %.sroa.03.022.i.i63, %3
  %i.apl = udiv i64 %i.apk, %spec.store.select.i51
  %i.apm = add nuw i64 %i.apl, %i.apj             ; 2 uses
  %i.apn = add i64 %i.apm, 40
  %.not.i.i65 = icmp ult i64 %i.apn, %3
  %spec.select.i.i66 = select i1 %.not.i.i65, i64 %i.apm, i64 %i.apf ; 4 uses
  %exitcond.not.i.i67 = icmp eq i64 %.sroa.03.022.i.i63, %i.apd
  br i1 %exitcond.not.i.i67, label %.split27.us.i.invoke.i79, label %bb.io

bb.io:                                            ; preds = %.split.peel.next.i.i61
  %i.apo = icmp ugt i64 %spec.select.i.i66, %i.amy
  br i1 %i.apo, label %.split29.us.i.invoke.i530, label %bb.ip, !prof !10

.split27.us.i.invoke.i79:                         ; preds = %.split.peel.next.i.i61, %.noexc140.i78, %.noexc.i57
  %i.app = phi i64 [ 0, %.noexc.i57 ], [ %i.aqn, %.noexc140.i78 ], [ %i.apd, %.split.peel.next.i.i61 ]
  %i.apq = phi ptr [ @83, %.noexc.i57 ], [ @82, %.noexc140.i78 ], [ @83, %.split.peel.next.i.i61 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.app, i64 noundef range(i64 0, 3256840408493919) %i.apd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.apq) #24
          to label %.split27.us.i.cont.i80 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i52, !noalias !839

.split27.us.i.cont.i80:                           ; preds = %.split27.us.i.invoke.i79
  unreachable

bb.ip:                                            ; preds = %bb.io
  %i.apr = getelementptr inbounds nuw [2832 x i8], ptr %i.apc, i64 %.sroa.03.022.i.i63
  %i.aps = sub nuw nsw i64 %i.amy, %spec.select.i.i66
  %i.apt = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %spec.select.i.i66
  invoke void @_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram18HistogramAddVectorNtB2_16HistogramCommandtECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(2832) %i.apr, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.apt, i64 noundef %i.aps, i64 noundef 40)
          to label %.noexc136.i70 unwind label %.thread.loopexit.split-lp.loopexit.i68, !noalias !839

.noexc136.i70:                                    ; preds = %bb.ip
  %i.apu = add nuw nsw i64 %.sroa.03.022.i.i63, 1
  %exitcond43.not.i.i71 = icmp eq i64 %.sroa.03.022.i.i63, %i.aot
  br i1 %exitcond43.not.i.i71, label %.loopexit155.i72, label %.split.peel.next.i.i61, !llvm.loop !557

.split29.us.i.invoke.i530:                        ; preds = %bb.io, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core.exit.i.i
  %i.apv = phi i64 [ %i.aqj, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core.exit.i.i ], [ %spec.select.i.i66, %bb.io ]
  %i.apw = phi ptr [ @32, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core.exit.i.i ], [ @84, %bb.io ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.apv, i64 noundef range(i64 0, 4611686018427387904) %i.amy, i64 noundef range(i64 0, 4611686018427387904) %i.amy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.apw) #24
          to label %.split29.us.i.cont.i531 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i52, !noalias !839

.split29.us.i.cont.i531:                          ; preds = %.split29.us.i.invoke.i530
  unreachable

.loopexit155.i72:                                 ; preds = %.noexc136.i70, %.noexc132.i59
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.apx = shl i64 %3, 1                          ; 2 uses
  %i.apy = udiv i64 %i.apx, 40
  %i.apz = add nuw nsw i64 %i.apy, 99
  %i.aqa = add nuw nsw i64 %i.apz, %spec.store.select.i51 ; 2 uses
  %i.aqb = urem i64 %i.aqa, %spec.store.select.i51
  %i.aqc = sub nuw nsw i64 %i.aqa, %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.t, i64 2816
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.t, i64 2824
  %i.aqf = add nsw i64 %3, -39
  br label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core.exit.i.i

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram14HistogramClearNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core.exit.i.i, %.loopexit155.i72
  %.sroa.0.014.i.i73 = phi i64 [ 0, %.loopexit155.i72 ], [ %i.arh, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core.exit.i.i ] ; 2 uses
  %.sroa.0.0813.i.i74 = phi i32 [ 7, %.loopexit155.i72 ], [ %spec.store.select.i.i.i75, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramCommandECskeugdADtBsi_12pingora_core.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !842
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.t, i8 0, i64 2824, i1 false), !noalias !842
end_hunk_0
