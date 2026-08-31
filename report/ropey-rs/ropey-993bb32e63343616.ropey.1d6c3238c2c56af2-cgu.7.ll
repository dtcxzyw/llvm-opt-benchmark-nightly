Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.7?download=true
inline.NumInlined: 150
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15append_internal:bb.a

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit24: ; preds = %bb.k
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.5.0), !noalias !26
  %i.ae = load i64, ptr %i.f, align 8, !alias.scope !27, !noalias !26, !noundef !8 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af), !noalias !26
  %i.ag = load ptr, ptr %i.g, align 8, !alias.scope !27, !noalias !26, !nonnull !8, !noundef !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %.sroa.0.0, i64 %.sroa.5.0, i1 false), !noalias !26
  %.pre.i23 = load i64, ptr %i.f, align 8, !alias.scope !27, !noalias !26
  %i.ai = add i64 %.pre.i23, %.sroa.5.0           ; 2 uses
  store i64 %i.ai, ptr %i.f, align 8, !alias.scope !27, !noalias !26
  br label %bb.v

select.unfold:                                    ; preds = %bb.m, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.ac, %bb.j ], [ %i.as, %bb.m ] ; 6 uses
  %i.aj = icmp eq i64 %.sroa.01.0.i, 0
  br i1 %i.aj, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit31.thread, label %.thread

.thread:                                          ; preds = %select.unfold
  %.not.i25 = icmp ult i64 %.sroa.01.0.i, %.sroa.5.0
  br i1 %.not.i25, label %bb.l, label %.split.i26

.split.i26:                                       ; preds = %.thread
  %i.ak = icmp eq i64 %.sroa.01.0.i, %.sroa.5.0
  br i1 %i.ak, label %bb.n, label %bb.p

bb.l:                                             ; preds = %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.01.0.i
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !30, !noalias !25, !noundef !8
  %i.an = icmp sgt i8 %i.am, -65
  br i1 %i.an, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %.sroa.0.0, i64 %.sroa.5.0
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !16, !noalias !25, !noundef !8
  %i.ar = icmp eq i8 %i.aq, 13
  %i.as = add i64 %.sroa.5.0, -1
  br i1 %i.ar, label %select.unfold, label %bb.n

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit31.thread: ; preds = %select.unfold
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0), !noalias !26
  %i.at = load i64, ptr %i.f, align 8, !alias.scope !33, !noalias !26, !noundef !8 ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  tail call void @llvm.assume(i1 %i.au), !noalias !26
  store i64 %i.at, ptr %i.f, align 8, !alias.scope !33, !noalias !26
  br label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit

bb.n:                                             ; preds = %bb.l, %.split.i26, %bb.m
  %.sroa.01.0.i59.ph = phi i64 [ %.sroa.5.0, %bb.m ], [ %.sroa.5.0, %.split.i26 ], [ %.sroa.01.0.i, %bb.l ] ; 9 uses
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.01.0.i59.ph), !noalias !26
  %i.av = load i64, ptr %i.f, align 8, !alias.scope !33, !noalias !26, !noundef !8 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, -1
  tail call void @llvm.assume(i1 %i.aw), !noalias !26
  %i.ax = load ptr, ptr %i.g, align 8, !alias.scope !33, !noalias !26, !nonnull !8, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %.sroa.0.0, i64 %.sroa.01.0.i59.ph, i1 false), !noalias !26
  %.pre.i30 = load i64, ptr %i.f, align 8, !alias.scope !33, !noalias !26
  %i.az = add i64 %.pre.i30, %.sroa.01.0.i59.ph   ; 3 uses
  store i64 %i.az, ptr %i.f, align 8, !alias.scope !33, !noalias !26
  %.not.i32 = icmp ult i64 %.sroa.01.0.i59.ph, %.sroa.5.0
  br i1 %.not.i32, label %bb.o, label %.split.i33

.split.i33:                                       ; preds = %bb.n
  %i.ba = icmp eq i64 %.sroa.01.0.i59.ph, %.sroa.5.0
  br i1 %i.ba, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.01.0.i59.ph
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !36, !noalias !26, !noundef !8
  %i.bd = icmp sgt i8 %i.bc, -65
  br i1 %i.bd, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %.split.i33, %bb.o, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit31.thread
  %.sroa.01.0.i59151 = phi i64 [ %.sroa.01.0.i59.ph, %.split.i33 ], [ %.sroa.01.0.i59.ph, %bb.o ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit31.thread ] ; 2 uses
  %i.be = phi i64 [ %i.az, %.split.i33 ], [ %i.az, %bb.o ], [ %i.at, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit31.thread ]
  %i.bf = sub nuw i64 %.sroa.5.0, %.sroa.01.0.i59151
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.01.0.i59151
  br label %bb.v

bb.p:                                             ; preds = %bb.l, %.split.i26
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0, i64 noundef 0, i64 noundef %.sroa.01.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20, !noalias !25
  unreachable

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i33, %bb.o
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0, i64 noundef %.sroa.01.0.i59.ph, i64 noundef %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !26
  unreachable

bb.q:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.v
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !39, !noalias !25, !noundef !8
  %i.bj = icmp sgt i8 %i.bi, -65
  br i1 %i.bj, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit39, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit39.thread

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit39: ; preds = %.split.i, %bb.f, %bb.q
  %i.bk = sub nuw i64 %.sroa.5.0, %i.v
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.v
  br label %bb.z

bb.r:                                             ; preds = %bb.h, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0, i64 noundef 0, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20, !noalias !25
  unreachable

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit39.thread: ; preds = %bb.q
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0, i64 noundef %i.v, i64 noundef %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20, !noalias !25
  unreachable

bb.s:                                             ; preds = %bb.b
  %i.bm = load i64, ptr %i.f, align 8, !noundef !8 ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp ne i64 %i.bm, 0
  %brmerge.not = and i1 %3, %i.bo
  br i1 %brmerge.not, label %.split14, label %.loopexit

.split14:                                         ; preds = %bb.s
  %i.bp = icmp samesign ult i64 %i.bm, 984
  br i1 %i.bp, label %bb.u, label %bb.t, !prof !20

bb.t:                                             ; preds = %.split14
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 85, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20, !noalias !42
  unreachable

bb.u:                                             ; preds = %.split14
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0), !noalias !47
  %i.bq = load i64, ptr %i.f, align 8, !alias.scope !48, !noalias !47, !noundef !8 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, -1
  tail call void @llvm.assume(i1 %i.br), !noalias !47
  br label %bb.v

_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text.exit18.thread82: ; preds = %bb.i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.5.0), !noalias !26
  %i.bs = load i64, ptr %i.f, align 8, !alias.scope !51, !noalias !26, !noundef !8 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  tail call void @llvm.assume(i1 %i.bt), !noalias !26
  %i.bu = load ptr, ptr %i.g, align 8, !alias.scope !51, !noalias !26, !nonnull !8, !noundef !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %.sroa.0.0, i64 %.sroa.5.0, i1 false), !noalias !26
  %.pre.i = load i64, ptr %i.f, align 8, !alias.scope !51, !noalias !26
  %i.bw = add i64 %.pre.i, %.sroa.5.0
  store i64 %i.bw, ptr %i.f, align 8, !alias.scope !51, !noalias !26
  store i64 0, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text.exit18.thread82
  ret void

bb.v:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit24, %bb.u
  %i.bx = phi i64 [ %i.bq, %bb.u ], [ %i.ai, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit24 ], [ %i.be, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ]
  %.sroa.31.0.ph = phi i64 [ 0, %bb.u ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit24 ], [ %i.bf, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ] ; 2 uses
  %.sroa.20.0.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit24 ], [ %i.bg, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ]
  store i64 %.sroa.31.0.ph, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.by = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.d, i64 1000, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  store i64 1, ptr %i.k, align 8
  store i8 0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4, i64 1007, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !54
  %i.bz = tail call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !54 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.w, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit19, !prof !12

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.b) #16
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %bb.ab, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %i.cf, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit19: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.bz, ptr noundef nonnull align 8 dereferenceable(1024) %i.b, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  tail call fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder16append_leaf_node(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull %i.bz)
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

bb.z:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit39, %bb.k
  %.sroa.31.0 = phi i64 [ %i.bk, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit39 ], [ 0, %bb.k ] ; 2 uses
  %.sroa.20.0 = phi ptr [ %i.bl, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit39 ], [ inttoptr (i64 1 to ptr), %bb.k ]
  %.sroa.17.0 = phi i64 [ %i.v, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit39 ], [ %.sroa.5.0, %bb.k ]
  store i64 %.sroa.31.0, ptr %i.h, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.17.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.49.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.c, i64 1000, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  store i64 1, ptr %i.i, align 8
  store i8 0, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.49, i64 1007, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !57
  %i.cd = tail call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !57 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.aa, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit, !prof !12

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc52 unwind label %bb.ab

.noexc52:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.a) #16
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.cd, ptr noundef nonnull align 8 dereferenceable(1024) %i.a, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49)
  tail call fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder16append_leaf_node(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noundef nonnull %i.cd)
  br label %.backedge

.backedge:                                        ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit19
  %.sroa.5.0.be = phi i64 [ %.sroa.31.0, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit ], [ %.sroa.31.0.ph, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit19 ]
  %.sroa.0.0.be = phi ptr [ %.sroa.20.0, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit ], [ %.sroa.20.0.ph, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit19 ]
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15finish_internal(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(80) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 13 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !60, !noalias !63, !noundef !8 ; 3 uses
  %i.t = icmp ugt i64 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %.sink12.i = select i1 %i.t, i64 %i.v, i64 %i.s
  %i.w = add i64 %.sink12.i, -1                   ; 2 uses
  %.not56 = icmp eq i64 %i.w, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit: ; preds = %bb.ao, %bb.ap, %bb.ah, %bb.n, %bb.o, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.e ], [ %i.bd, %bb.n ], [ %lpad.thr_comm.split-lp, %bb.ah ], [ %i.bd, %bb.o ], [ %lpad.phi, %bb.ap ], [ %lpad.phi, %bb.ao ]
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit.i unwind label %bb.a

bb.a:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #16
          to label %.body unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2wCc12Mnjqg_5ropey.exit.i unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2wCc12Mnjqg_5ropey.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.af

bb.d:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %.invoke
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit

.lr.ph:                                           ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17

._crit_edge.loopexit:                             ; preds = %bb.an
  %.pre62 = load i64, ptr %i.r, align 8, !alias.scope !65, !noalias !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %i.ah = phi i64 [ %.pre62, %._crit_edge.loopexit ], [ %i.s, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ai = icmp ugt i64 %i.ah, 4                   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre64 = load i64, ptr %i.aj, align 8
  %i.ak = select i1 %i.ai, i64 %.pre64, i64 %i.ah ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.invoke, label %bb.f, !prof !12

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17: ; preds = %.lr.ph, %bb.an
  %.sroa.0.057 = phi i64 [ %i.w, %.lr.ph ], [ %i.ik, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.am = load i64, ptr %i.r, align 8, !alias.scope !70, !noalias !73, !noundef !8 ; 2 uses
  %i.an = icmp ugt i64 %i.am, 4                   ; 3 uses
  %.pre = load i64, ptr %i.ae, align 8
  %i.ao = select i1 %i.an, i64 %.pre, i64 %i.am   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.invoke, label %bb.ag, !prof !12

bb.f:                                             ; preds = %._crit_edge
  %.sink11.i = select i1 %i.ai, ptr %i.aj, ptr %i.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !8
  %.sink12.i12 = select i1 %i.ai, ptr %i.ar, ptr %i.aj
  %i.as = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.as, ptr %.sink11.i, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sink12.i12, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.au, ptr %i.n, align 8
  br i1 %1, label %bb.m, label %bb.h

bb.g:                                             ; preds = %bb.al
  unreachable

bb.h:                                             ; preds = %._crit_edge65, %bb.f
  %i.av = phi ptr [ %.pre66, %._crit_edge65 ], [ %i.au, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit.i20 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #16
          to label %common.resume unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit.i20: ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey12rope_builder11RopeBuilderEBF_.exit22 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit.i20
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2wCc12Mnjqg_5ropey.exit.i, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.az, %bb.j ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2wCc12Mnjqg_5ropey.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey12rope_builder11RopeBuilderEBF_.exit22: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit.i20
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
  ret ptr %i.av

bb.m:                                             ; preds = %bb.f
  %i.bc = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.n)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.ab, %_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13chunk_at_byte.exit.i, %.noexc28, %bb.z, %bb.y, %bb.x, %bb.w, %bb.ad, %bb.ae, %.loopexit, %bb.v, %bb.u, %bb.s, %bb.r, %bb.p, %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.be = load ptr, ptr %i.n, align 8, !alias.scope !84, !nonnull !8, !noundef !8
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !84
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit unwind label %bb.af

bb.p:                                             ; preds = %bb.m
  %i.bh = invoke noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13zip_fix_right(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.bc)
          to label %bb.q unwind label %bb.n       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !8 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 462
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bm)
          to label %bb.t unwind label %bb.n

bb.s:                                             ; preds = %bb.ae, %bb.t, %bb.q
  invoke void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope22pull_up_singular_nodes(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %._crit_edge65 unwind label %bb.n

._crit_edge65:                                    ; preds = %bb.s
  %.pre66 = load ptr, ptr %i.n, align 8
  br label %bb.h

bb.t:                                             ; preds = %bb.r
  %i.bn = load i64, ptr %i.m, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not9 = icmp eq i64 %i.bj, %i.bn
  br i1 %.not9, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bp)
          to label %bb.v unwind label %bb.n

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bs = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bt)
          to label %bb.w unwind label %bb.n

bb.w:                                             ; preds = %bb.v
  %i.bu = load i64, ptr %i.k, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bv = load i64, ptr %i.bi, align 8, !noundef !8
  %i.bw = sub i64 %i.bu, %i.bv                    ; 6 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !85
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx)
          to label %.noexc25 unwind label %bb.n

.noexc25:                                         ; preds = %bb.w
  %i.by = load i64, ptr %i.i, align 8, !noalias !85, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !85
  %.not.i24 = icmp ugt i64 %i.bw, %i.by
  br i1 %.not.i24, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !85
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx)
          to label %bb.ad unwind label %bb.n

bb.y:                                             ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !85
  store i64 %i.bw, ptr %i.g, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !91
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx)
          to label %.noexc27 unwind label %bb.n

.noexc27:                                         ; preds = %bb.y
  %i.bz = load i64, ptr %i.b, align 8, !noalias !91, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !91
  %.not.i.i.i = icmp ugt i64 %i.bw, %i.bz
  br i1 %.not.i.i.i, label %bb.z, label %_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13chunk_at_byte.exit.i

bb.z:                                             ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx)
          to label %.noexc28 unwind label %bb.n

.noexc28:                                         ; preds = %bb.z
  %i.ca = load i64, ptr %i.d, align 8, !noalias !88, !noundef !8
  store i64 %i.ca, ptr %i.f, align 8, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !88
  store ptr %i.g, ptr %i.e, align 8, !noalias !88
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !88
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.cb, align 8, !noalias !88
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !88
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #20
          to label %.noexc29 unwind label %bb.n

.noexc29:                                         ; preds = %.noexc28
  unreachable

_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13chunk_at_byte.exit.i: ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !91
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx, i64 noundef %i.bw)
          to label %.noexc30 unwind label %bb.n

.noexc30:                                         ; preds = %_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13chunk_at_byte.exit.i
  %i.cc = load ptr, ptr %i.c, align 8, !noalias !91, !nonnull !8, !noundef !8 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !91, !noundef !8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !91, !noundef !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !91, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !85
  %i.cj = sub i64 %i.bw, %i.cg                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.ck = icmp ult i64 %i.cj, %i.ce
  br i1 %i.ck, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.noexc30, %bb.aa
  %.sroa.0.0184.i.i = phi i64 [ %i.co, %bb.aa ], [ %i.cj, %.noexc30 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.0.0184.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !94, !noalias !85, !noundef !8
  %i.cn = icmp slt i8 %i.cm, -64
  br i1 %i.cn, label %bb.aa, label %._crit_edge.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.co = add i64 %.sroa.0.0184.i.i, -1           ; 3 uses
  %i.cp = icmp ult i64 %i.co, %i.ce
  br i1 %i.cp, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.aa, %.lr.ph.i.i, %.noexc30
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.cj, %.noexc30 ], [ %.sroa.0.0184.i.i, %.lr.ph.i.i ], [ %i.co, %bb.aa ]
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %.sroa.0.0.lcssa.i.i) ; 7 uses
  %i.cq = icmp samesign ult i64 %..i.i.i, 16
  br i1 %i.cq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  invoke void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i)
          to label %.noexc31 unwind label %bb.n

.noexc31:                                         ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.a, align 8, !noalias !97, !nonnull !8, !noundef !8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !97, !noundef !8 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !97, !nonnull !8, !align !100, !noundef !8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !97, !noundef !8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !97, !nonnull !8, !noundef !8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.db = load i64, ptr %i.da, align 8, !noalias !97, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  %i.dc = icmp samesign eq i64 %i.ct, 0
  br i1 %i.dc, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.noexc31
  %min.iters.check = icmp ult i64 %i.ct, 4
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader123, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.preheader
  %n.vec = and i64 %i.ct, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %vec.phi99 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %wide.load = load <2 x i8>, ptr %i.dd, align 1, !alias.scope !101, !noalias !85
  %wide.load100 = load <2 x i8>, ptr %i.de, align 1, !alias.scope !101, !noalias !85
  %i.df = icmp slt <2 x i8> %wide.load, splat (i8 -64)
  %i.dg = icmp slt <2 x i8> %wide.load100, splat (i8 -64)
  %i.dh = zext <2 x i1> %i.df to <2 x i64>
  %i.di = zext <2 x i1> %i.dg to <2 x i64>
  %i.dj = add <2 x i64> %vec.phi, %i.dh           ; 2 uses
  %i.dk = add <2 x i64> %vec.phi99, %i.di         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dk, %i.dj
  %i.dm = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, label %.preheader.i.i.i.preheader123

.preheader.i.i.i.preheader123:                    ; preds = %.preheader.i.i.i.preheader, %middle.block
  %.sroa.04.0.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader123, %.preheader.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.dr, %.preheader.i.i.i ], [ %.sroa.04.0.i.i.i.i.ph, %.preheader.i.i.i.preheader123 ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.dq, %.preheader.i.i.i ], [ %.sroa.02.0.i.i.i.i.ph, %.preheader.i.i.i.preheader123 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i8, ptr %i.dn, align 1, !alias.scope !101, !noalias !85, !noundef !8
  %i.do = icmp slt i8 %.val.i.i.i.i, -64
  %i.dp = zext i1 %i.do to i64
  %i.dq = add i64 %.sroa.02.0.i.i.i.i, %i.dp      ; 2 uses
  %i.dr = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.ds = icmp eq i64 %i.dr, %i.ct
  br i1 %i.ds, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, label %.preheader.i.i.i, !llvm.loop !107

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i: ; preds = %.preheader.i.i.i, %middle.block, %.noexc31
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %.noexc31 ], [ %i.dm, %middle.block ], [ %i.dq, %.preheader.i.i.i ] ; 3 uses
  %i.dt = icmp ule i64 %.sroa.0.0.i.i.i.i, %i.ct
  call void @llvm.assume(i1 %i.dt)
  %i.du = and i64 %i.cx, 576460752303423484       ; 3 uses
  %.not.i187.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i187.i.i, label %._crit_edge192.i.i, label %.lr.ph191.i.i

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.dv = icmp samesign eq i64 %..i.i.i, 0
  br i1 %i.dv, label %.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.ac
  %xtraiter131 = and i64 %..i.i.i, 3              ; 3 uses
  %i.dw = icmp ult i64 %..i.i.i, 4
  br i1 %i.dw, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %..i.i.i, 12
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.eq, %.preheader.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ep, %.preheader.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i8, ptr %i.dx, align 1, !alias.scope !94, !noalias !85, !noundef !8
  %i.dy = icmp sgt i8 %.val.i.i.i, -65
  %i.dz = zext i1 %i.dy to i64
  %i.ea = add i64 %.sroa.02.0.i.i.i, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.04.0.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %.val.i.i.i.1 = load i8, ptr %i.ec, align 1, !alias.scope !94, !noalias !85, !noundef !8
  %i.ed = icmp sgt i8 %.val.i.i.i.1, -65
  %i.ee = zext i1 %i.ed to i64
  %i.ef = add i64 %i.ea, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.04.0.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %.val.i.i.i.2 = load i8, ptr %i.eh, align 1, !alias.scope !94, !noalias !85, !noundef !8
  %i.ei = icmp sgt i8 %.val.i.i.i.2, -65
  %i.ej = zext i1 %i.ei to i64
  %i.ek = add i64 %i.ef, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.04.0.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 3
  %.val.i.i.i.3 = load i8, ptr %i.em, align 1, !alias.scope !94, !noalias !85, !noundef !8
  %i.en = icmp sgt i8 %.val.i.i.i.3, -65
  %i.eo = zext i1 %i.en to i64
  %i.ep = add i64 %i.ek, %i.eo                    ; 3 uses
  %i.eq = add nuw nsw i64 %.sroa.04.0.i.i.i, 4    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i

._crit_edge192.i.i:                               ; preds = %.lr.ph191.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i
  %.sroa.01.0.i.lcssa.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ], [ %i.ht, %.lr.ph191.i.i ]
  %2 = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.du ; 3 uses
  %i.er = shl i64 %i.cx, 4
  %.idx.i.i = and i64 %i.er, 48                   ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.et = icmp samesign eq i64 %.idx.i.i, 0
  br i1 %i.et, label %._crit_edge197.i.i, label %.lr.ph196.i.i.preheader

.lr.ph196.i.i.preheader:                          ; preds = %._crit_edge192.i.i
  %i.eu = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.ev = lshr exact i64 %i.eu, 4
  %i.ew = add nuw nsw i64 %i.ev, 1
  %xtraiter = and i64 %i.ew, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph196.i.i.prol.loopexit, label %.lr.ph196.i.i.prol

.lr.ph196.i.i.prol:                               ; preds = %.lr.ph196.i.i.preheader, %.lr.ph196.i.i.prol
  %.sroa.012.0.i194.i.i.prol = phi ptr [ %i.ey, %.lr.ph196.i.i.prol ], [ %2, %.lr.ph196.i.i.preheader ] ; 2 uses
  %i.ex = phi <16 x i8> [ %i.fc, %.lr.ph196.i.i.prol ], [ zeroinitializer, %.lr.ph196.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph196.i.i.prol ], [ 0, %.lr.ph196.i.i.preheader ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.i.prol, i64 16 ; 2 uses
  %i.ez = load <16 x i8>, ptr %.sroa.012.0.i194.i.i.prol, align 16, !noalias !85
  %i.fa = icmp slt <16 x i8> %i.ez, splat (i8 -64)
  %i.fb = zext <16 x i1> %i.fa to <16 x i8>
  %i.fc = add <16 x i8> %i.ex, %i.fb              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph196.i.i.prol.loopexit, label %.lr.ph196.i.i.prol, !llvm.loop !108

.lr.ph196.i.i.prol.loopexit:                      ; preds = %.lr.ph196.i.i.prol, %.lr.ph196.i.i.preheader
  %.lcssa121.unr = phi <16 x i8> [ poison, %.lr.ph196.i.i.preheader ], [ %i.fc, %.lr.ph196.i.i.prol ]
  %.sroa.012.0.i194.i.i.unr = phi ptr [ %2, %.lr.ph196.i.i.preheader ], [ %i.ey, %.lr.ph196.i.i.prol ]
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph196.i.i.preheader ], [ %i.fc, %.lr.ph196.i.i.prol ]
  %i.fd = icmp ult i64 %i.eu, 48
  br i1 %i.fd, label %._crit_edge197.i.i, label %.lr.ph196.i.i

.lr.ph196.i.i:                                    ; preds = %.lr.ph196.i.i.prol.loopexit, %.lr.ph196.i.i
  %.sroa.012.0.i194.i.i = phi ptr [ %i.fu, %.lr.ph196.i.i ], [ %.sroa.012.0.i194.i.i.unr, %.lr.ph196.i.i.prol.loopexit ] ; 5 uses
  %i.fe = phi <16 x i8> [ %i.fy, %.lr.ph196.i.i ], [ %.unr, %.lr.ph196.i.i.prol.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.i, i64 16
  %i.fg = load <16 x i8>, ptr %.sroa.012.0.i194.i.i, align 16, !noalias !85
  %i.fh = icmp slt <16 x i8> %i.fg, splat (i8 -64)
  %i.fi = zext <16 x i1> %i.fh to <16 x i8>
  %i.fj = add <16 x i8> %i.fe, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.i, i64 32
  %i.fl = load <16 x i8>, ptr %i.ff, align 16, !noalias !85
  %i.fm = icmp slt <16 x i8> %i.fl, splat (i8 -64)
  %i.fn = zext <16 x i1> %i.fm to <16 x i8>
  %i.fo = add <16 x i8> %i.fj, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.i, i64 48
  %i.fq = load <16 x i8>, ptr %i.fk, align 16, !noalias !85
  %i.fr = icmp slt <16 x i8> %i.fq, splat (i8 -64)
  %i.fs = zext <16 x i1> %i.fr to <16 x i8>
  %i.ft = add <16 x i8> %i.fo, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.i, i64 64 ; 2 uses
  %i.fv = load <16 x i8>, ptr %i.fp, align 16, !noalias !85
  %i.fw = icmp slt <16 x i8> %i.fv, splat (i8 -64)
  %i.fx = zext <16 x i1> %i.fw to <16 x i8>
  %i.fy = add <16 x i8> %i.ft, %i.fx              ; 2 uses
  %i.fz = icmp eq ptr %i.fu, %i.es
  br i1 %i.fz, label %._crit_edge197.i.i, label %.lr.ph196.i.i

._crit_edge197.i.i:                               ; preds = %.lr.ph196.i.i.prol.loopexit, %.lr.ph196.i.i, %._crit_edge192.i.i
  %.lcssa182.i.i = phi <16 x i8> [ zeroinitializer, %._crit_edge192.i.i ], [ %.lcssa121.unr, %.lr.ph196.i.i.prol.loopexit ], [ %i.fy, %.lr.ph196.i.i ]
  %i.ga = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa182.i.i, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x i64> %i.ga, i64 0
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x i64> %i.ga, i64 1
  %i.gb = icmp samesign eq i64 %i.db, 0
  br i1 %i.gb, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, label %.preheader.i50.i.i.preheader

.preheader.i50.i.i.preheader:                     ; preds = %._crit_edge197.i.i
  %min.iters.check102 = icmp ult i64 %i.db, 4
  br i1 %min.iters.check102, label %.preheader.i50.i.i.preheader117, label %vector.ph103

vector.ph103:                                     ; preds = %.preheader.i50.i.i.preheader
  %n.vec104 = and i64 %i.db, -4                   ; 3 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %vec.phi107 = phi <2 x i64> [ zeroinitializer, %vector.ph103 ], [ %i.gi, %vector.body105 ]
  %vec.phi108 = phi <2 x i64> [ zeroinitializer, %vector.ph103 ], [ %i.gj, %vector.body105 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index106 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %wide.load109 = load <2 x i8>, ptr %i.gc, align 1, !alias.scope !110, !noalias !85
  %wide.load110 = load <2 x i8>, ptr %i.gd, align 1, !alias.scope !110, !noalias !85
  %i.ge = icmp slt <2 x i8> %wide.load109, splat (i8 -64)
  %i.gf = icmp slt <2 x i8> %wide.load110, splat (i8 -64)
  %i.gg = zext <2 x i1> %i.ge to <2 x i64>
  %i.gh = zext <2 x i1> %i.gf to <2 x i64>
  %i.gi = add <2 x i64> %vec.phi107, %i.gg        ; 2 uses
  %i.gj = add <2 x i64> %vec.phi108, %i.gh        ; 2 uses
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.gk, label %middle.block112, label %vector.body105, !llvm.loop !113

middle.block112:                                  ; preds = %vector.body105
  %bin.rdx113 = add <2 x i64> %i.gj, %i.gi
  %i.gl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx113) ; 2 uses
  %cmp.n114 = icmp eq i64 %i.db, %n.vec104
  br i1 %cmp.n114, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, label %.preheader.i50.i.i.preheader117

.preheader.i50.i.i.preheader117:                  ; preds = %.preheader.i50.i.i.preheader, %middle.block112
  %.sroa.04.0.i.i51.i.i.ph = phi i64 [ 0, %.preheader.i50.i.i.preheader ], [ %n.vec104, %middle.block112 ]
  %.sroa.02.0.i.i52.i.i.ph = phi i64 [ 0, %.preheader.i50.i.i.preheader ], [ %i.gl, %middle.block112 ]
  br label %.preheader.i50.i.i

.preheader.i50.i.i:                               ; preds = %.preheader.i50.i.i.preheader117, %.preheader.i50.i.i
  %.sroa.04.0.i.i51.i.i = phi i64 [ %i.gq, %.preheader.i50.i.i ], [ %.sroa.04.0.i.i51.i.i.ph, %.preheader.i50.i.i.preheader117 ] ; 2 uses
  %.sroa.02.0.i.i52.i.i = phi i64 [ %i.gp, %.preheader.i50.i.i ], [ %.sroa.02.0.i.i52.i.i.ph, %.preheader.i50.i.i.preheader117 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sroa.04.0.i.i51.i.i
  %.val.i.i53.i.i = load i8, ptr %i.gm, align 1, !alias.scope !110, !noalias !85, !noundef !8
  %i.gn = icmp slt i8 %.val.i.i53.i.i, -64
  %i.go = zext i1 %i.gn to i64
  %i.gp = add i64 %.sroa.02.0.i.i52.i.i, %i.go    ; 2 uses
  %i.gq = add nuw i64 %.sroa.04.0.i.i51.i.i, 1    ; 2 uses
  %i.gr = icmp eq i64 %i.gq, %i.db
  br i1 %i.gr, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, label %.preheader.i50.i.i, !llvm.loop !114

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i: ; preds = %.preheader.i50.i.i, %middle.block112, %._crit_edge197.i.i
  %.sroa.0.0.i.i54.i.i = phi i64 [ 0, %._crit_edge197.i.i ], [ %i.gl, %middle.block112 ], [ %i.gp, %.preheader.i50.i.i ] ; 2 uses
  %i.gs = icmp ule i64 %.sroa.0.0.i.i54.i.i, %i.db
  call void @llvm.assume(i1 %i.gs)
  %i.gt = add i64 %.sroa.01.0.i.lcssa.i.i, %.sroa.0.8.vec.extract.i.i.i
  %i.gu = add i64 %i.gt, %.sroa.0.0.vec.extract.i.i.i
  %i.gv = add i64 %i.gu, %.sroa.0.0.i.i54.i.i
  %i.gw = sub i64 %..i.i.i, %i.gv
  br label %.loopexit

.lr.ph191.i.i:                                    ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, %.lr.ph191.i.i
  %.sroa.01.0.i190.i.i = phi i64 [ %i.ht, %.lr.ph191.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ]
  %.sroa.06.0.i189.i.i = phi ptr [ %i.gx, %.lr.ph191.i.i ], [ %i.cv, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ] ; 5 uses
  %.sroa.5.0.i188.i.i = phi i64 [ %i.gy, %.lr.ph191.i.i ], [ %i.du, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i.i, i64 64
  %i.gy = add i64 %.sroa.5.0.i188.i.i, -4         ; 2 uses
  %i.gz = load <16 x i8>, ptr %.sroa.06.0.i189.i.i, align 16, !noalias !85
  %i.ha = icmp slt <16 x i8> %i.gz, splat (i8 -64)
  %i.hb = zext <16 x i1> %i.ha to <16 x i8>
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i.i, i64 16
  %i.hd = load <16 x i8>, ptr %i.hc, align 16, !noalias !85
  %i.he = icmp slt <16 x i8> %i.hd, splat (i8 -64)
  %i.hf = zext <16 x i1> %i.he to <16 x i8>
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i.i, i64 32
  %i.hh = load <16 x i8>, ptr %i.hg, align 16, !noalias !85
  %i.hi = icmp slt <16 x i8> %i.hh, splat (i8 -64)
  %i.hj = zext <16 x i1> %i.hi to <16 x i8>
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i.i, i64 48
  %i.hl = load <16 x i8>, ptr %i.hk, align 16, !noalias !85
  %i.hm = icmp slt <16 x i8> %i.hl, splat (i8 -64)
  %i.hn = zext <16 x i1> %i.hm to <16 x i8>
  %i.ho = add nuw nsw <16 x i8> %i.hf, %i.hb
  %i.hp = add nuw nsw <16 x i8> %i.ho, %i.hj
  %i.hq = add nuw nsw <16 x i8> %i.hp, %i.hn
  %i.hr = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.hq, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i6.i.i = extractelement <2 x i64> %i.hr, i64 0
  %.sroa.0.8.vec.extract.i7.i.i = extractelement <2 x i64> %i.hr, i64 1
  %i.hs = add i64 %.sroa.0.8.vec.extract.i7.i.i, %.sroa.01.0.i190.i.i
  %i.ht = add i64 %i.hs, %.sroa.0.0.vec.extract.i6.i.i ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i.i1.i, label %._crit_edge192.i.i, label %.lr.ph191.i.i

bb.ad:                                            ; preds = %bb.x
  %i.hu = load i64, ptr %i.h, align 8, !noalias !85, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !115
  store i64 0, ptr %i.j, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.bw, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.hu, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.ad
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.loopexit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.eq, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ep, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  call void @llvm.assume(i1 %lcmp.mod134)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.sroa.04.0.i.i.i.epil = phi i64 [ %i.hz, %.preheader.i.i.epil ], [ %.sroa.04.0.i.i.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.epil = phi i64 [ %i.hy, %.preheader.i.i.epil ], [ %.sroa.02.0.i.i.i.epil.init, %.preheader.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.04.0.i.i.i.epil
  %.val.i.i.i.epil = load i8, ptr %i.hv, align 1, !alias.scope !94, !noalias !85, !noundef !8
  %i.hw = icmp sgt i8 %.val.i.i.i.epil, -65
  %i.hx = zext i1 %i.hw to i64
  %i.hy = add i64 %.sroa.02.0.i.i.i.epil, %i.hx   ; 2 uses
  %i.hz = add nuw nsw i64 %.sroa.04.0.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.i.epil, !llvm.loop !118

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.epil, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, %bb.ac
  %.sroa.0.0.i.i.i = phi i64 [ %i.gw, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ], [ 0, %bb.ac ], [ %i.ep, %.loopexit.loopexit.unr-lcssa ], [ %i.hy, %.preheader.i.i.epil ]
  %i.ia = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.n)
          to label %bb.ae unwind label %bb.n

bb.ae:                                            ; preds = %.loopexit
  %i.ib = add i64 %i.ci, %.sroa.0.0.i.i.i
  %i.ic = sub i64 %i.br, %i.ib
  %i.id = invoke noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ia, i64 noundef %i.ic)
          to label %bb.s unwind label %bb.n       ; 0 uses

bb.af:                                            ; preds = %bb.ap, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2wCc12Mnjqg_5ropey.exit.i
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.a, %bb.b, %bb.af
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.invoke:                                          ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17, %._crit_edge
  %i.if = phi ptr [ @1, %._crit_edge ], [ @4, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.if) #19
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.ag:                                            ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17
  %.sink11.i15 = select i1 %i.an, ptr %i.ae, ptr %i.r
  %i.ig = load ptr, ptr %i.af, align 8, !nonnull !8
end_hunk_0
begin_hunk_1_@_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder16append_leaf_node:_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.dl, ptr %i.ej, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.eh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bm, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.bh:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.dn, ptr %i.ek, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49)
  %.sroa.49.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.49, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.49.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.n, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 1, ptr %i.em, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.49, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !186
  %i.en = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !186 ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.bj, label %bb.bm, !prof !12

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc78 unwind label %bb.bk

.noexc78:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.e) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.en, ptr noundef nonnull align 8 dereferenceable(1024) %i.e, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49)
  call void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6insertB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0, ptr noundef nonnull %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bg

bb.bn:                                            ; preds = %._crit_edge, %bb.bh
  %.sroa.017.3.ph = phi i1 [ false, %bb.bh ], [ true, %._crit_edge ]
  %lpad.thr_comm115 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81 unwind label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81: ; preds = %bb.bn
  br i1 %.sroa.017.3.ph, label %.body36.thread109, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

.body36.thread109:                                ; preds = %.body36.thread109.loopexit, %.body36.thread109.loopexit.split-lp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81
  %i.er = phi ptr [ %i.dn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81 ], [ %i.dh, %.body36.thread109.loopexit ], [ %i.dl, %.body36.thread109.loopexit.split-lp ]
  %.pn106 = phi { ptr, i32 } [ %lpad.thr_comm115, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81 ], [ %lpad.loopexit, %.body36.thread109.loopexit ], [ %lpad.loopexit.split-lp, %.body36.thread109.loopexit.split-lp ] ; 2 uses
  %i.es = atomicrmw sub ptr %i.er, i64 1 release, align 8, !noalias !189
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

bb.bo:                                            ; preds = %.body36.thread109
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.al

.body42.thread:                                   ; preds = %bb.q, %bb.r, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit
  %.sroa.019.297 = phi i1 [ %.sroa.019.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit ], [ true, %bb.l ], [ false, %bb.r ], [ false, %bb.q ]
  %.pn.pn96 = phi { ptr, i32 } [ %i.cp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit ], [ %i.ay, %bb.l ], [ %i.bh, %bb.r ], [ %i.bh, %bb.q ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.eu = load ptr, ptr %i.u, align 8, !alias.scope !200, !nonnull !8, !noundef !8
  %i.ev = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !200
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85

bb.bp:                                            ; preds = %.body42.thread
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85 unwind label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85: ; preds = %bb.bp, %.body42.thread
  br i1 %.sroa.019.297, label %.body42.thread124, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87: ; preds = %bb.bk, %bb.ae, %bb.af, %bb.aa, %.body36.thread109, %bb.bo, %bb.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81, %.body42.thread124, %bb.bq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85, %.body42
  %.pn3490 = phi { ptr, i32 } [ %i.ep, %bb.bk ], [ %.pn.pn96, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85 ], [ %i.cp, %.body42 ], [ %.pn3491, %bb.bq ], [ %.pn3491, %.body42.thread124 ], [ %.pn106, %.body36.thread109 ], [ %lpad.thr_comm115, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81 ], [ %i.cd, %bb.ae ], [ %i.ea, %bb.ay ], [ %i.cd, %bb.af ], [ %.pn106, %bb.bo ], [ %i.bx, %bb.aa ]
  resume { ptr, i32 } %.pn3490

.body42.thread124:                                ; preds = %bb.g, %bb.f, %.split.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85, %.body42
  %.pn3491 = phi { ptr, i32 } [ %i.ac, %.split.thread ], [ %i.cp, %.body42 ], [ %.pn.pn96, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85 ], [ %i.ap, %bb.f ], [ %i.ap, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.ex = load ptr, ptr %i.v, align 8, !alias.scope !207, !nonnull !8, !noundef !8
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !207
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

bb.bq:                                            ; preds = %.body42.thread124
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 8 uses
  %i.b = alloca [1000 x i8], align 8              ; 4 uses
  %.sroa.4 = alloca [1007 x i8], align 1          ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.e, %bb.b ]
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.b, i64 1000, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4, i64 1007, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !208
  %i.h = tail call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !208 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.a) #16
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.g:                                             ; preds = %bb.c
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.h, ptr noundef nonnull align 8 dereferenceable(1024) %i.a, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  store i64 1, ptr %i.d, align 8, !alias.scope !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.l, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder6append(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15append_internal(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder6finish(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  invoke fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15append_internal(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %i.b = call fastcc noundef nonnull ptr @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15finish_internal(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey12rope_builder11RopeBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %0) #16
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.e = cmpxchg ptr %i.d, i64 1, i64 0 acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = tail call noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k) ; 3 uses
  %i.m = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !214
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit unwind label %bb.l

bb.e:                                             ; preds = %bb.b
  store atomic i64 1, ptr %i.g release, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  invoke void @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.o)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.b, align 8, !range !219, !noundef !8 ; 2 uses
  %i.q = add nuw i64 %i.p, 15
  %i.r = sub i64 0, %i.p
  %i.s = and i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1008) %i.v, ptr noundef nonnull align 8 dereferenceable(1008) %i.o, i64 1008, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %i.w = invoke noundef nonnull ptr @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE8into_arcB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7: ; preds = %bb.g
  store ptr %i.w, ptr %0, align 8
  call void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit
  %i.y = phi ptr [ %i.g, %bb.e ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1g_.exit7 ], [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  ret ptr %i.z

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread:                                          ; preds = %bb.k, %bb.h, %bb.l
  %.pn3 = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.x, %bb.h ], [ %i.ab, %bb.k ]
  resume { ptr, i32 } %.pn3

bb.k:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB8_3ArcppE8make_mutINtB2_5GuardNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread unwind label %bb.j

bb.l:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %0, align 8
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.c, %bb.d
  store ptr %i.l, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey4crlf15find_good_split(i64 noundef %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i64 %0, %2
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %0, %2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 %0         ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !220, !noundef !8 ; 2 uses
  %i.f = icmp slt i8 %i.e, -64
  br i1 %i.f, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !220
  unreachable

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit:    ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !220, !noundef !8
  %i.i = icmp ne i8 %i.h, 13
  %i.j = icmp ne i8 %i.e, 10
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19: ; preds = %bb.c, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit
  %.sroa.0.126 = add nsw i64 %0, -1               ; 4 uses
  %i.l = icmp eq i64 %.sroa.0.126, 0
  %i.m = icmp eq i64 %.sroa.0.126, %2
  %or.cond.i1227 = or i1 %i.l, %i.m
  br i1 %or.cond.i1227, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, label %.lr.ph

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader: ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge, %.split, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.126, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19 ], [ %.sroa.0.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge ], [ %.sroa.0.128, %.split ] ; 2 uses
  %.sroa.04.130 = add nuw nsw i64 %0, 1           ; 4 uses
  %i.n = icmp eq i64 %.sroa.04.130, %2
  br i1 %i.n, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %.lr.ph34

.lr.ph:                                           ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge
  %.sroa.0.128 = phi i64 [ %.sroa.0.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge ], [ %.sroa.0.126, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
end_hunk_1
